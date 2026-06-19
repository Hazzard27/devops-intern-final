data_dir  = "/tmp/nomad-data"
log_level = "DEBUG"

client {
  enabled = true

  options {
    "driver.raw_exec.enable" = "1"
  }
}

plugin "docker" {
  config {
    allow_privileged = false
    volumes {
      enabled = true
    }
  }
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}
