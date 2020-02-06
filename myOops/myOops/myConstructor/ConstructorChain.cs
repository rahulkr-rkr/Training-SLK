using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.myConstructor
{
    class ConstructorChain
    {
        static void Main(string[] args)
        {
            Employee eObj;
           
            eObj = new Employee();  //default contructor
            eObj.display();

            Console.WriteLine("");
            eObj = new Employee(7, "nitin", 28);  //overloaded constructor
            eObj.display();
            

            Console.WriteLine("");
            eObj = new Employee(8, "Tanvir");   //overloaded chain construtor
            eObj.display();
        }
        
    }
    class Employee
    {
        int iEmpNo;
        String Ename;
        int iAge;

        public Employee()
        {
            iEmpNo = 111;
            Ename = "NoName";
            iAge = 30;
            Console.WriteLine("Inside Default Contructor");
        }

        //chained constructor
        public Employee(int iEmpNo, String Ename) : this(iEmpNo, Ename, 18)
        {
            Console.WriteLine("Inside 2 param Contructors");
        }

        public Employee(int iEmpNo, String Ename, int iAge)
        {
            this.iEmpNo = iEmpNo;
            this.Ename = Ename;
            this.iAge = iAge;
            Console.WriteLine("Inside 3rd param Contructors");
        }

        ~Employee()
        {
            //do clean here
            Console.WriteLine("Destructor");
        }

        public void display()
        {
            Console.WriteLine("Emp No:" + iEmpNo);
            Console.WriteLine("Employee:" + Ename);
            Console.WriteLine("Age:" + iAge);
        }
    }
}
