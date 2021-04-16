from mycroft import MycroftSkill, intent_file_handler


class ProjectorSwitch(MycroftSkill):
    def __init__(self):
        MycroftSkill.__init__(self)

    @intent_file_handler('switch.projector.intent')
    def handle_switch_projector(self, message):
        self.speak_dialog('switch.projector')


def create_skill():
    return ProjectorSwitch()

