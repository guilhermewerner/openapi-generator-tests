
java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g csharp `
    -o ./csharp `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --additional-properties=packageName=Tribufu.Sdk

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g rust `
    -o ./rust `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --additional-properties=packageName=tribufu-sdk

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g java `
    -o ./java `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --additional-properties=invokerPackage=com.tribufu.sdk,apiPackage=com.tribufu.sdk.api,modelPackage=com.tribufu.sdk.models

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g typescript-fetch `
    -o ./typescript `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

# ---- TESTS ----

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g go `
    -o ./go `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g elixir `
    -o ./elixir `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g swift5 `
    -o ./swift `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g c `
    -o ./c `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g cpp-restsdk `
    -o ./cpp `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g lua `
    -o ./lua `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g python `
    -o ./python `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g android `
    -o ./android `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu `
    --additional-properties=invokerPackage=com.tribufu.sdk,apiPackage=com.tribufu.sdk.api,modelPackage=com.tribufu.sdk.models

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g dart `
    -o ./dart `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g haskell-http-client `
    -o ./haskell `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g ruby `
    -o ./ruby `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g ocaml `
    -o ./ocaml `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu

java -jar openapi-generator-cli.jar generate `
    -i https://api.tribufu.com/v1/openapi.json `
    -g php `
    -o ./php `
    --global-property apiDocs=false,modelDocs=false `
    --openapi-normalizer SET_TAGS_FOR_ALL_OPERATIONS=Tribufu
