terraform {
    backend "s3" {
        bucket = "devops019-terraformstatefile"
        key = "devops019_practice"
        region = "ca-central-1"
    }
}