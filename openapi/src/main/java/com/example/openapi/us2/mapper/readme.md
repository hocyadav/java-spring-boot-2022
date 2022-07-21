one entity 4 conversion
1. input entity
2. domain entity
3. dto entity

1 to 2 (only till API controller layer)
2 to 1 (inside service and other class)

2 to 3 (for outside send)
3 to 2 (outside to inside)

//goal we only send from class1 to class2 for business logic domain entity