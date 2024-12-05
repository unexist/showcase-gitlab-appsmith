# Helper
list:
	@curl -X 'GET' 'http://localhost:8080/todo' -H 'accept: */*' | jq .

open-appsmith:
	open http://localhost:11080

# Test
hurl-todo:
	@hurl --color --test hurl/todo.hurl

hurl-id:
	@hurl --color --test hurl/id.hurl

slumber:
	@slumber ./slumber.yml

# Modules
-include infrastructure/Makefile
