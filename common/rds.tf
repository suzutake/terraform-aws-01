resource "aws_db_instance" "dbserver-01" {
    // Engine options
    engine                    = "mysql"
    engine_version            = "8.0.28"

    // Settings
    identifier                = "dbserver-01"
    username                  = "admin"
    password                  = "xxxxxxxx"
    instance_class            = "db.t3.micro"

    // Storage
    storage_type              = "gp2"
    allocated_storage         = 20

    // Connectivity
    port                      = 3306
    publicly_accessible       = false
    db_subnet_group_name      = "${aws_subnet.subnet-private-subnet02.id}"
    availability_zone         = "us-west-2a"
    vpc_security_group_ids    = ["${aws_security_group.db-sg.id}"]
    multi_az                  = false

    // DB options
    name                      = "dbserver-01"
    parameter_group_name      = "${aws_db_parameter_group.example.id}"

    // backup
    backup_retention_period   = 7
    backup_window             = "22:00-23:00"
    maintenance_window        = "fri:22:00-fri:23:00"
    final_snapshot_identifier = "database-1-final"

    // Monitoring
    //monitoring_interval = 60
    //monitoring_role_arn = aws_iam_role.rds_monitoring_role.arn

    // Log exports
    enabled_cloudwatch_logs_exports = [
      "error",
      "general",
      "slowquery"
    ]

    // Deletion protection
    deletion_protection       = false
}
