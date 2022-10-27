helm package laravel -d repo
helm package apache -d repo
helm package wordpress -d repo
helm repo index repo --merge .\repo\index.yaml