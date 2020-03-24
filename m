Return-Path: <clang-built-linux+bncBAABB5FB4XZQKGQEJUCVM6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 067C6190295
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:14:46 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id f6sf2302476ioc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585008885; cv=pass;
        d=google.com; s=arc-20160816;
        b=K9UDErsDo+IivPUO+PEaBunh2/dbOm7tV5d3apdJCrX59gD7fHoRfOzPVQddp3bA+o
         5NkF8+zMCCWXcfRisow8J/T+vr+4PKTKMXj0V0Av0KRsA2WU/R3M43LveEkwE9ipUi0p
         e8bijheDOmOgJQyikAjlBFyuiL/n8yBwvumMvhHZgfzTyrX9C0cvQOB+r4iKlZnurIAk
         Mm3JBZzIdTQMnLesfetQeoOea/NgrFIfoB7Rgy8fBpfcnQyR5e77luoaE3byc+ibq9nY
         93znqG4QhchL4tSAoB6v1ie63LqD1EyGgYgutsFa4k1PmDySD8Vz+kVVqhmLWxBza1lB
         piQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=vxsvLx8XE841iAY7eBnR+oDTmPwN+M751NEe7WDmHaM=;
        b=PV8oDsbe96wPmx3c5+NyDJpbn6hnRZWhcq5ysXZxtQVO+sqgbXmXSh0i4noH5ua2ru
         7otC9md1KTSGCWL/eVomQiY5jwjsWa/t6HbJo+mQXijRYyZ08yahpRqbEr4afzfEWjiw
         oHHarnzVH5F4aNGfPbQoYFCLMUGQFbYVMq6gVqVKTxCY8J0HBA4XZWYv86qwPeTQdU9W
         UgvEzYQOm5oZmSbQDaXvQc4GLUjZWHvY5CbFAD07E/bws9ike4OIXxhx3h+1Na5lTLzf
         ocNGS/1A85mHCVzfU6QnutZS7iPUhZVqDZjc+GPCnhu+d1xN2V4deAqFOGG3YsBi2wGD
         a7kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=DVoF7F+P;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vxsvLx8XE841iAY7eBnR+oDTmPwN+M751NEe7WDmHaM=;
        b=NqQKUXiEmEw+h7sp/5QjMaqaByzpXxil5Q76s0glYPsS11qBN0+I9Ck8EJU880gjji
         UcqwUi5nonrlL8RRxOikgKvqeLhwRTKegLzmLWdxvD9JxxtkOPss58CrtIbIAGsG9D1u
         tfF4DDUh9RBbUuRk1H+0JX1XV+1g+lSJ8ET4GHtjxH1tOGd6OC685vuCrRMX2NuNz2HS
         chSfdIWGjpLfFtG7IaMHIq2XHp5SOu6kMjnj9b1pEjlmfvwyWOX5raL38CgLZ3iNRdI0
         Ol57k029NOo4ZC5GXwZudeVj55Jq02gxKPLYRlvF+sBtzOtq010DFqnEcJu8inmu0ciC
         S9VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vxsvLx8XE841iAY7eBnR+oDTmPwN+M751NEe7WDmHaM=;
        b=aHjt1jHwHlJBF5tnjlqdNLJDi40MCFa0NthXKDEuo1ufqNnpWhZN5ILVGHXnXTe9xL
         Kxe5ABaH/ujgrGWl73bAJe4+2b/RLs9g+XSg7l42aylWgvbgczvYnInrDSCxUIUva+IQ
         DGb59qxJGmE353Cm/0i1gJxJjvFD6qCnzwF+U2TTMWLW5zugtibl8mB8wL/LoIgF51Bg
         yxMLgTwPM+KIH9ZlCj3ah+ju2f3ZzNzNTBHV3Srphx5gIoSLp/lYvaSjq2UqEsylgoLz
         H0wY+xZhXHlWOXvvlArsOxoXNupfZTj6zYi2JH0bIMhnTs9gjxnzT0HpK6Y9lWRXtzPM
         8Lmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Xm1+umRk+oih1iI0oHpoYxT4UGlpbsAksro7P6+DP+SOAICUc
	lrJHmAZvz+ALy8PchWs/n7k=
X-Google-Smtp-Source: ADFU+vvMQQDFgX1DyWAA1LCUQPAGp4+d5Vmwujd+SNYaVvXLdvLeUz0unjKip1BVhzF79vaZXBfDjA==
X-Received: by 2002:a05:6e02:d0a:: with SMTP id g10mr9221735ilj.228.1585008884991;
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:229:: with SMTP id f9ls600193jaq.10.gmail; Mon, 23
 Mar 2020 17:14:44 -0700 (PDT)
X-Received: by 2002:a05:6638:53:: with SMTP id a19mr11594770jap.144.1585008884190;
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585008884; cv=none;
        d=google.com; s=arc-20160816;
        b=muldOQeEMBBtNVRvaUfLfZFxAyiMKn6HGjp452O1ukyp5CQsmW9I0Oi+7tt3wB73K+
         eaVeHarJeDkX83u3LWVPzfGHibTV9YXZfs3Xxf7CaJz0CmIq3n5yqr154YPsmgSjedMc
         EbKLDqOBblcfGEp9GwXVqM0Op+SUY+4Ep8gTeXNyiVgAPcmkIi+htx33dqq+MQ0uqCct
         saeq1gal5ealSRu1puKjvf3Wy02gjP6qKaGDLQ3WOKJSH/kaftga+K8wZzcZwXO9yCzj
         j+RsUdBKGWr2KihAmTdKso9wqVb4adsiP5wHVqJxKsKn9LPv0oS/+/XT/y9SRRyYeE/r
         FutQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=ziCGk7IyAwhIqwLTxRxF1j9z6cpgCF4fpGIH28oIQJY=;
        b=k5XjgVC7z8HzglPN7sKAHv+XuD4xJxvD2FElFr7pDFLUv0DX5v+Yjuu27m4PHAI/iZ
         0VMLI9v0JP15MRxVUzpQXCTd7U1uE8LZ0fx9AS55swkkcXLvXUIr6t810qBXOGSCSps+
         okekKi7OX21qjOFKQnf2EUO9lijSwr1miny0NWl+oK2Wa/pK2v89MHNso3w9kmq3oj4e
         6GGirQx7qsUHmH//qDedX5QKdz4wUwwVQcH/lNIjnaL2nJjlg1TbNIyeYoEtXf4AgSb+
         S2/QCFXGmRcJkz9A6CF3Kn1KDb5V4hiyBqhX9oU43oHwO3IOWFhYmgaT8vtKjPyMauNE
         AG/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=DVoF7F+P;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id d207si660561iof.3.2020.03.23.17.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:14:44 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O0EHnu026701;
	Tue, 24 Mar 2020 09:14:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O0EHnu026701
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
Subject: [PATCH v2 7/9] x86: remove always-defined CONFIG_AS_AVX
Date: Tue, 24 Mar 2020 09:13:56 +0900
Message-Id: <20200324001358.4520-8-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324001358.4520-1-masahiroy@kernel.org>
References: <20200324001358.4520-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=DVoF7F+P;       spf=softfail
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

CONFIG_AS_AVX was introduced by commit ea4d26ae24e5 ("raid5: add AVX
optimized RAID5 checksumming").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_AVX, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

Changes in v2: None

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324001358.4520-8-masahiroy%40kernel.org.
