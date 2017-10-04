# yang-eclipse

An Eclipse Plug-in for YANG using a [YANG language server](https://github.com/theia-ide/yang-lsp) and a [YANG diagram](https://github.com/theia-ide/yang-sprotty) based on [sprotty]().

## Getting Started

Point your Eclipse update manager to our [Jenkins update-site](http://services.typefox.io/open-source/jenkins/job/yang-eclipse/job/master/lastSuccessfulBuild/artifact/yang-eclipse/io.typefox.yang.eclipse.repository/target/repository/)

## Build It Yourself

```bash
git clone --recursive https://github.com/theia-ide/yang-eclipse.git
cd yang-eclipse/diagram
yarn install
yarn run setup
yarn run build
cd ../yang-eclipse
mvn clean install
```
