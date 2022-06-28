 locals {
  /*
  payload_fsx = [
    {
      name = "phonepaix-${var.environment}-window-fsx"
      performance_mode = "generalPurpose"
      throughput_mode = "bursting"
      transition_to_ia  = "AFTER_30_DAYS"
      subnets = [
        {
          id =  "sg-0f51749cb998e1277"
        },
        {
          id =  "sg-0f51749cb998e1277"
        }
      ]
    }
 ]*/

  payload_alb_cidr_rules = [
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["172.31.0.0/20"]
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["172.31.0.0/20"]
      from_port   = 6002
      to_port     = 6002
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["172.31.0.0/20"]
      from_port   = 8800
      to_port     = 8800
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["172.31.0.0/20"]
      from_port   = 8016
      to_port     = 8016
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["172.31.0.0/20"]
      from_port   = 8004
      to_port     = 8004
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["172.31.0.0/20"]
      from_port   = 8036
      to_port     = 8036
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["172.31.0.0/20"]
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    }
  ]

  payload_webfarm_cidr_rules = [
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 6002
      to_port     = 6002
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 8800
      to_port     = 8800
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 8016
      to_port     = 8016
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 8004
      to_port     = 8004
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 8036
      to_port     = 8036
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 8000
      to_port     = 8000
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 88
      to_port     = 88
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 88
      to_port     = 88
      protocol    = "-1"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 123
      to_port     = 123
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 135
      to_port     = 135
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 137
      to_port     = 137
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 138
      to_port     = 138
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 389
      to_port     = 389
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 445
      to_port     = 445
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 464
      to_port     = 464
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 636
      to_port     = 636
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3268
      to_port     = 3268
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3269
      to_port     = 3269
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    }
  ]

  payload_workflow_cidr_rules = [
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "Allows IPv4 tcp inbound taffic"
    },
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    # {
    #   type        = "egress"
    #   ipv6_cidr_blocks = ["0.0.0.0/0"]
    #   from_port   = 443
    #   to_port     = 443
    #   protocol    = "tcp"
    #   description = "Allow IPv4 all outbound traffic"
    # },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 25
      to_port     = 25
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 88
      to_port     = 88
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 123
      to_port     = 123
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 135
      to_port     = 135
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 137
      to_port     = 137
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 138
      to_port     = 138
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 389
      to_port     = 389
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 445
      to_port     = 445
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 464
      to_port     = 464
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 636
      to_port     = 636
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3268
      to_port     = 3268
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3269
      to_port     = 3269
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 1414
      to_port     = 1414
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    # {
    #   type        = "egress"
    #   cidr_blocks = ["0.0.0.0/0"]
    #   from_port   = 1414
    #   to_port     = 1414
    #   protocol    = "-1"
    #   description = "Allows IPv4 HTTPS outbound taffic"
    # },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 141
      to_port     = 141
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 5022
      to_port     = 5022
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 1022
      to_port     = 1022
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    }
  ]

  payload_reporting_cidr_rules = [
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 25
      to_port     = 25
      protocol    = "tcp"
      description = "Allows IPv4 HTTPS outbound taffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 88
      to_port     = 88
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 123
      to_port     = 123
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 135
      to_port     = 135
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 137
      to_port     = 137
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 138
      to_port     = 138
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 389
      to_port     = 389
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 445
      to_port     = 445
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 464
      to_port     = 464
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 636
      to_port     = 636
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3268
      to_port     = 3268
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3269
      to_port     = 3269
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    }
  ]

  payload_database_cidr_rules = [
    {
      type        = "ingress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "Allow IPv4 all inbound traffic"
    },
    # {
    #   type        = "ingress"
    #   cidr_blocks = ["0.0.0.0/0"]
    #   from_port   = 1433
    #   to_port     = 1433
    #   protocol    = "tcp"
    #   description = "Allow IPv4 all inbound traffic"
    # },
    # {
    #   type        = "ingress"
    #   ipv6_cidr_blocks = ["0.0.0.0/0"]
    #   from_port   = 1433
    #   to_port     = 1433
    #   protocol    = "tcp"
    #   description = "Allow IPv4 all inbound traffic"
    # }
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 88
      to_port     = 88
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 123
      to_port     = 123
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 135
      to_port     = 135
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 137
      to_port     = 137
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 138
      to_port     = 138
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 389
      to_port     = 389
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 445
      to_port     = 445
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 464
      to_port     = 464
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 636
      to_port     = 636
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3268
      to_port     = 3268
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 3269
      to_port     = 3269
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    {
      type        = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "Allow IPv4 all outbound traffic"
    },
    # {
    #   type        = "egress"
    #   cidr_blocks = ["0.0.0.0/0"]
    #   from_port   = 1433
    #   to_port     = 1433
    #   protocol    = "tcp"
    #   description = "Allow IPv4 all outbound traffic"
    # }
  ]
 }