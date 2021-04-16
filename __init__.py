from mycroft import MycroftSkill, intent_file_handler
import subprocess
import os
import paramiko

class ProjectorSwitch(MycroftSkill):
    def __init__(self):
        MycroftSkill.__init__(self)

    #@intent_file_handler('start.projector.intent')
    #def handle_switch_projector(self, message):
    #    self.speak_dialog('start.projector')
    @intent_file_handler('start.intent')
    def handle_start(self, message):
        print(subprocess.call('pwd'))
        self.speak_dialog('start')
        #if not working try echo -ne "* 0 IR 001\r" | tee /dev/ttyUSB0
        os.system('echo "* 0 IR 001\r" | tee /dev/ttyUSB0')
        os.system('ssh root@10.0.0.154 ')
        
        print('Projector should be on now')	

    @intent_file_handler('stop.intent')
    def handle_stop(self,message):
        self.speak_dialog('stop')
        os.system("echo '* 0 IR 002\r' | tee /dev/ttyUSB0")
        print('Projector should be stopped now')


def create_skill():
    return ProjectorSwitch()

