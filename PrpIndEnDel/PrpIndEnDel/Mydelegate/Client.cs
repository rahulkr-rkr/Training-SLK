using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.Mydelegate
{
    class Client
    {
        static void Main(string[] args)
        {
            //simple delegate
            Console.WriteLine("simple delegate");
            Banner.dispadd((AddressOf)pepsi);

            //multicast Delegate
            Console.WriteLine("multicast Delegate");
            AddressOf aof;
            aof = (AddressOf)pepsi;
            aof += (AddressOf)ThumpsUp;
            Banner.dispadd(aof);


            //aof();

            //Anonymous Delegate-C# 2.0 feature
            Console.WriteLine("Anonymous Delegate");
            Banner.dispadd(delegate ()
            {
                string sName="Nitin Rao";
                Console.WriteLine("Sname:{0}", sName);
            });


            /*lambda expression
             * Better than delegate
             * Feature of C# 3.0
             * */
            //j => j * 42;
            Console.WriteLine("lambda expression");
            Banner.dispadd(() => 
            { int j = 2;
                j = j * 42;
                Console.WriteLine(j);
            });
            
              
              
        }
        public static void pepsi()
        {
            int i = 0;
            while(i<10)
            {
                Console.WriteLine("Welcome to the World of PEPSI");
                i++;
            }
            //System.Windows.Forms.MessageBox.Show("Hello World")
        }

        public static void ThumpsUp()
        {
            Console.WriteLine("Welcome to the world of THUMPSUP");
        }
    }
}
