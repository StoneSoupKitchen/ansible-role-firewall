[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/H2H43P9OI)
[![CI](https://github.com/StoneSoupKitchen/ansible-role-ufw/actions/workflows/ci.yml/badge.svg)](https://github.com/StoneSoupKitchen/ansible-role-ufw/actions/workflows/ci.yml)

# Ansible role: ufw

Install and configure Uncomplicated Firewall (UFW) on Debian-based systems.

## Requirements

Supported operating systems:
* Debian 10 (Buster)

## Example Playbook

    - hosts: servers
      roles:
         - stonesoupkitchen.ufw

## Role Variables

| Variable            | Description                                             | Default   |
|---------------------|---------------------------------------------------------|-----------|
| `ufw_package`       | Name of UFW package. Use `ufw=ver` to pin to a version. | `ufw`     |
| `ufw_package_state` | Installation state for `ufw_package`.                   | `present` |

## License

See [LICENSE](LICENSE).

