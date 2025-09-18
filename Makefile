
.PHONY: install-dbt
install-dbt:
	python3 -m venv env
	source env/bin/activate
	env/bin/python

.PHONY: test
test:
	echo "Testing!"