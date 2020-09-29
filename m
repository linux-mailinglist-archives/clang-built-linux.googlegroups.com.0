Return-Path: <clang-built-linux+bncBC2ORX645YPRBVGWZ35QKGQE6EHMAKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEB627DA7C
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:01 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id bo17sf3374026qvb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416020; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUttA4QHRrnNVhO7mCm0VtRqKt9XhBcKcJBuFKyWAREJSRXl+RWtMYq66Kw4qv6Zir
         DKtNRQmw1wo9gFfweZP/i63jdSgu7przKwm7CZ+q4sJCkWYh6q2fwOeT5dxEwBeVlkHH
         1wCVBFeipM2MR76zHCwrdbqbkF3ZlLBWbSFwZ7ox3qRJaowkYqJgAHiXn6M8fwgDB+JD
         uiU6L0j9nBBm7xRnPKzjcdy9xb3XIu62yGfiiNnHPY+HMJLLrFgF/cZQ/j/6JolOxfS9
         sl/DNHxXS3H6y6Y9xj3c8KZdUuh5sEom1niM1qvIRWVGQF518RdzzimIwwqzWnVsFw3+
         9gXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Sp+t9RbvX8viJWkLHz1kHlHqN22J4Gp/Hg1QM0BN/do=;
        b=EpI9bG7dh9GrIrFbWyGYMalFURMS11nf5eRCbidcxEWKKTQDNs2Qw/MZJK/yNyWOUW
         xduyYgRv88K/LzscM6rAPMZXVAVkURvbrY1efvXgSvmTupdJaClDF5tqLu5zHuYqFip8
         zMpIbEJNagBHedH4TsoY8+dW+8jSsywEZ4oGCd2voMefN5tCggwJaPu0TVhILDcdJAKV
         K+d6tsV9FJndDKV6An9wC27XtEvyFI4i9POmwXmgJ+NBv//+iLlKbG+2U+FHittcQRmu
         5nP6FcLuTArfBgl76sA5objMlOktxvHvTN9BSmqmiKd5LWEZxmFVMVhbjbEtBbn16uhK
         m2Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="eZ/5sVKn";
       spf=pass (google.com: domain of 3u6tzxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3U6tzXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sp+t9RbvX8viJWkLHz1kHlHqN22J4Gp/Hg1QM0BN/do=;
        b=k3HsaAaQ6gP9RtxGWqcQHoku0eMDu1MHnoMbs/9gPLLKWUKMF+647qANcnFqn3P7NF
         RPB6f6tqbz85HDoF7HiOPM+WlGyzg9/FBmeurhwjNpFuFdBr0Mm98zHTvfyBa/M23/J4
         glRPfyp9LIQN0iFBJgC0YV8J9pEqYPXbPZsgwlCkb4rYLa8X2BQ9nruu6J+RVvVUsLRF
         XmlkEZ/LsH8PG60Cdl2b1FJX75Eunpe+LPKcfRxxj3p6xe//gE8rhwfwh3skTdt8yAkv
         M9VT3zNmxyXPHYpTNMeyeo45sqySBkQ8o1hRz2UJlUS7dBag5VfVcyoQFJTQkfjXtXZ8
         JZrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sp+t9RbvX8viJWkLHz1kHlHqN22J4Gp/Hg1QM0BN/do=;
        b=ZBabFARIF8+fgap9V9Z4GI+y0nmeZ2zTvYaE7TSg15gipC1E4wkL3tgn3dRXtasXyz
         Z7Drv8F5oN2fp/gl22XM0gd4GL8AwrShFc8lRVy1WcbwrP2IfmkW3W1tV5m0M6/tks5N
         71gDEUSgqdxBGxVSi9pBFsQRsqhqMG824eRwVoPPTij0qTkCYrsvB9SHInzqhEM5TgZ+
         Vc32xsLERlRzW24kLrEHggah7y6iPSiKVywGcfNSmrR+Y69X20nsnqTzF7vqvvNg8JtE
         9I+DIqNDexmGHPELLMCrwoEbIZyZUIo5zM/9eHUgQTaHxd3I67xpUj0G8R4QVwaklp8j
         kg2g==
X-Gm-Message-State: AOAM532ZZ3fxote74h1Agra3p8xUWS72Z/1XWzdZcwvkahboS951g8BC
	jcUnvalSWA9YwLugbDtmV2U=
X-Google-Smtp-Source: ABdhPJwq+H2qQsjXxEQ1NQZfg0PNqMEeDaWZ82QxQ5oTjUifwJ64JGjUpi/42DPgHLCT8LuO64nlAw==
X-Received: by 2002:a37:638d:: with SMTP id x135mr6682043qkb.60.1601416020441;
        Tue, 29 Sep 2020 14:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:40d2:: with SMTP id n201ls5397351qka.1.gmail; Tue, 29
 Sep 2020 14:47:00 -0700 (PDT)
X-Received: by 2002:a37:474c:: with SMTP id u73mr6758275qka.45.1601416019950;
        Tue, 29 Sep 2020 14:46:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416019; cv=none;
        d=google.com; s=arc-20160816;
        b=ISLviaLPJxkTSgVe6I8CauWfqoy7XC986ylo3zwaJa2Q0MA87XBRENWoEXgL2Gg5ZB
         R6AigBiWy29LsakhVGm5WEe3H6x4dwY3ZKaue1U7hX1Bf++VrTbxc+k4prhehn7NVfw2
         P8+yUHNs3E51MHPYsnntqguygm3XC0i5t+lwNcAWtkDTGMKrLIsPMntCHlQMHNWvDAi9
         /kI02VBqvEzWimRL1qwr1BrDbSgrF/WnKGrLKth1+5iTahDGMsaV0d8n1JkzXczp+atL
         XDD/ui7D3kuBO+JCzaYiMi2gpz3YubUPdaAPjVYEIAVuHjLPRKwdUtif4Unpv+4CIId7
         P6kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=tVbCdCSbxCxD3KjIFwFCcvevxc6usIE71x0z99le3Xc=;
        b=Osvht8D1GWC7e0op+vCiY3JjWzOvujc/Wms4S8VC4H2gmWaH4+Xxt6EOFR2+cJJPuO
         PDD7njqVVvSaZHSlBBb/O4SNDMsSovwuJi7JuKyWj91E3LJ3UrXliyA+c/mwk3Hi42tm
         4GidLBDUZJzulbTdtE+UPiTlFx/cDYBTH3CxXprhUteEpDC36VMl0d4GQGlfgzF3TO8j
         0QSGRlLLcsHEhwPUx6/8LsjfOeOkAAo6I9D0fSY+C+1Q++o8nfzSVUmOuVZJvUHzI+xc
         QgInjHsaXAYfHFv/rHF/IsCsNnskEn29zDBZ8IQOXcBW3wKhO08+rHIqrndFSOyHCfdH
         p2WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="eZ/5sVKn";
       spf=pass (google.com: domain of 3u6tzxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3U6tzXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id a27si386010qtw.4.2020.09.29.14.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3u6tzxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id r9so6391716ybd.20
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:59 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:ae4e:: with SMTP id
 g14mr9182749ybe.156.1601416019420; Tue, 29 Sep 2020 14:46:59 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:14 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 12/29] kbuild: lto: fix module versioning
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="eZ/5sVKn";       spf=pass
 (google.com: domain of 3u6tzxwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3U6tzXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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
 scripts/link-vmlinux.sh  | 25 ++++++++++++++++++++++++-
 6 files changed, 63 insertions(+), 6 deletions(-)

diff --git a/.gitignore b/.gitignore
index 162bd2b67bdf..06e76dc39ffe 100644
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
index 8e2eaf6452ba..23cdb475c445 100644
--- a/Makefile
+++ b/Makefile
@@ -1827,7 +1827,8 @@ clean: $(clean-dirs)
 		-o -name '.tmp_*.o.*' \
 		-o -name '*.c.[012]*.*' \
 		-o -name '*.ll' \
-		-o -name '*.gcno' \) -type f -print | xargs rm -f
+		-o -name '*.gcno' \
+		-o -name '*.*.symversions' \) -type f -print | xargs rm -f
 
 # Generate tags for editors
 # ---------------------------------------------------------------------------
diff --git a/arch/Kconfig b/arch/Kconfig
index 0742ec643d79..520e900efc75 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -603,7 +603,6 @@ config LTO_CLANG
 	depends on !FTRACE_MCOUNT_RECORD
 	depends on !KASAN
 	depends on !GCOV_KERNEL
-	depends on !MODVERSIONS
 	select LTO
 	help
           This option enables Clang's Link Time Optimization (LTO), which
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index ed74b2f986f7..eae2f5386a03 100644
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
@@ -390,6 +400,18 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
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
@@ -397,8 +419,11 @@ $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
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
@@ -418,8 +443,11 @@ $(obj)/modules.order: $(obj-m) FORCE
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
@@ -428,6 +456,7 @@ $(obj)/lib.a: $(lib-y) FORCE
 ifdef CONFIG_LTO_CLANG
 quiet_cmd_link_multi-m = AR [M]  $@
 cmd_link_multi-m =						\
+	$(cmd_update_lto_symversions);				\
 	rm -f $@; 						\
 	$(AR) cDPrsT $@ $(filter %.o,$^)
 else
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index 66e0c256403c..753725b88683 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -108,7 +108,11 @@ ifdef CONFIG_LTO_CLANG
 prelink-ext = .lto
 
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
index ebb9f912aab6..3e99a19b9195 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -43,11 +43,28 @@ info()
 	fi
 }
 
+# If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
+# .tmp_symversions.lds
+gen_symversions()
+{
+	info GEN .tmp_symversions.lds
+	rm -f .tmp_symversions.lds
+
+	for a in ${KBUILD_VMLINUX_OBJS} ${KBUILD_VMLINUX_LIBS}; do
+		for o in $(${AR} t $a 2>/dev/null); do
+			if [ -f ${o}.symversions ]; then
+				cat ${o}.symversions >> .tmp_symversions.lds
+			fi
+		done
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
@@ -57,6 +74,11 @@ modpost_link()
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
@@ -64,7 +86,7 @@ modpost_link()
 		info LD ${1}
 	fi
 
-	${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${objects}
+	${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${lds} ${objects}
 }
 
 objtool_link()
@@ -242,6 +264,7 @@ cleanup()
 {
 	rm -f .btf.*
 	rm -f .tmp_System.map
+	rm -f .tmp_symversions.lds
 	rm -f .tmp_vmlinux*
 	rm -f System.map
 	rm -f vmlinux
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-13-samitolvanen%40google.com.
