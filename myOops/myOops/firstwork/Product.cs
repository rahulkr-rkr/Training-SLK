using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.firstwork
{
    class Product
    {
        public int ProductNo;
        public string ProductName;
        public string Description;
        public int Quantity;
        public int Price;

        public bool Save(int pno, string name, string desc,int qty,int price)
        {
            ProductNo = pno;
            ProductName = name;
            Description = desc;
            Quantity = qty;
            Price = price;
            return true; 
        }
    
        public bool Get(int pno,ref string name, ref string desc)
        {
            if (ProductNo == pno)
            {
                name = ProductName;
                desc = Description;
                return true;
            }
            else
            {
                return false;
            }
        }
        

        public void Display1()
        { 
    
            Console.WriteLine("Product Number: " + ProductNo);
            Console.WriteLine("Product Name: " + ProductName);
            Console.WriteLine("Product description: " + Description);
            Console.WriteLine("Product quantity: " + Quantity); 
            Console.WriteLine("Product Price: " + Price);
            Console.WriteLine("-----------------------------------------");
        }
        public void Display2()
        {
            Console.WriteLine("SORRY!!! no ReCords FOUNd :(");
        }
    }
}
