# README

Ruby backend/API used during Exygy front-end challenge.

* API doc

```
POST /login {email: "me@me.me, password: "password"} return user info (name, email, …)
POST /user/edit?api_key=123 {user: {first_name: "Hurry", last_name: "Up"}}
GET /documents?api_key=123 (all record)
GET /documents?search=blabla&api_key=123 (search by name)
GET /documents/1?api_key=123
```

* Example:

`curl http://exygy-challenge-backend.herokuapp.com/documents?api_key=123`

`curl -vs -X POST -F "email=me@me.me" -F "password=password" http://exygy-challenge-backend.herokuapp.com/users/login`
