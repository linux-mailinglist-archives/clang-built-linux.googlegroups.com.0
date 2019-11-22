Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBX7O3XXAKGQEGDTBV3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 791A91060A8
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 06:51:28 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id 49sf1359329uad.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 21:51:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574401887; cv=pass;
        d=google.com; s=arc-20160816;
        b=ivy7KUUwBcLV0EjQB4FbLEujmFEG7CNtjW7ip5mzpR1qPH2Q10IDCxFnC9N/d6XzHj
         OhY0/eeV+bAUnbauTI2Ion2SVJ0PFvcdL3oL7CLU5898DG8KYesdbEMbXw0ssoYb/Nnt
         oWzJQ3x7LAy1qQ1GgWvdyKKio++ammwbVkyg7hLL+c2uBIm2V/UNI60n1NxSW9akd/PY
         zt8aTyi0bHUxMXXDVYEcdWqRHwkjmP86Zc1K7mTMk68vclie8DlDcVfLGuQE0aqBmJyS
         BPOt+X/v7+ym5ECQIhdYqMvTOMiGLYq4XXuhAIDBahexxtJvrhKruA+7NG09GMy5aodP
         HxLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eg/UR0ErLbwsKpSrgGx4bdUapsgreX/u5J4TI+8civU=;
        b=XODpfYElWk4I65urN3raBMwXdN4sEXG60WBcbjL6MzXhc2tUQPhDtlPQjIzs8BP6AI
         qHQqEvpjua/fMsZpmvqOgl9E8tmg+F5cFj9O4ouMKbN8cqib/TcsOdfYq6YGzZvf4aLK
         OCTk1tdK6AIR2MWmrGxZyPUros8lLm5EJOoBI06Z6BXtj8K/ACLazTMEFZUsqFhcKHqR
         m2OWKK8jC2p4yLiXJfL1yFx5e3CQHng49s6y8r3T23o74OPZcNM5W/BJQGVYXNz+vOeY
         cjopkcT3gDW7OoE1ICRo0B4aWKvrmnUeHlV19bE8ZMYXYt8XlzrdjQTua5tPI6Kz9GmB
         +AFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AoW2zRTy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eg/UR0ErLbwsKpSrgGx4bdUapsgreX/u5J4TI+8civU=;
        b=riSA/oAik8tfY5ISdiOi1HCFoGypoz/MjQzC+D/ypyDTu/wQnWyuBrmwh9SswdW1xD
         cV6hPqyTg7l75QxdN3rneICiKOt3LS1Oox5JNh3PBby81/lJQhCKPdgsR3dn9F/f0BnJ
         N6ZPCeFF41kFQ/BDcrFo3yc74YJThuGigAtoens1x3E+0nHIJ8yK1hiAxk6RRbgAi9F0
         zwtP7914/+RRwXHDYgc/sLYnDepZcTX5FgBWvSLdnHwlJh1XSR4JWEMldX0WZjv2GwFy
         J7i/WvTH3q2Dmg+9ZICjHSEA4kfTDQoPGNyGsRETI6SbYwzASC7JJgCSsKJA/8OMaGGa
         mtxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eg/UR0ErLbwsKpSrgGx4bdUapsgreX/u5J4TI+8civU=;
        b=ezf+HYP66AdLC2G9LqopU39x0MGvyKpDOoUxSH7iY6BDM3nCdHsqYUulglnse6YRXA
         hH6mDh6MYcn63yyVbhyHJYL58C6taf9yRm9s3BxphLRfuFz4Rer3D48/oLLMbvXizht9
         695Duonz7+VwixRCQMTFTIg1kQpp8EzGDPb1tg2vw0zWE/TOJAEU6kh3R3Z1wOn8S1N8
         TK5qcOQPbol8N7BwEv31pRzkOTbOIX1yfvyGkwtfRaIT7Wzwv5Xb/NgBPSkqtXzu9o0M
         khyAaM+bcIdv7LRr7e0lhshALHwNkjxu8s4NIJ8Cn/qpOPchYWo7jzAwWLnF4jjwpBap
         w8oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUnETpat5Coe4WT9kI4HZBbTgw0sJBR+k0t3YMt/HmdHC0AP+ks
	X2cj+c0IpSQ2SrhF1FbAlrg=
X-Google-Smtp-Source: APXvYqxtHtnFS0myssRQAaH8NYBlM4GNapTb0IfmRvhOsaV3sAJda2+ggUM013WwxJVp7SJY0LJcOw==
X-Received: by 2002:a1f:1fce:: with SMTP id f197mr8514279vkf.29.1574401887127;
        Thu, 21 Nov 2019 21:51:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:ccb0:: with SMTP id p16ls482178vkm.4.gmail; Thu, 21 Nov
 2019 21:51:26 -0800 (PST)
X-Received: by 2002:a1f:4942:: with SMTP id w63mr7984229vka.49.1574401886673;
        Thu, 21 Nov 2019 21:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574401886; cv=none;
        d=google.com; s=arc-20160816;
        b=iM4yRtUXadpu3DX8Ugn5BAOTS5M+6KF7E4M0eJHeOdeJOtfvJ1mymUMBMZR7vkD5Ol
         R3lsYU/xYTWSpqarOdZvvin53cvrIMcn+DjdYLD9HOgzc1o1Wt9Zqhszr+2lopHSYxD+
         RIk7czHEJugfgo/bFWlbZdU2ZYHBkvIQ6+bsTQrnKxFBcOJ/sB+SPqkye32n1uihXeOq
         f9478CtsMEtysuPM/+7AEluPn9B3fwRjLfH5u9825F+CE1GxA2PlI1Mgnue+lr0QV64p
         7Udn/GCWVYG3HApsJkv+bouqj7gdnrNxE/eRQ4obxBdTXs0/FM9WMQvyU/a+Iw4BLJrM
         cuxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hv99ZPkbPHYXDMKF1iJv2I4lWRpnTTyd+Ih/liTrp4E=;
        b=spMi0015AUj7l5Port42HcPCxiuqfqJEAKNIL6c/KMEWejoK2e/PPrthjxPGWQPhNo
         M6mLAJ7gCYYYbGQAVGGF1OxZqeqt4Hv3PSvHXnCBDGk+oMCvou0PbNyMe5nabTI33V0O
         BJIuHGmNeCxY5RQzTpZS1uElR8XJR7VSX1HwLfx+N2pcJJaY/lT8JN1czUd1y6Tg8Z2T
         r96vyQIICBzADwmHisSR/U7rbhkKwVEr0QAYv7m560H4Mvo2Ra3KG7rz/An4XcEnnLF4
         hXNxUFndOzf0wiWHkArReQ2wXjLjpugdAfyOTTLJmyJNKwknXSWPQ1Y4mOhHftfdjYGL
         BuPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AoW2zRTy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 192si298935vkz.3.2019.11.21.21.51.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Nov 2019 21:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B546B2070E;
	Fri, 22 Nov 2019 05:51:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Joel Stanley <joel@jms.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 119/219] powerpc/32: Avoid unsupported flags with clang
Date: Fri, 22 Nov 2019 00:47:31 -0500
Message-Id: <20191122054911.1750-112-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AoW2zRTy;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Joel Stanley <joel@jms.id.au>

[ Upstream commit 72e7bcc2cdf82bf03caaa5e6c9b0134c2fc2ee7d ]

When building for ppc32 with clang these flags are unsupported:

  -ffixed-r2 and -mmultiple

llvm's lib/Target/PowerPC/PPCRegisterInfo.cpp marks r2 as reserved on
when building for SVR4ABI and !ppc64:

  // The SVR4 ABI reserves r2 and r13
  if (Subtarget.isSVR4ABI()) {
    // We only reserve r2 if we need to use the TOC pointer. If we have no
    // explicit uses of the TOC pointer (meaning we're a leaf function with
    // no constant-pool loads, etc.) and we have no potential uses inside an
    // inline asm block, then we can treat r2 has an ordinary callee-saved
    // register.
    const PPCFunctionInfo *FuncInfo = MF.getInfo<PPCFunctionInfo>();
    if (!TM.isPPC64() || FuncInfo->usesTOCBasePtr() || MF.hasInlineAsm())
      markSuperRegs(Reserved, PPC::R2);  // System-reserved register
    markSuperRegs(Reserved, PPC::R13); // Small Data Area pointer register
  }

This means we can safely omit -ffixed-r2 when building for 32-bit
targets.

The -mmultiple/-mno-multiple flags are not supported by clang, so
platforms that might support multiple miss out on using multiple word
instructions.

We wrap these flags in cc-option so that when Clang gains support the
kernel will be able use these flags.

Clang 8 can then build a ppc44x_defconfig which boots in Qemu:

  make CC=clang-8 ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu-  ppc44x_defconfig
  ./scripts/config -e CONFIG_DEVTMPFS -d DEVTMPFS_MOUNT
  make CC=clang-8 ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu-

  qemu-system-ppc -M bamboo \
   -kernel arch/powerpc/boot/zImage \
   -dtb arch/powerpc/boot/dts/bamboo.dtb \
   -initrd ~/ppc32-440-rootfs.cpio \
   -nographic -serial stdio -monitor pty -append "console=ttyS0"

Link: https://github.com/ClangBuiltLinux/linux/issues/261
Link: https://bugs.llvm.org/show_bug.cgi?id=39556
Link: https://bugs.llvm.org/show_bug.cgi?id=39555
Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/powerpc/Makefile | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index c4c03992ee828..dfcb698ec8f3b 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -145,7 +145,14 @@ endif
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcmodel=medium,$(call cc-option,-mminimal-toc))
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mno-pointers-to-nested-functions)
 
-CFLAGS-$(CONFIG_PPC32)	:= -ffixed-r2 $(MULTIPLEWORD)
+# Clang unconditionally reserves r2 on ppc32 and does not support the flag
+# https://bugs.llvm.org/show_bug.cgi?id=39555
+CFLAGS-$(CONFIG_PPC32)	:= $(call cc-option, -ffixed-r2)
+
+# Clang doesn't support -mmultiple / -mno-multiple
+# https://bugs.llvm.org/show_bug.cgi?id=39556
+CFLAGS-$(CONFIG_PPC32)	+= $(call cc-option, $(MULTIPLEWORD))
+
 CFLAGS-$(CONFIG_PPC32)	+= $(call cc-option,-mno-readonly-in-sdata)
 
 ifdef CONFIG_PPC_BOOK3S_64
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191122054911.1750-112-sashal%40kernel.org.
