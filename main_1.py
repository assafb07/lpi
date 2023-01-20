""" LPI exam simulator """
import random
import sys
from PyQt6.QtWidgets import QApplication
from PyQt6.QtWidgets import QLabel
from PyQt6.QtWidgets import QLineEdit
from PyQt6.QtWidgets import QMainWindow
from PyQt6.QtWidgets import QCheckBox
from PyQt6.QtWidgets import QPushButton
from PyQt6.QtWidgets import QWidget
from PyQt6.QtWidgets import QVBoxLayout
from PyQt6.QtCore import Qt
global ra_counter
global wrong_answ
wrong_answ = []
ra_counter = 0
all_counter = 0
with open('qst.txt', "r", encoding="UTF-8") as file:
    text_lines = [line[:-1] for line in file]

def nums(text):
    """ function scans question numbers from text """
    num = []
    for line in text:
        if 2 >= len(line) > 0 and line != " ":
            num.append(line)
    return num

def bodies(text):
    """function scans body of question from text"""
    bodylist = []
    body = []
    for line in text:
        if len(line) < 1 or line[0:2] == "Ex":
            continue
        if line[0:4] == "FILL":
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

ra_pl = [[1, 5], [2], [4], [4], [2], [4], [5], [3, 5], [5], [5], [5], [1], [1], [2],
         [1, 2, 5], [2, 4], [], [2], [4], [4, 5], [4], [5], [4], [2],  # list of right answers
         [2], [2], [4], [3], [5], [1], [1, 2, 5], [2], [4, 5], [1],
         [2, 5], [1], [5], [1], [2], [0], [2, 4], [5], [5], [4], [5], [4], [1, 5], [4], [3],
         [3, 5], [3, 4], [4], [2, 3], [2, 5], [3], [0], [4], [3], [1, 5], [1],
         [1], [5], [0], [2], [2], [3], [1], [5], [2], [3], [1, 2], [3], [3], [4],
         [1, 5], [5], [2], [4], [2, 4, 5], [3]]

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
        ra_answ.append(bodyt[i - 1])
    random.shuffle(bodyt)
    body = []
    counter = 0
    for i in bodyt:
        if i in ra_answ:
            right_answerc += chars[counter]
            body.append(chars[counter] + i)
            counter += 1
        else:
            body.append(chars[counter] + i)
            counter += 1
    return num, header, body, right_answerc

def next():
    window2.close()
def closeit(self):
    sys.exit()    
class QuestionFill(QMainWindow):
    def __init__(self):
        super(QuestionFill, self).__init__()
        self.setMinimumSize(300, 300)
        self.setWindowTitle(num)
        self.label1 = QLabel(header)
        self.label1.setWordWrap(True)
        self.label = QLabel()
        self.button6 = QPushButton("Submit")
        self.button7 = QPushButton("Next question")
        self.button8 = QPushButton("Stop and Exit")
        self.input = QLineEdit()
        self.input.textChanged.connect(self.label.setText)
        layout = QVBoxLayout()
        layout.addWidget(self.label1)
        layout.addWidget(self.label)
        layout.addWidget(self.input)
        layout.addWidget(self.button6)
        layout.addWidget(self.button7)
        layout.addWidget(self.button8)
        self.button8.setCheckable(True)
        self.button6.clicked.connect(self.submitfill)
        self.button7.clicked.connect(next)
        self.button8.clicked.connect(closeit)
        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)
    def closeit(self):
        sys.exit()
    def submitfill(self):
        global ra_counter
        global wrong_answ
        if num == "Question:17":
            if self.label.text() == "for":
                self.label.setText("Right!")
                ra_counter += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(17)
        elif num == "Question:40":
            r_a = "\\"
            if self.label.text() == r_a:
                self.label.setText("Right!")
                ra_counter += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(40)
        elif num == "Question:56":
            if self.label.text() == "R":
                self.label.setText("Right!")
                ra_counter += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(56)
        elif num == "Question:63":
            if self.label.text() == "man":
                self.label.setText("Right!")
                ra_counter += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(63)
class EndWindow(QMainWindow):
    def __init__(self):
        global ra_counter
        global wrong_answ
        super(EndWindow, self).__init__()
        grade = ra_counter * 20
        max_grade = all_counter * 20

        self.setWindowTitle("End page of exam")
        self.label = QLabel("Congratilations!")
        self.label1 = QLabel("Total questions answered: " + str(all_counter))
        self.label2 = QLabel("Right answers: " + str(ra_counter))
        self.label3 = QLabel("Your grade: " + str(grade) +"/"+str(max_grade))
        self.label4 = QLabel("Wrong answers in these questions: " + str(wrong_answ))
        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addWidget(self.label1)
        layout.addWidget(self.label2)
        layout.addWidget(self.label3)
        layout.addWidget(self.label4)
        container = QWidget()            
        container.setLayout(layout)      
        self.setCentralWidget(container)
        
class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.user_answ = []
        self.setWindowTitle(num)
        self.label = QLabel(header)
        self.label.setWordWrap(True)
        self.label.setScaledContents(True)
        self.label2 = QLabel("")
        self.button1 = QCheckBox(body[0])
        self.button2 = QCheckBox(body[1])
        self.button3 = QCheckBox(body[2])
        self.button4 = QCheckBox(body[3])
        self.button5 = QCheckBox(body[4])
        self.button6 = QPushButton("Submit")
        self.button7 = QPushButton("Next question")
        self.button8 = QPushButton("Stop and Exit")
        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addWidget(self.label2)
        self.label.setScaledContents(True)
        self.label2.setScaledContents(True)
        layout.addWidget(self.button1)
        layout.addWidget(self.button2)
        layout.addWidget(self.button3)
        layout.addWidget(self.button4)
        layout.addWidget(self.button5)
        layout.addWidget(self.button6)
        layout.addWidget(self.button7)
        layout.addWidget(self.button8)
        self.button1.setCheckable(True)
        self.button2.setCheckable(True)
        self.button3.setCheckable(True)
        self.button4.setCheckable(True)
        self.button5.setCheckable(True)
        self.button6.setCheckable(True)
        self.button7.setCheckable(True)
        self.button8.setCheckable(True)
        self.button1.clicked.connect(self.user_answer1)
        self.button2.clicked.connect(self.user_answer2)
        self.button3.clicked.connect(self.user_answer3)
        self.button4.clicked.connect(self.user_answer4)
        self.button5.clicked.connect(self.user_answer5)
        self.button6.clicked.connect(self.submit)
        self.button7.clicked.connect(self.next)
        self.button8.clicked.connect(self.closeit)
        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

    def user_answer1(self, checked):
        if checked == True:
            self.user_answ.append(body[0][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[0][0])

    def user_answer2(self, checked):
        if checked == True:
            self.user_answ.append(body[1][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[1][0])

    def user_answer3(self, checked):
        if checked == True:
            self.user_answ.append(body[2][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[2][0])

    def user_answer4(self, checked):
        if checked == True:
            self.user_answ.append(body[3][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[3][0])

    def user_answer5(self, checked):
        if checked == True:
            self.user_answ.append(body[4][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[4][0])

    def next(self):
        window.close()
    def closeit(self):
        sys.exit()

    def submit(self):
        global ra_counter
        global wrong_answ
        self.user_answ.sort()
        answ = "".join(self.user_answ)
        if len(answ) == len(right_a):
            if answ == right_a:
                self.label2.setText("Right!")
                ra_counter += 1
            else:
                self.label2.setText("Wrong!")
                wrong_answ.append(i+1)
        elif len(answ) < len(right_a):
            print("Chose more answers")
        elif len(answ) > len(right_a):
            print("Choose less answers")
class OpenWindow(QMainWindow):
    def __init__(self):
        super(OpenWindow, self).__init__()
        def trainer():
            global var
            var = 80
            window3.close()
        def exam():
            global var
            var = 40
            window3.close()
        def closeit():
            sys.exit()
        self.setWindowTitle("LPI exam Simulator")
        self.label = QLabel("""Welcome to LPI 016-160 exam simulator/trainer""")
        self.label.setAlignment(Qt.AlignmentFlag.AlignHCenter | Qt.AlignmentFlag.AlignTop)
        self.label1 = QLabel("""Trainer mode includes all 80 questions in random sequence. If you want to open a trainer mode press "Trainer" button""")
        self.label1.setAlignment(Qt.AlignmentFlag.AlignHCenter | Qt.AlignmentFlag.AlignTop)
        self.label1.setWordWrap(True)
        self.label2 = QLabel("""Exam mode is 40 random questions with time counter. If you want to open a exam mode 
         press "Exam" button""")
        self.label2.setWordWrap(True)
        self.button1 = QPushButton("Trainer")
        self.button2 = QPushButton("Exam")
        self.button3 = QPushButton("Stop and Exit")
        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addWidget(self.label1)
        layout.addWidget(self.button1)
        layout.addWidget(self.label2)
        layout.addWidget(self.button2)
        layout.addWidget(self.button3)
        self.button1.setCheckable(True)
        self.button2.setCheckable(True)
        self.button3.setCheckable(True)
        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)
        self.button1.clicked.connect(trainer)
        self.button2.clicked.connect(exam)
        self.button3.clicked.connect(closeit)

app = QApplication(sys.argv)
window3 = OpenWindow()
window3.show()
app.exec()

rangenum = var
rangelist = list(range(1, rangenum + 1))
    # rangelist = list(range(56,57))
random.shuffle(rangelist)
filllist = [17, 40, 56, 63]
for i in rangelist:
    if i in filllist:
        num, header, body, right_a = question(i)
        window2 = QuestionFill()
        window2.show()
        all_counter += 1
        app.exec()
    else:
         num, header, body, right_a = question(i)
         window = MainWindow()
         window.show()
         all_counter += 1
         app.exec()

window4 = EndWindow()
window4.show()
app.exec()