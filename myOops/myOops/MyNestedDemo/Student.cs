using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyNestedDemo
{
    class Student
    {
        #region variable declaration
        private int iRegNo;
        private string sName;
        private int iAge;
        public Semester semObj;
        #endregion

        public Student()
        {
            iRegNo = 111;
            sName = "NoName";
            iAge = 23;
            Console.WriteLine("Inside Student Constructor");
        }

        public void Display()
        {
            Console.WriteLine("Reg no:" + iRegNo);
            Console.WriteLine("Student:" + sName);
            Console.WriteLine("Age:" + iAge);
            if (semObj != null)
                semObj.Display();
        }

        public void Save(int iRegNo,string sName,int iAge,int Topic1,int Topic2)
        {
            this.iRegNo = iRegNo;
            this.sName = sName;
            this.iAge = iAge;
            if((Topic1+Topic2)>0)
            {
                semObj = new Semester(this);
                semObj.Topic1 = Topic1;
                semObj.Topic2 = Topic2;
            }
        }



        public class Semester
        {
            public int Topic1;
            public int Topic2;

            public Semester()
            {
                Console.WriteLine("Inside Semester Constructor");
            }

            private Student Parent;
            public Semester(Student Parent)
            {
                Console.WriteLine("Inside Semester Parameterized Constructor");
                this.Parent = Parent;
            }

            public void Display()
            {
                //accessing private memebers of the parent class
                if(Parent!=null)
                    Console.WriteLine("Parent.RegNo.:" + Parent.iRegNo);
                Console.WriteLine("Topic1:" + Topic1);
                Console.WriteLine("Topic2:" + Topic2);
            }

        }

    }
}
