VERSION = "0.1.0"
LOGO    = <<-STRING
 \e[31m
                                     '
                               . (
               '                    )
        )           (              )
                     .      .  '  .
     (    , )       (    )  (   ',    )
      .' ) ( . )    ,  ( ,     )   ( .
   ). , ( .   (\e[36m_\e[0m\e[31m.) ( , \e[0m\e[36m_\e[0m\e[31m)  .' (  ,    )
  (\e[0m\e[36m_\e[0m\e[36m\e[31m,) .\e[0m\e[36m_ _\e[0m\e[31m),\e[0m\e[36m / _/\e[0m\e[31m,\e[0m\e[36m_\e[0m\e[31m)\e[0m\e[36m /\e[0m\e[31m.\e[0m\e[36m/_\e[0m\e[31m)\e[0m\e[36m_\e[0m\e[31m'.\e[0m\e[36m_\e[0m\e[31m)\e[0m \e[36m_\e[0m\e[31m,.\e[0m\e[36m_\e[36m\e[31m('\e[0m\e[36m_\e[0m\e[31m)\e[0m\e[36m
 | |/|/ / _ `/ _/ _ `/ / // /_ // -_) __/
 |__,__/\\_,_/_/ \\_,_/_/\\_, //__/\\__/_/   
                      /___/              \e[0m
STRING

BLINKING_LOGO = <<-STRING
    \e[31;5m
                                        '
                                  . (
                  '                    )
           )           (              )
                        .      .  '  .
        (    , )       (    )  (   ',    )
         .' ) ( . )    ,  ( ,     )   ( .
      ). , ( .   (\e[0m\e[36m_\e[0m\e[31;5m.) ( , \e[0m\e[36m_\e[0m\e[31;5m)  .' (  ,    )
     (\e[0m\e[36m_\e[0m\e[36m\e[31;5m,) .\e[0m\e[36m_ _\e[0m\e[31;5m),\e[0m\e[36m / _/\e[0m\e[31;5m,\e[0m\e[36m_\e[0m\e[31;5m)\e[0m\e[36m /\e[0m\e[31;5m.\e[0m\e[36m/_\e[0m\e[31;5m)\e[0m\e[36m_\e[0m\e[31;5m'.\e[0m\e[36m_\e[0m\e[31;5m)\e[0m \e[36m_\e[0m\e[31;5m,.\e[0m\e[36m_\e[36m\e[31;5m('\e[0m\e[36m_\e[0m\e[31;5m)\e[0m\e[36m
    | |/|/ / _ `/ _/ _ `/ / // /_ // -_) __/
    |__,__/\\_,_/_/ \\_,_/_/\\_, //__/\\__/_/   
                         /___/              \e[0m
STRING

DESCRIPTION = <<-STRING
\e[36m                  version  #{VERSION}\e[0m
\e[31m         Web application firewall detector\e[0m
\e[36m                Farrza @ NeuraLegion\e[0m
STRING

BANNER = BLINKING_LOGO + "\n\n" + DESCRIPTION + "\n\n"
