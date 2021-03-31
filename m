Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZXWSGBQMGQERCUVOFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id D093D35015D
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 15:38:47 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id n1sf1574428ili.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 06:38:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617197926; cv=pass;
        d=google.com; s=arc-20160816;
        b=XOfZIUBG6pXf5yHFrDqae+QR0w+GDOTBN7kSD9F7jc89y7WOpqV8PuNLcfeWo6mtc/
         fhLx0qS9ZrJDoO9Xqki3iW2dDjWenzOu5tN1de9RsZYWyhWVm5Amln4MidajlQrMYfNl
         mVjpuwxxfb+kQ2tyjg/OFsiF3cAC3VAlHWe2qYb41r+Se4PYNgPeokhRLY2eZlcTVABD
         HxoxTgfntYHOSkpgbzvsdLKtGn3P0MZ3zmLKlzXnDtB9ZDZ13clirM469r1QY1d2zfTZ
         pk+SW4C2ifCm8SyJeIQz+bfWYih98nlu0VeLNazs8qi9U82CysFikUlQAFU8bb1MLjtv
         UFlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=ErBoDlO+H+87tR14VYsoeTE5EtzsYWDEUmyTljoStr4=;
        b=Gm1XbslKYbgYt++EUhf5dY5c8gvtnI8wOTgPlzz0J1shvryojd+gerPGZ1MxXLnLL5
         Kaz5h+H1R43dAVmy5JF5+zFG7sR5BdZwPngi4ifI2Eb9fcj9sgVnVgYCQ8gbY4DCEKTj
         cd3k0hu/Vba+K9ngOMkdNz3yAugTtYJUDc68nLvQ1YcizjLg0PXqlBwre3Fhp7TSbOZx
         5jYyaYt23tU8MGkMBxGV1AJDrdbba8xgy0y+moz0k6LZ/+5z3nM2rF9C/EVYR6LzLMfG
         JyfFkf+WtEkB+sU/d4ZVpIHrNtiKjm6+ZXvvEL+dsRr+u2uPBOEoULTUanECWiJOqv22
         qtTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FgIC6CbW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ErBoDlO+H+87tR14VYsoeTE5EtzsYWDEUmyTljoStr4=;
        b=ai+jEyjva7jBqz7sTJchZY6+lhk3c1G5if7KHIzi5lZ1zBhVcjvJOUANFg+amCK5IX
         /5CMWTZKvSpMiv2PM/3nVmc1IFF+cjzDVL5ytDaM6qyGwPV9/D+WXtYa2slMtcJa4KUZ
         psruSuhfcmZPk6Zg2LDNY7nmUlkp4USgnKy5DQiFDLKRVIRNRgcGLKuhudtEb5O2r9Pe
         nIVCMhArge8CVjT4H/vOqsWidjcFbk8Wv9IO2oFFR6H9bbBsQOXgP5WqnhgJLCeZ6uFm
         owxg5YmxdFj5dxtMcaBUIT3W7v01I7soRXW38q5wB7amc+Fs2Z+lD3qosb6b6tiNih8H
         xXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ErBoDlO+H+87tR14VYsoeTE5EtzsYWDEUmyTljoStr4=;
        b=f9JMskZ6os86++wPqJcKQxj58KuCfYCVFxr8cu27+DLWV9HAkYo/hf5LpbfXvaeb+b
         i+kcvHQEfZ6tS4eI91jay7X0KlOOFQ1E7e/uCEeo/NKmqVi22AU0JhQfpogV8BN7H2B+
         i5KYhRjobjgIzHp1AfGV6Czo4W5EKj3ZkIW2aSiUKkO/23lgpPRaI8Vg63aTxEwya+3T
         hlow/BlHsEh/T1+DcNWxEjy79MykRH0d7krOyCWOgZDr+6itTOTPb50y7g+A7AOw5r+n
         e72qdkwZntMv0lzdckQZfRpVob96jP3qMVA+SW+gFtlYvx2RCuyzUOxz2K6OmvHLUBkn
         Ko8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HNCKE2t91iR7HeY1pfY1sNepXWfLCeuHV1Pn3e0bIOAm9yz9r
	aXbJT6zERrubMkzWixIdR1E=
X-Google-Smtp-Source: ABdhPJy1hS8ygU2FZmltZYdN/h9+3gVFEOfFypAcZVVzs4tdl9ETq+B9VcH6NFPZdWUE7FcLzNy3tA==
X-Received: by 2002:a05:6e02:12c6:: with SMTP id i6mr2491728ilm.235.1617197926548;
        Wed, 31 Mar 2021 06:38:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6213:: with SMTP id f19ls311773iog.1.gmail; Wed, 31 Mar
 2021 06:38:46 -0700 (PDT)
X-Received: by 2002:a5e:db47:: with SMTP id r7mr2375602iop.47.1617197926202;
        Wed, 31 Mar 2021 06:38:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617197926; cv=none;
        d=google.com; s=arc-20160816;
        b=CzuHfXExOhzto0J5+RUJML3PkNfYupBq2VJBCbWNzsGoY9vuxngKZCM6POzRDrwJtk
         8nh+JODpCCGn404mYKAcD3iaSiGzjuQs3zCxF53Gw5cQEZ33c41Eq7zFeUbMpFUBxnZW
         9PwvYpGRmGlEk+7Wg4zZzRulRNAZzPn6Bjtv2uX0C9/9IkbFe2RKc/lo9HdLrjAVIqvc
         RHk8HOeuj+4qpDBdRMoPcjrwGbykI7HOmWQxG2Tq2KJTw7DmRj17SpKsq1jcsXI5mcoJ
         oRalvJCnGsbEUTSvPLqqD+BkVlGn1HiW2JXrF37zTThsYp7lQSdZHKNxi7Dk2xUgtOSU
         RzTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=CsrzD+VHMQFiqVVY3z016djKNDznKoCvYX6jCBwlclQ=;
        b=VPCvAREofJB3fYN2xsvF0cQC6dduLEAkgzAgTVBr27pzUR/GDI0riMvoxBeigUxDNQ
         1kHFB43E42Kb1ZVwS0f6LLeYU5PYx0OVOBENzvBB3q1i1SOwbV5dZw2p6R3tCXmMfEE3
         RKSGgERLygy3LQGsgKP48a8FkRgAnDm0+lguua3VHYJEhpVjAEmoLvMTOikrHPehnBMj
         dIW03XvKT9UKA+ZTQn9CNZ9PGQCiyrZTOippJjR8mMdx0wBDmR2U9SvHc1ZZl4mLLqDy
         j/uTOST/RQFJuE6FInuMiZ5FnUzT562BoinNEWoDm6RjPL9EVfAi7Ky+EVBUXjgbVyVf
         FbPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FgIC6CbW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id w1si147875ilh.2.2021.03.31.06.38.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 06:38:46 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 12VDcFec003995;
	Wed, 31 Mar 2021 22:38:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 12VDcFec003995
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 5/9] kbuild: rename extmod-prefix to extmod_prefix
Date: Wed, 31 Mar 2021 22:38:06 +0900
Message-Id: <20210331133811.3221540-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210331133811.3221540-1-masahiroy@kernel.org>
References: <20210331133811.3221540-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=FgIC6CbW;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

This seems to be useful in sub-make as well. As a preparation of
exporting it, rename extmod-prefix to extmod_prefix because exported
variables cannot contain hyphens.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index b5ff4753eba8..e3c2bd1b6f42 100644
--- a/Makefile
+++ b/Makefile
@@ -919,7 +919,7 @@ endif
 ifdef CONFIG_LTO_CLANG
 ifdef CONFIG_LTO_CLANG_THIN
 CC_FLAGS_LTO	:= -flto=thin -fsplit-lto-unit
-KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
+KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
 else
 CC_FLAGS_LTO	:= -flto
 endif
@@ -1141,9 +1141,9 @@ endif # CONFIG_BPF
 
 PHONY += prepare0
 
-extmod-prefix = $(if $(KBUILD_EXTMOD),$(KBUILD_EXTMOD)/)
-export MODORDER := $(extmod-prefix)modules.order
-export MODULES_NSDEPS := $(extmod-prefix)modules.nsdeps
+extmod_prefix = $(if $(KBUILD_EXTMOD),$(KBUILD_EXTMOD)/)
+export MODORDER := $(extmod_prefix)modules.order
+export MODULES_NSDEPS := $(extmod_prefix)modules.nsdeps
 
 ifeq ($(KBUILD_EXTMOD),)
 core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
@@ -1742,7 +1742,7 @@ build-dirs := $(KBUILD_EXTMOD)
 $(MODORDER): descend
 	@:
 
-compile_commands.json: $(extmod-prefix)compile_commands.json
+compile_commands.json: $(extmod_prefix)compile_commands.json
 PHONY += compile_commands.json
 
 clean-dirs := $(KBUILD_EXTMOD)
@@ -1832,12 +1832,12 @@ endif
 
 PHONY += single_modpost
 single_modpost: $(single-no-ko) modules_prepare
-	$(Q){ $(foreach m, $(single-ko), echo $(extmod-prefix)$m;) } > $(MODORDER)
+	$(Q){ $(foreach m, $(single-ko), echo $(extmod_prefix)$m;) } > $(MODORDER)
 	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
 
 KBUILD_MODULES := 1
 
-export KBUILD_SINGLE_TARGETS := $(addprefix $(extmod-prefix), $(single-no-ko))
+export KBUILD_SINGLE_TARGETS := $(addprefix $(extmod_prefix), $(single-no-ko))
 
 # trim unrelated directories
 build-dirs := $(foreach d, $(build-dirs), \
@@ -1906,12 +1906,12 @@ nsdeps: modules
 quiet_cmd_gen_compile_commands = GEN     $@
       cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
 
-$(extmod-prefix)compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
+$(extmod_prefix)compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
 	$(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
 	$(if $(CONFIG_MODULES), $(MODORDER)) FORCE
 	$(call if_changed,gen_compile_commands)
 
-targets += $(extmod-prefix)compile_commands.json
+targets += $(extmod_prefix)compile_commands.json
 
 PHONY += clang-tidy clang-analyzer
 
@@ -1919,7 +1919,7 @@ ifdef CONFIG_CC_IS_CLANG
 quiet_cmd_clang_tools = CHECK   $<
       cmd_clang_tools = $(PYTHON3) $(srctree)/scripts/clang-tools/run-clang-tools.py $@ $<
 
-clang-tidy clang-analyzer: $(extmod-prefix)compile_commands.json
+clang-tidy clang-analyzer: $(extmod_prefix)compile_commands.json
 	$(call cmd,clang_tools)
 else
 clang-tidy clang-analyzer:
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331133811.3221540-5-masahiroy%40kernel.org.
