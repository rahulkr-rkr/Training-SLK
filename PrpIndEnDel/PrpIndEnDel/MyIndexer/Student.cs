using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace PrpIndEnDel.MyIndexer
{
    class Student
    {
        int _No;
        string _Name;
        int _Age;
        string _Gender;

        public readonly int Length = 4;   //No of Variables Visible through Indexer

        //Numeric Indexer
        public object this[int IndexLocation]
        {
            set
            {
                if (IndexLocation == 0)
                    _No = int.Parse(value.ToString());

                if (IndexLocation == 1)
                    _Name = value.ToString();

                if (IndexLocation == 2)
                    _Age = int.Parse(value.ToString());

                if (IndexLocation == 3)
                    _Gender = value.ToString();
            }
            get
            {
                switch (IndexLocation)
                {
                    case 0:
                        return _No;
                    case 1:
                        return _Name;
                    case 2:
                        return _Age;
                    case 3:
                        return _Gender;
                    default:
                        return null;

                }
            }
        }
        //String Indexer
        public object this[string IndexName]
        {
            set
            {
                if (IndexName.Equals("NO", StringComparison.OrdinalIgnoreCase))
                    _No = int.Parse(value.ToString());

                if (IndexName.Equals("Name", StringComparison.OrdinalIgnoreCase))
                    _Name = value.ToString();

                if (IndexName.Equals("Age", StringComparison.OrdinalIgnoreCase))
                    _Age = int.Parse(value.ToString());

                if (IndexName.Equals("Gender", StringComparison.OrdinalIgnoreCase))
                    _Gender = value.ToString();
            }
            get
            {
                switch (IndexName.ToLower())
                {
                    case "no":
                        return _No;
                    case "name":
                        return _Name;
                    case "age":
                        return _Age;
                    case "gender":
                        return _Gender;
                    default:
                        return null;
                }
            }
        }

        public void Display()
        {
            //print using private variables
            Console.WriteLine("No: " + _No);
            Console.WriteLine("Name: " + _Name);
            Console.WriteLine("Age: " + _Age);
            Console.WriteLine("Gender: " + _Gender);
        }
    }
}
