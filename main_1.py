# pylint: disable=E0611
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
from PyQt6.QtWidgets import QGridLayout
from PyQt6.QtCore import Qt
from PyQt6.QtCore import QTimer
from PyQt6.QtCore import QTime
global RA_COUNTER
global wrong_answ
global time_elapsed
time_elapsed = 0
wrong_answ = []
RA_COUNTER = 0
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

def closeit():
    """close app function"""
    sys.exit()
class QuestionFill(QMainWindow):
    """fill questions class"""
    def __init__(self):
        """constructor"""
        super(QuestionFill, self).__init__()
        self.setFixedSize(620, 350)
        self.setWindowTitle((num+"          "+str(all_counter)+"/"+str(var)))
        self.label1 = QLabel(header)
        self.label1.setWordWrap(True)
        self.timer = QTimer(self)
        self.timer.setInterval(1000)
        self.time_label = QLabel(self)
        self.time_label.setText("Time elapsed: __:__:__")
        self.timer.timeout.connect(self.update_time)
        self.label = QLabel()
        self.button6 = QPushButton("Submit")
        self.button6.resize(100, 40)
        self.button7 = QPushButton("Next question")
        self.button7.resize(100, 40)
        self.button8 = QPushButton("Stop and Exit")
        self.button8.resize(100, 40)
        self.input = QLineEdit()
        self.input.textChanged.connect(self.label.setText)
        layout = QVBoxLayout()
        layout.addWidget(self.label1)
        layout.addWidget(self.label)
        layout.addWidget(self.input)
        layout.addWidget(self.button6)
        layout.addWidget(self.button7)
        layout.addWidget(self.button8)
        layout.addWidget(self.time_label)
        self.button8.setCheckable(True)
        self.button6.clicked.connect(self.submit_fill)
        self.button7.clicked.connect(self.next)
        self.button8.clicked.connect(self.closeit)
        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)
        self.timer.start()

    def update_time(self):
        global time_elapsed
        time_elapsed += 1
        time = QTime(0, 0, 0)
        time = time.addSecs(time_elapsed)
        self.time_label.setText("Time elapsed: {}".format(time.toString("hh:mm:ss")))

    def closeit(self):
        """close app function"""
        sys.exit()

    def next(self):
        """next question function"""
        if self.label.text() == "Wrong!" or self.label.text() == "Right!":
            self.timer.stop()
            window2.close()
        else:
            self.label.setText("""Press "Submit" button first""")

    def submit_fill(self):
        """submit function"""
        global RA_COUNTER
        global wrong_answ
        if num == "Question:17":
            if self.label.text() == "for":
                self.label.setText("Right!")
                RA_COUNTER += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(17)
        elif num == "Question:40":
            r_a = "\\"
            if self.label.text() == r_a:
                self.label.setText("Right!")
                RA_COUNTER += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(40)
        elif num == "Question:56":
            if self.label.text() == "R":
                self.label.setText("Right!")
                RA_COUNTER += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(56)
        elif num == "Question:63":
            if self.label.text() == "man":
                self.label.setText("Right!")
                RA_COUNTER += 1
            else:
                self.label.setText("Wrong!")
                wrong_answ.append(63)

class EndWindow(QMainWindow):
    """end window class"""
    def __init__(self):
        """constructor"""
        super(EndWindow, self).__init__()
        self.setFixedSize(620, 350)
        global RA_COUNTER
        global wrong_answ
        grade = RA_COUNTER * 20
        max_grade = all_counter * 20
        self.setWindowTitle("End page of exam")
        self.timer = QTimer(self)
        self.timer.setInterval(1000)
        self.time_label = QLabel(self)
        self.time_label.setText("Time elapsed: __:__:__")
        self.timer.timeout.connect(self.update_time)
        self.label = QLabel("Congratilations!")
        self.label1 = QLabel("Total questions answered: " + str(all_counter))
        self.label2 = QLabel("Right answers: " + str(RA_COUNTER))
        self.label3 = QLabel("Your grade: " + str(grade) + "/" + str(max_grade))
        self.label4 = QLabel("Wrong answers in these questions: " + str(wrong_answ))
        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addWidget(self.label1)
        layout.addWidget(self.label2)
        layout.addWidget(self.label3)
        layout.addWidget(self.label4)
        layout.addWidget(self.time_label)
        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)
        self.timer.start()
        #self.timer.stop()

    def update_time(self):
        global time_elapsed
        time = QTime(0, 0, 0)
        time = time.addSecs(time_elapsed)
        self.time_label.setText("Time elapsed: {}".format(time.toString("hh:mm:ss")))

class MainWindow(QMainWindow):
    """main window class"""
    def __init__(self):
        """constructor"""
        super(MainWindow, self).__init__()
        self.timer = QTimer(self)
        self.timer.setInterval(1000)
        self.setFixedSize(620, 350)
        self.user_answ = []
        self.setWindowTitle(num+"          "+str(all_counter)+"/"+str(var))
        self.label = QLabel(header)
        self.time_label = QLabel(self)
        self.time_label.setText("Time elapsed: __:__:__")
        self.timer.timeout.connect(self.update_time)
        self.label.resize(540, 50)
        self.label.setWordWrap(True)
        self.label2 = QLabel("")
        self.body1 = QLabel(body[0][2:])
        self.body1.setWordWrap(True)
        self.body2 = QLabel(body[1][2:])
        self.body2.setWordWrap(True)
        self.body3 = QLabel(body[2][2:])
        self.body3.setWordWrap(True)
        self.body4 = QLabel(body[3][2:])
        self.body4.setWordWrap(True)
        self.body5 = QLabel(body[4][2:])
        self.body5.setWordWrap(True)
        self.button1 = QCheckBox(body[0][0:2])
        self.button1.resize(20, 20)
        self.button2 = QCheckBox(body[1][0:2])
        self.button2.resize(20, 20)
        self.button3 = QCheckBox(body[2][0:2])
        self.button3.resize(20, 20)
        self.button4 = QCheckBox(body[3][0:2])
        self.button4.resize(20, 20)
        self.button5 = QCheckBox(body[4][0:2])
        self.button5.resize(20, 20)
        self.button6 = QPushButton("Submit")
        self.button6.resize(100, 40)
        self.button7 = QPushButton("Next question")
        self.button7.resize(100, 40)
        self.button8 = QPushButton("Stop and Exit")
        self.button8.resize(100, 40)
        layout = QGridLayout()
        layout.addWidget(self.label, 0, 0, 3, 5, alignment=Qt.AlignmentFlag.AlignVCenter)
        layout.addWidget(self.label2, 3, 0, 1, 3, alignment=Qt.AlignmentFlag.AlignVCenter)
        layout.addWidget(self.button1, 4, 0, alignment=Qt.AlignmentFlag.AlignRight)
        layout.addWidget(self.button2, 5, 0, alignment=Qt.AlignmentFlag.AlignRight)
        layout.addWidget(self.button3, 6, 0, alignment=Qt.AlignmentFlag.AlignRight)
        layout.addWidget(self.button4, 7, 0, alignment=Qt.AlignmentFlag.AlignRight)
        layout.addWidget(self.button5, 8, 0, alignment=Qt.AlignmentFlag.AlignRight)
        layout.addWidget(self.body1, 4, 1, 1, 5)
        layout.addWidget(self.body2, 5, 1, 1, 5)
        layout.addWidget(self.body3, 6, 1, 1, 5)
        layout.addWidget(self.body4, 7, 1, 1, 5)
        layout.addWidget(self.body5, 8, 1, 1, 5)
        layout.addWidget(self.button6, 9, 1)
        layout.addWidget(self.button7, 9, 2)
        layout.addWidget(self.button8, 9, 3)
        layout.addWidget(self.time_label,10,1)
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
        self.timer.start()

    def update_time(self):
        global time_elapsed
        time_elapsed += 1
        time = QTime(0, 0, 0)
        time = time.addSecs(time_elapsed)
        self.time_label.setText("Time elapsed: {}".format(time.toString("hh:mm:ss")))

    def user_answer1(self, checked):
        """user answer function"""
        if checked == True:
            self.user_answ.append(body[0][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[0][0])

    def user_answer2(self, checked):
        """user answer function"""
        if checked == True:
            self.user_answ.append(body[1][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[1][0])

    def user_answer3(self, checked):
        """user answer function"""
        if checked == True:
            self.user_answ.append(body[2][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[2][0])

    def user_answer4(self, checked):
        """user answer function"""
        if checked == True:
            self.user_answ.append(body[3][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[3][0])

    def user_answer5(self, checked):
        """user answer function"""
        if checked == True:
            self.user_answ.append(body[4][0])
            return self.user_answ
        if checked == False:
            self.user_answ.remove(body[4][0])
    def next(self):
        """next question function"""
        if self.label2.text() == "Wrong!" or self.label2.text() == "Right!":
            self.timer.stop()
            window.close()
        else:
            self.label2.setText("""Press "Submit" button first""")

    def closeit(self):
        """close app function"""
        sys.exit()
    def submit(self):
        """submit function"""
        global RA_COUNTER
        global wrong_answ
        self.user_answ.sort()
        answ = "".join(self.user_answ)
        if len(answ) == len(right_a):
            if answ == right_a:
                self.label2.setText("Right!")
                RA_COUNTER += 1
            else:
                self.label2.setText("Wrong!")
                wrong_answ.append(i + 1)
        elif len(answ) < len(right_a):
            self.label2.setText("Chose more answers")
        elif len(answ) > len(right_a):
            self.label2.setText("Choose less answers")


class OpenWindow(QMainWindow):
    """first window class"""
    def __init__(self):
        super(OpenWindow, self).__init__()
        self.setFixedSize(600, 350)

        def trainer():
            """open trainer mode function"""
            global var
            var = 80
            window3.close()

        def exam():
            """open exam mode function"""
            global var
            var = 40
            window3.close()

        def closeit():
            """close app function"""
            sys.exit()

        self.setWindowTitle("LPI exam Simulator")
        self.label = QLabel("""Welcome to LPI 016-160 exam simulator/trainer""")
        self.label.setAlignment(Qt.AlignmentFlag.AlignHCenter | Qt.AlignmentFlag.AlignTop)
        self.label1 = QLabel(
            """Trainer mode includes all 80 questions in random sequence. 
            If you want to open a trainer mode press "Trainer" button""")
        self.label1.setAlignment(Qt.AlignmentFlag.AlignHCenter | Qt.AlignmentFlag.AlignTop)
        self.label1.setWordWrap(True)
        self.label2 = QLabel("""Exam mode is 40 random questions with time counter. If you want to open a exam mode 
         press "Exam" button""")
        self.label2.setWordWrap(True)
        self.button1 = QPushButton("Trainer")
        self.button1.resize(100, 40)
        self.button2 = QPushButton("Exam")
        self.button2.resize(100, 40)
        self.button3 = QPushButton("Stop and Exit")
        self.button3.resize(100, 40)
        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addWidget(self.label1)
        layout.addWidget(self.label2)
        layout.addWidget(self.button1)
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
#rangelist = list(range(17, 19))
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
