using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.MyIndexer
{
    class Client
    {
        static void Main(string[] args)
        {
            /*
            Student sObj = new Student();

            Console.WriteLine("Numeric Indexer\n");
            sObj[0] = 1;
            sObj[1] = "Nitin Rao";
            sObj[2] = 24;
            sObj[3] = "Male";
            sObj.Display();
            Console.WriteLine("--------------------------------------------------------------");

            Console.WriteLine("String Indexer\n");
            sObj["no"] = 2;
            sObj["name"] = "tanvir Mukit";
            sObj["age"] = 25;
            sObj["gender"] = "Male";
            sObj.Display();
            Console.WriteLine("--------------------------------------------------------------");

            Console.WriteLine("Indexer used for accessing class members with loop\n");
            for (int icount = 0; icount < sObj.Length; icount++)
            {
                Console.WriteLine(sObj[icount]);
            }
            Console.WriteLine("--------------------------------------------------------------");
            */

            Student[] sObj1;
            sObj1 = new Student[2];

            sObj1[0] = new Student();
            sObj1[0][0] = 1;
            sObj1[0][1] = "Nitin Rao";
            sObj1[0][2] = 22;
            sObj1[0][3] = "Male";

            sObj1[1] = new Student();
            sObj1[1][0] = 2;
            sObj1[1][1] = "Vishwanath";
            sObj1[1][2] = 26;
            sObj1[1][3] = "Male";


            Console.WriteLine("Indexer Used for accessing array of class memeber with loop\n");
            for (int iRowCount = 0; iRowCount < sObj1.Length; iRowCount++)
            {
                
                for (int iColCount = 0; iColCount < sObj1[iRowCount].Length; iColCount++)
                {
                    
                    Console.WriteLine(sObj1[iRowCount][iColCount]+ "  ");
                    

                }
                Console.WriteLine();
                //without indexer
                //Console.WriteLine((sObj1[iRowCount].No + Console.WriteLine(sObj1[iRowCount].Name);
            }

            Console.WriteLine("--------------------------------------------------------------");
            //display the selected columns
            DisplaySelectColumns(sObj1, "name");
            Console.WriteLine("--------------------------------------------------------------");
        }

        public static void DisplaySelectColumns(Student []sObj,params string []SelectedItems)
        {
            Console.WriteLine("\nDisplay Selected Columns");
            for (int iRowCount = 0; iRowCount < sObj.Length; iRowCount++)
            {
                for (int iColCount = 0; iColCount < SelectedItems.Length; iColCount++)
                {
                    Console.Write(sObj[iRowCount][SelectedItems[iColCount]] + " ");
                    
                    //visualize it as
                    //Console.Write(sObj[iRowCount]["No"]);
                }
                Console.WriteLine();
            }
        }
    }
}
