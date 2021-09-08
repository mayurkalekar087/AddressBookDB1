using System;

namespace AddressBookADO
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome To AddressBook Data Base Program!");
            AddressBookSQLRepo repo = new AddressBookSQLRepo();
            AddressBookModel enter = new AddressBookModel();
            repo.GetDetails();
            
        }
    }
}
