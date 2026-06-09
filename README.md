# SUMA Linux Baseline

Baseline example for Linux systems managed with SUSE Multi-Linux Manager / Uyuni.

This repository contains a practical structure for organizing Salt states, security settings, packages, services and operational checks in enterprise Linux environments.

## Related Documentation

Additional documentation about Linux baselines, SUSE Multi-Linux Manager, Uyuni, hardening and enterprise operations:

https://desdeelservidor.es

Technical articles and guides:

https://desdeelservidor.es/guias.html


## Goals

- Provide a clean Salt state structure
- Document Linux baseline concepts
- Support repeatable system configuration
- Improve operational consistency
- Serve as a lab reference for SUSE Manager / Uyuni environments

## Areas Covered

- Base packages
- SSH hardening
- Logging
- Services
- Security baseline
- Operational checks

## Structure

salt/
  security/
  packages/
  services/
  logging/

docs/
  architecture.md
  usage.md
  baseline.md

scripts/
  validate-baseline.sh

## Technologies

- SUSE Multi-Linux Manager
- Uyuni
- Salt
- Linux
- Bash
- Enterprise Linux

## Author

Jose Gonzalez  
https://desdeelservidor.es
