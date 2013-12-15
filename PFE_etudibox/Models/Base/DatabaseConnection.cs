using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Diagnostics;
using System.Windows.Forms;

namespace PFE_etudibox.Models.Base
{
   
    public class DatabaseConnection
    {
        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;

        //Constructor
        public DatabaseConnection()
        {
            Initialize();
        }

        //Initialize values
        private void Initialize()
        {
            server = "localhost";
            database = "etudibox";
            uid = "admin.etudibox";
            password = "efreipfe";
            string connectionString;
            connectionString = "SERVER=" + server + ";" + "DATABASE=" + 
		    database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

            connection = new MySqlConnection(connectionString);
        }

        //open connection to database
        private bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                switch (ex.Number)
                {
                    case 0:
                        MessageBox.Show("Cannot connect to server.  Contact administrator");
                        break;

                    case 1045:
                        MessageBox.Show("Invalid username/password, please try again");
                        break;
                }
                return false;
            }
        }

        //Close connection
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
        }

    //Insert statement
        public String Query(string query)
        {
            String result = null;
            //open connection
            if (this.OpenConnection() == true)
            {
                //create command and assign the query and connection from the constructor
                MySqlCommand cmd = new MySqlCommand(query, connection);

                //Execute command
                cmd.ExecuteNonQuery();

                MySqlDataReader reader = cmd.ExecuteReader();

                //
                reader.Read();
                
                //get the value of column 1
                result = reader.GetString(0);

                //
                reader.Close();

                //close connection
                this.CloseConnection();

            }
                return result;
            
        }
        //Backup
        public void Backup()
        {
        }

        //Restore
        public void Restore()
        {
        }

        internal object query(string p)
        {
            throw new NotImplementedException();
        }

        internal void Query()
        {
            throw new NotImplementedException();
        }
    }
}