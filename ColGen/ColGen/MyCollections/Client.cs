using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ColGen.MyCollections
{
    class Client
    {
        static void Main(string[] args)
        {
            //NormalCollections nc;
            //nc = new NormalCollections();
            //nc.myArrayList();

            GenericCollections gc;
            gc = new GenericCollections();

            //gc.MyList();

            //gc.MySortedList();

            //gc.MyQueue();

            //gc.MyStack();

            gc.MyListUsingCustomType();


        }
       

    }
}
