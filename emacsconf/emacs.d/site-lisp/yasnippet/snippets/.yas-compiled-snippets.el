;;; Compiled snippets and support files for `snippets'
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("beginend" "${1:v}.begin(), $1.end" "v.begin(), v.end()" nil nil nil nil nil nil)
                       ("class" "class ${1:Name}\n{\npublic:\n    ${1:$(yas-substr yas-text \"[^: ]*\")}($2);\n    virtual ~${1:$(yas-substr yas-text \"[^: ]*\")}();\n};" "class ... { ... }" nil nil nil nil nil nil)
                       ("ns" "namespace" "namespace ..." nil nil nil nil nil nil)
                       ("template" "template <typename ${T}>" "template <typename ...>" nil nil nil nil nil nil)
                       ("using" "using namespace ${std};\n$0" "using namespace ..." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("fopen" "FILE *${fp} = fopen(${\"file\"}, \"${r}\");" "FILE *fp = fopen(..., ...);" nil nil nil nil nil nil)
                       ("printf" "printf (\"${1:%s}\\\\n\"${1:$(if (string-match \"%\" yas-text) \",\" \"\\);\")\n}$2${1:$(if (string-match \"%\" yas-text) \"\\);\" \"\")}" "printf" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("do" "do\n{\n    $0\n} while (${1:condition});" "do { ... } while (...)" nil nil nil nil nil nil)
                       ("for" "for (${1:int i = 0}; ${2:i < N}; ${3:++i})\n{\n    $0\n}" "for (...; ...; ...) { ... }" nil nil nil nil nil nil)
                       ("if" "if (${1:condition})\n{\n    $0\n}" "if (...) { ... }" nil nil nil nil nil nil)
                       ("inc" "#include \"$1\"" "#include \"...\"" nil nil nil nil nil nil)
                       ("inc" "#include <$1>" "#include <...>" nil nil nil nil nil nil)
                       ("main" "int main(int argc, char *argv[])\n{\n    $0\n    return 0;\n}" "int main(argc, argv) { ... }" nil nil nil nil nil nil)
                       ("once" "#ifndef ${1:_`(upcase (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`_H_}\n#define $1\n\n$0\n\n#endif /* $1 */" "#ifndef XXX; #define XXX; #endif" nil nil nil nil nil nil)
                       ("struct" "struct ${1:name}\n{\n    $0\n};" "struct ... { ... }" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("attrib" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 $2;" "private attribute ....;" nil nil nil nil nil nil)
                       ("attrib" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 $2;\n\n/// <summary>\n/// $4\n/// </summary>\n/// <value>$5</value>\npublic $1 $2\n{\n    get {\n        return this.$2;\n    }\n    set {\n        this.$2 = value;\n    }\n}" "private attribute ....; public property ... ... { ... }" nil nil nil nil nil nil)
                       ("attrib" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 ${2:$(if (> (length yas-text) 0) (format \"_%s%s\" (downcase (substring yas-text 0 1)) (substring yas-text 1 (length yas-text))) \"\")};\n\n/// <summary>\n/// ${3:Description}\n/// </summary>\n/// <value><c>$1</c></value>\npublic ${1:Type} ${2:Name}\n{\n    get {\n        return this.${2:$(if (> (length yas-text) 0) (format \"_%s%s\" (downcase (substring yas-text 0 1)) (substring yas-text 1 (length yas-text))) \"\")};\n    }\n    set {\n        this.${2:$(if (> (length yas-text) 0) (format \"_%s%s\" (downcase (substring yas-text 0 1)) (substring yas-text 1 (length yas-text))) \"\")} = value;\n    }\n}" "private _attribute ....; public Property ... ... { ... }" nil nil nil nil nil nil)
                       ("class" "${5:public} class ${1:Name}\n{\n    #region Ctor & Destructor\n    /// <summary>\n    /// ${3:Standard Constructor}\n    /// </summary>\n    public $1($2)\n    {\n    }\n\n    /// <summary>\n    /// ${4:Default Destructor}\n    /// </summary>\n    public ~$1()\n    {\n    }\n    #endregion\n}" "class ... { ... }" nil nil nil nil nil nil)
                       ("comment" "/// <summary>\n/// $1\n/// </summary>" "/// <summary> ... </summary>" nil nil nil nil nil nil)
                       ("comment" "/// <param name=\"$1\">$2</param>" "/// <param name=\"...\"> ... </param>" nil nil nil nil nil nil)
                       ("comment" "/// <returns>$1</returns>" "/// <param name=\"...\"> ... </param>" nil nil nil nil nil nil)
                       ("comment" "/// <exception cref=\"$1\">$2</exception>" "/// <exception cref=\"...\"> ... </exception>" nil nil nil nil nil nil)
                       ("method" "/// <summary>\n/// ${5:Description}\n/// </summary>${2:$(if (string= (upcase yas-text) \"VOID\") \"\" (format \"%s%s%s\" \"\\n/// <returns><c>\" yas-text \"</c></returns>\"))}\n${1:public} ${2:void} ${3:MethodName}($4)\n{\n$0\n}" "public void Method { ... }" nil nil nil nil nil nil)
                       ("namespace" "namespace $1\n{\n$0\n}" "namespace .. { ... }" nil nil nil nil nil nil)
                       ("prop" "/// <summary>\n/// $5\n/// </summary>\n/// <value>$6</value>\n$1 $2 $3\n{\n    get {\n        return this.$4;\n    }\n    set {\n        this.$4 = value;\n    }\n}" "property ... ... { ... }" nil nil nil nil nil nil)
                       ("region" "#region $1\n$0\n#endregion" "#region ... #endregion" nil nil nil nil nil nil)
                       ("using" "using $1;" "using ...;" nil nil nil nil nil nil)
                       ("using" "using System;" "using System;" nil nil nil nil nil nil)
                       ("using" "using System.$1;" "using System....;" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("bg" "background-color: #${1:DDD};" "background-color: ..." nil nil nil nil nil nil)
                       ("bg" "background-image: url($1);" "background-image: ..." nil nil nil nil nil nil)
                       ("bor" "border: ${1:1px} ${2:solid} #${3:999};" "border size style color" nil nil nil nil nil nil)
                       ("cl" "clear: $1;" "clear: ..." nil nil nil nil nil nil)
                       ("disp" "display: block;" "display: block" nil nil nil nil nil nil)
                       ("disp" "display: inline;" "display: inline" nil nil nil nil nil nil)
                       ("disp" "display: none;" "display: none" nil nil nil nil nil nil)
                       ("ff" "font-family: $1;" "font-family: ..." nil nil nil nil nil nil)
                       ("fs" "font-size: ${12px};" "font-size: ..." nil nil nil nil nil nil)
                       ("mar" "margin-bottom: $1;" "margin-bottom: ..." nil nil nil nil nil nil)
                       ("mar" "margin-left: $1;" "margin-left: ..." nil nil nil nil nil nil)
                       ("mar" "margin: $1;" "margin: ..." nil nil nil nil nil nil)
                       ("mar" "margin: ${top} ${right} ${bottom} ${left};" "margin top right bottom left" nil nil nil nil nil nil)
                       ("mar" "margin-right: $1;" "margin-right: ..." nil nil nil nil nil nil)
                       ("mar" "margin-top: $1;" "margin-top: ..." nil nil nil nil nil nil)
                       ("pad" "padding-bottom: $1;" "padding-bottom: ..." nil nil nil nil nil nil)
                       ("pad" "padding-left: $1;" "padding-left: ..." nil nil nil nil nil nil)
                       ("pad" "padding: $1;" "padding: ..." nil nil nil nil nil nil)
                       ("pad" "padding: ${top} ${right} ${bottom} ${left};" "padding: top right bottom left" nil nil nil nil nil nil)
                       ("pad" "padding-right: $1;" "padding-right: ..." nil nil nil nil nil nil)
                       ("pad" "padding-top: $1;" "padding-top: ..." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("ah" "(add-hook HOOK$0 FUNCTION)" "add-hook" nil nil nil nil nil nil)
                       ("a" "(and $0)" "and" nil nil nil nil nil nil)
                       ("append" "(append $0 )" "append" nil nil nil nil nil nil)
                       ("apply" "(apply $0 )" "apply" nil nil nil nil nil nil)
                       ("aref" "(aref ARRAY$0 INDEX)" "aref" nil nil nil nil nil nil)
                       ("aset" "(aset ARRAY$0 IDX NEWELT)" "aset" nil nil nil nil nil nil)
                       ("assq" "(assq KEY$0 LIST)" "assq" nil nil nil nil nil nil)
                       ("autoload" "(autoload 'FUNCNAME$0 \"FILENAME\" &optional \"DOCSTRING\" INTERACTIVE TYPE)" "autoload" nil nil nil nil nil nil)
                       ("bc" "(backward-char $0)" "backward-char" nil nil nil nil nil nil)
                       ("bol" "(beginning-of-line)" "beginning-of-line" nil nil nil nil nil nil)
                       ("botap" "(bounds-of-thing-at-point '$0) ; symbol, list, sexp, defun, filename, url, email, word, sentence, whitespace, line, page ..." "bounds-of-thing-at-point" nil nil nil nil nil nil)
                       ("bfn" "(buffer-file-name)" "buffer-file-name" nil nil nil nil nil nil)
                       ("bmp" "(buffer-modified-p $0)" "buffer-modified-p" nil nil nil nil nil nil)
                       ("bsnp" "(buffer-substring-no-properties START$0 END)" "buffer-substring-no-properties" nil nil nil nil nil nil)
                       ("bs" "(buffer-substring START$0 END)" "buffer-substring" nil nil nil nil nil nil)
                       ("car" "(car $0)" "car" nil nil nil nil nil nil)
                       ("cdr" "(cdr $0)" "cdr" nil nil nil nil nil nil)
                       ("concat" "(concat $0)" "concat" nil nil nil nil nil nil)
                       ("cond" "(cond\n(CONDITION$0 BODY)\n(CONDITION BODY)\n)" "cond" nil nil nil nil nil nil)
                       ("cc" "(condition-case $0 )" "condition-case" nil nil nil nil nil nil)
                       ("cons" "(cons $0)" "cons" nil nil nil nil nil nil)
                       ("consp" "(consp $0 )" "consp" nil nil nil nil nil nil)
                       ("cd" "(copy-directory $0 NEWNAME &optional KEEP-TIME PARENTS)" "copy-directory" nil nil nil nil nil nil)
                       ("cf" "(copy-file FILE$0 NEWNAME &optional OK-IF-ALREADY-EXISTS KEEP-TIME PRESERVE-UID-GID)" "copy-file" nil nil nil nil nil nil)
                       ("cb" "(current-buffer)" "current-buffer" nil nil nil nil nil nil)
                       ("ca" "(custom-autoload$0 SYMBOL LOAD &optional NOSET)" "custom-autoload" nil nil nil nil nil nil)
                       ("defalias" "(defalias 'SYMBOL$0 'DEFINITION &optional DOCSTRING)" "defalias" nil nil nil nil nil nil)
                       ("defcustom" "(defcustom $0 VALUE \"DOC\" &optional ARGS)" "defcustom" nil nil nil nil nil nil)
                       ("dk" "(define-key KEYMAPNAME$0 (kbd \"M-b\") 'FUNCNAME)" "define-key" nil nil nil nil nil nil)
                       ("defsubst" "(defsubst $0 )" "defsubst" nil nil nil nil nil nil)
                       ("d" "(defun $1 ()\n  \"DOCSTRING\"\n  (interactive)\n  (let (var1)\n    (setq var1 some)\n    $0\n  ))" "defun" nil nil nil nil nil nil)
                       ("defvar" "(defvar $0 &optional INITVALUE \"DOCSTRING\")" "defvar" nil nil nil nil nil nil)
                       ("dc" "(delete-char $0)" "delete-char" nil nil nil nil nil nil)
                       ("dd" "(delete-directory $0 &optional RECURSIVE)" "delete-directory" nil nil nil nil nil nil)
                       ("df" "(delete-file $0)" "delete-file" nil nil nil nil nil nil)
                       ("dr" "(delete-region $0 )" "delete-region" nil nil nil nil nil nil)
                       ("df" "(directory-files $0 &optional FULL MATCH NOSORT)" "directory-files" nil nil nil nil nil nil)
                       ("dolist" "(dolist $0 )" "dolist" nil nil nil nil nil nil)
                       ("eol" "(end-of-line)" "end-of-line" nil nil nil nil nil nil)
                       ("eq" "(eq $0)" "eq" nil nil nil nil nil nil)
                       ("equal" "(equal $0)" "equal" nil nil nil nil nil nil)
                       ("error" "(error \"$0\" &optional ARGS)" "error" nil nil nil nil nil nil)
                       ("efn" "(expand-file-name $0 )" "expand-file-name" nil nil nil nil nil nil)
                       ("format" "(format \"$0\" &optional OBJECTS)" "format" nil nil nil nil nil nil)
                       ("fboundp" "(fboundp '$0 )" "fboundp" nil nil nil nil nil nil)
                       ("fnd" "(file-name-directory $0)" "file-name-directory" nil nil nil nil nil nil)
                       ("fne" "(file-name-extension $0 &optional PERIOD)" "file-name-extension" nil nil nil nil nil nil)
                       ("fnn" "(file-name-nondirectory $0 )" "file-name-nondirectory" nil nil nil nil nil nil)
                       ("fnse" "(file-name-sans-extension $0)" "file-name-sans-extension" nil nil nil nil nil nil)
                       ("frn" "(file-relative-name $0 )" "file-relative-name" nil nil nil nil nil nil)
                       ("ff" "(find-file $0 )" "find-file" nil nil nil nil nil nil)
                       ("format" "(format \"$0\" &optional OBJECTS)" "format" nil nil nil nil nil nil)
                       ("fc" "(forward-char $0)" "forward-char" nil nil nil nil nil nil)
                       ("fl" "(forward-line $0 )" "forward-line" nil nil nil nil nil nil)
                       ("funcall" "(funcall $0)" "funcall" nil nil nil nil nil nil)
                       ("function" "(function $0 )" "function" nil nil nil nil nil nil)
                       ("get" "(get SYMBOL$0 PROPNAME)" "get" nil nil nil nil nil nil)
                       ("gsk" "(global-set-key (kbd \"C-$0\") 'COMMAND)" "global-set-key" nil nil nil nil nil nil)
                       ("gc" "(goto-char $0)" "goto-char" nil nil nil nil nil nil)
                       ("if" "(if $0)" "if" nil nil nil nil nil nil)
                       ("ifc" "(insert-file-contents $0 &optional VISIT BEG END REPLACE)" "insert-file-contents" nil nil nil nil nil nil)
                       ("i" "(insert $0)" "insert" nil nil nil nil nil nil)
                       ("interactive" "(interactive)" "interactive" nil nil nil nil nil nil)
                       ("kbd" "(kbd \"$0\")" "kbd" nil nil nil nil nil nil)
                       ("kb" "(kill-buffer $0)" "kill-buffer" nil nil nil nil nil nil)
                       ("lambda" "(lambda ($0) \"DOCSTRING\" (interactive) BODY)" "lambda" nil nil nil nil nil nil)
                       ("length" "(length $0)" "length" nil nil nil nil nil nil)
                       ("l" "(let ($1 )\n $0\n)" "let" nil nil nil nil nil nil)
                       ("lbp" "(line-beginning-position)" "line-beginning-position" nil nil nil nil nil nil)
                       ("lep" "(line-end-position)" "line-end-position" nil nil nil nil nil nil)
                       ("list" "(list $0)" "list" nil nil nil nil nil nil)
                       ("la" "(looking-at $0)" "looking-at" nil nil nil nil nil nil)
                       ("md" "(make-directory $0 &optional PARENTS)" "make-directory" nil nil nil nil nil nil)
                       ("mlv" "(make-local-variable $0)" "make-local-variable" nil nil nil nil nil nil)
                       ("mapc" "(mapc '$0 SEQUENCE)" "mapc" nil nil nil nil nil nil)
                       ("mapcar" "(mapcar $0 )" "mapcar" nil nil nil nil nil nil)
                       ("mb" "(match-beginning N$0)" "match-beginning" nil nil nil nil nil nil)
                       ("me" "(match-end N$0)" "match-end" nil nil nil nil nil nil)
                       ("ms" "(match-string $0 )" "match-string" nil nil nil nil nil nil)
                       ("memq" "(memq ELT$0 LIST)" "memq" nil nil nil nil nil nil)
                       ("m" "(message \"FORMATSTRING$0\" &optional ARGS)" "message" nil nil nil nil nil nil)
                       ("n" "(not $0 )" "not" nil nil nil nil nil nil)
                       ("nth" "(nth N$0 LIST)" "nth" nil nil nil nil nil nil)
                       ("null" "(null $0)" "null" nil nil nil nil nil nil)
                       ("nts" "(number-to-string $0)" "number-to-string" nil nil nil nil nil nil)
                       ("o" "(or $0 )" "or" nil nil nil nil nil nil)
                       ("point-max" "(point-max)" "point-max" nil nil nil nil nil nil)
                       ("pm" "(point-min)" "point-min" nil nil nil nil nil nil)
                       ("p" "(point)" "point" nil nil nil nil nil nil)
                       ("princ" "(princ $0)" "princ" nil nil nil nil nil nil)
                       ("print" "(print $0)" "print" nil nil nil nil nil nil)
                       ("progn" "(progn $0)" "progn" nil nil nil nil nil nil)
                       ("push" "(push $0 )" "push" nil nil nil nil nil nil)
                       ("put" "(put $0 PROPNAME VALUE)" "put" nil nil nil nil nil nil)
                       ("rsb" "(re-search-backward REGEXP$0 &optional BOUND NOERROR COUNT)" "re-search-backward" nil nil nil nil nil nil)
                       ("rsf" "(re-search-forward REGEXP$0 &optional BOUND NOERROR COUNT)" "re-search-forward" nil nil nil nil nil nil)
                       ("rap" "(region-active-p)" "region-active-p" nil nil nil nil nil nil)
                       ("rb" "(region-beginning)" "region-beginning" nil nil nil nil nil nil)
                       ("re" "(region-end)" "region-end" nil nil nil nil nil nil)
                       ("rf" "(rename-file FILE$0 NEWNAME &optional OK-IF-ALREADY-EXISTS)" "rename-file" nil nil nil nil nil nil)
                       ("repeat" "(repeat $0 )" "repeat" nil nil nil nil nil nil)
                       ("rris" "(replace-regexp-in-string REGEXP$0 REP STRING &optional FIXEDCASE LITERAL SUBEXP START)" "replace-regexp-in-string" nil nil nil nil nil nil)
                       ("rr" "(replace-regexp REGEXP$0 TO-STRING &optional DELIMITED START END)" "replace-regexp" nil nil nil nil nil nil)
                       ("require" "(require $0 )" "require" nil nil nil nil nil nil)
                       ("sb" "(save-buffer $0)" "save-buffer" nil nil nil nil nil nil)
                       ("se" "(save-excursion $0)" "save-excursion" nil nil nil nil nil nil)
                       ("sbr" "(search-backward-regexp \"$0\" &optional BOUND NOERROR COUNT)" "search-backward-regexp" nil nil nil nil nil nil)
                       ("sb" "(search-backward \"$0\" &optional BOUND NOERROR COUNT)" "search-backward" nil nil nil nil nil nil)
                       ("sfr" "(search-forward-regexp \"$0\" &optional BOUND NOERROR COUNT)" "search-forward-regexp" nil nil nil nil nil nil)
                       ("sf" "(search-forward \"$0\" &optional BOUND NOERROR COUNT)" "search-forward" nil nil nil nil nil nil)
                       ("sb" "(set-buffer $0 )" "set-buffer" nil nil nil nil nil nil)
                       ("sfm" "(set-file-modes $0 MODE)" "set-file-modes" nil nil nil nil nil nil)
                       ("sm" "(set-mark $0)" "set-mark" nil nil nil nil nil nil)
                       ("set" "(set $0 )" "set" nil nil nil nil nil nil)
                       ("s" "(setq $0 )" "setq" nil nil nil nil nil nil)
                       ("scb" "(skip-chars-backward \"$0\" &optional LIM)" "skip-chars-backward" nil nil nil nil nil nil)
                       ("scf" "(skip-chars-forward \"$0\" &optional LIM)" "skip-chars-forward" nil nil nil nil nil nil)
                       ("ss" "(split-string $0 &optional SEPARATORS OMIT-NULLS)" "split-string" nil nil nil nil nil nil)
                       ("sm" "(string-match \"REGEXP$0\" \"STRING\" &optional START)" "string-match" nil nil nil nil nil nil)
                       ("stn" "(string-to-number \"$0\")" "string-to-number" nil nil nil nil nil nil)
                       ("string" "(string $0 )" "string" nil nil nil nil nil nil)
                       ("string=" "(string= $0 )" "string=" nil nil nil nil nil nil)
                       ("stringp" "(stringp $0)" "stringp" nil nil nil nil nil nil)
                       ("substring" "(substring STRING$0 FROM &optional TO)" "substring" nil nil nil nil nil nil)
                       ("tap" "(thing-at-point '$0) ; symbol, list, sexp, defun, filename, url, email, word, sentence, whitespace, line, page ..." "thing-at-point" nil nil nil nil nil nil)
                       ("unless" "(unless $0)" "unless" nil nil nil nil nil nil)
                       ("v" "(vector $0)" "vector" nil nil nil nil nil nil)
                       ("when" "(when $0)" "when" nil nil nil nil nil nil)
                       ("while" "(while $0)" "while" nil nil nil nil nil nil)
                       ("wg" "(widget-get $0 )" "widget-get" nil nil nil nil nil nil)
                       ("wcb" "(with-current-buffer $0 )" "with-current-buffer" nil nil nil nil nil nil)
                       ("x-dired" ";; idiom for processing a list of files in dired's marked files\n\n;; suppose myProcessFile is your function that takes a file path\n;; and do some processing on the file\n\n(defun dired-myProcessFile ()\n  \"apply myProcessFile function to marked files in dired.\"\n  (interactive)\n  (require 'dired)\n  (mapc 'myProcessFile (dired-get-marked-files))\n)\n\n;; to use it, type M-x dired-myProcessFile" "process marked files in dired" nil nil nil nil nil nil)
                       ("x-file" "(defun doThisFile (fpath)\n  \"Process the file at path FPATH ...\"\n  (let ()\n    ;; create temp buffer without undo record or font lock. (more efficient)\n    ;; first space in temp buff name is necessary\n    (set-buffer (get-buffer-create \" myTemp\"))\n    (insert-file-contents fpath nil nil nil t)\n\n    ;; process it ...\n    ;; (goto-char 0) ; move to begining of file's content (in case it was open)\n    ;; ... do something here\n    ;; (write-file fpath) ;; write back to the file\n\n    (kill-buffer \" myTemp\")))" "a function that process a file" nil nil nil nil nil nil)
                       ("x-file" "(defun read-lines (filePath)\n  \"Return a list of lines in FILEPATH.\"\n  (with-temp-buffer\n    (insert-file-contents filePath)\n    (split-string\n     (buffer-string) \"\\n\" t)) )\n\n;; process all lines\n(mapc\n (lambda (aLine)\n   (message aLine) ; do your stuff here\n   )\n (read-lines \"inputFilePath\")\n)" "read lines of a file" nil nil nil nil nil nil)
                       ("x-find-replace" "(defun replace-html-chars-region (start end)\n  \"Replace “<” to “&lt;” and other chars in HTML.\nThis works on the current region.\"\n  (interactive \"r\")\n  (save-restriction\n    (narrow-to-region start end)\n    (goto-char (point-min))\n    (while (search-forward \"&\" nil t) (replace-match \"&amp;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \"<\" nil t) (replace-match \"&lt;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \">\" nil t) (replace-match \"&gt;\" nil t))\n    )\n  )" "find and replace on region" nil nil nil nil nil nil)
                       ("x-grabstring" "(setq $0 (buffer-substring-no-properties myStartPos myEndPos))" "grab buffer substring" nil nil nil nil nil nil)
                       ("x-grabthing" "(setq $0 (thing-at-point 'symbol))" "grab word under cursor" nil nil nil nil nil nil)
                       ("x-traverse_dir" ";; apply a function to all files in a dir\n(require 'find-lisp)\n(mapc 'my-process-file (find-lisp-find-files \"~/myweb/\" \"\\\\.html$\"))" "traversing a directory" nil nil nil nil nil nil)
                       ("x-word-or-region" ";; example of a command that works on current word or text selection\n(defun down-case-word-or-region ()\n  \"Lower case the current word or text selection.\"\n(interactive)\n(let (pos1 pos2 meat)\n  (if (and transient-mark-mode mark-active)\n      (setq pos1 (region-beginning)\n            pos2 (region-end))\n    (setq pos1 (car (bounds-of-thing-at-point 'symbol))\n          pos2 (cdr (bounds-of-thing-at-point 'symbol))))\n\n  ; now, pos1 and pos2 are the starting and ending positions\n  ; of the current word, or current text selection if exists\n\n  ;; put your code here.\n  $0\n  ;; Some example of things you might want to do\n  (downcase-region pos1 pos2) ; example of a func that takes region as args\n  (setq meat (buffer-substring-no-properties pos1 pos2)) ; grab the text.\n  (delete-region pos1 pos2) ; get rid of it\n  (insert \"newText\") ; insert your new text\n\n  )\n)" "Command that works on region or word" nil nil nil nil nil nil)
                       ("yonp" "(yes-or-no-p \"PROMPT$0 \")" "y-or-n-p" nil nil nil nil nil nil)
                       ("yes-or-no-p" "(yes-or-no-p \"PROMPT$0 \")" "yes-or-no-p" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("after" "after\n    $1 -> $0" "after ... ->" nil nil nil nil nil nil)
                       ("begin" "begin\n    $0\nend" "begin ... end" nil nil nil nil nil nil)
                       ("beh" "-behaviour(${1:gen_server}).\n$0" "-behaviour(...)." nil nil nil nil nil nil)
                       ("case" "case $1 of\n    $0\nend" "case ... of ... end" nil nil nil nil nil nil)
                       ("compile" "-compile([${1:export_all}]).\n$0" "-compile(...)." nil nil nil nil nil nil)
                       ("def" "-define($1,$2).\n$0" "-define(...,...)." nil nil nil nil nil nil)
                       ("exp" "-export([${1:start/0}]).\n$0" "-export([])." nil nil nil nil nil nil)
                       ("fun" "fun ($1) -> $0 end" "fun (...) -> ... end" nil nil nil nil nil nil)
                       ("if" "if\n    $1 -> $2;\n    true -> $0\nend" "if ... -> ... ; true -> ... end" nil nil nil nil nil nil)
                       ("ifdef" "-ifdef($1).\n$0\n-endif." "-ifdef(...). ... -endif." nil nil nil nil nil nil)
                       ("ifndef" "-ifndef($1).\n$0\n-endif." "-ifndef(...). ... -endif." nil nil nil nil nil nil)
                       ("imp" "-import(${1:lists}, [${2:map/2, sum/1}]).\n$0" "-import([])." nil nil nil nil nil nil)
                       ("inc" "-include(\"$1\").\n$0" "-include(\"...\")." nil nil nil nil nil nil)
                       ("inc" "-include_lib(\"$1\").\n$0" "-include_lib(\"...\")." nil nil nil nil nil nil)
                       ("loop" "${1:loop}($2) ->\n    receive\n	${3:_} ->\n	    $1($2)\n    end.\n$0" "loop(...) -> receive _ -> loop(...) end." nil nil nil nil nil nil)
                       ("mod" "-module(${1:`(file-name-nondirectory\n              (file-name-sans-extension (or (buffer-file-name) (buffer-name))))`}).\n$0" "-module()." nil nil nil nil nil nil)
                       ("rcv" "receive\n    $1 -> $0\nend" "receive ... -> ... end" nil nil nil nil nil nil)
                       ("rcv" "receive\nafter\n    $1 -> $0\nend" "receive after ... -> ... end" nil nil nil nil nil nil)
                       ("rec" "-record($1,{$2}).\n$0" "-record(...,{...})." nil nil nil nil nil nil)
                       ("try" "try $1 of\n    $0\ncatch\nafter\nend" "try ... of ... catch after end" nil nil nil nil nil nil)
                       ("undef" "-undef($1).\n$0" "-undef(...)." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("au" "automatic $0" "automatic" nil nil nil nil nil nil)
                       ("bd" "block data $0" "block data" nil nil nil nil nil nil)
                       ("c" "continue $0" "continue" nil nil nil nil nil nil)
                       ("ch" "character $0" "character" nil nil nil nil nil nil)
                       ("cx" "complex $0" "complex" nil nil nil nil nil nil)
                       ("dc" "double complex $0" "double complex" nil nil nil nil nil nil)
                       ("do" "do while (${1:condition})\n   $0\nend do" "do while (...) end do" nil nil nil nil nil nil)
                       ("dp" "double precision $0" "double precision" nil nil nil nil nil nil)
                       ("eq" "equivalence $0" "equivalence" nil nil nil nil nil nil)
                       ("ib" "implicit byte $0" "implicit byte" nil nil nil nil nil nil)
                       ("ic" "implicit complex $0" "implicit complex" nil nil nil nil nil nil)
                       ("ich" "implicit character $0" "implicit character" nil nil nil nil nil nil)
                       ("if" "if ( ${1:condition} ) then\n   $0\nend if" "if then end if" nil nil nil nil nil nil)
                       ("ii" "implicit integer $0" "implicit integer" nil nil nil nil nil nil)
                       ("il" "implicit logical $0" "implicit logical" nil nil nil nil nil nil)
                       ("in" "implicit none" "implicit none" nil nil nil nil nil nil)
                       ("inc" "include $0" "include" nil nil nil nil nil nil)
                       ("intr" "intrinsic $0" "intrinsic" nil nil nil nil nil nil)
                       ("ir" "implicit real $0" "implicit real" nil nil nil nil nil nil)
                       ("l" "logical $0" "logical" nil nil nil nil nil nil)
                       ("pa" "parameter $0" "parameter" nil nil nil nil nil nil)
                       ("pr" "program ${1:name}\n  $0\nend program ${1:name}" "program ... end program ..." nil nil nil nil nil nil)
                       ("re" "read (${1:*},${2:*}) $0" "read (*,*)" nil nil nil nil nil nil)
                       ("st" "structure $0" "structure" nil nil nil nil nil nil)
                       ("su" "subroutine $0" "subroutine" nil nil nil nil nil nil)
                       ("wr" "write (${1:*},${2:*}) $0" "write (*,*)" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("b" "<b>$0</b>" "<b>...</b>" nil nil nil nil nil nil)
                       ("body" "<body$1>\n  $0\n</body>" "<body>...</body>" nil nil nil nil nil nil)
                       ("br" "<br />" "<br />" nil nil nil nil nil nil)
                       ("code" "<code>\n  $0\n</code>" "<code>...</code>" nil nil nil nil nil nil)
                       ("code" "<code class=\"$1\">\n  $0\n</code>" "<code class=\"...\">...</code>" nil nil nil nil nil nil)
                       ("div" "<div${1: id=\"${2:some_id}\"}${3: class=\"${4:some_class}\"}>$0</div>" "<div...>...</div>" nil nil nil nil nil nil)
                       ("div" "<div class=\"$1\">\n  $0\n</div>" "<div class=\"...\">...</div>" nil nil nil nil nil nil)
                       ("div" "<div id=\"$1\">\n  $0\n</div>" "<div id=\"...\">...</div>" nil nil nil nil nil nil)
                       ("div" "<div id=\"$1\" class=\"$2\">\n  $0\n</div>" "<div id=\"...\" class=\"...\">...</div>" nil nil nil nil nil nil)
                       ("dov" "a mirror up here $3\n\n\n<dov ${1:id=\"${2:some_id and here comes another nested field: ${3:nested_shit}}\"}>\n    $0\n</dov>\n<dov $1>\n    actually some other shit and $3\n</dov>" "<dov...>...</dov>" nil nil nil nil nil nil)
                       ("form" "<form method=\"$1\" id=\"$2\" action=\"$3\">\n  $0\n</form>" "<form method=\"...\" id=\"...\" action=\"...\"></form>" nil nil nil nil nil nil)
                       ("head" "<head>\n  $0\n</head>" "<head>...</head>" nil nil nil nil nil nil)
                       ("hr" "<hr />" "<hr />" nil nil nil nil nil nil)
                       ("href" "<a href=\"$1\">$2</a>" "<a href=\"...\">...</a>" nil nil nil nil nil nil)
                       ("html" "<html>\n  $0\n</html>" "<html>...</html>" nil nil nil nil nil nil)
                       ("html" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>" "<html xmlns=\"...\">...</html>" nil nil nil nil nil nil)
                       ("i" "<i>$0</i>" "<i>...</i>" nil nil nil nil nil nil)
                       ("img" "<img src=\"$1\" class=\"$2\" alt=\"$3\" />" "<img src=\"...\" class=\"...\" alt=\"...\" />" nil nil nil nil nil nil)
                       ("input" "<input type=\"$1\" name=\"$2\" value=\"$3\" />" "<input ... />" nil nil nil nil nil nil)
                       ("link" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil nil nil nil)
                       ("link" "<!--[if IE]>\n<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />\n<![endif]-->" "<!--[if IE]><link stylesheet=\"...\" /><![endif]-->" nil nil nil nil nil nil)
                       ("mailto" "<a href=\"mailto:$1@$2\">$0</a>" "<a href=\"mailto:...@...\">...</a>" nil nil nil nil nil nil)
                       ("p" "<p>$1</p>" "<p>...</p>" nil nil nil nil nil nil)
                       ("pre" "<pre>\n  $0\n</pre>" "<pre>...</pre>" nil nil nil nil nil nil)
                       ("q" "<blockquote>\n$0\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil nil nil nil)
                       ("quote" "<blockquote>\n  $1\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil nil nil nil)
                       ("script" "<script type=\"text/javascript\">\n  $0\n</script>" "<script type=\"text/javascript\">...</script>" nil nil nil nil nil nil)
                       ("script" "<script type=\"text/javascript\" src=\"$1\"></script>" "<script type=\"text/javascript\" src=\"...\"></script>" nil nil nil nil nil nil)
                       ("span" "<span>$1</span>" "<span>...</span>" nil nil nil nil nil nil)
                       ("span" "<span class=\"$1\">$2</span>" "<span class=\"...\">...</span>" nil nil nil nil nil nil)
                       ("span" "<span id=\"$1\">$2</span>" "<span id=\"...\">...</span>" nil nil nil nil nil nil)
                       ("style" "<style type=\"text/css\" media=\"${1:screen}\">\n  $0\n</style>" "<style type=\"text/css\" media=\"...\">...</style>" nil nil nil nil nil nil)
                       ("textarea" "<textarea name=\"$1\" id=\"$2\" rows=\"$3\" cols=\"$4\" tabindex=\"$5\"></textarea>" "<textarea ...></textarea>" nil nil nil nil nil nil)
                       ("title" "<title>$1</title>" "<title>...</title>" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("h1" "<h1>$1</h1>" "<h1>...</h1>" nil
                        ("header")
                        nil nil nil nil)
                       ("h2" "<h2>$1</h2>" "<h2>...</h2>" nil
                        ("header")
                        nil nil nil nil)
                       ("h3" "<h3>$1</h3>" "<h3>...</h3>" nil
                        ("header")
                        nil nil nil nil)
                       ("h4" "<h4>$1</h4>" "<h4>...</h4>" nil
                        ("header")
                        nil nil nil nil)
                       ("h5" "<h5>$1</h5>" "<h5>...</h5>" nil
                        ("header")
                        nil nil nil nil)
                       ("h6" "<h6>$1</h6>" "<h6>...</h6>" nil
                        ("header")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("dd" "<dd>$1</dd>" "<dd> ... </dd>" nil
                        ("list")
                        nil nil nil nil)
                       ("dl" "<dl>\n    $0\n</dl>" "<dl> ... </dl>" nil
                        ("list")
                        nil nil nil nil)
                       ("dl" "<dl id=\"$1\">\n    $0\n</dl>" "<dl> ... </dl>" nil
                        ("list")
                        nil nil nil nil)
                       ("dt" "<dt>$1</dt>" "<dt> ... </dt>" nil
                        ("list")
                        nil nil nil nil)
                       ("li" "<li>$1</li>" "<li>...</li>" nil
                        ("list")
                        nil nil nil nil)
                       ("li" "<li class=\"$1\">$2</li>" "<li class=\"...\">...</li>" nil
                        ("list")
                        nil nil nil nil)
                       ("ol" "<ol>\n  $0\n</ol>" "<ol>...</ol>" nil
                        ("list")
                        nil nil nil nil)
                       ("ol" "<ol class=\"$1\">\n  $0\n</ol>" "<ol class=\"...\">...</ol>" nil
                        ("list")
                        nil nil nil nil)
                       ("ol" "<ol id=\"$1\">\n  $0\n</ol>" "<ol id=\"...\">...</ol>" nil
                        ("list")
                        nil nil nil nil)
                       ("ul" "<ul>\n  $0\n</ul>" "<ul>...</ul>" nil
                        ("list")
                        nil nil nil nil)
                       ("ul" "<ul class=\"$1\">\n  $0\n</ul>" "<ul class=\"...\">...</ul>" nil
                        ("list")
                        nil nil nil nil)
                       ("ul" "<ul id=\"$1\">\n  $0\n</ul>" "<ul id=\"...\">...</ul>" nil
                        ("list")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("doctype" "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">" "Doctype HTML 4.01 Strict" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">" "DocType XHTML 1.0 frameset" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
                        ("meta")
                        nil nil nil nil)
                       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil nil nil nil)
                       ("meta" "<meta http-equiv=\"${1:Content-Type}\" content=\"${2:text/html; charset=UTF-8}\" />" "<meta http-equiv=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("table" "<table width=\"$1\" cellspacing=\"$2\" cellpadding=\"$3\" border=\"$4\">\n  $0\n</table>" "<table ...>...</table>" nil
                        ("table")
                        nil nil nil nil)
                       ("td" "<td$1>$2</td>" "<td>...</td>" nil
                        ("table")
                        nil nil nil nil)
                       ("th" "<th$1>$2</th>" "<th>...</th>" nil
                        ("table")
                        nil nil nil nil)
                       ("tr" "<tr>\n  $0\n</tr>" "<tr>...</tr>" nil
                        ("table")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("assert" "assert.${1:equal}($0);\n" "assert" nil nil nil nil nil nil)
                       ("cb" "function(error, $1){\n$0\n}\n" "cb" nil nil nil nil nil nil)
                       ("com" "\n/**\n * $0\n * @param {${1:String}} $2\n * @return {${3:String}}\n */\n" "com" nil nil nil nil nil nil)
                       ("desc" "describe('$1', function(){\n$2\n});\n" "desc" nil nil nil nil nil nil)
                       ("err" "if(${1:error}){\n  callback($1);\n  return;\n}\n$2\n" "err" nil nil nil nil nil nil)
                       ("error" "if(${1:error}){\n  callback($1);\n  return;\n}\n$2\n" "error" nil nil nil nil nil nil)
                       ("expect" "expect($1).to.${2:equal}($3);\n$0" "expect" nil nil nil nil nil nil)
                       ("exports" "module.exports = {\n$0\n};\n" "exports" nil nil nil nil nil nil)
                       ("fn" "function$1($2){\n$0\n}\n" "fn" nil nil nil nil nil nil)
                       ("for" "var ${1:i} = ${2:-1}, len = $3.length;\n\nfor(; ++$1 < len;){\n  $4\n}\n" "for" nil nil nil nil nil nil)
                       ("id" "document.getElementById('$0');\n" "id" nil nil nil nil nil nil)
                       ("if" "if( ${1} ){\n$0\n}\n" "if" nil nil nil nil nil nil)
                       ("invoc" "(function($1){\n$0\n})($2);\n" "invoc" nil nil nil nil nil nil)
                       ("it" "it('$1', function(done){\n$2\n});\n" "it" nil nil nil nil nil nil)
                       ("log" "console.${1:log}( $0 );\n" "log" nil nil nil nil nil nil)
                       ("method" "$1.prototype.$2 = function($3){\n${0}\n};\n" "method" nil nil nil nil nil nil)
                       ("mod" "var $1 = require(\"${2:$1}\")$3\n\nmodule.exports = {\n  $4: $4$5\n};\n\n$0\n" "mod" nil nil nil nil nil nil)
                       ("prop" "\nvar $1 = (function(){\n\n  var value = undefined;\n\n  return function $1(newValue){\n\n    if( $1.arguments.length > 0 ){\n      value = newValue;\n    }\n\n    return value;\n  };\n\n})();\n" "prop" nil nil nil nil nil nil)
                       ("proto" "$1.prototype.$2 = $0\n" "proto" nil nil nil nil nil nil)
                       ("rq" "$1 = require(\"${2:$1}\")$0\n" "rq" nil nil nil nil nil nil)
                       ("rt" "return$0;\n" "rt" nil nil nil nil nil nil)
                       ("slice" "Array.prototype.slice.${1:call}($0);\n" "slice" nil nil nil nil nil nil)
                       ("super" "$1.prototype.${2:constructor}.${3:call}($0);\n" "super" nil nil nil nil nil nil)
                       ("switch" "switch($1){\n$0\n};\n" "switch" nil nil nil nil nil nil)
                       ("throw" "throw new Error(\"$1\");\n" "throw" nil nil nil nil nil nil)
                       ("try" "try {\n  $1\n} catch(error) {\n  $0\n}\n" "try" nil nil nil nil nil nil)
                       ("var" "var $1 = $0\n" "var" nil nil nil nil nil nil)
                       ("wh" "while($1){\n$0\n}\n" "wh" nil nil nil nil nil nil)
                       ("while" "\nvar i = $1.length;\n\nwhile( i -- ){\n  $0\n}" "while" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("begin" "\n\\begin{${1:environment}}\n$0\n\\end{$1}" "\\begin{environment} ... \\end{environment}" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("+" "+ ${1:Text}\n+$0" "Unordered List" nil nil nil nil nil nil)
                       ("-" "- ${1:Text}\n-$0" "Unordered List" nil nil nil nil nil nil)
                       ("_" "_${1:Text}_ $0" "Emphasis" nil nil nil nil nil nil)
                       ("__" "**${1:Text}** $0" "Strong" nil nil nil nil nil nil)
                       ("`" "\\`${1:Code}\\` $0" "Inline Code" nil nil nil nil nil nil)
                       ("h1" "# ${1:Header 1} #\n\n$0" "Header 1 (#)" nil nil nil nil nil nil)
                       ("h1" "${1:Header 1}\n${1:$(make-string (string-width yas-text) ?\\=)}\n\n$0" "Header 1 (=)" nil nil nil nil nil nil)
                       ("h2" "## ${1:Header 1} ##\n\n$0" "Header 2 (##)" nil nil nil nil nil nil)
                       ("h2" "${1:Header 2}\n${1:$(make-string (string-width yas-text) ?\\-)}\n\n$0" "Header 2 (-)" nil nil nil nil nil nil)
                       ("h3" "### ${1:Header 3} ###\n\n$0" "Header 3" nil nil nil nil nil nil)
                       ("h4" "#### ${1:Header 4} ####\n\n$0" "Header 4" nil nil nil nil nil nil)
                       ("h5" "##### ${1:Header 5} #####\n\n$0" "Header 5" nil nil nil nil nil nil)
                       ("h6" "###### ${1:Header 6} ######\n\n$0" "Header 6" nil nil nil nil nil nil)
                       ("hr" "\n----------\n\n$0" "Horizontal Rule (-)" nil nil nil nil nil nil)
                       ("hr" "\n*******\n\n$0" "Horizontal Rule (*)" nil nil nil nil nil nil)
                       ("img" "![${1:Alt Text}](${2:URL} $3) $0" "Image" nil nil nil nil nil nil)
                       ("link" "[${1:Link Text}](${2:URL} $3) $0" "Link" nil nil nil nil nil nil)
                       ("ol" "${1:1}. ${2:Text}\n${1:$(number-to-string (1+ (string-to-number yas-text)))}. $0" "Ordered List" nil nil nil nil nil nil)
                       ("rimg" "![${1:Alt Text}][$2] $0" "Referenced Image" nil nil nil nil nil nil)
                       ("rlb" "[${1:Reference}]: ${2:URL} $3\n$0" "Reference Label" nil nil nil nil nil nil)
                       ("rlink" "[${1:Link Text}][$2] $0" "Reference Link" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("body" "<body$1>\n  $0\n</body>" "<body>...</body>" nil nil nil nil nil nil)
                       ("br" "<br />" "<br />" nil nil nil nil nil nil)
                       ("code" "<code>\n  $0\n</code>" "<code>...</code>" nil nil nil nil nil nil)
                       ("div" "<div$1>$0</div>" "<div...>...</div>" nil nil nil nil nil nil)
                       ("form" "<form method=\"$1\" action=\"$2\">\n  $0\n</form>" "<form method=\"...\" action=\"...\"></form>" nil nil nil nil nil nil)
                       ("head" "<head>\n  $0\n</head>" "<head>...</head>" nil nil nil nil nil nil)
                       ("hr" "<hr />" "<hr />" nil nil nil nil nil nil)
                       ("href" "<a href=\"$1\">$2</a>" "<a href=\"...\">...</a>" nil nil nil nil nil nil)
                       ("html" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>" "<html xmlns=\"...\">...</html>" nil nil nil nil nil nil)
                       ("img" "<img src=\"$1\" alt=\"$2\" />" "<img src=\"...\" alt=\"...\" />" nil nil nil nil nil nil)
                       ("input" "<input type=\"$1\" name=\"$2\" value=\"$3\" />" "<input ... />" nil nil nil nil nil nil)
                       ("li" "<li>$1</li>" "<li>...</li>" nil nil nil nil nil nil)
                       ("link" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil nil nil nil)
                       ("name" "<a name=\"$1\"></a>" "<a name=\"...\"></a>" nil nil nil nil nil nil)
                       ("ol" "<ol>\n  $0\n</ol>" "<ol>...</ol>" nil nil nil nil nil nil)
                       ("p" "<p>$1</p>" "<p>...</p>" nil nil nil nil nil nil)
                       ("pre" "<pre>\n  $0\n</pre>" "<pre>...</pre>" nil nil nil nil nil nil)
                       ("quote" "<blockquote>\n  $1\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil nil nil nil)
                       ("span" "<span>$1</span>" "<span>...</span>" nil nil nil nil nil nil)
                       ("style" "<style type=\"text/css\" media=\"${1:screen}\">\n  $0\n</style>" "<style type=\"text/css\" media=\"...\">...</style>" nil nil nil nil nil nil)
                       ("table" "<table>\n  $0\n</table>" "<table>...</table>" nil nil nil nil nil nil)
                       ("tag" "<${1:tag}>$2</$1>$0" "<tag>...</tag>" nil nil nil nil nil nil)
                       ("tag" "<${1:tag}>\n  $2\n</$1>$0" "<tag> \\n...\\n</tag>" nil nil nil nil nil nil)
                       ("td" "<td$1>$2</td>" "<td>...</td>" nil nil nil nil nil nil)
                       ("th" "<th$1>$2</th>" "<th>...</th>" nil nil nil nil nil nil)
                       ("title" "<title>$1</title>" "<title>...</title>" nil nil nil nil nil nil)
                       ("tr" "<tr>\n  $0\n</tr>" "<tr>...</tr>" nil nil nil nil nil nil)
                       ("ul" "<ul>\n  $0\n</ul>" "<ul>...</ul>" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("h1" "<h1>$1</h1>" "<h1>...</h1>" nil
                        ("header")
                        nil nil nil nil)
                       ("h2" "<h2>$1</h2>" "<h2>...</h2>" nil
                        ("header")
                        nil nil nil nil)
                       ("h3" "<h3>$1</h3>" "<h3>...</h3>" nil
                        ("header")
                        nil nil nil nil)
                       ("h4" "<h4>$1</h4>" "<h4>...</h4>" nil
                        ("header")
                        nil nil nil nil)
                       ("h5" "<h5>$1</h5>" "<h5>...</h5>" nil
                        ("header")
                        nil nil nil nil)
                       ("h6" "<h6>$1</h6>" "<h6>...</h6>" nil
                        ("header")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
                        ("meta")
                        nil nil nil nil)
                       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
                        ("meta")
                        nil nil nil nil)
                       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
                        ("meta")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("prop" "- (${1:id})${2:foo}\n{\n    return $2;\n}\n\n- (void)set${2:$(capitalize yas-text)}:($1)aValue\n{\n    [$2 autorelease];\n    $2 = [aValue retain];\n}\n$0" "foo { ... } ; setFoo { ... }" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("eval" "eval {\n    ${1:# do something risky...}\n};\nif (\\$@) {\n    ${2:# handle failure...}\n}" "eval { ... } if ($@) { ... }" nil nil nil nil nil nil)
                       ("for" "for (my \\$${1:var} = 0; \\$$1 < ${2:expression}; \\$$1++) {\n    ${3:# body...}\n}" "for (...) { ... }" nil nil nil nil nil nil)
                       ("fore" "foreach my \\$${1:x} (@${2:array}) {\n    ${3:# body...}\n}" "foreach ... { ... }" nil nil nil nil nil nil)
                       ("if" "if ($1) {\n    $0\n}" "if (...) { ... }" nil nil nil nil nil nil)
                       ("ife" "if ($1) {\n    $2\n} else {\n    $3\n}" "if (...) { ... } else { ... }" nil nil nil nil nil nil)
                       ("ifee" "if ($1) {\n	${2:# body...}\n} elsif ($3) {\n	${4:# elsif...}\n} else {\n	${5:# else...}\n}" "if, elsif, else ..." nil nil nil nil nil nil)
                       ("sub" "sub ${1:function_name} {\n    $0\n}" "sub ... { ... }" nil nil nil nil nil nil)
                       ("unless" "unless ($1) {\n    $0\n}" "unless (...) { ... }" nil nil nil nil nil nil)
                       ("while" "while ($1) {\n    $0\n}" "while (...) { ... }" nil nil nil nil nil nil)
                       ("xfore" "${1:expression} foreach @${2:array};" "... foreach ..." nil nil nil nil nil nil)
                       ("xif" "${1:expression} if ${2:condition}" "... if ..." nil nil nil nil nil nil)
                       ("xunless" "${1:expression} unless ${2:condition}" "... unless ..." nil nil nil nil nil nil)
                       ("xwhile" "${1:expression} while ${2:condition};" "... while ..." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("__" "__${init}__" "__...__" nil nil nil nil nil nil)
                       ("class" "class ${1:ClassName}(${2:object}):\n    \"\"\"$3\n    \"\"\"\n\n    def __init__(self, $4):\n        \"\"\"$5\n        ${4:$\n        (let* ((indent\n                (concat \"\\n\" (make-string (current-column) 32)))\n               (args\n                (mapconcat\n                 '(lambda (x)\n                    (if (not (string= (nth 0 x) \"\"))\n                        (concat \"- \" (char-to-string 96) (nth 0 x)\n                                (char-to-string 96) \":\")))\n                 (mapcar\n                  '(lambda (x)\n                     (mapcar\n                      (lambda (x)\n                        (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                         (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x))) x))\n                  (mapcar '(lambda (x) (split-string x \"=\"))\n                          (split-string yas-text \",\")))\n                 indent)))\n          (if (string= args \"\")\n              (make-string 3 34)\n            (mapconcat\n             'identity\n             (list \"\" \"Arguments:\" args (make-string 3 34))\n             indent)))\n        }\n        ${4:$\n        (mapconcat\n         '(lambda (x)\n            (if (not (string= (nth 0 x) \"\"))\n                (concat \"self._\" (nth 0 x) \" = \" (nth 0 x))))\n         (mapcar\n          '(lambda (x)\n             (mapcar\n              '(lambda (x)\n                 (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                  (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n              x))\n          (mapcar '(lambda (x) (split-string x \"=\"))\n                  (split-string yas-text \",\")))\n         (concat \"\\n\" (make-string (current-column) 32)))\n        }\n        $0" "class" nil nil nil nil nil nil)
                       ("def" "def ${1:name}($2):\n    \"\"\"$3\n    ${2:$\n      (let*\n        ((indent\n            (concat \"\\n\" (make-string (current-column) 32)))\n           (args\n            (mapconcat\n             '(lambda (x)\n                (if (not (string= (nth 0 x) \"\"))\n                    (concat \"- \" (char-to-string 96) (nth 0 x)\n                            (char-to-string 96) \":\")))\n             (mapcar\n              '(lambda (x)\n                 (mapcar\n                  '(lambda (x)\n                     (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                      (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n                  x))\n              (mapcar '(lambda (x) (split-string x \"=\"))\n                      (split-string yas-text \",\")))\n             indent)))\n      (if (string= args \"\")\n          (make-string 3 34)\n        (mapconcat\n         'identity\n         (list \"\" \"Arguments:\" args (make-string 3 34))\n         indent)))\n    }\n    $0" "def" nil nil nil nil nil nil)
                       ("defm" "def ${1:name}(self, $2):\n    \"\"\"$3\n    ${2:$\n    (let* ((indent\n            (concat \"\\n\" (make-string (current-column) 32)))\n           (args\n            (mapconcat\n             '(lambda (x)\n                (if (not (string= (nth 0 x) \"\"))\n                    (concat \"- \" (char-to-string 96) (nth 0 x)\n                            (char-to-string 96) \":\")))\n             (mapcar\n              '(lambda (x)\n                 (mapcar\n                  '(lambda (x)\n                     (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                      (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n                  x))\n              (mapcar '(lambda (x) (split-string x \"=\"))\n                      (split-string yas-text \",\")))\n             indent)))\n      (if (string= args \"\")\n          (make-string 3 34)\n        (mapconcat\n         'identity\n         (list \"\" \"Arguments:\" args (make-string 3 34))\n         indent)))\n    }\n    $0" "defm" nil nil nil nil nil nil)
                       ("for" "for ${var} in ${collection}:\n    $0" "for ... in ... : ..." nil nil nil nil nil nil)
                       ("ifmain" "if __name__ == '__main__':\n    $0" "if __name__ == '__main__': ..." nil nil nil nil nil nil)
                       ("prop" "def ${1:foo}():\n   doc = \"\"\"${2:Doc string}\"\"\"\n   def fget(self):\n       return self._$1\n   def fset(self, value):\n       self._$1 = value\n   def fdel(self):\n       del self._$1\n   return locals()\n$1 = property(**$1())\n\n$0" "prop" nil nil nil nil nil nil)
                       ("propg" "def _get_${1:foo}(self):\n    return self._$1\n\n$1 = property(_get_$1)\n\n$0" "_get_foo ... foo=property(...)" nil nil nil nil nil nil)
                       ("propsg" "def _set_${1:foo}(self, value):\n    self._$1 = value\n\ndef _get_$1(self):\n    return self._$1\n\n$1 = property(_get_$1, _set_$1)\n\n$0" "_get_foo ... _set_foo ... foo=property(...)" nil nil nil nil nil nil)
                       ("while" "while ${condition}:\n    $0" "while ... : ..." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("chap" "${1:Chapter}\n${1:$(make-string (string-width yas-text) ?\\=)}\n\n$0" "Chapter title" nil nil nil nil nil nil)
                       ("sec" "${1:Section}\n${1:$(make-string (string-width yas-text) ?\\-)}\n\n$0" "Section title" nil nil nil nil nil nil)
                       ("tit" "${1:$(make-string (string-width yas-text) ?\\=)}\n${1:Title}\n${1:$(make-string (string-width yas-text) ?\\=)}\n\n$0" "Document title" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("all" "all? { |${e}| $0 }" "all? { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("any" "any? { |${e}| $0 }" "any? { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("classify" "classify { |${e}| $0 }" "classify { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("collect" "collect { |${e}| $0 }" "collect { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("deli" "delete_if { |${e} $0 }" "delete_if { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("det" "detect { |${e}| $0 }" "detect { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("ea" "each { |${e}| $0 }" "each { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("eac" "each_cons(${1:2}) { |${group}| $0 }" "each_cons(...) { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("eai" "each_index { |${i}| $0 }" "each_index { |i| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("eav" "each_value { |${val}| $0 }" "each_value { |val| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("eawi" "each_with_index { |${e}, ${i}| $0 }" "each_with_index { |e, i| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("inject" "inject(${1:0}) { |${2:injection}, ${3:element}| $0 }" "inject(...) { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("reject" "reject { |${1:element}| $0 }" "reject { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("select" "select { |${1:element}| $0 }" "select { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("zip" "zip(${enums}) { |${row}| $0 }" "zip(...) { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("forin" "for ${1:element} in ${2:collection}\n  $0\nend" "for ... in ...; ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("if" "if ${1:condition}\n  $0\nend" "if ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("ife" "if ${1:condition}\n  $2\nelse\n  $3\nend" "if ... else ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("tim" "times { |${n}| $0 }" "times { |n| ... }" nil
                        ("control structure")
                        nil nil nil nil)
                       ("until" "until ${condition}\n  $0\nend" "until ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("upt" "upto(${n}) { |${i}|\n  $0\n}" "upto(...) { |n| ... }" nil
                        ("control structure")
                        nil nil nil nil)
                       ("when" "when ${condition}\n  $0\nend" "when ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("while" "while ${condition}\n  $0\nend" "while ... end" nil
                        ("control structure")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("Comp" "include Comparable\n\ndef <=> other\n  $0\nend" "include Comparable; def <=> ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("am" "alias_method :${new_name}, :${old_name}" "alias_method new, old" nil
                        ("definitions")
                        nil nil nil nil)
                       ("cla" "class << ${self}\n  $0\nend" "class << self ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("cls" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n				 (or (buffer-file-name)\n				     (buffer-name (current-buffer))))))))\n           (cond\n             ((string-match \"_\" fn) (replace-match \"\" nil nil fn))\n              (t fn)))`}\n  $0\nend" "class ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("mm" "def method_missing(method, *args)\n  $0\nend" "def method_missing ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("mod" "module ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n         (or (buffer-file-name)\n             (buffer-name (current-buffer))))))))\n           (cond\n             ((string-match \"_\" fn) (replace-match \"\" nil nil fn))\n              (t fn)))`}\n  $0\nend" "module ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("r" "attr_reader :" "attr_reader ..." nil
                        ("definitions")
                        nil nil nil nil)
                       ("rw" "attr_accessor :" "attr_accessor ..." nil
                        ("definitions")
                        nil nil nil nil)
                       ("w" "attr_writer :" "attr_writer ..." nil
                        ("definitions")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("#" "# =>" "# =>" nil
                        ("general")
                        nil nil nil nil)
                       ("=b" "=begin rdoc\n  $0\n=end" "=begin rdoc ... =end" nil
                        ("general")
                        nil nil nil nil)
                       ("app" "if __FILE__ == $PROGRAM_NAME\n  $0\nend" "if __FILE__ == $PROGRAM_NAME ... end" nil
                        ("general")
                        nil nil nil nil)
                       ("bm" "Benchmark.bmbm(${1:10}) do |x|\n  $0\nend" "Benchmark.bmbm(...) do ... end" nil
                        ("general")
                        nil nil nil nil)
                       ("case" "case ${1:object}\nwhen ${2:condition}\n  $0\nend" "case ... end" nil
                        ("general")
                        nil nil nil nil)
                       ("dee" "Marshal.load(Marshal.dump($0))" "deep_copy(...)" nil
                        ("general")
                        nil nil nil nil)
                       ("rb" "#!/usr/bin/ruby -wKU" "/usr/bin/ruby -wKU" nil
                        ("general")
                        nil nil nil nil)
                       ("req" "require \"$0\"" "require \"...\"" nil
                        ("general")
                        nil nil nil nil)
                       ("rreq" "require File.join(File.dirname(__FILE__), $0)" "require File.join(File.dirname(__FILE__), ...)" nil
                        ("general")
                        nil nil nil nil)
                       ("y" ":yields: $0" ":yields: arguments (rdoc)" nil
                        ("general")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("act" "def act = {\n  loop {\n    react {\n      $0\n    }\n  }\n}" "def act = { ..}" nil nil nil nil nil nil)
                       ("act" "def act(${1:arg}: ${2:type}) = {\n  loop {\n    react {\n      $0\n    }\n  }\n}" "def act(arg: T) = { ..}" nil nil nil nil nil nil)
                       ("actor" "val a = actor {\n  loop {\n    react {\n      $0\n    }\n  }\n}" "val a = actor { ..}" nil nil nil nil nil nil)
                       ("ano" "($1) => ${2:body} $0" "(args) => ..." nil nil nil nil nil nil)
                       ("app" "object ${1:name} extends Application {\n  $0\n}" "object name extends Application" nil nil nil nil nil nil)
                       ("arr" "Array[${1:value}](${2:args}) $0" "Array[T](..)" nil nil nil nil nil nil)
                       ("arr" "val ${1:arr} = Array[${2:value}](${3:args}) $0" "val a = Array[T](..)" nil nil nil nil nil nil)
                       ("asof" "asInstanceOf[${1:type}] $0" "asInstanceOf[T]" nil nil nil nil nil nil)
                       ("ass" "assert(${1:x} === ${2:y}) $0" "assert(x === y)" nil nil nil nil nil nil)
                       ("ass" "assert(true) $0" "assert(true)" nil nil nil nil nil nil)
                       ("at" "@author ${1:name} $0" "@author name" nil nil nil nil nil nil)
                       ("at" "@param ${1:name} ${2:description} $0" "@param name description" nil nil nil nil nil nil)
                       ("at" "@return ${1:description} $0" "@return description" nil nil nil nil nil nil)
                       ("at" "@version ${1:0.1} $0" "@version number" nil nil nil nil nil nil)
                       ("bang" "${1:actor} ! ${2:message} $0" "actor ! message" nil nil nil nil nil nil)
                       ("case" "case ${1:pattern} => $0" "case pattern =>" nil nil nil nil nil nil)
                       ("case" "case _ => $0" "case _ =>" nil nil nil nil nil nil)
                       ("cast" "asInstanceOf[${1:type}] $0" "asInstanceOf[T]" nil nil nil nil nil nil)
                       ("cc" "case class ${1:name}(${2:arg}: ${3:type}) $0" "case class T(arg: A)" nil nil nil nil nil nil)
                       ("cl" "class ${1:name} {\n  $0\n}" "class T { .. }" nil nil nil nil nil nil)
                       ("cl" "abstract class ${1:name} {\n  $0\n}" "abstract class T { .. }" nil nil nil nil nil nil)
                       ("cl" "abstract class ${1:name}(${2:args}) {\n  $0\n}" "abstract class T(args) { .. }" nil nil nil nil nil nil)
                       ("cl" "class ${1:name}(${2:args}) {\n  $0\n}" "class T(args) { .. }" nil nil nil nil nil nil)
                       ("clof" "classOf[${1:type}] $0" "classOf[T]" nil nil nil nil nil nil)
                       ("co" "case object ${1:name} $0" "case object T" nil nil nil nil nil nil)
                       ("cons" "${1:element1} :: ${2:element2} $0" "element1 :: element2" nil nil nil nil nil nil)
                       ("cons" "${1:element1} :: Nil $0" "element1 :: Nil" nil nil nil nil nil nil)
                       ("def" "def ${1:name}(${2:args}) = $0" "def f(arg: T) = ..." nil nil nil nil nil nil)
                       ("def" "def ${1:name}(${2:args}) = {\n  $0\n}" "def f(arg: T) = {...}" nil nil nil nil nil nil)
                       ("def" "def ${1:name}(${2:args}): ${3:Unit} = $0" "def f(arg: T): R = ..." nil nil nil nil nil nil)
                       ("def" "def ${1:name}(${2:args}): ${3:Unit} = {\n  $0\n}" "def f(arg: T): R = {...}" nil nil nil nil nil nil)
                       ("def" "def ${1:name} = {\n  $0\n}" "def f = {...}" nil nil nil nil nil nil)
                       ("def" "def ${1:name}: ${2:Unit} = $0" "def f: R = ..." nil nil nil nil nil nil)
                       ("def" "def ${1:name}: ${3:Unit} = {\n  $0\n}" "def f: R = {...}" nil nil nil nil nil nil)
                       ("def" "def ${1:name} = $0" "def f = ..." nil nil nil nil nil nil)
                       ("doc" "/**\n * `(scala-mode-find-clstrtobj-name-doc)`\n * ${1:description}\n * $0\n */" "/** cls/trt/obj name */" nil nil nil nil nil nil)
                       ("doc" "/**\n * `(scala-mode-def-and-args-doc)`\n */" "/** method name */" nil nil nil nil nil nil)
                       ("doc" "/**\n * `(scala-mode-file-doc)`\n * $0\n * @author ${1:name}\n * @version ${2:0.1}\n */" "/** file name */" nil nil nil nil nil nil)
                       ("doc" "/*                     __                                               *\\\n**     ________ ___   / /  ___     Scala $3                               **\n**    / __/ __// _ | / /  / _ |    (c) 2005-`(format-time-string \"%Y\")` , LAMP/EPFL             **\n**  __\\ \\/ /__/ __ |/ /__/ __ |    http://scala-lang.org/               **\n** /____/\\___/_/ |_/____/_/ | |                                         **\n**                          |/                                          **\n\\*                                                                      */\n/**\n * $0\n * @author ${1:name}\n * @version ${2:0.1}\n * $Id$\n */" "/** scala file */" nil nil nil nil nil nil)
                       ("doc" "/*                     __                                               *\\\n**     ________ ___   / /  ___     Scala API                            **\n**    / __/ __// _ | / /  / _ |    (c) 2005-`(format-time-string \"%Y\")`, LAMP/EPFL             **\n**  __\\ \\/ /__/ __ |/ /__/ __ |    http://scala-lang.org/               **\n** /____/\\___/_/ |_/____/_/ | |                                         **\n**                          |/                                          **\n\\*                                                                      */\n/**\n * $0\n * @author ${1:name}\n * @version ${2:0.1}\n * $Id$\n */" "/** scala api file */" nil nil nil nil nil nil)
                       ("doc" "/**\n * ${1:description}\n * $0\n */" "/** ... */" nil nil nil nil nil nil)
                       ("expect" "expect(${1:reply}) {\n  $0\n}" "expect(value) { ..}" nil nil nil nil nil nil)
                       ("ext" "extends $0" "extends T" nil nil nil nil nil nil)
                       ("for" "${1:x} <- ${2:xs}" "x <- xs" nil nil nil nil nil nil)
                       ("for" "for (${1:x} <- ${2:xs} if ${3:guard}) {\n  $0\n}" "for (x <- xs if guard) { ... }" nil nil nil nil nil nil)
                       ("for" "for (${1:x} <- ${2:xs}) {\n  $0\n}" "for (x <- xs) { ... }" nil nil nil nil nil nil)
                       ("for" "for {\n  ${1:x} <- ${2:xs}\n  ${3:x} <- ${4:xs}\n} {\n  yield $0\n}" "for {x <- xs \\ y <- ys} { yield }" nil nil nil nil nil nil)
                       ("foreach" "foreach(${1:x} => ${2:body}) $0" "foreach(x => ..)" nil nil nil nil nil nil)
                       ("hmap" "new HashMap[${1:key}, ${2:value}] $0" "new HashMap[K, V]" nil nil nil nil nil nil)
                       ("hmap" "val ${1:m} = new HashMap[${2:key}, ${3:value}] $0" "val m = new HashMap[K, V]" nil nil nil nil nil nil)
                       ("hset" "new HashSet[${1:key}] $0" "new HashSet[K]" nil nil nil nil nil nil)
                       ("hset" "val ${1:m} = new HashSet[${2:key}] $0" "val m = new HashSet[K]" nil nil nil nil nil nil)
                       ("if" "if (${1:condition}) {\n  $0\n}" "if (cond) { .. }" nil nil nil nil nil nil)
                       ("if" "if (${1:condition}) {\n  $2\n} else {\n  $0\n}" "if (cond) { .. } else { .. }" nil nil nil nil nil nil)
                       ("imp" "import $0" "import .." nil nil nil nil nil nil)
                       ("intercept" "intercept(classOf[${1:Exception]}) {\n  $0\n}" "intercept(classOf[T]) { ..}" nil nil nil nil nil nil)
                       ("isof" "isInstanceOf[${1:type}] $0" "isInstanceOf[T]" nil nil nil nil nil nil)
                       ("ls" "List(${1:args}, ${2:args}) $0" "List(..)" nil nil nil nil nil nil)
                       ("ls" "val ${1:l} = List(${2:args}, ${3:args}) $0" "val l = List(..)" nil nil nil nil nil nil)
                       ("main" "def main(args: Array[String]) = {\n  $0\n}" "def main(args: Array[String]) = { ... }" nil nil nil nil nil nil)
                       ("map" "map(${1:x} => ${2:body}) $0" "map(x => ..)" nil nil nil nil nil nil)
                       ("map" "Map(${1:key} -> ${2:value}) $0" "Map(key -> value)" nil nil nil nil nil nil)
                       ("match" "${1:cc} match {\n  case ${2:pattern} => $0\n}" "cc match { .. }" nil nil nil nil nil nil)
                       ("match" "${1:option} match {\n  case Full(res) => $0\n\n  case Empty =>\n\n  case Failure(msg, _, _) =>\n\n}" "can match { case Full(res) => .. }" nil nil nil nil nil nil)
                       ("match" "${1:option} match {\n  case None => $0\n  case Some(res) =>\n\n}" "option match { case None => .. }" nil nil nil nil nil nil)
                       ("mix" "trait ${1:name} {\n  $0\n}" "trait T { .. }" nil nil nil nil nil nil)
                       ("ob" "object ${1:name} extends ${2:type} $0" "object name extends T" nil nil nil nil nil nil)
                       ("pac" "package $0" "package .." nil nil nil nil nil nil)
                       ("pr" "println(${1:obj}) $0" "println(..)" nil nil nil nil nil nil)
                       ("pr" "print(${1:obj}) $0" "print(..)" nil nil nil nil nil nil)
                       ("pr" "println(\"${1:msg}\") $0" "println(\"..\")" nil nil nil nil nil nil)
                       ("pr" "println(\"${1:obj}: \" + ${1:obj}) $0" "println(\"obj: \" + obj)" nil nil nil nil nil nil)
                       ("pri" "private $0" "private" nil nil nil nil nil nil)
                       ("pri" "private[${1:this}] $0" "private[this]" nil nil nil nil nil nil)
                       ("pro" "protected $0" "protected" nil nil nil nil nil nil)
                       ("pro" "protected[${1:this}] $0" "protected[this]" nil nil nil nil nil nil)
                       ("suite" "import org.scalatest._\n\nclass ${1:name} extends Suite {\n  $0\n}" "class T extends Suite { .. }" nil nil nil nil nil nil)
                       ("test" "//@Test\ndef test${1:name} = {\n  $0\n}" "@Test def testX = ..." nil nil nil nil nil nil)
                       ("throw" "throw new ${1:Exception}(${2:msg}) $0" "throw new Exception" nil nil nil nil nil nil)
                       ("tr" "trait ${1:name} {\n  $0\n}" "trait T { .. }" nil nil nil nil nil nil)
                       ("tr" "trait ${1:name} extends ${2:class} {\n  $0\n}" "trait T extends C { .. }" nil nil nil nil nil nil)
                       ("tr" "trait ${1:name} extends ${2:class} with ${3:trait} {\n  $0\n}" "trait T1 extends C with T2 { .. }" nil nil nil nil nil nil)
                       ("tr" "trait ${1:name} with ${2:trait} {\n  $0\n}" "trait T1 with T2 { .. }" nil nil nil nil nil nil)
                       ("try" "try {\n  $0\n} catch {\n  case ${1:e}: ${2:Exception} =>\n    ${1:println(\\\"ERROR: \\\" + e) // TODO: handle exception}\\n}\n}" "try { .. } catch { case e => ..}" nil nil nil nil nil nil)
                       ("try" "try {\n  $0\n} catch {\n  case ${1:e}: ${2:Exception} =>\n    ${1:println(\\\"ERROR: \\\" + e) // TODO: handle exception}\\n}\n} finally {\n\n}" "try { .. } catch { case e => ..} finally { ..}" nil nil nil nil nil nil)
                       ("try" "try {\n\n} finally {\n  $0\n}" "try { .. } finally { .. }" nil nil nil nil nil nil)
                       ("tup" "${1:element1} -> ${2:element2} $0" "element1 -> element2" nil nil nil nil nil nil)
                       ("tup" "(${1:element1}, ${2:element2}) $0" "(element1, element2)" nil nil nil nil nil nil)
                       ("val" "val ${1:name} = ${2:obj} $0" "val name = .." nil nil nil nil nil nil)
                       ("val" "val ${1:name} = new ${2:obj} $0" "val name = new .." nil nil nil nil nil nil)
                       ("val" "val ${1:name}: ${2:T} = ${3:obj} $0" "val name: T = .." nil nil nil nil nil nil)
                       ("var" "var ${1:name} = ${2:obj} $0" "var name = .." nil nil nil nil nil nil)
                       ("var" "var ${1:name} = new ${2:obj} $0" "var name = new .." nil nil nil nil nil nil)
                       ("var" "var ${1:name}: ${2:T} = ${3:obj} $0" "var name: T = .." nil nil nil nil nil nil)
                       ("whi" "while (${1:condition}) {\n  $0\n}" "while(cond) { .. }" nil nil nil nil nil nil)
                       ("with" "with $0" "with T" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("field" "\\${${1:${2:n}:}$3${4:\\$(${5:lisp-fn})}\\}$0" "${ ...  } field" nil nil nil nil nil nil)
                       ("mirror" "\\${${2:n}:${4:\\$(${5:reflection-fn})}\\}$0" "${n:$(...)} mirror" nil nil nil nil nil nil)
                       ("vars" "# name: $1${2:\n# key: ${3:trigger-key}}${4:\n# keybinding: ${5:keybinding}}${6:\n# expand-env: (${7:})}\n# contributor: $6\n# --\n$0" "Snippet header" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("column" "	,	${1:Name}		${2:Type}			${3:NOT NULL}" ", ColumnName ColumnType NOT NULL..." nil nil nil nil nil nil)
                       ("constraint" "CONSTRAINT [${1:PK_Name}] PRIMARY KEY ${2:CLUSTERED} ([${3:ColumnName}])" "CONSTRAINT [..] PRIMARY KEY ..." nil nil nil nil nil nil)
                       ("constraint" "CONSTRAINT [${1:FK_Name}] FOREIGN KEY ${2:CLUSTERED} ([${3:ColumnName}])" "CONSTRAINT [..] FOREIGN KEY ..." nil nil nil nil nil nil)
                       ("create" "CREATE TABLE [${1:dbo}].[${2:TableName}]\n(\n		${3:Id}		${4:INT IDENTITY(1,1)}		${5:NOT NULL}\n$0\n	CONSTRAINT [${6:PK_}] PRIMARY KEY ${7:CLUSTERED} ([$3])\n)\nGO" "create table ..." nil nil nil nil nil nil)
                       ("create" "CREATE PROCEDURE [${1:dbo}].[${2:Name}]\n(\n		$3		$4		= ${5:NULL}		${6:OUTPUT}\n)\nAS\nBEGIN\n$0\nEND\nGO" "create procedure ..." nil nil nil nil nil nil)
                       ("references" "REFERENCES ${1:TableName}([${2:ColumnName}])" "REFERENCES ..." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'snippets
                     '(("email" "`(replace-regexp-in-string \"@\" \"@NOSPAM.\" user-mail-address)`" "(user's email)" nil nil nil nil nil nil)
                       ("time" "`(current-time-string)`" "(current time)" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Fri Nov  1 09:42:57 2013