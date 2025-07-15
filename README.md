# Tools
Visual studio code to write scripts
Robot Framework with Selenium Webdriver
Robot code to enhance the productivity
Git Hub - Git Hub actions to manage version and to execute in a pipeline

# Structure
Page Objects Model

# creating a virtual env
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
If you will validate through Git Hub actions you need update envirorment variables

# Executing tests and output results in a specific folder
robot --outputdir results tests/
