client {
  enabled = true
  network_interface = "eth0"
  server_join {
    retry_join = [
      "127.0.0.1"
    ]
    retry_max = 3
    retry_interval = "15s"
  }
  host_volume "gitea-data" {
    path      = "/mnt/storage/nomad/data/gitea/data"
    read_only = false
  }
  host_volume "gitea-db" {
    path      = "/mnt/storage/nomad/data/gitea/db"
    read_only = false
  }
}