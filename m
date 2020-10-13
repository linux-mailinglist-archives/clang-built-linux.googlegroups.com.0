Return-Path: <clang-built-linux+bncBC2ORX645YPRBGHLSP6AKGQEXJSIYGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id E106B28C5D1
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:25 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id r4sf13457948pgl.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549144; cv=pass;
        d=google.com; s=arc-20160816;
        b=j63xcqJHvEMZnhuFxxd/qP2IB330EFl8e9t5dnjiEX80Z8Am+K5pthzCY45Y96pAUA
         CpAwVrGLEXpaB5BHuNfLa1/IW2TZQ5qnPnNeJoexbD85+/eaMEveNxUNzk/IAnKJ/5ag
         8ScXi0NJNbJnKZiFgBJubXbhZoJXb0n+3U8mmAVBG9buHE18wA/zNhRCnUmnGLwS4t+I
         VftlSw+GPxuJYG0PHiLTgHHSMrH32SGVuOqkT+pJOjbqEqAep5rXAQEg7RHOuRPcVUNl
         f4lU1YogVoS3pTTHaP/C55EW87IgM2SDS9oNw4O69aKWoa1r1HKrXbjGXWrF8o8CFDsQ
         qHHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=JKk6mNZp5e0WBD+Q0rC1mw0z+iMVqwzqSKovjW2JAfM=;
        b=CI+bbyNtADKyc4MNAHvt+Xf00RkqH17YFasQ7qDIB3kOiaTgFvnHAKpnms7Z9X6xqr
         lg6iYYVD0msN/N1rx4wOrUlsy2+S149zwNLfErs1mnwxKuNUekB4KQJRvpcbCifkauTp
         eaUyDUEERvhv9II5PenwYwI8y36R98FH/wmmluOrUnRc3rrhaUMViKQRZBTAj98gyjAn
         3TGAaQNU3RPk7skorxIZZhkYeA2+uzWcHso4DuAXJOAJoymjbrAnWLYXqMkG/F1rBY3I
         7EGVRn+ZGLkp+DSaUjnvrj3o0GkjoEfhXH8MPvBjBOQ1CMzqOvAagui/bp0FE8DPkcBT
         Oo9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hO+ouAmn;
       spf=pass (google.com: domain of 3l_wexwwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3l_WEXwwKAJgK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JKk6mNZp5e0WBD+Q0rC1mw0z+iMVqwzqSKovjW2JAfM=;
        b=QYecAB148NBq7SKrf2xtU9Qw5QkJZZO+o+unDuyfWluDqM7vORlENW4ASYwzYV1KUa
         uJyt/1nH+smPerrist5xKY4MrXLvxw2rHWyqmzdB797C8ml4qkIwQGfnmOsTlcwLmZ2e
         AjUL6+OKYNI7YYLtZePyNcvrNfB3iXozWuW0hJz1N8OPEkyzq2adrFGYib2iCXYEerPL
         GqRQqs+B0nfuNj/lE1BD+brfM5cSfpKh298N4TgDT3KGmip9ZE4Tt+N//6qGHWsigbTl
         k4U+2mEGaZRatUHEkToBxkZYqNfuqTEvoTxalkuIchg8TsrvvtW419zve5ZzNhcGT40z
         DVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JKk6mNZp5e0WBD+Q0rC1mw0z+iMVqwzqSKovjW2JAfM=;
        b=RM9MEFEdCO7FjsIY9cZQh/6bOR5mB7g0gUGxBg8Us7Q7sf1M+OWScWHnibXS9BLLVO
         mb///wm4Ahu0P7GClChZ8A4sD8yD6bhUaUNoGoqXQX/M7hd8I0aJuTirKXcg1GRxmOt9
         GvumPLqfIlS4Zx8IPyPWPlgITVCCjZCjGzXeV0y76nV1GJZgUsXF7RLRMfkbpf0PX7ZQ
         c3DJJZJKWz5hEXHm9SPY5OFKjGkxUr6oFmXQ+LbjMDOTMmo0xD/Y8AyUDdDhZwU2CLqA
         GsJxHkMj6881KEMkFIa1IHKSV70QsYFBbueb08K8OM0e+wJQrfZ7XXHHWt1SFCRdOZag
         MPxA==
X-Gm-Message-State: AOAM531doOXKMRJGLr2cyniHiRnE19zbSkYgTy8sM4dLmGCkNteWJ2JZ
	O5yR7zgol9BRgMnNY4DxumY=
X-Google-Smtp-Source: ABdhPJxwQccPlpPZmfRIpmx+hw0aDbRLAiK3O3tORN7cdLQDBPXZAi6boACtXCi4epofij7o4o/2nw==
X-Received: by 2002:a62:7d15:0:b029:155:29ed:db4c with SMTP id y21-20020a627d150000b029015529eddb4cmr24156943pfc.77.1602549144589;
        Mon, 12 Oct 2020 17:32:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8810:: with SMTP id c16ls6184806pfo.10.gmail; Mon, 12
 Oct 2020 17:32:24 -0700 (PDT)
X-Received: by 2002:a63:e:: with SMTP id 14mr15696125pga.426.1602549143963;
        Mon, 12 Oct 2020 17:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549143; cv=none;
        d=google.com; s=arc-20160816;
        b=y+wQm3aifzBpiB6qUPwZKZgS7jnxULUxKwl3glKvpFVmqIUU5vNk71yW8eqlZZl2j9
         wg0h6ZDqm5DHJ+nn98IUECDPJp2gsVyt7ZbPuGkAnBu/8h5tmURbWPKVt2MJAuhyl0ty
         9kYlwxCznWipVzLNo2he2tqKcZHwzDVEBTF+rth6WkupBrxH8KwraU6SLscfjHm3n5QA
         6mcSeMVK4Fjzp5QK5st4qESdCeJrH8wFt+gC2KQnJQ351Rb5udxJuEhESDKG1l6OVPa7
         oPK76KJdxLftR0PpW6loaDh3YIhRpbNWrUD9zCKG1JLtjf2K8BHcwq46cnGFtA8fg1Fq
         4Btg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=elQ50nEncxP8ueJg68TNJHF0xf9z4qMT6J79emFQEIk=;
        b=z2DlblXelGy4mpUcv12lEozQ2mZwHQRSy6+7GP6c75oGSOnAM5nF4N3X7RyfW2/vNC
         nFRypDMjyACCsxzf3c1L/EYE17V1TRV8sfA8RPG24zrvRN+hJb9PbZDxcfZKcyZS1RsA
         EbyooKheAcooAlk3qxVT9gS1OO9RWWcDOa/W3lMkaWyhPTgXMUZmeKhehDKjA+u0o/lw
         iERDTzDf6i0VjweBZuXA6+YFIceiyzVFezF7glxdakjFmVashTiGSfFeDrpgSByTbEeh
         akMWdYQRGtedVh6tSN7gAiiidADy0qvtH2xXGDmobr9wYKFxvueSADCHq1ez5Id0JQvF
         0Eqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hO+ouAmn;
       spf=pass (google.com: domain of 3l_wexwwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3l_WEXwwKAJgK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id n8si1326689pfd.4.2020.10.12.17.32.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l_wexwwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id h31so13838159qtd.14
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:23 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5843:: with SMTP id
 de3mr28374735qvb.12.1602549143066; Mon, 12 Oct 2020 17:32:23 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:47 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 09/25] kbuild: lto: fix module versioning
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hO+ouAmn;       spf=pass
 (google.com: domain of 3l_wexwwkajgk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3l_WEXwwKAJgK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
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
index e91347082163..91cd6caefa6e 100644
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
index 4ac5dda6d873..caeb6feb517e 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -615,7 +615,6 @@ config LTO_CLANG
 	depends on !FTRACE_MCOUNT_RECORD
 	depends on !KASAN
 	depends on !GCOV_KERNEL
-	depends on !MODVERSIONS
 	select LTO
 	help
           This option enables Clang's Link Time Optimization (LTO), which
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 81750ef4a633..e08e66413dbe 100644
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
@@ -393,6 +403,18 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
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
@@ -400,8 +422,11 @@ $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
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
@@ -421,8 +446,11 @@ $(obj)/modules.order: $(obj-m) FORCE
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
@@ -431,6 +459,7 @@ $(obj)/lib.a: $(lib-y) FORCE
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
index ebb9f912aab6..1a48ef525f46 100755
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
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-10-samitolvanen%40google.com.
