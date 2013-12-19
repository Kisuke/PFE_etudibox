using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFE_etudibox.Controllers.Inscription
{
    public class Member
    {
        public String login { get; set; }
        public String lastname { get; set; }
        public String firstname { get; set; }
        public String email { get; set; }
        public String password { get; set; }

        public Member(String login, String lastname, String firstname, String email, String password)
        {
            this.login = login;
            this.lastname = lastname;
            this.firstname = firstname;
            this.email = email;
            this.password = password;
        }
    }
}