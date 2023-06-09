# -*- coding: utf-8 -*-
import array as arr
# Form implementation generated from reading ui file 'QLDiem_Layout.ui'
#
# Created by: PyQt5 UI code generator 5.15.7
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets
from DBHelper import *
import pyodbc


class Ui_Dialog6(object):
    def setup(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(1003, 664)
        self.tableWidget = QtWidgets.QTableWidget(Dialog)
        self.tableWidget.setGeometry(QtCore.QRect(10, 380, 983, 271))
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(7)
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
        self.label_4 = QtWidgets.QLabel(Dialog)
        self.label_4.setGeometry(QtCore.QRect(330, 20, 351, 22))
        font = QtGui.QFont()
        font.setPointSize(11)
        font.setBold(True)
        font.setWeight(75)
        self.label_4.setFont(font)
        self.label_4.setObjectName("label_4")
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(20, 340, 161, 16))
        font = QtGui.QFont()
        font.setPointSize(10)
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.pushButton = QtWidgets.QPushButton(Dialog)
        self.pushButton.setGeometry(QtCore.QRect(270, 80, 81, 41))
        self.pushButton.setObjectName("pushButton")
        self.mLTCLabel_2 = QtWidgets.QLabel(Dialog)
        self.mLTCLabel_2.setGeometry(QtCore.QRect(25, 62, 48, 78))
        self.mLTCLabel_2.setObjectName("mLTCLabel_2")
        self.mLTCComboBox = QtWidgets.QComboBox(Dialog)
        self.mLTCComboBox.setGeometry(QtCore.QRect(80, 80, 171, 42))
        self.mLTCComboBox.setObjectName("mLTCComboBox")
        self.mLTCComboBox.addItem("")
        self.label_2 = QtWidgets.QLabel(Dialog)
        self.label_2.setGeometry(QtCore.QRect(732, 80, 61, 31))
        self.label_2.setObjectName("label_2")
        self.mSSVLabel = QtWidgets.QLabel(Dialog)
        self.mSSVLabel.setGeometry(QtCore.QRect(670, 80, 51, 31))
        self.mSSVLabel.setObjectName("mSSVLabel")
        self.iMChuyNCNLineEdit = QtWidgets.QLineEdit(Dialog)
        self.iMChuyNCNLineEdit.setGeometry(QtCore.QRect(380, 162, 71, 31))
        self.iMChuyNCNLineEdit.setObjectName("iMChuyNCNLineEdit")
        self.iMChuyNCNLabel = QtWidgets.QLabel(Dialog)
        self.iMChuyNCNLabel.setGeometry(QtCore.QRect(272, 170, 101, 22))
        self.iMChuyNCNLabel.setObjectName("iMChuyNCNLabel")
        self.iMThCHNhLineEdit = QtWidgets.QLineEdit(Dialog)
        self.iMThCHNhLineEdit.setGeometry(QtCore.QRect(555, 162, 71, 31))
        self.iMThCHNhLineEdit.setObjectName("iMThCHNhLineEdit")
        self.iMThCHNhLabel = QtWidgets.QLabel(Dialog)
        self.iMThCHNhLabel.setGeometry(QtCore.QRect(470, 170, 96, 22))
        self.iMThCHNhLabel.setObjectName("iMThCHNhLabel")
        self.iMCuIKLineEdit = QtWidgets.QLineEdit(Dialog)
        self.iMCuIKLineEdit.setGeometry(QtCore.QRect(752, 162, 71, 31))
        self.iMCuIKLineEdit.setObjectName("iMCuIKLineEdit")
        self.iMCuIKLabel = QtWidgets.QLabel(Dialog)
        self.iMCuIKLabel.setGeometry(QtCore.QRect(670, 170, 75, 22))
        self.iMCuIKLabel.setObjectName("iMCuIKLabel")
        self.pushButton_2 = QtWidgets.QPushButton(Dialog)
        self.pushButton_2.setGeometry(QtCore.QRect(270, 260, 196, 41))
        self.pushButton_2.setObjectName("pushButton_2")
        self.pushButton_3 = QtWidgets.QPushButton(Dialog)
        self.pushButton_3.setGeometry(QtCore.QRect(360, 80, 81, 41))
        self.pushButton_3.setObjectName("pushButton_3")
        self.mSSVLabel_2 = QtWidgets.QLabel(Dialog)
        self.mSSVLabel_2.setGeometry(QtCore.QRect(468, 80, 51, 31))
        self.mSSVLabel_2.setObjectName("mSSVLabel_2")
        self.label_3 = QtWidgets.QLabel(Dialog)
        self.label_3.setGeometry(QtCore.QRect(530, 80, 61, 31))
        self.label_3.setObjectName("label_3")
        self.mSSVLabel_3 = QtWidgets.QLabel(Dialog)
        self.mSSVLabel_3.setGeometry(QtCore.QRect(23, 165, 101, 31))
        self.mSSVLabel_3.setObjectName("mSSVLabel_3")
        self.label_5 = QtWidgets.QLabel(Dialog)
        self.label_5.setGeometry(QtCore.QRect(110, 165, 121, 31))
        self.label_5.setObjectName("label_5")




        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

        # Tải dữ liệu cho Table, cho chọn dòng, bắt trỏ chuột.
        self.loaddataTable("")
        self.tableWidget.setSelectionBehavior(QtWidgets.QTableView.SelectRows)
        self.xuatDiemTongKet("")
        self.tableWidget.clicked.connect(self.tableClick)

        # Tải dữ liệu cho Combobox LTC
        self.comboboxLTC()

        #Nút Tìm
        self.pushButton.clicked.connect(self.timMH)

        # Nút CapNhat
        self.pushButton_2.clicked.connect(self.nutCapNhat)
        self.pushButton_2.setEnabled(False)

        # Nút LamMoi
        self.pushButton_3.clicked.connect(self.nutLamMoi)


    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "QLDSV"))
        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("Dialog", "Mã LTC"))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("Dialog", "MSSV"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("Dialog", "Họ tên"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("Dialog", "Điểm chuyên cần"))
        item = self.tableWidget.horizontalHeaderItem(4)
        item.setText(_translate("Dialog", "Điểm giữa kì"))
        item = self.tableWidget.horizontalHeaderItem(5)
        item.setText(_translate("Dialog", "Điểm cuối kì"))
        item = self.tableWidget.horizontalHeaderItem(6)
        item.setText(_translate("Dialog", "Điểm tổng kết"))
        self.label_4.setText(_translate("Dialog", "DANH SÁCH ĐIỂM SINH VIÊN"))
        self.label.setText(_translate("Dialog", "Danh sách sinh viên:"))
        self.pushButton.setText(_translate("Dialog", "Tìm"))
        self.mLTCLabel_2.setText(_translate("Dialog", "Mã LTC:"))
        self.mLTCComboBox.setItemText(0, _translate("Dialog", "LTC1"))
        self.label_2.setText(_translate("Dialog", "..."))
        self.mSSVLabel.setText(_translate("Dialog", "MSSV:"))
        self.iMChuyNCNLabel.setText(_translate("Dialog", "Điểm chuyên cần:"))
        self.iMThCHNhLabel.setText(_translate("Dialog", "Điểm giữa kì:"))
        self.iMCuIKLabel.setText(_translate("Dialog", "Điểm cuối kì:"))
        self.pushButton_2.setText(_translate("Dialog", "Cập nhật"))
        self.pushButton_3.setText(_translate("Dialog", "Làm mới"))
        self.mSSVLabel_2.setText(_translate("Dialog", "Mã LTC:"))
        self.label_3.setText(_translate("Dialog", "..."))
        self.mSSVLabel_3.setText(_translate("Dialog", "Môn học:"))
        self.label_5.setText(_translate("Dialog", "..."))


    # Hàm tải dữ liệu lên cho table
    def loaddataTable(self, mode):
        sqlquery = "select ltc.MALTC,sv.MaSV,HOTEN,DiemCC,DiemGK,DiemCK,mh.HeSoCC,mh.HeSoGK,mh.HeSoCK from dangki,sinhvien sv, loptinchi ltc,MonHoc mh where sv.MaSV=dangki.MaSV and ltc.MALTC=dangki.MaLTC and ltc.MaMH=mh.MaMH order by cast(substring(ltc.MaLTC,4,10) as int)"
        if mode=="ChonLTC":
            sqlquery = "select ltc.MALTC,sv.MaSV,HOTEN,DiemCC,DiemGK,DiemCK from dangki,sinhvien sv, loptinchi ltc where sv.MaSV=dangki.MaSV and ltc.MALTC=dangki.MaLTC and ltc.MaLTC='"+self.mLTCComboBox.currentText()+"' order by cast(substring(sv.MaSV,3,10) as int)"
        self.tableWidget.setRowCount(100)
        tablerow = 0
        # đặt số cột, và dữ liệu ở mỗi cột
        for row in ketnoi().execute(sqlquery):
            self.tableWidget.setItem(tablerow, 0, QtWidgets.QTableWidgetItem(str(row[0]).upper()))
            self.tableWidget.setItem(tablerow, 1, QtWidgets.QTableWidgetItem(str(row[1]).upper()))
            self.tableWidget.setItem(tablerow, 2, QtWidgets.QTableWidgetItem(str(row[2])))
            self.tableWidget.setItem(tablerow, 3, QtWidgets.QTableWidgetItem(str(row[3])))
            self.tableWidget.setItem(tablerow, 4, QtWidgets.QTableWidgetItem(str(row[4])))
            self.tableWidget.setItem(tablerow, 5, QtWidgets.QTableWidgetItem(str(row[5])))
            tablerow += 1
        self.tableWidget.setRowCount(tablerow)
        self.tableWidget.setColumnWidth(2, 170)
        # Khong cho edit
        self.tableWidget.setEditTriggers(QtWidgets.QTableWidget.NoEditTriggers)

    # Hàm Xuất điểm tổng kết
    def xuatDiemTongKet(self,mode):
        # query="select maLTC,HeSoCC, HeSoGK, HeSoCK from monhoc,loptinchi where monhoc.MaMH=loptinchi.MaMH order by cast(substring(MaLTC,4,10) as int)"
        # hesoCC=[]
        # hesoGK=[]
        # hesoCK=[]
        # for row in cur.execute(query):
        #     hesoCC.append(int(row[1]))
        #     hesoGK.append(int(row[2]))
        #     hesoCK.append(int(row[3]))
        #
        # print(str(hesoCC)+" "+str(hesoGK)+" "+str(hesoCK))


        query="select ltc.MALTC,sv.MaSV,HOTEN,DiemCC,DiemGK,DiemCK,mh.HeSoCC,mh.HeSoGK,mh.HeSoCK from dangki,sinhvien sv, loptinchi ltc,MonHoc mh where sv.MaSV=dangki.MaSV and ltc.MALTC=dangki.MaLTC and ltc.MaMH=mh.MaMH order by cast(substring(ltc.MaLTC,4,10) as int)"
        if mode == "ChonLTC":
            query = "select ltc.MALTC,sv.MaSV,HOTEN,DiemCC,DiemGK,DiemCK,mh.HeSoCC,mh.HeSoGK,mh.HeSoCK from dangki,sinhvien sv, loptinchi ltc,MonHoc mh where sv.MaSV=dangki.MaSV and ltc.MALTC=dangki.MaLTC and ltc.MaMH=mh.MaMH and ltc.MaLTC = '"+self.mLTCComboBox.currentText()+"' order by cast(substring(sv.MaSV,3,10) as int)"
        tablerow=0
        for row in ketnoi().execute(query):
            diemTongKet=float(row[3]*row[6]/100+row[4]*row[7]/100+row[5]*row[8]/100)
            # print(self.tableWidget.item(row, 6).text())
            # diemTongKet = (float(self.tableWidget.item(row, 3).text()) * hesoCC[tablerow])
                           # +float(self.tableWidget.item(row, 4).text()) * int(self.label_7.text())
                           # +float(self.tableWidget.item(row, 5).text()) * int(self.label_8.text()))
            self.tableWidget.setItem(tablerow, 6, QtWidgets.QTableWidgetItem(str("{:.2f}".format(diemTongKet))))
            tablerow+=1
    # Hàm Tạo Combobox LTC
    def comboboxLTC(self):
        self.mLTCComboBox.clear()
        sqlquery = "SELECT maltc FROM loptinchi order by cast(substring(MaLTC,4,10) as int)"
        for row in ketnoi().execute(sqlquery):
            b = str(row).replace("(","",2)
            c = str(b).replace("'", "", 2)
            d = str(c).replace(",", "", 2)
            e = str(d).replace(")", "", 2)
            f = str(e).replace(" ", "", 2)
            self.mLTCComboBox.addItem(f)

    # Tìm MH
    def timMH(self):
        self.label_2.setText("")
        self.iMChuyNCNLineEdit.setText("")
        self.iMThCHNhLineEdit.setText("")
        self.iMCuIKLineEdit.setText("")

        self.loaddataTable("ChonLTC")
        self.xuatDiemTongKet("ChonLTC")
        self.tableWidget.clearSelection()
        a=self.mLTCComboBox.currentText()
        self.label_3.setText(a)
        sqlquery = "select tenMH from monhoc inner join loptinchi on monhoc.maMH=loptinchi.maMh where LopTinChi.MaLTC='"+a+"'"
        for i in ketnoi().execute(sqlquery):
            self.label_5.setText(i[0])
        self.pushButton_2.setEnabled(False)
        # for row in range(self.tableWidget.rowCount()):
        #     diemTongKet=(float(self.tableWidget.item(row,3).text())*int(self.label_6.text()) + float(self.tableWidget.item(row,4).text())*int(self.label_7.text()) + float(self.tableWidget.item(row,5).text())*int(self.label_8.text()))/100
        #     self.tableWidget.setItem(row, 6, QtWidgets.QTableWidgetItem(str(diemTongKet)))


    def nutCapNhat(self):
        conn = pyodbc.connect('Driver={SQL Server};'
                              'Server=DESKTOP-BDENHI9;'
                              'Database=quanlydiem1_HTTM;'
                              'Trusted_connection=yes;')
        cur = conn.cursor()
        a=self.iMChuyNCNLineEdit.text()
        b=self.iMThCHNhLineEdit.text()
        c=self.iMCuIKLineEdit.text()
        d= self.label_2.text()
        e = self.label_3.text()
        query = "update DangKi set [DiemCC]='"+a+"',[DiemGK]='"+b+"',[DiemCK]='"+c+"' where [MaSV]='"+d+"' and [MaLTC]='"+e+"'"
        print(query)
        try:
            cur.execute(query)
            conn.commit()
            DBHelper.textThongBao = "       Cập nhật thành công."
            hienTB(self)
            print("Ok")
        except:
            print("Fail")
        self.timMH()

    # Hàm bắt event table click tải dữ liệu lên ô để sửa
    def tableClick(self):
        self.pushButton_2.setEnabled(True)
        row = self.tableWidget.currentRow()
        a=self.tableWidget.item(row, 0).text()
        self.label_3.setText(a)
        self.label_2.setText(self.tableWidget.item(row, 1).text())
        self.iMChuyNCNLineEdit.setText(self.tableWidget.item(row, 3).text())
        self.iMThCHNhLineEdit.setText(self.tableWidget.item(row, 4).text())
        self.iMCuIKLineEdit.setText(self.tableWidget.item(row, 5).text())
        self.mLTCComboBox.setCurrentText(self.tableWidget.item(row, 5).text())

        sqlquery = "select tenMH from monhoc inner join loptinchi on monhoc.maMH=loptinchi.maMh where LopTinChi.MaLTC='"+a+"'"
        for i in ketnoi().execute(sqlquery):
            self.label_5.setText(i[0])


    def nutLamMoi(self):
        self.loaddataTable("")
        self.xuatDiemTongKet("")
        self.tableWidget.clearSelection()
        self.label_3.setText("")
        self.label_2.setText("")
        self.iMChuyNCNLineEdit.setText("")
        self.iMThCHNhLineEdit.setText("")
        self.iMCuIKLineEdit.setText("")
        self.label_5.setText("")
        self.pushButton_2.setEnabled(False)



if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog6()
    ui.setup(Dialog)
    Dialog.show()
    sys.exit(app.exec_())
