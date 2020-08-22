Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOXEQT5AKGQE4XOY7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7109E24E805
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:57:00 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id i4sf3256694qvv.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598108219; cv=pass;
        d=google.com; s=arc-20160816;
        b=KDbazNG8lPBXa0n0josGeeEh0kDHXZ8hTSPpytw8HpvGCYD4drdIWNJCXG+ZIztqaU
         28kl2C0iK9UtFxDo8ZTUQC0L3I5cqa8HXjDhB5j/5QwK952DSIn9NU9ILeFfmSZZ8F/N
         cjvsUSs2bRDjkOCGY1LzXCkdZGglL5Bh3dkgGVIgnKQFVY+HnOuOXGz82O6dI0/t6q8E
         RSQNR2DywnrxIOSauaHcGx7sWMN9kdKPXCgs/ct6Y2L3pdlCtB//icoqL6lmb1+HiLzF
         7/pOl8/R59w3iINEKpr3+JMFdlIMv0Eu/O3reTo4l4Dg94eRh31T6YlS2fKcYA8Gi+t3
         VwPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=WjBz/eou2go1PVlCNG00KSNHoGeEhMiK0275EeO4KxM=;
        b=CsJMHnUi8zDY/QoGF5LYV6Gl9B1jttKxozq6dIU4ky41+2uZwmYQ30ps8fXg9jpzpF
         XaGLFv1OvcCAkGprTpo3EQ5VXbCmvHDX2Q6VBD4bl5icLHv3KBrjCkG20gY2w9Ldu9gn
         X4kUAlivTLdnWASFr9nb/GXXghqXvTyXxi66NUUBiqc4EAdohgLOi6zLMUi/738AAddq
         u5PYTiHNBkGlL8OPtTbsKm8ukfsypaqogt1yFdNOzd037yk22YcYoL3HjJcPfkGaR2Vs
         cA6HI67a6tZ7ttpXqNJqlqC63MXEbvqJ8j7jf2xtDmLrDizZ81xEz9CliV6vjbQSm2yZ
         aCcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QJxYVV9Q;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WjBz/eou2go1PVlCNG00KSNHoGeEhMiK0275EeO4KxM=;
        b=Bue6i/J9ZhxHsahAPG5SZPSpyyL6l2AqsXB7OPUt92xSnoa9NapWBuxaPxgtJ/VYKg
         gFyb3MdXOR2o8Kh8SsXr7dsG5J7Vq2wBK0pxkC9Xxr30GvWuaAvtPLqW0OhTJEw0hOx8
         vc8ZvsMrDlg/YZNrGWDEhrE0ntcTFOaHPonCtZoizb/tnX7Giir7hBzYPLI2A1rbCpg9
         7EzKQj2tZfJSUsd+/uDlptZZSWhfWQLgUpuegh5p2VPgAjVCCG6RMkaJp+FFD1i4mGjE
         1L4A1s6mWPW0XwtQVWmwB+dO8u5qXY2+xEVoD93WIwNX+KDTrfqJJ+Sr5JV62SkRJGPT
         Kozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WjBz/eou2go1PVlCNG00KSNHoGeEhMiK0275EeO4KxM=;
        b=fRoGP9cEzLDCjz/UjpCJHxdoVshARbLfhtObPM5qKT8VRZwW2KhANrDAo4I6bm9H13
         eSbs0PaP0QXRMW49eTP1oglg6VXAN80hyX1Q49+vsq4DUsHUYF7mMuBXVtHgO13x9H8p
         Ao8Nim0wSkHK7B/hq4ulnN5Hx/WilFGeRs1gokTQoXkR/5y/jHrHTPXzFWm4awGXPk0q
         ILGvguUdD4trGhsSORgJUT55PL28WkAEY7H+cMd54oB1wcRAqt3yv3GjHaSzbHoVxcXo
         rDR7mH7GECFvCYR38p/7hoIVBiXANX9vLgnntkFaR2l/4CodWorkWIYHJRWD76L4rBhG
         kZyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eXZOZ0SUtBztd4u35v7b53hz3/s4vG/G+fdnbMMzPv2oKYD1L
	t4lCkJii+iwPhpdS7nofxcY=
X-Google-Smtp-Source: ABdhPJyTVp2ejGL8I7NrIdlJqQ+CCC9XgrypirtHOEigs4ghxhFgzsrmm8usM6l8NxBOY1OR5UcqTw==
X-Received: by 2002:a0c:f9cd:: with SMTP id j13mr6655222qvo.227.1598108219003;
        Sat, 22 Aug 2020 07:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4863:: with SMTP id u3ls1144246qvy.2.gmail; Sat, 22 Aug
 2020 07:56:58 -0700 (PDT)
X-Received: by 2002:a0c:9a0c:: with SMTP id p12mr6768307qvd.75.1598108218633;
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598108218; cv=none;
        d=google.com; s=arc-20160816;
        b=N9RjN2Kvc0zYi46hvVaIxw+QphROt1TOtubN12nLc0Qm0Utl8WDkrSrXlG787+xjkM
         sPbEIsa77DheLtmfcoW3UjNAmIv+RCyLoXaIxrRsJOpC+p5YqgB4jF0U4fwaM54ra3n5
         jym6D4j2cohx2JQJ2iWaXKDc7pavA/js3AcY0/JKanJrH5UUrkxt6vWWQ47g756ZOZjQ
         bjFINRn72UrleZ+UURaszry9RFjiWRnEs6udbp0iYCBMJQnCwmfhziQt7i0tRxTyWGHX
         MRwGwClUtoXV2az2uiqMBpE7jvNflVQNPFkXLqHLa6iyTvDhKoCmzSbnti/lxCd1bcyi
         rz1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=phlZWnRlrnA8K0o/P5ReuSSQU8VkFPSdv5LbHcJmxTo=;
        b=RVjS3cq9dtHM3PCZtfDFcFic0/pEUUq5C2pJLfkz0AnM5ReL6YU9CcVbp9j/cbQnv8
         S0W8mqhqyNJWKc/Fo5r7PLDNUvoC+1CcaYCg/sfxwQPxVi485tAknTkr5LkaXcebCcsh
         1FkyCjj3zMEEdWIEAW+Z4pCUj7hIwv9EZMSTmv6Vyr9iS/+rSSZkSPUNRHoBQf15oOia
         Ma6xUjBVFN69uGxANGWuDpya6MmIfgQ8fVFRQc1Co7uShEk+fbuLAVLuCfXyeApA8Afc
         WeydtFYeoy3BF04vl1ZZZ2+pbMwhJfjlMm5mpltdEiZtJ5b1Q+THoT1gXzFyPaoXHIF8
         ZXPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QJxYVV9Q;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id d1si306093qtw.2.2020.08.22.07.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 07:56:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07MEuKVX025434;
	Sat, 22 Aug 2020 23:56:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07MEuKVX025434
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v3 08/10] kbuild: wire up the build rule of compile_commands.json to Makefile
Date: Sat, 22 Aug 2020 23:56:16 +0900
Message-Id: <20200822145618.1222514-9-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822145618.1222514-1-masahiroy@kernel.org>
References: <20200822145618.1222514-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=QJxYVV9Q;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Currently, you need to manually run scripts/gen_compile_commands.py
to create compile_commands.json. It parses all the .*.cmd files found
under the specified directory.

If you rebuild the kernel over again without 'make clean',
.*.cmd files from older builds will create stale entries in
compile_commands.json.

This commit wires up the compile_commands.json rule to Makefile, and
makes it parse only the .*.cmd files involved in the current build.

Pass $(KBUILD_VMLINUX_OBJS), $(KBUILD_VMLINUX_LIBS), and modules.order
to the script. The objects or archives linked to vmlinux are listed in
$(KBUILD_VMLINUX_OBJS) or $(KBUILD_VMLINUX_LIBS). All the modules are
listed in modules.order.

You can create compile_commands.json from Make:

  $ make -j$(nproc) CC=clang compile_commands.json

You can also build vmlinux, modules, and compile_commands.json all
together in a single command:

  $ make -j$(nproc) CC=clang all compile_commands.json

It works for M= builds as well. In this case, compile_commands.json
is created in the top directory of the external module.

This is convenient, but it has a drawback; the coverage of the
compile_commands.json is reduced because only the objects linked to
vmlinux or modules are handled. For example, the following C files are
not included in the compile_commands.json:

 - Decompressor source files (arch/*/boot/)
 - VDSO source files
 - C files used to generate intermediates (e.g. kernel/bounds.c)
 - Standalone host programs

I think it is fine for most developers because our main interest is
the kernel-space code.

If you want to cover all the compiled C files, please build the kernel,
then run the script manually as you did before:

  $ make clean    # if you want to remove stale .cmd files [optional]
  $ make -j$(nproc) CC=clang
  $ scripts/gen_compile_commands.py

Here is a note for out-of-tree builds. 'make compile_commands.json'
works with O= option, but please notice compile_commands.json is
created in the object tree instead of the source tree.

Some people may want to have compile_commands.json in the source tree
because Clang Tools searches for it through all parent paths of the
first input source file.

However, you cannot do this for O= builds. Kbuild should never generate
any build artifact in the source tree when O= is given because the
source tree might be read-only. Any write attempt to the source tree
is monitored and the violation may be reported. See the commit log of
8ef14c2c41d9.

So, the only possible way is to create compile_commands.json in the
object tree, then specify '-p <build-path>' when you use clang-check,
clang-tidy, etc.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
---

(no changes since v1)

 Makefile | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 9cac6fde3479..65ed336a6de1 100644
--- a/Makefile
+++ b/Makefile
@@ -635,7 +635,7 @@ endif
 # in addition to whatever we do anyway.
 # Just "make" or "make all" shall build modules as well
 
-ifneq ($(filter all modules nsdeps,$(MAKECMDGOALS)),)
+ifneq ($(filter all modules nsdeps %compile_commands.json,$(MAKECMDGOALS)),)
   KBUILD_MODULES := 1
 endif
 
@@ -1464,7 +1464,8 @@ endif # CONFIG_MODULES
 
 # Directories & files removed with 'make clean'
 CLEAN_FILES += include/ksym vmlinux.symvers \
-	       modules.builtin modules.builtin.modinfo modules.nsdeps
+	       modules.builtin modules.builtin.modinfo modules.nsdeps \
+	       compile_commands.json
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_FILES += include/config include/generated          \
@@ -1698,9 +1699,12 @@ KBUILD_MODULES := 1
 
 build-dirs := $(KBUILD_EXTMOD)
 PHONY += modules
-modules: descend
+modules: $(MODORDER)
 	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
 
+$(MODORDER): descend
+	@:
+
 PHONY += modules_install
 modules_install: _emodinst_ _emodinst_post
 
@@ -1714,8 +1718,12 @@ PHONY += _emodinst_post
 _emodinst_post: _emodinst_
 	$(call cmd,depmod)
 
+compile_commands.json: $(extmod-prefix)compile_commands.json
+PHONY += compile_commands.json
+
 clean-dirs := $(KBUILD_EXTMOD)
-clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps
+clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
+	$(KBUILD_EXTMOD)/compile_commands.json
 
 PHONY += help
 help:
@@ -1828,6 +1836,19 @@ nsdeps: export KBUILD_NSDEPS=1
 nsdeps: modules
 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/nsdeps
 
+# Clang Tooling
+# ---------------------------------------------------------------------------
+
+quiet_cmd_gen_compile_commands = GEN     $@
+      cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
+
+$(extmod-prefix)compile_commands.json: scripts/gen_compile_commands.py \
+	$(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
+	$(if $(CONFIG_MODULES), $(MODORDER)) FORCE
+	$(call if_changed,gen_compile_commands)
+
+targets += $(extmod-prefix)compile_commands.json
+
 # Scripts to check various things for consistency
 # ---------------------------------------------------------------------------
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822145618.1222514-9-masahiroy%40kernel.org.
