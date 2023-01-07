#!/usr/bin/python3
 #pylint:disable=E1101
"""LPI exam simulator Application for Android"""
import random
from kivy.app import App
from kivy.uix.button import Button
from kivy.uix.popup import Popup
from kivy.uix.label import Label
from kivy.uix.boxlayout import BoxLayout
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
    global RIGHT_ANSWERC
    RIGHT_ANSWERC = ""
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
            RIGHT_ANSWERC += chars[counter]
            body.append(chars[counter]+i)
            counter += 1
        else:
            body.append(chars[counter]+i)
            counter += 1
    return num, header, body, RIGHT_ANSWERC

class BoxApp(App):
    """Main class"""
    answer_check = ""
    def callback(self, instance):
        """call back button function"""
        if len(self.answer) < len(RIGHT_ANSWERC):
            self.answer += (instance.text)[0]
            return self.answer
        print("maximum " +str(len(RIGHT_ANSWERC))+" answers")
        return self.answer
    def submit(self, instance):
        """submit function"""
        if self.answer == RIGHT_ANSWERC:
            answer_check ="Right!"
            print(answer_check)
            self.popup.dismiss()
            return 
        answer_check = "Wrong!"
        print(answer_check)
        self.popup.dismiss()
        return 

    def build(self):
        """build function"""
        #main_boxlayout = BoxLayout(orientation='vertical')
        open_button = Button(text = "Open exam", size_hint = (0.2, 0.2),
                             pos_hint = {"center_x":0.5, "center_y":0.5},
                             on_press = self.open_popup_window)
        return open_button
    def open_popup_window(self,obj):
        for i in range(14):
            main_boxlayout = BoxLayout(orientation='vertical')
            self.answer = ""
            num, header, body, right_answ = question(i)
            main_boxlayout.add_widget(Label(text = str(num))) #question number
            main_boxlayout.add_widget(Label(text = str(header))) #question header
            main_boxlayout.add_widget(Label(text = str(right_answ))) #right answer
            button1 = (Button(text = str(body[0])))
            button1.bind(on_press = self.callback)
            button2 = (Button(text = str(body[1])))
            button2.bind(on_press = self.callback)
            button3 = (Button(text = str(body[2])))
            button3.bind(on_press = self.callback)
            button4 = (Button(text = str(body[3])))
            button4.bind(on_press = self.callback)
            button5 = (Button(text = str(body[4])))
            button5.bind(on_press = self.callback)
            button6 = (Button(text = "Submit" ))
            button6.bind(on_press = self.submit)
            main_boxlayout.add_widget(button1)
            main_boxlayout.add_widget(button2)
            main_boxlayout.add_widget(button3)
            main_boxlayout.add_widget(button4)
            main_boxlayout.add_widget(button5)
            main_boxlayout.add_widget(button6)
            self.popup = Popup(title ='Test popup',
                               content = main_boxlayout, auto_dismiss = False)
            self.popup.open()
            


if __name__ == "__main__":
    BoxApp().run()
#def random_e(rangenum):
#    """random questions function"""
#    global VAR_NUMBER
#    rangelist = list(range(1,rangenum+1))
#    random.shuffle(rangelist)
#    filllist = [17, 40, 56, 63]
#    for i in rangelist:
#        if i in filllist:
#            continue
#        VAR_NUMBER = i
#        open_popup_window().run()
#random_e(4)
