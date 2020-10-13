Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYGDST6AKGQEQCDMLBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A049328C7A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 05:41:21 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id j207sf14197773pfd.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 20:41:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602560480; cv=pass;
        d=google.com; s=arc-20160816;
        b=v6dxAA2TY3g2vEaBMWVoqYbJ6EK9EPY6+FyxS1gZ301cm3SI9QbZISNvVEfWV9ryJy
         n87i5bsgyStU2zVtAdd4sXN91TOsaEEVLHxtbD9xpLAnVq/a3iD1+YIOqcuFmaQPCFQ/
         bO0EwEX2Fx+pZLh0EG9bTezp4mYbkv9GFP7NDwgBNu+/Nm0SPaiY8Xf+ZptT0oK2vv9U
         NJyS9NBmRs2cn0sjJThtTb24PiSANDqlt0ysJNOmiCmBZH0Cwz7qR+v88cZQNnk6VA05
         y4Og2NUl0FgkjsqS4FYp4JNpDOc0JwpEq/vs8KBaJvF/pdi0GSXbGpmTid4QGZJZbhWw
         +aXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=VD4A0K3XtaJmpIClL7xm+yKEHPiIrnoE8KU8dDZ6DVQ=;
        b=C8B5euwtVs1JXGdHTXYIBElFTVfbShFMRBbBrFTvgxMrxwAquLrp96ZkxjWCqGtaSt
         9nW0RU3ve9g3eSFJj5MrxuGouJaX4bJzyOba0y/Q1NhKsi7ZAIHsNdfX77FrHQyjuxNt
         p3igleu619MCu972gyrpYBX0uG5FSDSnlPwC431DgRL82vsL+BdBJhituqV76Gmn088P
         rvGlZkAOtOkaxPLiMdgzlaI/XOJ7RTuFYOiCQ+QofG17Ezxu8LUX15/8dd2EY9xCzEN7
         ONUz8UBk80B4iKk/h+BcJ+heMHK816+ghfGYWTuDYaeFmjz94pm8vnn4Zs3lhGgw+xWF
         ceRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ic1DgpAt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VD4A0K3XtaJmpIClL7xm+yKEHPiIrnoE8KU8dDZ6DVQ=;
        b=hJF4fFFe/o0lYXGCN5rQX4jIi9M1kVDSMK8dkUXw09lSOHYIZ6LWwdljQvuLX3ULoj
         qqpHWQwqE3yCa+j2B7Uk3fdllLtQvcOPQ1vsXxqiTzNuwLSQO9riCdwxXdZJo7TfSx/8
         xHOLZ1mktG5zR2NP7df8ffrGQvjYKA6fQmtE2bdX2J18nfY00PoeVC5TDQ7pEcbJZFO7
         mmA7jtZLStkIwThprKnJNgtVOndVlcZ80p8odKglf8I5aime4vfibm3ZMG1auvByz2F9
         w1O6RjADlr8EK2lx+rynz22+gZ6baElMIBQrjplP3DpA5FuhemiEd9bYDARvw+5VxcSF
         duzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VD4A0K3XtaJmpIClL7xm+yKEHPiIrnoE8KU8dDZ6DVQ=;
        b=tBdV133gYI2GFRd44QouQOZdB3FC33DpUT9x1v3rhcWUbiSDoS+Pw7GkwGyCYclCwK
         dSBYeTeWbuDMw16FkTzB2jeJ3QNuGjeQn/SHHOsMJIv+PERuIEcBXVH2pIsSW0SFuKPV
         RdPNjeABdmTlF+97URvQMyFnMGu34I0yFWLBVDfNAA0Gg5MMBoL/Ksx4J7w2FekcuNkd
         3Ibd5eUQ0cFJYueWcyA/Rf/ciZ7v5jCgBXQ02pRnj3FFcpxH4hJDuElX6FpAaYKQGj29
         ZD9zr85rl93Ic33qQdGV7dpTLrXIEk4m7o7TEccPa0ZlkEV+a7qE4AYXjhQAYdhpg1wo
         K96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VD4A0K3XtaJmpIClL7xm+yKEHPiIrnoE8KU8dDZ6DVQ=;
        b=Es+ZKoN1k9h+BOOKHPqTu9VEj+K7iah9CznRd8wLyt8xn755TUfcl28ijmWeggvFQk
         3z5l1uWQnYTO5m3JL08uCjtJLTmmX7PRHSryrmS07xe5IyhAbJHgIWYjrveD2QEVK4Qu
         xHqTsvQr8vl2IBZWfd/2utqbos4w28+BNpVapOPXbdSsZ78t6KtviVffBPmDPYHWU5Lx
         S5D6dzRsskYrRCI0C7VLJNxbmzfUyO95h/YnNoiSivKmyi5jQhxQ175rnRSH/O0EBewf
         qnDG9derzmFz/yQ7j2guf6CJUDNo7Vxe3yLGKe5AxqGL+ZRuUEplgS5ZR+wPId4f0NgV
         v0Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uemoymMFiZ49LbNfc+TNKJ0BX8ejqfgcsbvLEsUaiLazJUr7+
	YfNuyqAyC11kxYOfj4CQTSE=
X-Google-Smtp-Source: ABdhPJwAqynq4a63AJO8ftxC0E0V6X0R7ykMfiMMV5CrjYMC0vUkdywFRVb9/f5KtcP5VGaiUYrfPA==
X-Received: by 2002:a17:90a:bb81:: with SMTP id v1mr23181068pjr.62.1602560480213;
        Mon, 12 Oct 2020 20:41:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ae08:: with SMTP id q8ls6357614pff.0.gmail; Mon, 12 Oct
 2020 20:41:19 -0700 (PDT)
X-Received: by 2002:a63:3e06:: with SMTP id l6mr15497716pga.179.1602560479588;
        Mon, 12 Oct 2020 20:41:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602560479; cv=none;
        d=google.com; s=arc-20160816;
        b=yNLRq4aVlLEnFf6UGyMv50evp7u36U3iKyKhxsmHZFc0EN3dzmJf/gp3JpNmU+ataK
         qebh0uaYybdQBds6mrWexUfBCdDr7XOcSCP5hJJr1vpro+45AwG2Q9tzLYeHLKOWUok8
         VybTfGJZnqV/V8vOqwHA7DOh1tR9vwCzqQERL/nif3eJArufYj3VdmTLXIIFEM3G34YL
         hvx4RB1UDrkPGWt1LHMneIVLHmGBrcs4HE7o9RaFHxaHiJl4z5kvA8zpwe7V31m1OAuU
         Ht0se1+pYQCxdZ7Zt2vi4/bj603uMCYvBsz/Wnp6Hb949hfYKHxrSh4jIhxhNeimX79G
         VHMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QnFBf559stGtGycK6x7rPCyISX6Wjd0zGUVwkdWXItY=;
        b=LDs3rKoVUj0zbZpaNtSeemjSne8+VFzNFM53Xc0O0uAwvp0u/2qAqZYDBZUliI8UeZ
         /NUahUA97wyxVNYVJ4+kdBShGMVXHUuStsxEijg6qDYhpTOABAlpDv9X1GWcgMWl458O
         T5W1QrY7AWy/GBD6XcaMGmNiAVfjfm3jrtMURAFPQFS0BoN6/DjaaBtav2oxHW8oSqo0
         8z4x4GuF2G8cE8R+P4AINcgp75gSLwqOga9C1oalwiN5OiOV1KBTPLZ1u2ylWXe48M4k
         ckyUXbiWtWNq845RuRkw/xh233oMqG3P9C44pAfqhcX9mCTD2Tzq4HLsS0ox/SR5Bk5m
         1aqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ic1DgpAt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v1si508665pfi.2.2020.10.12.20.41.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 20:41:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 10so6286395pfp.5
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 20:41:19 -0700 (PDT)
X-Received: by 2002:a17:90a:62c5:: with SMTP id k5mr23551844pjs.100.1602560479246;
        Mon, 12 Oct 2020 20:41:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id b21sm13944484pfb.97.2020.10.12.20.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 20:41:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH] arm64: vdso32: Allow ld.lld to properly link the VDSO
Date: Mon, 12 Oct 2020 20:39:48 -0700
Message-Id: <20201013033947.2257501-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ic1DgpAt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

As it stands now, the vdso32 Makefile hardcodes the linker to ld.bfd
using -fuse-ld=bfd with $(CC). This was taken from the arm vDSO
Makefile, as the comment notes, done in commit d2b30cd4b722 ("ARM:
8384/1: VDSO: force use of BFD linker").

Commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
link VDSO") changed that Makefile to use $(LD) directly instead of
through $(CC), which matches how the rest of the kernel operates. Since
then, LD=ld.lld means that the arm vDSO will be linked with ld.lld,
which has shown no problems so far.

Allow ld.lld to link this vDSO as we do the regular arm vDSO. To do
this, we need to do a few things:

* Add a LD_COMPAT variable, which defaults to $(CROSS_COMPILE_COMPAT)ld
  with gcc and $(LD) if LLVM is 1, which will be ld.lld, or
  $(CROSS_COMPILE_COMPAT)ld if not, which matches the logic of the main
  Makefile. It is overrideable for further customization and avoiding
  breakage.

* Eliminate cc32-ldoption, which matches commit 055efab3120b ("kbuild:
  drop support for cc-ldoption").

With those, we can use $(LD_COMPAT) in cmd_ldvdso and change the flags
from compiler linker flags to linker flags directly. We eliminate
-mfloat-abi=soft because it is not handled by the linker.

Link: https://github.com/ClangBuiltLinux/linux/issues/1033
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

NOTE: This patch is currently based on the kbuild tree due to the
--build-id -> --build-id=sha1 change that Bill did. If the arm64
maintainers would prefer to take this patch, I can rebase it (althought
presumably this won't hit mainline until at least 5.11 so it can
probably just stay as is for now).

 arch/arm64/kernel/vdso32/Makefile | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 7f96a1a9f68c..1cf00c58805d 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -22,16 +22,21 @@ endif
 
 CC_COMPAT ?= $(CC)
 CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
+
+ifeq ($(LLVM),1)
+LD_COMPAT ?= $(LD)
+else
+LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
+endif
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
+LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
 endif
 
 cc32-option = $(call try-run,\
         $(CC_COMPAT) $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
 cc32-disable-warning = $(call try-run,\
 	$(CC_COMPAT) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
-cc32-ldoption = $(call try-run,\
-        $(CC_COMPAT) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
 cc32-as-instr = $(call try-run,\
 	printf "%b\n" "$(1)" | $(CC_COMPAT) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
 
@@ -122,14 +127,10 @@ dmbinstr := $(call cc32-as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
 VDSO_CFLAGS += $(dmbinstr)
 VDSO_AFLAGS += $(dmbinstr)
 
-VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
 # From arm vDSO Makefile
-VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
-VDSO_LDFLAGS += -Wl,-z,max-page-size=4096 -Wl,-z,common-page-size=4096
-VDSO_LDFLAGS += -nostdlib -shared -mfloat-abi=soft
-VDSO_LDFLAGS += -Wl,--hash-style=sysv
-VDSO_LDFLAGS += -Wl,--build-id=sha1
-VDSO_LDFLAGS += $(call cc32-ldoption,-fuse-ld=bfd)
+VDSO_LDFLAGS += -Bsymbolic --no-undefined -soname=linux-vdso.so.1
+VDSO_LDFLAGS += -z max-page-size=4096 -z common-page-size=4096
+VDSO_LDFLAGS += -nostdlib -shared --hash-style=sysv --build-id=sha1
 
 
 # Borrow vdsomunge.c from the arm vDSO
@@ -189,8 +190,8 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
       cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
 
 quiet_cmd_vdsold = LD32    $@
-      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
-                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
+      cmd_vdsold = $(LD_COMPAT) $(VDSO_LDFLAGS) \
+                   -T $(filter %.lds,$^) $(filter %.o,$^) -o $@
 quiet_cmd_vdsocc = CC32    $@
       cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
 quiet_cmd_vdsocc_gettimeofday = CC32    $@

base-commit: 172aad81a882443eefe1bd860c4eddc81b14dd5b
-- 
2.29.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013033947.2257501-1-natechancellor%40gmail.com.
