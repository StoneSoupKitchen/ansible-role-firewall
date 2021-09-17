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

## License

See [LICENSE](LICENSE).

