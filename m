Return-Path: <clang-built-linux+bncBAABB3VU4DZQKGQEVK6KWHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6891D18EDDA
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:09:51 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id g63sf8837252otb.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929390; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNY5BNmatW8AePrcWRMql1AdrZOdabgoilwgPb2u4hC/e1iosf4t4JA9o/Sh2V/4QZ
         YjC21Fr/h53YnAH79+1HtoN3OZ2Ovp1eLzfx9H2BHY39L/RaTMViR7GKUztNUuB4eW01
         N8GiC6TT6omZmx+AleTpYYNNee2BwPMBY9Y+1T/3fpf4btKH8v/G6TCcWRfmSnyz6cr9
         7SNInBNpWMJr2JaNrGKFLhE5vnKclB1RZaj5hNqxOYR8svGgH5H6aNwekp+H+iFHBPxK
         ky9w2GTfUUb/0Rq0MDvgOtjKPEsL1UThAshfkIYGeRJ4AgFwbW6/Eba9QWNpDPaBA3F5
         ODuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=fkrrRWDPawaXWbfwyQN/dj6I0FBn26bZNQNEvau7whI=;
        b=e6Kr7LXXvjHjx4C/0xZGT3KcYgGVpBUxIltJy1ai4RijIFTkjEqYSfi2tm/03v+sgD
         sBH7TWi/LX3DzKjR2TMbakuIWsVeI0hHur3O71W9F55GHUHGNm7qDrUvuz5hnoymTd3o
         hkwfJ/RaOoWBflwQdSEjAobKCb8nb2P1cs15l0qFVoRWLxibsV+eah/xqfJJ1Dg2FduJ
         zF/9NmqYigAucNlF9Bl04biEZVm9E4pxqWs95eJmK3fJzE90sZhsWhqDhnpFOURwTl2y
         DPELIUOr6axCeIGfUjiqxr5Pi5pyolLTi/mvEenBvlPC9Mlrr1zZZqyrPPDkrsH15Jk6
         hO6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=X39EXPj3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fkrrRWDPawaXWbfwyQN/dj6I0FBn26bZNQNEvau7whI=;
        b=qL4mVBHsv3/ND21DKCBI5QSaH4O2/b0CRJk1Q73+wTvYfvtfpu/uy9NZGI9cycVnF/
         OKRZWyxNE6vax8cZ9aUdbONtG8gO/aVcA+acZdes4sEy/C9R0cQb2EOnYiaWkBDBr6Iw
         sPlFpy/sOHq33qsIWMegkIBFe6a4x2sFtIXVw2CGkvIkkiI1hfkAFv1fTDD8aD/9ZdBd
         szEWVWK0iqw0C4dk7wldHbT0w1DYd6R/9oThe8TLVS1BaxtvkPvsTgMIKLB42Fs/Yf6W
         8O6zG5V/3Z3GfN0KNqUvGnHceIGF0HvzrQF38Yu/MeplHD3/02/TpIQdbNb7rFidRgup
         XWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fkrrRWDPawaXWbfwyQN/dj6I0FBn26bZNQNEvau7whI=;
        b=Bxli5oMeBcsBTgAQHGzA+WUF2kdzpWHe6qZ0mU7eaI+7qBupWKwTDJDh/x9gevsa62
         ga+POn+eOLWkWOxu4xd50iwmgus7EZVbgwvObSFbolnNTr455J8cJUJ95LA8JSB+/un4
         Z2JZt5leRkbKLwtw3F1WsfS0d+Hz1WwKNae3WkdBmgBTmc5H5vRkkeS+Qk93ls9DPycy
         YILCB3EGhw57xjHSIDkTe7EXQ2QuomLpn+Fh1oyW90qR/vjdXYfSDrIxrtHpYItnuTWB
         fCL6y+osy1+JyJiCZTO7mvSs6TFSpGjOrn7E/IHfXrATrJ29t4PkI4hEvdICTI1qLUik
         u+zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1OC0byKejgzXV5T3LnGbbbJOAtgOA8NzugFffBb5zwgCb9ZpeM
	xhWALiBj5oBZ8li616aG230=
X-Google-Smtp-Source: ADFU+vtN5zB5XpdPuyvMXCve0L6spFEsfuhhU1YLHyinxm0psHWLRrLJ2Mm0N2PnG4JDSRGY9jpcyw==
X-Received: by 2002:a9d:618e:: with SMTP id g14mr15809214otk.314.1584929390343;
        Sun, 22 Mar 2020 19:09:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls5503464otg.9.gmail; Sun, 22 Mar
 2020 19:09:50 -0700 (PDT)
X-Received: by 2002:a05:6830:2421:: with SMTP id k1mr16387891ots.192.1584929390042;
        Sun, 22 Mar 2020 19:09:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929390; cv=none;
        d=google.com; s=arc-20160816;
        b=YpWVm90ayEuoz0DQSJJA8XxqKv0F8s13/77BfC9l6jjaMaSQdyU10bWdE1ulrSGa3S
         Q3g6oBHPHnry5ZDX1Z3KHh3dgb1qBsfAR6U37BB4y8OKjkGS20st5nP1TZutQCHtg6Ou
         zmNUvP0xCBQgq2agpkrw3ZoNQWs2Ynzzw3GKzXN41PKPoDaQdQ1pC8psTO/QGSjkTkF4
         v0iwDffPoREzZWjfmvJXuS+ch6wy2KG5qw4VCAPeRUScMDHeK9oOduwJ2RNA+tNokXLk
         X43gf1Tq9GaLMXzCwF/UIHSSxJILrPnaMt8w48eSO1y5Iha+j/96RrxHg7aI+d7BPs90
         gq8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=TV1CVGcnMy/dbHrO341jM1zylM72UXjkgvF7GZRl4kE=;
        b=G11kV05Mwglr2tQ3gfXNxBS0az0SWJTWUIj9Wv/jQ33xqUI73o5FnlgGqBW7mH55uy
         vdzSAYfa2QhphAREy1jiFIUUZtlE+3r7Lmah7tjmkL5J9zJ8PfDGAe3LMHzbB283cfSj
         NkxJy2P3al9NKYdcEf1oU9SIXdIuPrMM+4DvtqOqamNXDmrAh0rEwbxyQkrMtq/NX+PI
         uSnthHbT3/+tUxeYlzwhubrusVreWpcbG3FiUc3IGapy76Afvl9O8D5af6kzcHfC9yOT
         5ImoOJiBWTUCzftAcMyDSbCoW0yUk9UZrCN5tt6drVABFYe/5rJMbzhuNodK1haPFE7A
         NNfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=X39EXPj3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id o10si779105oic.1.2020.03.22.19.09.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:09:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N28urW002941;
	Mon, 23 Mar 2020 11:09:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N28urW002941
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Allison Randal <allison@lohutok.net>, Armijn Hemel <armijn@tjaldur.nl>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Song Liu <songliubraving@fb.com>,
        Zhengyuan Liu <liuzhengyuan@kylinos.cn>,
        clang-built-linux@googlegroups.com, linux-crypto@vger.kernel.org
Subject: [PATCH 5/7] x86: remove always-defined CONFIG_AS_SSSE3
Date: Mon, 23 Mar 2020 11:08:42 +0900
Message-Id: <20200323020844.17064-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
References: <20200323020844.17064-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=X39EXPj3;       spf=softfail
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

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Makefile              | 5 ++---
 arch/x86/crypto/blake2s-core.S | 2 --
 lib/raid6/algos.c              | 2 --
 lib/raid6/recov_ssse3.c        | 6 ------
 lib/raid6/test/Makefile        | 3 ---
 5 files changed, 2 insertions(+), 16 deletions(-)

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
index bf1b4765c8f6..77457ea5a239 100644
--- a/lib/raid6/algos.c
+++ b/lib/raid6/algos.c
@@ -103,9 +103,7 @@ const struct raid6_recov_calls *const raid6_recov_algos[] = {
 #ifdef CONFIG_AS_AVX2
 	&raid6_recov_avx2,
 #endif
-#ifdef CONFIG_AS_SSSE3
 	&raid6_recov_ssse3,
-#endif
 #ifdef CONFIG_S390
 	&raid6_recov_s390xc,
 #endif
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
index 3ab8720aa2f8..79777645cac9 100644
--- a/lib/raid6/test/Makefile
+++ b/lib/raid6/test/Makefile
@@ -34,9 +34,6 @@ endif
 
 ifeq ($(IS_X86),yes)
         OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
-        CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |		\
-                    gcc -c -x assembler - >&/dev/null &&	\
-                    rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
         CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |	\
                     gcc -c -x assembler - >&/dev/null &&	\
                     rm ./-.o && echo -DCONFIG_AS_AVX2=1)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-6-masahiroy%40kernel.org.
