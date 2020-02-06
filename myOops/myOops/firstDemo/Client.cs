using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.firstDemo
{
    class Client
    {
        static void Main(string[] args)
        {
            //SimpleStudent();
            Student[] sObj; //$bytes
            sObj = new Student[6]; //16 Bytes
            sObj[0] = new Student() { ID = 1, Name = "Nitin", City = "Banglore" };

            //Console.WriteLine("No Of Students[0]: " + Student.Count);
            Student.DisplayCount();
            sObj[1] = new Student();
            Console.WriteLine("No Of Students[1]: " + Student.Count);
            sObj[1].ID = 2;
            sObj[1].Name = "Tanvir";
            sObj[1].City = "Mysore";
            sObj[2] = new Student() { ID = 3, Name = "Ravi", City = "Chennai" };

            sObj[3] = new Student() { ID = 4, Name = "Rahul", City = "Manglore" };
            sObj[4] = new Student() { ID = 5, Name = "Abhi", City = "Sulllia" };
            sObj[5] = new Student() { ID = 6, Name = "Shiva", City = "Puttur" };

            Console.WriteLine("No of Students[2]: " + Student.Count);

            /*
            sObj[0].Display();
            sObj[1].Display();
            sObj[2].Display();  
            */
            

            Console.WriteLine("=====================================");
            
            for (int iRow = 0; iRow < sObj.Length; iRow++)
            {
                sObj[iRow].Display();
                Console.WriteLine("-----------------------------------");
            }
           

            Console.WriteLine("=====================================");
           /*
            foreach (var item in sObj)
            {
                if (item.ID == 1)
                    item.Display();
            }
            */
           

        }
        private static void SimpleStudent()
        {
            Student sObj; //4 bYtes
            sObj = new Student();  //Size of variables in Student

            bool Status;
            Console.WriteLine("GET FUNCTION");
            Console.WriteLine("--------------------------------------");
            Status = sObj.Save(1, "Nitin", "Banglore");
            Console.WriteLine("Student Saved Status:" + Status);
            Console.WriteLine("=======================================");

            Console.WriteLine("DISPLAY FUNCTION");
            Console.WriteLine("--------------------------------------");
            sObj.Display();
            Console.WriteLine("=======================================");

            string na = "", ct = "";

            Status = sObj.Get(1, ref na, ref ct);
            if (Status)
            {
                Console.WriteLine("Record Found");
                Console.WriteLine("--------------------------------------");
                Console.WriteLine("Name   |    City");
                Console.WriteLine(na +            "|"             + ct);
            }
            else
            {
                Console.WriteLine("Record Not Found");
            }
            Console.WriteLine("=======================================");

        }
    }
}
