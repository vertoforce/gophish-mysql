# MySQL Image for [Gophish](https://github.com/gophish/gophish)

## Image

The image is available at `vertoforce/gophish-mysql`

## Why

Gophish requires for mysql >= 5.7 that the following configuration be added to the mysql server

```sh
[mysqld]
sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION
```

This is because gophish depends on [gorm](https://github.com/jinzhu/gorm).

After digging very deep into [this issue](https://github.com/gophish/gophish/issues/1638), I decided my workout would just to be to use a different mysql image with the configuration `NO_ZERO_DATE` removed for gophish.

## Creating the GoPhish Database

**Make sure you create the gophish database with the `character set` set to `utf8mb4` to accept html properly in templates.**

See [this gophish issue](https://github.com/gophish/gophish/issues/1249#issuecomment-433550237).

See [this](https://mathiasbynens.be/notes/mysql-utf8mb4#utf8-to-utf8mb4) for instructions on how to create a database with the `utf8mb4` character set, [this](https://dba.stackexchange.com/questions/76788/create-a-mysql-database-with-charset-utf-8) to migrate an existing DB.
