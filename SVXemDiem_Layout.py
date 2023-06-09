# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'SVXemDiem_Layout.ui'
#
# Created by: PyQt5 UI code generator 5.15.7
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets
from DBHelper import *
import DBHelper

class Ui_DialogSVXD(object):
    def setup(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(1284, 797)
        self.label_4 = QtWidgets.QLabel(Dialog)
        self.label_4.setGeometry(QtCore.QRect(540, 30, 351, 22))
        font = QtGui.QFont()
        font.setPointSize(11)
        font.setBold(True)
        font.setWeight(75)
        self.label_4.setFont(font)
        self.label_4.setObjectName("label_4")
        self.tableWidget = QtWidgets.QTableWidget(Dialog)
        self.tableWidget.setGeometry(QtCore.QRect(10, 210, 1261, 251))
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(9)
        self.tableWidget.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(6, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(7, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(8, item)
        self.tableWidget_2 = QtWidgets.QTableWidget(Dialog)
        self.tableWidget_2.setGeometry(QtCore.QRect(10, 500, 1261, 251))
        self.tableWidget_2.setObjectName("tableWidget_2")
        self.tableWidget_2.setColumnCount(9)
        self.tableWidget_2.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(6, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(7, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget_2.setHorizontalHeaderItem(8, item)
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(10, 470, 500, 16))
        self.label.setObjectName("label")
        self.label_2 = QtWidgets.QLabel(Dialog)
        self.label_2.setGeometry(QtCore.QRect(10, 180, 500, 16))
        self.label_2.setObjectName("label_2")

        self.label_3 = QtWidgets.QLabel(Dialog)
        self.label_3.setGeometry(QtCore.QRect(98, 77, 91, 16))
        self.label_3.setText("")
        self.label_3.setObjectName("label_3")
        self.mSSVLabel = QtWidgets.QLabel(Dialog)
        self.mSSVLabel.setGeometry(QtCore.QRect(30, 77, 39, 16))
        self.mSSVLabel.setObjectName("mSSVLabel")
        self.label_5 = QtWidgets.QLabel(Dialog)
        self.label_5.setGeometry(QtCore.QRect(98, 100, 171, 16))
        self.label_5.setText("")
        self.label_5.setObjectName("label_5")
        self.niNKhALabel_2 = QtWidgets.QLabel(Dialog)
        self.niNKhALabel_2.setGeometry(QtCore.QRect(30, 123, 61, 22))
        self.niNKhALabel_2.setObjectName("niNKhALabel_2")
        self.niNKhAComboBox = QtWidgets.QComboBox(Dialog)
        self.niNKhAComboBox.setGeometry(QtCore.QRect(98, 123, 91, 22))
        self.niNKhAComboBox.setObjectName("niNKhAComboBox")
        self.niNKhAComboBox.addItem("")
        self.niNKhAComboBox.addItem("")
        self.niNKhAComboBox.addItem("")
        self.niNKhAComboBox.addItem("")
        self.niNKhAComboBox.addItem("")
        self.hTNLabel = QtWidgets.QLabel(Dialog)
        self.hTNLabel.setGeometry(QtCore.QRect(30, 100, 42, 16))
        self.hTNLabel.setObjectName("hTNLabel")
        self.pushButton_2 = QtWidgets.QPushButton(Dialog)
        self.pushButton_2.setGeometry(QtCore.QRect(200, 120, 51, 28))
        self.pushButton_2.setObjectName("pushButton_2")

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

        #XuatTT
        self.xuatThongTin()

        # Tải dữ liệu cho Table.
        # Nút Xem
        self.pushButton_2.clicked.connect(self.loaddataTable)
        # self.loaddataTable()
        self.tableWidget.setSelectionBehavior(QtWidgets.QTableView.SelectRows)

        self.tableWidget_2.setSelectionBehavior(QtWidgets.QTableView.SelectRows)



    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "QLDSV"))
        self.label_4.setText(_translate("Dialog", "ĐIỂM SỐ CÁ NHÂN"))
        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("Dialog", "Mã môn học"))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("Dialog", "Tên môn học"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("Dialog", "% chuyên cần"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("Dialog", "% giữa kì"))
        item = self.tableWidget.horizontalHeaderItem(4)
        item.setText(_translate("Dialog", "% cuối kì"))
        item = self.tableWidget.horizontalHeaderItem(5)
        item.setText(_translate("Dialog", "Điểm chuyên cần"))
        item = self.tableWidget.horizontalHeaderItem(6)
        item.setText(_translate("Dialog", "Điểm giữa kì"))
        item = self.tableWidget.horizontalHeaderItem(7)
        item.setText(_translate("Dialog", "Điểm cuối kì"))
        item = self.tableWidget.horizontalHeaderItem(8)
        item.setText(_translate("Dialog", "Điểm tổng kết"))
        item = self.tableWidget_2.horizontalHeaderItem(0)
        item.setText(_translate("Dialog", "Mã môn học"))
        item = self.tableWidget_2.horizontalHeaderItem(1)
        item.setText(_translate("Dialog", "Tên môn học"))
        item = self.tableWidget_2.horizontalHeaderItem(2)
        item.setText(_translate("Dialog", "% chuyên cần"))
        item = self.tableWidget_2.horizontalHeaderItem(3)
        item.setText(_translate("Dialog", "% giữa kì"))
        item = self.tableWidget_2.horizontalHeaderItem(4)
        item.setText(_translate("Dialog", "% cuối kì"))
        item = self.tableWidget_2.horizontalHeaderItem(5)
        item.setText(_translate("Dialog", "Điểm chuyên cần"))
        item = self.tableWidget_2.horizontalHeaderItem(6)
        item.setText(_translate("Dialog", "Điểm giữa kì"))
        item = self.tableWidget_2.horizontalHeaderItem(7)
        item.setText(_translate("Dialog", "Điểm cuối kì"))
        item = self.tableWidget_2.horizontalHeaderItem(8)
        item.setText(_translate("Dialog", "Điểm tổng kết"))
        self.mSSVLabel.setText(_translate("Dialog", "MSSV:"))
        self.hTNLabel.setText(_translate("Dialog", "Họ tên:"))
        self.pushButton_2.setText(_translate("Dialog", "Xem"))
        self.niNKhAComboBox.setItemText(0, _translate("Dialog", "2019-2020"))
        self.niNKhAComboBox.setItemText(1, _translate("Dialog", "2020-2021"))
        self.niNKhAComboBox.setItemText(2, _translate("Dialog", "2021-2022"))
        self.niNKhAComboBox.setItemText(3, _translate("Dialog", "2022-2023"))
        self.niNKhAComboBox.setItemText(4, _translate("Dialog", "2023-2024"))
        self.niNKhALabel_2.setText(_translate("Dialog", "Niên khóa:"))
        self.label.setText(_translate("Dialog", "Học kỳ 2:"))
        self.label_2.setText(_translate("Dialog", "Học kỳ 1:"))


    def xuatThongTin(self):
        self.label_3.setText(DBHelper.matk)
        query="select hoten from sinhvien where masv='"+DBHelper.matk+"'"
        for i in ketnoi().execute(query):
            self.label_5.setText(i[0])

    # Hàm tải dữ liệu lên cho table
    def loaddataTable(self):
        self.tableWidget.setRowCount(0)
        self.tableWidget_2.setRowCount(0)
        #HK1
        diemtongHK1=[]
        sqlquery = "select mh.MaMH,mh.TenMH,mh.HeSoCC,mh.HeSoGK,mh.HeSoCK,DiemCC,DiemGK,DiemCK" \
                   " from dangki,sinhvien sv, loptinchi ltc,MonHoc mh" \
                   " where sv.MaSV=dangki.MaSV and ltc.MALTC=dangki.MaLTC and ltc.MaMH=mh.MaMH and ltc.HocKi='HK1' and sv.MaSV='"+DBHelper.matk+"' and ltc.namhoc='"+self.niNKhAComboBox.currentText()+"'" \
                   " order by cast(substring(ltc.MaMH,3,10) as int)"

        self.tableWidget.setRowCount(50)
        tablerow = 0
        # đặt số cột, và dữ liệu ở mỗi cột
        for row in ketnoi().execute(sqlquery):
            self.tableWidget.setItem(tablerow, 0, QtWidgets.QTableWidgetItem(str(row[0]).upper()))
            self.tableWidget.setItem(tablerow, 1, QtWidgets.QTableWidgetItem(str(row[1])))
            hsCC=row[2]
            self.tableWidget.setItem(tablerow, 2, QtWidgets.QTableWidgetItem(str(hsCC)))
            hsGK = row[3]
            self.tableWidget.setItem(tablerow, 3, QtWidgets.QTableWidgetItem(str(hsGK)))
            hsCK = row[4]
            self.tableWidget.setItem(tablerow, 4, QtWidgets.QTableWidgetItem(str(hsCK)))
            diemCC = row[5]
            self.tableWidget.setItem(tablerow, 5, QtWidgets.QTableWidgetItem(str(diemCC)))
            diemGK = row[6]
            self.tableWidget.setItem(tablerow, 6, QtWidgets.QTableWidgetItem(str(diemGK)))
            diemCK = row[7]
            self.tableWidget.setItem(tablerow, 7, QtWidgets.QTableWidgetItem(str(diemCK)))
            diemTongKet = float(hsCC*diemCC/100+hsGK*diemGK/100+hsCK*diemCK/100)
            self.tableWidget.setItem(tablerow, 8, QtWidgets.QTableWidgetItem(str("{:.2f}".format(diemTongKet))))
            diemtongHK1.append(diemTongKet)
            tablerow += 1
        self.tableWidget.setRowCount(tablerow)
        self.tableWidget.setColumnWidth(1, 170)
        # Khong cho edit
        self.tableWidget.setEditTriggers(QtWidgets.QTableWidget.NoEditTriggers)

        if diemtongHK1.__len__()>0:
            sum=0
            for i in diemtongHK1:
                sum+=i
            self.label_2.setText("Học kỳ 1: "+" Điểm trung bình học kỳ: "+str("{:.2f}".format(sum/tablerow)))
        else:
            self.label_2.setText("Học kỳ 1: ")

        # HK2
        diemtongHK2 = []
        sqlquery = "select mh.MaMH,mh.TenMH,mh.HeSoCC,mh.HeSoGK,mh.HeSoCK,DiemCC,DiemGK,DiemCK" \
                   " from dangki,sinhvien sv, loptinchi ltc,MonHoc mh" \
                   " where sv.MaSV=dangki.MaSV and ltc.MALTC=dangki.MaLTC and ltc.MaMH=mh.MaMH and ltc.HocKi='HK2' and sv.MaSV='" + DBHelper.matk +"' and ltc.namhoc='"+self.niNKhAComboBox.currentText()+"'" \
                   " order by cast(substring(ltc.MaMH,3,10) as int)"
        self.tableWidget_2.setRowCount(50)
        tablerow = 0
        # đặt số cột, và dữ liệu ở mỗi cột
        for row in ketnoi().execute(sqlquery):
            self.tableWidget_2.setItem(tablerow, 0, QtWidgets.QTableWidgetItem(str(row[0]).upper()))
            self.tableWidget_2.setItem(tablerow, 1, QtWidgets.QTableWidgetItem(str(row[1])))
            hsCC = row[2]
            self.tableWidget_2.setItem(tablerow, 2, QtWidgets.QTableWidgetItem(str(hsCC)))
            hsGK = row[3]
            self.tableWidget_2.setItem(tablerow, 3, QtWidgets.QTableWidgetItem(str(hsGK)))
            hsCK = row[4]
            self.tableWidget_2.setItem(tablerow, 4, QtWidgets.QTableWidgetItem(str(hsCK)))
            diemCC = row[5]
            self.tableWidget_2.setItem(tablerow, 5, QtWidgets.QTableWidgetItem(str(diemCC)))
            diemGK = row[6]
            self.tableWidget_2.setItem(tablerow, 6, QtWidgets.QTableWidgetItem(str(diemGK)))
            diemCK = row[7]
            self.tableWidget_2.setItem(tablerow, 7, QtWidgets.QTableWidgetItem(str(diemCK)))
            diemTongKet = float(hsCC * diemCC / 100 + hsGK * diemGK / 100 + hsCK * diemCK / 100)
            self.tableWidget_2.setItem(tablerow, 8, QtWidgets.QTableWidgetItem(str("{:.2f}".format(diemTongKet))))
            diemtongHK2.append(diemTongKet)
            tablerow += 1
        self.tableWidget_2.setRowCount(tablerow)
        self.tableWidget_2.setColumnWidth(1, 170)
        # Khong cho edit
        self.tableWidget_2.setEditTriggers(QtWidgets.QTableWidget.NoEditTriggers)
        if diemtongHK2.__len__()>0:
            sum=0
            for i in diemtongHK2:
                sum+=i
            self.label.setText("Học kỳ 2: " + " Điểm trung bình học kỳ: " + str("{:.2f}".format(sum / tablerow)))
        else:
            self.label.setText("Học kỳ 2: ")



if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_DialogSVXD()
    ui.setup(Dialog)
    Dialog.show()
    sys.exit(app.exec_())
