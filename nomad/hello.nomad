job "hello-devops" {
  datacenters = ["dc1"]
  type        = "batch"

  group "app" {
    count = 1

    task "hello" {
      driver = "raw_exec"

      config {
        command = "python3"
        args    = ["/Volumes/HAZZ4RD/DevOps/Project/devops-intern-final/hello.py"]
      }

      resources {
        cpu    = 20
        memory = 32
      }
    }
  }
}