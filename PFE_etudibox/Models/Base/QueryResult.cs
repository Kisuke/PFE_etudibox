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
        private int RowNumber = 0;

        public QueryResult(MySqlDataReader d)
        {
            this.reader = d;
            this.dataList = new List<List<Object>>();
        }

        /**
        * Name : GetDataList
        * Function : Initialize
        * Input : 
        * Output: 
        * */
        public void Initialize()
        {
            this.reader.Read();

            //On itinitialise le nombre de ligne
            int RowNumber = reader.Cast<object>().Count();

            //On itinitialise le nombre de champ
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

        /**
        * Name : GetDataList
        * Function : Verify if the query is initialized
        * Input : 
        * Output: List<List<Object>> dataList
        * */
        public List<List<Object>> GetDataList()
        {
            return this.dataList; //Retourne une copie de la liste
        }


        /**
        * Name : IsInitialized
        * Function : Verify if the query is initialized
        * Input : 
        * Output: bool FieldNumber
        * */
        public bool IsInitialized()
        {
            return this.initialized;
        }

        /**
         * Name : GetFieldCount
         * Function : Return the number of field (for a query) 
         * Input : 
         * Output: int FieldNumber
         * */
        public int GetFieldCount()
        {
            return this.FieldNumber;
        }

        /**
         * Name : GetRowCount
         * Function : Return the number of row (for a query) 
         * Input : 
         * Output: int RowNumber
         * */
        public int GetRowCount()
        {
            return this.RowNumber;
        }

        /**
         * Name : GetValue
         * Function : Return the value of a row and field
         * Input : int row, int field
         * Output: Object row
         * */
        public Object GetValue(int row, int field)
        {
            return this.dataList[row][field];
            
        }

        /**
         * Name : GetRow
         * Function : Return a row 
         * Input : int (number of the )row
         * Output: Object row
         * */
        public Object GetRow(int row)
        {
            return this.dataList[row];
        }

    }
}