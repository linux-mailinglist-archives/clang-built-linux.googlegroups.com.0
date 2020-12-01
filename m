Return-Path: <clang-built-linux+bncBC2ORX645YPRBDXPTL7AKGQEXFGIWJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E292CAE84
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:20 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id 185sf1778779pfw.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858639; cv=pass;
        d=google.com; s=arc-20160816;
        b=cRJ7jDQdISsoyzPqWmQqo5x+Q6gm2ELGeDfsQxBWKJGsk0ayexXFVl7dC2uiBTWO3u
         RicBdjX+eiGo4ClQSvlPtHQ0hkDz/U/5uHJHtfvD44Pd8eKYSgwRH7hrX7/PFUte8h3r
         W+yJ89yHjvtC0MEwsB0BJxkS6JI6HIVJYxFyKCf0M43Fgq3FA60bKgUZXHt/c+py82J5
         H6OSxCdiZ/XvQwPmNlkZDczbi4QJZn3d91Z/3Dq7ZaFZgnVaYkMnaah3HJVR+Nwcx3xk
         jR1NuwzdeQ0oE11Two1nNVNSqWV7l4VaFNkrfdYxG43z64sdtgHHu2CNQYlJzZB6FdX6
         A1aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Li5NDI65sQNRBrbtDW+RiOD2s8JSehLePw5OOc4IpQM=;
        b=kQBsBISJvHHzaXZTsymgh4VieSO4xTlsbW4jh+JsU1f4XYOpCllbxvjcSE1yJ2J+23
         W/y+AVy1c12Wzf60t6RPC3l8QlpRmlnEiPDr8O6bDh4wEkLIa/7JyOlkMqGcu4QmSj4N
         Vt/UjXChOGVR8V1VOmf+0Z66OWAK7ibvtZ0EtSR11T91Yf5s5zWhjxXL4RKMcP9Qp7s3
         0ayfEHFFlilfLzxQ8GT39W4mF2YmRiNKGfkcw0glLWZj6AxNZzJnbbIUUlk4PjpXSWjg
         vTFTTXFjhUMlTRQhOzyrjRCsPZsBrqBcOs3QpZG+vFwmOBgi/aW8yqQ0sE/6pkko6QyL
         nYiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bwNhyVWZ;
       spf=pass (google.com: domain of 3jbfgxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3jbfGXwwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Li5NDI65sQNRBrbtDW+RiOD2s8JSehLePw5OOc4IpQM=;
        b=temgaI7hLS5BJje4iqprvTorfQJW9K4VtBqrI6k608rEr1Si2IGFaPOfEOjDoWlAV6
         yARIoaawPVgSJdIkfK6wSLLvvUXVez5HbdJTN9QuQXMpEwEuGnHPv0DHdwwJyt3IpKwZ
         hGWxbL96UqQ0XSax3plF78i7QyZ318sYzM+tndmG/l2LuwOq9EVdLSR5RxNzkM7EO7Sf
         gs1U36Spxz+KTBZ63dIo38fGo6Dzr6rDlJPUTzeDYQ/39hFrXrvd/m04XTDrck247ktN
         90Yrt1IWNOeHA/K4595wZdLHKPg7/p/sbmpjCqQIxS7m0D51kkWK+kZnNmVUW22r9C8S
         j3BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Li5NDI65sQNRBrbtDW+RiOD2s8JSehLePw5OOc4IpQM=;
        b=uWAmg36YTy4NDvVJ5CiAhWQvEfhp1MH4fCtKz1QV5yPtaHND6rG3+pOqhwtPvw+JlQ
         ORpp7TstA35f1DUEwoCtyyr/3NTody3CsQ1Q+8QEHceC/WAlj3CFbnq8p7AttCeWkcVD
         n0zggj85j0WUxmUOsIKdxmZS4asi7m9JtvfO0UtPMV+A5hnHFnTanLERQhiV8TBSY1mk
         /KNaAMIlE9/faXpzfAk87KIaCK0lI8tY9doImT42ErJivrlCR1u5a4SM7RodKIW1mvnt
         LioWnIpEdIYImPJOINOBtY2apRHZRbRhkfBuqoUnzNFgeH1dMFb5ISRfM6RNq4V+dvge
         tBNg==
X-Gm-Message-State: AOAM530tvRVv3oniDQPj7TrIWfI501SpPEuuy8hZTXW30WIYn35x5k10
	mpqpNuDkg5Epq08NtPzmEAs=
X-Google-Smtp-Source: ABdhPJy1R2b/srJWpox0J+eDPx7gJ1nwaKWURlNCNH8ZVdkvXQoMuF7AKXlBvf9fCw2wWxsJs7Cakw==
X-Received: by 2002:a17:90b:e0c:: with SMTP id ge12mr4729848pjb.31.1606858639060;
        Tue, 01 Dec 2020 13:37:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ac0b:: with SMTP id o11ls59922pjq.3.gmail; Tue, 01
 Dec 2020 13:37:18 -0800 (PST)
X-Received: by 2002:a17:902:8a8c:b029:d8:c4bb:e427 with SMTP id p12-20020a1709028a8cb02900d8c4bbe427mr4797962plo.23.1606858638291;
        Tue, 01 Dec 2020 13:37:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858638; cv=none;
        d=google.com; s=arc-20160816;
        b=Lswr9Q5unh/FIGhgnC01QKFh88P5fnEDwYAc71wkGiCh8Lg1+rPA/zMAXZt07+4hnL
         D3PN6jx3ixCHVV+dDVdh7iUlQqfuieB6RsjZ2wgKZHsCeHZk+ihJIjzUGrK75w2wmlRw
         11t00jFRhQQIVt+uZcW7c0qGwLLl3IASMAfp6QtB2Zdbxn50RAJKVgVyGQ5dLw2QNT/i
         6e7TwAACjPqywmdIpNOS2Os2Cv4tkp6tNlfwqP1jdDGEkiWFXD0el4QiksjFpyJqA0CP
         qifKTciGgy1iD0R84br6O4rswdM1CnFClHmFXEp30Lh8IDnqY1X14Mgf4YPgaikEIDv4
         +Rjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=CpR564RHFHlecC9BI5duKNRiR1OMzoa58D4GbdRgRFs=;
        b=jIt9W1A3qe7QHRgumF1S3C8SYVJjdn9BpwIkWcQasDJigpkBhuT6ubMY8Q1QIQnC7z
         iuKTbFiiod17jUIFNv6SuBKP0dcjAkeHfGXATCOWzxRH6l97WAOTxL+KHSsx1lLYyimf
         Y3/kGZfRdKz91wPMHaUp3atu0heayg/+kzBz0eXjcFJXFU5YOWpZgxdS/xBOENBInoh6
         D2qoN0TsMBYAHWF6FWeLz9wIGMCnq6U6gFrCK3XSydERrf2Imkz5WpCXRaAOcGLdvTwI
         LDPGLFyIMT/lOUrxXV4ZD09updcaxNksCPIU4vwPEIMySOH4ppGkrYFNp8u63meSPZ6T
         EAJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bwNhyVWZ;
       spf=pass (google.com: domain of 3jbfgxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3jbfGXwwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id d1si91176pjo.1.2020.12.01.13.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:18 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jbfgxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id b15so2198394qvm.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:18 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:fc52:: with SMTP id
 w18mr5436400qvp.48.1606858637452; Tue, 01 Dec 2020 13:37:17 -0800 (PST)
Date: Tue,  1 Dec 2020 13:36:54 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 03/16] kbuild: lto: fix module versioning
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
 header.i=@google.com header.s=20161025 header.b=bwNhyVWZ;       spf=pass
 (google.com: domain of 3jbfgxwwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3jbfGXwwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
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
index f5cac2428efc..222ae96d179d 100644
--- a/Makefile
+++ b/Makefile
@@ -1829,7 +1829,8 @@ clean: $(clean-dirs)
 		-o -name '.tmp_*.o.*' \
 		-o -name '*.c.[012]*.*' \
 		-o -name '*.ll' \
-		-o -name '*.gcno' \) -type f -print | xargs rm -f
+		-o -name '*.gcno' \
+		-o -name '*.*.symversions' \) -type f -print | xargs rm -f
 
 # Generate tags for editors
 # ---------------------------------------------------------------------------
diff --git a/arch/Kconfig b/arch/Kconfig
index 30907b554451..c3c13ec9a74c 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -633,7 +633,6 @@ config HAS_LTO_CLANG
 	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
 	depends on !KASAN
 	depends on !GCOV_KERNEL
-	depends on !MODVERSIONS
 	help
 	  The compiler and Kconfig options support building with Clang's
 	  LTO.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-4-samitolvanen%40google.com.
