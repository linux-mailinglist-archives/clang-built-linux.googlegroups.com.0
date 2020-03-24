Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D6D190803
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id k34sf8417124otk.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=TFUb08RX3YAufvg52cQPF6TB5ShBd9X0gLE5aiw6VrGcsEnIaA8sW/X9G/w+dMgH+1
         9hgThNL0m9qVjiWdubIrJER1W5p8VW3IU2a0rY2v5SIqqxmLVbt8QUVzNfdrx5Ik3hOd
         YcXcbyVvuuvBcPrfIKMXGJ0HjQcwe065taSmOxtlF5+Qe+iDPYzeVwLzgKtbab17lF6P
         4BRpPh6ZMNFbcynS3YS1Qd6odJZLQh5cvpEyFsuZATGzSgwkGQ2vs3PycREHlhpS12M6
         77gKCJoZfNJc/cJeG0xBahm4/aPLIbbif4r0+DJC07sgkCu6xfeLEuOG62JHivAZyC+N
         5yow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=LmFhPKH0eLnzgcz8V3yA5or5yVeL75seTdNmPyeW1SA=;
        b=xt2azlf9I2YKNfEJUC1xM7QgyZ8dAgJHZq5HanycxZHoGNyNEn2t+sXWZoaGYx9QPE
         /Sa/FXeAIr2SCawA+sefQu9jz4udVWpZPbamKWbnCwdTsm4I/mkfhj6cFEHJMIIlFjet
         9e1IfUhTkqvaN6nfKTJXqQZ7AxC5Xf2jkH3ucEMjVcINXkEViDouZ6UW4kIWmltSXd0K
         49Ksro7aQMAuLqXWLmr4diu1IY/dEA1MkLpca11XYsDkbo5B6qLuPsq9BuIvpfYRNETR
         oqLQ0o6K4o1HtTgAJH+MZ26jDTMvhBxlJ5ULUxRqN8oi0VGP0kAt+soGrPkJRY4p2U8U
         vJew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wVw9dw6d;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LmFhPKH0eLnzgcz8V3yA5or5yVeL75seTdNmPyeW1SA=;
        b=Ey7/62J0ScPsB3ZlvJS/4Mey+BjoUfKZtWI+E1wBHYtAoMykUmrSrOfwJXvXkT0+z0
         RguwgJ4R/+cnzWMwhlooyezLeMyn0R19xnDQIfp7iSvgbrmYtuE1S9o4BadjNMSS9d12
         Y3yRgfb+6Kmz9S+bisE/A9Td9ZwvqNupEPYKynMA6em2HumV+4Jjo8209jW888eJiJYT
         IT8lzqbrqQOwwoeiIXTfgfj5vU0SsfJIRdP4GvEtMrAi0jLup4DDKo75ns+IzC2RA6YQ
         VN69IOEQzWnr2KXzeJKW9KY/GpDzfqwNrqTij5EeGURm/gjoQEt4ul59Cm05ECb0b6/v
         E5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LmFhPKH0eLnzgcz8V3yA5or5yVeL75seTdNmPyeW1SA=;
        b=Vzrc8Yxj4XlTdty8u5FyZiFtoZIoGp84NkJLf5Qkro98ohVkd78jELY5ejJ9rzRlhN
         gamAtgI/v6mOsVJQZUAqKZwrmbw8FXR/5IEDtg4VzppcKKsJoQ7BfbeeXuQ1HXmQxMW7
         oKAVoKYEiUB0ydTr8uYOcPMlOLVu6/+lA2yGxgPBz3/Hhy/1WB8+XGmE+bUDxucURSNA
         tyw4DcRlrepUC2/h4ZA7aL2Gv85YTcRYpMqUts96+cBzcdYYw8gywOQVVbY4X6DivRyP
         gwxMA7/f2D1q/CU1+YDhsm4YtsbMntvlYlTnvxJvq9CAu4oclx4MFp3e97Bwj1zLv38d
         caOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3/NTrWB5d+B6iMYcjMd9bMHaakFIrn4V5WNrKtyhuuMOdCFKmB
	PVWeC7pU/nojI2WmC8Tjv5w=
X-Google-Smtp-Source: ADFU+vus3Jljqpx+tVAW/50ffaP9kyF88X6KXrlqY4YLQnAm+/u2nSnG+5+73Qx/RZzSZ2DN7FSUsg==
X-Received: by 2002:a9d:5181:: with SMTP id y1mr21231473otg.199.1585039777392;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls7325291ots.0.gmail; Tue, 24
 Mar 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:a9d:6418:: with SMTP id h24mr21049234otl.172.1585039777015;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039777; cv=none;
        d=google.com; s=arc-20160816;
        b=H2k3xhTtJZxNaFpVqq1v3tOv3BTCVT1/n1h+7GTacgKvAhZONfC/mcm6QlhC9LX3yL
         hL7yDznJM9sDLZVVnBwL22RoN+SgUhNZMOFsqvoELAZU4ILp9yVc6dQd3Bv4NBj+EumQ
         o19cdzrE/IqzQPj4RowZNqY7oQYx78icsS2YHc8mnyg8Vz17/cgW992c9dObKZgnt5IC
         H08WiwVoVEu2RH9ZocuGi2L48oY4Lqgq7xz/asdPk/Vvf8m34aOZmG14G7mq3LS4d64P
         HzdT+TFlioKfdCS430hxQSr6eb/gaN8clSUkBoYbMK7E1l3+3GTccbJJknVsKpFNo7Ja
         QEsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=uHlP0H5KSWMnx8rYeC99bkG9lolI7OWMeHS6ySUM25g=;
        b=NKvwU011WrRDXpr8WwTnlJ6zyu44SihXJu96OG5RWp2xKvFw6wNKALRhphsYGUff2f
         M1AvZ57EwKMxQ2MQ4hP0oL/adyZF1C3ZI1j7+rsyY1KmEHbxTvEbD5prSRCcjpZWoIsI
         +EmvVR4+mD7U/XgTmUYxn0NfRaNamipAWvFC2wvgZ2+LePQyrPTEanmvXt4QLEcnHOM0
         N5k2I6ncu1WO9TzhZE5kF2lD3YOSOS9WSEj/2GQjBqg3wv+UnJcKe3lx36YVxj1NGAco
         SWmqlLFgX4a8qKcDsu5tgFfrCAva+b3GQXWCaE45JNMJY3YhE7ZShaSTbix2Kb99veMJ
         Wh7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wVw9dw6d;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id o10si1058302oic.1.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsd011219;
	Tue, 24 Mar 2020 17:48:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsd011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 06/16] x86: remove always-defined CONFIG_AS_SSSE3
Date: Tue, 24 Mar 2020 17:48:11 +0900
Message-Id: <20200324084821.29944-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=wVw9dw6d;       spf=softfail
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-7-masahiroy%40kernel.org.
