==================
ShellCheck Results
==================

In ./scripts/./02_exec_shellcheck.sh line 22:
        find $LOCATION -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE
             ^-------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        find "$LOCATION" -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE


In ./scripts/./00_git_details_app.sh line 13:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In ./scripts/./00_git_details_app.sh line 16:
    . /etc/os-release
      ^-------------^ SC1091 (info): Not following: /etc/os-release was not specified as input (see shellcheck -x).


In ./scripts/./00_git_details_app.sh line 36:
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
                                                                                                                                    ^-^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" "$ID"


In ./scripts/./01_exec_aspell.sh line 14:
echo "Spellcheck Results" >> $OUTPUT_FILE
^-- SC2129 (style): Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In ./scripts/./01_exec_aspell.sh line 19:
find $1 -type f | while read -r FILE
     ^-- SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
find "$1" -type f | while read -r FILE


In ./scripts/./01_exec_aspell.sh line 32:
        aspell list < "$FILE" | sort -u | while read WORD
                      ^-----^ SC2094 (info): Make sure not to read and write the same file in the same pipeline.
                                                ^--^ SC2162 (info): read without -r will mangle backslashes.


In ./scripts/./01_exec_aspell.sh line 34:
            grep -n "$WORD" "$FILE" | while read -r LINE
                            ^-----^ SC2094 (info): Make sure not to read and write the same file in the same pipeline.


In ./scripts/./01_exec_aspell.sh line 39:
                echo " - line $LINE_NUMBER:" >> $OUTPUT_FILE
                ^-- SC2129 (style): Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In ./scripts/./02_exec_codespell.sh line 22:
        find $LOCATION -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE
             ^-------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        find "$LOCATION" -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE


In ./scripts/./02_install_codespell_shellcheck.sh line 14:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In ./scripts/./02_install_codespell_shellcheck.sh line 17:
    . /etc/os-release
      ^-------------^ SC1091 (info): Not following: /etc/os-release was not specified as input (see shellcheck -x).


In ./scripts/./02_install_codespell_shellcheck.sh line 34:
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
                                                                                                                                    ^-^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" "$ID"


In ./scripts/./02_install_codespell_shellcheck.sh line 43:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In ./scripts/./01_install_aspell.sh line 13:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In ./scripts/./01_install_aspell.sh line 16:
    . /etc/os-release
      ^-------------^ SC1091 (info): Not following: /etc/os-release was not specified as input (see shellcheck -x).


In ./scripts/./01_install_aspell.sh line 36:
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
                                                                                                                                    ^-^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" "$ID"

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /etc/os-release wa...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2094 -- Make sure not to read and write t...

In .//docker/setup.sh line 11:
. /etc/os-release
  ^-------------^ SC1091 (info): Not following: /etc/os-release was not specified as input (see shellcheck -x).


In .//docker/setup.sh line 25:
  sudo usermod -aG docker ${USER} # need to verify who is the user
                          ^-----^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
  sudo usermod -aG docker "${USER}" # need to verify who is the user


In .//docker/setup.sh line 27:
  note '[+] Please relogin with "sudo su - $USER" command to gain access to docker group'
       ^-- SC2016 (info): Expressions don't expand in single quotes, use double quotes for that.


In .//docker/setup.sh line 47:
  sudo docker compose build -f $PROJECT/docker-compose.yml .
                               ^------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
  sudo docker compose build -f "$PROJECT"/docker-compose.yml .


In .//docker/init.sh line 12:
: ${SSH_USERNAME:=user}
  ^-------------------^ SC2223 (info): This default assignment may cause DoS due to globbing. Quote it.


In .//docker/init.sh line 13:
: ${SSH_USERPASS:=$(dd if=/dev/urandom bs=1 count=15 | base64)}
  ^-- SC2223 (info): This default assignment may cause DoS due to globbing. Quote it.


In .//docker/init.sh line 21:
useradd $SSH_USERNAME
        ^-----------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
useradd "$SSH_USERNAME"


In .//docker/init.sh line 22:
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin $SSH_USERNAME)
                                                         ^-----------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin "$SSH_USERNAME")


In .//docker/init.sh line 23:
echo ssh user password: $SSH_USERPASS
                        ^-----------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
echo ssh user password: "$SSH_USERPASS"


In .//docker/init.sh line 35:
echo "[+] Calling $@"
                  ^-- SC2145 (error): Argument mixes string and array. Use * or separate argument.


In .//scripts/02_exec_shellcheck.sh line 22:
        find $LOCATION -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE
             ^-------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        find "$LOCATION" -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE


In .//scripts/00_git_details_app.sh line 13:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In .//scripts/00_git_details_app.sh line 16:
    . /etc/os-release
      ^-------------^ SC1091 (info): Not following: /etc/os-release was not specified as input (see shellcheck -x).


In .//scripts/00_git_details_app.sh line 36:
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
                                                                                                                                    ^-^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" "$ID"


In .//scripts/01_exec_aspell.sh line 14:
echo "Spellcheck Results" >> $OUTPUT_FILE
^-- SC2129 (style): Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In .//scripts/01_exec_aspell.sh line 19:
find $1 -type f | while read -r FILE
     ^-- SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
find "$1" -type f | while read -r FILE


In .//scripts/01_exec_aspell.sh line 32:
        aspell list < "$FILE" | sort -u | while read WORD
                      ^-----^ SC2094 (info): Make sure not to read and write the same file in the same pipeline.
                                                ^--^ SC2162 (info): read without -r will mangle backslashes.


In .//scripts/01_exec_aspell.sh line 34:
            grep -n "$WORD" "$FILE" | while read -r LINE
                            ^-----^ SC2094 (info): Make sure not to read and write the same file in the same pipeline.


In .//scripts/01_exec_aspell.sh line 39:
                echo " - line $LINE_NUMBER:" >> $OUTPUT_FILE
                ^-- SC2129 (style): Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In .//scripts/02_exec_codespell.sh line 22:
        find $LOCATION -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE
             ^-------^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        find "$LOCATION" -name "*.sh" -exec shellcheck {} + >> $OUTPUT_FILE


In .//scripts/02_install_codespell_shellcheck.sh line 14:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In .//scripts/02_install_codespell_shellcheck.sh line 17:
    . /etc/os-release
      ^-------------^ SC1091 (info): Not following: /etc/os-release was not specified as input (see shellcheck -x).


In .//scripts/02_install_codespell_shellcheck.sh line 34:
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
                                                                                                                                    ^-^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" "$ID"


In .//scripts/02_install_codespell_shellcheck.sh line 43:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In .//scripts/01_install_aspell.sh line 13:
if [[ $? != 0 ]];
      ^-- SC2181 (style): Check exit code directly with e.g. 'if ! mycmd;', not indirectly with $?.


In .//scripts/01_install_aspell.sh line 16:
    . /etc/os-release
      ^-------------^ SC1091 (info): Not following: /etc/os-release was not specified as input (see shellcheck -x).


In .//scripts/01_install_aspell.sh line 36:
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID
                                                                                                                                    ^-^ SC2086 (info): Double quote to prevent globbing and word splitting.

Did you mean: 
        printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" "$ID"


In .//remove_d.sh line 1:
rm -rf jenkins_data/jobs/pipeline_01_spellcheck/builds/
^-- SC2148 (error): Tips depend on target shell and yours is unknown. Add a shebang or a 'shell' directive.


In .//jenkins_data/workspace/push_image_docker_hub/Details_App/build.sh line 8:
APP_VERSION=${1:'0.0.1'}
^---------^ SC2034 (warning): APP_VERSION appears unused. Verify use (or export if used externally).


In .//jenkins_data/war/scripts/yui/cutdown.sh line 1:
# The MIT License
^-- SC2148 (error): Tips depend on target shell and yours is unknown. Add a shebang or a 'shell' directive.


In .//jenkins_data/war/scripts/yui/cutdown.sh line 24:
find . -name README | xargs rm
^-----------------^ SC2038 (warning): Use 'find .. -print0 | xargs -0 ..' or 'find .. -exec .. +' to allow non-alphanumeric filenames.

For more information:
  https://www.shellcheck.net/wiki/SC2145 -- Argument mixes string and array. ...
  https://www.shellcheck.net/wiki/SC2148 -- Tips depend on target shell and y...
  https://www.shellcheck.net/wiki/SC2034 -- APP_VERSION appears unused. Verif...
