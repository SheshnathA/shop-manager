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


## Part 3 Terminal - added entities, services and data file

user: shop-manager $ cds compile --help

SYNOPSIS

  cds compile <models> [<options>]

  Compiles the specified models to CSN format, applying processors to unfold
  and generate target outputs using the <options>.
  

OPTIONS
  

  -2 | --to <target format>

    Compiles the given models to the specified <target format>.
    Currently supported:

    - json, yml
    - edm, edmx, edmx-v2, edmx-v4, edmx-w4, edmx-x4
    - sql, hdbcds, hdbtable
    - cdl [beta]
    - xsuaa
    - openapi

  -4 | --for <target>

    Unfolds the compiled CSN for the specified <target> usages,
    or get a comma-separated list, without generating target formats.
    Currently supported:

    - odata
    - sql

  -s | --service <name> | all

    Chooses a specific service or all to force output for all services.

  -l | --lang <languages> | all

    Localizes the output with given <languages>, a comma-separated list
    of language/locale codes or all.
    Localization is carried out before all other processors (-4/u) or backends (-2).

  -o | --dest <folder>

    Writes output to the given folder instead of stdout.

  -f | --flavor sources | files | parsed | xtended | inferred

    Depending on the argument, returns a model with the given level of detail:

      sources:  paths and content of all resolved source files
      files:    paths of all effectively referenced files
      parsed:   the definitions and extensions, without applying the
                extensions or includes, and without imported definitions.
      xtended:  the definitions with all imports and extensions resolved,
                but without any derived information
      inferred: the effective model, including imported definitions, extensions,
                and derived information.  This is the default flavor.

  --parse

    Shortcut for '--flavor parsed'

  --plain

    Shortcut for '--flavor xtended'

  --docs

    Preserves /**...*/ doc comments in 'doc' properties of CSN outputs,
    as well as in 'Core.Description' annotations of EDMX outputs.

  --locations

    Preserves $location properties of CSN outputs.

  --log-level debug | info | warn | error

    Chooses which level of compiler messages to log. The default log-level is warn.

  --openapi:url <Server URL for Open API export>

    The server URL used in the generated OpenAPI document. The default is the service
    base path as declared in the CDS source.
    Use the ${service-path} variable to have the service path included in the URL.

  --openapi:servers <Stringified JSON Object for Open API export>

    The servers definition used in the generated OpenAPI document. --openapi:url is
    ignored when this option is specified.

  --openapi:diagram

    Include YUML diagram in the generated OpenAPI document, default: false.

EXAMPLES

   cds compile model.cds
   cds c model.json --to sql
   cds srv -s all -l all -2 edmx -o _out


user: shop-manager $ cds compile data-model.cds --to sql
Couldn't find a CDS model for 'data-model.cds' in /home/user/projects/shop-manager
user: shop-manager $ cds compile db/data-model.cds --to sql

CREATE TABLE com_shesh_shop_manager_Books (
  ID INTEGER NOT NULL,
  title NVARCHAR(5000),
  stock INTEGER,
  PRIMARY KEY(ID)
);

CREATE TABLE com_shesh_shop_manager_Wholesalers (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  mobileNumber NVARCHAR(10) NOT NULL,
  name NVARCHAR(100),
  location NVARCHAR(100),
  city NVARCHAR(50),
  pincode NVARCHAR(6),
  GSTIN NVARCHAR(5000),
  type NVARCHAR(50),
  status NVARCHAR(30),
  email NVARCHAR(100),
  PRIMARY KEY(mobileNumber)
);

CREATE TABLE com_shesh_shop_manager_Retailers (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  mobileNumber NVARCHAR(10) NOT NULL,
  name NVARCHAR(100),
  location NVARCHAR(100),
  city NVARCHAR(50),
  pincode NVARCHAR(6),
  GSTIN NVARCHAR(5000),
  type NVARCHAR(50),
  status NVARCHAR(30),
  email NVARCHAR(100),
  wholesalers_mobileNumber NVARCHAR(10),
  PRIMARY KEY(mobileNumber)
);

CREATE TABLE com_shesh_shop_manager_Products (
  ID NVARCHAR(36) NOT NULL,
  barcode NVARCHAR(50),
  name NVARCHAR(100),
  description NVARCHAR(500),
  mrp INTEGER,
  buyRate INTEGER,
  gattaRate INTEGER,
  fileRate INTEGER,
  pcsRate INTEGER,
  stocks INTEGER,
  unit NVARCHAR(30),
  image NVARCHAR(5000),
  mfd DATE_TEXT,
  expDate DATE_TEXT,
  availability NVARCHAR(30),
  wholesalers_mobileNumber NVARCHAR(10),
  PRIMARY KEY(ID)
);

CREATE TABLE com_shesh_shop_manager_Orders (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  orderNumber NVARCHAR(20) NOT NULL,
  shopName NVARCHAR(100),
  wholesalerName NVARCHAR(100),
  shopMobNum NVARCHAR(10),
  wholesalermobNum NVARCHAR(10),
  shopAddress NVARCHAR(200),
  wholesalerAddress NVARCHAR(200),
  totalAmount INTEGER,
  items_ID NVARCHAR(36),
  PRIMARY KEY(orderNumber)
);

CREATE TABLE com_shesh_shop_manager_OrdersItems (
  ID NVARCHAR(36) NOT NULL,
  name_ID NVARCHAR(36),
  mrp INTEGER,
  rate INTEGER,
  unit NVARCHAR(30),
  subTotal INTEGER,
  PRIMARY KEY(ID)
);

[WARNING] db/data-model.cds:64:3: A composition can't have cardinality "to many" without an ON-condition (in entity:“com.shesh.shop.manager.Orders”/element:“items”)
user: shop-manager $ cds compile db/data-model.cds --to sql

CREATE TABLE com_shesh_shop_manager_Books (
  ID INTEGER NOT NULL,
  title NVARCHAR(5000),
  stock INTEGER,
  PRIMARY KEY(ID)
);

CREATE TABLE com_shesh_shop_manager_Wholesalers (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  mobileNumber NVARCHAR(10) NOT NULL,
  name NVARCHAR(100),
  location NVARCHAR(100),
  city NVARCHAR(50),
  pincode NVARCHAR(6),
  GSTIN NVARCHAR(5000),
  type NVARCHAR(50),
  status NVARCHAR(30),
  email NVARCHAR(100),
  PRIMARY KEY(mobileNumber)
);

CREATE TABLE com_shesh_shop_manager_Retailers (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  mobileNumber NVARCHAR(10) NOT NULL,
  name NVARCHAR(100),
  location NVARCHAR(100),
  city NVARCHAR(50),
  pincode NVARCHAR(6),
  GSTIN NVARCHAR(5000),
  type NVARCHAR(50),
  status NVARCHAR(30),
  email NVARCHAR(100),
  wholesalers_mobileNumber NVARCHAR(10),
  PRIMARY KEY(mobileNumber)
);

CREATE TABLE com_shesh_shop_manager_Products (
  barcode NVARCHAR(50) NOT NULL,
  name NVARCHAR(100),
  description NVARCHAR(500),
  mrp INTEGER,
  buyRate INTEGER,
  gattaRate INTEGER,
  fileRate INTEGER,
  pcsRate INTEGER,
  stocks INTEGER,
  unit NVARCHAR(30),
  image NVARCHAR(5000),
  mfd DATE_TEXT,
  expDate DATE_TEXT,
  availability NVARCHAR(30),
  wholesalers_mobileNumber NVARCHAR(10),
  PRIMARY KEY(barcode)
);

CREATE TABLE com_shesh_shop_manager_Orders (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  orderNumber NVARCHAR(20) NOT NULL,
  shopName NVARCHAR(100),
  wholesalerName NVARCHAR(100),
  shopMobNum NVARCHAR(10),
  wholesalermobNum NVARCHAR(10),
  shopAddress NVARCHAR(200),
  wholesalerAddress NVARCHAR(200),
  totalAmount INTEGER,
  items_ID NVARCHAR(36),
  PRIMARY KEY(orderNumber)
);

CREATE TABLE com_shesh_shop_manager_OrdersItems (
  ID NVARCHAR(36) NOT NULL,
  name_barcode NVARCHAR(50),
  mrp INTEGER,
  rate INTEGER,
  unit NVARCHAR(30),
  subTotal INTEGER,
  PRIMARY KEY(ID)
);

[WARNING] db/data-model.cds:63:3: A composition can't have cardinality "to many" without an ON-condition (in entity:“com.shesh.shop.manager.Orders”/element:“items”)
user: shop-manager $ cds compile db/data-model.cds --to sql

CREATE TABLE com_shesh_shop_manager_Books (
  ID INTEGER NOT NULL,
  title NVARCHAR(5000),
  stock INTEGER,
  PRIMARY KEY(ID)
);

CREATE TABLE com_shesh_shop_manager_Wholesalers (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  mobileNumber NVARCHAR(10) NOT NULL,
  name NVARCHAR(100),
  location NVARCHAR(100),
  city NVARCHAR(50),
  pincode NVARCHAR(6),
  GSTIN NVARCHAR(5000),
  type NVARCHAR(50),
  status NVARCHAR(30),
  email NVARCHAR(100),
  PRIMARY KEY(mobileNumber)
);

CREATE TABLE com_shesh_shop_manager_Retailers (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  mobileNumber NVARCHAR(10) NOT NULL,
  name NVARCHAR(100),
  location NVARCHAR(100),
  city NVARCHAR(50),
  pincode NVARCHAR(6),
  GSTIN NVARCHAR(5000),
  type NVARCHAR(50),
  status NVARCHAR(30),
  email NVARCHAR(100),
  wholesalers_mobileNumber NVARCHAR(10),
  PRIMARY KEY(mobileNumber)
);

CREATE TABLE com_shesh_shop_manager_Products (
  barcode NVARCHAR(50) NOT NULL,
  name NVARCHAR(100),
  description NVARCHAR(500),
  mrp INTEGER,
  buyRate INTEGER,
  gattaRate INTEGER,
  fileRate INTEGER,
  pcsRate INTEGER,
  stocks INTEGER,
  unit NVARCHAR(30),
  image NVARCHAR(5000),
  mfd DATE_TEXT,
  expDate DATE_TEXT,
  availability NVARCHAR(30),
  wholesalers_mobileNumber NVARCHAR(10),
  PRIMARY KEY(barcode)
);

CREATE TABLE com_shesh_shop_manager_Orders (
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  orderNumber NVARCHAR(20) NOT NULL,
  shopName NVARCHAR(100),
  wholesalerName NVARCHAR(100),
  shopMobNum NVARCHAR(10),
  wholesalermobNum NVARCHAR(10),
  shopAddress NVARCHAR(200),
  wholesalerAddress NVARCHAR(200),
  totalAmount INTEGER,
  items_ID NVARCHAR(36),
  PRIMARY KEY(orderNumber)
);

CREATE TABLE com_shesh_shop_manager_OrdersItems (
  ID NVARCHAR(36) NOT NULL,
  products_barcode NVARCHAR(50),
  name NVARCHAR(100),
  mrp INTEGER,
  rate INTEGER,
  unit NVARCHAR(30),
  subTotal INTEGER,
  PRIMARY KEY(ID)
);

[WARNING] db/data-model.cds:63:3: A composition can't have cardinality "to many" without an ON-condition (in entity:“com.shesh.shop.manager.Orders”/element:“items”)
user: shop-manager $ cds watch
 
cds serve all --with-mocks --in-memory? 
watching: cds,csn,csv,ts,mjs,cjs,js,json,properties,edmx,xml,env,css,gif,html,jpg,png,svg... 
live reload enabled for browsers 

        ___________________________

 
[cds] - loaded model from 3 file(s):

  db/data-model.cds
  srv/cat-service.cds
  node_modules/@sap/cds/common.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { url: ':memory:' }
/> successfully deployed to in-memory database. 

[cds] - serving CatalogService { path: '/catalog' }
[cds] - serving WholesalersService { path: '/wholesalers' }

[cds] - server listening on { url: 'http://localhost:4004' }
[cds] - launched at 4/1/2023, 10:31:17 AM, version: 6.7.0, in: 2.338s
[cds] - [ terminate with ^C ]

[cds] - GET /wholesalers/Wholesalers 
[cds] - GET /wholesalers/OrdersItems 

        ___________________________

 
[cds] - loaded model from 3 file(s):

  db/data-model.cds
  srv/cat-service.cds
  node_modules/@sap/cds/common.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { url: ':memory:' }
/> successfully deployed to in-memory database. 

[cds] - serving CatalogService { path: '/catalog' }
[cds] - serving WholesalersService { path: '/wholesalers' }

[cds] - server listening on { url: 'http://localhost:4004' }
[cds] - launched at 4/1/2023, 10:31:43 AM, version: 6.7.0, in: 933.563ms
[cds] - [ terminate with ^C ]

^C
[cds] - my watch has ended.  
user: shop-manager $ ^C
user: shop-manager $ ^C
user: shop-manager $ cds add data
Adding feature(s) to project in current folder

Creating db/data/com.shesh.shop.manager-Books.csv
Creating db/data/com.shesh.shop.manager-Wholesalers.csv
Creating db/data/com.shesh.shop.manager-Retailers.csv
Creating db/data/com.shesh.shop.manager-Products.csv
Creating db/data/com.shesh.shop.manager-Orders.csv
Creating db/data/com.shesh.shop.manager-OrdersItems.csv
Creating db/data/sap.common-Languages.csv
Creating db/data/sap.common-Countries.csv
Creating db/data/sap.common-Currencies.csv
Creating db/data/sap.common-Languages.texts.csv
Creating db/data/sap.common-Countries.texts.csv
Creating db/data/sap.common-Currencies.texts.csv
Adding feature 'data'... 
Done adding features


user: shop-manager $ cds watch
 
cds serve all --with-mocks --in-memory? 
watching: cds,csn,csv,ts,mjs,cjs,js,json,properties,edmx,xml,env,css,gif,html,jpg,png,svg... 
live reload enabled for browsers 

        ___________________________

 
[cds] - loaded model from 3 file(s):

  db/data-model.cds
  srv/cat-service.cds
  node_modules/@sap/cds/common.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { url: ':memory:' }
  > init from db/data/com.shesh.shop.manager-Books.csv 
  > init from db/data/com.shesh.shop.manager-Orders.csv 
  > init from db/data/com.shesh.shop.manager-OrdersItems.csv 
  > init from db/data/com.shesh.shop.manager-Products.csv 
  > init from db/data/com.shesh.shop.manager-Retailers.csv 
  > init from db/data/com.shesh.shop.manager-Wholesalers.csv 
/> successfully deployed to in-memory database. 

[cds] - serving CatalogService { path: '/catalog' }
[cds] - serving WholesalersService { path: '/wholesalers' }

[cds] - server listening on { url: 'http://localhost:4004' }
[cds] - launched at 4/1/2023, 10:33:32 AM, version: 6.7.0, in: 1.177s
[cds] - [ terminate with ^C ]

[cds] - GET /catalog/Books 
[cds] - GET /wholesalers/Wholesalers 
[cds] - GET /wholesalers/$metadata?sap-language=EN 
[cds] - HEAD /wholesalers/ 
[cds] - POST /wholesalers/$batch 
[cds] - > READ Wholesalers { '$count': 'true', '$select': 'mobileNumber', '$skip': '0', '$top': '30' }
[cds] - POST /wholesalers/$batch 
[cds] - > READ Wholesalers { '$count': 'true', '$select': 'mobileNumber', '$skip': '0', '$top': '30' }
[cds] - GET /wholesalers/$metadata 

        ___________________________

 
[cds] - loaded model from 3 file(s):

  db/data-model.cds
  srv/cat-service.cds
  node_modules/@sap/cds/common.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { url: ':memory:' }
  > init from db/data/com.shesh.shop.manager-Books.csv 
  > init from db/data/com.shesh.shop.manager-Orders.csv 
  > init from db/data/com.shesh.shop.manager-OrdersItems.csv 
  > init from db/data/com.shesh.shop.manager-Products.csv 
  > init from db/data/com.shesh.shop.manager-Retailers.csv 
  > init from db/data/com.shesh.shop.manager-Wholesalers.csv 
/> successfully deployed to in-memory database. 

[cds] - serving CatalogService { path: '/catalog' }
[cds] - serving WholesalersService { path: '/wholesalers' }

[cds] - server listening on { url: 'http://localhost:4004' }
[cds] - launched at 4/1/2023, 10:35:56 AM, version: 6.7.0, in: 1.822s
[cds] - [ terminate with ^C ]


        ___________________________

 
[cds] - loaded model from 3 file(s):

  db/data-model.cds
  srv/cat-service.cds
  node_modules/@sap/cds/common.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { url: ':memory:' }
  > init from db/data/com.shesh.shop.manager-Books.csv 
  > init from db/data/com.shesh.shop.manager-Orders.csv 
  > init from db/data/com.shesh.shop.manager-OrdersItems.csv 
  > init from db/data/com.shesh.shop.manager-Products.csv 
  > init from db/data/com.shesh.shop.manager-Retailers.csv 
  > init from db/data/com.shesh.shop.manager-Wholesalers.csv 
node:internal/process/promises:279
            triggerUncaughtException(err, true /* fromPromise */);
            ^

[Error: SQLITE_ERROR: 2 values for 13 columns in: 
INSERT INTO com_shesh_shop_manager_Wholesalers ( mobileNumber, createdAt, createdBy, modifiedAt, modifiedBy, name, location, city, pincode, GSTIN, type, status, email ) VALUES ( ?, ? )] {
  errno: 1,
  code: 'SQLITE_ERROR',
  query: 'INSERT INTO com_shesh_shop_manager_Wholesalers ( mobileNumber, createdAt, createdBy, modifiedAt, modifiedBy, name, location, city, pincode, GSTIN, type, status, email ) VALUES ( ?, ? )',
  values: [ '8800755400', undefined ],
  numericSeverity: 4
}

        ___________________________

 
[cds] - loaded model from 3 file(s):

  db/data-model.cds
  srv/cat-service.cds
  node_modules/@sap/cds/common.cds

[cds] - connect using bindings from: { registry: '~/.cds-services.json' }
[cds] - connect to db > sqlite { url: ':memory:' }
  > init from db/data/com.shesh.shop.manager-Books.csv 
  > init from db/data/com.shesh.shop.manager-Orders.csv 
  > init from db/data/com.shesh.shop.manager-OrdersItems.csv 
  > init from db/data/com.shesh.shop.manager-Products.csv 
  > init from db/data/com.shesh.shop.manager-Retailers.csv 
  > init from db/data/com.shesh.shop.manager-Wholesalers.csv 
/> successfully deployed to in-memory database. 

[cds] - serving CatalogService { path: '/catalog' }
[cds] - serving WholesalersService { path: '/wholesalers' }

[cds] - server listening on { url: 'http://localhost:4004' }
[cds] - launched at 4/1/2023, 10:36:23 AM, version: 6.7.0, in: 857.537ms
[cds] - [ terminate with ^C ]

^C
[cds] - my watch has ended.  
user: shop-manager $ ^C
user: shop-manager $ git status
On branch main
Last command done (1 command done):
   pick c3fb6fe SAP HANA DB integration and MTA for deployment on CF - terminal log
No commands remaining.
You are currently editing a commit while rebasing branch 'main' on 'c8bdc6a'.
  (use "git commit --amend" to amend the current commit)
  (use "git rebase --continue" once you are satisfied with your changes)

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   db/data-model.cds
        deleted:    db/data/my.bookshop-Books.csv
        modified:   srv/cat-service.cds

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        db/data/com.shesh.shop.manager-Books.csv
        db/data/com.shesh.shop.manager-Orders.csv
        db/data/com.shesh.shop.manager-OrdersItems.csv
        db/data/com.shesh.shop.manager-Products.csv
        db/data/com.shesh.shop.manager-Retailers.csv
        db/data/com.shesh.shop.manager-Wholesalers.csv
        db/data/sap.common-Countries.csv
        db/data/sap.common-Countries.texts.csv
        db/data/sap.common-Currencies.csv
        db/data/sap.common-Currencies.texts.csv
        db/data/sap.common-Languages.csv
        db/data/sap.common-Languages.texts.csv

no changes added to commit (use "git add" and/or "git commit -a")

## Approter - standalone

1. create cap project and add samples and add hana 
2. cds add xsuaa
3. add service modules and resources as below -
  - name: shop-manager-srv
    type: nodejs
    path: gen/srv
    parameters:
      buildpack: nodejs_buildpack
      host: capfes-srv-${space}
      memory: 128M
      disk-quota: 256M
    build-parameters:
      builder: npm-ci
    provides:
      - name: srv-api
        properties:
          srv-url: ${default-url}
    requires:
      - name: shop-manager-db
      - name: shop-manager-auth

4. add route to app
5. add launchpad
6. update xs-app.json
7. update package.json
8. install npm
9. mbt bulid
10. deploy

## CAP-Dropdown-ValueHelp =====================================================


1. Create Association to the entity where you wants to define dropdown or VH (wanted to create dropdown on order page)

entity Orders : managed{
  statusVh : Association to StatusVh;
  retailerVh : Association to Retailers;
  key orderNumber : String(20);
   shopName : String(100);
  wholesalerName : String(100);
  shopMobNum : String(10);
  wholesalermobNum : String(10);
  shopAddress : String(200);
  wholesalerAddress : String(200);
  totalAmount : Integer;
  items : Composition of many OrdersItems on items.orders=$self;   
}

2. create CodeList  (wanted to select available Retailers (VH) on order page during create order )

entity StatusVh : CodeList { //dropdown
  key status : String(2) @title : 'Status';
  name : String @title : 'Area';
  text : String;
}

entity Retailers : managed,CodeList{
  key mobileNumber : String(10);
  key shopID : String;
  name : String(100);
  location : String(100);
  city : String(50);
  pincode : String(6);
  GSTIN : String;
  type : String (50);
  status : String(30);
  email : String(100);
  wholesalers : Association to Wholesalers;
}

3. annotation—
//Status dropdown
annotate service.Orders with{
       statusVh @(Common : {
        ValueListWithFixedValues: true, // True means it will act as dropdown and False means it will act as value help dialog
        ValueList       : {
            Label          : '{i18n>criticality}',
            CollectionPath : 'StatusVh',
            Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'name',
                    LocalDataProperty   : statusVh_status
                }
                
                
            ]
        }
    })
      
};

//Value help dialog
annotate service.Orders with{
       retailerVh @(Common : {
        ValueListWithFixedValues: false, // True means it will act as dropdown and False means it will act as value help dialog
        ValueList       : {
            Label          : '{i18n>criticality}',
            CollectionPath : 'Retailers',
            Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'name', // when user select or choose the object then this will be shown as selected properties
                    LocalDataProperty : retailerVh_shopID, // as binding properties and it always key field of the parent entity
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'mobileNumber', // this will be selected properties (auto filled if any one selected if multiple InOut defined)
                    LocalDataProperty : retailerVh_mobileNumber,
                },
                { $Type: 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'location' // this will be available in the select list dialog or dropdown
                }
                
            ]
        }
    })
      
};