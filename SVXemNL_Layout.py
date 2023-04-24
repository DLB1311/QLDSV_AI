# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'SVXemNL_Layout.ui'
#
# Created by: PyQt5 UI code generator 5.15.7
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets
from DBHelper import *
import DBHelper

class Ui_DialogSVXemNL(object):
    def setup(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(630, 326)
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(170, 20, 281, 22))
        font = QtGui.QFont()
        font.setPointSize(11)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.formLayoutWidget = QtWidgets.QWidget(Dialog)
        self.formLayoutWidget.setGeometry(QtCore.QRect(170, 60, 371, 221))
        self.formLayoutWidget.setObjectName("formLayoutWidget")
        self.formLayout = QtWidgets.QFormLayout(self.formLayoutWidget)
        self.formLayout.setContentsMargins(0, 0, 0, 0)
        self.formLayout.setObjectName("formLayout")
        self.tNSVLabel = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.tNSVLabel.setFont(font)
        self.tNSVLabel.setObjectName("tNSVLabel")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.tNSVLabel)
        self.label_2 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label_2.setFont(font)
        self.label_2.setObjectName("label_2")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.FieldRole, self.label_2)
        self.mSSVLabel = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.mSSVLabel.setFont(font)
        self.mSSVLabel.setObjectName("mSSVLabel")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.mSSVLabel)
        self.label_3 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label_3.setFont(font)
        self.label_3.setObjectName("label_3")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.FieldRole, self.label_3)
        self.giITNhLabel = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.giITNhLabel.setFont(font)
        self.giITNhLabel.setObjectName("giITNhLabel")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.LabelRole, self.giITNhLabel)
        self.label_7 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label_7.setFont(font)
        self.label_7.setObjectName("label_7")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.FieldRole, self.label_7)
        self.ngYSinhLabel = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.ngYSinhLabel.setFont(font)
        self.ngYSinhLabel.setObjectName("ngYSinhLabel")
        self.formLayout.setWidget(3, QtWidgets.QFormLayout.LabelRole, self.ngYSinhLabel)
        self.label_4 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label_4.setFont(font)
        self.label_4.setObjectName("label_4")
        self.formLayout.setWidget(3, QtWidgets.QFormLayout.FieldRole, self.label_4)
        self.tNSVLabel_2 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.tNSVLabel_2.setFont(font)
        self.tNSVLabel_2.setObjectName("tNSVLabel_2")
        self.formLayout.setWidget(4, QtWidgets.QFormLayout.LabelRole, self.tNSVLabel_2)
        self.label_8 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label_8.setFont(font)
        self.label_8.setObjectName("label_8")
        self.formLayout.setWidget(4, QtWidgets.QFormLayout.FieldRole, self.label_8)
        self.mSSVLabel_2 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.mSSVLabel_2.setFont(font)
        self.mSSVLabel_2.setObjectName("mSSVLabel_2")
        self.formLayout.setWidget(5, QtWidgets.QFormLayout.LabelRole, self.mSSVLabel_2)
        self.label_9 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label_9.setFont(font)
        self.label_9.setObjectName("label_9")
        self.formLayout.setWidget(5, QtWidgets.QFormLayout.FieldRole, self.label_9)
        self.giITNhLabel_2 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.giITNhLabel_2.setFont(font)
        self.giITNhLabel_2.setObjectName("giITNhLabel_2")
        self.formLayout.setWidget(6, QtWidgets.QFormLayout.LabelRole, self.giITNhLabel_2)
        self.label_10 = QtWidgets.QLabel(self.formLayoutWidget)
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label_10.setFont(font)
        self.label_10.setObjectName("label_10")
        self.formLayout.setWidget(6, QtWidgets.QFormLayout.FieldRole, self.label_10)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

        # Tải dữ liệu
        self.loaddata()

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Dialog"))
        self.label.setText(_translate("Dialog", "NĂNG LỰC CÁ NHÂN"))
        self.tNSVLabel.setText(_translate("Dialog", "Mã năng lực:"))
        self.label_2.setText(_translate("Dialog", ""))
        self.mSSVLabel.setText(_translate("Dialog", "MSSV:"))
        self.label_3.setText(_translate("Dialog", "SV2"))
        self.giITNhLabel.setText(_translate("Dialog", "Nhận xét thực tập:"))
        self.label_7.setText(_translate("Dialog", ""))
        self.ngYSinhLabel.setText(_translate("Dialog", "Trình độ ngoại ngữ:"))
        self.label_4.setText(_translate("Dialog", ""))
        self.tNSVLabel_2.setText(_translate("Dialog", "Kĩ năng làm việc nhóm:"))
        self.label_8.setText(_translate("Dialog", ""))
        self.mSSVLabel_2.setText(_translate("Dialog", "Kĩ năng giao tiếp:"))
        self.label_9.setText(_translate("Dialog", ""))
        self.giITNhLabel_2.setText(_translate("Dialog", "Học lực:"))
        self.label_10.setText(_translate("Dialog", ""))

    # Hàm tải dữ liệu
    def loaddata(self):
        sqlquery="select * from nangluc where masv='"+DBHelper.matk+"'"
        tablerow=0
        # đặt số cột, và dữ liệu ở mỗi cột
        for row in ketnoi().execute(sqlquery):
            self.label_2.setText(row[0])
            self.label_7.setText(row[1])
            self.label_4.setText(row[2])
            self.label_8.setText(row[3])
            self.label_9.setText(row[4])
            self.label_10.setText(row[5])
        self.label_3.setText(DBHelper.matk)


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_DialogSVXemNL()
    ui.setup(Dialog)
    Dialog.show()
    sys.exit(app.exec_())