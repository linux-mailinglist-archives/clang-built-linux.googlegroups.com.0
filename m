Return-Path: <clang-built-linux+bncBC2ORX645YPRBE5FYX5AKGQEBHWYB4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B1125CA50
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:17 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id k68sf997669vkg.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165076; cv=pass;
        d=google.com; s=arc-20160816;
        b=zOqzImHxsAYc4jGh8PeYeDlnLP8xd4y1kQrxPAY7zsQaK2fF3EJDrt/wcp9PJspsBN
         iSlEbohqXKu3v6qMFKllA5uLiXC/DFKxJYkIO8YbU8CyhIH4kL2o+jrrxP9IR5TWt4Uk
         vlgjXktNx4jA059TFkC34ayEs6/FMeXUYO600lPRbJyxiUwGUgD2O9zMfuF8KpylGGkP
         AyK6IGymW5Wq0CHWuoLPGfu9C+rqTcHGyrIgWo+0D0M3zrGtMhS/DDX1qwkaJFmCDeHC
         73kgU8PGYscpbZaOBp0+BWQ+2LtwKUNpBk5tjjBvSuRWTtuFAtuCM+vF2p/ll/jn36VN
         BRVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=379r3loHDm0GDVT01fnD7IgiNz68RJ4IXQ4L7RJRsxM=;
        b=cknDeHjFSBy+n0yMMNGWcVBI05jCDFwiHI+u1GNmcf92e4zRfzyiyoy8aryYr23lFo
         FOvJHfaGHFLAWp5lZ54sye6uTNHsRpLSTRFQa39glYnpJurLT+24alKV4CoKVOq9nsD1
         Qpb8FpobQRabSqUp9uBZ/7g0a0pzt7pTYnMTo9g1HF1DwH7ZK9haijgvdYK2/M1jitIV
         YHeBzZiFIFgAsRtzqAdnrI8O1sXMDac0dAieHo/Q/eMOT7B8uxXOnf/IFDWYj78qXi34
         I3XQuOCD7vTlDR6fVURjHUR7Ci3t0Sz4O7ag2SDoroBuOCypgwDqfiTQqvkTr4tUHQCv
         VSkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U4ImwICE;
       spf=pass (google.com: domain of 3k1jrxwwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3k1JRXwwKAH4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=379r3loHDm0GDVT01fnD7IgiNz68RJ4IXQ4L7RJRsxM=;
        b=VsWDyniqSnmoM/TaxlWw6GHek4NeAO3tPYyX7LY1qqrhlWSvFs44zyYlon93bUrSHK
         Swo3Nsyeyh4jhg71Ruig15ozOHjKKMQGsxZtaT/QlxVbvUcNz66Du6x9qO5bz4bSFBf3
         iTq24mJVZIZnDP9uXFrPkgQdmmw2KCZKxE/SWsP0utDMdztJuwSZXarSF4KvTnpQRIHo
         HUJ9HTH+p2HME35/VWaP5VAnYhtz4SIiC9gwGyVRLqRZbXMZ4sUlbfesK0ortFgjm0/x
         NwdsBzjid1A+JpVSmkyy5VYgzdTRxlx/vEEysMHxq5u/Pxg+jz2TiynZHhpjVqc8teqi
         ZO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=379r3loHDm0GDVT01fnD7IgiNz68RJ4IXQ4L7RJRsxM=;
        b=NbZyzZyGoJpre0i4Mug+mulZW6m6hRMEbu5S1GvSTLm1DMcMeRpL6MLOXHE5s7DRpJ
         ATbnVNzf5gdTAe26xDmGeqNvrcNnWoxP2hGNPPTgbYQmzP5O0NTyQ0uvQrW+Fqfj0i+G
         9PAu5mfmPYDlc49VoYeTfBz9fbtynz3/6vy1/WMSGbx8lKWemyzr8WBInMblFgKVKfKE
         rxmJuVAsGeIHc96G77NdFcjtApC4QjbxzN4/qkJDbg35gt1S338Y5sXJYSHB1XnGp/Ns
         5SKYfR6kjtbHNMzLdL6sWwJUMYPwdOFrOnKnyyJOtnP/PmbDyQuB/+d0gJDUgpa6d74m
         iDiQ==
X-Gm-Message-State: AOAM532OsHoG1++yAQjI+UHu1f65lvuNUcwzQc9iHpd8btuh8SvkK/A4
	KrzJEL7rseQI9k32Bx3f94c=
X-Google-Smtp-Source: ABdhPJxFa+QGHQ+nMqI3QQoxU6qUGH6Z709GnSSBr5/zbUQoJ7P8CCkO/a8Dw+7cfoflJe1xQBpIHg==
X-Received: by 2002:ab0:623:: with SMTP id f32mr2836751uaf.121.1599165076108;
        Thu, 03 Sep 2020 13:31:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:24c1:: with SMTP id k184ls948310vsk.3.gmail; Thu, 03 Sep
 2020 13:31:15 -0700 (PDT)
X-Received: by 2002:a67:fbc2:: with SMTP id o2mr3288750vsr.101.1599165075711;
        Thu, 03 Sep 2020 13:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165075; cv=none;
        d=google.com; s=arc-20160816;
        b=Tvux6kprBNxYk+n3as8VESllQreBEqhiGJ7lmznmJP6MWT+j/EIJneR5UPiS2TvOqX
         YnmdnHPQsOXvspwliLN/G4DAalPpbBnBppOddjoeJJNa//Vc9NNagZJRQ4D97JbMmXrA
         PFKAwQooUdiHBCaRk+Pz6Vt8zuOrtnuDxBdIa8a8kobgZkl3jekTuzO/fDC2PI6c0O6l
         2eWraZVM6FP6XDjpulPOsqmI+CLFKY5WBAiqsmuTPP3qrSBWTu8WSs58VEwidKkPbd5m
         np9uUMsJ+YD4UIVFDpQ/gLD1iWwus83Xhf7OshLwbtUXrZOfmzRVdNS9r7dmz/ybUAhM
         OjUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=LIPIlpem17zgU4dqkoYs+mU8v2ON9dEQqlQffjFpd2g=;
        b=Hd3wZJAn7TLYLnw836FxitxQPM8aTrjYvcK1QHVHbtgiN7ta8pgREa13CdwcCHumck
         kk3WGV90N9pD1Fof08OF+bXfMHRahi9NJfDUz9Vj8IAH0/leCmUDmMmImRxWVBL5DBst
         qWLNEorNhZsuvSqZXd0COUNDvTjIqMRBTqbRIyJ61J7bQ/Ox7RJw2g8dyAWd9K0uHqjs
         QmXxi7PU1Fd3XMZrzpZDv6uxoc0eKvB2zlOf+c4pZahEENgl7T5cQyUiAmpO68xdXQjw
         cosE8SmBKk5bPtaD9opjlUJTUWrPklciwe/f3kywWOI71SLIHWo3CTRS6qhaLBfhGWzZ
         jwTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U4ImwICE;
       spf=pass (google.com: domain of 3k1jrxwwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3k1JRXwwKAH4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id x24si194240vsg.1.2020.09.03.13.31.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k1jrxwwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id f5so2931838qtk.11
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:15 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e892:: with SMTP id
 b18mr3645531qvo.4.1599165075210; Thu, 03 Sep 2020 13:31:15 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:35 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 10/28] kbuild: lto: fix module versioning
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
 header.i=@google.com header.s=20161025 header.b=U4ImwICE;       spf=pass
 (google.com: domain of 3k1jrxwwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3k1JRXwwKAH4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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
---
 .gitignore               |  1 +
 Makefile                 |  3 ++-
 arch/Kconfig             |  1 -
 scripts/Makefile.build   | 33 +++++++++++++++++++++++++++++++--
 scripts/Makefile.modpost |  2 ++
 scripts/link-vmlinux.sh  | 25 ++++++++++++++++++++++++-
 6 files changed, 60 insertions(+), 5 deletions(-)

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
index dd49eaea7c25..2752be67b460 100644
--- a/Makefile
+++ b/Makefile
@@ -1847,7 +1847,8 @@ clean: $(clean-dirs)
 		-o -name '.tmp_*.o.*' \
 		-o -name '*.c.[012]*.*' \
 		-o -name '*.ll' \
-		-o -name '*.gcno' \) -type f -print | xargs rm -f
+		-o -name '*.gcno' \
+		-o -name '*.*.symversions' \) -type f -print | xargs rm -f
 
 # Generate tags for editors
 # ---------------------------------------------------------------------------
diff --git a/arch/Kconfig b/arch/Kconfig
index 11bb2f48dfe8..71392e4a8900 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -602,7 +602,6 @@ config LTO_CLANG
 	depends on !FTRACE_MCOUNT_RECORD
 	depends on !KASAN
 	depends on !GCOV_KERNEL
-	depends on !MODVERSIONS
 	select LTO
 	help
           This option enables Clang's Link Time Optimization (LTO), which
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a5f4b5d407e6..c348e6d6b436 100644
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
 	$(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(filter %.o,$^)
 else
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index a70f1f7da6aa..f9718bf4172d 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -110,6 +110,8 @@ prelink-ext = .lto
 quiet_cmd_cc_lto_link_modules = LTO [M] $@
 cmd_cc_lto_link_modules =						\
 	$(LD) $(ld_flags) -r -o $@					\
+		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
+			echo -T $(@:.lto.o=.o.symversions))		\
 		--whole-archive $(filter-out FORCE,$^)
 
 %.lto.o: %.o FORCE
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-11-samitolvanen%40google.com.
