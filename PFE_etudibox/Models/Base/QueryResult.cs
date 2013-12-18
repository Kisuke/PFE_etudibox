using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace PFE_etudibox.Models.Base
{
    public class QueryResult
    {
        private MySqlDataReader reader;
        private List<List<Object>> dataList;
        private bool initialized = false;
        private int FieldNumber = 0;

        public QueryResult(MySqlDataReader d)
        {
            this.reader = d;
            this.dataList = new List<List<Object>>();
        }

        public void Initialize()
        {
           /* this.reader.Read();
            this.FieldNumber = reader.FieldCount;
            if (this.FieldNumber > 0)
            {
                while (this.reader.Read())
                {
                    List<Object> tempList = new List<Object>();
                    for (int i = 0; i < this.FieldNumber; i++)
                    {
                        tempList.Add(reader.GetValue(i));
                    }
                    this.dataList.Add(tempList);
                }
            }
            this.initialized = true;
            this.reader.Close();*/
             
            this.reader.Read();
            this.FieldNumber = reader.FieldCount;
            if (this.FieldNumber > 0)
            {
                this.reader.Read();
                
                    List<Object> tempList = new List<Object>();
                    for (int i = 0; i < this.FieldNumber; i++)
                    {
                        tempList.Add(reader.GetValue(i));
                    }
                    this.dataList.Add(tempList);
                
            }
            this.initialized = true;
            
        }

        public List<List<Object>> GetDataList()
        {
            return this.dataList; //Retourne une copie de la liste
        }

     

        public bool IsInitialized()
        {
            return this.initialized;
        }

        public int GetFieldCount()
        {
            return this.FieldNumber;
        }

        public Object GetValue(int row, int field)
        {
            return this.dataList[row][field];
            
        }

    }
}