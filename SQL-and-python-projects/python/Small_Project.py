# student_grade_calculator.py

# Program to calculate average marks and grade of a student

def calculate_grade(marks):
    avg = sum(marks) / len(marks)
    if avg >= 90:
        return "A+"
    elif avg >= 75:
        return "A"
    elif avg >= 60:
        return "B"
    elif avg >= 40:
        return "C"
    else:
        return "Fail"

# Example
student = {"name": "Rahul", "marks": [85, 90, 78, 92, 88]}
print("Student:", student["name"])
print("Marks:", student["marks"])
print("Grade:", calculate_grade(student["marks"]))
