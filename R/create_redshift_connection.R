#' Set Redshift Credentials

#' Create a file that contains information to connect to redshift
#' @import rjson
#' @export
set_redshift_credentials<-
  function(username, password, host, port){
    json_list = list()
    json_list[['username']]<-username
    json_list[['password']]<-password
    json_list[['host']]<-host
    json_list[['port']]<-port
    json<-rjson::toJSON(json_list)
    write(json, '~/redshift.json.nogit')
  }
