#!/usr/bin/env ruby


Dir.glob("**/{*,.*}") {|f| 
         system ("git rm #{f}")if f.match(/^public/)|| 
                                  f.match(/swp$/)||
                                  f.match(/swo$/)|| 
                                  f.match(/un~$/)||
                                  f.match(/^log/)||
                                  f.match(/yml$/)||
                                  f.match(/^tmp/)||
                                  f.match(/~$/) 
                                  }


