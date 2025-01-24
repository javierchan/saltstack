# SaltStack Formulas

This repository contains SaltStack formulas for managing various services and configurations.

## Directory Structure

```
saltstack-formulas/
├── pillar/
│   ├── environment-specific/
│   ├── top.sls
│   ├── vault/
│   │   ├── secrets.sls
│   │   └── other_secrets.sls
├── states/
│   ├── nginx/
│   ├── apache/
│   ├── users/
├── custom-modules/
├── utils/
│   ├── scripts/
│   │   └── update_repo.sh
├── .gitignore
├── README.md
```

## Setup Instructions

1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/saltstack-formulas.git
   cd saltstack-formulas
   ```

2. Configure your environment-specific pillar data in `pillar/environment-specific/`.

3. Add your secrets to `pillar/vault/secrets.sls`.

## Usage Examples

To apply the states, run:
```sh
salt '*' state.apply
```

To apply a specific state, run:
```sh
salt '*' state.apply nginx
```

## Security

Ensure that sensitive information is stored securely in the `vault` directory and not exposed in version control.
