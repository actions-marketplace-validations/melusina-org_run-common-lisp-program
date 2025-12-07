;;;; action.lisp — Run Common Lisp Program

;;;; Melusina Actions (https://github.com/melusina-org/run-common-lisp-program)
;;;; This file is part of Melusina Actions.
;;;;
;;;; Copyright © 2023 Michaël Le Barbier
;;;; All rights reserved.

;;;; This file must be used under the terms of the MIT License.
;;;; This source file is licensed as described in the file LICENSE, which
;;;; you should have received as part of this distribution. The terms
;;;; are also available at https://opensource.org/licenses/MIT

(require '#:asdf)
(require '#:uiop)

(defpackage #:org.melusina.github-action.run-common-lisp-program
  (:use #:common-lisp)
  (:export
   #:succeed
   #:fail
   ))

(in-package #:org.melusina.github-action.run-common-lisp-program)

(defun succeed ()
  (uiop:quit))

(defun fail ()
  (uiop:quit 1))

;;;; End of file `action.lisp'
