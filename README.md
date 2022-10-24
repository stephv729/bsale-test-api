# BSale_Test API

This API enables connection between bsale_test DB and a front-end app.
## Run Locally

Clone the project

```bash
  git clone git@github.com:stephv729/bsale-test-api.git
```

Go to the project directory

```bash
  cd bsale-test-api
```



## Project Setup

Install all gems:

```bash
  bundle install
```

Since this API has been created on top of an existing database, there is not need to run migrations or seed files.

Before starting the server, verify you have set all the required env variables. Please check the .env.example file.

Start the web server on localhost port 8000:

```bash
  rails s -p 8000
```
## Usage
Insomnia is a GUI REST client and there is collection as a JSON file in the root of this repo. By importing it you can explore this API and get a better understanding of the requests and responses.

Nevertheless, here is a summary of the request and responses the API can recieve and send respectively.


| HTTP verbs | Paths     | Used for                |
| :-------- | :------- | :------------------------- |
| `GET` | /categories | List all categories |
| `GET` | /categories/:category_id/products | List all products of a given category |
| `GET` | /products | List all products |
| `GET` | /products/:product_id | Show a single product |

