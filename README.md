# ansible-ci

A simple image of ansible to use in CI.

hub.docker.com/remidesgrange/ansible-ci


Example:

```
image: remidesgrange/ansible-ci
variables:
  ANSIBLE_HOST_KEY_CHECKING: 'false'

before_script:
  - ansible-galaxy install <whatever>

lint:
  script:
    - ansible-lint *.yml

playbook:
  script:
    - ansible-playbook --private-key=$a_private_key_file_specified_in_config whatever.yml
```
