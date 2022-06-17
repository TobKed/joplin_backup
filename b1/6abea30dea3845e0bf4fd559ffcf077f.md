[python] json validation

# json validation

https://pypi.org/project/jsonschema/

```
>>> from jsonschema import validate

>>> # A sample schema, like what we'd get from json.load()
>>> schema = {
...     "type" : "object",
...     "properties" : {
...         "price" : {"type" : "number"},
...         "name" : {"type" : "string"},
...     },
... }

>>> # If no exception is raised by validate(), the instance is valid.
>>> validate(instance={"name" : "Eggs", "price" : 34.99}, schema=schema)

>>> validate(
...     instance={"name" : "Eggs", "price" : "Invalid"}, schema=schema,
... )                                   # doctest: +IGNORE_EXCEPTION_DETAIL
Traceback (most recent call last):
    ...
ValidationError: 'Invalid' is not of type 'number'
```


id: 6abea30dea3845e0bf4fd559ffcf077f
parent_id: 8150aa29934e4b5f948a36b6a29a3459
created_time: 2022-06-17T11:59:14.223Z
updated_time: 2022-06-17T13:54:44.124Z
is_conflict: 0
latitude: 0.00000000
longitude: 0.00000000
altitude: 0.0000
author: 
source_url: 
is_todo: 0
todo_due: 0
todo_completed: 0
source: joplin-desktop
source_application: net.cozic.joplin-desktop
application_data: 
order: 1655467184197
user_created_time: 2022-06-17T11:59:14.223Z
user_updated_time: 2022-06-17T13:54:44.124Z
encryption_cipher_text: 
encryption_applied: 0
markup_language: 1
is_shared: 0
share_id: 
conflict_original_id: 
master_key_id: 
type_: 1