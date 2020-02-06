using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;   //additinal

namespace ColGen.MyCollections
{
    class NormalCollections
    {
        public void myArrayList()
        {
            ArrayList al;
            al = new ArrayList();
            al.Add("Japan");
            //al.Add(234);
            al.Add("India");
            al.Add("China");
            al.Add("USA");
            al.Add("Singapore");

            Console.WriteLine("items in ArrayList:");
            Console.WriteLine("------------------");
            foreach (object o in al)
            {
                Console.WriteLine(o);
            }

            try
            {
                al.Sort();
            }
            catch(Exception exc)
            {
                Console.WriteLine("Couldn't Sort");
            }

            Console.WriteLine("\n\nAfter sorting:");
            Console.WriteLine("---------------------");
            foreach (object o in al)
            {
                Console.WriteLine(o.ToString());
            }
            Console.WriteLine("\n\n India Is in the List??");
            Console.WriteLine("Serach Result:" + al.Contains("India"));

        }
    }
}
