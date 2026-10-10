resource "aws_lb_listener" "lb_listeners" {
  for_each = var.lb_listeners

  load_balancer_arn                                                     = each.value.load_balancer_arn
  tags                                                                  = each.value.tags
  ssl_policy                                                            = each.value.ssl_policy
  routing_http_response_x_frame_options_header_value                    = each.value.routing_http_response_x_frame_options_header_value
  routing_http_response_x_content_type_options_header_value             = each.value.routing_http_response_x_content_type_options_header_value
  routing_http_response_strict_transport_security_header_value          = each.value.routing_http_response_strict_transport_security_header_value
  routing_http_response_server_enabled                                  = each.value.routing_http_response_server_enabled
  routing_http_response_content_security_policy_header_value            = each.value.routing_http_response_content_security_policy_header_value
  routing_http_response_access_control_max_age_header_value             = each.value.routing_http_response_access_control_max_age_header_value
  routing_http_response_access_control_expose_headers_header_value      = each.value.routing_http_response_access_control_expose_headers_header_value
  routing_http_response_access_control_allow_origin_header_value        = each.value.routing_http_response_access_control_allow_origin_header_value
  routing_http_response_access_control_allow_methods_header_value       = each.value.routing_http_response_access_control_allow_methods_header_value
  routing_http_response_access_control_allow_headers_header_value       = each.value.routing_http_response_access_control_allow_headers_header_value
  tags_all                                                              = each.value.tags_all
  routing_http_response_access_control_allow_credentials_header_value   = each.value.routing_http_response_access_control_allow_credentials_header_value
  routing_http_request_x_amzn_tls_cipher_suite_header_name              = each.value.routing_http_request_x_amzn_tls_cipher_suite_header_name
  routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = each.value.routing_http_request_x_amzn_mtls_clientcert_validity_header_name
  routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = each.value.routing_http_request_x_amzn_mtls_clientcert_subject_header_name
  routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = each.value.routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name
  routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = each.value.routing_http_request_x_amzn_mtls_clientcert_leaf_header_name
  routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = each.value.routing_http_request_x_amzn_mtls_clientcert_issuer_header_name
  routing_http_request_x_amzn_mtls_clientcert_header_name               = each.value.routing_http_request_x_amzn_mtls_clientcert_header_name
  region                                                                = each.value.region
  protocol                                                              = each.value.protocol
  port                                                                  = each.value.port
  certificate_arn                                                       = each.value.certificate_arn
  alpn_policy                                                           = each.value.alpn_policy
  routing_http_request_x_amzn_tls_version_header_name                   = each.value.routing_http_request_x_amzn_tls_version_header_name
  tcp_idle_timeout_seconds                                              = each.value.tcp_idle_timeout_seconds

  dynamic "default_action" {
    for_each = each.value.default_action
    content {
      dynamic "authenticate_cognito" {
        for_each = default_action.value.authenticate_cognito != null ? [default_action.value.authenticate_cognito] : []
        content {
          authentication_request_extra_params = authenticate_cognito.value.authentication_request_extra_params
          on_unauthenticated_request          = authenticate_cognito.value.on_unauthenticated_request
          scope                               = authenticate_cognito.value.scope
          session_cookie_name                 = authenticate_cognito.value.session_cookie_name
          session_timeout                     = authenticate_cognito.value.session_timeout
          user_pool_arn                       = authenticate_cognito.value.user_pool_arn
          user_pool_client_id                 = authenticate_cognito.value.user_pool_client_id
          user_pool_domain                    = authenticate_cognito.value.user_pool_domain
        }
      }
      dynamic "authenticate_oidc" {
        for_each = default_action.value.authenticate_oidc != null ? [default_action.value.authenticate_oidc] : []
        content {
          authentication_request_extra_params = authenticate_oidc.value.authentication_request_extra_params
          authorization_endpoint              = authenticate_oidc.value.authorization_endpoint
          client_id                           = authenticate_oidc.value.client_id
          client_secret                       = authenticate_oidc.value.client_secret
          issuer                              = authenticate_oidc.value.issuer
          on_unauthenticated_request          = authenticate_oidc.value.on_unauthenticated_request
          scope                               = authenticate_oidc.value.scope
          session_cookie_name                 = authenticate_oidc.value.session_cookie_name
          session_timeout                     = authenticate_oidc.value.session_timeout
          token_endpoint                      = authenticate_oidc.value.token_endpoint
          user_info_endpoint                  = authenticate_oidc.value.user_info_endpoint
        }
      }
      dynamic "fixed_response" {
        for_each = default_action.value.fixed_response != null ? [default_action.value.fixed_response] : []
        content {
          content_type = fixed_response.value.content_type
          message_body = fixed_response.value.message_body
          status_code  = fixed_response.value.status_code
        }
      }
      dynamic "forward" {
        for_each = default_action.value.forward != null ? [default_action.value.forward] : []
        content {
          dynamic "stickiness" {
            for_each = forward.value.stickiness != null ? [forward.value.stickiness] : []
            content {
              duration = stickiness.value.duration
              enabled  = stickiness.value.enabled
            }
          }
          dynamic "target_group" {
            for_each = forward.value.target_group
            content {
              arn    = target_group.value.arn
              weight = target_group.value.weight
            }
          }
        }
      }
      dynamic "jwt_validation" {
        for_each = default_action.value.jwt_validation != null ? [default_action.value.jwt_validation] : []
        content {
          dynamic "additional_claim" {
            for_each = jwt_validation.value.additional_claim != null ? jwt_validation.value.additional_claim : []
            content {
              format = additional_claim.value.format
              name   = additional_claim.value.name
              values = additional_claim.value.values
            }
          }
          issuer        = jwt_validation.value.issuer
          jwks_endpoint = jwt_validation.value.jwks_endpoint
        }
      }
      order = default_action.value.order
      dynamic "redirect" {
        for_each = default_action.value.redirect != null ? [default_action.value.redirect] : []
        content {
          host        = redirect.value.host
          path        = redirect.value.path
          port        = redirect.value.port
          protocol    = redirect.value.protocol
          query       = redirect.value.query
          status_code = redirect.value.status_code
        }
      }
      target_group_arn = default_action.value.target_group_arn
      type             = default_action.value.type
    }
  }

  dynamic "mutual_authentication" {
    for_each = each.value.mutual_authentication != null ? [each.value.mutual_authentication] : []
    content {
      advertise_trust_store_ca_names   = mutual_authentication.value.advertise_trust_store_ca_names
      ignore_client_certificate_expiry = mutual_authentication.value.ignore_client_certificate_expiry
      mode                             = mutual_authentication.value.mode
      trust_store_arn                  = mutual_authentication.value.trust_store_arn
    }
  }
}

