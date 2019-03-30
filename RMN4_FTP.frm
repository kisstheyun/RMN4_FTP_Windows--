VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "RMN4_FTP"
   ClientHeight    =   7185
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   7185
   FillColor       =   &H00FFFFFF&
   Icon            =   "RMN4_FTP.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "RMN4_FTP.frx":1C64C
   ScaleHeight     =   7185
   ScaleWidth      =   7185
   StartUpPosition =   1  '所有者中心
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "启动 NETSH WLAN 脚本"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   3600
      TabIndex        =   4
      Top             =   2040
      Width           =   3375
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "浏览FTP_RM4文件"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000018&
      Height          =   495
      Left            =   360
      TabIndex        =   3
      Top             =   2040
      Width           =   2775
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   6480
      Picture         =   "RMN4_FTP.frx":233EF
      Top             =   1440
      Width           =   480
   End
   Begin VB.Image Image3 
      Height          =   480
      Left            =   6480
      Picture         =   "RMN4_FTP.frx":24931
      Top             =   840
      Width           =   480
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   6480
      Picture         =   "RMN4_FTP.frx":25E73
      Top             =   240
      Width           =   480
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "关闭FTP_RM4热点"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000018&
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   1440
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "启动FTP_RM4热点"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000018&
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   840
      Width           =   2775
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "添加FTP_RM4热点"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000018&
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   2775
   End
   Begin VB.Image Image1 
      Height          =   1455
      Left            =   5160
      Top             =   4440
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Image2.Visible = False
Image3.Visible = False
Image4.Visible = False
Label4.Visible = False
End Sub

Private Sub Image1_DblClick()
End
End Sub

Private Sub Picture1_Click()
Text = 1
End Sub

Private Sub Label1_Click()
Shell "netsh wlan set hostednetwork mode=allow ssid=FTP_RM4 key=toor1234"
Image4.Visible = True
Image3.Visible = False
Image2.Visible = False
End Sub

Private Sub Label2_Click()
Shell "netsh wlan start hostednetwork"
Image2.Visible = True
Image4.Visible = True
Image3.Visible = False
Label4.Visible = True
End Sub


Private Sub Label3_Click()
Shell "netsh wlan stop hostednetwork"
Image2.Visible = False
Image3.Visible = True
Image4.Visible = False
Label4.Visible = False
End Sub


Private Sub Label4_Click()
Shell "explorer.exe ftp://192.168.173.187:2121"
End Sub


Private Sub Label5_Click()
Label1.Visible = False
Label2.Visible = False
Label3.Visible = False
Label4.Visible = False
Image2.Visible = False
Image3.Visible = False
Image4.Visible = False
Label5.Visible = False
Shell "NETSH.bat"
End Sub


