#  Bash script to creating command retry intervals


The try Bash script creating command retry intervals with this format :

try -i Interval -n Number COMMAND

for example :
```bash
try -i 15 -n 10 flask app test
```
in try_optional_argument file we have default number for variable. when the Command exit with code 0 , it means script run successful and if code is not 0 the process continues till successful execution.

This Bash script creating command retry intervals with this format :

try -i Interval -n Number COMMAND


[@dwsclass](https://github.com/dwsclass) dws-dev-003-bash
[@dwsclass](https://github.com/dwsclass)dws-dev-002-bash
