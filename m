Return-Path: <clang-built-linux+bncBAABB3VU4DZQKGQEVK6KWHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF7F18EDD9
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:09:51 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id p4sf10501881ioo.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929390; cv=pass;
        d=google.com; s=arc-20160816;
        b=DTv1SRwQ2h9wTRs5e2Xz2hdyMtOmOqNrV116pXTNKRSonMZsfwwPMRtOdVJrDt5m2U
         PYxp/quifMmwrXQgm3/43YUjwgLAlX3VxbBMrtKKqZeOf4G/ksvIUdv7Xtlbzzuac9V+
         52Ni/Rq83YHJpwLEP+/TMH/olOKT5AvaiPJyxLIeTniEorHYQbRYeuuwxDb6/cpP16q2
         cjzNTb+htWrEwZ55+rXkj6k9twGX/4noZVnDTqD6kPiIwblV05vVLArahd0Qr9KCz7z3
         VDa0Mc9GViT/EJVpjeQLQCCNZyKdcTbXmb/VT2QWS3dzGKSEAb1up9B+9QNWYVipTl/o
         hj4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=KWd3+hEiKhemC6fz31iZB3wLULZFZ6foIcgBKXu9vqQ=;
        b=NDvqZmg5mKeU0Zvf9tY8h4R+GBXcZEEdNcamabY5A+HJI2R4hvw3yeKxZosMo8TJaN
         Bwxemx3UZ9PSZ5XD7g2sr2XHILqQpKGWsJssLYwqd+vS5Al2q14NuWyCmlei4uqZPB8x
         ynu9wop07mwburRGka5BaCjcyIxO/ix/sZepX05Wgkxpo6ylRYWoyEfiXvdYzmCixTdR
         0/tlRLdhWojApQC6BtIA/zspA6OpK4HuMxildwThklsycWkCb6MqJ/8mmRLQvHTzmTh6
         OmVf+qZ02a/oj3j2WdziNofSiYS9CvMpCGG7YENylXtMbx3apMlS7l7YQ6QVnb27gVYp
         zGNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=b7GSC63S;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KWd3+hEiKhemC6fz31iZB3wLULZFZ6foIcgBKXu9vqQ=;
        b=p5fMUXQ5JatdW7SmXd1ISn8Y769NIS2Gg2nv3B7DptyFkc3dm2NWDXWuKyY5kVnSzv
         eWiPzRORNEm/UlzXEEJQHSQ16wO2Uwekls1cdto/xIt86fedm+Xit1wC/yYCT28iQShp
         wLgLHMwyDlNWApOOVeuNLidNzPzjmL8dJdv06l3x5cpBZPK6f2OHwr99EcG3La+JYcMN
         6P7UzZdtG6+EeIyIciMIJS2xLMNowflZqZZEocBwHjIvGoKBOj5Z8otiLVziiEShyeun
         Sh7w02vGUcdhMPooKTV9jPorqLhVPaIhS/gt1gGSJPumHnAlTpVIhWO+yI4NFA5E9iAN
         ZbPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KWd3+hEiKhemC6fz31iZB3wLULZFZ6foIcgBKXu9vqQ=;
        b=cnA2zPp0dLB4jSiZRkwfZeU6nHKMsHlce4ZV/z5bzsgvaVbf9TMPtkBGxy1BeK1bMj
         K9LpYJ6IgMhs2KZi5UPVUeGwDGtDGu+IqloeEPdfMvsFfxm0zue7UShTn7LToEy2tL79
         MknRUlxln4EiuGSRw3DeeOoJE7evsWrIT42dBPkVmiPNCEGX+rLqY7a6rK5OC6IaAPCW
         JnR43dLxS4SqP8aw7mhn8yZvSkEm2P9e+U1SRQDa7Yj7tAFb66UhERjHowaIbeiao9A3
         ngBRQZF+yboiH/E0FDcmnB4ErZ/ojL7olh+bnHdYyEYOH+r+QH/ewqdhApzf3bM41fB7
         0mGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ07O5l+93RwgG/KkO55aKSvSc0CH2d18FXxxze4hwJlA2Z5iDRW
	O9WLL5dTOUOc9RrSDmijOcU=
X-Google-Smtp-Source: ADFU+vuE6dXoYDVcHfSX3X6KnSlfOrgnhywKiVuP8hSpMq4xKqCwBE2UpELd9tNGmVdEADEG0v+ExQ==
X-Received: by 2002:a05:6e02:688:: with SMTP id o8mr1861492ils.156.1584929390226;
        Sun, 22 Mar 2020 19:09:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:e87:: with SMTP id p7ls475981jas.6.gmail; Sun, 22
 Mar 2020 19:09:49 -0700 (PDT)
X-Received: by 2002:a02:3b4f:: with SMTP id i15mr18974758jaf.63.1584929389767;
        Sun, 22 Mar 2020 19:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929389; cv=none;
        d=google.com; s=arc-20160816;
        b=uprX74Zw7eBoYauXTJfC+ZxqWFz94VbEAYSoBjkd0vzEPNfLASaurZmyDB0wF7qOSX
         By2NMsnB/AtZWzbr40tmkfk/LYnqL23LA4ste22k1HZMKh5rjU436rvpsoXW/B2OF+SU
         35TAP8kdKHqLRf6KQld74nnLiPct3j2Oe5OM+5qpUaYg8SIjB7SSM19nPBSNDqeQWzes
         sHNjBWPBxzbPrwmVbO+UP6KFu7oBPTsvbT8oQ2Ei/50SMktnT57otUxUYmv0uoaarvIA
         jogwRgZ3gprkFbSIWMebmfYOX386OkP+U0QzWbr0yN13+tnnhzUGAqnn1hulS1h2oSc0
         /Eww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=x0Vn7jC+h3tPLa9Y0ITQpQmflxvgQPhNSLCl+6TRaEI=;
        b=jOXMPuATLMIHQR3YWJG2WOvCePZNIecytqlxWM8qhrkkWG2fqEvhvsPYmi/O4uZhVh
         CVWhvqoBJI4M/2GxwPmLFGY9SWfqLysFRlbJDCzxKefypBZvGxB+9zxKapRhlRjimjbB
         G9mVWKIqV8/ab3VV2xmALfI+97XmWizviHZKlgEJ6sVcHyJz42OcVoKmQVa9sVcDIE2w
         hGtZhAvf/EtxtKixZQoMjT3y3p678zLNISZq3h0wwOXGUhFCyUlXEBxMAAsMM1Q7OIgB
         MMfEiosn2QJA2c7qVmBzO65jhwKZdmsvx26d8qoFZ1TSrsJ8awwgZ6otWfhPQhsnImjp
         wHuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=b7GSC63S;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id b16si700329ion.0.2020.03.22.19.09.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:09:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N28urX002941;
	Mon, 23 Mar 2020 11:09:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N28urX002941
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
        Ingo Molnar <mingo@redhat.com>, clang-built-linux@googlegroups.com,
        linux-crypto@vger.kernel.org
Subject: [PATCH 6/7] x86: remove always-defined CONFIG_AS_AVX
Date: Mon, 23 Mar 2020 11:08:43 +0900
Message-Id: <20200323020844.17064-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
References: <20200323020844.17064-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=b7GSC63S;       spf=softfail
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

CONFIG_AS_AVX was introduced by commit ea4d26ae24e5 ("raid5: add AVX
optimized RAID5 checksumming").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_AVX, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Makefile                             |  5 ++-
 arch/x86/crypto/Makefile                      | 32 +++++++------------
 arch/x86/crypto/aesni-intel_avx-x86_64.S      |  3 --
 arch/x86/crypto/aesni-intel_glue.c            | 14 +-------
 arch/x86/crypto/poly1305-x86_64-cryptogams.pl |  8 -----
 arch/x86/crypto/poly1305_glue.c               |  6 ++--
 arch/x86/crypto/sha1_ssse3_asm.S              |  4 ---
 arch/x86/crypto/sha1_ssse3_glue.c             |  9 +-----
 arch/x86/crypto/sha256-avx-asm.S              |  3 --
 arch/x86/crypto/sha256_ssse3_glue.c           |  8 +----
 arch/x86/crypto/sha512-avx-asm.S              |  2 --
 arch/x86/crypto/sha512_ssse3_glue.c           |  7 +---
 arch/x86/include/asm/xor_avx.h                |  9 ------
 13 files changed, 21 insertions(+), 89 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 94f89612e024..f32ef7b8d5ca 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -178,15 +178,14 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 endif
 
 # does binutils support specific instructions?
-avx_instr := $(call as-instr,vxorps %ymm0$(comma)%ymm1$(comma)%ymm2,-DCONFIG_AS_AVX=1)
 avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
 avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
 sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=1)
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
-KBUILD_AFLAGS += $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_AFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_CFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
diff --git a/arch/x86/crypto/Makefile b/arch/x86/crypto/Makefile
index 8c2e9eadee8a..1a044908d42d 100644
--- a/arch/x86/crypto/Makefile
+++ b/arch/x86/crypto/Makefile
@@ -5,7 +5,6 @@
 
 OBJECT_FILES_NON_STANDARD := y
 
-avx_supported := $(call as-instr,vpxor %xmm0$(comma)%xmm0$(comma)%xmm0,yes,no)
 avx2_supported := $(call as-instr,vpgatherdd %ymm0$(comma)(%eax$(comma)%ymm1\
 				$(comma)4)$(comma)%ymm2,yes,no)
 avx512_supported :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,yes,no)
@@ -47,15 +46,12 @@ ifeq ($(adx_supported),yes)
 endif
 
 # These modules require assembler to support AVX.
-ifeq ($(avx_supported),yes)
-	obj-$(CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64) += \
-						camellia-aesni-avx-x86_64.o
-	obj-$(CONFIG_CRYPTO_CAST5_AVX_X86_64) += cast5-avx-x86_64.o
-	obj-$(CONFIG_CRYPTO_CAST6_AVX_X86_64) += cast6-avx-x86_64.o
-	obj-$(CONFIG_CRYPTO_TWOFISH_AVX_X86_64) += twofish-avx-x86_64.o
-	obj-$(CONFIG_CRYPTO_SERPENT_AVX_X86_64) += serpent-avx-x86_64.o
-	obj-$(CONFIG_CRYPTO_BLAKE2S_X86) += blake2s-x86_64.o
-endif
+obj-$(CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64) += camellia-aesni-avx-x86_64.o
+obj-$(CONFIG_CRYPTO_CAST5_AVX_X86_64) += cast5-avx-x86_64.o
+obj-$(CONFIG_CRYPTO_CAST6_AVX_X86_64) += cast6-avx-x86_64.o
+obj-$(CONFIG_CRYPTO_TWOFISH_AVX_X86_64) += twofish-avx-x86_64.o
+obj-$(CONFIG_CRYPTO_SERPENT_AVX_X86_64) += serpent-avx-x86_64.o
+obj-$(CONFIG_CRYPTO_BLAKE2S_X86) += blake2s-x86_64.o
 
 # These modules require assembler to support AVX2.
 ifeq ($(avx2_supported),yes)
@@ -83,16 +79,12 @@ ifneq ($(CONFIG_CRYPTO_POLY1305_X86_64),)
 targets += poly1305-x86_64-cryptogams.S
 endif
 
-ifeq ($(avx_supported),yes)
-	camellia-aesni-avx-x86_64-y := camellia-aesni-avx-asm_64.o \
-					camellia_aesni_avx_glue.o
-	cast5-avx-x86_64-y := cast5-avx-x86_64-asm_64.o cast5_avx_glue.o
-	cast6-avx-x86_64-y := cast6-avx-x86_64-asm_64.o cast6_avx_glue.o
-	twofish-avx-x86_64-y := twofish-avx-x86_64-asm_64.o \
-				twofish_avx_glue.o
-	serpent-avx-x86_64-y := serpent-avx-x86_64-asm_64.o \
-				serpent_avx_glue.o
-endif
+camellia-aesni-avx-x86_64-y := camellia-aesni-avx-asm_64.o \
+				camellia_aesni_avx_glue.o
+cast5-avx-x86_64-y := cast5-avx-x86_64-asm_64.o cast5_avx_glue.o
+cast6-avx-x86_64-y := cast6-avx-x86_64-asm_64.o cast6_avx_glue.o
+twofish-avx-x86_64-y := twofish-avx-x86_64-asm_64.o twofish_avx_glue.o
+serpent-avx-x86_64-y := serpent-avx-x86_64-asm_64.o serpent_avx_glue.o
 
 ifeq ($(avx2_supported),yes)
 	camellia-aesni-avx2-y := camellia-aesni-avx2-asm_64.o camellia_aesni_avx2_glue.o
diff --git a/arch/x86/crypto/aesni-intel_avx-x86_64.S b/arch/x86/crypto/aesni-intel_avx-x86_64.S
index bfa1c0b3e5b4..cc56ee43238b 100644
--- a/arch/x86/crypto/aesni-intel_avx-x86_64.S
+++ b/arch/x86/crypto/aesni-intel_avx-x86_64.S
@@ -886,7 +886,6 @@ _less_than_8_bytes_left_\@:
 _partial_block_done_\@:
 .endm # PARTIAL_BLOCK
 
-#ifdef CONFIG_AS_AVX
 ###############################################################################
 # GHASH_MUL MACRO to implement: Data*HashKey mod (128,127,126,121,0)
 # Input: A and B (128-bits each, bit-reflected)
@@ -1869,8 +1868,6 @@ key_256_finalize:
         ret
 SYM_FUNC_END(aesni_gcm_finalize_avx_gen2)
 
-#endif /* CONFIG_AS_AVX */
-
 #ifdef CONFIG_AS_AVX2
 ###############################################################################
 # GHASH_MUL MACRO to implement: Data*HashKey mod (128,127,126,121,0)
diff --git a/arch/x86/crypto/aesni-intel_glue.c b/arch/x86/crypto/aesni-intel_glue.c
index bbbebbd35b5d..e0f54e00edfd 100644
--- a/arch/x86/crypto/aesni-intel_glue.c
+++ b/arch/x86/crypto/aesni-intel_glue.c
@@ -185,7 +185,6 @@ static const struct aesni_gcm_tfm_s aesni_gcm_tfm_sse = {
 	.finalize = &aesni_gcm_finalize,
 };
 
-#ifdef CONFIG_AS_AVX
 asmlinkage void aes_ctr_enc_128_avx_by8(const u8 *in, u8 *iv,
 		void *keys, u8 *out, unsigned int num_bytes);
 asmlinkage void aes_ctr_enc_192_avx_by8(const u8 *in, u8 *iv,
@@ -234,8 +233,6 @@ static const struct aesni_gcm_tfm_s aesni_gcm_tfm_avx_gen2 = {
 	.finalize = &aesni_gcm_finalize_avx_gen2,
 };
 
-#endif
-
 #ifdef CONFIG_AS_AVX2
 /*
  * asmlinkage void aesni_gcm_init_avx_gen4()
@@ -476,7 +473,6 @@ static void ctr_crypt_final(struct crypto_aes_ctx *ctx,
 	crypto_inc(ctrblk, AES_BLOCK_SIZE);
 }
 
-#ifdef CONFIG_AS_AVX
 static void aesni_ctr_enc_avx_tfm(struct crypto_aes_ctx *ctx, u8 *out,
 			      const u8 *in, unsigned int len, u8 *iv)
 {
@@ -493,7 +489,6 @@ static void aesni_ctr_enc_avx_tfm(struct crypto_aes_ctx *ctx, u8 *out,
 	else
 		aes_ctr_enc_256_avx_by8(in, iv, (void *)ctx, out, len);
 }
-#endif
 
 static int ctr_crypt(struct skcipher_request *req)
 {
@@ -715,10 +710,8 @@ static int gcmaes_crypt_by_sg(bool enc, struct aead_request *req,
 	if (left < AVX_GEN4_OPTSIZE && gcm_tfm == &aesni_gcm_tfm_avx_gen4)
 		gcm_tfm = &aesni_gcm_tfm_avx_gen2;
 #endif
-#ifdef CONFIG_AS_AVX
 	if (left < AVX_GEN2_OPTSIZE && gcm_tfm == &aesni_gcm_tfm_avx_gen2)
 		gcm_tfm = &aesni_gcm_tfm_sse;
-#endif
 
 	/* Linearize assoc, if not already linear */
 	if (req->src->length >= assoclen && req->src->length &&
@@ -1082,24 +1075,19 @@ static int __init aesni_init(void)
 		aesni_gcm_tfm = &aesni_gcm_tfm_avx_gen4;
 	} else
 #endif
-#ifdef CONFIG_AS_AVX
 	if (boot_cpu_has(X86_FEATURE_AVX)) {
 		pr_info("AVX version of gcm_enc/dec engaged.\n");
 		aesni_gcm_tfm = &aesni_gcm_tfm_avx_gen2;
-	} else
-#endif
-	{
+	} else {
 		pr_info("SSE version of gcm_enc/dec engaged.\n");
 		aesni_gcm_tfm = &aesni_gcm_tfm_sse;
 	}
 	aesni_ctr_enc_tfm = aesni_ctr_enc;
-#ifdef CONFIG_AS_AVX
 	if (boot_cpu_has(X86_FEATURE_AVX)) {
 		/* optimize performance of ctr mode encryption transform */
 		aesni_ctr_enc_tfm = aesni_ctr_enc_avx_tfm;
 		pr_info("AES CTR mode by8 optimization enabled\n");
 	}
-#endif
 #endif
 
 	err = crypto_register_alg(&aesni_cipher_alg);
diff --git a/arch/x86/crypto/poly1305-x86_64-cryptogams.pl b/arch/x86/crypto/poly1305-x86_64-cryptogams.pl
index 7a6b5380a46f..5bac2d533104 100644
--- a/arch/x86/crypto/poly1305-x86_64-cryptogams.pl
+++ b/arch/x86/crypto/poly1305-x86_64-cryptogams.pl
@@ -404,10 +404,6 @@ ___
 &end_function("poly1305_emit_x86_64");
 if ($avx) {
 
-if($kernel) {
-	$code .= "#ifdef CONFIG_AS_AVX\n";
-}
-
 ########################################################################
 # Layout of opaque area is following.
 #
@@ -1516,10 +1512,6 @@ $code.=<<___;
 ___
 &end_function("poly1305_emit_avx");
 
-if ($kernel) {
-	$code .= "#endif\n";
-}
-
 if ($avx>1) {
 
 if ($kernel) {
diff --git a/arch/x86/crypto/poly1305_glue.c b/arch/x86/crypto/poly1305_glue.c
index 79bb58737d52..4a6226e1d15e 100644
--- a/arch/x86/crypto/poly1305_glue.c
+++ b/arch/x86/crypto/poly1305_glue.c
@@ -94,7 +94,7 @@ static void poly1305_simd_blocks(void *ctx, const u8 *inp, size_t len,
 	BUILD_BUG_ON(PAGE_SIZE < POLY1305_BLOCK_SIZE ||
 		     PAGE_SIZE % POLY1305_BLOCK_SIZE);
 
-	if (!IS_ENABLED(CONFIG_AS_AVX) || !static_branch_likely(&poly1305_use_avx) ||
+	if (!static_branch_likely(&poly1305_use_avx) ||
 	    (len < (POLY1305_BLOCK_SIZE * 18) && !state->is_base2_26) ||
 	    !crypto_simd_usable()) {
 		convert_to_base2_64(ctx);
@@ -123,7 +123,7 @@ static void poly1305_simd_blocks(void *ctx, const u8 *inp, size_t len,
 static void poly1305_simd_emit(void *ctx, u8 mac[POLY1305_DIGEST_SIZE],
 			       const u32 nonce[4])
 {
-	if (!IS_ENABLED(CONFIG_AS_AVX) || !static_branch_likely(&poly1305_use_avx))
+	if (!static_branch_likely(&poly1305_use_avx))
 		poly1305_emit_x86_64(ctx, mac, nonce);
 	else
 		poly1305_emit_avx(ctx, mac, nonce);
@@ -261,7 +261,7 @@ static struct shash_alg alg = {
 
 static int __init poly1305_simd_mod_init(void)
 {
-	if (IS_ENABLED(CONFIG_AS_AVX) && boot_cpu_has(X86_FEATURE_AVX) &&
+	if (boot_cpu_has(X86_FEATURE_AVX) &&
 	    cpu_has_xfeatures(XFEATURE_MASK_SSE | XFEATURE_MASK_YMM, NULL))
 		static_branch_enable(&poly1305_use_avx);
 	if (IS_ENABLED(CONFIG_AS_AVX2) && boot_cpu_has(X86_FEATURE_AVX) &&
diff --git a/arch/x86/crypto/sha1_ssse3_asm.S b/arch/x86/crypto/sha1_ssse3_asm.S
index 12e2d19d7402..d25668d2a1e9 100644
--- a/arch/x86/crypto/sha1_ssse3_asm.S
+++ b/arch/x86/crypto/sha1_ssse3_asm.S
@@ -467,8 +467,6 @@ W_PRECALC_SSSE3
  */
 SHA1_VECTOR_ASM     sha1_transform_ssse3
 
-#ifdef CONFIG_AS_AVX
-
 .macro W_PRECALC_AVX
 
 .purgem W_PRECALC_00_15
@@ -553,5 +551,3 @@ W_PRECALC_AVX
  *				       const u8 *data, int blocks);
  */
 SHA1_VECTOR_ASM     sha1_transform_avx
-
-#endif
diff --git a/arch/x86/crypto/sha1_ssse3_glue.c b/arch/x86/crypto/sha1_ssse3_glue.c
index d70b40ad594c..275b65dd30c9 100644
--- a/arch/x86/crypto/sha1_ssse3_glue.c
+++ b/arch/x86/crypto/sha1_ssse3_glue.c
@@ -114,7 +114,6 @@ static void unregister_sha1_ssse3(void)
 		crypto_unregister_shash(&sha1_ssse3_alg);
 }
 
-#ifdef CONFIG_AS_AVX
 asmlinkage void sha1_transform_avx(struct sha1_state *state,
 				   const u8 *data, int blocks);
 
@@ -175,13 +174,7 @@ static void unregister_sha1_avx(void)
 		crypto_unregister_shash(&sha1_avx_alg);
 }
 
-#else  /* CONFIG_AS_AVX */
-static inline int register_sha1_avx(void) { return 0; }
-static inline void unregister_sha1_avx(void) { }
-#endif /* CONFIG_AS_AVX */
-
-
-#if defined(CONFIG_AS_AVX2) && (CONFIG_AS_AVX)
+#if defined(CONFIG_AS_AVX2)
 #define SHA1_AVX2_BLOCK_OPTSIZE	4	/* optimal 4*64 bytes of SHA1 blocks */
 
 asmlinkage void sha1_transform_avx2(struct sha1_state *state,
diff --git a/arch/x86/crypto/sha256-avx-asm.S b/arch/x86/crypto/sha256-avx-asm.S
index fcbc30f58c38..4739cd31b9db 100644
--- a/arch/x86/crypto/sha256-avx-asm.S
+++ b/arch/x86/crypto/sha256-avx-asm.S
@@ -47,7 +47,6 @@
 # This code schedules 1 block at a time, with 4 lanes per block
 ########################################################################
 
-#ifdef CONFIG_AS_AVX
 #include <linux/linkage.h>
 
 ## assume buffers not aligned
@@ -498,5 +497,3 @@ _SHUF_00BA:
 # shuffle xDxC -> DC00
 _SHUF_DC00:
 	.octa 0x0b0a090803020100FFFFFFFFFFFFFFFF
-
-#endif
diff --git a/arch/x86/crypto/sha256_ssse3_glue.c b/arch/x86/crypto/sha256_ssse3_glue.c
index 03ad657c04bd..8bdc3be31f64 100644
--- a/arch/x86/crypto/sha256_ssse3_glue.c
+++ b/arch/x86/crypto/sha256_ssse3_glue.c
@@ -144,7 +144,6 @@ static void unregister_sha256_ssse3(void)
 				ARRAY_SIZE(sha256_ssse3_algs));
 }
 
-#ifdef CONFIG_AS_AVX
 asmlinkage void sha256_transform_avx(struct sha256_state *state,
 				     const u8 *data, int blocks);
 
@@ -221,12 +220,7 @@ static void unregister_sha256_avx(void)
 				ARRAY_SIZE(sha256_avx_algs));
 }
 
-#else
-static inline int register_sha256_avx(void) { return 0; }
-static inline void unregister_sha256_avx(void) { }
-#endif
-
-#if defined(CONFIG_AS_AVX2) && defined(CONFIG_AS_AVX)
+#if defined(CONFIG_AS_AVX2)
 asmlinkage void sha256_transform_rorx(struct sha256_state *state,
 				      const u8 *data, int blocks);
 
diff --git a/arch/x86/crypto/sha512-avx-asm.S b/arch/x86/crypto/sha512-avx-asm.S
index 90ea945ba5e6..63470fd6ae32 100644
--- a/arch/x86/crypto/sha512-avx-asm.S
+++ b/arch/x86/crypto/sha512-avx-asm.S
@@ -47,7 +47,6 @@
 #
 ########################################################################
 
-#ifdef CONFIG_AS_AVX
 #include <linux/linkage.h>
 
 .text
@@ -424,4 +423,3 @@ K512:
 	.quad 0x3c9ebe0a15c9bebc,0x431d67c49c100d4c
 	.quad 0x4cc5d4becb3e42b6,0x597f299cfc657e2a
 	.quad 0x5fcb6fab3ad6faec,0x6c44198c4a475817
-#endif
diff --git a/arch/x86/crypto/sha512_ssse3_glue.c b/arch/x86/crypto/sha512_ssse3_glue.c
index 1c444f41037c..75214982a633 100644
--- a/arch/x86/crypto/sha512_ssse3_glue.c
+++ b/arch/x86/crypto/sha512_ssse3_glue.c
@@ -142,7 +142,6 @@ static void unregister_sha512_ssse3(void)
 			ARRAY_SIZE(sha512_ssse3_algs));
 }
 
-#ifdef CONFIG_AS_AVX
 asmlinkage void sha512_transform_avx(struct sha512_state *state,
 				     const u8 *data, int blocks);
 static bool avx_usable(void)
@@ -218,12 +217,8 @@ static void unregister_sha512_avx(void)
 		crypto_unregister_shashes(sha512_avx_algs,
 			ARRAY_SIZE(sha512_avx_algs));
 }
-#else
-static inline int register_sha512_avx(void) { return 0; }
-static inline void unregister_sha512_avx(void) { }
-#endif
 
-#if defined(CONFIG_AS_AVX2) && defined(CONFIG_AS_AVX)
+#if defined(CONFIG_AS_AVX2)
 asmlinkage void sha512_transform_rorx(struct sha512_state *state,
 				      const u8 *data, int blocks);
 
diff --git a/arch/x86/include/asm/xor_avx.h b/arch/x86/include/asm/xor_avx.h
index d61ddf3d052b..0c4e5b5e3852 100644
--- a/arch/x86/include/asm/xor_avx.h
+++ b/arch/x86/include/asm/xor_avx.h
@@ -11,8 +11,6 @@
  * Based on Ingo Molnar and Zach Brown's respective MMX and SSE routines
  */
 
-#ifdef CONFIG_AS_AVX
-
 #include <linux/compiler.h>
 #include <asm/fpu/api.h>
 
@@ -170,11 +168,4 @@ do { \
 #define AVX_SELECT(FASTEST) \
 	(boot_cpu_has(X86_FEATURE_AVX) && boot_cpu_has(X86_FEATURE_OSXSAVE) ? &xor_block_avx : FASTEST)
 
-#else
-
-#define AVX_XOR_SPEED {}
-
-#define AVX_SELECT(FASTEST) (FASTEST)
-
-#endif
 #endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-7-masahiroy%40kernel.org.
