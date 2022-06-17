[python] Mypy - explicit Optional

---
description: optional type when the default value is None
---

# Mypy - explicit Optional

**PEP-484** (in Union Types) ([link](https://www.python.org/dev/peps/pep-0484/#union-types))

\
A past version of this PEP allowed type checkers to assume an optional type when the default value is None, as in this code:

```
def handle_employee(e: Employee = None): ...
```

This would have been treated as equivalent to:

```
def handle_employee(e: Optional[Employee] = None) -> None: ...
```

__\
__This is no longer the recommended behavior. Type checkers should move towards requiring the optional type to be made explicit.

https://github.com/python/peps/pull/689

https://github.com/python/typing/issues/275

https://gist.github.com/TobKed/8a623a7f7a69c264cfae53f08a9061f1



id: c1d8dbcdb1b8454da30ac920d43db4bf
parent_id: 8150aa29934e4b5f948a36b6a29a3459
created_time: 2022-06-17T11:59:14.299Z
updated_time: 2022-06-17T12:06:39.612Z
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
order: 1655467185205
user_created_time: 2022-06-17T11:59:14.299Z
user_updated_time: 2022-06-17T12:06:39.612Z
encryption_cipher_text: 
encryption_applied: 0
markup_language: 1
is_shared: 0
share_id: 
conflict_original_id: 
master_key_id: 
type_: 1