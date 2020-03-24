Return-Path: <clang-built-linux+bncBAABB5FB4XZQKGQEJUCVM6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 44968190297
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:14:46 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id b4sf5655993uap.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:14:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585008885; cv=pass;
        d=google.com; s=arc-20160816;
        b=syLOfTevtLayQHiatnL1OT8sXLIe4wtWCg9NwEO2n9FbEhBKUDpefkWdvuY/k7MGf1
         lQpxPMySO/a38cxpBFA2FctGuIWB8Oep62tERt0yhZvHswmU4HlOCjonBkeXzSHVnFD2
         zpgpT5nTk4ErZsHgEiEwInDnPhzMAPzdg4B+L02ukEz/PZ3tXURm8oOGVc/lrmZJNr4c
         q3xnARTrQls6v7kFwrXOYARD8ZT/uLTdGotGAqGAuZ+T1UfZUGSDPrAMB+gIRioUUN0/
         3/KG/wCyBN2LgnRky6DUyXdGs92j5+meJBUyTFdOKOipqJ9Goaexx5jbKj3QpZkAQcLN
         LfLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=BzYJcQymztrXTs114cFAafamXcixKzvU3v/K/Ly174w=;
        b=Njye02I9ISoF85l1jU8dyKJenaQE2jYNvCqFn0uzfVvJ+wR5mAcvKr43mn2WGD72oe
         cjiF68Oeakawa7XiJ61TBOM1c4VZRiWIx5Ye3jc48dektSNuDPsrp/SLArrKL/sh+srW
         09CwxPMbeI8L429w1NBEnNPsttULxdhwP5FC5Nj3kCOVlBrVbwXXl4KPxleRUn1N2csv
         b84wVwE7w36UbYShIK2Hrpbc0HsuMuxswbCkN/mRW4SRLyV+XFGMY3LWzgfKgs/9hnaL
         kHHhXY66zNak+7oyIA5zpPuD/95BNnKOUGU72nTBpEWHoJr3nEVZ0uRr4eRVW2c3Urwq
         drCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hpHQGA+n;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BzYJcQymztrXTs114cFAafamXcixKzvU3v/K/Ly174w=;
        b=jvTZWqhRFdgHZPNs1D/ZkYp+8bq9Sj1ZgBt6wdpM0UM25JaKzFHbxRcIG74LRcSn+i
         HRJWv+8cxVr31iMLZiQyRIsmPxfbW50RO7/6Q7Yx1E/JKXvPTTxoz6+Kj7VginvXCtjD
         6OSQ561vHTNaGVZSaXb+nOICNr5YIBB2iG2kYN+utddo1nxlXeXSiRC9410dTlmRBFYB
         /ps6YVtWOpDEuHKBzmpSHfoLuK8mACFbONqFesGrs4O6v56Qsq35pjsw6bOwHdb+Z+lx
         mHCWsAXaMnLiYNhqJGgPhPi0st1gNzYlLDY/tfkHTw7bmKKHJwEyY767I14qO9e0t87d
         LQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzYJcQymztrXTs114cFAafamXcixKzvU3v/K/Ly174w=;
        b=kD7hOWcxuAAjHydtRPGuZwj+iSAvnfT47LbpQoJUbyw2bcq5vkIITiHomtg0OX/PL7
         5obNn/htIyVVfIZhECOougVuQyTLpmGvWJNgalqjG5rW0SgV4VWIvQ730vl7g+VvLC/0
         93I9NNSgbWaFY/JHjsrhLsizygWRkjgAvdE1SIZ7IzIrC0ERCPFHu5aJKCY75d/hzMwe
         5P3ayCS8vmek2zdRXTRPUZi2oS5op1fFCmKg4XE4jfEh2OJKQ+H799RYfETQ5CwH7bek
         3C1P3Y+S5d0SCyM6B1vqH3+Gel3yqgKmiXONDL3biq7+SEAgb30goGk7zx7HOh0YRo36
         xfzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ290J1Rz1FXQFkGJ/AUtwRtnfZJbDEsQGhrIFb6aRVu6cnhwL2B
	SiXRNn0AOa4f4+RROvyFiBw=
X-Google-Smtp-Source: ADFU+vvEu8WsPhvNk3CWZtGsgU6uC3wfe+rhNhw2TlDRG7NcrnDpKwPUs4OVVA4TWq5SvX0q5UHUzg==
X-Received: by 2002:a1f:2414:: with SMTP id k20mr6937447vkk.57.1585008885073;
        Mon, 23 Mar 2020 17:14:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ce9a:: with SMTP id c26ls2023040vse.7.gmail; Mon, 23 Mar
 2020 17:14:44 -0700 (PDT)
X-Received: by 2002:a05:6102:f:: with SMTP id j15mr17498656vsp.46.1585008884729;
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585008884; cv=none;
        d=google.com; s=arc-20160816;
        b=tNX9YJxorR1yxvHe15O/6Nx+/NvVXTmetR69z7pz3wZCGZb0kjZP/2MTZsTtjRx/y2
         s5E6DJEop5hUaciPgoGX7dWR9e2GaDhmyKW64rLVTeivAFR09Q8jMRwbyNV3+nHRYVOa
         JguIm9RzmJoZepI22ewcZCGImLF5qIzcTHRxinwbUzeZbtJQ8I6hgsWzChwgCXaZQ3hR
         DS+Y5p6M8mvkl/QVt/ds8Mz4sLnz+NeZz/gNtaZey2uDYZuerOERqXvAkkl+ve/W7gh0
         3e4Xk8fLzF6Jwyn63wkuU3PBCDgFVCIGHp79vmTgUvzCJJ/Lcw0UcqZ7e+gEmBDRxrDu
         g5sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=R0STIziFjPNP3E34qfzmQ6u1ZNlYmWgDS8/ChcGBd/M=;
        b=noe8K9yFiC4DPehr89SFiIL94ZLQ+pMPjoMvOx2q3BJD09ULGFrvTwo6T/Ywef73e5
         6LqKz0/NwS9GGiHkdwRdgL0fmCmWJK93DTMOMLi97didUreUTmmO7N19dZdRsW/arLZT
         wNc+18bA6vhKl3k2qN7/FLKmT4mTv2vs18JqzJb9k4KS4ccYVJGRhX0NJgVNwW6FLF3W
         CUSVQo15cAZU/UG4Nkyx4w8qh6EzJ/VST4+ZxLT31ePrlXl7oQR2j6ihyzUODgmlvj8m
         buURpOxxqxHesVskcYZ+hXCc7lQf7j7KYmKiaCziY9Lm/tcVX6a/TnMA1FnPMKT8ALos
         SMWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=hpHQGA+n;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id h6si585722vko.4.2020.03.23.17.14.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O0EHnt026701;
	Tue, 24 Mar 2020 09:14:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O0EHnt026701
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, linux-crypto@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>, clang-built-linux@googlegroups.com
Subject: [PATCH v2 6/9] x86: remove always-defined CONFIG_AS_SSSE3
Date: Tue, 24 Mar 2020 09:13:55 +0900
Message-Id: <20200324001358.4520-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324001358.4520-1-masahiroy@kernel.org>
References: <20200324001358.4520-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=hpHQGA+n;       spf=softfail
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

CONFIG_AS_SSSE3 was introduced by commit 75aaf4c3e6a4 ("x86/raid6:
correctly check for assembler capabilities").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_SSSE3, which is always defined.

I added ifdef CONFIG_X86 to lib/raid6/algos.c to avoid link errors
on non-x86 architectures.

lib/raid6/algos.c is built not only for the kernel but also for
testing the library code from userspace. I added -DCONFIG_X86 to
lib/raid6/test/Makefile to cator to this usecase.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

Changes in v2:
  - add ifdef CONFIG_X86 to fix build errors on non-x86 arches

 arch/x86/Makefile              | 5 ++---
 arch/x86/crypto/blake2s-core.S | 2 --
 lib/raid6/algos.c              | 2 +-
 lib/raid6/recov_ssse3.c        | 6 ------
 lib/raid6/test/Makefile        | 4 +---
 5 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index e4a062313bb0..94f89612e024 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -178,7 +178,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 endif
 
 # does binutils support specific instructions?
-asinstr += $(call as-instr,pshufb %xmm0$(comma)%xmm0,-DCONFIG_AS_SSSE3=1)
 avx_instr := $(call as-instr,vxorps %ymm0$(comma)%ymm1$(comma)%ymm2,-DCONFIG_AS_AVX=1)
 avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
 avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
@@ -186,8 +185,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
-KBUILD_AFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_AFLAGS += $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_CFLAGS += $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
diff --git a/arch/x86/crypto/blake2s-core.S b/arch/x86/crypto/blake2s-core.S
index 24910b766bdd..2ca79974f819 100644
--- a/arch/x86/crypto/blake2s-core.S
+++ b/arch/x86/crypto/blake2s-core.S
@@ -46,7 +46,6 @@ SIGMA2:
 #endif /* CONFIG_AS_AVX512 */
 
 .text
-#ifdef CONFIG_AS_SSSE3
 SYM_FUNC_START(blake2s_compress_ssse3)
 	testq		%rdx,%rdx
 	je		.Lendofloop
@@ -174,7 +173,6 @@ SYM_FUNC_START(blake2s_compress_ssse3)
 .Lendofloop:
 	ret
 SYM_FUNC_END(blake2s_compress_ssse3)
-#endif /* CONFIG_AS_SSSE3 */
 
 #ifdef CONFIG_AS_AVX512
 SYM_FUNC_START(blake2s_compress_avx512)
diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
index bf1b4765c8f6..df08664d3432 100644
--- a/lib/raid6/algos.c
+++ b/lib/raid6/algos.c
@@ -97,13 +97,13 @@ void (*raid6_datap_recov)(int, size_t, int, void **);
 EXPORT_SYMBOL_GPL(raid6_datap_recov);
 
 const struct raid6_recov_calls *const raid6_recov_algos[] = {
+#ifdef CONFIG_X86
 #ifdef CONFIG_AS_AVX512
 	&raid6_recov_avx512,
 #endif
 #ifdef CONFIG_AS_AVX2
 	&raid6_recov_avx2,
 #endif
-#ifdef CONFIG_AS_SSSE3
 	&raid6_recov_ssse3,
 #endif
 #ifdef CONFIG_S390
diff --git a/lib/raid6/recov_ssse3.c b/lib/raid6/recov_ssse3.c
index 1de97d2405d0..4bfa3c6b60de 100644
--- a/lib/raid6/recov_ssse3.c
+++ b/lib/raid6/recov_ssse3.c
@@ -3,8 +3,6 @@
  * Copyright (C) 2012 Intel Corporation
  */
 
-#ifdef CONFIG_AS_SSSE3
-
 #include <linux/raid/pq.h>
 #include "x86.h"
 
@@ -328,7 +326,3 @@ const struct raid6_recov_calls raid6_recov_ssse3 = {
 #endif
 	.priority = 1,
 };
-
-#else
-#warning "your version of binutils lacks SSSE3 support"
-#endif
diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
index b9e6c3648be1..60021319ac78 100644
--- a/lib/raid6/test/Makefile
+++ b/lib/raid6/test/Makefile
@@ -34,9 +34,7 @@ endif
 
 ifeq ($(IS_X86),yes)
         OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
-        CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |		\
-                    gcc -c -x assembler - >/dev/null 2>&1 &&	\
-                    rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
+        CFLAGS += -DCONFIG_X86
         CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |	\
                     gcc -c -x assembler - >/dev/null 2>&1 &&	\
                     rm ./-.o && echo -DCONFIG_AS_AVX2=1)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324001358.4520-7-masahiroy%40kernel.org.
