==================
Spellcheck Results
==================

> File: ./INSTALL.md
> File: ./credentials
 - line 1:
  * 'machine localhost'
  # 'localhost'
  + Suggestions: local,host

> File: ./scripts/aspell_02_exec.sh
 - line 5:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 12:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'DS'
  + Suggestions: D'S,DOS

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 5:
  * '# Autor: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 34:
  * 'aspell list < "$FILE" | sort -u | while read WORD'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 40:
  * 'SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 40:
  * 'SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)'
  # 'awk'
  + Suggestions: AK,awl

 - line 4:
  * '# This Scrips runs spell check for all files in the Details-app project'
  # 'fi'
  + Suggestions: fie,fir

 - line 14:
  * '# initialize the output file'
  # 'fi'
  + Suggestions: fie,fir

 - line 20:
  * '# loop through all files and directories with excluding specified paths'
  # 'fi'
  + Suggestions: fie,fir

 - line 21:
  * 'find . -type f | while read -r FILE'
  # 'fi'
  + Suggestions: fie,fir

 - line 29:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 50:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 53:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 12:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'jenkins'
  + Suggestions: Jenkins,jerkins

 - line 9:
  * 'OUTPUT_FILE="reports/spellcheck_results.md"'
  # 'md'
  + Suggestions: MD,Md

 - line 12:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'md'
  + Suggestions: MD,Md

 - line 10:
  * 'pwd'
  # 'pwd'
  + Suggestions: PD,Pd

 - line 39:
  * 'LINE_CONTENT=$(echo "$LINE" | cut -d: -f2- | sed 's/^[ \t]*//;s/[ \t]*$//')'
  # 'sed'
  + Suggestions: seed,sued

 - line 12:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'spellchech'
  + Suggestions: spellcheck,spellchecker

 - line 12:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'spelltest'
  + Suggestions: spell,test

 - line 11:
  * 'whoami'
  # 'whoami'
  + Suggestions: wham,whom

> File: ./scripts/code_shell_spell_01_install.sh
 - line 6:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 7:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 7:
  * '# Collaborator : Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 6:
  * '# Autor: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 32:
  * 'sudo apk --no-cache --update add py3-pip shellcheck'
  # 'apk'
  + Suggestions: AK,AP

 - line 5:
  * '# Packages: python3-pip, codespell, shellcheck, epel-release'
  # 'codespell'
  + Suggestions: code,spell

 - line 8:
  * '# https://linuxcommandlibrary.com/man/codespell'
  # 'codespell'
  + Suggestions: code,spell

 - line 18:
  * 'pip3 install codespell'
  # 'codespell'
  + Suggestions: code,spell

 - line 20:
  * 'echo "[+] codespell & shellcheck installed on Debian"'
  # 'codespell'
  + Suggestions: code,spell

 - line 26:
  * 'pip3 install codespell'
  # 'codespell'
  + Suggestions: code,spell

 - line 28:
  * 'echo "[+] codespell & shellcheck installed on Rocky"'
  # 'codespell'
  + Suggestions: code,spell

 - line 33:
  * 'pip3 install codespell'
  # 'codespell'
  + Suggestions: code,spell

 - line 35:
  * 'echo "[+] codespell & shellcheck installed on Alpine"'
  # 'codespell'
  + Suggestions: code,spell

 - line 15:
  * 'if [[ $ID = "debian" ]]; then'
  # 'debian'
  + Suggestions: Debian,Durban

 - line 24:
  * 'sudo dnf update -y'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 25:
  * 'sudo dnf -y install python3-pip epel-release shellcheck'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 23:
  * 'elif [[ $ID = "rocky" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 31:
  * 'elif [[ $ID = "alpine" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 5:
  * '# Packages: python3-pip, codespell, shellcheck, epel-release'
  # 'epel'
  + Suggestions: Peel,peel

 - line 25:
  * 'sudo dnf -y install python3-pip epel-release shellcheck'
  # 'epel'
  + Suggestions: Peel,peel

 - line 43:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 40:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'ment'
  + Suggestions: meant,men

 - line 13:
  * '. /etc/os-release'
  # 'os'
  + Suggestions: OS,Os

 - line 40:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'printf'
  + Suggestions: print,prints

 - line 5:
  * '# Packages: python3-pip, codespell, shellcheck, epel-release'
  # 'py'
  + Suggestions: Pu,pay

 - line 17:
  * 'sudo apt install -y python3-pip shellcheck'
  # 'py'
  + Suggestions: Pu,pay

 - line 25:
  * 'sudo dnf -y install python3-pip epel-release shellcheck'
  # 'py'
  + Suggestions: Pu,pay

 - line 32:
  * 'sudo apk --no-cache --update add py3-pip shellcheck'
  # 'py'
  + Suggestions: Pu,pay

 - line 5:
  * '# Packages: python3-pip, codespell, shellcheck, epel-release'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 9:
  * '# https://www.cyberciti.biz/programming/improve-your-bashsh-shell-script-with-shellcheck-lint-script-analysis-tool/'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 17:
  * 'sudo apt install -y python3-pip shellcheck'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 20:
  * 'echo "[+] codespell & shellcheck installed on Debian"'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 25:
  * 'sudo dnf -y install python3-pip epel-release shellcheck'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 28:
  * 'echo "[+] codespell & shellcheck installed on Rocky"'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 32:
  * 'sudo apk --no-cache --update add py3-pip shellcheck'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 35:
  * 'echo "[+] codespell & shellcheck installed on Alpine"'
  # 'shellcheck'
  + Suggestions: spellcheck,shell

 - line 16:
  * 'sudo apt update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 17:
  * 'sudo apt install -y python3-pip shellcheck'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 24:
  * 'sudo dnf update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 25:
  * 'sudo dnf -y install python3-pip epel-release shellcheck'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 32:
  * 'sudo apk --no-cache --update add py3-pip shellcheck'
  # 'sudo'
  + Suggestions: Saudi,sod

> File: ./scripts/git_details_app.sh
 - line 5:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'Detailes'
  + Suggestions: Detailed,Details

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 5:
  * '# Autor: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 14:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'github'
  + Suggestions: GitHub,git

 - line 11:
  * 'git clone https://github.com/orinahum/Details_App.git /tmp/Details_App/'
  # 'github'
  + Suggestions: GitHub,git

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'repo'
  + Suggestions: Rep,rep

 - line 9:
  * '# check if the directory /tmp/Details_APP/ is not exists and clone repo'
  # 'repo'
  + Suggestions: Rep,rep

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'tmp'
  + Suggestions: tamp,temp

 - line 9:
  * '# check if the directory /tmp/Details_APP/ is not exists and clone repo'
  # 'tmp'
  + Suggestions: tamp,temp

 - line 10:
  * 'if [ ! -d "/tmp/Details_App/" ]; then'
  # 'tmp'
  + Suggestions: tamp,temp

 - line 11:
  * 'git clone https://github.com/orinahum/Details_App.git /tmp/Details_App/'
  # 'tmp'
  + Suggestions: tamp,temp

> File: ./scripts/aspell_01_install.sh
 - line 5:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 5:
  * '# Autor: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 28:
  * 'sudo apk --no-cache --update add aspell'
  # 'apk'
  + Suggestions: AK,AP

 - line 4:
  * '# This Scrips Install aspell base on Linux distributions'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 15:
  * 'sudo apt-get -y install aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 17:
  * 'echo "[+] aspell installed on Debian"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 22:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 24:
  * 'echo "[+] aspell installed on Rocky"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 28:
  * 'sudo apk --no-cache --update add aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 30:
  * 'echo "[+] aspell installed on Alpine"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 22:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'crb'
  + Suggestions: crab,crib

 - line 13:
  * 'if [[ $ID = "debian" ]]; then'
  # 'debian'
  + Suggestions: Debian,Durban

 - line 21:
  * 'sudo dnf update -y'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 22:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 20:
  * 'elif [[ $ID = "rocky" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 27:
  * 'elif [[ $ID = "alpine" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 22:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'enablerepo'
  + Suggestions: enabler,enablers

 - line 38:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 35:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'ment'
  + Suggestions: meant,men

 - line 11:
  * '. /etc/os-release'
  # 'os'
  + Suggestions: OS,Os

 - line 35:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'printf'
  + Suggestions: print,prints

 - line 14:
  * 'sudo apt-get update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 15:
  * 'sudo apt-get -y install aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 21:
  * 'sudo dnf update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 22:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 28:
  * 'sudo apk --no-cache --update add aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

> File: ./README.md
 - line 1:
  * '# jenkins_task'
  # 'jenkins'
  + Suggestions: Jenkins,jerkins

> File: ./jenkins_pipelines/Jenkinsfile_02_CodeShellCheck
 - line 5:
  * 'stage('Install Codespell & Shellchack') {'
  # 'Codespell'
  + Suggestions: Code,spell

 - line 14:
  * 'stage('Exec Codespell & Shellchack') {'
  # 'Codespell'
  + Suggestions: Code,spell

 - line 5:
  * 'stage('Install Codespell & Shellchack') {'
  # 'Shellchack'
  + Suggestions: Shellac,Sherlock

 - line 14:
  * 'stage('Exec Codespell & Shellchack') {'
  # 'Shellchack'
  + Suggestions: Shellac,Sherlock

 - line 26:
  * 'archiveArtifacts artifacts: './reports/code_shell_spell_results.md', allowEmptyArchive: true'
  # 'allowEmptyArchive'
  - No suggestions available

 - line 26:
  * 'archiveArtifacts artifacts: './reports/code_shell_spell_results.md', allowEmptyArchive: true'
  # 'archiveArtifacts'
  + Suggestions: archive,Artifacts

 - line 8:
  * 'chmod +x scripts/code_shell_spell_01_install.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 17:
  * 'chmod +x scripts/code_shell_spell_02_exec.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 18:
  * 'bash scripts/code_shell_spell_02_exec.sh /tmp/Details_App/'
  # 'tmp'
  + Suggestions: tamp,temp

> File: ./jenkins_pipelines/Jenkinsfile_04_Build
> File: ./jenkins_pipelines/Jenkinsfile_01_Spellcheck
 - line 6:
  * 'stage('Install aSpell') {'
  # 'aSpell'
  + Suggestions: Aspell,spell

 - line 24:
  * 'stage('Exec aSpell') {'
  # 'aSpell'
  + Suggestions: Aspell,spell

 - line 37:
  * 'archiveArtifacts artifacts: 'reports/spellcheck_results.md', allowEmptyArchive: true'
  # 'allowEmptyArchive'
  - No suggestions available

 - line 37:
  * 'archiveArtifacts artifacts: 'reports/spellcheck_results.md', allowEmptyArchive: true'
  # 'archiveArtifacts'
  + Suggestions: archive,Artifacts

 - line 9:
  * 'chmod +x scripts/aspell_01_install.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 10:
  * 'bash scripts/aspell_01_install.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 27:
  * 'chmod +x scripts/aspell_02_exec.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 29:
  * 'bash scripts/aspell_02_exec.sh /tmp/Details_App/'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 9:
  * 'chmod +x scripts/aspell_01_install.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 18:
  * 'chmod +x scripts/git_details_app.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 27:
  * 'chmod +x scripts/aspell_02_exec.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 37:
  * 'archiveArtifacts artifacts: 'reports/spellcheck_results.md', allowEmptyArchive: true'
  # 'md'
  + Suggestions: MD,Md

 - line 28:
  * 'pwd'
  # 'pwd'
  + Suggestions: PD,Pd

 - line 29:
  * 'bash scripts/aspell_02_exec.sh /tmp/Details_App/'
  # 'tmp'
  + Suggestions: tamp,temp

> File: ./jenkins_pipelines/Jenkinsfile_03_Tests
> File: ./jenkins_pipelines/Jenkinsfile_00_Manager
 - line 19:
  * 'stage('CodeSpell and ShellCheck Pipeline') {'
  # 'CodeSpell'
  + Suggestions: Code,Spell

 - line 19:
  * 'stage('CodeSpell and ShellCheck Pipeline') {'
  # 'ShellCheck'
  + Suggestions: Spellcheck,Shell

 - line 9:
  * 'chmod +x scripts/git_details_app.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 6:
  * 'sh 'rm -rf /tmp/Details_APP/''
  # 'rf'
  + Suggestions: RF,Rf

 - line 6:
  * 'sh 'rm -rf /tmp/Details_APP/''
  # 'tmp'
  + Suggestions: tamp,temp

> File: ./CONTRIBUTORS.md
 - line 5:
  * 'FullName: Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 1:
  * 'Contributers:'
  # 'Contributers'
  + Suggestions: Contributes,Contributors

 - line 2:
  * 'FullName: Ori Nahum'
  # 'FullName'
  + Suggestions: Filename,Full

 - line 5:
  * 'FullName: Avishay Layani'
  # 'FullName'
  + Suggestions: Filename,Full

 - line 5:
  * 'FullName: Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 3:
  * 'NickName: orinahum'
  # 'NickName'
  + Suggestions: Nickname,Nicknamed

 - line 6:
  * 'NickName: layani'
  # 'NickName'
  + Suggestions: Nickname,Nicknamed

 - line 2:
  * 'FullName: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 6:
  * 'NickName: layani'
  # 'layani'
  + Suggestions: laying,Lanai

 - line 3:
  * 'NickName: orinahum'
  # 'orinahum'
  + Suggestions: uranium,Arnhem

