bucket = "expense94-prod-tfstate"
key    = "expense94-prodkey" #you shold unique key name in bucket, same key should not be used in repos or another any files
region = "us-east-1"
dynamodb_table = "expense94-prod-locking"
use_lockfile = true
