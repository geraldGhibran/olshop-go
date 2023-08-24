# olshop-go
Basic E-commerce Web App built with GO
## Features
- Home Page
- Register, Login, Profile User
- Products Page
- Single Product Page
- Shopping Cart
- Checkout
  - Shipping Cost Calculation

## Technology Stack
- Golang :
  - Gorilla Mux (https://github.com/gorilla/mux)
  - Gorm (http://gorm.io)
  - Render (https://github.com/unrolled/render)
- PostgreSQL
- Bootstrap

# Olshop Sample

This is presents a sample retail store application including a product catalog, shopping cart and checkout.



**This project is intended for educational purposes only and not for production use.**

![Screenshot](/assets/img/olshop-sample.PNG)

## Application Architecture

The application has been deliberately over-engineered to generate multiple de-coupled components. These components generally have different infrastructure dependencies, and may support multiple "backends" (example: Carts service supports Mysql or Postgressql).

![Architecture](/assets/img/schema-db.PNG)

| Component | Language | Container Image     | Description                                                                 |

## Quickstart



This deployment method will run the application in an existing localhost.

Pre-requisites:
- go installed locally
- postgresql server installed
- pgadmin installed locally

Setup repository go for localhost :
```
go mod tidy
```

DB setup for postgres:

- Open pgadmin
- Create database 'olshopdb':
- restore db from ./dump/olshopdb.sql

User exist after restore from dump:
- username: VjGfLpr@IxiHlZi.com
- password: password

Run command

```
go run main.go db:seed //to insert data
```

Create .env file make sure to read the note

```
APP_NAME=go-olshop
APP_ENV=development
APP_PORT=9000

DB_HOST=localhost
DB_USER=postgres
DB_PASSWORD=postgres
DB_NAME=olshopdb
DB_PORT=5432
API_ONGKIR_BASE_URL=https://api.rajaongkir.com/starter/
API_ONGKIR_ORIGIN=106
API_ONGKIR_KEY=***** //get from https://api.rajaongkir.com
```

Get the URL for the frontend apps

```
go run main.go //running add localhost 9000
```


## References
- https://indokoding.net
- https://levelup.gitconnected.com/crud-restful-api-with-go-gorm-jwt-postgres-mysql-and-testing-460a85ab7121
- https://dasarpemrogramangolang.novalagung.com/

