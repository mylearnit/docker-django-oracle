# Config

`docker compose up --build -d`
- host: localhost
- database: XE
- username: testmigration
- password: TestUser123

# Oracle Long field bug

field name
`action_test_long_one_field_is_long`

> if length of field name is greater than 30 then 
> oracle will truncate to first 26 chars and add random 4 alpha numeric

django 3.2
`ACTION_TEST_LONG_ONE_FIELDC443`

django 4.2
`ACTION_TEST_LONG_ONE_FIELD3497`


fix:
```
action_test_long_one_field_is_long = models.CharField(max_length=64, db_column='action_test_long_one_fieldc443')
./manage.py migrate --fake myapp 0002
```