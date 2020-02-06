using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.Demo2
{
    class Student
    {
        //demo for constructor destructor dispose

        //member variable
        public int iRegNo; //ch();  //Not possible as this is a instance function
        public String sName;     //="nitin"; //possible
        public int iAge;
        public int iMarks;

        //Constructor
        public Student()
        {
            //Do your initialization here
            iRegNo = ch();  //iRegNo=ch();  //cannot be done outside a function
            sName = "Ravi";
            iAge = 22;
            iMarks = 77;
            Console.WriteLine("Inside Constructor");
        }

        //Destructor
        ~Student()
        {
            //Do you clean Up here
            Console.WriteLine("Inside Destructor");
        }

        //Dispose
        public void Dispose()
        {
            //To be called by client class for clearing Unmanaged code objects
            Console.WriteLine("Inside the Dispose Method");
            GC.SuppressFinalize(this);
        }

        public int ch()
        {
            return 10;
        }

        //Memeber functions
        public void display()
        {
            Console.WriteLine("Reg no:" + iRegNo);
            Console.WriteLine("StudentNAme:" + sName);
            Console.WriteLine("Age:" + iAge);
            Console.WriteLine("Marks:" + iMarks);
            displayGrade(iMarks);
            Console.WriteLine("");
        }

        public int add(int iRN,string sN,int iA,int iM)
        {
            iRegNo = iRN;
            sName = sN;
            iAge = iA;
            iMarks = iM;
            return 1;
        }

        public void displayGrade(int iMks)
        {
            if (iMks>90)
            {
                Console.WriteLine("A Grade");
            }
            else if(iMks>80)
            {
                Console.WriteLine("B Grade");
            }
            else if(iMks<50)
            {
                Console.WriteLine("Not Cleared");
            }
        }  

    }
}
