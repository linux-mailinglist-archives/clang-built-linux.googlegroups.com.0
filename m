Return-Path: <clang-built-linux+bncBC2ORX645YPRBSEYQL6AKGQE6TYQBJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA90288DEF
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:01 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id r128sf7078953pfr.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260040; cv=pass;
        d=google.com; s=arc-20160816;
        b=NxZpn9fHXck83uPZ370OJsDDDv2lLjm5+IWwffbZpezRJrvlL2MY9NZm0TrLc9X91F
         tzVsDWwchrPzOvDpaJPySNpMzU1L+9z2GDVOxA5BCE0qjbXRKRzFdwKADGncGySfXTHp
         LxufU4xQxub6MiC0fDZNzljpVr5XxexSI2iiRHcjFDAKJkRwD03mEcitY6hK06Kh8GDN
         5E43dcheKDIgc/X9VYNDxeeq7QeGU1Im7lwCoZJXUXYmMJjVQo3p4hX7/g3l9zz8oV/E
         rt8yvlw+tiWZZD86Jou02CYQQDCz5HtxRxBBbW3b5YNGtzW6r0G+6dXQEzClfoH/gn+5
         gCfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IUKjiJH5PY0T5qjLOXFPZBiVBKZ9VNUbN1HFQnWWRP8=;
        b=ncWPbwcvLURdxDleifrSuiQlnoZ61XUKXJrriQKbqq5TJiL2hEbjI54sCkNK5OLkfO
         LR/6OSVoX7BTcCiqxhXPw2zao8PwQHWYczFpIgTUwir9tMr12ub129t7UIjcHuVBpQsl
         aarU9fNj4GQXcAfKmtcP7jW7ORykEVqxbSevuO4B5kNjVzP2a1Ld/gAU4Mhuer0GLFmY
         hKzCVqoqb+oUHQ6eaxvVoh0+PlXoE2wGlbfETzyH0uBiZCljANHfgUdfaN/YGVzEe5fr
         qGhDTMuHeLaqghVRATL04vpuGyjwYg6SnU9Wm657dUgBR7FGKjIUv6WyigvCL5MX79ud
         qLxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N+rPz1Ah;
       spf=pass (google.com: domain of 3r4yaxwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3R4yAXwwKAGQUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IUKjiJH5PY0T5qjLOXFPZBiVBKZ9VNUbN1HFQnWWRP8=;
        b=gXr5zcg1QYgiOg/VRbaXEqaq2erwdH/wOMHHgmozM/88OG5AAs/BefjB/BsByiCPC3
         cpGtLvWavvftmTxptm5htp6R7X0Wj7wYZBnboQJAIAteHsPbPMzLLzKtw9zDxYlXMrcI
         3Z7+qSn7yoePk128sDU4iCqrOxgrf6SpODG72LeVkarkK8I+FdZGefpTd3kWzstab+i5
         f0qjLsuG3uLfkBmHccKmz8gS39rC5qJAaTdzXzEWQp1ImfbJ2WtGSupcLkVRSBAMhT+z
         91IMfik11AwP2aDCJ86aLII8SQ2ItMZbgrQ+Mv2QD89C6Lw/lijfZ0BORQyaApATPaWt
         Kd7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IUKjiJH5PY0T5qjLOXFPZBiVBKZ9VNUbN1HFQnWWRP8=;
        b=ErqXQJgs09S66ycj+HU2sKhPxLCoggEJv4PfGDJYq425mtE4dYDgS/sCrI/gp3CBX+
         0eWaAlFdyDnYrBbdP8Q7XvwCMddUL66s5I0xHMEFO1pjjYFwHIAAsAgO4z+GufBqZUU2
         geaPVYnXrtzt3tR5kz8UcK31WQ+9OWzdY9JtQAudi/ya1t2MIX5YqGP8aV8OpMIJCQws
         xR7ndVTzKY1+0+9/CkPDhwj7v+krLss+bziEWnRsVp48pfd7Rs4ukStfThQNQI6ihAc7
         rhULBiy9KU01Qy2W5iT0u97CxLP/ODKVjieyx+pOizP6iZganqwmGKU0QgVOqoY/pXwx
         r8Jg==
X-Gm-Message-State: AOAM533+zbKkU4gwy+hXsVUnWueb+gNYjTaTzPegFRuxgdg8qwQos6qc
	Tik9vz1MAuCVmbbxCJkdIzk=
X-Google-Smtp-Source: ABdhPJyoPpX/0BnfgSqHKnhLHZTY35Uro9LDRKGFnGjhUjnGqF0ydpwF/M24lLeBHQgR8BR9UcosRw==
X-Received: by 2002:a62:7f07:0:b029:155:2b57:7398 with SMTP id a7-20020a627f070000b02901552b577398mr11137866pfd.17.1602260040488;
        Fri, 09 Oct 2020 09:14:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls5057472pjg.0.canary-gmail;
 Fri, 09 Oct 2020 09:14:00 -0700 (PDT)
X-Received: by 2002:a17:90a:dd46:: with SMTP id u6mr5799622pjv.67.1602260039890;
        Fri, 09 Oct 2020 09:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260039; cv=none;
        d=google.com; s=arc-20160816;
        b=VLMKM3uWOr5TL9ia4sSTyEv4Ul7ryUHu6kV+Lj0kYagRo/IHX1f8ImwUKgyhIfZIFa
         9YXqqy0VT1SPP5d7A1tIeM9nxeevNaFXXKTwV7Ncc1IgK/ItHQ4Zlhe8nRg7iZS9JVsE
         l7QxGiJr3AZewmVX6fvQTIStT/SAQUypNmhOCMnx4UQcE78o+UmNX6k7zLF7hvZ2fZXb
         dwdrWHnv0oG3xfb524YwWn8giXmlkVv2b5ML+AqBYTJeH5g/W14gsgJba77qh0ermq5g
         5dfnlhG7XW2rKSGOlMyzuKNTI6PPzCxJPj5BlFHCrWrxyGYEFJMWZ1X+/UlabFjFStQw
         qmYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=MsasyrcXoVEdY4lcJStL2Y71/hF3uMiIdl1P2AaoMkE=;
        b=0gk8UBncHBPOm+kGJQwNH8TQLWKWmboqL5u7jBzShP0dBakRCqrWew27uc45XMNfLO
         TIEDXXJgJgpBXoSeYBZAoL6dvxqihwC1qJ/YllxkmT//ZsahwHm6y2NI+94m5yYKvddy
         A8xw2z2/TezDYxyd7FbQYMTexqW011LKLXi53QhMsqEItJsGXaZZNkNqYil20epMGWTY
         lAPAq2fTst3GRrHQqDRrUBPYJihQqs+qhjH1jNfPCRMTWYJ5URuoPLFIKucMxDC0fpzJ
         CJtUrIBwI3erHqydU8tl7P4CgcY2KqCwXEDowta+6f0Ts6w6szHmBvVXzkJAFqIQkTRr
         zWqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N+rPz1Ah;
       spf=pass (google.com: domain of 3r4yaxwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3R4yAXwwKAGQUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id q2si806009pfc.0.2020.10.09.09.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r4yaxwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id q4so6595147plr.11
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:59 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:990c:: with SMTP id
 b12mr1803660pjp.0.1602260039340; Fri, 09 Oct 2020 09:13:59 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:18 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 09/29] kbuild: lto: fix module versioning
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
 header.i=@google.com header.s=20161025 header.b=N+rPz1Ah;       spf=pass
 (google.com: domain of 3r4yaxwwkagqucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3R4yAXwwKAGQUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
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
index a3baf8388163..6d31a78d79ce 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-10-samitolvanen%40google.com.
