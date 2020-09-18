Return-Path: <clang-built-linux+bncBC2ORX645YPRBS5KST5QKGQEMOTW6RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF853270635
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:08 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id w128sf3066280oia.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460108; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1rBweaS+50nIcuY0xYcfac9bk+Al5XQ6ZfkXro0fT5Sabpk0H2Pyx17SKg5e+56Cz
         NKhbC+FDEshtsKpK1M0JoIBABjsi2g56kTqrK3sPdvrlDDMwW4S662+Uz8+LzcvOCuNI
         ewP/tqwfhTTtYJ3xJF/GY2UpMp2EsNlHLHno7criEiTjdHtT2KEdDukeqDvVXFzyGIjF
         0ow0xXGExadYxEk1QyEgbIP/DXlZ1Zura/HslY0TvYlIPSjS3Ck86ZqPyyjRSkfxsVR1
         jsL1FEEV49GbkyNXOuqVNkc4nMGoC9FfjXPCOtVSgJklSpZ6pxQJ+GnE3puMjnE9q+6x
         wSAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=0pmhYpxOS82HqyQc1+QDl49M3ODTejB/Fd7eNwDHLRY=;
        b=FqHe6IjNtqJHenEuOTH9pu5+inTW9cXaIgE8/NCxY+r+bDfltHDtIZ5/oybInkn51J
         DTNjMienInvZtnIcfHZgS8Rek6Xz0h7aP6u2vqt9qhMocxsbID63vvvk89exFUiH4qx9
         I6HhFdjBJgz1JFpGyoTw9gOktfxGNoQXPXWGYNpiJPLsgwlPV7+w34o7JeN6Dh7x/XYG
         wPchaCnlBwlBEtIle+lTPKXdJri3mWoiGSYQUYQ7SDVunifKpFdK7sLx7guuE+ru79ju
         c5jDPXPmKIXIKoIL/E1FWQxgIVXVwII3yg5T3ipyz63DTByOiVR8yfC2Iz8xbXXqRJNB
         +8AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="W2h/XnuG";
       spf=pass (google.com: domain of 3shvlxwwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ShVlXwwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0pmhYpxOS82HqyQc1+QDl49M3ODTejB/Fd7eNwDHLRY=;
        b=jhEAFLgGAz77OjUdH2cFqXFClzRt/iVqYpRM9YClWoJkrjojFDDCHXlLimjF6EntJg
         OhrAu+tLSRYtDt+jHp9dDy1oPTm2lQHPi4y2ghEgLOiTMequJBIzetlwMnf9cnO/xGcT
         xaeKQVQyEsruqL9lczO+gLgukDyTvOa+iXJfEHEC7ELCGgvukUAA3n00J5oxPeBjCSuU
         BM+Pm/ybDToFYY4iiw6nNUHHuR27WdBB0qN7O+afe7MQeUfbMGfE2zq4QYj0MvbSbXsl
         +Ffq2S81ZbFCsRGN5+CocYh8ZmqeTy8s1tgx0lzDgCQJzllJLhAtcZL3jBpMlPqbazu5
         c/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0pmhYpxOS82HqyQc1+QDl49M3ODTejB/Fd7eNwDHLRY=;
        b=nONglv/O2teCYHg5nSyxlJ0S0+/32gJO2vE3DRy5jBX14XARgxI/Dxov4YiS3vd/rJ
         GCfhuMzgSBxK3c+hP38w7SaVMIIsL685kXKWJ3+o48ssD3oi/fHKDo0tW8LHCpfXwRMW
         kvODWy59U4uxZRt8szHXoF/sOLxQScHP5NbMlejJ9XYodvA8lXnpkIKaj35iywzYCeC0
         Os3YqE4UwiyqUk8eS4v2i4UfeWlh3pZddiCP5t1d01WJRefKqdZyAFZG/OlTDxEq4yrP
         p2vpQc0URACI8swUwuXwC8sd56sAJTLmxOlpB6U+ArzRGO/mP9bCVmQmVR0bGVF/vOzV
         lV6A==
X-Gm-Message-State: AOAM530JgJc2H4+rtM6ggiIcvm8yAaoqx9POLH1Zcq9j9ABTgGQo5TET
	ngVZGHSlJwNxv+t16RCiVsI=
X-Google-Smtp-Source: ABdhPJysvG1jfWoWRhCYt9wkZNbTymuogZoEhK/WORN7Rn5zUKmKspmxBCsqrV5rXFSK+Spv7DaBgw==
X-Received: by 2002:aca:d07:: with SMTP id 7mr10988007oin.52.1600460107733;
        Fri, 18 Sep 2020 13:15:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3a07:: with SMTP id h7ls1573055oia.1.gmail; Fri, 18 Sep
 2020 13:15:07 -0700 (PDT)
X-Received: by 2002:aca:815:: with SMTP id 21mr10884871oii.5.1600460107306;
        Fri, 18 Sep 2020 13:15:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460107; cv=none;
        d=google.com; s=arc-20160816;
        b=Q341WtEGeAQn10F0pgxGFdFdV4lzOG529CfA/2pqE+ju+F0Jj4uJtAIz8nqY2tVFVM
         M3iNwLqb5mTQsPIxoC1uZoTMMdgcYLnzUbusW/zQSkL9pWir5LFVrox3yN6tL8GNdDGA
         oXMEJfGg6C95uQaFNkovg+1Smzg4Q2LfRAXzahIVxf6cG4g8ryudpgcqCZ1/XE5++Oza
         9TkQ/xK4zQ07V7WoGjWnCxxoT9j4Z8yNstKC18m11KAbdmsT9zGnrBDxYS+K1i6c5TqJ
         EirF2fszjQH1oQb/gUeWhtutxkwQHjX3WHtEKwV7H1kUsUgPXfj4Jn3Ul+6gmlxDagvR
         nujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=D6tDM47xuke5ysE5WIIDa5rp1LAjlEXtWPHN9k1Y8+8=;
        b=IHUZLTwxMu1jaHtJ+aRtJ5FQsFGUDTd/JDrjpdPF3R8dse0AjcEjwowD1fgRoOhNOU
         1svvHVQgbeyKBOiD8Fc9hLzuG76EHPZNKq/Jnp9X8hoe6hlXvHp62WJc2jIYpc0Etdo6
         mTzBCVSZLTAuVrybG8CK01ijesEGAsd5HmPzUhWAYuESFzdomFZPh+WaOoUQRQdVy/e3
         ks33P9D8r8Zw0zdoGprMUR0QRRtZg3+zu8te387iVKNmZ3zxkLwHXn9gVoGqPq7U1cHb
         JPPn5DRqN1QucwywopJpSQPjqADMmbfT2nssPsehxNU6HUj56tc9Jsw6idqRbHOK3Ksr
         8N9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="W2h/XnuG";
       spf=pass (google.com: domain of 3shvlxwwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ShVlXwwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id l19si385139oih.2.2020.09.18.13.15.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3shvlxwwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id p13so6766288ybe.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:07 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:bc46:: with SMTP id
 d6mr41185316ybk.511.1600460106948; Fri, 18 Sep 2020 13:15:06 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:18 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 12/30] kbuild: lto: fix module versioning
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
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
 header.i=@google.com header.s=20161025 header.b="W2h/XnuG";       spf=pass
 (google.com: domain of 3shvlxwwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ShVlXwwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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
index be923c18421a..629d4b18e413 100644
--- a/Makefile
+++ b/Makefile
@@ -1845,7 +1845,8 @@ clean: $(clean-dirs)
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
index cab9d1024c23..44b6d964bcad 100644
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
 
 ifdef USE_RECORDMCOUNT
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-13-samitolvanen%40google.com.
