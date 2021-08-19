from subprocess import call
import os
import schedule
import time

def gmail():
    call(['C:/Users/Vineeth -2443/PycharmProjects/pythonProject5/venv/Scripts/python.exe', '-m', 'robot',
          'C:/Users/Vineeth -2443/PycharmProjects/pythonProject5/automation/screenshot.robot'])

schedule.every(30).seconds.do(gmail)
time.sleep(2)

while 1:
    schedule.run_pending()
    time.sleep(10)