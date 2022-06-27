
#creating an IAM role for the service

resource "aws_iam_role" "dlm_lifecycle_role" {
  name = var.name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "dlm.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

#creating a policy and attaching it to the role, giving the access to #create, delete, describe volumes and snapshots
resource "aws_iam_role_policy" "dlm_lifecycle" {
  name = "dlm-lifecycle-policy"
  role = aws_iam_role.dlm_lifecycle_role.id

  policy = <<EOF
{
   "Version": "2012-10-17",
   "Statement": [
      {
         "Effect": "Allow",
         "Action": "ec2:*",
         "Resource": "*"
      },
      {
         "Effect": "Allow",
         "Action": [
            "ec2:CreateTags"
         ],
         "Resource": "arn:aws:ec2:*::snapshot/*"
      }
   ]
}
EOF
}

#creating the DLM policy with required configurations
resource "aws_dlm_lifecycle_policy" "dlm-policy" {
  description        = "DLM lifecycle policy"
  execution_role_arn = aws_iam_role.dlm_lifecycle_role.arn
  state              = var.dlm_state
  tags = {
    "company" = "IHSM"
  }
  policy_details {
    resource_types = [var.resourceType]
    schedule {
      name = var.snapshot_name
      create_rule {
        interval      = var.interval_hours
        interval_unit = var.interval_unit
        times         = var.start_time
      }
      retain_rule {
        count = var.retention_count
      }
      tags_to_add = {
        SnapshotCreator = "DLM"
      }
      copy_tags = false
    }

    target_tags = {
      Snapshot = "true"
    }
  }
}