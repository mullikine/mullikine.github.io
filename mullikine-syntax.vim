hi morediscrete cterm=NONE ctermfg=236 ctermbg=NONE

" https://mullikine.github.io/

fun! NumberSyntax()
    hi one cterm=NONE ctermfg=033 ctermbg=236
    syntax match one "\c[a-f]*\(\d*1\)\d\@!\a*"
    syntax match one "\[\@<=\\\]\@="
    syntax match one "\<GPGGA\>"
    syntax match one "\c\<one\>"
    syntax match one "\c(\?\<[a])"
    syntax match one "\c\<jan\>"

    hi two cterm=NONE ctermfg=149 ctermbg=236
    syntax match two "\c[a-f]*\(\d*2\)\d\@![a-z]*"
    syntax match two "\c[a-z]*\(\d*2\)\d\@![a-z]*\(_t\)\@="
    syntax match two "\[\@<=/\]\@="
    syntax match two "\<GPGSA\>"
    syntax match two "\c\<two\>"
    syntax match two "\c(\?\<[b])"
    syntax match two "\c\<feb\>"

    hi three cterm=NONE ctermfg=206 ctermbg=236
    syntax match three "\c[a-f]*\(\d*3\)\d\@![a-z]*"
    syntax match three "\[\@<=|\]\@="
    syntax match three "\<GPGSV\>"
    syntax match three "\c\<z\>"
    syntax match three "\c\<three\>"
    syntax match three "\c(\?\<[c])"
    syntax match three "\c\<mar\>"

    hi four cterm=NONE ctermfg=227 ctermbg=236
    syntax match four "\c[a-f]*\(\d*4\)\d\@![a-z]*"
    syntax match four "\c[a-z]*\(\d*4\)\d\@![a-z]*\(_t\)\@="
    syntax match four "\[\@<=-\]\@="
    syntax match four "\<GPRMC\>"
    syntax match four "\c\<four\>"
    syntax match four "\c(\?\<%\@<![d])"
    syntax match four "\c\<apr\>"

    hi five cterm=NONE ctermfg=161 ctermbg=236
    syntax match five "\c\(h[a-f]*\)\@<![a-f]*h\@<!\(\d*5\)\d\@![a-z]*"
    syntax match five "\<V\>"
    syntax match five "\<five\>"
    syntax match five "\c(\?\<[e])"
    syntax match five "\c\<may\>"

    hi six cterm=NONE ctermfg=214 ctermbg=236
    syntax match six "\c[a-f]*\(\d*6\)\d\@![a-z]*"
    syntax match six "\c[a-z]*\(\d*6\)\d\@![a-z]*\(_t\)\@="
    syntax match six "\<six\>"
    syntax match six "\c(\?\<[f])"
    syntax match six " \@<=f \@="
    syntax match six "\c\<jun\>"

    hi seven cterm=NONE ctermfg=075 ctermbg=236
    syntax match seven "\c[a-f]*\(\d*7\)\d\@![a-z]*"
    syntax match seven "\<seven\>"
    syntax match seven "\c(\?\<[g])"
    syntax match seven "\c\<jul\>"

    hi eight cterm=NONE ctermfg=204 ctermbg=236
    syntax match eight "\c[a-f]*\(\d*8\)\d\@![a-z]*"
    syntax match eight "\c[a-z]*\(\d*8\)\d\@![a-z]*\(_t\)\@="
    syntax match eight "\<eight\>"
    syntax match eight "\c(\?\<[h])"
    syntax match eight "\c\<aug\>"

    hi nine cterm=NONE ctermfg=049 ctermbg=236
    syntax match nine "\c[a-f]*\(\d*9\)\d\@![a-z]*"
    syntax match nine "\<nine\>"
    syntax match nine "\c(\?\<[i])"
    syntax match nine "\c\<sep\>"

    hi zero cterm=NONE ctermfg=127 ctermbg=236
    syntax match zero "\c[a-f]*\(\d*0\)\d\@![a-z]*"
    syntax match zero "zero"
    syntax match zero "\c\<oct\>"

    syntax match one "\c\<nov\>"
    syntax match onlyhex "\c\<dec\>"

    hi onlyhex cterm=NONE ctermfg=149 ctermbg=236
    syntax match onlyhex "\c[a-z0-9]\@<![a-f]\{4,}[a-z0-9]\@!"
    syntax match onlyhex "\c[a-z0-9]\@<![ae-f]\{2,}[a-z0-9]\@!"
endf

fun! GeneralSyntax()

    hi domainbright cterm=NONE ctermfg=250 ctermbg=236
    syntax match domainbright "\(\<www.\)\@<=[a-z]\+\(\.[a-z]\+\)\@="
    syntax match domainbright "\(https\?:\/\/\([a-z-]\+\.\)*\)\@<=\([a-z0-9-]\+\)\(\.[a-z]\+\($\|[^a-z]\)\)\@="

    hi domain cterm=NONE ctermfg=243 ctermbg=236
    syntax match domain "\<www.\([a-z]\+\.[a-z]\+\)\@="

    hi numberpunctuation cterm=NONE ctermbg=236

    syntax match numberpunctuation "\c[0-9]\@<=[.][0-9]\@="
    syntax match numberpunctuation "\c[:]\@<=[a-f][a-f][:]\@="

    hi bullets ctermfg=247 ctermbg=236
    syntax match bullets "\c[^(]\@<![a-z][^)]\@!"

    hi allcaps cterm=NONE ctermfg=245
    syntax match allcaps "\(\<\|_\)\@<=[A-Z]\{2,\}\([a-z]\?\)\(\>\|_\|[0-9]\)\@="
    syntax match allcaps "\(\<\|_\)\@<=[A-Z]\([^A-Za-z]\(\>\|_\|[0-9]\)\)\@="

    hi currentProject cterm=NONE ctermfg=000 ctermbg=249
    syntax match currentProject "PROJECTS/"

    syntax match currentProject "\<alias\>"

    hi quote cterm=NONE ctermfg=39 ctermbg=234
    syntax match quote "'"

    hi doublequote cterm=NONE ctermfg=244 ctermbg=234
    syntax match doublequote "\""

    hi gitRtcPackage cterm=NONE ctermfg=027 ctermbg=017
    syntax match gitRtcPackage "\(\(^\|│\||\) *\)\@<=modified   "
    syntax match gitRtcPackage "\<function\( [^ ]*(\|:\|\>\)\@="
    syntax match gitRtcPackage "\<func\>"
    syntax match gitRtcPackage "\<sub\>"
    syntax match gitRtcPackage "\<Function\>"
    syntax match gitRtcPackage "\<Sub\>"
    syntax match gitRtcPackage "\<proc\>"
    syntax match gitRtcPackage "\<defun\>"

    hi variable cterm=NONE ctermfg=041 ctermbg=236
    syntax match variable "\<var\(iable\)\?\>"
    syntax match variable "\<member\>"
    syntax match variable "\<my\>"
    syntax match variable "\<Dim\>"
    syntax match variable "\<Set\>"

    syntax match onlyhex "\<enum\>"

    hi module cterm=NONE ctermfg=041 ctermbg=022
    syntax match module "\<module:\@=""
    syntax match module "\<package\>"

    hi instance cterm=NONE ctermfg=164 ctermbg=054
    syntax match instance "\<instance:\@=""

    syntax match morediscrete "\<statement:\@="

    hi gitRtcPackage cterm=NONE ctermfg=027 ctermbg=017
    syntax match gitRtcPackage "\(^\|│\||\)\@<=Entering"

    hi gitRtcError cterm=NONE ctermfg=161 ctermbg=052
    syntax match gitRtcError "\(^\|│\||\)Cannot \a\+:[a-z A-Z]\+\.$"
    syntax match gitRtcError "\c\(\w\+\)\?\<timed out\>"
    syntax match gitRtcError "\c\(\w\+\)\?\<core dumped\>"
    syntax match gitRtcError "\<rebasing\>"

    syntax match gitRtcError "\c\<problem\>"

    hi gdb cterm=NONE ctermfg=226 ctermbg=236
    syntax match gdb "\<\([sl]\?trace\|gdb\|InteractiveConsole\)\>"
    syntax match gdb  "DEBUG[^:]\@!"
    syntax match gdb  "unittest.skip"
    syntax match gdb  " \@<! \@<=[a-z]\+> \@="

    syntax match gdb "\<ghci>"

    hi neosession cterm=NONE ctermfg=069 ctermbg=225
    syntax match neosession "\(^\|│\||\)NV \^\?[A-Za-z0-9-]\+\>"

    hi myhighlightResults cterm=NONE ctermfg=163 ctermbg=055
    syntax match myhighlightResults "\$RESULTSD" " show-results.sh

    hi startingSymbol cterm=NONE ctermfg=184 ctermbg=NONE
    syntax match startingSymbol "\(^\|│\)\@<=\(\[[A-Z]\+\]\)\? \?[<>$]\+\( \|$\) \@!"
    syntax match startingSymbol "[>]\@<!>>>[>]\@!"
    syntax match startingSymbol "\<scala>"

    hi seleniumError cterm=NONE ctermfg=125 ctermbg=052
    syntax match seleniumError "\c\<\(can\)\?not\>"
    syntax match seleniumError "\c\<bad\>"
    syntax match seleniumError "\c\<\(wrong\|incorrect\)\>"
    syntax match seleniumError "\c\<[a-z]\+n't\( [a-z]\+\)\?\>"
    syntax match seleniumError "\c\<dont\>"
    syntax match seleniumError "\<\a\+Error\>" " ERROR
    syntax match seleniumError "\<color:red\>" " ERROR
    syntax match seleniumError "\c\<\(could not\|couldn't\)\>"
    syntax match seleniumError "\c\<\(not [a-z]\+\)\>"
    syntax match seleniumError "\cerror[:s]\?"
    syntax match seleniumError "\c\([a-z]\+\)\?exceptions\?"
    syntax match seleniumError "\c\(\w\+ \)\?thrown"
    syntax match seleniumError "\creferenced before assignment"
    syntax match gitbranch "\c\(\<set \)\@<=no\([a-z]\+\>\)\@="
    syntax match seleniumError "\c\[\@<=no[a-z]\+\]\@=\>"
    syntax match seleniumError "\c\<no\>\( [a-z]\+\)\?\( [a-z]\+\)\?\>"
    syntax match seleniumError "\c\<false\>"
    syntax match seleniumError "\c\<locked\>"
    syntax match seleniumError "\c\<ro\>" " read only
    syntax match seleniumError "\c\<read only\>" " read only
    syntax match seleniumError "\c\<n\(an\?\)\?\>"
    syntax match seleniumError "FIXME"
    syntax match seleniumError "\cis undefined"

    syntax match seleniumError "\c\(is \)\@<!undefined\( [a-z]\+\)\?"

    syntax match seleniumError "\<\(\w\+ \)\?behind\>"
    syntax match safe "\<\(\w\+ \)\?ahead of\>"
    syntax match safe "\<\(\w\+ \)\?ahead\( [0-9]\)\@="

    syntax match seleniumError "\c\(resource \)\?\([a-z]\+ \)\?unavailable"

    hi null cterm=NONE ctermfg=237 ctermbg=232
    syntax match null "\c\<null\>"

    hi generalError cterm=NONE ctermfg=197 ctermbg=052
    syntax match generalError "\c\<invalid \w\+\>"

    hi notideal cterm=NONE ctermfg=085 ctermbg=197
    syntax match notideal "\<time.sleep([0-9.]\+)"

    hi success cterm=NONE ctermfg=083 ctermbg=236
    syntax match success "\c\<success\(\a\+\)\?\>"
    syntax match success "\c\<pass\(\a\+\)\?\>"
    syntax match success "\c\([a-z-.]\+\)\? exists"
    syntax match success "\c\<running\>"
    syntax match success "\c\<accepted\>"
    syntax match success "\c\<available\>"
    syntax match success "\<UP\>"
    syntax match success "\c\<OK\>"
    syntax match success "\c\<\(not \)\@<!connected\( to \([a-z]\+\)\?\)\?\>"

    syntax match success "\c\(not\)\@<!up.\?.\?to.\?date\>"
    syntax match success "\c\(not\)\@<!clean\>"

    syntax match safe "\<can be fast-forwarded\>"

    hi safe cterm=NONE ctermfg=045 ctermbg=236
    syntax match safe "\c\<n/a\>"
    syntax match safe "\c\<yes\>"
    syntax match safe "\c\<true\>"
    syntax match safe "\c\<good\>"
    syntax match safe "\c\<rw\>"
    syntax match safe "\c\<allow\(ed\)\?\( from\)\?\>"
    syntax match safe "\c\<y\>"
    syntax match safe "\c\<p\>"
    syntax match safe "\c\<\(not \)\@<!safe\>"
    syntax match safe "\c\<enabled\>"
    syntax match safe "\c\(not\|'t \)\@<!continued\?\>"
    syntax match safe "\c\<any\( [a-z-]\+\)\?\>"
    syntax match safe "\c\<open\>"
    syntax match safe "\c\<return\>"
    syntax match safe "\c\<unclaimed\>"

    syntax match gitbranch "\c\<\(abort\|q\|exit\|died\?\)\>"
    syntax match safe "\c\<exit code\>"
    syntax match buildfiles "\c\<Starting [0-9a-z]\+test\>"

    syntax match seleniumError "\c\<exiting\>"

    hi sshError cterm=NONE ctermfg=226 ctermbg=197
    syntax match sshError "Host key verification failed."
    syntax match sshError "\c\<\(\w\+ \)\?not found"
    syntax match sshError "\cunexpected\(ly\)\?"
    syntax match sshError "\c\<[a-z]\+ refused\>"
    syntax match sshError "\c\(connection \)\?closed\?\>"
    syntax match sshError "\csorry"
    syntax match sshError "\c\([a-z]\+ \)\?den\(ied\|y\)\( from\)\?"

    syntax match sshError "\ckilled"
    syntax match sshError "unmerged"
    syntax match sshError "unknown"

    syntax match sshError "\cillegal \<[a-z]\+\>"

    hi buildError cterm=NONE ctermfg=226 ctermbg=197
    syntax match buildError "symbol lookup error"
    syntax match buildError "undefined symbol"

    hi testcase cterm=NONE ctermfg=213 ctermbg=237
    syntax match testcase '\c\<\w\+(\w\+\.TestCase)'
    syntax match testcasebold "RETURN CODE:"

    hi testcasebold cterm=NONE ctermfg=239 ctermbg=213
    syntax match testcasebold '\cfuncname: \<test_\(\d\+\)\w\+\(\.\w\w\>\)\@!\(\.\w\w\w\+\)\?\>'

    hi visorReplacement cterm=NONE ctermfg=009 ctermbg=018
    syntax match visorReplacement 'Α.\{-\}Ω' " capital alpha and capital omega

    hi xpath cterm=NONE ctermfg=061 ctermbg=235
    syntax match xpath '\<id=\(\'\w\+\'\|"\w\+"\)'

    hi xpath2 cterm=NONE ctermfg=063 ctermbg=235
    syntax match xpath2 '\<class=\(\'\w\+\'\|"\w\+"\)'

    hi xpath3 cterm=NONE ctermfg=138 ctermbg=235
    syntax match xpath3 '\(\'\w\+\'\|"\w\+"\), \?By.\(ID\|XPATH\)'

    hi importantHardware cterm=NONE ctermfg=162 ctermbg=054
    syntax match importantHardware '\cstart[a-z]\+'

    hi builddep cterm=NONE ctermfg=126 ctermbg=220
    syntax match builddep '\c\<builddep\>'

    hi importantFile cterm=NONE ctermfg=162 ctermbg=NONE
    syntax match importantFile '\c\<syslog\>'
    syntax match importantFile '\c\<auth.log\>'

    hi shanemulligan cterm=NONE ctermfg=204 ctermbg=027
    syntax match shanemulligan "\c\<Shane\>\([\- .]Mulligan\)\?[\a]\@!" " Shane Mulligan
    syntax match shanemulligan "\csmulliga"
    syntax match shanemulligan "\c\<JOB\>"
    syntax match shanemulligan "\clibertyprime"

    hi shanemulliganbot cterm=NONE ctermfg=027 ctermbg=204
    syntax match shanemulliganbot "\clibertyprimebot"

    hi textpath cterm=NONE ctermfg=113 ctermbg=234
    syntax match textpath "\.\(sh\|h\|hpp\|hh\)\@!\a\{1,4\}\(\d\?\([ "';:/0-9]\||[0-9]\+|\|$\)\)\@="

    hi headerpath cterm=NONE ctermfg=211 ctermbg=234
    syntax match headerpath "\.\(h\|hpp\|hh\)\>"

    hi pathshell cterm=NONE ctermfg=202 ctermbg=088
    syntax match pathshell "\.\(sh\|exp\)\([^ :;'")]\@!\|$\)"
    syntax match pathshell "\<ssh.\?\>"
    syntax match error "\<sudo\>"
    syntax match error "\<msudo\>"
    syntax match pathshell "\c\<auth[a-z]\+"

    hi pathh5 cterm=NONE ctermfg=131 ctermbg=234
    syntax match pathh5 "$\?\([A-Za-z0-9\-._/\+]\|\\ \)\{4,}\(\.\(h5\)\(.bz2\)\?\(\w\)\@!\)"

    hi subdued cterm=NONE ctermfg=237 ctermbg=NONE

    hi brighter cterm=NONE ctermfg=240 ctermbg=248
    syntax match brighter "funcname:"

    hi verysubdued cterm=NONE ctermfg=234 ctermbg=NONE
    syntax match verysubdued "--- modulename:"

    hi textdone cterm=NONE ctermfg=085 ctermbg=022
    syntax match textdone "\c\(\w\+ \)\?\<\(DONE\|FIXED\)\>"
    syntax match textdone "\c\<\(finished\|completed\?\)\>"
    syntax match textdone "\c\<sol\(ution\|ved\)\>"
    syntax match textdone "\c\<done\.\@="

    syntax match serviceAdd "\c\<on\>\(-\| [^ ]\)\@!"
    syntax match serviceAdd "\c\<active\>"
    syntax match serviceRemove "\c\<off\>"

    hi started cterm=NONE ctermfg=226 ctermbg=020
    syntax match started "\c\<\(started\)\>"

    hi stopped cterm=NONE ctermfg=161 ctermbg=234
    syntax match stopped "\c\<\(stop\|pause\|suspend\)\>"
    syntax match stopped "\c\<\([a-z]\+ \)\?\(stopped\|paused\|suspended\)\>"

    hi saved cterm=NONE ctermfg=085 ctermbg=022
    syntax match saved "\c\(not \)\@<!\<Sav[a-z]\+\>"

    hi textcomplete cterm=NONE ctermfg=232 ctermbg=236
    syntax match textcomplete ".*\<COMPLETE\>.*"

    hi textwaiting cterm=NONE ctermfg=000 ctermbg=172
    syntax match textwaiting "\<\(WAITING\|PENDING\)\>"

    hi textprogress cterm=NONE ctermfg=166 ctermbg=233
    syntax match textprogress "\c\(IN PROGRESS\>\)"
    syntax match textprogress "\<INCOMPLETE\>"

    hi importantDate cterm=NONE ctermfg=154 ctermbg=235
    syntax match importantDate "\<\d\{4\}-\d\{2\}-\d\{2\}\>"

    syntax match gitbranch "[.-]\@!#\?\<\d\{3,5\}\>[.-]\@!" " ERROR
    syntax match gitbranch "#\(\d\+\>\)\@="

    hi money cterm=NONE ctermfg=254 ctermbg=028
    syntax match money "\$\d\+\(\.\d\+\)\?\>" " $100

    hi textonloan cterm=NONE ctermfg=220 ctermbg=233
    syntax match textonloan ".*\<ON LOAN\>.*"

    hi textavailable cterm=NONE ctermfg=032 ctermbg=236
    syntax match textavailable ".*\<AVAILABLE\>.*"

    hi textunverified cterm=NONE ctermfg=144 ctermbg=233
    syntax match textunverified ".*\<UNVERIFIED\>.*"

    hi textnot cterm=NONE ctermfg=001 ctermbg=052
    syntax match textnot "\(\$\)\@!\(NOT\>\)\( IN PROGRESS\|\( [A-Z]\+\>\)\)\?"

    hi textdiscard cterm=NONE ctermfg=000 ctermbg=095
    syntax match textdiscard "\c\<\(FLAGS\?\|DISCARD\|ABO\?RT\|CANCEL\)\( THAT\)\?"
    syntax match textdiscard "\c\(STRIKEOUT\).*"
    syntax match textdiscard "\c\<cancel[a-z]*\>"

    hi texttimeboxed cterm=NONE ctermfg=000 ctermbg=095
    syntax match texttimeboxed "\c\(timeboxed\)"

    hi lowpriority cterm=NONE ctermfg=178 ctermbg=094
    syntax match lowpriority "\c\(LOW PRIORITY\)"
    syntax match lowpriority "\c\(LOW IMPORTANCE\)"
    syntax match lowpriority "\c\(not important\)" " this exists so that 'not important' does not get important highlighting

    syntax match criticalpriority "\c\(Insight:\)"

    hi priority cterm=NONE ctermfg=084 ctermbg=094
    syntax match priority "\c\<TODO\>"
    syntax match priority "\a\@<!\(Make\)\a\@!"
    syntax match priority "\<ONLY\>"
    syntax match priority "\c\<finish\>"
    syntax match priority "\c\<learn\>"
    syntax match priority "\c\<sidenote\>"

    hi task cterm=NONE ctermfg=171 ctermbg=235
    syntax match task "\(TASK\)"

    hi failing cterm=NONE ctermfg=001 ctermbg=052
    syntax match failing "ERROR"
    syntax match failing "\cis not\>"
    syntax match failing "\c\(is \)\?not \(permitted\|defined\)"
    syntax match failing "\cfail[a-z]*"
    syntax match failing "EXIT_FAILURE"
    syntax match failing "\cbroken"
    syntax match failing "\cconflict[a-z]*"
    syntax match failing "\cregression"
    syntax match failing "\cdisabled\?"
    syntax match failing "exited with return code [^0]\+"
    syntax match failing "\c\(\<FIX\>\)"
    syntax match failing "\c\(\<REPLACE\>\)"
    syntax match failing "\(\(^\|│\)\s\+\)\@<=In \([A-Za-z]\+ \)\+\(.*[,:]\(  \|$\|│\)\)\@="

    hi comment cterm=NONE ctermfg=110 ctermbg=240

    hi glue cterm=NONE ctermfg=084 ctermbg=235
    syntax match comment '\(/\@<!///\?/\@!\)'
    syntax match comment '\(\(^\|│\) *\)\@<=///\+'

    syntax match comment '@\+'

    hi criticalpriority cterm=NONE ctermfg=196 ctermbg=226
    syntax match criticalpriority "\c\<CRITICAL\(LY\)\?\>"
    syntax match criticalpriority "\c\(vital\)"
    syntax match criticalpriority "\(NEXT STEP\)"
    syntax match criticalpriority "\c\<so important"
    syntax match criticalpriority "\cis king"
    syntax match criticalpriority "\cparamount"
    syntax match criticalpriority "\cessential"
    syntax match criticalpriority "Device or resource busy"
    syntax match criticalpriority "\<MUST\>"

    hi superimportant cterm=NONE ctermfg=226 ctermbg=208
    syntax match superimportant "\c\<super\(-duper\)\? important\>"
    syntax match superimportant "\c\<ultra important\>"
    syntax match superimportant "\c\<urgent\>"
    syntax match superimportant "\c\<absolutely\>"
    syntax match superimportant "Press\>"
    syntax match superimportant "\<W\(ait\|AIT\)\>"

    syntax match pathshell "\<root\>"

    hi toppriority cterm=NONE ctermfg=019 ctermbg=196
    syntax match toppriority "\c\(priority 1\)"
    syntax match toppriority "\c\(desperately\)"
    syntax match toppriority "\c\(top priority\)"
    syntax match toppriority "\c\(immediate\)\(ly\)\?"
    syntax match toppriority "\cextremely important"

    hi lookto cterm=NONE ctermfg=019 ctermbg=105
    syntax match lookto "\c\(\<look to[a-z]*\>\)"

    hi highpriority cterm=NONE ctermfg=226 ctermbg=142
    syntax match highpriority "\(FOUND\)"
    syntax match highpriority "\c\(high priority\)"
    syntax match highpriority "\<must\>"
    syntax match highpriority "\c\<\(require\|needs\?\)\>"
    syntax match highpriority "\c\(most \|very \)\?\(importan\(t\|ce\|ly\)\)"
    syntax match highpriority "\a\@<!\(Need\)\a\@!"
    syntax match highpriority "\c\(THIS WAY\)"
    syntax match highpriority "\c\(on second thought\)"
    syntax match highpriority "\c\(instead\)"
    syntax match highpriority "\c\<note\>"
    syntax match highpriority "\c\<REMEMBER\>"
    syntax match highpriority "\c\(\<amazing\>\)"
    syntax match highpriority "\c\(\<interesting\>\)"
    syntax match highpriority "\c\(alternatively\)"
    syntax match highpriority "\c\(actually,\)"
    syntax match highpriority "\c\(be \)\?careful\a*"
    syntax match highpriority "\cdon'\?t forget"

    hi consider cterm=NONE ctermfg=199 ctermbg=026
    syntax match consider "\cthink about"
    syntax match consider "\cconsider\>"

    hi warning cterm=NONE ctermfg=214 ctermbg=094
    syntax match warning "\(DO NOT\>\)\( [A-Z]\+\)"
    syntax match warning "\c\<warning\>"
    syntax match warning "\c\<rethink\>"
    syntax match warning "\ctimeout"
    syntax match warning "\c\<already\>"

    hi warning2 cterm=NONE ctermfg=215 ctermbg=094
    syntax match warning2 "\c\<portability\>"

    hi unknownword cterm=NONE ctermfg=010 ctermbg=034
    syntax match unknownword "\(\<UNK\(KNOWN\)\?\>\)"
    syntax match unknownword "\s?\s"

    call NumberSyntax()

    hi sensing3d cterm=NONE ctermfg=219 ctermbg=240
    syntax match sensing3d '\c3dsensing'
    syntax match sensing3d '\csensing3d'

    hi diffRemove cterm=NONE ctermfg=196 ctermbg=088
    syntax match diffRemove "\(\(^\|│\||\) *\)\@<=-\{1,3\}[>-]\@!"

    hi def link shOptionGeneral Special
    syn match   shOptionGeneral "[ '"|(,[]\@<=[-+][_a-zA-Z#-][a-zA-Z-]\@!\([ .0-9'"=,[|)\]]\|$\)\@="
    syn match   shOptionGeneral "[ '"|(,[]\@<=\(, \?\)\@<![-+][-a-zA-Z][-_a-zA-Z]*[_a-zA-Z][a-zA-Z-]\@!\([ .0-9'"=,[|)\]]\|$\)\@="
    syn match   shOptionGeneral "[ '"|(,[]\@<=---\@![a-zA-Z#_][-_a-zA-Z#_]*\([ 0-9'"=,[|)\]]\|\)\@="
    hi shOptionNum cterm=NONE ctermfg=204 ctermbg=237
    syn match   shOptionNum "[ '"|[]\@<=[-+]\([0-9]\+\>\)\@="

    hi gcc ctermfg=051 ctermbg=032
    syntax match gcc "[ '"|,([]\@<=-isystem"
    syntax match gcc "[ '"|,([]\@<=-I\>"

    hi ld ctermfg=213 ctermbg=091
    syntax match ld "\c\<ld\w*"
    syntax match ld "\/\@<=lib"
    syntax match ld "\<\(LD\|LIB\|LINK\)[A-Z_]\+"
    syntax match ld "[ '"|,([]\@<=-l[a-z]\@="
    syntax match ld "\c\<linker\>"

    hi ldbright ctermfg=210 ctermbg=126
    syntax match ldbright "[ '"|,([]\@<=-L[a-z]\@="

    hi logcode ctermfg=023 ctermbg=166
    syntax match logcode "\c\<log\w*"

    hi discrete cterm=NONE ctermfg=238
    syntax match discrete "[<>]"
    syntax match subdued ":"

    hi emoticon cterm=NONE ctermfg=215 ctermbg=161
    syntax match emoticon " \@<=\(<3\|T_T\|>_>\|:)\|:(\|:'(\|¬_¬\|L/\|:/\|D:\|Ƹ̵̡Ӝ̵̨Ʒ\)\( \|$\)\@="
    syntax match emoticon "@}\~}\~\~\~"

    hi unicode cterm=NONE ctermfg=197 ctermbg=234
    syntax match unicode "[^\d0-\d127]\+"

    hi hlred cterm=NONE ctermfg=000 ctermbg=197
    hi hlgreen cterm=NONE ctermfg=000 ctermbg=28
    hi hlpurple cterm=NONE ctermfg=000 ctermbg=201
    syntax match hlred "\<R: "
    syntax match hlgreen "\<G: "
    syntax match hlpurple "\<X: "

    syntax match discrete "[a-z0-9?>]\@<=::\<"
    syntax match discrete "\%o267"

    syntax match morediscrete "\>\.\( \|$\)\@="

    syntax match brightoperator "[ |]\@<! \(==\|[%]\) "
    syntax match brightoperator "[ |]\@<! [!=/-]=\? "
    syntax match brightoperator " [=-]>\( \|$\|│\)\@="
    syntax match brightoperator "<[=-] [ |]\@!"
    syntax match brightoperator "\c[a-z]\@<=->[a-z]\@="
    syntax match brightoperator "\c[a-z]\@<=<-[a-z]\@="
    syntax match brightoperator "\([^ ] \? \)\@<=-\(  \?[^ ]\)\@="
    syntax match brightoperator "[!,&]"
    syntax match gitbranch "\^"
    syntax match brightoperator "\(^\|│\)\@<!+"
    hi asteriskoperator ctermbg=052 ctermfg=196
    syntax match asteriskoperator "\.\?\(#\**\)\@<!\*"
    syntax match brightoperator ":[=-]"
    syntax match brightoperator " \@<=++ \@="

    hi diffAdd cterm=NONE ctermfg=076 ctermbg=028
    syntax match diffAdd "\(\(^\|│\||\) *\)\@<=+\{1,3\}"

    syntax match subdued "[0-9]\@<=%"

    hi gitbranch cterm=NONE ctermfg=161 ctermbg=052
    hi brightoperator2 cterm=NONE ctermbg=235 ctermfg=083
    syntax match brightoperator2 "[?]"
    syntax match gitbranch "[$]"
    syntax match brightoperator2 "\\\@<=|=\?"

    hi brightoperator3 cterm=NONE ctermbg=060 ctermfg=202
    syntax match brightoperator3 "\(\\\|| \|* \|[/_]\)\@<!|=\?"

    syntax match discrete ";"
    syntax match discrete " \@<=\\\+; \@="

    hi unaryoperator ctermbg=239 ctermfg=105
    syntax match unaryoperator "\(\\+ \?\)[a-z]\@="
    syntax match unaryoperator "+\@<!++[a-z]\@="
    syntax match unaryoperator "[a-z]\@<=+++\@!"

    hi compiler ctermbg=177 ctermfg=129
    syntax match compiler "distcc"
    syntax match compiler "\<[gc]++"

    hi new cterm=NONE ctermfg=210 ctermbg=025
    syntax match new "\c\<new\([- ][a-z0-9]\+\( camera\)\?\)\?\(/[a-z0-9]\+\)\?\>"

    hi magitstandout cterm=NONE ctermfg=193 ctermbg=244
    syntax match magitstandout "\(\(new file\|resolved\|unmerged\|modified\|deleted \)\@<=   \)[^ ]\+"

    hi old cterm=NONE ctermfg=178 ctermbg=090
    syntax match old "\c\<old\>"

    hi tmuxsession cterm=NONE ctermfg=199 ctermbg=053
    syntax match tmuxsession "\(^\|│\||\)F\d\+ \^\?[A-Za-z0-9-]\+\>"
    syntax match tmuxsession "\(\<localhost\(_[A-Za-z0-9-]\+\)*\)\@<=:"
    syntax match tmuxsession "\<localhost\(\(_[A-Za-z0-9-]\+\)*:\)\@="
    syntax match tmuxsession "\<localhost\(\(_[A-Za-z0-9-]\+\)\+\)\@="

    hi ui cterm=NONE ctermfg=242 ctermbg=239
    syntax match ui "[^[]\@<!|\+"

    hi textunderline cterm=NONE ctermfg=240 ctermbg=236

    hi textunderlineadd cterm=NONE ctermfg=042 ctermbg=236
    syntax match textunderlineadd "\(| \+[0-9]\+ \)\@<=[+]\+\(  \|$\|│\)\@="

    hi textunderlinemod cterm=NONE ctermfg=202 ctermbg=236
    syntax match textunderlinemod "\(| \+[0-9]\+ \)\@<=[+]\+[-]\+\(  \|$\|│\)\@="

    hi textunderlinerem cterm=NONE ctermfg=124 ctermbg=236
    syntax match textunderlinerem "\(| \+[0-9]\+ \)\@<=[-]\+\(  \|$\|│\)\@="

    hi importantfolder cterm=NONE ctermfg=087 ctermbg=243
    syntax match importantfolder "\/ws\/[a-z0-9-]\+"

    hi punctuation cterm=NONE ctermfg=007 ctermbg=NONE
    syntax match punctuation "\(\(^\|│\||\)[^a-zA-Z]*\)\@<=[◆∙]"
    syntax match punctuation "\([^a-zA-Z]\+\)\@<=[◆∙]\s\+"

    hi texturl cterm=NONE ctermfg=069 ctermbg=234
    syntax match texturl "https\?://" " http://www.google.com
    syntax match texturl "ssh://" " ssh://stash

    hi emacstmuxkey cterm=NONE ctermfg=099 ctermbg=234
    syntax match emacstmuxkey "\<\([ACMS]-\)\+[^ ]\(\.\|\s\|$\|>\)\@="
    syntax match emacstmuxkey "\c\<\([ACMS]-\)\+\([a-z]\+-\)*[a-z]\+\(-[0-9]\|>\|\.\|\s\|\|:$\|\"\|>\?>-\)\@="
    syntax match emacstmuxkey "\(^\|\s\@<=\)\^[A-Z_]\>"
    syntax match emacstmuxkey "\<\([ACMS]-\)\+[F\"]\@="
    syntax match emacstmuxkey "‘[^ ]\+’"

    syntax match emacstmuxkey "\c\<\(\(esc\(ape\)\?\|page\|ctrl\|alt\|shift\|meta\)\>-\?\)\+"
    syntax match emacstmuxkey "\c\<\(\(esc\(ape\)\?\|pg\|page\|ctrl\|alt\|shift\|meta\)-\)\+\(.\( \|$\)\@=\|[a-z]\+\)"

    syntax match emacstmuxkey "\c\([ACMS]-\)\?<[a-z]\+\(-[0-3]\)\?>"

    syntax match emacstmuxkey "\(^\|│\||\) [a-zA-Z] \{11\} \@!"

    syntax match brighter "\<d\([r-][w-]\)\@="

    hi allperm cterm=NONE ctermfg=154 ctermbg=166
    syntax match allperm 'rwx'

    hi rw cterm=NONE ctermfg=154 ctermbg=133
    syntax match rw 'rw-'

    hi rx cterm=NONE ctermfg=154 ctermbg=068
    syntax match rx 'r-x'

    hi ro cterm=NONE ctermfg=252 ctermbg=241
    syntax match ro 'r--'

    hi rs cterm=NONE ctermfg=226 ctermbg=208
    syntax match rs 'rws'

    hi level4 cterm=NONE ctermfg=227 ctermbg=236

    hi level3 cterm=NONE ctermfg=206 ctermbg=236
    syntax match level3 '>\@<=all<\@='

    hi level2 cterm=NONE ctermfg=149 ctermbg=236
    syntax match level2 '>\@<=trace<\@='

    hi level1 cterm=NONE ctermfg=033 ctermbg=236
    syntax match level1 '>\@<=debug<\@='

    hi level0 cterm=NONE ctermfg=127 ctermbg=236
    syntax match level0 '>\@<=none<\@='

    hi staging cterm=NONE ctermfg=242 ctermbg=237
    syntax match staging '\/\@<=staging\/\@='

    hi irc cterm=NONE ctermfg=237 ctermbg=242
    syntax match discrete '\c\(\d\d:\d\d ::: .\{-\}\(  \|$\|│\)\@=\)'
    syntax match discrete '\c\(\d\d:\d\d \[.\{-\}\(  \|$\|│\)\@=\)'
    syntax match discrete "\(\>\|[!: ]\|^\)\@<=/\(\<\|\$\|  \|$\)\@="
    syntax match discrete "[+*/<>-]\@<!="
    syntax match discrete ">\@<!>\?>-\+>\@!"
    syntax match morediscrete "[[\]]"

    hi googleblue cterm=NONE ctermfg=069 ctermbg=255
    syntax match googleblue '\c\<g\(oogle\)\@='
    syntax match googleblue '\c\(\<goo\)\@<=g\(le\)\@='
    syntax match googleblue '\<g\([rl]\>\)\@='
    syntax match googleblue '\<f\(l\>\)\@='

    hi googlered cterm=NONE ctermfg=197 ctermbg=255
    syntax match googlered '\c\(\<g\)\@<=o\(ogle\)\@='
    syntax match googlered '\c\(\<googl\)\@<=e[ry]\?'
    syntax match googlered '\(\<g\)\@<=[rl]\>'
    syntax match googlered '\(\<f\)\@<=l\>'
    syntax match googlered '\<yt\>'
    syntax match googlered '\<so\>'
    syntax match googlered '\<gh\>'
    syntax match googlered '\<ga\>'
    syntax match googlered '\<gx\>'
    syntax match googlered '\<wk\>'
    syntax match googlered '\<gdc\>'
    syntax match googlered '\<googling\>'
    syntax match googlered '\<youtube\>'

    hi tensorflow cterm=NONE ctermfg=202 ctermbg=255
    syntax match tensorflow '\c\<tensorflow\>'
    syntax match tensorflow '\c\<tf\>'
    syntax match tensorflow '\c\<keras\>'

    hi hackernewsorange cterm=NONE ctermfg=000 ctermbg=202
    syntax match hackernewsorange '\<hn\>'
    syntax match hackernewsorange '\<yc\>'
    syntax match hackernewsorange '\<ycombinator\>'
    syntax match hackernewsorange '\<hacker\>'

    hi googleyellow cterm=NONE ctermfg=178 ctermbg=255
    syntax match googleyellow '\c\(\<go\)\@<=o\(gle\)\@='

    hi googlegreen cterm=NONE ctermfg=28 ctermbg=255
    syntax match googlegreen '\c\(\<goog\)\@<=l\(e\)\@='

    hi unixutil cterm=NONE ctermfg=049 ctermbg=024
    syntax match unixutil '\c\<pip\>'
    syntax match unixutil "\<arg[cv]\>"
    syntax match tests "['\"]\@<=git [a-z]\+\>"

    hi online cterm=NONE ctermfg=049 ctermbg=024
    syntax match online "[\d10003]"
    syntax match online "[\d9711]"

    hi logic cterm=NONE ctermfg=210 ctermbg=236
    syntax match logic "\ctherefore"
    syntax match logic "\creally do"
    syntax match logic "\cexcept"

    syntax match logic "\c\<but\>"

    syntax match logic "\c\<if\>"
    syntax match logic "\c\<else\>"
    syntax match logic "\c\<el\(se\)\?if\>"
    syntax match logic "\c\<then\(  \|$\)\@!\>"
    syntax match discrete "\c\<then\(  \|$\)\@=\>"
    syntax match logic "\c\<and\>"
    syntax match logic "\c\</\?or\>"
    syntax match logic "\c\<case\>"
    syntax match logic "\c\<while\>"

    hi codekeywords cterm=NONE ctermfg=068 ctermbg=236
    syntax match codekeywords "^[a-z-0-9-A-Z_-]\+\(:\)\@="
    syntax match codekeywords "\<def\>"
    syntax match codekeywords "\<class\>"
    syntax match codekeywords "\<try\>"
    syntax match codekeywords "\<throw\>"
    syntax match codekeywords "\<catch\>"
    syntax match codekeywords "\<foreach\>"
    syntax match codekeywords "\<except\>"
    syntax match codekeywords "\<finally\>"
    syntax match codekeywords "\<yield\>"
    syntax match codekeywords "\<import\>"
    syntax match codekeywords "\<virtual\>"
    syntax match codekeywords "\<namespace\>"
    syntax match codekeywords "\<void\>"
    syntax match codekeywords "\<with\>"
    syntax match codekeywords "\<pass\>"
    syntax match codekeywords "#\?\<include\>"
    syntax match codekeywords "\<explicit\>"
    syntax match codekeywords "\<protected\>"
    syntax match codekeywords "\<vector\>"
    syntax match codekeywords "#\?\<define\>"
    syntax match codekeywords "\c\<for\>"
    syntax match codekeywords "\<With\>"
    syntax match codekeywords "\<To\>"
    syntax match codekeywords "\<Next\>"
    syntax match codekeywords "\c\<Private\>"
    syntax match codekeywords "\c\<Public\>"

    syntax match codekeywords "\<\(struct\|type\)\>"
    syntax match codekeywords "\<typedef\>"

    syntax match codekeywords "\<where\>"

    syntax match money "\cjust entered"

    syntax match money "\cbitcoin"
    syntax match money "\cblockchain"

    syntax match codekeywords "\<contract\>"

    hi algorithms cterm=NONE ctermfg=129 ctermbg=236
    syntax match algorithms "\<argmin\>"
    syntax match algorithms "\<argmax\>"

    syntax match discrete "\<boost\>"
    syntax match discrete "\<std\>"

    hi awesome ctermfg=063 ctermbg=053
    syntax match awesome "\<problog"
    syntax match awesome "\<query"
    syntax match awesome "\<queries"
    syntax match awesome "\<examples\?"
    syntax match awesome "\c\<search\>"
    syntax match awesome "\c\<artificial intelligence\>"
    syntax match awesome "\c\<ai\>"

    hi facebook ctermfg=255 ctermbg=062
    syntax match facebook "\c\<facebook\>"
    syntax match facebook "\c\<fb\>"

    hi buildfiles ctermfg=227 ctermbg=058
    syntax match buildfiles "\csconscript"
    syntax match buildfiles "\c\<scons\>"

    hi interesting ctermfg=149 ctermbg=029
    syntax match interesting "\cmachine[- ]\?learning"
    syntax match interesting "\cdeep[- ]\?learning"
    syntax match interesting "\clearning"
    syntax match interesting "\csemantic"
    syntax match interesting "\cartificial[- ]\?intelligence"
    syntax match interesting "\c\<ai\>"
    syntax match interesting "\c\<\(neural\)\(.network\)\?\>"
    syntax match interesting "\c\<predict[a-z]\+"
    syntax match interesting "\c\<probab[a-z]\+"  " Use chinese later to override
    syntax match interesting "\c\<classif[a-z]\+"
    syntax match interesting "\c\<sentim[a-z]\+"
    syntax match interesting "\(a.\?p\|poste\)riori"
    syntax match interesting "\<Magnet\>"

    hi automatic ctermfg=253 ctermbg=124
    syntax match automatic "\c\<macro\>"
    syntax match automatic "\c\<automat\w\+\>"

    hi machinelearning ctermfg=034 ctermbg=234
    syntax match machinelearning "\ck-means"
    syntax match machinelearning "\ccluster"
    syntax match machinelearning "\cgaussian"

    hi math ctermfg=172 ctermbg=228
    syntax match math "\c\<pi\>"
    syntax match math "\c\<\(linear.\|abstract.\)\?algebra\>"

    hi whiteonblack ctermfg=255 ctermbg=245
    syntax match whiteonblack "\c\(\<[a-z]*\(map\) \)\@<=[a-z]\+"
    syntax match allcaps "\c\<[a-z]\+\(\(map\)\>\)\@="

    hi serviceAdd cterm=NONE ctermfg=077 ctermbg=028
    hi serviceRemove cterm=NONE ctermfg=196 ctermbg=088
    syntax match serviceAdd "\[\@<= + \]\@="
    syntax match serviceRemove "\[\@<= - \]\@="

    syntax match serviceAdd "\[\@<=+\]\@="
    syntax match serviceAdd "\[\@<=-\]\@="
    syntax match serviceRemove "\[\@<= \]\@="
    syntax match discrete "|---"

    syntax match comment '\(\([~+-]\|^\|│\||\) *\)\@<="\([^"]*\("[^"]*"[^"]*\)*"[^"]*\(  \|$\|│\)\)\@!'
    syntax match comment ' \@<=\(#\|%\|!\) \@='
    syntax match comment '\(\([~+-]\|^\|│\||\) *\)\@<=\(#\|%\|!\)'
    syntax match comment '\(\([~+-]\|^\|│\||\) *\)\@<=;'
    syntax match morediscrete '\(\([~+-]\|^\|│\||\) *\(#\|\"\|%\)\)\@<=\(#\|\"\|%\)\+'
    syntax match morediscrete '\(\([~+-]\|^\|│\||\) *\(!\)\)\@<=\(!\)\+'
    syntax match morediscrete '\(\([~+-]\|^\|│\||\) *;\)\@<=;\+'

    syntax match discrete '\\[tn]'

    syntax match discrete '\.snippets'
    syntax match discrete '\(\$\)\@<=[A-Z]\+[/$]\@='
    syntax match discrete '\<const\>'

    syntax match morediscrete '¬'

    syntax match morediscrete '<<global>>'

    syntax match onlyhex 'a-z'
    syntax match onlyhex 'A-Z'
    syntax match onlyhex '0-9'

    hi glue2 cterm=NONE ctermfg=029 ctermbg=234
    syntax match glue2 '\(/\*\+\|\*\+/\)'

    syn match discrete "\([-+][_a-zA-Z#-]\)\@<=,"

    hi master ctermfg=136 ctermbg=234
    syntax match master "master[_-]\@="

    hi matrix ctermfg=245 ctermbg=234
    syntax match matrix "[_-]\@<=matrix"

    hi verify ctermfg=024 ctermbg=234
    syntax match verify "verify[_-]\@="

    hi auto ctermfg=125 ctermbg=234
    syntax match auto "auto\(test\)\@="

    hi soak ctermfg=130 ctermbg=234
    syntax match soak "soak\(test\)\@="

    hi bin ctermfg=226 ctermbg=095
    syntax match bin "\(\/s\?bin\/\)\@<=[A-Za-z-_]\+[A-Za-z_/-]\@!"

    syntax match brightoperator "=\@<!=\{1,2\}=\@!"
    syntax match emacstmuxkey " \@<==[A-Za-z] \([A-Z][a-z]\([A-Za-z-]\+ \?\)\+\)\@="
    syntax match buildfiles "\.\/"
    syntax match glue "\(\.\)\@<!\.\.\.\([./]\)\@!"
    syntax match buildfiles "`"

    hi gitbranch cterm=NONE ctermfg=197 ctermbg=052
    syntax match subdued "master"
    syntax match gitbranch "\(\(\(^\|│\)\s*\)\([a-f0-9]\{7\}\)\)\@<= [a-z-]\+ "
    syntax match gitbranch "\(\(\(^\|│\)\s*\)\([a-f0-9]\{7\} [a-z-]\+\|not git\) \[\)\@<=.\{-}\(\]\)\@="
    syntax match buildfiles "δ"

    hi tilde ctermfg=033 ctermbg=019
    syntax match tilde "\(\(^\||\|│\) *\)\@<!\~\(\/\([a-z]\+\/\)\?\)\?"
    syntax match tilde "\(\(^\||\|│\) *\)\@<=\~\/\([a-z]\+\/\)\?"
    syntax match tilde "\(::\)\@<=\~\([A-Za-z0-9]\+\)"

    syntax match gitbranch "\.\.\/"

    syntax match three "\<third"
    syntax match tests "\c\(third\)\@<=party"

    syntax match discrete "\.\.\.\/"

    hi gitbranchdetached cterm=NONE ctermfg=161 ctermbg=052
    syntax match gitbranchdetached "\(\(^\|│\)[a-f0-9]\{7\}\)\@<=  \([^ ]\+ \)\+\(δ \)\?»"

    syntax match gitbranch  "\(^\|│\)\@<=\(-\?[a-z]\+\)\+\( -- \)\@="
    syntax match subdued  "origin\/"

    syntax match gdb  "\<release\/"

    syntax match glue '\c\(\<\|[^a-z]\)\@<=tmux[a-z]\@!'

    syntax match gitbranch  "-\?\<SIG[A-Z]\+\([0-9]\?\>\)\@="

    syntax match gitbranch "\ckill\(all\)\? \?\(-[A-Z0-9]\)\@="

    syntax match codekeywords "\chdf5\?"
    syntax match discrete "\<auto\>"

    syntax match success '\(\<[A-Z5_]\+\)\@<=_MODE\>'
    syntax match success '\<[A-Z5_]\+\(_MODE\>\)\@='
    syntax match success "EXIT_SUCCESS"

    syntax match subdued "[a-z]\@<= | \(-[a-z]\)\@="

    syntax match gitbranch "\(\(^\|│\) *\([~+] \)\?\)\@<=snippet "
    syntax match buildfiles "\(snippet \)\@<=[^ ]\+"
    syntax match gitbranch "\<diverged\>"
    syntax match textunderlinemod "\<modified\>"
    syntax match serviceRemove "\<deleted\>"
    syntax match serviceAdd "\<resolved\>"

    syntax match serviceAdd "\<Installed\>"

    syntax match one '_\@<=w\>'
    syntax match one 'fg\>'
    syntax match one '\<fg'
    syntax match one '\cforeground'
    syntax match five '_\@<=s\>'
    syntax match five 'bg\>'
    syntax match five '\<bg'
    syntax match five '\cbackground'

    syntax match one '\c\(_\|\<\)\@<=x\(_\|\>\)\@='
    syntax match two '\c\(_\|\<\)\@<=y\(_\|\>\)\@='
    syntax match three '\c\(_\|\<\)\@<=z\(_\|\>\)\@='

    syntax match onlyhex '\([^A-Za-z0-9]\)\@<=%[a-zA-Z][a-zA-Z]\@!'
    syntax match zero '\([^A-Za-z0-9]\|\>\)\@<=%[a-z]\>'
    syntax match one '\([^A-Za-z0-9]\|\>\)\@<=%s\>'
    syntax match two '\([^A-Za-z0-9]\|\>\)\@<=%d\>'
    syntax match three '\([^A-Za-z0-9]\|\>\)\@<=%\([ld]u\)\>'
    syntax match four '\([^A-Za-z0-9]\|\>\)\@<=%f\>'
    syntax match five '\([^A-Za-z0-9]\|\>\)\@<=%lld\>'
    syntax match six '\([^A-Za-z0-9]\|\>\)\@<=%llu\>'
    syntax match brightoperator '\([^A-Za-z0-9]\|\>\)\@<=%\.\?[0-9]\@='

    hi interface cterm=NONE ctermfg=228 ctermbg=148
    syntax match interface '\<enp[0-9]\@='

    syntax match discrete '\<self\.'
    syntax match discrete '\<this->'

    syntax match testcase '\<test_\([A-Z0-9a-z_]\+\.py\)\@='
    syntax match testcase '\(\<test_\)\@<=[A-Za-z_]\+\(\.py\)\@='
    syntax match testcase '\(\<test_[0-9]\+[a-z]*\)\@<=_[A-Za-z_]\+\(\.py\)\@='

    syntax match subdued "\.\(pyc\|os\?\)\>"

    syntax match subdued "\cnothing to \w\+"

    syntax match subdued "\(python2\)"
    syntax match discrete "Out\(\[[0-9]\+\]\)="
    syntax match discrete "In\[\([0-9]\+\]:=\)\@="
    syntax match discrete "\(In\[[0-9]\+\)\@<=\]:="
    syntax match discrete "\<fi\>"
    syntax match discrete "\<esac\>"

    syntax match tests "\c\<none\>"

    hi searchtermsgreen ctermfg=000 ctermbg=084

    hi searchtermspurple ctermfg=000 ctermbg=201

    hi regex ctermfg=074 ctermbg=237
    syntax match regex "\c\<pcre\>"
    syntax match regex "\c\<regex\>"
    syntax match regex "\c\<match\>"

    syntax match diffRemove "<\(  \|$\|│\)\@="
    syntax match diffAdd "\(^\|│\)\@<=>\(  \|$\|│\)\@="

    syntax match diffRemove "<\{7\} "
    syntax match textunderlinemod "=\@<!=\{7\}\( \|$\)"
    syntax match diffAdd ">\{7\} "

    hi blue ctermfg=063 ctermbg=019
    syntax match blue "\<blue\>"

    syntax match blue "\<Enh\>"

    hi haskellop ctermfg=130 ctermbg=250
    syntax match haskellop "\((| \)\@<=[^ ]\+\( [A-Za-z -/[\]]\+ |)\)\@="

    hi haskelldesc ctermfg=209 ctermbg=234
    syntax match haskelldesc "\((| [^ ]\+ \)\@<=[A-Za-z -/[\]]\+\( |)\)\@="

    syntax match buildfiles "On branch"

    syntax match buildfiles "\<mk[a-z]*\>"

    hi tests cterm=NONE ctermfg=247 ctermbg=234
    syntax match tests "\c\([a-z]*\)\?tests\?\([a-z]*\)\?"

    hi hlgdb cterm=NONE ctermfg=000 ctermbg=255
    syntax match hlgdb "[^/ ]\+\.[a-z]\+:[0-9]\+\(:.*\|  \|$\|│\)\@="

    syntax match morediscrete "\(^\|│\)\@<=\.\+"

    syntax match morediscrete "\(^\|│\)\@<=?? [^ ]\+"
    syntax match gitbranch "\(^\|│\)\@<= M "

    syntax match tests "\c\(TS_\)\?assert[_a-z]*"

    hi reallyBad cterm=NONE ctermfg=226 ctermbg=197
    syntax match reallyBad "\cfatal"
    syntax match reallyBad "\cterminated"
    syntax match reallyBad "\cerror:"
    syntax match reallyBad "\c\<shame\>"

    hi reallyBad cterm=NONE ctermfg=226 ctermbg=197
    syntax match reallyBad "\(\<[a-zA-Z]\+\>\)\s\<\1\>"

    syntax match numberpunctuation "[0-9]\@<=[ :-][0-9]\@="

    hi boldquote cterm=NONE ctermfg=234 ctermbg=39
    syntax match boldquote "-\@<!-\?->>"
    syntax match boldquote "<<--\?-\@!"

    syntax match brightoperator "<[/.$*]>"
    syntax match brightoperator ">\{1,2\}="
    syntax match brightoperator "<>"
    syntax match brightoperator "=<<"

    syntax match failing "&\@<=optional "

    syntax match reallyBad "\cbanned"
    syntax match reallyBad "\ckicked"

    syntax match buildfiles "\c\<pip\>"
    syntax match buildfiles "\c\<pypi\>"
    syntax match buildfiles "\c\<apt\(-cache\)\?\>"
    syntax match buildfiles "\c\<npm\>"
    syntax match buildfiles "\c\<cabal\>"
    syntax match buildfiles "\c\<ghc-pkg\>"

    syntax match gitRtcPackage "=== \d\+\/\d\+\( \w\+\)\+"

    syntax match diffRemove "|\@<=---\@!"

    syntax match morediscrete "\<Domain Users\>"

    syntax match morediscrete "\([a-zA-Z0-9]\)\@<!\(\\[a-z_]\+\)\+\>"

    syntax match discrete "\<pick\( [a-f0-9]\{7\}\)\@=\>"
    syntax match reallyBad "\<work\( [a-f0-9]\{7\}\)\@=\>"
    syntax match discrete "\<onto\( [a-f0-9]\{7\}\)\@=\>"

    hi closesyntax cterm=NONE ctermfg=065 ctermbg=000
    syntax match closesyntax "\<end\(ing\)\@![a-z]\+\>"
    syntax match closesyntax "End [A-Z][a-z]\+"

    hi api cterm=NONE ctermfg=112 ctermbg=238
    syntax match api "\c\<\(rest\|graphql\|api\)\>"

    syntax match emacstmuxkey "\(\<MapM \w\+\)\@<=\( \w\)\+"

    hi devnull cterm=NONE ctermfg=124 ctermbg=000
    syntax match devnull "\/dev\/null"

    syntax match codekeywords "[a-z0-9]\@<=_t\>"

    hi elonmusk cterm=NONE ctermfg=015 ctermbg=199
    syntax match elonmusk "{{"
    syntax match elonmusk "}}"

    hi pullrequest cterm=NONE ctermfg=255 ctermbg=080
    syntax match pullrequest "\cpull request"

    syntax match emacstmuxkey "\({{\)\@<=[ a-zA-Z_0-9()-]*\(}}\)\@="

    hi ircroom cterm=NONE ctermfg=023 ctermbg=NONE
    syntax match ircroom "#\@<!##\?[A-Za-z-]\+"

    hi ircname cterm=NONE ctermfg=093 ctermbg=234 " this looks the same as irc names, and is the superset, so i disabled the syntax just above
    syntax match ircname "\c< *[+@]\?[/a-z 0-9_-]\+\(\[m\]\)\?`\? *>"
    syntax match ircname "\(known as \)\@<=[^ ]\+$"

    syntax match ircname "\c\(] \)\@<=<[/a-z 0-9._-]\+> \@="

endf

command! GeneralSyntax silent! call GeneralSyntax()
