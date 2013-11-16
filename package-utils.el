;;; -*- lexical-binding: t -*-

(defun package-utils/conditionally-install-packages (packages)
  "Iterates a list of packages and installs any that are not already installed"
  (package-refresh-contents)
  (if packages
      (let ((package (car packages)))
	(unless (package-installed-p package)
	  (package-install package))
	(package-utils/conditionally-install-packages (cdr packages)))))
