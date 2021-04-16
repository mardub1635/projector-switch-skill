from mycroft import MycroftSkill, intent_file_handler
import subprocess
import os
import paramiko


class ProjectorSwitch(MycroftSkill):
    def __init__(self):
        MycroftSkill.__init__(self)
    def run_command(self,cmd):
        ssh=paramiko.SSHClient()
        ssh.load_system_host_keys()
        usernm=self.settings.get('username')
        hostnm=self.settings.get('hostname')
        passwd=self.settings.get('password')
        ssh.connect(hostname=hostnm,username=usernm,password=passwd)
        ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd)
        return None

    #@intent_file_handler('start.projector.intent')
    #def handle_switch_projector(self, message):
    #    self.speak_dialog('start.projector')
    @intent_file_handler('start.intent')
    def handle_start(self, message):
        print(subprocess.call('pwd'))
        self.speak_dialog('start')
        start_command= 'echo -ne "* 0 IR 001\r" | tee /dev/ttyUSB0'
        self.run_command(start_command)
        #os.system('echo "* 0 IR 001\r" | tee /dev/ttyUSB0')
        #os.system('ssh root@10.0.0.154 ')
        
        print('Projector should be on now')	

    @intent_file_handler('stop.intent')
    def handle_stop(self,message):
        self.speak_dialog('stop')
        #os.system("echo '* 0 IR 002\r' | tee /dev/ttyUSB0")
        stop_command='echo -ne "* 0 IR 002\r" | tee /dev/ttyUSB0'
        self.run_command(stop_command)
        print('Projector should be stopped now')
        
def create_skill():
    return ProjectorSwitch()

