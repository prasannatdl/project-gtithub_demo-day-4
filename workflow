# .github/workflows/setup.yml
name: Setup Workflow

on:
  workflow_call:
    inputs:
      branch:
        description: 'Branch to use'
        required: true
        type: string

jobs:
  setup:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Set up Node.js
        uses: actions/setup-node@v2
        with:
          node-version: '16'

      - name: Install dependencies
        run: npm install