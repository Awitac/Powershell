# Creatated by Awitac 
# Changes                                                                              ES 2021-06-16 
# 
#######################################################################################################
#
Import-Module Webadministration
Foreach ($Site in get-website) { Foreach ($Bind in $Site.bindings.collection) {[pscustomobject]@{name=$Site.name;Protocol=$Bind.Protocol;Bindings=$Bind.BindingInformation}}}
