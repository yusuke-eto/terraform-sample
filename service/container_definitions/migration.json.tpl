[
  {
    "name": "sample-rails",
    "image": "577425812578.dkr.ecr.ap-northeast-1.amazonaws.com/sample-image:latest",
    "cpu": 200,
    "memory": null,
    "memoryReservation": 600,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 3000
      }
    ],
    "command": ["bundle", "exec", "rails", "db:create", "db:migrate"],
    "environment": [
      {
        "name": "RAILS_ENV",
        "value": "production"
      },
      {
        "name": "RACK_ENV",
        "value": "production"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "sample-service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "migration"
      }
    }
  }
]
