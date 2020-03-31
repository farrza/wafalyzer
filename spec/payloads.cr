XSS   = "<script>alert(\"XSS\");</script>"
SQLI  = "UNION+SELECT+ALL+FROM+information_schema+AND+%27+or+SLEEP%285%29+or+%27"
LFI   = "../../../../etc/passwd"
QUERY = "a=#{XSS}&b=#{SQLI}&c=#{LFI}"
