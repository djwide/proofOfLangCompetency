# Import required libraries
from Tkinter import *
import MySQLdb

# Make the connection to the database
connect= MySQLdb.connect(host="localhost",port=3306, user="root",passwd="sqldba",db="team_rwb")
cursor=connect.cursor()





# Create a method called SaveData to get the values of each text box and
# insert them into the database
def SaveData():
        f= a.get()
        g=b.get()
        x= variable.get()
        myquery="Insert Into person(lastName, firstName, rank)VALUES(\'"+g+"\',\'"+f+"\',\'"+x+"\')"
        cursor.execute(myquery)
        myquery="select * from person"
        cursor.execute(myquery)
        connect.commit()
        a.delete(0,END)
        b.delete(0,END)
        




# Define a way to quit the entry window
def Quit():
    root.destroy()




# Create a frame to hold the buttons text boxes called ent_frame, based on root
root= Tk()
ent_frame= Frame(root)

# Change the title of the box to "Team RWB" by changing the root title

root.title("Team RWB")

# Create a Tkinter Entry widget to capture the First Name
Label(ent_frame, text="First Name: ").pack(side="left")
a=Entry(ent_frame, width=15)
a.pack(side="left")

# Create a Tkinter Entry widget to capture the Last Name
Label(ent_frame, text="Last Name: ").pack(side="left")
b=Entry(ent_frame, width=15)
b.pack(side="left")



# Create an OptionMenu widget for ranks
variable=StringVar(root)
variable.set("2LT")

w= OptionMenu(ent_frame,variable, "CDT", "2LT", "1LT","CPT","MAJ","LTC","COL","BG","MG","LTG","GEN")
w.pack()


# Create a "Save" button that will call the SaveData method and
# insert the new person into the person table of the team_rwb database
Button(ent_frame, text="Save", command=SaveData).pack(side="bottom")

# Create a button to quit the entry program
Button(ent_frame, text="Quit",command=Quit).pack(side="bottom")


# Run the mainloop
ent_frame.pack()

root.mainloop()


# Close the connection to the database
connect.close()


