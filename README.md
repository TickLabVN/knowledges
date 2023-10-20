# Generate web documents from markdown
![Generate-document](https://img.shields.io/github/actions/workflow/status/ngyngcphu/mkdocs-tool/gen-docs.yml
)
> This tool is based on [mkdocs-material](https://github.com/squidfunk/mkdocs-material) and inspired by [HPCMonitoring/docs](https://github.com/HPCMonitoring/docs). 

## Features
1. Support [Commit Convention Message](https://www.conventionalcommits.org/en/v1.0.0/) when working in groups with [commitlint](https://commitlint.js.org/#/) and [husky](https://typicode.github.io/husky/).
2. Support Docker Compose.
3. Follow git-workflow with 2 main branches: `main` and `staging`, with specific documents attached at [here](https://ngyngcphu.github.io/mkdocs-tool/).
4. Auto-generate web document when creating pull request to branch `staging` and auto-release new version when pushing to branch `main`.

## Installation

1. Clone the repository:
    ```
    git clone git@github.com:ngyngcphu/mkdocs-tool.git
    ```
    or you haven't set up SSH on github:
    ```
    git clone https://github.com/ngyngcphu/mkdocs-tool.git
    ```
2. Setup commit convention message (optional):
    ```
    yarn install
    ```

3. Run tool:
    ```
    pip install mkdocs-material
    mkdocs serve --dev-addr=0.0.0.0:8000
    ```
    or if you have `docker compose`, only run:
    ```
    docker compose up -d
    ```

Point your browser to `localhost:8000` to see result.

## Deploy to github-pages

### From local
You have to create a new branch `staging` and follow git-workflow in [here](https://ngyngcphu.github.io/mkdocs-tool/).  
**Note**: Branch `gh-pages` is only created when you create a pull request to `staging`. 

### On remote
You can use feature **Use this template** on github. Then, click `Include all branches`.

## Enable github-pages and workflow permissions
1. In `Settings->Pages->Branch`, select branch `gh-pages` and folder `/root` to enable github page.
2. In `Settings->Actions->General->Workflow permissions`, select **Allow Github Action to create and approve pull requests** to enable permission.
