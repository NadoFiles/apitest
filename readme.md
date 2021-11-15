# FakeAPI Test Project with Robot Framework

This project is used to automation test using FakeAPI with Robot Framework.


## Dependencies

#### Install the items

1. Visual Code + extension - Robot Framework Language Server
2. Python 3 or above


---

## Run Tests:

#### To run tests on computer, download, get clone this project to your computer and execute the commands bellow:

1. Open project with Visual Code.
2. Run test with compiler or execute commands on Visual Code terminal.
    
    ```bash
    pip3 install robotframework-requests
    ```

    ```bash
    robot -d ./logs api/tests/booksTest.robot
    ```

3. Access on project '.logs/report.html' and open Chrome browser to see results.


#### To run tests Jenkins CI, download, get clone this project to your computer and execute the commands bellow:

1. Download Jenkins 2.303.3 LTS (Generic Java package .war) - https://www.jenkins.io/download/
2. Run commands to access folder.

    ```bash
    cd Download
    ```

3. Run commands to start 'server' Jenkins.

    ```bash
    java -jar jenkins.war
    or
    java -jar jenkins.war —httpPort=9191
    or
    127.0.0.1:9191
    ```

4. Open browser and navigate to access Jenkins - http://localhost:8080

5. Add plugin 'robot framework' on Jenkins.

    In 'Dashboard'.
    Click in 'Manager Jenkins'.
    Click in 'Manager Plugins'.
    Search 'robot framework'.
    Click in 'Install without program'.

6. Create job 'robot framework' on Jenkins.

    In 'Dashboard'.
    Click in 'New Job'.
    Choose name 'RobotTestJob'.
    Click in 'Freestyle project' and 'OK'.

7. Run job 'robot framework' on Jenkins.

    Open job created.
    Click 'Use workspace customize'.
    Set project folder ex. '/Users/YOUR_USER/api-robot-framework'.
    
    In 'Build'.
    Click 'execute shell'.
    Set the commands

    ```bash
    cd /Users/YOUR_USER/api-robot-framework
    robot -d ./logs api/tests/booksTest.robot
    ```
    
    In 'Post Build'.
    Click 'Publish Robot Framework test results'.
    Set the commands
    
    ```bash
    /Users/YOUR_USER/api-robot-framework/logs
    ```
    
    Click 'Apply' and 'Save'.

8. Click in 'Build Now'.

9. Click in 'Robot Results'.


---

## IMPORTANT

* Before run the tests you need to install on terminal:

```bash
pip3 install robotframework-requests==0.9.2
```
