output "lb_listeners_id" {
  description = "Map of id values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_listeners_alpn_policy" {
  description = "Map of alpn_policy values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.alpn_policy if v.alpn_policy != null && length(v.alpn_policy) > 0 }
}
output "lb_listeners_arn" {
  description = "Map of arn values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lb_listeners_certificate_arn" {
  description = "Map of certificate_arn values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.certificate_arn if v.certificate_arn != null && length(v.certificate_arn) > 0 }
}
output "lb_listeners_default_action" {
  description = "Map of default_action values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.default_action if v.default_action != null && length(v.default_action) > 0 }
  sensitive   = true
}
output "lb_listeners_load_balancer_arn" {
  description = "Map of load_balancer_arn values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.load_balancer_arn if v.load_balancer_arn != null && length(v.load_balancer_arn) > 0 }
}
output "lb_listeners_mutual_authentication" {
  description = "Map of mutual_authentication values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => one(v.mutual_authentication) if v.mutual_authentication != null && length(v.mutual_authentication) > 0 }
}
output "lb_listeners_port" {
  description = "Map of port values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.port if v.port != null }
}
output "lb_listeners_protocol" {
  description = "Map of protocol values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "lb_listeners_region" {
  description = "Map of region values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_mtls_clientcert_header_name" {
  description = "Map of routing_http_request_x_amzn_mtls_clientcert_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_mtls_clientcert_header_name if v.routing_http_request_x_amzn_mtls_clientcert_header_name != null && length(v.routing_http_request_x_amzn_mtls_clientcert_header_name) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_mtls_clientcert_issuer_header_name" {
  description = "Map of routing_http_request_x_amzn_mtls_clientcert_issuer_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_mtls_clientcert_issuer_header_name if v.routing_http_request_x_amzn_mtls_clientcert_issuer_header_name != null && length(v.routing_http_request_x_amzn_mtls_clientcert_issuer_header_name) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_mtls_clientcert_leaf_header_name" {
  description = "Map of routing_http_request_x_amzn_mtls_clientcert_leaf_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_mtls_clientcert_leaf_header_name if v.routing_http_request_x_amzn_mtls_clientcert_leaf_header_name != null && length(v.routing_http_request_x_amzn_mtls_clientcert_leaf_header_name) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name" {
  description = "Map of routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name if v.routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name != null && length(v.routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_mtls_clientcert_subject_header_name" {
  description = "Map of routing_http_request_x_amzn_mtls_clientcert_subject_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_mtls_clientcert_subject_header_name if v.routing_http_request_x_amzn_mtls_clientcert_subject_header_name != null && length(v.routing_http_request_x_amzn_mtls_clientcert_subject_header_name) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_mtls_clientcert_validity_header_name" {
  description = "Map of routing_http_request_x_amzn_mtls_clientcert_validity_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_mtls_clientcert_validity_header_name if v.routing_http_request_x_amzn_mtls_clientcert_validity_header_name != null && length(v.routing_http_request_x_amzn_mtls_clientcert_validity_header_name) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_tls_cipher_suite_header_name" {
  description = "Map of routing_http_request_x_amzn_tls_cipher_suite_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_tls_cipher_suite_header_name if v.routing_http_request_x_amzn_tls_cipher_suite_header_name != null && length(v.routing_http_request_x_amzn_tls_cipher_suite_header_name) > 0 }
}
output "lb_listeners_routing_http_request_x_amzn_tls_version_header_name" {
  description = "Map of routing_http_request_x_amzn_tls_version_header_name values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_request_x_amzn_tls_version_header_name if v.routing_http_request_x_amzn_tls_version_header_name != null && length(v.routing_http_request_x_amzn_tls_version_header_name) > 0 }
}
output "lb_listeners_routing_http_response_access_control_allow_credentials_header_value" {
  description = "Map of routing_http_response_access_control_allow_credentials_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_access_control_allow_credentials_header_value if v.routing_http_response_access_control_allow_credentials_header_value != null && length(v.routing_http_response_access_control_allow_credentials_header_value) > 0 }
}
output "lb_listeners_routing_http_response_access_control_allow_headers_header_value" {
  description = "Map of routing_http_response_access_control_allow_headers_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_access_control_allow_headers_header_value if v.routing_http_response_access_control_allow_headers_header_value != null && length(v.routing_http_response_access_control_allow_headers_header_value) > 0 }
}
output "lb_listeners_routing_http_response_access_control_allow_methods_header_value" {
  description = "Map of routing_http_response_access_control_allow_methods_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_access_control_allow_methods_header_value if v.routing_http_response_access_control_allow_methods_header_value != null && length(v.routing_http_response_access_control_allow_methods_header_value) > 0 }
}
output "lb_listeners_routing_http_response_access_control_allow_origin_header_value" {
  description = "Map of routing_http_response_access_control_allow_origin_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_access_control_allow_origin_header_value if v.routing_http_response_access_control_allow_origin_header_value != null && length(v.routing_http_response_access_control_allow_origin_header_value) > 0 }
}
output "lb_listeners_routing_http_response_access_control_expose_headers_header_value" {
  description = "Map of routing_http_response_access_control_expose_headers_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_access_control_expose_headers_header_value if v.routing_http_response_access_control_expose_headers_header_value != null && length(v.routing_http_response_access_control_expose_headers_header_value) > 0 }
}
output "lb_listeners_routing_http_response_access_control_max_age_header_value" {
  description = "Map of routing_http_response_access_control_max_age_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_access_control_max_age_header_value if v.routing_http_response_access_control_max_age_header_value != null && length(v.routing_http_response_access_control_max_age_header_value) > 0 }
}
output "lb_listeners_routing_http_response_content_security_policy_header_value" {
  description = "Map of routing_http_response_content_security_policy_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_content_security_policy_header_value if v.routing_http_response_content_security_policy_header_value != null && length(v.routing_http_response_content_security_policy_header_value) > 0 }
}
output "lb_listeners_routing_http_response_server_enabled" {
  description = "Map of routing_http_response_server_enabled values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_server_enabled if v.routing_http_response_server_enabled != null }
}
output "lb_listeners_routing_http_response_strict_transport_security_header_value" {
  description = "Map of routing_http_response_strict_transport_security_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_strict_transport_security_header_value if v.routing_http_response_strict_transport_security_header_value != null && length(v.routing_http_response_strict_transport_security_header_value) > 0 }
}
output "lb_listeners_routing_http_response_x_content_type_options_header_value" {
  description = "Map of routing_http_response_x_content_type_options_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_x_content_type_options_header_value if v.routing_http_response_x_content_type_options_header_value != null && length(v.routing_http_response_x_content_type_options_header_value) > 0 }
}
output "lb_listeners_routing_http_response_x_frame_options_header_value" {
  description = "Map of routing_http_response_x_frame_options_header_value values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.routing_http_response_x_frame_options_header_value if v.routing_http_response_x_frame_options_header_value != null && length(v.routing_http_response_x_frame_options_header_value) > 0 }
}
output "lb_listeners_ssl_policy" {
  description = "Map of ssl_policy values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.ssl_policy if v.ssl_policy != null && length(v.ssl_policy) > 0 }
}
output "lb_listeners_tags" {
  description = "Map of tags values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lb_listeners_tags_all" {
  description = "Map of tags_all values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "lb_listeners_tcp_idle_timeout_seconds" {
  description = "Map of tcp_idle_timeout_seconds values across all lb_listeners, keyed the same as var.lb_listeners"
  value       = { for k, v in aws_lb_listener.lb_listeners : k => v.tcp_idle_timeout_seconds if v.tcp_idle_timeout_seconds != null }
}

