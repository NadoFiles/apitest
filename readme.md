# FakeAPI Test Project with Robot Framework

This project is used to automation test using FakeAPI with Robot Framework.


## Dependencies

#### Install the items

1. Visual Code + extension - Robot Framework Language Server
2. Java Development Kit 8 or 11
3. Python 3 or superior


---

## Run Tests:

#### To download, get clone this project to your computer and execute the commands bellow:

1. Open project with Visual Code.
2. Run test with compiler or execute commands on Visual Code terminal.

```bash
robot -d ./logs api/tests/booksTest.robot
```

```bash
robot -d ./logs app/tests/homeTest.robot
```

```bash
robot -d ./logs app/tests/loginTest.robot
```

```bash
robot -d ./logs app/tests/radioTest.robot
```

```bash
robot -d ./logs app/tests/checkboxTest.robot
```

```bash
robot -d ./logs -i long  app/tests/buttonTest.robot
```

```bash
robot -d ./logs -i long  app/tests/spinnerTest.robot
```

```bash
robot -d ./logs -i long  app/tests/swiperTest.robot
```

```bash
robot -d ./logs -i long  app/tests/drag-and-dropTest.robot
```



3. Run test with tags ("i" to include and "e" to exclude)

```bash
robot -d ./logs -i long  app/tests/buttonTest.robot
```

```bash
robot -d ./logs -e long  app/tests/buttonTest.robot
```


4. Access on project '.logs/report.html' and open Chrome browser to see results.


---

## IMPORTANT

* Before run the tests you need to install on terminal:

```bash
pip3 install robotframework-requests==0.9.2
```
