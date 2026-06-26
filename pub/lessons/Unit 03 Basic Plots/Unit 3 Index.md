---
publish: false
---
## Children
```dataview
LIST
WHERE contains(file.path, this.file.folder) AND file.path != this.file.path
SORT file.name ASC
```

