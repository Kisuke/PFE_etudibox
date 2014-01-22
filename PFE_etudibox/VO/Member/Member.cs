using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFE_etudibox.VO.MemberVO 
{
    public class Member
    {
        public String user_id { get; private set; }
        public String login { get; private set; }
        public String lastname { get; private set; }
        public String firstname { get; private set; }
        public String email { get; private set; }
        public String password { get; private set; }

        public Member(String login, String lastname, String firstname, String email, String password)
        {
            this.login = login;
            this.lastname = lastname;
            this.firstname = firstname;
            this.email = email;
            this.password = password;
        }

        public Member(string user_id, string lastname, string firstname)
        {
            // TODO: Complete member initialization
            this.user_id = user_id;
            this.lastname = lastname;
            this.firstname = firstname;
        }

        public Member(string user_id)
        {
            // TODO: Complete member initialization
            this.user_id = user_id;
        }

        public Member(string user_id, string lastname, string firstname, string email)
        {
            // TODO: Complete member initialization
            this.user_id = user_id;
            this.lastname = lastname;
            this.firstname = firstname;
            this.email = email;
        }

    }
}