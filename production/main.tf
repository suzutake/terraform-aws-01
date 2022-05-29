module "common" {
    // commonの場所を指定
    source = "../common"

    // commonに渡す変数(variables.tfに渡す)を設定
    env = var.env
    cidr = var.cidr
    region = "us-west-2"
    access_key = file("./access_key-dontupload.txt")
    secret_key = file("./secret_key-dontupload.txt")
}


