==================
Spellcheck Results
==================

> File: ./jenkins_pipelines/Jenkinsfile_04_Build
> File: ./jenkins_pipelines/Jenkinsfile_00_Manager
 - line 9:
  * '// stage('CodeSpell and ShellCheck Pipeline') {'
  # 'CodeSpell'
  + Suggestions: Code,Spell

 - line 9:
  * '// stage('CodeSpell and ShellCheck Pipeline') {'
  # 'ShellCheck'
  + Suggestions: Spellcheck,Shell

> File: ./jenkins_pipelines/Jenkinsfile_01_Spellcheck
 - line 6:
  * 'stage('Install and Exec aSpell') {'
  # 'aSpell'
  + Suggestions: Aspell,spell

 - line 9:
  * 'chmod +x scripts/aspell_01_install.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 10:
  * 'bash scripts/aspell_01_install.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 16:
  * 'chmod +x scripts/aspell_02_exec.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 17:
  * 'bash ./scripts/aspell_02_exec.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 9:
  * 'chmod +x scripts/aspell_01_install.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 16:
  * 'chmod +x scripts/aspell_02_exec.sh'
  # 'chmod'
  + Suggestions: chimed,ch

> File: ./jenkins_pipelines/Jenkinsfile_02_CodeShellCheck
> File: ./jenkins_pipelines/Jenkinsfile_03_Tests
> File: ./INSTALL.md
> File: ./README.md
 - line 1:
  * '# jenkins_task'
  # 'jenkins'
  + Suggestions: Jenkins,jerkins

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

> File: ./scripts/aspell_02_exec.sh
 - line 5:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 10:
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

 - line 32:
  * 'aspell list < "$FILE" | sort -u | while read WORD'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 38:
  * 'SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 38:
  * 'SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)'
  # 'awk'
  + Suggestions: AK,awl

 - line 4:
  * '# This Scrips runs spell check for all files in the Details-app projec'
  # 'fi'
  + Suggestions: fie,fir

 - line 12:
  * '# initialize the output file'
  # 'fi'
  + Suggestions: fie,fir

 - line 18:
  * '# loop through all files and directories with excluding specified paths'
  # 'fi'
  + Suggestions: fie,fir

 - line 19:
  * 'find . -type f | while read -r FILE'
  # 'fi'
  + Suggestions: fie,fir

 - line 27:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 48:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 51:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'jenkins'
  + Suggestions: Jenkins,jerkins

 - line 9:
  * 'OUTPUT_FILE="./spellcheck_results.md"'
  # 'md'
  + Suggestions: MD,Md

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'md'
  + Suggestions: MD,Md

 - line 37:
  * 'LINE_CONTENT=$(echo "$LINE" | cut -d: -f2- | sed 's/^[ \t]*//;s/[ \t]*$//')'
  # 'sed'
  + Suggestions: seed,sued

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'spellchech'
  + Suggestions: spellcheck,spellchecker

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'spelltest'
  + Suggestions: spell,test

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

 - line 25:
  * 'sudo apk --no-cache --update add aspell'
  # 'apk'
  + Suggestions: AK,AP

 - line 4:
  * '# This Scrips Install aspell base on Linux distributions'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 14:
  * 'sudo apt-get -y install aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 16:
  * 'echo "[+] aspell installed on Debian"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 20:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 22:
  * 'echo "[+] aspell installed on Rocky"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 25:
  * 'sudo apk --no-cache --update add aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 27:
  * 'echo "[+] aspell installed on Alpine"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 20:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'crb'
  + Suggestions: crab,crib

 - line 12:
  * 'if [[ $ID = "debian" ]]; then'
  # 'debian'
  + Suggestions: Debian,Durban

 - line 19:
  * 'sudo dnf update -y'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 20:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 18:
  * 'elif [[ $ID = "rocky" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 24:
  * 'elif [[ $ID = "alpine" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 20:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'enablerepo'
  + Suggestions: enabler,enablers

 - line 34:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 31:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'ment'
  + Suggestions: meant,men

 - line 10:
  * '. /etc/os-release'
  # 'os'
  + Suggestions: OS,Os

 - line 31:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'printf'
  + Suggestions: print,prints

 - line 13:
  * 'sudo apt-get update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 14:
  * 'sudo apt-get -y install aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 19:
  * 'sudo dnf update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 20:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 25:
  * 'sudo apk --no-cache --update add aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

> File: ./credentials
 - line 1:
  * 'machine localhos'
  # 'localhost'
  + Suggestions: local,host