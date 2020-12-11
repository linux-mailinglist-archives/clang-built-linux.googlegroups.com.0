Return-Path: <clang-built-linux+bncBC2ORX645YPRBEX5Z37AKGQEK2EGLIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F7B2D7E52
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:43 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id c76sf7873738ilf.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712402; cv=pass;
        d=google.com; s=arc-20160816;
        b=flQkp86Z6Suxfi9kIPGFMdpLdXo3nTNk3mvS3xZfLtXP2sHJ+SGTEmaRAcvvcXiUPB
         9Qae/b/h6U3d4CPuUlZyk14zryJDCT02147RyZIOrZI40TzJY47SEN4W0CyS8zDWp/Ds
         kDEB1pKdAeS2GEdkKSz7veqHKUaGBW/96gLBmzf9lkjhjchYpBELVBm5NVotP4fc/vUa
         bCPl1HW4gIj5ssoI7cadjgElRKb63vlB6dGG4fqhBew+fWDPxzhreaGbom8qFvkmkXJC
         rWg0OTpomhuGhSPKVjJ0lfMAmFJ60GwC89UsEyzQ5T7IOzRWIIOeXXnliYOBWLE47czv
         Vi7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=FnwISDVheYLorW/8swGSnKWiaY2GHmstgehIdoMo4hE=;
        b=qHaXI9kt7tuYaC2xXsHeQ0eUT6dOLoHBNKluR3df7VZh0tmmgM91tp6ohF2U4I4oMf
         JOQFB0L++R2T87bXfQvbTXnGqzeMqrFxVM+x6xKX+JRhA2B3u8qCgjYvHWV7vPctzPTF
         Mir6p06/bYMZYmXeOg9I/pY/JRvcF5t7TyDkS1GXyvsdlw6J8AsQ81wND8IU7qHYwXIJ
         jqGAsaYlPT8+SZdbfcnbuDq6585rC1ir63MpJZsOHe+BR1wTt8TypG77VQxd8dORKIE+
         JF6PVXD7dfJUbZk9OHu9oV1ohMF5IlE6PN1qvlxy+BeZb3qm2669ZJyNZd1zXnl2tdHe
         /OyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UW2o4dtq;
       spf=pass (google.com: domain of 3kl7txwwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3kL7TXwwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FnwISDVheYLorW/8swGSnKWiaY2GHmstgehIdoMo4hE=;
        b=tTUQNP02r106sRenRt3hStzZTncy79MbqzDI5vosaiYnffnJtrPM/7RxSYPtYxsm+a
         VsWYu+kxqmG7RylCfjTmqomzMKpMhBc+vJ6yhKnm9So9vXlDYdUobQvJX5G+XdgFGJAA
         1Vieba7YO/V4udB+OmbRK7ZkJ2bwH2mgm/e39Q3jrYrZ7q8t3chA2hGbxJW25QuDXFsf
         Gj+esvcLTD/lDW7ZOYrnllfXW2hPS4poINArzdJZ9dxXejjKY3jfLTNVtVawaRK2TE9k
         nkzjNeOxWVqU2jXCH3fabU+Uf3ZdnmSqGmfZsLwQ2bI4r//A94GS7Rt8zk1XSM6BgIfg
         SMBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FnwISDVheYLorW/8swGSnKWiaY2GHmstgehIdoMo4hE=;
        b=GgNO6rIuwteOaF4VURBH9n6PXDMY/1q/YcLvXIVWopBNrPZQ/xGrROH1YI7qBxKpRg
         Y2m9RX/6Ah+N2aMVpWh52hd2kVirsYny9LmokHARpmA5zoAjFfn09q1SoCPjIHp/AuXg
         AiTp8k5ltv0JFiol9BLnfUeCnU70s7oR/aag1mgsfk0g00kfe7m7+uQfRPR2XB8Yiv1M
         RBdV9EbGxbSRKktaLZVivqmOoETsDUrT33r6ZjTG2K7HV6DjhbkACmKpiISqSPxDdlEG
         elNju8IS42c6+Xrg2Xia+c35t+wRencsKZnwJqIPEb0SrzpbcKT0OENwOl/FwwNLs9cH
         2zSA==
X-Gm-Message-State: AOAM530rXCFeZAnza+tnxdR4rEdWun3dN+9uXIUBgIby/BVb8Fzr99h7
	U1l92mm5DwJRel+ETOkWTGk=
X-Google-Smtp-Source: ABdhPJwi03QAr53e1yvIyXtdzbkAkjXlsyEsHHGSndfMiPswpKk5Rw/0m51odfuz0yZswv4fxaC3Uw==
X-Received: by 2002:a5d:939a:: with SMTP id c26mr17066331iol.63.1607712402513;
        Fri, 11 Dec 2020 10:46:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ca92:: with SMTP id t18ls770426ilo.10.gmail; Fri, 11 Dec
 2020 10:46:41 -0800 (PST)
X-Received: by 2002:a92:9986:: with SMTP id t6mr17692534ilk.151.1607712401880;
        Fri, 11 Dec 2020 10:46:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712401; cv=none;
        d=google.com; s=arc-20160816;
        b=kR1xTzXSrAflgjRmLbmFmBZbbHYSomZ4u54iHTCJ+JrLZOVq28B3Sxz58uGmVW34aT
         YKH28NUe+qN2+m5Ka25SzBpO8zxU0qz7yQB2yRDPQpyV0R26L7cu+4pjOqEbsXRXkq7N
         244bJcsaOFB02t4Z/2E2VeFfl08hKUB9kBvrXPbqNwj8hRF2TsIFDsnB/bGtisREImhD
         T8Zpc+77T04APEVY+RIbJ85lYpIaVrSI3oYmf0511t71NC9XuFMbNwXjjQX8AyX+vx4u
         RilP1mfvHlfVctDDSb9AR2DlT/n3SU7gfsU/lrVJqs/VrDMXkFKqZ8e140lXV1Dr6W7g
         5ybQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=pLn7QPvqMkwg2vptFv27Y3eT1Q9EmwqKOcR4476GRek=;
        b=Fmg/qBqqEzUWXWaAV189S1C6z7PSrEF4XLgQwigL8P57U5UB1M2DyF9dpbCoD1WMNb
         BqTp16O2hhA6lTyBi/Ik5xTUF3jCkXaqOReimz0itWKHhUIwPNe0kBw28Ps6xrgQekGv
         lLt4jZMPDfi/XwAsvrX61FiLi+803vdGCykeQgP5YFj2GtdOlBPjSEInHF9MX4qDRX0r
         yZDlDRGznexNjsb52I5EO90kCKWsOVck5REqB+NmVrobsUtZB02/r27SaoSRjeQM0cNp
         CcMeKUTIGkXA0Yyo7e2pOoYfox1dg0exwfy1gQKIGy34iKdGqd6sjCRew6G0yzWBe8fO
         FDCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UW2o4dtq;
       spf=pass (google.com: domain of 3kl7txwwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3kL7TXwwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id j4si731660ilr.2.2020.12.11.10.46.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kl7txwwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id j4so7104451pgi.21
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:41 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:8b94:: with SMTP id
 z20mr136800pjn.1.1607712400949; Fri, 11 Dec 2020 10:46:40 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:20 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 03/16] kbuild: lto: fix module versioning
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UW2o4dtq;       spf=pass
 (google.com: domain of 3kl7txwwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3kL7TXwwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

With CONFIG_MODVERSIONS, version information is linked into each
compilation unit that exports symbols. With LTO, we cannot use this
method as all C code is compiled into LLVM bitcode instead. This
change collects symbol versions into .symversions files and merges
them in link-vmlinux.sh where they are all linked into vmlinux.o at
the same time.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 .gitignore               |  1 +
 Makefile                 |  3 ++-
 arch/Kconfig             |  1 -
 scripts/Makefile.build   | 33 +++++++++++++++++++++++++++++++--
 scripts/Makefile.modpost |  6 +++++-
 scripts/link-vmlinux.sh  | 23 ++++++++++++++++++++++-
 6 files changed, 61 insertions(+), 6 deletions(-)

diff --git a/.gitignore b/.gitignore
index d01cda8e1177..44e34991875e 100644
--- a/.gitignore
+++ b/.gitignore
@@ -41,6 +41,7 @@
 *.so.dbg
 *.su
 *.symtypes
+*.symversions
 *.tab.[ch]
 *.tar
 *.xz
diff --git a/Makefile b/Makefile
index bc867bc3ebda..a07e3909e5d0 100644
--- a/Makefile
+++ b/Makefile
@@ -1837,7 +1837,8 @@ clean: $(clean-dirs)
 		-o -name '.tmp_*.o.*' \
 		-o -name '*.c.[012]*.*' \
 		-o -name '*.ll' \
-		-o -name '*.gcno' \) -type f -print | xargs rm -f
+		-o -name '*.gcno' \
+		-o -name '*.*.symversions' \) -type f -print | xargs rm -f
 
 # Generate tags for editors
 # ---------------------------------------------------------------------------
diff --git a/arch/Kconfig b/arch/Kconfig
index 9b4f556fd777..953bf35bc3db 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -635,7 +635,6 @@ config HAS_LTO_CLANG
 	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
 	depends on !KASAN
 	depends on !GCOV_KERNEL
-	depends on !MODVERSIONS
 	help
 	  The compiler and Kconfig options support building with Clang's
 	  LTO.
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 65d4bea937fa..d94fc9ab819d 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -166,6 +166,15 @@ ifdef CONFIG_MODVERSIONS
 #   the actual value of the checksum generated by genksyms
 # o remove .tmp_<file>.o to <file>.o
 
+ifdef CONFIG_LTO_CLANG
+# Generate .o.symversions files for each .o with exported symbols, and link these
+# to the kernel and/or modules at the end.
+cmd_modversions_c =								\
+	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
+		$(call cmd_gensymtypes_c,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
+		    > $@.symversions;						\
+	fi;
+else
 cmd_modversions_c =								\
 	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
 		$(call cmd_gensymtypes_c,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
@@ -177,6 +186,7 @@ cmd_modversions_c =								\
 		rm -f $(@D)/.tmp_$(@F:.o=.ver);					\
 	fi
 endif
+endif
 
 ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
 # compiler will not generate __mcount_loc use recordmcount or recordmcount.pl
@@ -386,6 +396,18 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
 $(subdir-builtin): $(obj)/%/built-in.a: $(obj)/% ;
 $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
 
+# combine symversions for later processing
+quiet_cmd_update_lto_symversions = SYMVER  $@
+ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
+      cmd_update_lto_symversions =					\
+	rm -f $@.symversions						\
+	$(foreach n, $(filter-out FORCE,$^),				\
+		$(if $(wildcard $(n).symversions),			\
+			; cat $(n).symversions >> $@.symversions))
+else
+      cmd_update_lto_symversions = echo >/dev/null
+endif
+
 #
 # Rule to compile a set of .o files into one .a file (without symbol table)
 #
@@ -393,8 +415,11 @@ $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
 quiet_cmd_ar_builtin = AR      $@
       cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
 
+quiet_cmd_ar_and_symver = AR      $@
+      cmd_ar_and_symver = $(cmd_update_lto_symversions); $(cmd_ar_builtin)
+
 $(obj)/built-in.a: $(real-obj-y) FORCE
-	$(call if_changed,ar_builtin)
+	$(call if_changed,ar_and_symver)
 
 #
 # Rule to create modules.order file
@@ -414,8 +439,11 @@ $(obj)/modules.order: $(obj-m) FORCE
 #
 # Rule to compile a set of .o files into one .a file (with symbol table)
 #
+quiet_cmd_ar_lib = AR      $@
+      cmd_ar_lib = $(cmd_update_lto_symversions); $(cmd_ar)
+
 $(obj)/lib.a: $(lib-y) FORCE
-	$(call if_changed,ar)
+	$(call if_changed,ar_lib)
 
 # NOTE:
 # Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
@@ -424,6 +452,7 @@ $(obj)/lib.a: $(lib-y) FORCE
 ifdef CONFIG_LTO_CLANG
 quiet_cmd_link_multi-m = AR [M]  $@
 cmd_link_multi-m =						\
+	$(cmd_update_lto_symversions);				\
 	rm -f $@; 						\
 	$(AR) cDPrsT $@ $(filter %.o,$^)
 else
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index 9ff8bfdb574d..066beffca09a 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -111,7 +111,11 @@ ifdef CONFIG_LTO_CLANG
 prelink-ext := .lto
 
 quiet_cmd_cc_lto_link_modules = LTO [M] $@
-cmd_cc_lto_link_modules = $(LD) $(ld_flags) -r -o $@ --whole-archive $^
+cmd_cc_lto_link_modules =						\
+	$(LD) $(ld_flags) -r -o $@					\
+		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
+			echo -T $(@:.lto.o=.o.symversions))		\
+		--whole-archive $^
 
 %.lto.o: %.o
 	$(call if_changed,cc_lto_link_modules)
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 596507573a48..78e55fe7210b 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -43,11 +43,26 @@ info()
 	fi
 }
 
+# If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
+# .tmp_symversions.lds
+gen_symversions()
+{
+	info GEN .tmp_symversions.lds
+	rm -f .tmp_symversions.lds
+
+	for o in ${KBUILD_VMLINUX_OBJS} ${KBUILD_VMLINUX_LIBS}; do
+		if [ -f ${o}.symversions ]; then
+			cat ${o}.symversions >> .tmp_symversions.lds
+		fi
+	done
+}
+
 # Link of vmlinux.o used for section mismatch analysis
 # ${1} output file
 modpost_link()
 {
 	local objects
+	local lds=""
 
 	objects="--whole-archive				\
 		${KBUILD_VMLINUX_OBJS}				\
@@ -57,6 +72,11 @@ modpost_link()
 		--end-group"
 
 	if [ -n "${CONFIG_LTO_CLANG}" ]; then
+		if [ -n "${CONFIG_MODVERSIONS}" ]; then
+			gen_symversions
+			lds="${lds} -T .tmp_symversions.lds"
+		fi
+
 		# This might take a while, so indicate that we're doing
 		# an LTO link
 		info LTO ${1}
@@ -64,7 +84,7 @@ modpost_link()
 		info LD ${1}
 	fi
 
-	${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${objects}
+	${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${lds} ${objects}
 }
 
 objtool_link()
@@ -242,6 +262,7 @@ cleanup()
 {
 	rm -f .btf.*
 	rm -f .tmp_System.map
+	rm -f .tmp_symversions.lds
 	rm -f .tmp_vmlinux*
 	rm -f System.map
 	rm -f vmlinux
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-4-samitolvanen%40google.com.
