# Tools
Visual studio code to write scripts
Robot Framework with Selenium Webdriver
Robot code to enhance the productivity
Git Hub - to manage versions

# Structure
Page Objects Model

# Creating a virtual env
python -m venv venv
* inicializing
.\venv\Scripts\activate

# Installing deps
pip install -r requirements.txt

# Installing chromedriver
Google Chrome used version: 138.0.7204.101
Chromedriver used version: r1465706(stable) - https://googlechromelabs.github.io/chrome-for-testing/
* extract .zip file and add .exe file in venv/Scripts  

# Email and Password
Update file resources.robot with your e-mail and password
If you want to validate through Git Hub actions you need write your deps on ci.yml file and update your envirorment variables

# Executing tests and output results in a specific folder
## Running all tests
robot --outputdir results tests/
## Running just one file
robot --outputdir results .\tests\challenge1.robot
robot --outputdir results .\tests\challenge2.robot

## We are handle two systems, so I created two setup_teardown files and two folders inside PO to manage our tests