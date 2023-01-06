#!/usr/bin/python3
import random
global ra_answc
global a
import kivy
from kivy.app import App
from kivy.uix.button import Button
from kivy.core.window import Window
from kivy.logger import Logger
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.widget import Widget
from kivy.clock import Clock
from kivy.properties import StringProperty, ObjectProperty, NumericProperty
from kivy.uix.textinput import TextInput
from io import StringIO
import sys
filename = 'qst.txt'
file = open(filename)
text_lines = [line[:-1] for line in file]

def nums(text): #function scans question numbers from text
    num = []
    for line in text:
        if len(line) <=2 and len(line) > 0 and line != " ":
            num.append(line)
    return num

def bodies(text): #function scans body of question from text
    bodylist = []
    body = []
    for line in text:
        if len(line) < 1 or line[0:2] == "Ex":
            continue
        elif line[0:4] =="FILL":
            body.append("Print your answer here: ")
            bodylist.append(body)
            body = []
        elif line[0:2] == "A.":
            if line[0:2] != "B.":
                body.append(line[1:])
        elif line[0:2] == "B.":
            if line[0:2] != "C.":
                body.append(line[1:])
        elif line[0:2] == "C.":
            if line[0:2] != "D.":
                body.append(line[1:])
        elif line[0:2] == "D.":
            if line[0:2] != "E.":
                body.append(line[1:])
        elif line[0:2] == "E.":
            if line[0:2] != "Ex":
                body.append(line[1:])
                bodylist.append(body)
                body = []
    return bodylist

def headers(text): #function scans question header from text
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

ra_pl = [[1,5],[2],[4],[4],[2],[4],[5],[2,3,5],[5],[5],[5],[1],[1],[2],[1,2,5],[2,4],[],[2],[4],[4,5],[4],[5],[4],[2], #list of right answers
         [2],[2],[4],[3],[5],[1],[1,2,5],[2],[4,5],[1],[2,5],[1],[5],[1],[2],[0],[2,4],[5],[5],[4],[5],[4],[5],[4],[3],
         [3,5],[3,4],[4],[2,3],[2,5],[3],[0],[4],[3],[1,5],[1],[1],[5],[0],[2],[2],[3],[1],[5],[2],[3],[1,2],[3],[3],[4],
         [1,5],[5],[2],[4],[2,4,5],[3]]

def question(x): #function creates question
    global ra_answc
    x = x - 1
    num = "Question:" + nums(text_lines)[x]
    header = headers(text_lines)[x]
    count = 0
    chars = ["A", "B", "C", "D", "E"]
    bodyt = bodies(text_lines)[x]
    ra_answ = []
    for i in ra_pl[x]:
        ra_answ.append(bodyt[i-1])
    random.shuffle(bodyt)
    body=[]
    counter = 0
    ra_answc = ""
    for i in bodyt:
        if i in ra_answ:
            ra_answc += chars[counter]
            body.append(chars[counter]+i)
            counter += 1
        else:
            body.append(chars[counter]+i)
            counter += 1 
    return num, header, body, ra_answc

def answer(x): #function checks user answer
    global ra_answc
    answ = input("Enter you answer: ")  
    if answ == ra_answc:
        return print("Right!")
        count += 1
    else:
        return print("Wrong!")
        count += 1
def main_f():
    global ra_answc
    for i in range(80): 
        num, header, body, ra_answc = question(i+1)
        print(num,"\n",header)
        print(*body, sep = "\n")
        answer(i+1)

class BoxApp(App):
            
    def callback(self, instance):
        self.answer += (instance.text)[0] 
        print(self.answer)
        return
    def submit(self, instance):
        if self.answer == ra_answc:
            print("Right!")
            return 1
        else:
            print("Wrong!")
            return 1
        

    def build(self):
        bl = BoxLayout(orientation='vertical')
        self.answer = ""
        def create(a):
            num, header, body, ra_answc = question(a)
            QstNum = bl.add_widget(Label(text = str(num)))
            Header = bl.add_widget(Label(text = str(header)))
            Right_ans = bl.add_widget(Label(text = str(ra_answc)))

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
            
            bl.add_widget(button1)
            bl.add_widget(button2)
            bl.add_widget(button3)
            bl.add_widget(button4)
            bl.add_widget(button5)
            bl.add_widget(button6)
                
        create(a)
        return bl
def random_e(x):
    global a
    r = list(range(1,x+1))
    random.shuffle(r)
    filllist = [17, 40, 56, 63]
    for i in r:
        if i in filllist:
            continue
        a = i
        BoxApp().run()
    return
random_e(4)
    




file.close()

 

      
        
        
