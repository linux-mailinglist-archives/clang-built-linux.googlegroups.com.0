Return-Path: <clang-built-linux+bncBC2ORX645YPRB7PQZ33QKGQEYQ56QOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DA2207CFE
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:02 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id p8sf2552413pgj.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030781; cv=pass;
        d=google.com; s=arc-20160816;
        b=uMmES0+zLdjvOn84OJIKMs9Zh7S09WEM5D4LAc3XPJGhNFy/RI5G0T0uEEgHcXAww6
         pg6Uj/fVFuC7HKONToDgmbhUU8TNwvwgru2JoRpd6tVNk1R35n+KgGFWpqif9qTZXpxw
         blM4D3praADXvyD5uNed/HVuN64OdnKYDT6nBodyEp3d13LeRxCE5qG8DcS2ubgmtZLC
         bBiUWn5azEcmO2QYasYP98q0k1IFq6tt4MdSFKFILp1pkMCYJMQJEFYwwMxzp4ba7V3e
         +K7YX/4CGNw4LLQCzR00N2FcvB+hMLh3YLbEci22/bipQUStQIwivJlmLiD+AdDHMH1U
         4wqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HzARhHcyzRf3crz56IBwvKQtCE4qsuCgfZcbiGzZ4AI=;
        b=DQ91jX1FVy0lf+3Jswb6txqZTpYlCznvjWJ7NcXiuKip/9Z+FW98Ka7qIkCOOuCKQI
         gzo/sZ6+wIKLLSzYfOX/XqZPDQTsHKioIqarSzJhd6KvLpH8ZxNUIgZQRTnsj1lR02aa
         bVSD0pKGjtUn/Im1rgMSqxlPlQreIqQ8rnHF646moXwgyXeUO6uOlGkAZfo5+kimtRQB
         BM1YX9Vrbwa14MfeiOAlMh80w9VtptwkT5kiZjAUqBR+gnysCadeXMEmFZdic8zyyX0x
         Xxzc1G/Ym57uhwA9pBX7n/xPBuhGVUo3NDb+QSNnBTVmt/CBQ/8V//JR3+DU7XylQJhm
         uqbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vIahDq7a;
       spf=pass (google.com: domain of 3e7jzxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3e7jzXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HzARhHcyzRf3crz56IBwvKQtCE4qsuCgfZcbiGzZ4AI=;
        b=Mwm6G0uD6QiEXo1oKnh9wdJPK3IAk9lRN09g9x4NU3Trn7u3E8hH1fCUfpI7OTpP7Y
         ciegqakT6Sqmuq2Am0s6A1n4nBY7PwlYvGTbi3kxpF3huDg0J5FkR21wMpVqqe4OcGvy
         BKlZIkYQxvdi0Uf9LKleaC9JvMHPE/1SS0G3yyNoXZqywt+nfitCKAJIHK7Xh7BOjn0O
         JflAMOLdHi+mpKla5o8tPVZxYQE+sC8sfe8IYVJRcLGgnV5UdKNIC94BhBhN+oYcgMkC
         KbbfQobOg3AJvKb4vDZh//9bQOgnaqR6LEVhTuOyiDcGvKpRviV+TXjtYGL9U57vKQX8
         aBEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HzARhHcyzRf3crz56IBwvKQtCE4qsuCgfZcbiGzZ4AI=;
        b=W7oyFJX3bo8WUWVrvgot01ZGy3soJUr+Amy3olHkloR/POn3qPLJ16Qr3rz8HRUg47
         UK/DqAxbIWuqe9ko1GDLWPuluQRNwLo8EUuKHwwds/4IpWUQHZWSC0KPTnBGB01d7Qfe
         12vPzay4n3+E0XWGahvws5aJvW2rbtKgIy+XtnbqPKZCtJd8dMgc6Q83k3CXtlJZ7Eb5
         uNApXrJBkW7EiwMNGkFy7VRXgcspywfvXfINH6PWNWqhPZA1vk8YOHsMdPzRZafMqMud
         vcOmm1WATEhoDppfKd0+s/XmiL5GTPTaTZOl3StP8vYfnhCIdDv9kHnwonF55NgVbnAs
         C33w==
X-Gm-Message-State: AOAM533TftG1tVCqPKa3IyMxplPW5RWNIxzukiDK+wtlWEffm7OYmbZ5
	Cs53LO/Y5FUuZ+53czweMMA=
X-Google-Smtp-Source: ABdhPJzBCtbg5mdqqwiIPdG7rUS+vQbcNIx4RbLFe873vbFQXKURxaCP3f+oBE2JDogZJQo2Y/zYWA==
X-Received: by 2002:a05:6a00:1490:: with SMTP id v16mr29946117pfu.173.1593030781224;
        Wed, 24 Jun 2020 13:33:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a84:: with SMTP id w4ls1121657pfi.7.gmail; Wed, 24 Jun
 2020 13:33:00 -0700 (PDT)
X-Received: by 2002:a62:f201:: with SMTP id m1mr33275193pfh.198.1593030780686;
        Wed, 24 Jun 2020 13:33:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030780; cv=none;
        d=google.com; s=arc-20160816;
        b=Pm1zk9gMyzo+0LPZI0xjlkNfl//D79MbsvIBmWAU6n6GALicd3a/90naFX/Fn4ho8j
         YelhaEjhNZEDz1yqw7OHrPyDdO1U9MpMWEmP79KH/0iA/X9Hqjy1KzA6rZqIE9C8QQ3F
         LFlqHkho0Nxwlg7a5iteUNRmttgPU4UJAV/yYGqAAW7Ad47INfz3AUKzONSRyGULsHi0
         bHKpKK6shreK++BfsHT/yiLTyjN5DRdIFq1y0uDfu2r6NtSmQLoHgCwjPeb0AmDX9Gve
         DsyUdXvQ38MYEm2jojH0smny6Qs0DKI9gkRkQymRVYdUTgo+olRrgjqA8LSUwhkU7L8K
         K4Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zJgCLl2NhOgZBqIPJZhtZ4TPiUfcQmmxIv/fzhpa6kU=;
        b=JIPBUb4cXFIgvERfvz1YGpUKI/XvSPmojKvz0PA0n+oDKWWrAbkulds+lWEdcXTQn/
         1xJPu7G3BPZWdfurO2qT0zvJMl406FgdJidEBIWkNSMAX3zLwjxqE3a6MQob5Kyel5ms
         TLej/QV2QYfgGxFAxZ0XsJucSo0ynBukKK+5fqBo1ILxkRm4Q1jt5JqyswmEwl1m87HC
         uIEsTbMtXwkvrZgc24W49zmfrPGcaq/TRo18oon6OgwqH1CzMvY90DG+UEBpQ8glzPT6
         92kNDrd+gwLULP6OkipIXzxo6HmnhlBtR1wg3mg58PZ00cM4wmHDEieEkvS9toWPY7UO
         TwHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vIahDq7a;
       spf=pass (google.com: domain of 3e7jzxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3e7jzXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id n68si742541pgn.1.2020.06.24.13.33.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3e7jzxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id y3so3548936ybf.4
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:00 -0700 (PDT)
X-Received: by 2002:a25:7386:: with SMTP id o128mr46698757ybc.266.1593030779834;
 Wed, 24 Jun 2020 13:32:59 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:41 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 03/22] kbuild: lto: fix module versioning
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vIahDq7a;       spf=pass
 (google.com: domain of 3e7jzxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3e7jzXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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
index 87b9dd8a163b..51b02c2f2826 100644
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
index 0c7fe6fb2143..161ad0d1f77f 100644
--- a/Makefile
+++ b/Makefile
@@ -1793,7 +1793,8 @@ clean: $(clean-dirs)
 		-o -name '.tmp_*.o.*' \
 		-o -name '*.c.[012]*.*' \
 		-o -name '*.ll' \
-		-o -name '*.gcno' \) -type f -print | xargs rm -f
+		-o -name '*.gcno' \
+		-o -name '*.*.symversions' \) -type f -print | xargs rm -f
 
 # Generate tags for editors
 # ---------------------------------------------------------------------------
diff --git a/arch/Kconfig b/arch/Kconfig
index e00b122293f8..87488fe1e6b8 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -600,7 +600,6 @@ config LTO_CLANG
 	depends on ARCH_SUPPORTS_LTO_CLANG
 	depends on !FTRACE_MCOUNT_RECORD
 	depends on !KASAN
-	depends on !MODVERSIONS
 	select LTO
 	help
           This option enables Clang's Link Time Optimization (LTO), which
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index f307e708a1b7..5c0bbb6ddfcf 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -163,6 +163,15 @@ ifdef CONFIG_MODVERSIONS
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
@@ -174,6 +183,7 @@ cmd_modversions_c =								\
 		rm -f $(@D)/.tmp_$(@F:.o=.ver);					\
 	fi
 endif
+endif
 
 ifdef CONFIG_FTRACE_MCOUNT_RECORD
 ifndef CC_USING_RECORD_MCOUNT
@@ -389,6 +399,18 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
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
@@ -396,8 +418,11 @@ $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
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
@@ -417,8 +442,11 @@ $(obj)/modules.order: $(obj-m) FORCE
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
@@ -427,6 +455,7 @@ $(obj)/lib.a: $(lib-y) FORCE
 ifdef CONFIG_LTO_CLANG
 quiet_cmd_link_multi-m = AR [M]  $@
 cmd_link_multi-m =						\
+	$(cmd_update_lto_symversions);				\
 	rm -f $@; 						\
 	$(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(filter %.o,$^)
 else
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index 9ced8aecd579..42dbdc2bbf73 100644
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
index a681b3b6722e..69a6d7254e28 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -39,11 +39,28 @@ info()
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
@@ -53,6 +70,11 @@ modpost_link()
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
@@ -60,7 +82,7 @@ modpost_link()
 		info LD ${1}
 	fi
 
-	${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${objects}
+	${LD} ${KBUILD_LDFLAGS} -r -o ${1} ${lds} ${objects}
 }
 
 objtool_link()
@@ -238,6 +260,7 @@ cleanup()
 {
 	rm -f .btf.*
 	rm -f .tmp_System.map
+	rm -f .tmp_symversions.lds
 	rm -f .tmp_vmlinux*
 	rm -f System.map
 	rm -f vmlinux
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-4-samitolvanen%40google.com.
