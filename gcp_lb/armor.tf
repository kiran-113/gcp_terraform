/*resource "google_compute_security_policy" "policy" {
  name = "my-policy"
  adaptive_protection_config {
    layer_7_ddos_defense_config {
      enable = true
    }
  }
  #blacklist traffic from certain ip address
  rule {
    action   = "deny(403)"
    priority = "1000"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["103.126.7.151/32"]
      }
    }
    description = "Deny access to IPs in 103.126.7.151/32"
  }

  rule {
    action      = "deny(403)"
    description = "block AU"
    priority    = "1001"
    match {
      expr {
        expression = "origin.region_code == 'AU'"
      }
    }
  }

  rule {
    action   = "allow"
    priority = "2147483647"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "default rule"
  }
}
*/
