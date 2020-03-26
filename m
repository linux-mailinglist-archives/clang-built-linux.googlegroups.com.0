Return-Path: <clang-built-linux+bncBAABBDGD6HZQKGQEL4GLKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id F33D3193A21
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:21 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id 16sf2079134uag.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=uqF4Z/gsMjW1fmoDfX610xrbxjzj/Z2WGbPJz/kpCJMJA5pUfvp0vkv1oC8hvY09nU
         +A8CeB6Dpzsd3pu3qEglq8nFf7cFpgY4pD4btNHoG5VACXZKFC8RaRgvb/yAcnloOfYy
         xJi7RnBjWW24idKOpFTgEoZ5lNNOBMnsDWjlE6+2XggIa6lZUK55CSzlRSEY4EOanJFD
         J+mVuNqCfH0sax6Wjgacwgw9651CKJOvHRpJd8Dq09nqNo3SfvPdQsIWLK7rfev71Z2h
         21EByO2E3vaBTtnLPGlMwDGUIDDzJhtW2/Q5YdyCn9V7ATk6hZ4/h+gubbwNxsx6UzSv
         4xyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=ZkU4sQp/vsLOj+0IlPZBGYqal4dLwyIj2b+rhcH2ad4=;
        b=jozzTkimkx+JyzNQbKzWd/cvD5GAMoSZsrJoi47ojBSZg9w1oEb3GWXMnFfytDDZR6
         IzVw5e9oMfOsFNXQjCxFhYKkYJoUKoU231WKus7Q4xkVcmNRTLUtgsQR1zEh32UVVKKZ
         VP74/eDMWl7EGR13qaCX1C/8CAIBYKmrH+NFIPvEegsbnMo0zX4ciPcxgvL5oq+AEGzA
         3Vk4sJ9auV4AADMe4+kvoZ/1hp66/1jPGcDLSTaEvE3gvbq+axIxbvBy0KJ0DnCPQvMv
         QWVspX9VQOr7PmlgehB8eidAo/myeyzYPKO4IvvrxSryUIw+HQ/FuTgTwUMKD2vSekq/
         7WMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qeE74kIs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZkU4sQp/vsLOj+0IlPZBGYqal4dLwyIj2b+rhcH2ad4=;
        b=V21wgPxcCaVOJZmgGOTU6NQULNOZRgCr2/6jX5S5dol9gQ/Iml1d1LMZPJOm4yas/S
         v0tsopbkQ+zE2X30d7VlunT8FGdnPVEnMMqyoewdyDrOUr1q73wrclAASrlyE7cwOiDv
         nurWcO3iwiY5KlYJaekWDDA2jqXxDYkcyqEY8dXsXjY8QIIpTXF17kAOTolQAgYELoUW
         XZr3CToKKJ1kBpqpC8YsXAx9WW/RUTvmmnYBP0AS6/Al4ZDwt1txnTQL9k+yLSwefyZ0
         QPHftK6R42qu56z1ewSoJHFvH3fUy/sgNVwW5SysesXSdKSVeLpA2VmLsd8mmuPGzIoy
         SK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZkU4sQp/vsLOj+0IlPZBGYqal4dLwyIj2b+rhcH2ad4=;
        b=XK7OVnfy2CpMSW3PSFVVr2CTM3bLP384JsQgDrlsdzYYpgPftS35FbqWc/62aYkF0+
         /E0MRQrCEynkcmiA+sxdlKt0HAz4fq5Vc04A9/fjq4I0e7Zx7pFziveS8V6OOiYQ44DN
         btR+vkWXbQ4qGZDWDJoSdei53K24jWQ1ButWM0hsPCaZWtFJ3eN2aqXROkeG/bPAiSOK
         eSw3IVXd8xU/1kBV9dQos3y+ugSu+uxz634LHmK55GyeaxjdhYyoj1lB96xWhAplgAeq
         iP9kDp41G3jumbPEXtR792jCWbwyTstDSNMCrH0qDGGXBWgsN9qdDJwHj88HpWz1tHGx
         u6hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2OConRnEXE4icvQg44Oa8ZS1eKU4b39KJL+EUKPZKraYwRX4aW
	93bB9ZU7/mSRdW5NopKQ5p0=
X-Google-Smtp-Source: ADFU+vtOhxa0OCzLmDmWNE7AORJXg+Ruc+7X/FjgJkrpnzAy9XmJg6lTEuGZz01Ps73y37hyVM7mKA==
X-Received: by 2002:ac5:cdc7:: with SMTP id u7mr5757728vkn.8.1585209741020;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3750:: with SMTP id i16ls352874uat.4.gmail; Thu, 26 Mar
 2020 01:02:20 -0700 (PDT)
X-Received: by 2002:ab0:1381:: with SMTP id m1mr5316928uae.34.1585209740674;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209740; cv=none;
        d=google.com; s=arc-20160816;
        b=d8EznkjhiGUhr+AIIK7HeynX0hIClnAoLxO+4EClpt0CfNu04UK5W2KNwRlCvMWUza
         FAZShK8gshUGdPFYwIlaYnCPGJkMGzi3yRYiyvt9W0oC579iseEiN/XKyXzY+p13xeLg
         4EGPy8UqI5WwZuwmyZZFysSt5n1xTl7WhGHzR1VONV6+OGMEQoqgYn/iVeOCuoN64Yk9
         rNZ3yQ2yXztm+IEoAEDykvd2uleAyWVrqsLriGgYeoE+k0kk1KHsKTT6RWpgi3H++ThJ
         1kP8bVCctt4vH8AMcWRvZK83aMZb3iG9lbn2h8CJzyhW/AM4rg20h1+67PrxtoLxdyJQ
         6k7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=kjAsZXCjiHywP61qOSzAcHLQWlDx4t3Nswuo57yw6A4=;
        b=bLT4x7VqY/rvDZLPna9qneOecQ9n79kEf1rLp/yH7Dj5otDP3ilwjl3GW2CZToU4nl
         FuMbYD6YrdIZSzRFu4uZCPfpPRS15s8tBhcjHgwgTGsIu896wmne0Xuxj/r9HBKxFcTS
         q1bSVvQzpylRc4OMTMCJmz8Dd6lOEzkw3XI381blISC1YbvP6/9Oem08Buq3GUC1WXqt
         ujyzZPX4BrV8OtkcbZ1qcAcpmiMr+vk1nhdDt1Y3r7i6E25rYQFG4LxcQF+OejaTEg9y
         XU3YpcIYSzrkPq2SjDtXqGAzKeo2VS4sAvRxeiPP4TtaWtMXQlg5BHiZPmQ9fRW50uah
         KI+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qeE74kIs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id k6si73377vso.1.2020.03.26.01.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81WpZ002183;
	Thu, 26 Mar 2020 17:01:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81WpZ002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/16] x86: remove always-defined CONFIG_AS_SSSE3
Date: Thu, 26 Mar 2020 17:00:54 +0900
Message-Id: <20200326080104.27286-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qeE74kIs;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v2: None

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-7-masahiroy%40kernel.org.
