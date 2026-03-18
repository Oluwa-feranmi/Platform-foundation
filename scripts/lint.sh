#!/bin/bash
set -euo pipefail

echo "Running CloudFormation validation checks"
cfn-lint templates/**/*.yml templates/**/*.yaml