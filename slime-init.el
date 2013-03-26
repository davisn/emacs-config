;; SLIME Setup
;(setq inferior-lisp-program "/usr/bin/sbcl")
;(add-to-list 'load-path "~/contrib/lisp/slime/")
(setq slime-lisp-implementations
      '((sbcl  ("/usr/bin/sbcl") :coding-system utf-8-unix)
        (ecl   ("/usr/bin/ecl"))
        (clisp ("/usr/bin/clisp"))))
(add-to-list 'load-path "~/contrib/lisp/slime-2011-07-16")
(require 'slime)
(slime-setup)
