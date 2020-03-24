Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E30190808
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id s18sf13039525pgd.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=lFFgE7wOmjK234ePaQnxUZ73YjdxCJ7zBBhq2rI7y7KqMecn4lEz3IOYIEOC5VvGqt
         hg3E65W13F4LhccV22RY8cuGxCmtGeTcWyYQ/rfvYuKK+WsMwAaDvO3YrLUgDqpDpsrY
         AGZmTAesk0W64slYRS27t+LS7FYwlt1yT4hiXJKpHY1JCU5Li3O/P6D/RkP3u1d3Q+2i
         IH2rdDFcBwFpSJGgOFLGuuxalzxVIGF6rwGMwvY2R0Mt0w6PRGySJDNrDpT3Atm69k+0
         zl887ck6K99q7d80VlFluShJGMgSOCtl6AZE6cM165GrA6fbc6kadvhCwGB6TJ/tOJSP
         Zynw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=d50VSt9wGp2iyNTvOhPW7UnwhbdXQ918qiWhtuCkWLY=;
        b=0fdPLzyxa/N38pKzcaqw6WmTRbiGMGNjRplSPaqat3+DQCYaDB/a28XTM7ylRIry0y
         qBXz2J7uoxLpFUMxnYNfzBWln3cZjhtymgLjP1vQwTdzDG2qmP2Md7k/jzduM9dtSsZQ
         Zp3adCHexhPbGBre/1LqZybXzQNqI0JyMlyAWg/iaxcuKcCRZFC2/a2aNJH0roxkzG6P
         /idC60jpipR/regO15ElvDYv2kLEUjxrY+zoQKS0K7Bcc0g/PfwWOK8QVnKSZIWk09S4
         7qu2eheLMbgszA+0U88gy73oskdkFBUMF2meytiD7cCi+R4ShPk09+qanubXaGfdh2uI
         +bcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=08qjy8jl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d50VSt9wGp2iyNTvOhPW7UnwhbdXQ918qiWhtuCkWLY=;
        b=jPLUYlFHbui6FQtR0JK+Ok7YmW1MbGnmRM2nOrCprMwb78I45VeB67nUBbVIvCiLV1
         pOkInZBfr2d90/n1WMqKx/abXrcoZqXRxDs5aQ8Jw/GzeDLa7kdeKhT1F9jovnpSQkQ+
         H2apF6BDxEwj+gQKS2vDItu2mhBHsShKPj8mvEfw/PYVJsVpaigvOf4mjvEgbpTAJoKL
         uGmkIttuqluy2XW4iZUn5BloBYiK11Ae4h+dgfuH5dI2/qGH88MCvOVnSB3iP28+dGFc
         KHPoPfaYv2xbDDVfbiKphwiczobq+REHiBT302odtT7khWd59N1nLXOlSO7mYlXHYujD
         I0gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d50VSt9wGp2iyNTvOhPW7UnwhbdXQ918qiWhtuCkWLY=;
        b=VyO4KQ7ebUVhgrx87cLZCHPFv4SdZ395bWqFBXrA/ZjtS4d+eIa7k3lOH5UaS7W8+W
         unooRdj7IdxnxyuGjrOcyHf7HLSxmVrl3Yyu5JhsPM3uF8NkOLNkPhzqMrUOwoqVDTib
         21uVqKVSRnlCBp4LMemBRz8s5+xH2orkpZ+H+LMMi2Wbl07fZDSfigm3irh2VbvtjuB0
         ZJqGv2sruxLJTjRJeMXFQ1TSV6qw4b3NvaQNvb2O8GYNi8K29lVBEGjourJZJT6qBUiz
         QuttavNKxo3+c0QhVwVtFHKy624p8z1epp/zN0aGLTVlVytU+LWkVH+j2RLRwuQ6i2p1
         H+NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ262BHyDAHzpT2kb+EQ8lRLESQGtl1QgW9vODqop/3q5XDZskHj
	+k4BmTEV9m8sYf6t8cY+8Ps=
X-Google-Smtp-Source: ADFU+vttR5jj3pq42tR3C2xitOm5w0/ow9Ty1uDyO4swaNp2pWr6W+oyazq0gLq+Y4vRvtH0dIsmAQ==
X-Received: by 2002:a17:902:fe0f:: with SMTP id g15mr14505369plj.25.1585039777412;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9416:: with SMTP id r22ls1525151pjo.0.canary-gmail;
 Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:a17:902:6808:: with SMTP id h8mr25657402plk.294.1585039776971;
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039776; cv=none;
        d=google.com; s=arc-20160816;
        b=LbnJNTAz63w2YMy76RB0LqIuK6wtSvvPD+e0CbTWt78/tfVQ268tW2Iwjpx0L60ndC
         wVrFUru2sARu/5F+67fEJUbsMMbEKV2M7VfOiyEZmmU1lm54ccQH7GGWCqujln4lojGH
         dZgBUCubstLrUxaWX5Kz4uGdXHGv/VEiBzJxbUJEc5nrf7EvRn9BNkTIYCf21vvNwCWZ
         jOYiYBaCTkwR+7O1VmKG66dx596NRe99hSTcPVuF/nXDvYB8pws3H1OjTILsqUgJkUsc
         TNq98t9iksFJGhRgHfPY3aIwr2ismvlk6SZMt81tSWx/CaV/rEnKs69WT5h3XzbI96VA
         fCQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=bk24fSnGqQRBPxVJmY0soQnq4yZeoLfWlvShAuNCHUA=;
        b=WLOio1vBEK4K83t9GijMpnvxwFgf7SWqnOaV5NfLSy1+i9wI3IL3rKzF6//fZ4efoH
         JgF5E10gEQRDxwaET+Roj/92kTONsJHN+c/oYSWtwcoaOyyBSPO2XBaB0/pPIHItjItP
         Ir/SQs3Bx4hclPIoSxlsm27SwT4ayVbjwKRHbTLRtwZmOw/KgNk6V3C0CYHNTuiEAE1I
         SyNLgstjZ80PSSzmsIhSBDHkjOk1If2iKNQ1H84bZtysfKkGaFb30sXSmbUcEyiCYi+F
         rqmtRxYuu1AHqs4nFm+0NSn8gm39VNdMJs2MoWUkCppQghxgwjtKKtwyrv82hvlIqeRT
         ojhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=08qjy8jl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id u14si22921pjn.2.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsj011219;
	Tue, 24 Mar 2020 17:48:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsj011219
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
        linux-kbuild@vger.kernel.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 12/16] crypto: x86 - rework configuration based on Kconfig
Date: Tue, 24 Mar 2020 17:48:17 +0900
Message-Id: <20200324084821.29944-13-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=08qjy8jl;       spf=softfail
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Now that assembler capabilities are probed inside of Kconfig, we can set
up proper Kconfig-based dependencies. We also take this opportunity to
reorder the Makefile, so that items are grouped logically by primitive.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/crypto/Makefile | 152 +++++++++++++++++----------------------
 crypto/Kconfig           |   8 +--
 2 files changed, 69 insertions(+), 91 deletions(-)

diff --git a/arch/x86/crypto/Makefile b/arch/x86/crypto/Makefile
index 1a044908d42d..2f23f08fdd4b 100644
--- a/arch/x86/crypto/Makefile
+++ b/arch/x86/crypto/Makefile
@@ -1,122 +1,100 @@
 # SPDX-License-Identifier: GPL-2.0
 #
-# Arch-specific CryptoAPI modules.
-#
+# x86 crypto algorithms
 
 OBJECT_FILES_NON_STANDARD := y
 
-avx2_supported := $(call as-instr,vpgatherdd %ymm0$(comma)(%eax$(comma)%ymm1\
-				$(comma)4)$(comma)%ymm2,yes,no)
-avx512_supported :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,yes,no)
-sha1_ni_supported :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,yes,no)
-sha256_ni_supported :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,yes,no)
-adx_supported := $(call as-instr,adox %r10$(comma)%r10,yes,no)
-
 obj-$(CONFIG_CRYPTO_GLUE_HELPER_X86) += glue_helper.o
 
 obj-$(CONFIG_CRYPTO_TWOFISH_586) += twofish-i586.o
+twofish-i586-y := twofish-i586-asm_32.o twofish_glue.o
+obj-$(CONFIG_CRYPTO_TWOFISH_X86_64) += twofish-x86_64.o
+twofish-x86_64-y := twofish-x86_64-asm_64.o twofish_glue.o
+obj-$(CONFIG_CRYPTO_TWOFISH_X86_64_3WAY) += twofish-x86_64-3way.o
+twofish-x86_64-3way-y := twofish-x86_64-asm_64-3way.o twofish_glue_3way.o
+obj-$(CONFIG_CRYPTO_TWOFISH_AVX_X86_64) += twofish-avx-x86_64.o
+twofish-avx-x86_64-y := twofish-avx-x86_64-asm_64.o twofish_avx_glue.o
+
 obj-$(CONFIG_CRYPTO_SERPENT_SSE2_586) += serpent-sse2-i586.o
+serpent-sse2-i586-y := serpent-sse2-i586-asm_32.o serpent_sse2_glue.o
+obj-$(CONFIG_CRYPTO_SERPENT_SSE2_X86_64) += serpent-sse2-x86_64.o
+serpent-sse2-x86_64-y := serpent-sse2-x86_64-asm_64.o serpent_sse2_glue.o
+obj-$(CONFIG_CRYPTO_SERPENT_AVX_X86_64) += serpent-avx-x86_64.o
+serpent-avx-x86_64-y := serpent-avx-x86_64-asm_64.o serpent_avx_glue.o
+obj-$(CONFIG_CRYPTO_SERPENT_AVX2_X86_64) += serpent-avx2.o
+serpent-avx2-y := serpent-avx2-asm_64.o serpent_avx2_glue.o
 
 obj-$(CONFIG_CRYPTO_DES3_EDE_X86_64) += des3_ede-x86_64.o
+des3_ede-x86_64-y := des3_ede-asm_64.o des3_ede_glue.o
+
 obj-$(CONFIG_CRYPTO_CAMELLIA_X86_64) += camellia-x86_64.o
+camellia-x86_64-y := camellia-x86_64-asm_64.o camellia_glue.o
+obj-$(CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64) += camellia-aesni-avx-x86_64.o
+camellia-aesni-avx-x86_64-y := camellia-aesni-avx-asm_64.o camellia_aesni_avx_glue.o
+obj-$(CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64) += camellia-aesni-avx2.o
+camellia-aesni-avx2-y := camellia-aesni-avx2-asm_64.o camellia_aesni_avx2_glue.o
+
 obj-$(CONFIG_CRYPTO_BLOWFISH_X86_64) += blowfish-x86_64.o
-obj-$(CONFIG_CRYPTO_TWOFISH_X86_64) += twofish-x86_64.o
-obj-$(CONFIG_CRYPTO_TWOFISH_X86_64_3WAY) += twofish-x86_64-3way.o
+blowfish-x86_64-y := blowfish-x86_64-asm_64.o blowfish_glue.o
+
+obj-$(CONFIG_CRYPTO_CAST5_AVX_X86_64) += cast5-avx-x86_64.o
+cast5-avx-x86_64-y := cast5-avx-x86_64-asm_64.o cast5_avx_glue.o
+
+obj-$(CONFIG_CRYPTO_CAST6_AVX_X86_64) += cast6-avx-x86_64.o
+cast6-avx-x86_64-y := cast6-avx-x86_64-asm_64.o cast6_avx_glue.o
+
+obj-$(CONFIG_CRYPTO_AEGIS128_AESNI_SSE2) += aegis128-aesni.o
+aegis128-aesni-y := aegis128-aesni-asm.o aegis128-aesni-glue.o
+
 obj-$(CONFIG_CRYPTO_CHACHA20_X86_64) += chacha-x86_64.o
-obj-$(CONFIG_CRYPTO_SERPENT_SSE2_X86_64) += serpent-sse2-x86_64.o
+chacha-x86_64-y := chacha-ssse3-x86_64.o chacha_glue.o
+chacha-x86_64-$(CONFIG_AS_AVX2) += chacha-avx2-x86_64.o
+chacha-x86_64-$(CONFIG_AS_AVX512) += chacha-avx512vl-x86_64.o
+
 obj-$(CONFIG_CRYPTO_AES_NI_INTEL) += aesni-intel.o
-obj-$(CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL) += ghash-clmulni-intel.o
+aesni-intel-y := aesni-intel_asm.o aesni-intel_glue.o
+aesni-intel-$(CONFIG_64BIT) += aesni-intel_avx-x86_64.o aes_ctrby8_avx-x86_64.o
 
-obj-$(CONFIG_CRYPTO_CRC32C_INTEL) += crc32c-intel.o
 obj-$(CONFIG_CRYPTO_SHA1_SSSE3) += sha1-ssse3.o
-obj-$(CONFIG_CRYPTO_CRC32_PCLMUL) += crc32-pclmul.o
-obj-$(CONFIG_CRYPTO_SHA256_SSSE3) += sha256-ssse3.o
-obj-$(CONFIG_CRYPTO_SHA512_SSSE3) += sha512-ssse3.o
-obj-$(CONFIG_CRYPTO_CRCT10DIF_PCLMUL) += crct10dif-pclmul.o
-obj-$(CONFIG_CRYPTO_POLY1305_X86_64) += poly1305-x86_64.o
-
-obj-$(CONFIG_CRYPTO_AEGIS128_AESNI_SSE2) += aegis128-aesni.o
+sha1-ssse3-y := sha1_ssse3_asm.o sha1_ssse3_glue.o
+sha1-ssse3-$(CONFIG_AS_AVX2) += sha1_avx2_x86_64_asm.o
+sha1-ssse3-$(CONFIG_AS_SHA1_NI) += sha1_ni_asm.o
 
-obj-$(CONFIG_CRYPTO_NHPOLY1305_SSE2) += nhpoly1305-sse2.o
-obj-$(CONFIG_CRYPTO_NHPOLY1305_AVX2) += nhpoly1305-avx2.o
+obj-$(CONFIG_CRYPTO_SHA256_SSSE3) += sha256-ssse3.o
+sha256-ssse3-y := sha256-ssse3-asm.o sha256-avx-asm.o sha256-avx2-asm.o sha256_ssse3_glue.o
+sha256-ssse3-$(CONFIG_AS_SHA256_NI) += sha256_ni_asm.o
 
-# These modules require the assembler to support ADX.
-ifeq ($(adx_supported),yes)
-	obj-$(CONFIG_CRYPTO_CURVE25519_X86) += curve25519-x86_64.o
-endif
+obj-$(CONFIG_CRYPTO_SHA512_SSSE3) += sha512-ssse3.o
+sha512-ssse3-y := sha512-ssse3-asm.o sha512-avx-asm.o sha512-avx2-asm.o sha512_ssse3_glue.o
 
-# These modules require assembler to support AVX.
-obj-$(CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64) += camellia-aesni-avx-x86_64.o
-obj-$(CONFIG_CRYPTO_CAST5_AVX_X86_64) += cast5-avx-x86_64.o
-obj-$(CONFIG_CRYPTO_CAST6_AVX_X86_64) += cast6-avx-x86_64.o
-obj-$(CONFIG_CRYPTO_TWOFISH_AVX_X86_64) += twofish-avx-x86_64.o
-obj-$(CONFIG_CRYPTO_SERPENT_AVX_X86_64) += serpent-avx-x86_64.o
 obj-$(CONFIG_CRYPTO_BLAKE2S_X86) += blake2s-x86_64.o
+blake2s-x86_64-y := blake2s-core.o blake2s-glue.o
 
-# These modules require assembler to support AVX2.
-ifeq ($(avx2_supported),yes)
-	obj-$(CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64) += camellia-aesni-avx2.o
-	obj-$(CONFIG_CRYPTO_SERPENT_AVX2_X86_64) += serpent-avx2.o
-endif
+obj-$(CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL) += ghash-clmulni-intel.o
+ghash-clmulni-intel-y := ghash-clmulni-intel_asm.o ghash-clmulni-intel_glue.o
 
-twofish-i586-y := twofish-i586-asm_32.o twofish_glue.o
-serpent-sse2-i586-y := serpent-sse2-i586-asm_32.o serpent_sse2_glue.o
+obj-$(CONFIG_CRYPTO_CRC32C_INTEL) += crc32c-intel.o
+crc32c-intel-y := crc32c-intel_glue.o
+crc32c-intel-$(CONFIG_64BIT) += crc32c-pcl-intel-asm_64.o
 
-des3_ede-x86_64-y := des3_ede-asm_64.o des3_ede_glue.o
-camellia-x86_64-y := camellia-x86_64-asm_64.o camellia_glue.o
-blowfish-x86_64-y := blowfish-x86_64-asm_64.o blowfish_glue.o
-twofish-x86_64-y := twofish-x86_64-asm_64.o twofish_glue.o
-twofish-x86_64-3way-y := twofish-x86_64-asm_64-3way.o twofish_glue_3way.o
-chacha-x86_64-y := chacha-ssse3-x86_64.o chacha_glue.o
-serpent-sse2-x86_64-y := serpent-sse2-x86_64-asm_64.o serpent_sse2_glue.o
+obj-$(CONFIG_CRYPTO_CRC32_PCLMUL) += crc32-pclmul.o
+crc32-pclmul-y := crc32-pclmul_asm.o crc32-pclmul_glue.o
 
-aegis128-aesni-y := aegis128-aesni-asm.o aegis128-aesni-glue.o
+obj-$(CONFIG_CRYPTO_CRCT10DIF_PCLMUL) += crct10dif-pclmul.o
+crct10dif-pclmul-y := crct10dif-pcl-asm_64.o crct10dif-pclmul_glue.o
 
-nhpoly1305-sse2-y := nh-sse2-x86_64.o nhpoly1305-sse2-glue.o
-blake2s-x86_64-y := blake2s-core.o blake2s-glue.o
+obj-$(CONFIG_CRYPTO_POLY1305_X86_64) += poly1305-x86_64.o
 poly1305-x86_64-y := poly1305-x86_64-cryptogams.o poly1305_glue.o
 ifneq ($(CONFIG_CRYPTO_POLY1305_X86_64),)
 targets += poly1305-x86_64-cryptogams.S
 endif
 
-camellia-aesni-avx-x86_64-y := camellia-aesni-avx-asm_64.o \
-				camellia_aesni_avx_glue.o
-cast5-avx-x86_64-y := cast5-avx-x86_64-asm_64.o cast5_avx_glue.o
-cast6-avx-x86_64-y := cast6-avx-x86_64-asm_64.o cast6_avx_glue.o
-twofish-avx-x86_64-y := twofish-avx-x86_64-asm_64.o twofish_avx_glue.o
-serpent-avx-x86_64-y := serpent-avx-x86_64-asm_64.o serpent_avx_glue.o
-
-ifeq ($(avx2_supported),yes)
-	camellia-aesni-avx2-y := camellia-aesni-avx2-asm_64.o camellia_aesni_avx2_glue.o
-	chacha-x86_64-y += chacha-avx2-x86_64.o
-	serpent-avx2-y := serpent-avx2-asm_64.o serpent_avx2_glue.o
-
-	nhpoly1305-avx2-y := nh-avx2-x86_64.o nhpoly1305-avx2-glue.o
-endif
-
-ifeq ($(avx512_supported),yes)
-	chacha-x86_64-y += chacha-avx512vl-x86_64.o
-endif
+obj-$(CONFIG_CRYPTO_NHPOLY1305_SSE2) += nhpoly1305-sse2.o
+nhpoly1305-sse2-y := nh-sse2-x86_64.o nhpoly1305-sse2-glue.o
+obj-$(CONFIG_CRYPTO_NHPOLY1305_AVX2) += nhpoly1305-avx2.o
+nhpoly1305-avx2-y := nh-avx2-x86_64.o nhpoly1305-avx2-glue.o
 
-aesni-intel-y := aesni-intel_asm.o aesni-intel_glue.o
-aesni-intel-$(CONFIG_64BIT) += aesni-intel_avx-x86_64.o aes_ctrby8_avx-x86_64.o
-ghash-clmulni-intel-y := ghash-clmulni-intel_asm.o ghash-clmulni-intel_glue.o
-sha1-ssse3-y := sha1_ssse3_asm.o sha1_ssse3_glue.o
-ifeq ($(avx2_supported),yes)
-sha1-ssse3-y += sha1_avx2_x86_64_asm.o
-endif
-ifeq ($(sha1_ni_supported),yes)
-sha1-ssse3-y += sha1_ni_asm.o
-endif
-crc32c-intel-y := crc32c-intel_glue.o
-crc32c-intel-$(CONFIG_64BIT) += crc32c-pcl-intel-asm_64.o
-crc32-pclmul-y := crc32-pclmul_asm.o crc32-pclmul_glue.o
-sha256-ssse3-y := sha256-ssse3-asm.o sha256-avx-asm.o sha256-avx2-asm.o sha256_ssse3_glue.o
-ifeq ($(sha256_ni_supported),yes)
-sha256-ssse3-y += sha256_ni_asm.o
-endif
-sha512-ssse3-y := sha512-ssse3-asm.o sha512-avx-asm.o sha512-avx2-asm.o sha512_ssse3_glue.o
-crct10dif-pclmul-y := crct10dif-pcl-asm_64.o crct10dif-pclmul_glue.o
+obj-$(CONFIG_CRYPTO_CURVE25519_X86) += curve25519-x86_64.o
 
 quiet_cmd_perlasm = PERLASM $@
       cmd_perlasm = $(PERL) $< > $@
diff --git a/crypto/Kconfig b/crypto/Kconfig
index c24a47406f8f..49aae167e75c 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -267,7 +267,7 @@ config CRYPTO_CURVE25519
 
 config CRYPTO_CURVE25519_X86
 	tristate "x86_64 accelerated Curve25519 scalar multiplication library"
-	depends on X86 && 64BIT
+	depends on X86 && 64BIT && AS_ADX
 	select CRYPTO_LIB_CURVE25519_GENERIC
 	select CRYPTO_ARCH_HAVE_LIB_CURVE25519
 
@@ -465,7 +465,7 @@ config CRYPTO_NHPOLY1305_SSE2
 
 config CRYPTO_NHPOLY1305_AVX2
 	tristate "NHPoly1305 hash function (x86_64 AVX2 implementation)"
-	depends on X86 && 64BIT
+	depends on X86 && 64BIT && AS_AVX2
 	select CRYPTO_NHPOLY1305
 	help
 	  AVX2 optimized implementation of the hash function used by the
@@ -1303,7 +1303,7 @@ config CRYPTO_CAMELLIA_AESNI_AVX_X86_64
 
 config CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
 	tristate "Camellia cipher algorithm (x86_64/AES-NI/AVX2)"
-	depends on X86 && 64BIT
+	depends on X86 && 64BIT && AS_AVX2
 	depends on CRYPTO
 	select CRYPTO_CAMELLIA_AESNI_AVX_X86_64
 	help
@@ -1573,7 +1573,7 @@ config CRYPTO_SERPENT_AVX_X86_64
 
 config CRYPTO_SERPENT_AVX2_X86_64
 	tristate "Serpent cipher algorithm (x86_64/AVX2)"
-	depends on X86 && 64BIT
+	depends on X86 && 64BIT && AS_AVX2
 	select CRYPTO_SERPENT_AVX_X86_64
 	help
 	  Serpent cipher algorithm, by Anderson, Biham & Knudsen.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-13-masahiroy%40kernel.org.
