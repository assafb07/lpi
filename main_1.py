#!/usr/bin/python3
#pylint:disable=E1101,E0611
"""LPI exam simulator Application for Android"""
import random
from kivy.app import App
from kivy.uix.button import Button
from kivy.uix.popup import Popup
from kivy.uix.label import Label
from kivy.uix.boxlayout import BoxLayout
from kivy.properties import StringProperty
with open('qst.txt', "r", encoding="utf-8") as file:
    text_lines = [line[:-1] for line in file]

def nums(text):
    """ function scans question numbers from text """
    num = []
    for line in text:
        if len(line) <=2 and len(line) > 0 and line != " ":
            num.append(line)
    return num

def bodies(text):
    """function scans body of question from text"""
    bodylist = []
    body = []
    for line in text:
        if len(line) < 1 or line[0:2] == "Ex":
            continue
        if line[0:4] =="FILL":
            body.append("Print your answer here: ")
            bodylist.append(body)
            body = []
        elif line[0:2] == "A." and line[0:2] != "B.":
            body.append(line[1:])
        elif line[0:2] == "B." and line[0:2] != "C.":
            body.append(line[1:])
        elif line[0:2] == "C." and line[0:2] != "D.":
            body.append(line[1:])
        elif line[0:2] == "D." and line[0:2] != "E.":
            body.append(line[1:])
        elif line[0:2] == "E." and line[0:2] != "Ex":
            body.append(line[1:])
            bodylist.append(body)
            body = []
    return bodylist

def headers(text):
    """function scans question header from text"""
    headerlist = []
    header = """"""
    listex = ["Ex", "A.", "B.", "C.", "D.", "E."]
    for line in text:
        if len(line) < 3 or line[0:2] in listex:
            if len(header) >= 1:
                headerlist.append(header)
                header = """"""
        else:
            header = header + line
    return headerlist

ra_pl = [[1,5],[2],[4],[4],[2],[4],[5],[2,3,5],[5],[5],[5],[1],[1],[2],
         [1,2,5],[2,4],[],[2],[4],[4,5],[4],[5],[4],[2], #list of right answers
         [2],[2],[4],[3],[5],[1],[1,2,5],[2],[4,5],[1],
         [2,5],[1],[5],[1],[2],[0],[2,4],[5],[5],[4],[5],[4],[5],[4],[3],
         [3,5],[3,4],[4],[2,3],[2,5],[3],[0],[4],[3],[1,5],[1],
         [1],[5],[0],[2],[2],[3],[1],[5],[2],[3],[1,2],[3],[3],[4],
         [1,5],[5],[2],[4],[2,4,5],[3]]

def question(loop_number):
    """function creates question"""
    right_answerc = ""
    loop_number = loop_number - 1
    num = "Question:" + nums(text_lines)[loop_number]
    header = headers(text_lines)[loop_number]
    chars = ["A", "B", "C", "D", "E"]
    bodyt = bodies(text_lines)[loop_number]
    ra_answ = []
    for i in ra_pl[loop_number]:
        ra_answ.append(bodyt[i-1])
    random.shuffle(bodyt)
    body=[]
    counter = 0
    for i in bodyt:
        if i in ra_answ:
            right_answerc += chars[counter]
            body.append(chars[counter]+i)
            counter += 1
        else:
            body.append(chars[counter]+i)
            counter += 1
    return num, header, body, right_answerc

class BoxApp(App):
    """Main class"""
    right_answer = StringProperty("string")
    def build(self):
        """build function"""
        open_button = Button(text = "Open exam", size_hint = (0.2, 0.2),
                             pos_hint = {"center_x":0.5, "center_y":0.5},
                             on_press = self.open_popup_window)
        return open_button
    def open_popup_window(self, instance):
        """open popup function"""
        def random_range(range_num):
            """open random range function"""
            rangelist = list(range(range_num))
            random.shuffle(rangelist)
            filllist = [17, 40, 56, 63]
            for i in rangelist:
                if i in filllist:
                    continue
                main_boxlayout = BoxLayout(orientation='vertical')
                num, header, body, self.right_answer = question(i)
                self.popup = Popup(title ='Test popup',
                                   content = main_boxlayout, auto_dismiss = False)
                main_boxlayout.add_widget(Label(text = str(num))) #question number
                main_boxlayout.add_widget(Label(text = str(header))) #question header
                main_boxlayout.add_widget(Label(text = str(self.right_answer))) #right answer
                main_label = (Label(text = "Your input"))
                main_boxlayout.add_widget(main_label)
                button1 = (Button(text = str(body[0])))
                button1.bind(on_press = self.press)
                button2 = (Button(text = str(body[1])))
                button2.bind(on_press = self.press)
                button3 = (Button(text = str(body[2])))
                button3.bind(on_press = self.press)
                button4 = (Button(text = str(body[3])))
                button4.bind(on_press = self.press)
                button5 = (Button(text = str(body[4])))
                button5.bind(on_press = self.press)
                button6 = (Button(text = "Next question" ))
                button6.bind(on_release = self.popup.dismiss)
                main_boxlayout.add_widget(button1)
                main_boxlayout.add_widget(button2)
                main_boxlayout.add_widget(button3)
                main_boxlayout.add_widget(button4)
                main_boxlayout.add_widget(button5)
                main_boxlayout.add_widget(button6)
                self.popup.open()
        random_range(80)
    def press(self, obj):
        """button press function"""
        print("self.a="+self.right_answer)
        user_answer = str(obj.text)[0]
        print(user_answer)
        user_answer = ""
        obj.text = self.right_answer
if __name__ == "__main__":
    BoxApp().run()
