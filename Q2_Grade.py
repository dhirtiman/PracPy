marks_str = input("Enter marks in subject 1,2 and 3: ")
mark_list = marks_str.split()
FullMarks = int (input("Enter Full marks in a subject: "))
FullMarks *= 3

mark_list = [int(marks) for marks in mark_list]

total_marks = sum(mark_list)
percentage = (total_marks/FullMarks) * 100


if percentage >= 80:
    grade = 'A'
elif percentage >= 70:
    grade = 'B'

elif percentage >= 60:
    grade = 'C'

elif percentage >= 40:
    grade = 'D'

else:
    grade = 'E'

print("Total Marks Obtained:", total_marks)
print(f"Percentage Obtained: {percentage:.1f}%")
print("Grade:",grade)