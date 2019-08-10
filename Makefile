all: test

test:
	bash test.sh

lint:
	bash lint.sh

format:
	isort -y $(find feedj -name "*.py"|xargs echo) $(find tests -name "*.py"|xargs echo)
	black -l 79 feedj
	black -l 79 tests
