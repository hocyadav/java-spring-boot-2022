1. Simple Entity layer (Lombok + JPA + Hibernate Validation + Interface)

2. Simple Repo layer

3. Simple Service layer ( Stream Pipeline + Flux/Mono Pipeline )

4. Simple Controller API layer
---

1 : Non-Reactive

2,3,4 : Reactive

---

```roomsql
-- delete table
DROP table test_db.person ;

-- create table
CREATE TABLE person (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

-- insert data 
```