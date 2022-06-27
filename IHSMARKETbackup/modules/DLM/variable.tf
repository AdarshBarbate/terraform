variable "snapshot_name" {
    description = "Name for the schedule."
    type = string
}

variable "interval_hours" {
    description = "How regular you want the backup to be taken"
    type = number
}

variable "start_time" {
    description = "At what time do we want to start the backups to be taken"
    type = list
}

variable "dlm_state" {
    description = "Lifecycle policy should be enabled or disabled"
    type = string
}

variable "retention_count" {
    description = "Number of snapshots to keep. If you give value here as 10, AWS DLM will only keep the last 10 backups and delete the old ones."
    type = number
}

variable "resourceType" {
    type = string
}

variable "interval_unit" {
    description = "Used to define time bases units."
    type = string
}

variable "name" {
    description = "IAM user creation"
    type = string
}