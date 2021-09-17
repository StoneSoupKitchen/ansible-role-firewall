[![CI](https://github.com/StoneSoupKitchen/ansible-role-ufw/actions/workflows/ci.yml/badge.svg)](https://github.com/StoneSoupKitchen/ansible-role-ufw/actions/workflows/ci.yml)

# Ansible role: firewall

Install and configure a firewall on Linux-based systems.

## Requirements

Supported operating systems:
* Debian 10 (Buster)

## Example Playbook

    - hosts: servers
      roles:
         - stonesoupkitchen.firewall

## Role Variables

| Variable                 | Description                                             | Default   |
|--------------------------|---------------------------------------------------------|-----------|
| `firewall_package`       | Name of package. Use `ufw=ver` to pin to a version.     | `ufw`     |
| `firewall_package_state` | Installation state for `ufw_package`.                   | `present` |

## Development

A Makefile is included for easier development with `pipenv`.
After cloning this repository,
use the following commands to set up an environment.

    pipenv shell
    pipenv install -r requirements.txt

To lint your changes with ansible-lint:

    make lint

To run tests with molecule:

    make test

## License

See [LICENSE](LICENSE).

