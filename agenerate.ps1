#!/usr/bin/env pwsh

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/openapi.json `
    -g cpp-ue4 `
    -o ./ue4 `
    --global-property apis,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false `
    --additional-properties=unrealModuleName=Tribufu,cppNamespace=Tribufu `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --skip-validate-spec
