server {
  enabled = true
}data_dir  = "/mnt/storage/nomad/conf"
datacenter = "DC0"bind_addr = "0.0.0.0"ports {
  http = 4646
  rpc  = 4647
  serf = 4648
}consul {
  address = "127.0.0.1:8500"
}acl {
  enabled    = false
  token_ttl  = "30s"
  policy_ttl = "60s"
}