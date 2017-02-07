maintainer        "Aleix Canal"
maintainer_email  "nigeon@gmail.com"
license           "Apache 2.0"
description       "Setup DB"
version           "1.0.0"
name              "database"

recipe "database", "Setup DB"

depends 'mysql', '~> 8.0'