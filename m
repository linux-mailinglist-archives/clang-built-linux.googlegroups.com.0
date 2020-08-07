Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWW4W34QKGQEYEZR5II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CB95D23F325
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 21:41:16 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id e24sf2585146pfl.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 12:41:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596829275; cv=pass;
        d=google.com; s=arc-20160816;
        b=w6peutX81gMW4OFoGSwf+glzrYg64w5sr32HjzKaGChiMBjxEl1CVtOowA6TjhaY9A
         MYPU5BHqT8EoFw9dzkbVUX0MYU1/oYEdeXRmqXCVJ8a9tce4p9eFThu/PZh8r05muBkc
         4MqYz14e4s8/i93ZWmrgpzNEdpF631Y0I8jR2xFLHKWPwI/gWePnlmPKdwOXuefdrSb2
         wv0u3QlsCYZmNb1fVCS4+LcZ3ox/Q5JkLPEnutd2L6vAqP1WhUzooBezelv/sKCAtEVD
         eUSlMAzic56Qse8TX+f2FUybJl5xx6smLdUMI2FuSZsvtp5IbP+7T3UZm+7fx3IBoan6
         mrjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Iv5EjwyB/DJn5x5K35jfrxB3cPY6vPQ6c7hp02J3N3s=;
        b=dJ9f23ZWWH/MEHTX9aXLLSH9c12ybIDLVRofF39ruBTRov8p2w+6shd6CnrhkyuyKh
         DxouKIfmxjxa+EaIJhxnXbe+tpl8ENJxlJ07uMcxvQN9Ml6CVM3Iplg8XExGCWZzUx79
         gScJ68SZGejdFJ1oj3tq5FJ/ScCGffELYmxIOvAL5EZvWEmQFDHhyrjX5W/vFaA/f79e
         ZOVwuej2UEHYmil3/y1zGpljq3BtiRmHKya994BaI+ykPuPqH/u88bYZjSS5feAdEYWd
         qh3tqtIIZwgJ7LZB9pzu8mba71haBMpyCeFpOZt6I9lYiRqEBFIQroA7z0k+fys5nZf1
         xLAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WoKT11jR;
       spf=pass (google.com: domain of 3wa4txwwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Wa4tXwwKAGwXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Iv5EjwyB/DJn5x5K35jfrxB3cPY6vPQ6c7hp02J3N3s=;
        b=CeWO/9dPQae11V1m2OU6MFAVaDEpcMkdjCVQFPDVIkPqLLQCtTRwU/NvKum7JjLsDN
         GobMknYZMmkCfbJq6wt0y5e2fINhg/jadGjsNK+ccr7dRAhn0HOc++W2HU9G57VARY6K
         SNUhwLzO8g2p3gW87ZvTCkBLGiNiC03mdpBh7/lF47o7aiJ7mdzHLmmkdf7naLPpPnbj
         0zhPfd6XWEiAUd/mRWeLQrYMylrDPpLH/KQnfFIkZXVP2cqQTlIdP4Y3r68IVMxKWAIY
         btqN0UoT6P2lhOpmh49QjJB5n9DPSNY/LRBR+bQG08De7awIP45C+I2RocoSJHeidSs1
         Zu4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iv5EjwyB/DJn5x5K35jfrxB3cPY6vPQ6c7hp02J3N3s=;
        b=arAmmuhJDGsCilLmF2q4z51t5+tZUz8E+4jkvSoOP4geqaR89iRq1tt4zvEB0E2HiE
         NeCEesP9LMMARPVdvscI/Aw2JJBBVOWOCbExNaP9NsaEYwmV1yoY0WMZiwBMMbsSzyYZ
         YV98hYiDFMt3Tmnerb04Up1Q6vSU7JXIWVAKK9NYEyOMpgcRdbQUwtytRk8d5xC8xNyB
         qyAJpAVjoBR5pz/m11UlmDryEvulFdR40E05xe6LGbwHj0kg3lh0MUYi1LxQdI5R9r56
         guciYB5v8wjpzkta72GRYZxzkrhLYZPNWZ3V5JxOAJsZxQ/tAZvCbcDsrGKO1QTKcRP9
         q3cg==
X-Gm-Message-State: AOAM533V+btxEwNaLg6YkQz6dLx1TNP0xAldMHfnm/lyiHyKFfFjCEf6
	Jvk2oiH+Fy35Rz3V7o3DKJE=
X-Google-Smtp-Source: ABdhPJy+ldyVlc4rVtCP0emw/yn0KYNh948T7aLGTFJqSrW/c0xLw7wZSLRiNOJsFXVpEfXzOjRizg==
X-Received: by 2002:a17:902:c40f:: with SMTP id k15mr14042960plk.330.1596829274839;
        Fri, 07 Aug 2020 12:41:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d303:: with SMTP id b3ls4408163plc.2.gmail; Fri, 07
 Aug 2020 12:41:14 -0700 (PDT)
X-Received: by 2002:a17:90a:ff85:: with SMTP id hf5mr14566394pjb.79.1596829274365;
        Fri, 07 Aug 2020 12:41:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596829274; cv=none;
        d=google.com; s=arc-20160816;
        b=JjU41/rdUWA1vNdmGujIJ1sBFNrWqDN6qRHj95DFskr1uEFQpgq+PCt9Lflm+TiGZ4
         fF842OxV/uFAOR3P6vnPcKXvhih50/P+ZVPxarS+wb9n4jhxO2s7JWX2XrO49o4XXnFa
         w2fFZVJTcN6/MBqois5BeIp4fkQB6NEd3EjxfZLbOQQILSYUDG05fcXjUS1wPiuUgyt3
         hcVvQ/7UU0InUBF/VwDVTalSBfVvuoJNt0Mz+ozh/IlJIOKkjBWigEjrxCT20dbSUUV3
         a+tuYCA/LtfSMhbqwn42vdc0k4haZs8djWuRz81pmDyAcPlQUEqGCjp0fMQFIG380bjr
         4JPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=5n0w4AsANVZZcp3jIgW7OYwnXyM3bWVVuSXkfYvbUl4=;
        b=uMRnOdHnqO2tN6oxpmA0EyejhJCs5P1MB2lIMJ6vMKoNiZVm1ieJ+rqrPmRXHUvxLM
         jPGTn4RPWZseQvXqX5HwvVKPt+fbKcmuzLULxNNgDkOWGBRuSsmXin0YrKlAAxMgNrXq
         J3lgUf4lnyJAfHOK/DPjAvKe601HyAFN/4HVZYbquEmsZwevUsPE90M2eDCywWw7SEwq
         chRNbXupJL2BVkm89W12Xbs6JLf6cKhOhDBTgXEXov/IHj7xV9Nb+sAT/3GWRI+SkPX7
         8JCtPz89Q9ZlaFLj2bdemx/UHltpsXgrP2pCqzChqQ7RyN39pWKK2e08tQ5pXlKcE1Vg
         3GsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WoKT11jR;
       spf=pass (google.com: domain of 3wa4txwwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Wa4tXwwKAGwXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id n3si818395pjb.3.2020.08.07.12.41.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 12:41:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wa4txwwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 7so4059002ybl.5
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 12:41:14 -0700 (PDT)
X-Received: by 2002:a25:d8c3:: with SMTP id p186mr24793342ybg.50.1596829273517;
 Fri, 07 Aug 2020 12:41:13 -0700 (PDT)
Date: Fri,  7 Aug 2020 12:41:00 -0700
Message-Id: <20200807194100.3570838-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.236.gb10cc79966-goog
Subject: [PATCH] x86/boot: avoid relaxable symbols with Clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Fangrui Song <maskray@google.com>, clang-built-linux@googlegroups.com, 
	e5ten.arch@gmail.com, Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Dmitry Golovin <dima@golovin.in>, Marco Elver <elver@google.com>, 
	Nick Terrell <terrelln@fb.com>, Daniel Kiper <daniel.kiper@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WoKT11jR;       spf=pass
 (google.com: domain of 3wa4txwwkagwxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Wa4tXwwKAGwXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

A recent change to a default value of configuration variable
(ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
relocations. LLD will relax instructions with these relocations based on
whether the image is being linked as position independent or not.  When
not, then LLD will relax these instructions to use absolute addressing
mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with Clang
and linked with LLD to fail to boot.

Also, the LLVM commit notes that these relocation types aren't supported
until binutils 2.26. Since we support binutils 2.23+, avoid the
relocations regardless of linker.

The proper solution is to build the compressed boot image as position
independent.  There's a series working its way through code review
currently that does that, but it's unlikely to be backported to stable,
due to its size.  For now, cut a smaller patch that's more likely to be
easily picked up into stable, so that we can get our kernels booting
again.

Cc: stable@vger.kernel.org # 4.14.y
Link: https://github.com/ClangBuiltLinux/linux/issues/1121
Link: https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
Link: https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/178868465
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
https://lore.kernel.org/lkml/20200731230820.1742553-7-keescook@chromium.org/
is the patch I'm hopeful for building the compressed image as -pie, but
I don't think the series will be backported. Regardless, we probably
want this for older binutils support.

 arch/x86/boot/compressed/Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 3962f592633d..ab0f7e7dabf9 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -44,6 +44,13 @@ KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS += -D__DISABLE_EXPORTS
 
+# Until we can build arch/x86/boot/compressed/vmlinux as -Wl,-pie, don't emit
+# R_X86_64_GOTPCRELX or R_X86_64_REX_GOTPCRELX relocations that LLD will relax
+# into absolute addressed operands, and that BFD didn't support until 2.26.
+ifdef CONFIG_CC_IS_CLANG
+KBUILD_CFLAGS += -Wa,-mrelax-relocations=no
+endif
+
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
 UBSAN_SANITIZE :=n
-- 
2.28.0.236.gb10cc79966-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200807194100.3570838-1-ndesaulniers%40google.com.
