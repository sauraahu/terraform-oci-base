# Copyright 2017, 2019, Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl

# Identity and access parameters

variable "oci_base_identity" {
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    compartment_name     = string
    compartment_id       = string
    tenancy_id           = string
    user_id              = string
  })
  description = "identity and provider parameters"
}

# ssh keys

variable "oci_base_ssh_keys" {
  type = object({
    ssh_private_key_path = string
    ssh_public_key_path  = string
  })
  description = "ssh keys for bastion"
}

# general oci parameters

variable "oci_base_general" {
  type = object({
    disable_auto_retries = bool
    label_prefix         = string
    region               = string
  })
  description = "general oci parameters"
}

# networking parameters

variable "oci_base_vcn" {
  type = object({
    vcn_cidr               = string
    vcn_dns_label          = string
    vcn_name               = string
    create_nat_gateway     = bool
    nat_gateway_name       = string
    create_service_gateway = bool
    service_gateway_name   = string
  })
  description = "VCN basic parameters"
}

# bastion

variable "oci_base_bastion" {
  type = object({
    newbits                        = number
    subnets                        = number
    bastion_shape                  = string
    create_bastion                 = bool
    bastion_access                 = string
    enable_instance_principal      = bool
    image_id                       = string
    image_operating_system         = string
    image_operating_system_version = string
    availability_domains           = number
    bastion_package_update         = bool
    bastion_package_upgrade        = bool
  })
  description = "bastion host parameters"
}