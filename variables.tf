variable "lb_listeners" {
  description = <<EOT
Map of lb_listeners, attributes below
Required:
    - load_balancer_arn
    - default_action (block):
        - authenticate_cognito (optional, block):
            - authentication_request_extra_params (optional)
            - on_unauthenticated_request (optional)
            - scope (optional)
            - session_cookie_name (optional)
            - session_timeout (optional)
            - user_pool_arn (required)
            - user_pool_client_id (required)
            - user_pool_domain (required)
        - authenticate_oidc (optional, block):
            - authentication_request_extra_params (optional)
            - authorization_endpoint (required)
            - client_id (required)
            - client_secret (required)
            - issuer (required)
            - on_unauthenticated_request (optional)
            - scope (optional)
            - session_cookie_name (optional)
            - session_timeout (optional)
            - token_endpoint (required)
            - user_info_endpoint (required)
        - fixed_response (optional, block):
            - content_type (required)
            - message_body (optional)
            - status_code (optional)
        - forward (optional, block):
            - stickiness (optional, block):
                - duration (required)
                - enabled (optional)
            - target_group (required, block):
                - arn (required)
                - weight (optional)
        - jwt_validation (optional, block):
            - additional_claim (optional, block):
                - format (required)
                - name (required)
                - values (required)
            - issuer (required)
            - jwks_endpoint (required)
        - order (optional)
        - redirect (optional, block):
            - host (optional)
            - path (optional)
            - port (optional)
            - protocol (optional)
            - query (optional)
            - status_code (required)
        - target_group_arn (optional)
        - type (required)
Optional:
    - alpn_policy
    - certificate_arn
    - port
    - protocol
    - region
    - routing_http_request_x_amzn_mtls_clientcert_header_name
    - routing_http_request_x_amzn_mtls_clientcert_issuer_header_name
    - routing_http_request_x_amzn_mtls_clientcert_leaf_header_name
    - routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name
    - routing_http_request_x_amzn_mtls_clientcert_subject_header_name
    - routing_http_request_x_amzn_mtls_clientcert_validity_header_name
    - routing_http_request_x_amzn_tls_cipher_suite_header_name
    - routing_http_request_x_amzn_tls_version_header_name
    - routing_http_response_access_control_allow_credentials_header_value
    - routing_http_response_access_control_allow_headers_header_value
    - routing_http_response_access_control_allow_methods_header_value
    - routing_http_response_access_control_allow_origin_header_value
    - routing_http_response_access_control_expose_headers_header_value
    - routing_http_response_access_control_max_age_header_value
    - routing_http_response_content_security_policy_header_value
    - routing_http_response_server_enabled
    - routing_http_response_strict_transport_security_header_value
    - routing_http_response_x_content_type_options_header_value
    - routing_http_response_x_frame_options_header_value
    - ssl_policy
    - tags
    - tags_all
    - tcp_idle_timeout_seconds
    - mutual_authentication (block):
        - advertise_trust_store_ca_names (optional)
        - ignore_client_certificate_expiry (optional)
        - mode (required)
        - trust_store_arn (optional)
EOT

  type = map(object({
    load_balancer_arn                                                     = string
    tags                                                                  = optional(map(string))
    ssl_policy                                                            = optional(string)
    routing_http_response_x_frame_options_header_value                    = optional(string)
    routing_http_response_x_content_type_options_header_value             = optional(string)
    routing_http_response_strict_transport_security_header_value          = optional(string)
    routing_http_response_server_enabled                                  = optional(bool)
    routing_http_response_content_security_policy_header_value            = optional(string)
    routing_http_response_access_control_max_age_header_value             = optional(string)
    routing_http_response_access_control_expose_headers_header_value      = optional(string)
    routing_http_response_access_control_allow_origin_header_value        = optional(string)
    routing_http_response_access_control_allow_methods_header_value       = optional(string)
    routing_http_response_access_control_allow_headers_header_value       = optional(string)
    tags_all                                                              = optional(map(string))
    routing_http_response_access_control_allow_credentials_header_value   = optional(string)
    routing_http_request_x_amzn_tls_cipher_suite_header_name              = optional(string)
    routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = optional(string)
    routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = optional(string)
    routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = optional(string)
    routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = optional(string)
    routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = optional(string)
    routing_http_request_x_amzn_mtls_clientcert_header_name               = optional(string)
    region                                                                = optional(string)
    protocol                                                              = optional(string)
    port                                                                  = optional(number)
    certificate_arn                                                       = optional(string)
    alpn_policy                                                           = optional(string)
    routing_http_request_x_amzn_tls_version_header_name                   = optional(string)
    tcp_idle_timeout_seconds                                              = optional(number)
    default_action = list(object({
      authenticate_cognito = optional(object({
        authentication_request_extra_params = optional(map(string))
        on_unauthenticated_request          = optional(string)
        scope                               = optional(string)
        session_cookie_name                 = optional(string)
        session_timeout                     = optional(number)
        user_pool_arn                       = string
        user_pool_client_id                 = string
        user_pool_domain                    = string
      }))
      authenticate_oidc = optional(object({
        authentication_request_extra_params = optional(map(string))
        authorization_endpoint              = string
        client_id                           = string
        client_secret                       = string
        issuer                              = string
        on_unauthenticated_request          = optional(string)
        scope                               = optional(string)
        session_cookie_name                 = optional(string)
        session_timeout                     = optional(number)
        token_endpoint                      = string
        user_info_endpoint                  = string
      }))
      fixed_response = optional(object({
        content_type = string
        message_body = optional(string)
        status_code  = optional(string)
      }))
      forward = optional(object({
        stickiness = optional(object({
          duration = number
          enabled  = optional(bool)
        }))
        target_group = list(object({
          arn    = string
          weight = optional(number)
        }))
      }))
      jwt_validation = optional(object({
        additional_claim = optional(list(object({
          format = string
          name   = string
          values = set(string)
        })))
        issuer        = string
        jwks_endpoint = string
      }))
      order = optional(number)
      redirect = optional(object({
        host        = optional(string)
        path        = optional(string)
        port        = optional(string)
        protocol    = optional(string)
        query       = optional(string)
        status_code = string
      }))
      target_group_arn = optional(string)
      type             = string
    }))
    mutual_authentication = optional(object({
      advertise_trust_store_ca_names   = optional(string)
      ignore_client_certificate_expiry = optional(bool)
      mode                             = string
      trust_store_arn                  = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_listeners : (
        length(v.default_action) >= 1
      )
    ])
    error_message = "Each default_action list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_listeners : (
        alltrue([for item in v.default_action : (item.forward == null || (length(item.forward.target_group) >= 1 && length(item.forward.target_group) <= 5))])
      )
    ])
    error_message = "Each target_group list must contain between 1 and 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_listeners : (
        alltrue([for item in v.default_action : (item.jwt_validation == null || (item.jwt_validation.additional_claim == null || (length(item.jwt_validation.additional_claim) <= 10)))])
      )
    ])
    error_message = "Each additional_claim list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_listeners : (
        v.tcp_idle_timeout_seconds == null || (v.tcp_idle_timeout_seconds >= 60 && v.tcp_idle_timeout_seconds <= 6000)
      )
    ])
    error_message = "must be between 60 and 6000"
  }
  # Note: 29 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

