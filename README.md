# pmail-api
a http api to smtp

## Prepare
export apikey=xxxxxx
luarocks write_rockspec --lua-version=5.1

luarocks lint  pmail-api-dev-1.rockspec
luarocks make
luarocks pack pmail-api-dev-1.rockspec

luarocks upload pmail-api-dev-1.rockspec  --api-key=${apikey}

docker build -t baidang201/mail-api .

docker compose up -d