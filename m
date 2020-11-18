Return-Path: <clang-built-linux+bncBC2ORX645YPRBK5W236QKGQEUGQ3AMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFB12B8726
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:41 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id n203sf1608177oif.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737260; cv=pass;
        d=google.com; s=arc-20160816;
        b=K3JLXvpW5stDNOLQ6Z9NfujHDIE+3Jm3S4ccuM/iELcHwjXjxcm8TUNAxENU+5i5N0
         SzkdntgpLlE1rRkbjfmiNiX6+TDi5oYZ3gPsBN/v/WwbjYoGKhXU08O7iI3WX6MyWpT/
         4c4APCmxm5e1kJk/rHsr8EUJhZxysZbsSSWG8SLvdy9IT+c+N5GzdfZ/rJANQI6C2Lko
         dnB0Z3hG3mKJZmyjnksdoX5cIj/RnmwxTgc1H5m+Pf/X+3oYCXbFjwvylxltVn2YsUA/
         QiJp8r/F2Cvcsa8l+gcWqOJsnsInmyfxUScv9bir3zt4I1+6OJxQIVQKvqrggaf/RJpC
         NhAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=jY+nI0AMkPdL2OTCWUXjn8y2XNyMlgcsyQGt4jzVY50=;
        b=MvfR8dV2HXQkdhlhafX7lfdhIaGhm1UkQU3FmyodyyAYXZm5Hp/L+rgxfgYZbH0CZ/
         P7BB9THcAJ87DA/r1Da1wuICsGN9koR0CVZGmE2VrDil9Go+X7p7SDgQ7rcU1IE24IQx
         IhmmZBz+MdVeDAKt3RSaXGeOQYPt1UzVhY4OElmUE9ZDttGlXync7gxiNcv28AYareBl
         b2j6z2wqUDXCp77mq/adidoGdGW41pVte3qkCLZS3Yckcz0RQ/sApOXGbVo6A+1Qu7Lz
         W2aKj9XheBW8c5yTSXWykSL3/USdboz0Zu5I+yM40p/S8Ahb8HbZW9Kaj6tXY2L+6+vt
         0bAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="RKW/Qoxi";
       spf=pass (google.com: domain of 3k5u1xwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K5u1XwwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jY+nI0AMkPdL2OTCWUXjn8y2XNyMlgcsyQGt4jzVY50=;
        b=UtDkBby3YPPMBByACsYGE0wkvz5TBpvzx1qt4VOSAVnDrewf+1o4FnQIhG9ZjeMeVp
         GunQdCiIQN/ur+RYGzYizOSeuKj53w/eqd1UIG87gUL3cVgmFNmIghw+dWZyYeHdKHvO
         taES50Us9kq70UH4tx+oQAh//rac1Dd+IFXdxX5js1aFKRC85zx6ONcegfc8wm4P83d+
         Z/SSja2k8sSVBDWPaawymjzR3n7f5h1Fzz9iz5JFsfZdVpgnkzgUxNHxuOIM8jysBLHO
         M67K5L+9gG4JX8tcoKdR2BNt5dz+DVJgT/QcfDnIRkAYupCU5sbo9U+eluDG9OVY3H0B
         J8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jY+nI0AMkPdL2OTCWUXjn8y2XNyMlgcsyQGt4jzVY50=;
        b=gsvWBpBYCKuZ8MRoqs6cQv49DsvNrR9tCJEN3xzvali2ZdC7HdFSGs0cB1Ltc1E/Ap
         E76RVST8bJ0n4cj/nEqMa0nGT32lnXap4rn4iG2UTdCl3w8b0fbdTcBTJD/jWZH3xGb9
         gH7qPj6loIZcCjuuwh7hruOe9xqJf+97TjozucmSQKGrHtJPy90XyAgObanORknWMQm8
         v6WyL0qvqqsMTyvvkz/OV1Chu6oVdLUuHXtkqocFdDxnjISMclIAihshAmOTOr8nROCr
         +rrkm5u2sQ47zwaUFuQfAuO8dxea7IkCwcyC9JkF6YY/vYOgx+V2smoSxFmOzJb0Shl7
         Gu0Q==
X-Gm-Message-State: AOAM533b7eZ4TAHH3FdRvZwCTAkZll3PYA0L9Ksq2BbwpoojbWzQh8bA
	qBAUJ/ERGkCO7D0t8Vq6Fwo=
X-Google-Smtp-Source: ABdhPJwq/I9aEXPCOaQepxAcDJpu6XSixomfvNy8BnwiLZdXfK8W6lUEdWPBcBm6TCLCY/IP4f9ruA==
X-Received: by 2002:a4a:dcd6:: with SMTP id h22mr8129674oou.6.1605737260011;
        Wed, 18 Nov 2020 14:07:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:416:: with SMTP id 22ls210731oie.7.gmail; Wed, 18 Nov
 2020 14:07:39 -0800 (PST)
X-Received: by 2002:a05:6808:563:: with SMTP id j3mr952882oig.107.1605737259508;
        Wed, 18 Nov 2020 14:07:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737259; cv=none;
        d=google.com; s=arc-20160816;
        b=jGZhGgBqALIAnt0spU0xUnGvS8kZPEAP3Uf3CaIhnSzsHtXRU+uJN2IZGUCqiK0KMk
         WzdHzZCMgB1VatTf+V+IT0U4i6bKP4jQZCYw/Y3BYrixzKbgcBm1glM8SyujrU6jjm7w
         9APCLMxw8/jUJ3Bzj27Kl8+DMSfN8hbSp0oacRzDXsOknRhNkQiGB0DnSlg2lUmclAhK
         d+CIO+3j012R9AcuDEgmbB46HUKZ4fyRu4dO2JHqxzSHvWwk7PbB6TiTZj03oV2w+Mal
         TgAsczuuGygzJDc1c/R+L+Cj7PC+Wg7Pfx9abtPoObGsWUM4ArKH9mjIjJG0smGDUyIC
         NPZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Xqj2yLM5It7hzlaNzlHpUD+6W5kNJ3ELPBI1nZyyi10=;
        b=n09LT9VIzbDl4pYa9p86c4XtJxFyWesWQ+cPPjPJF4VMA+n2Yxgj+53SeyUHCJJYn6
         B9sI/juiVvdXLL3wFiPM3txsNx9j+IAfnIwMnNBJ5nutBTtQ6YtwkFuMgHGunK5AUXad
         nq5qOIt0dXG5jbZNFsOdEY0zXaIRURh4dFAJP8cckhTHoxnZ4duBRZ4l0vwH2mtGkOJ+
         YJ3d2lX/mabBw/qbbMKmseDk3ds3XbMbAOpzndMWtHcaRg+KPvGNp+XJrYmGL9kyoW4j
         grTVLU52jNGh/ez1No6TtErVgYWZfobG75Q87b/MOcgfIKRWCmszfDEaNuNG1qtqVZGc
         vLzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="RKW/Qoxi";
       spf=pass (google.com: domain of 3k5u1xwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K5u1XwwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id e206si2459504oob.2.2020.11.18.14.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:39 -0800 (PST)
Received-SPF: pass (google.com: domain of 3k5u1xwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id i20so2676773qtr.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:39 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4ae4:: with SMTP id
 cp4mr7001737qvb.21.1605737259081; Wed, 18 Nov 2020 14:07:39 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:17 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 03/17] kbuild: lto: fix module versioning
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
 header.i=@google.com header.s=20161025 header.b="RKW/Qoxi";       spf=pass
 (google.com: domain of 3k5u1xwwkadwqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K5u1XwwKADwqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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
index 240560e88d69..f27c0da5d05a 100644
--- a/Makefile
+++ b/Makefile
@@ -1831,7 +1831,8 @@ clean: $(clean-dirs)
 		-o -name '.tmp_*.o.*' \
 		-o -name '*.c.[012]*.*' \
 		-o -name '*.ll' \
-		-o -name '*.gcno' \) -type f -print | xargs rm -f
+		-o -name '*.gcno' \
+		-o -name '*.*.symversions' \) -type f -print | xargs rm -f
 
 # Generate tags for editors
 # ---------------------------------------------------------------------------
diff --git a/arch/Kconfig b/arch/Kconfig
index a41fcb3ca7c6..736ae228e506 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -655,7 +655,6 @@ config LTO_CLANG
 	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-4-samitolvanen%40google.com.
