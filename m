Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUNUQD5AKGQEQE2PQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7E024E048
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:02:42 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id 3sf747308vsx.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:02:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598036562; cv=pass;
        d=google.com; s=arc-20160816;
        b=I1TMUnOzrKyZT/CYkKLZUwNfiwaFMvOxmMNYGCWWxqLrAq1RtyC6rTIlGRb9JZSnmi
         iMsa91N0a2+3Ktfm9SxPrNRArOryvcYpJsUagQp4O2ePkB3DVL3ER0EAZdliDaLx4p9h
         ZntQ2j7nA1F19Yrz99Ayamsbsbt0CMiuWS37thyFnMSpP6Qfr3I8VEjqShk8s8EJFxO/
         zkMTAEAEI6E3sOFJYYg+WpjxPi8WFc3lAUCHefTIG538h7HbO40ENTwwuMrb0XNtJ02W
         mnlAxAQgd9+3QDAxvD2Ct9oiXXmoCQIzTYuLHhTC83M3w8TE6wCrIQ/yJuHiitivbMt+
         1lTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=j8lCiLwsEUuRndv06U5bcxzDOiAgGsI8um7Brj8S4D4=;
        b=zP11YC3nuYfan6NPoVXL9eaJLdDIZjTAa0Pt1PFeJ2ZDp7ZGGgg5uhQBGrJhgHhh1F
         60OjHD+BDhbfMLJ3twe5fCj9BDAIuqB3iNhrS7LIcteRluknDH+JcGERSXxSLyE1mS1F
         R2BxH9NCXyd7l9uaNdcrusUA42L/FHg1vrIDkqycQObOixE/ikmIsOwWhoo/BpDepjVf
         fR24zWreEFDphkoYGLxacMOtogK+DO8SfGKWryzgVaodemU6HdBx4w76DL6UFMwJ7Vr9
         +YkP9/g5xWSdbNjUhj5j1bTeOsLmvKPekyUUeLXApJdCeY1E6IPGm2U2zSVlcAbLnIhh
         fnAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fLoTGKzp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j8lCiLwsEUuRndv06U5bcxzDOiAgGsI8um7Brj8S4D4=;
        b=Bw/Fay7EyJPMAluud4Ftl9bjGcwdmhiL/8ooIpSmDiLgpQlwg9K3P1Qt5QcVecTgGG
         0KhmEHPJdG1RG1Xi3bktPUjue9TOVA7qINe3pfXL2fDcJdvpu/xKFa+f6bqQaROQHueI
         NEQl0960eGzk0l3W6aVeKi26mbJB3xWxIMxSUdWItNs7BlGadj0S2xsE40g/9lKZk+uk
         zkB2ZT501PnxMsrPANTtI43+iNFiQDj9639/UkI8LuG1ExH4k8mk0Gn05AuYXD7DRejE
         X/8uAleWy039p4Q8TcawpbSuq5BzTVnXw1GnDKqlNi4bjzB37SkDJYY5tB97pfH09TSJ
         kVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j8lCiLwsEUuRndv06U5bcxzDOiAgGsI8um7Brj8S4D4=;
        b=HWk6zGTclDPTS7Rb5VskLZLm2/Lwp+tZIe76LAEV24dowg8tHqpft4aWmYDaSC0Tkx
         QqZLfUNTjXJOGDrgaBCXJ5wPpFINf4HyzT92z3GbwC2siy1bkUg4BLtQSZn0l2lK1Bdj
         eURNKk2QFbArLTpVQnwEBdY5UppV3KHS/axhHvlnxna9+Q9LbgaDCeMZDxDpnHZONceC
         xZEDQAngk1/wrRauQGaZs7nXK9yWL76vdrRp6Bv5P6XSoDBHjZ79onQjUvDtUE44cGx1
         NST4kJKkrrC4L9UhAqgufXXOkSq1ESzdQ3d8Mt8Dw+/O9JZAnmaAnUEE2Do/CCerbd6j
         w2aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OvrXOjw2L22nzc4OgtM6o/Xsq13NT2D5Us99VNpogG8v/dRDt
	vtDqbC78TyCVpCOiConCkBk=
X-Google-Smtp-Source: ABdhPJyTr7+OcSqmwyL0Aun+1RflWN+eOji9nL62h/RuLLKiJyDQ/6idAcG9aEuSyVbKTRNfweQLqg==
X-Received: by 2002:a67:bd11:: with SMTP id y17mr2824097vsq.120.1598036561743;
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bf96:: with SMTP id p144ls170462vkf.5.gmail; Fri, 21 Aug
 2020 12:02:41 -0700 (PDT)
X-Received: by 2002:a1f:2ac1:: with SMTP id q184mr2920553vkq.18.1598036561254;
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598036561; cv=none;
        d=google.com; s=arc-20160816;
        b=Yhi07SGhxfXr4/klvDnuGtaH7rHKJ378Wxh+kVS6kgntZU+kGEzWQOVP2Z+M97zRGG
         AUFFXFNo7bFu+l16013VaOV+QxcDnEtcaV65vbMKkReVSFVKXGaG8iRT9lNKkVwq2atZ
         3kwhWsB+CZD/Bk6Orgb68p+039VZmTcCmy2NIDrlBifhstndKL9FrtgR+/7EvSFKGkPe
         QsZt7BtxOXUHyBpBom6iOeBuoiwtTXU77Y8fnZGra489xCcWRWhi0x7iJQqSZHgtsbiV
         5fL8bXxKU5K6F65ItR+R7JKg/Gahpr90Gj0w0nHG+ZERIgBYolgDlKG+rLhCeQ7vLaAr
         lS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=26iv8Vo38bEZsN9JC9hkPbfrSIwsHcG4pPwd2iyyik8=;
        b=CpPOx857/U2XVw+WmgOiBtkLv9NmBCa/BdKVbL1KbhumV+mIXVNviPBYzNMgYZwEl2
         Lm2sL1uNJQ5pq4PYiIwxYRwX58HqkscYGduEjVFirC7Lb1dZOHZyV2dQAn6sPbQUH2rr
         CsCRCwg0s+Gi0D2xrmjkFx0GtddX9fts5PKueZR3JCG/oQhmbiDVcDjBzMejDxTVqfez
         x1jD6r/2F/8hlsS+ltgdYGJQpnBu48Qte+m2TFk1IKCCF/4IqYdted/py+1ZCZ8tr80H
         kIQR4BkR0M43BiAXDgrp/JX6sJmKEP9vXeALh8+d3MYRI4E6C0vLF22cXZHOUVlYkOYs
         2qtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fLoTGKzp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id q1si166684ual.0.2020.08.21.12.02.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:02:41 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 07LJ23ea027595;
	Sat, 22 Aug 2020 04:02:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 07LJ23ea027595
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Tom Roeder <tmroeder@google.com>, clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/9] kbuild: wire up the build rule of compile_commands.json to Makefile
Date: Sat, 22 Aug 2020 04:01:58 +0900
Message-Id: <20200821190159.1033740-9-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
References: <20200821190159.1033740-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=fLoTGKzp;       spf=softfail
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

If you want to cover all the compiled C files, please build the kernel
then run the script manually as before:

  $ make clean    # if you want to delete stale .cmd files [optional]
  $ make -j$(nproc) CC=clang
  $ scripts/gen_compile_commands.json

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821190159.1033740-9-masahiroy%40kernel.org.
