using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.myConstructor
{
    class MyConstructorDemo
    {
        public static void Main(string[] args)
        {
            Student sObj;
            sObj = new Student();  //default constructor
            sObj.display();

            Console.WriteLine("");
            sObj = new Student(7, "nitin", 28);  //overloaded constructor
            sObj.display();

            (new Student()).display();    //annoy class
        }
    }
    class Student
    {
        int iRegNo;
        String sName;
        int iAge;

        public Student()
        {
            iRegNo = 111;
            sName = "NoName";
            iAge = 29;
            Console.WriteLine("Inside Default Contructor");
        }

        public Student(int iRegNo,String sName,int iAge)
        {
            this.iRegNo = iRegNo;
            this.sName = sName;
            this.iAge = iAge;
        }

        ~Student()
        {
            //do clean here
            Console.WriteLine("Destructor");
        }

        public void display()
        {
            Console.WriteLine("Reg NO:" + iRegNo);
            Console.WriteLine("Student:" + sName);
            Console.WriteLine("Age:" + iAge);
        }
    }
}
