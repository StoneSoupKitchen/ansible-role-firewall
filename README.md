[![CI](https://github.com/StoneSoupKitchen/ansible-role-firewall/actions/workflows/ci.yml/badge.svg)](https://github.com/StoneSoupKitchen/ansible-role-firewall/actions/workflows/ci.yml)

# Ansible role: firewall

Install and configure a firewall on Linux-based systems.

## Requirements

Supported operating systems:
* Debian 10 (Buster)

## Role Variables

The following table lists all variables that can be overridden
and their default values.

| Name                     | Default Value | Description                      |
| ------------------------ | ------------- | -------------------------------- |
| `firewall_provider` | auto | Firewall tool to use. Automatically determined. |
| `firewall_package_state` | present | Installation state for firewall package. |

## Examples

```yaml
- hosts: all
  roles:
    - stonesoupkitchen.firewall
```

## Development

A Makefile is included for easier development with `pipenv`.
After cloning this repository,
use the following commands to set up an environment.

    pipenv install --dev

To lint your changes with ansible-lint:

    make lint

To run tests with molecule:

    make test

## License

See [LICENSE](./LICENSE).

