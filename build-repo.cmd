helm package laravel -d repo
helm repo index repo --merge .\repo\index.yaml