# API Token Flow (Reqres + JSONPlaceholder)

## 1. Login (Reqres)
**POST https://reqres.in/api/login**

Body:
```
{
  "email": "eve.holt@reqres.in",
  "password": "cityslicka"
}
```

Expected:
- Status 200
- Response contains `"token"`

## 2. Use token in environment
- Create Postman environment variable `auth_token`
- Set value = token received from login

## 3. GET Users (Reqres)
**GET https://reqres.in/api/users**

Expected:
- Status 200
- List of users returned

## 4. CRUD Operations (JSONPlaceholder)

### GET Posts
**GET https://jsonplaceholder.typicode.com/posts**

Expected: List of posts.

### CREATE Post
**POST https://jsonplaceholder.typicode.com/posts**

```
{
  "title": "My test post",
  "body": "Hello world",
  "userId": 1
}
```

### UPDATE Post
**PUT https://jsonplaceholder.typicode.com/posts/1**

### DELETE Post
**DELETE https://jsonplaceholder.typicode.com/posts/1**
