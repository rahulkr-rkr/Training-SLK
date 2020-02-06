using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.firstwork
{
    class User
    {
        static void Main(string[] args)
        {
            
            int i;
            int n;
            Console.WriteLine("how many products??");
            n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("---------------------------------------");
            Product[] pObj; 
            pObj = new Product[n];
            /*
            int pno, qty, price;
            string name, desc;
            */
            Console.WriteLine("enter the Product details");
            for (i = 0; i < pObj.Length; i++)
            {
                pObj[i] = new Product()
                {
                    ProductNo = Convert.ToInt32(Console.ReadLine()),
                    ProductName = Console.ReadLine(),
                    Description = Console.ReadLine(),
                    Quantity = Convert.ToInt32(Console.ReadLine()),
                    Price = Convert.ToInt32(Console.ReadLine())
                };
                Console.WriteLine("--------------------------------------");
                
            }


           /*
            Console.WriteLine("SAVE FUNCTION");
            Console.WriteLine("--------------------------------------");
            for (i = 0; i < pObj.Length; i++)
            {
                Status = pObj[i].Save(pno,name,);
                Console.WriteLine("Student Saved Status:" + Status);
                Console.WriteLine("=======================================");

            }*/

            bool Status;
            string na = "", ct = "";
            int k;
            Console.WriteLine("enter the ID");
            k = Convert.ToInt32(Console.ReadLine());
            for (i = 0; i < pObj.Length; i++)
            {
                Status = pObj[i].Get(k, ref na, ref ct);
                if (Status)
                {
                    Console.WriteLine("Record Found");
                    Console.WriteLine("--------------------------------------");
                    Console.WriteLine("Name   |    Description");
                    Console.WriteLine(na + "|" + ct);
                }
                else
                {
                    //Console.WriteLine("NOt FOUND");
                    pObj[i].Display2();
                    return;
                }
                Console.WriteLine("=======================================");
            }
            Console.WriteLine("PRODUCT DETAILS");
            Console.WriteLine("--------------------------------------");
            for (i = 0; i< pObj.Length; i++)
            {
                pObj[i].Display1();
            }
            
          
        
            
        }
        private static void SimpleProduct()
        {
            Product pObj; 
            pObj = new Product();
           

            Console.WriteLine("DISPLAY FUNCTION");
            Console.WriteLine("--------------------------------------");
            pObj.Display1();
            Console.WriteLine("=======================================");
        }
        }
}
