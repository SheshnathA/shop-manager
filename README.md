# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## Terminal Results

- $ cds init shop-manager
Creating new cap project in ./shop-manager

Adding feature 'nodejs'... 
Done adding features

Continue with 'cd shop-manager'
Find samples on https://github.com/SAP-samples/cloud-cap-samples
Learn about next steps at https://cap.cloud.sap

- user: projects $ cd shop-manager/
- user: shop-manager $ cds add samples
Adding feature(s) to project in current folder

Adding feature 'samples'... 
Done adding features

- user: shop-manager $ git init
Initialized empty Git repository in /home/user/projects/shop-manager/.git/
- user: shop-manager $ git add -A
- user: shop-manager $ git commit -m "basic project structure and some sample data"
[main (root-commit) 35590f3] basic project structure and some sample data
 10 files changed, 178 insertions(+)
 create mode 100644 .cdsrc.json
 create mode 100644 .gitignore
 create mode 100644 .vscode/extensions.json
 create mode 100644 .vscode/launch.json
 create mode 100644 .vscode/tasks.json
 create mode 100644 README.md
 create mode 100644 db/data-model.cds
 create mode 100644 db/data/my.bookshop-Books.csv
 create mode 100644 package.json
 create mode 100644 srv/cat-service.cds
- user: shop-manager $ git remote add origin https://github.com/SheshnathA/shop-manager.git
- user: shop-manager $ git config pull.rebase true
- user: shop-manager $ git pull origin main --allow-unrelated-histories
fatal: couldn't find remote ref main
user: shop-manager $ git status
On branch main
nothing to commit, working tree clean
- user: shop-manager $ git push origin HEAD:main
Enumerating objects: 16, done.
Counting objects: 100% (16/16), done.
Delta compression using up to 8 threads
Compressing objects: 100% (13/13), done.
Writing objects: 100% (16/16), 2.89 KiB | 1.44 MiB/s, done.
Total 16 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/SheshnathA/shop-manager.git
 * [new branch]      HEAD -> main
user: shop-manager $ 