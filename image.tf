resource "docker_image" "taskoverflow" {
    name = "${aws_ecr_repository.taskoverflow.repository_url}:latest"
    build {
        context = "/home/krisna-bou/2024-P5-Krisna-Bou/"
    }
}

resource "docker_registry_image" "taskoverflow" {
    name = docker_image.taskoverflow.name
}
