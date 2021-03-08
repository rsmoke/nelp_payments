# README
- Install Docker
## This template has Rails / ActiveAdmin / Devise
Static pages for
- About
- Privacy
- Terms of use
## Useful bits
- ```git clone <repo>```
- ```cd <app directory>```
- ```docker-compose run --rm web bundle```
- ```docker-compose run --rm web rails db:create```
- ```docker-compose run --rm web rails db:migrate```
- ```docker-compose run --rm web rails db:seed```
- ```docker-compose run --rm web yarn```
- ```docker-compose up```

#### If you add anything to the app you will need to run ??????
```
docker-compose up --build
````

### If your app is ugly run
```docker-compose run --rm web yarn upgrade```

### Inirtial ADMIN account (CHANGE THIS)
```USER_ID: admin@example.com PWD: password```

