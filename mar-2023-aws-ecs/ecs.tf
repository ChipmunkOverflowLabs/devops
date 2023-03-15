resource "aws_ecs_cluster" "appCluster" {
  name = var.clusterName
}

resource "aws_iam_role" "executionRole" {
  name = "ecs-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_ecs_task_definition" "webTask" {
  family                   = "web-app-family"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = tostring(var.cpuUnits)
  memory                   = tostring(var.memoryLimit)
  execution_role_arn       = aws_iam_role.executionRole.arn

  container_definitions = jsonencode([
    {
      name      = "web-server"
      image     = "nginx:alpine"
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}
