; ������ ������ ��������� � ������
Students := []
Loop
{
;  FileReadLine, student, input\students.txt, %A_Index%
  FileReadLine, student, input/students.txt, %A_Index%
  if ErrorLevel
    break
  Students.Push(student)
  ;MsgBox % student
}

; ������ ������ �������� � ������
Questions := []
Loop
{
  FileReadLine, questions, input/questions.txt, %A_Index%
  if ErrorLevel
    break
  Ques_Array := StrSplit(questions, ",")

  Questions[%A_Index%, 1] := Ques_Array[1]
  Questions[%A_Index%, 2] := Ques_Array[2]
  Questions[%A_Index%, 3] := Ques_Array[3]
}
; Loop, read, input/questions.txt
; {
;     Loop, parse, A_LoopReadLine, %A_Space%
;     {
;       ;Questions.Push([%A_LoopField%])
;       Questions[]
;         MsgBox, Field number %A_Index% is %A_LoopField%.
;     }
; }
MsgBox % Questions[2][1]

;for key, value in Arr[1]
;  MsgBox %key% = %value%
; Loop % Arr.Length()
; {
;   path := "output/" . Arr.1.1 . ".txt"
;   MsgBox % path
;   file := FileOpen(path, "w")
;   file.Write(Arr.2.2)
;   file.Close()
; }

;FileSelectFile, FileName, S8,, Create a new file:
; $questions = array(
;                 array('���������', 1, 8, 9),
;                 array('�����', 2, 9, 21),
;                 array('����������', 3, 10, 18),
;                 array('��������� �������', 4, 11, 14),
;                 array('��������', 5, 12, 16),
;                 array('��������� �������', 6, 13, 20),
;                 array('��������', 7, 12, 14),
;                 array('��������', 1, 15, 20),
;                 array('������', 2, 11, 16),
;                 array('����', 3, 13, 17),
;                 array('��������', 4, 12, 18),
;                 array('���������', 5, 12, 19),
;                 array('������', 6, 14, 20),
;                 array('�����������', 7, 11, 21),
;                 array('�����������', 1, 9, 12),
;                 array('�����������', 2, 10, 11),
;                 array('������', 3, 11, 13),
;                 array('��������', 4, 12, 19),
;                 array('������', 5, 11, 13),
;                 array('�����', 6, 9, 14)
;             );
