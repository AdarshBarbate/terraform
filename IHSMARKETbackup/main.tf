/*
#####################################
#############ACM#####################
#####################################
module "Window_acm" {
  source            = "./modules/ACM"
  domain_name       = "jenkins.ihms.co"
  validation_method = "DNS"

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
########################################
##############ALB-TG####################
########################################
module "window_tg" {
  source          = "./modules/ALB_TG"
  create          = true
  name            = "phonexpaix-${var.environment}-window-alb-tg"
  protocol        = "HTTP"
  port            = "8080"
  vpc_id          =  "vpc-051f93cde505028de"

  target_group_rule = [
    {
      #listener_arn  = module.snipeit_lb.lb_listener_arn
      listener_arn  = "arn:aws:elasticloadbalancing:us-east-1:510947031752:listener/app/phonepax-qa-window-alb/6264e490c237df86/6fb7d8f528157880"
      priority      = "3"
      host_header   = "phonexpax.ihms.co"
    } 
  ]

  health_check      = {
    matcher = "200-403"
  
  }
 
  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
*/
#######################################################
#######################AD#############################
#######################################################

module "AD" {
  source = "./modules/AD"
  vpc_id = "vpc-051f93cde505028de"
  subnets= ["subnet-025a6640db819e5c3","subnet-0238e0324d77012ba"]
}
/*
#######################################################
#######################FSX#############################
#######################################################

module "Window_fsX" {
  source               = "./modules/FSX"
  payload_fsx          = local.payload_fsx
  security_group_ids   = ["sg-0f64e0725446c2b40"]
  active_dir           = module.AD.id

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

#############################################################
#####################ALB#####################################
#############################################################
module "snipeit_lb" {
  source          = "./modules/ALB"
  create_lb       = true
  name            = "phonepax-${var.environment}-window-alb"
  security_groups    = ["sg-0f64e0725446c2b40"]
  subnets            = ["subnet-025a6640db819e5c3","subnet-0238e0324d77012ba"]

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

#############################################################
#####################DLM#####################################
#############################################################

module "dlm" {
    source = "./modules/DLM"
    name = "MGNuser1"
    snapshot_name = "DevEnvHourlyDlm"
    dlm_state = "ENABLED"
    interval_hours = 1
    start_time = ["02:00"]
    retention_count = 10
    resourceType = "VOLUME"
    interval_unit = "HOURS"
}

#############################################################
#####################Security Group##########################
#############################################################
module "alb_sg" {
  source                = "./modules/security_group"
  create                = true
  name                  = "Phoneix-${var.environment}-alb-security-group"
  vpc_id                = "vpc-051f93cde505028de"
  source_cidr_block     = true
  source_cidr_rules     = local.payload_alb_cidr_rules
  source_security_group = false
  source_self           = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "webfarm_sg" {
  source                = "./modules/security_group"
  create                = true
  name                  = "Phoneix-${var.environment}-webfarm-security-group"
  vpc_id                = "vpc-051f93cde505028de"
  source_cidr_block     = true
  source_cidr_rules     = local.payload_webfarm_cidr_rules
  source_security_group = false
  source_self           = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "workflow_sg" {
  source                = "./modules/security_group"
  create                = true
  name                  = "Phoneix-${var.environment}-workflow-security-group"
  vpc_id                = "vpc-051f93cde505028de"
  source_cidr_block     = true
  source_cidr_rules     = local.payload_workflow_cidr_rules
  source_security_group = false
  source_self           = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "reporting_sg" {
  source                = "./modules/security_group"
  create                = true
  name                  = "Phoneix-${var.environment}-reporting-security-group"
  vpc_id                = "vpc-051f93cde505028de"
  source_cidr_block     = true
  source_cidr_rules     = local.payload_reporting_cidr_rules
  source_security_group = false
  source_self           = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "database_sg" {
  source                = "./modules/security_group"
  create                = true
  name                  = "Phoneix-${var.environment}-database-security-group"
  vpc_id                = "vpc-051f93cde505028de"
  source_cidr_block     = true
  source_cidr_rules     = local.payload_database_cidr_rules
  source_security_group = false
  source_self           = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}


#############################################################
#####################WAF#####################################
#############################################################
module "Window_Waf" {
  source                                = "./modules/WAF"
  alb_arn                               = "arn:aws:elasticloadbalancing:us-east-1:510947031752:loadbalancer/app/phonepax-qa-window-alb/6264e490c237df86"
  associate_alb                        = true
  #allowed_hosts                       =  jenkins.grupdev.co
  #blocked_path_prefixes               = var.blocked_path_prefixes
  #ip_sets                             = var.ip_sets
  #rate_based_rules                    = [aws_wafregional_rate_based_rule.ipratelimit.id]
  #rules                               = var.rules
  #wafregional_rule_f5_id              = var.wafregional_rule_id
  web_acl_metric_name                 = "wafAppHelloWorld"
  web_acl_name                        = "app-hello-world"
}
*/