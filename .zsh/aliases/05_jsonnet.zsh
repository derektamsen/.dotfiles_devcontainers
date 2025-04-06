yaml2jsonnet () {
  jsonnet -e "std.parseYaml(importstr '$1')" | jsonnetfmt -
}
