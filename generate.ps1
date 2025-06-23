#!/usr/bin/env pwsh

# Java

$env:JAVA_POST_PROCESS_FILE = "pwsh.exe -File replace-header.ps1"

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g java `
    -o ./jvm `
    --enable-post-process-file `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=groupId=com.tribufu,library=resttemplate,invokerPackage=com.tribufu,apiPackage=com.tribufu.api,modelPackage=com.tribufu.models,javaIndent=4`
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# C#

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g csharp `
    -o ../../sdk-dotnet `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=packageName=Tribufu,library=restsharp,apiName=TribufuApi,zeroBasedEnums=true,nullableReferenceTypes=true `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Rust

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g rust `
    -o ./rust `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=packageName=tribufu,library=reqwest-trait,supportAsync=true,preferUnsignedInt=true `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Go

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g go `
    -o ./go `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=packageName=tribufu,apiName=TribufuApi,withSeparateModelsAndApi=true `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

Move-Item ./go/*.go,./go/*.mod,./go/*.sum -Destination ./go/src -Force

# TypeScript

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g typescript-fetch `
    -o ./js `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=modelPackage=models,apiPackage=api,npmName=tribufu,prettier=true,sourceFolder=src,useSingleRequestParameter=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Python

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g python `
    -o ./python `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=packageName=tribufu,projectName=tribufu `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# C

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g c `
    -o ./c `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=packageName=tribufu,apiPackage=tribufu::api,modelPackage=tribufu::models `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# C++

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g cpp-restsdk `
    -o ./cpp `
    --additional-properties=packageName=tribufu,apiPackage=tribufu::api,modelPackage=tribufu::models `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Arduino

#java -jar openapi-generator-cli.jar generate `
#    -i http://localhost:5000/openapi.json `
#    -g cpp-tiny `
#    -o ./arduino `
#    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
#    --additional-properties=packageName=tribufu,apiPackage=tribufu::api,modelPackage=tribufu::models `
#    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
#    --skip-validate-spec

# UE4

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g cpp-ue4 `
    -o ./ue4 `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=unrealModuleName=Tribufu,cppNamespace=Tribufu,apiPackage=tribufu::api,modelPackage=tribufu::models `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Elixir

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g elixir `
    -o ./elixir `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=moduleName=Tribufu `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# PHP

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g php `
    -o ./php `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=invokerPackage=Tribufu,packageName=tribufu/sdk,apiNamespace=Tribufu`Api,modelNamespace=Tribufu`Model `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Swift

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g swift5 `
    -o ./swift `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=projectName=Tribufu,swiftUseApiNamespace=true `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Protobuf

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g protobuf-schema `
    -o ./protobuf `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# GraphQL

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g graphql-schema `
    -o ./graphql `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Dart

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g dart `
    -o ./dart `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=pubName=tribufu,pubLibrary=tribufu.api `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Haskell

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g haskell-http-client `
    -o ./haskell `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=baseModule=tribufu,cabalPackage=tribufu `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Lua

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g lua `
    -o ./lua `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=packageName=tribufu `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Objective-C

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g objc `
    -o ./objc `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=podName=Tribufu,classPrefix= `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Perl

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g perl `
    -o ./perl `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=moduleName=Tribufu `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# OCaml

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g ocaml `
    -o ./ocaml `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec

# Ruby

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g ruby `
    -o ./ruby `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=moduleName=Tribufu,gemName=tribufu `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec
