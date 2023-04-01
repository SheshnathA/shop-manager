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

## Part Two

- user: shop-manager $ cds add mta
Adding feature(s) to project in current folder

Adding feature 'mta'... 
Done adding features

- user: shop-manager $ cds add hana --for production
Adding feature(s) to project in current folder

Adding feature 'hana'... 
Done adding features


- user: shop-manager $ cds watch
 
cds serve all --with-mocks --in-memory? 
watching: cds,csn,csv,ts,mjs,cjs,js,json,properties,edmx,xml,env,css,gif,html,jpg,png,svg... 
live reload enabled for browsers 

        ___________________________

 
[cds] - loaded model from 2 file(s):

  db/data-model.cds
  srv/cat-service.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { url: ':memory:' }
  > init from db/data/my.bookshop-Books.csv 
/> successfully deployed to in-memory database. 

[cds] - serving CatalogService { path: '/catalog' }

[cds] - server listening on { url: 'http://localhost:4004' }
[cds] - launched at 4/1/2023, 8:04:49 AM, version: 6.7.0, in: 1.341s
[cds] - [ terminate with ^C ]

[cds] - GET /catalog/Books 
^C
[cds] - my watch has ended.  

- 
user: shop-manager $ mbt build
[2023-04-01 08:05:52]  INFO Cloud MTA Build Tool version 1.2.18
[2023-04-01 08:05:52]  INFO generating the "Makefile_20230401080552.mta" file...
[2023-04-01 08:05:52]  INFO done
[2023-04-01 08:05:52]  INFO executing the "make -f Makefile_20230401080552.mta p=cf mtar= strict=true mode=" command...
[2023-04-01 08:05:52]  INFO validating the MTA project
[2023-04-01 08:05:52]  INFO running the "before-all" build...
[2023-04-01 08:05:52]  INFO executing the "npx -p @sap/cds-dk cds build --production" command...
.npm WARN exec The following package was not found and will be installed: @sap/cds-dk@6.7.0
.................[cds] - the following build tasks will be executed
[cds] -    {
     "build": {
       "target": "gen",
       "tasks": [
         {"for":"hana", "src":"db", "options":{"model":["db","srv","app"]}},
         {"for":"nodejs", "src":"srv", "options":{"model":["db","srv","app"]}}
       ]
     }
   }

[cds] - building project [/home/user/projects/shop-manager], clean [true]
[cds] - cds [6.7.0], compiler [3.8.0], home [/tmp/usertemp/.npm/_npx/b993340195f82cd5/node_modules/@sap/cds-dk/node_modules/@sap/cds]

[cds] - done > wrote output to:
   gen/db/package.json
   gen/db/src/.hdiconfig
   gen/db/src/gen/.hdiconfig
   gen/db/src/gen/.hdinamespace
   gen/db/src/gen/CatalogService.Books.hdbview
   gen/db/src/gen/data/my.bookshop-Books.csv
   gen/db/src/gen/data/my.bookshop-Books.hdbtabledata
   gen/db/src/gen/my.bookshop.Books.hdbtable
   gen/db/undeploy.json
   gen/srv/.cdsrc.json
   gen/srv/package.json
   gen/srv/srv/csn.json

[cds] - build completed in 413 ms

.[2023-04-01 08:06:11]  INFO validating the MTA project
[2023-04-01 08:06:11]  INFO building the "shop-manager-srv" module...
[2023-04-01 08:06:11]  INFO executing the "npm clean-install --production" command...
npm WARN config production Use `--omit=dev` instead.
npm ERR! code EUSAGE
npm ERR! 
npm ERR! The `npm ci` command can only install with an existing package-lock.json or
npm ERR! npm-shrinkwrap.json with lockfileVersion >= 1. Run an install with npm@5 or
npm ERR! later to generate a package-lock.json file, then try again.
npm ERR! 
npm ERR! Clean install a project
npm ERR! 
npm ERR! Usage:
npm ERR! npm ci
npm ERR! 
npm ERR! Options:
npm ERR! [-S|--save|--no-save|--save-prod|--save-dev|--save-optional|--save-peer|--save-bundle]
npm ERR! [-E|--save-exact] [-g|--global] [--global-style] [--legacy-bundling]
npm ERR! [--omit <dev|optional|peer> [--omit <dev|optional|peer> ...]]
npm ERR! [--strict-peer-deps] [--no-package-lock] [--foreground-scripts]
npm ERR! [--ignore-scripts] [--no-audit] [--no-bin-links] [--no-fund] [--dry-run]
npm ERR! [-w|--workspace <workspace-name> [-w|--workspace <workspace-name> ...]]
npm ERR! [-ws|--workspaces] [--include-workspace-root] [--install-links]
npm ERR! 
npm ERR! aliases: clean-install, ic, install-clean, isntall-clean
npm ERR! 
npm ERR! Run "npm help ci" for more info

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/user/.npm/_logs/2023-04-01T08_06_11_523Z-debug-0.log
[2023-04-01 08:06:11] ERROR could not build the "shop-manager-srv" module: could not execute the "npm clean-install --production" command: exit status 1
make: *** [Makefile_20230401080552.mta:37: shop-manager-srv] Error 1
Error: could not build the MTA project: could not execute the "make -f Makefile_20230401080552.mta p=cf mtar= strict=true mode=" command: exit status 2

- user: shop-manager $ npm install
npm WARN deprecated @npmcli/move-file@1.1.2: This functionality has been moved to @npmcli/fs

added 175 packages, and audited 176 packages in 3s

12 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities

- user: shop-manager $ mbt build
[2023-04-01 08:06:49]  INFO Cloud MTA Build Tool version 1.2.18
[2023-04-01 08:06:49]  INFO generating the "Makefile_20230401080649.mta" file...
[2023-04-01 08:06:49]  INFO done
[2023-04-01 08:06:49]  INFO executing the "make -f Makefile_20230401080649.mta p=cf mtar= strict=true mode=" command...
[2023-04-01 08:06:49]  INFO validating the MTA project
[2023-04-01 08:06:49]  INFO running the "before-all" build...
[2023-04-01 08:06:49]  INFO executing the "npx -p @sap/cds-dk cds build --production" command...
.[cds] - the following build tasks will be executed
[cds] -    {
     "build": {
       "target": "gen",
       "tasks": [
         {"for":"hana", "src":"db", "options":{"model":["db","srv","app"]}},
         {"for":"nodejs", "src":"srv", "options":{"model":["db","srv","app"]}}
       ]
     }
   }

[cds] - building project [/home/user/projects/shop-manager], clean [true]
[cds] - cds [6.7.0], compiler [3.8.2], home [/home/user/projects/shop-manager/node_modules/@sap/cds]

[cds] - done > wrote output to:
   gen/db/package.json
   gen/db/src/.hdiconfig
   gen/db/src/gen/.hdiconfig
   gen/db/src/gen/.hdinamespace
   gen/db/src/gen/CatalogService.Books.hdbview
   gen/db/src/gen/data/my.bookshop-Books.csv
   gen/db/src/gen/data/my.bookshop-Books.hdbtabledata
   gen/db/src/gen/my.bookshop.Books.hdbtable
   gen/db/undeploy.json
   gen/srv/.cdsrc.json
   gen/srv/package-lock.json
   gen/srv/package.json
   gen/srv/srv/csn.json

[cds] - build completed in 332 ms

[2023-04-01 08:06:51]  INFO validating the MTA project
[2023-04-01 08:06:51]  INFO building the "shop-manager-srv" module...
[2023-04-01 08:06:51]  INFO executing the "npm clean-install --production" command...
npm WARN config production Use `--omit=dev` instead.
.
added 67 packages, and audited 68 packages in 1s

8 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
[2023-04-01 08:06:52]  INFO the build results of the "shop-manager-srv" module will be packaged and saved in the "/home/user/projects/shop-manager/.shop-manager_mta_build_tmp/shop-manager-srv" folder
[2023-04-01 08:06:52]  INFO finished building the "shop-manager-srv" module
[2023-04-01 08:06:52]  INFO building the "shop-manager-db-deployer" module...
[2023-04-01 08:06:52]  INFO executing the "npm install --production" command...
npm WARN config production Use `--omit=dev` instead.
....
added 31 packages, and audited 32 packages in 5s

found 0 vulnerabilities
[2023-04-01 08:06:57]  INFO the build results of the "shop-manager-db-deployer" module will be packaged and saved in the "/home/user/projects/shop-manager/.shop-manager_mta_build_tmp/shop-manager-db-deployer" folder
[2023-04-01 08:07:04]  INFO finished building the "shop-manager-db-deployer" module
[2023-04-01 08:07:04]  INFO running the "after-all" build...
[2023-04-01 08:07:04]  INFO generating the metadata...
[2023-04-01 08:07:04]  INFO generating the "/home/user/projects/shop-manager/.shop-manager_mta_build_tmp/META-INF/mtad.yaml" file...
[2023-04-01 08:07:04]  INFO generating the MTA archive...
[2023-04-01 08:07:07]  INFO the MTA archive generated at: /home/user/projects/shop-manager/mta_archives/shop-manager_1.0.0.mtar
[2023-04-01 08:07:07]  INFO cleaning temporary files...


user: shop-manager $ cf deploy "/home/user/projects/shop-manager/mta_archives/shop-manager_1.0.0.mtar" 
Deploying multi-target app archive /home/user/projects/shop-manager/mta_archives/shop-manager_1.0.0.mtar in org 7d0697e9trial / space dev as shesh.iot@gmail.com...

Uploading 1 files...
  /home/user/projects/shop-manager/mta_archives/shop-manager_1.0.0.mtar
OK
Operation ID: c225455a-d065-11ed-acb9-eeee0a97a43e
Deploying in org "7d0697e9trial" and space "dev"
Detected MTA schema version: "3"
Detected deployed MTA with ID "shop-manager" and version "1.0.0"
Detected new MTA version: "1.0.0"
Deployed MTA version: "1.0.0"
Processing service "shop-manager-db"...
Updating application "shop-manager-srv"...
Application "shop-manager-srv" attributes are not modified and will not be updated
Updating application "shop-manager-db-deployer"...
Application "shop-manager-db-deployer" attributes are not modified and will not be updated
Unbinding service instance "shop-manager-db" from application "shop-manager-srv"...
Unbinding service instance "shop-manager-db" from application "shop-manager-db-deployer"...
Binding service instance "shop-manager-db" to application "shop-manager-srv"...
Binding service instance "shop-manager-db" to application "shop-manager-db-deployer"...
Uploading application "shop-manager-srv"...
Uploading application "shop-manager-db-deployer"...
Content of application "shop-manager-srv" is not changed - upload will be skipped.
Content of application "shop-manager-db-deployer" is not changed - upload will be skipped.
Scaling application "shop-manager-db-deployer" to "1" instances... 
Stopping application "shop-manager-srv"...
Starting application "shop-manager-srv"...
Executing task "deploy" on application "shop-manager-db-deployer"...
Application "shop-manager-srv" started and available at "7d0697e9trial-dev-shop-manager-srv.cfapps.us10.hana.ondemand.com"
Skipping deletion of services, because the command line option "--delete-services" is not specified.
Process finished.
Use "cf dmol -i c225455a-d065-11ed-acb9-eeee0a97a43e" to download the logs of the process.
user: shop-manager $ git branch
* main

- user: shop-manager $ git commit -m "added sap hana database and deploy to CF, user can access service without credentials means anyone can access this url on internet"
[main 8e216c8] added sap hana database and deploy to CF, user can access service without credentials means anyone can access this url on internet
 5 files changed, 3654 insertions(+), 1 deletion(-)
 create mode 100644 db/src/.hdiconfig
 create mode 100644 db/undeploy.json
 create mode 100644 mta.yaml
 create mode 100644 package-lock.json

- user: shop-manager $ git push origin HEAD:Deploy-onCF-with-HANA-DB
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: 
remote: Create a pull request for 'Deploy-onCF-with-HANA-DB' on GitHub by visiting:
remote:      https://github.com/SheshnathA/shop-manager/pull/new/Deploy-onCF-with-HANA-DB
remote: 
To https://github.com/SheshnathA/shop-manager.git
 * [new branch]      HEAD -> Deploy-onCF-with-HANA-DB
user: shop-manager $ 