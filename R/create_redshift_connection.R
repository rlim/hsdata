create_redshift_connection<-
  function(username, password, host, port){
    library(rjson)
    json_list = list()
    json_list[['username']]<-username
    json_list[['password']]<-password
    json_list[['host']]<-host
    json_list[['port']]<-port
    json<-toJSON(json_list)
    write(json, '~/redshift.json.nogit')
  }
