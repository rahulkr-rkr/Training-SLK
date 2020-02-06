using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace ColGen.MyCollections
{
    class GenericCollections
    {
        public void MyList()
        {
            List<string> al = new List<string>();
            al.Add("JapanGeneric");
            al.Add("India");
            al.Add("China");
            al.Add("USA");
            al.Add("Singapore");
            //al.Add(234);  //compilation error

            Console.WriteLine("Items in Generic list");
            Console.WriteLine("-----------------------");
            foreach (string s1 in al)
            {
                Console.WriteLine(s1);
            }
            try
            {
                al.Sort();
            }
            catch (Exception exc)
            {
                Console.WriteLine("Couldn't Sort");
            }
            Console.WriteLine("\n\nAfter sorting:");
            Console.WriteLine("---------------------");
            foreach (string s1 in al)
            {
                Console.WriteLine(s1.ToString());
            }
            Console.WriteLine("\n\nIndia Is in the List??");
            Console.WriteLine("Search Result:" + al.Contains("India"));
        }

        public void MySortedList()
        {
            //meant for creating name value pair in .net using generics
            //by default it sorts using key
            Console.WriteLine("Items in the Generic List");
            SortedList<string, string> sl = new SortedList<string, string>();

            sl.Add("dbJap", "Japan");
            sl.Add("daInd","India");
            sl.Add("cUHD","United Kingdom");
            sl.Add("bUSA","United STates of America");
            sl.Add("aSng","Singapore");
            //sl.Add("aSng", "Singaaaaapore");  //duplicaye key runtime eeror
            //sl.Add(23, "Lanka");   //compilation error

            Console.WriteLine("Key   |   Value  ");
            Console.WriteLine("----------------------");
            foreach (KeyValuePair<string,string> de in sl)
            {
                Console.WriteLine("{0}| {1}",de.Key,de.Value);
            }
        }

        public void MyQueue()
        {
            //queue usinggenerics (FIRST IN FIRST OUT)
            Queue<string> mq = new Queue<string>();

            mq.Enqueue("Object 1 arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            mq.Enqueue("Object 2 arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            mq.Enqueue("Object 3 arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            mq.Enqueue("Object 4 arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            mq.Enqueue("Object 5 arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            //mq.Enqueue(234);   //complilation error;
            //for navigating alone
            foreach (string s in mq)
            {
                Console.WriteLine(s);
            }

            Console.WriteLine("\nItems in the Generic Queue:{0}",mq.Count);
            //For Dequeing
            Console.WriteLine("\n");
            int iTempCount = 6;
            while(mq.Count>0)
            {
                Console.WriteLine(mq.Dequeue());
                if(iTempCount < 10)
                {
                    Thread.Sleep(15);
                    mq.Enqueue("Object " + iTempCount + " Arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
                    iTempCount++;
                }
            }
            //queue is empty now
            Console.WriteLine("\nItems in the Generic Queue:{0}",mq.Count);
        }

        public void MyStack()
        {
            //First In Last Out Process
            Stack<string> st = new Stack<string>();
            st.Push("Object 1 Arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            st.Push("Object 2 Arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            st.Push("Object 3 Arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            st.Push("Object 4 Arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            st.Push("Object 5 Arrived at " + System.DateTime.Now + ":" + System.DateTime.Now.Millisecond);
            Thread.Sleep(10);
            //st.Push(1235);     //compilation error
            foreach (string s in st)
            {
                Console.WriteLine(s);
            }
            Console.WriteLine("\nNumber of Items in Generic Stack:"+st.Count);
            while(st.Count > 0)
            {
                Console.WriteLine("{0}", st.Pop());
            }
            Console.WriteLine("\nNUmber of items in generic stack :" + st.Count);
        }

        public void MyListUsingCustomType()
        {
            Console.WriteLine("Inside Generic System Collections list for Employee");
            List<MyEmployee> emplist = new List<MyEmployee>();

            MyEmployee eObj1 = new MyEmployee()
            {
                No = 51,
                Name = "Nitin",
                Age = 25
            };
            emplist.Add(eObj1);

            eObj1 = new MyEmployee()
            {
                No = 53,
                Name = "Tanvir",
                Age = 24
            };
            emplist.Add(eObj1);

            eObj1 = new MyEmployee()
            {
                No = 52,
                Name = "Anil",
                Age = 22
            };
            emplist.Add(eObj1);

            eObj1 = new MyEmployee()
            {
                No = 55,
                Name = "Rahul",
                Age = 23
            };
            emplist.Add(eObj1);

            eObj1 = new MyEmployee()
            {
                No = 54,
                Name = "Vishwanath",
                Age = 21
            };
            emplist.Add(eObj1);

            Console.WriteLine("Employee List without Sorting");
            foreach (MyEmployee e in emplist)
            {
                //poosible because IEnumerable is implemented by List
                e.display();
            }
            try
            {
                emplist.Sort();
                //emplist.Reverse();
                //error if employee does not implement IComparable interface
                //internally will use compareTo(..) function
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.InnerException);
            }

            Console.WriteLine("Employee List After Sorting");
            for (int x = 0; x < emplist.Count; x++)
            {
                emplist[x].display();     //iteration using indexers
                //emplist.get(x).display();    //if indexes was not implemented by list
            }
        }

    }
}
