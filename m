Return-Path: <clang-built-linux+bncBAABBDGD6HZQKGQEL4GLKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 30573193A2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:24 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id m12sf4121711qvp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209743; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0M3X3DBAFXClhBqkb5MoLnPcJwpF/wYIkJbZ60YySvvgIwW07IkHSGkcF6WrhS2cB
         dV3ZiFoZzYGqc+tUYUyHEnAf0HvlKL3VRSwB6B6pqwcu/AD+c0qtRAlVdOonrKG3bw9A
         Xfn0n6Nn9R1NNdrVmLMLGa6H2Fdu6qcYoZ/ypakxVOPGxl940Fv/jHx64LbO8VF2oo5Z
         9kEJwYHbNribyWPX/CO4dqsGWYhnp5Tp72tot87kLw5dMB30KUWudgnrR1Nb7lUoKcoJ
         26gx6OIR8c9AtD+5yp0PT++DLGrlsGiBNoNOguwoeUkH6htJDAFbJ7AolDO4MNCr2CHK
         HFeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=wGfMj/BRPow7af2yEPotUl7H34dN09d7WLmvdhlPcIc=;
        b=n9tKpiqKjpfEIx5N45E3rfopA/JOuth2eQn01fHZK5MvJF8hMVSngj5/Euvi2UNBNb
         PxX66q1ZEZkBGzbBwOvdmzSxcGHMD3pgAlMYTUrj5/agjZHlpvcKEg3C+p3VfgF9G352
         YVCDTLUUaQRrZtbgy5u2HOGUbyP1I7lEfcRGNxRYUMqaCirg0G6EXvv/ePqbEqEtJaUD
         94Yy2Z42GAh2zU/70V/jtVlUoEvs1FBLvsueW8jtcs3GwgOKq0VaFRKZszM/reEL2Hbz
         5lBQl0G0OvjyC9hvf11PpJbftx39MsTTp93v9Ux0hsbaMblyOSUH4/v5BTrXAnlYlXZV
         vKzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kOSooawt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wGfMj/BRPow7af2yEPotUl7H34dN09d7WLmvdhlPcIc=;
        b=VVi4ESlk0kWZIUsKPRQJ25dYnMuqlmCdcN7KX5AoO/RGYgfV27TdO2eo1VgNKtJ1tG
         xrFMxw/jCpYZt9g6NZxQdGW1d8pq1v5KeesOmeJMYn1Xn4oJsqQd2t3hayVMKBQBnxF1
         C36kq9vACur7PJWnAymxVtGHI8U1T6cYdVUg5A+u9i3JbnJFfzWQoKncunODZb3VpbMu
         BkC1QgbqcIu8T/U1Dk/6+Cpr+S4JtSbrj8TTfSyXTdtuXUpgcnYagIN0USMNEzNat8OC
         9RPnStCO6q+8wUb2CQhwZ+6bV2gnS0qDtH43ZR/HFWEViE4nOoLKyproSif7Ubg9NjYO
         brBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wGfMj/BRPow7af2yEPotUl7H34dN09d7WLmvdhlPcIc=;
        b=CPp6kdGusgtOqtO9mmg3TQFtxYCIeCyDbfRvAZmZZKxs7zA6bPg5pNNIjZ8ymh3WsL
         DZO5bVU2G0u1Jf1VFhwdPkgKkCNgIsJ0yrx9pGn6kmqtIptZ6+eUhJXB5cqiOOQ8oL9C
         hUB/P8hjLvHlW3HfsGzfkfPvG+QL6+ZFYWYUpsUHsmj+HJCJ6pDpEAeRulVrsZvrSdSY
         nm35t+qw1dFYeBqjt0KskZY22O3qZ6Kjn2cfn3MB9v9KRg+1ofUHilKGEaHazG6YtmYm
         nAQSS4MT+8ITy90d4+sEmiPZCzCDOZ2hjp9JdrAJ6MwExdNo1Q6dXz/CPZHrlY9wy7YZ
         82ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2FLivof4iY+dIru/w50NjorvnC+diVaMe3K/ZHSynlpKttuv83
	MmhUAS3+ofZOh+udbN1IjnE=
X-Google-Smtp-Source: ADFU+vsnwcSozOmzwX09JaUWeCuhcBmK0xtEV48T8Fzchyy/WD+UOauZgg5oQaVcEHaF2Z0HxDrbtA==
X-Received: by 2002:aed:39e4:: with SMTP id m91mr7109440qte.188.1585209741012;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls1837231qtc.6.gmail; Thu, 26 Mar
 2020 01:02:20 -0700 (PDT)
X-Received: by 2002:aed:3461:: with SMTP id w88mr6971154qtd.143.1585209740602;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209740; cv=none;
        d=google.com; s=arc-20160816;
        b=GGUJ4WFS/X5XCEo5U5eDyg4upf1Rgj+kvV6pxVUKivCVD4qd/ytpsqCyVP564i3eM+
         uoU8Ar6tAacjGVB6KZUYL8F/HC+6hls9qw7Ybl3uAOBwHFT8Fn0agXd8DJB68saOUJ99
         ukgY7CSQeRiw6fmkJjcEppRoQ8cXwr5SkP6Akb9uM2Ol2hZyDklJI1gxudJN/TnKr6np
         Vd3pLJYBf5WAorN1DYwk/lg6Fz84MuFP4hoo87Fzi9V3K9OMFnUTLlYJOkkz+SltKrG4
         W+dldkmnLAYEa/MxJbKjM+f3OGn2YwY2MRezd4yYIg8pfp+Wpu92egot/mi1Ud6CTTnX
         aopg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=cPIEThBc4Irm4nWA19YAjNO5mJ0+ArFJUQ9YsOY4Q5I=;
        b=ZdN1aA0eFnO01Y4JeDK/F3/vEu5UOd09Bi4BUCaR1mIsK/AdijPrfRPJTSz60hGi16
         UD/GYClJBwBxn+uQR6XHuqEOBPAiWt/Wvuk1qrR4uJl6mKGPbLh77o8HC7xlg3ms50Fv
         MgT7dWTf0sOLwd2HxagsNN2dIxuDSMT8RJcfbBQmimn9e4FB1jcwsQ1tBxuLu5qYbmUD
         GpLIton28hr3mswV5sJSsxuH3fpSO6RSqeDzP3b15SqXfzvuDE0w+GtrghP6IW1F9yJV
         yH+HiM4MLnu4Ogc4+wRUjde7CmSgx6gHixLS6g306xQHefsH0XFZ9B+sZ/SNigbPALQ3
         8sUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kOSooawt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id d193si41236qke.1.2020.03.26.01.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wpf002183;
	Thu, 26 Mar 2020 17:01:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wpf002183
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
Subject: [PATCH v2 12/16] crypto: x86 - rework configuration based on Kconfig
Date: Thu, 26 Mar 2020 17:01:00 +0900
Message-Id: <20200326080104.27286-13-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=kOSooawt;       spf=softfail
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Now that assembler capabilities are probed inside of Kconfig, we can set
up proper Kconfig-based dependencies. We also take this opportunity to
reorder the Makefile, so that items are grouped logically by primitive.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2: None

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-13-masahiroy%40kernel.org.
