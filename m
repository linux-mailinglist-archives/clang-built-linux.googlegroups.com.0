Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC6Z6PZQKGQEVI34QAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 244701945E0
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 18:55:25 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id 33sf5441037pgn.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 10:55:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585245323; cv=pass;
        d=google.com; s=arc-20160816;
        b=aUUK+lhRNgRYUGAPWmG72yhRw9WuEw7Nwt8p92R+URyRRptXLjOSTo/I4RVAsw3Inc
         LGOUYEeLpllOBH005Ze53O5bm1f8ocweR58kOheItIdTbUJNOJ5OKOsOv9+iGvRUo10P
         l+bs5UgZX+thixXjc2NVy02Kp68+0KHleU23gFTT9vKxIkV0KfvEY1cexAeVs5kt/ikX
         WiwnSuPYFQ26j4EdE02U9FgZPp0ajXiPSMv6YitxqQp3ha3HZ4A/l156MPJl8GKevN9k
         gYTe/+WIz2By5imW5aC8FunhJHqwlLBRcBXmX0cTnbwrxI2mpHT8Wg3owW1zTPUwVYX6
         6NzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G6PFEVINMK1fJLwgPiZVh24EoOPy8kMP0fPg7CWrlk4=;
        b=VCpFhV81/9ikA5NPQSp6ZagZg1toILojXpyZKV6ipN6u9DW6V/7mKKJjZd6aD6cklr
         XtN2FGZmu+SudSl9gVdTUo+lkcOxgGUzoD+FJQQrKkgx50TE/y3Xe/iL5Ue9WIG7TYml
         BYLkMdASuri6FuNemrQxJdZyd45H7nuPWxuIzqJ568yu68uRXSRDnczUZHzyeknJQ4I5
         9thYI0nQUedgUNLNbh68W2qEyyPlaQV9L+cYRUyw5hJvwY02vtZAkUU1iE01wwz1aljJ
         6Q/GmdczRxfpOzH0uhHWhiAdldzEgbLw7Sn4X6K2P/Nw2sqwXPfmW5n86/VSGXpheNE8
         7MMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cE4h7W19;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G6PFEVINMK1fJLwgPiZVh24EoOPy8kMP0fPg7CWrlk4=;
        b=sNo9bgmEqHvrDn23EB4f9+bp87KNoCT8rOnLRXHSjkxv/ukTrB0DPqAA5FtPYJoewm
         4AwU8Xjwa+dhp4pHCJfVRDa0VeCwT5C/cSU7N1MSsuujQreQiKN1oB1P5HcuUa6vfy/P
         4JAjspmC/M9WpcgkPZs1WWcywP74+7yf/3Vv7zK2D/VmILC/hYEnJcMEZotB4kUgxk0d
         hYEmdq/ba78mA6MDr4Hl7BJ3+B4piDIIe+8IktKqFCFyQl4H0OePwU+HzmVFY51y8eQX
         ZvOt+Kd05OHUsx9/C0IVW+HsSZB9W8Qq0Npq2MbVxI2vOpPOVLe6pra3LCSglL8rJx5u
         2Gow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G6PFEVINMK1fJLwgPiZVh24EoOPy8kMP0fPg7CWrlk4=;
        b=ZQcZwj2/IHdaS7SdIGynaADuAXnwXXTyN2sZup3lw+SZe3ljDP24n+dNW1TUCKInTc
         +OBgjTRVtrMRJ1It/+DGmGHrIHspmd6NywyCRDKJU+H+92Z++b/oBt13/Rs0PHEQ1tWJ
         asx0ScSHuFnWKtRatlF+gmwb6sC/CAhPa7A0hWAhnQtZuxyK4pWQcC8wMZSVIKH7JM+8
         Mgfuy4/rwjSWpyJXZxuj1uBiEwOdvY0B7eJUDPxmi+ir9StaJWrJ+0kZljys/YShfcd8
         Sijspvmp9Rpnm3YRYQ5+9aBQ11lrYxqsNOPHaqB/x3FN/0yLqylQtZ2s2FBNzX86EL+A
         KA+A==
X-Gm-Message-State: ANhLgQ3KFxdbYhWKB0zSqJsLdyOYRGnA+7T/aO5yvLSRVB3eN4egmN7x
	JoTHwj+R7C5s/0UUQl/6hSQ=
X-Google-Smtp-Source: ADFU+vtxyvKxCHPYiiqBRF/zKh3l0kFnyUyieerctPcwgmJD2QC827UUc4pHCLXAy05GynA+P8j2JA==
X-Received: by 2002:a63:fd0f:: with SMTP id d15mr9498361pgh.26.1585245323488;
        Thu, 26 Mar 2020 10:55:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls4337664plq.7.gmail; Thu, 26
 Mar 2020 10:55:22 -0700 (PDT)
X-Received: by 2002:a17:90a:a385:: with SMTP id x5mr1303944pjp.102.1585245322856;
        Thu, 26 Mar 2020 10:55:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585245322; cv=none;
        d=google.com; s=arc-20160816;
        b=JRrChK+cw6HrFOVGQQylguBFBavPKlhX3af2fqqHiXOqZhNN5I8jndt/sZ0d4myMnL
         m1U/x0jsSJtX8nMfgQcjqfot9SiPTSqFVJNFwNV6T9x60Bi5xnrbSjygC1LIW8MGsM3b
         uplKMFIUIYLrJd+hLUsnnY76l+3tLIC/h2RgF9h7LYG09uNomyqBfdfJ1564eljqDctC
         LTEIIwPMov9f8AMWmT77CxVISwDDRd80j2jjOQp4FnHWZgZsLZyHDoFpvIj14YGWAxNr
         igT9uiE9z11N7MljBfj2SKok8zU0s1fobJ9XJe4x3L6qdx7/qLMwvI3QD0nbaUzfIxvI
         XPQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DCauf6UzeM0EGa6Rjr2Ei8nconXomjrPPNEKVAQgfxg=;
        b=CK6iW6qtBf4v3kT3LGkVW+6ZY5KYDWIt6TGzAnVQnd6R0wisn2YDdBUpC/Hx/6Zz6a
         QIuBouiq8ZKdQq2pLwBM6mJv+J/SFOgCL/zcbtOLhXO0yfQ+EHFT0zTF2RzMJEjWH2wz
         7eMaD3YfIARJT+Okv9kKRKFicpjVNV6EAwws4dHif3o+bR3ccOyv0p/OPq7MgsoSFAdQ
         X2KflQXvp3Nuq5DtS3/D5VC/fZXE0APVcHoe1nMmBCFF99sHR7T01rn2l9Mc7PZW27xo
         UZQGTZZAzOCZTaz7bu7EOQajRkmWl4CiVZ2OkGoJsPqEVqqT2Cuo6PZnkrlYwn6FRyww
         cNsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cE4h7W19;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j44si589164pje.0.2020.03.26.10.55.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 10:55:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id b22so3256727pgb.6
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 10:55:22 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr9148432pgk.381.1585245322018;
 Thu, 26 Mar 2020 10:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-16-masahiroy@kernel.org>
In-Reply-To: <20200326080104.27286-16-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 10:55:09 -0700
Message-ID: <CAKwvOdnG4F6+Ndfj+=BoV6OidJjWS_dYtjvyCEJ6nyxkSQc3rg@mail.gmail.com>
Subject: Re: [PATCH v2 15/16] x86: update AS_* macros to binutils >=2.23,
 supporting ADX and AVX2
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cE4h7W19;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Thu, Mar 26, 2020 at 1:02 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> From: "Jason A. Donenfeld" <Jason@zx2c4.com>
>
> Now that the kernel specifies binutils 2.23 as the minimum version, we
> can remove ifdefs for AVX2 and ADX throughout.
>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> Changes in v2: None
>
>  arch/x86/Kconfig.assembler                    | 10 ----------
>  arch/x86/crypto/Makefile                      |  6 ++----
>  arch/x86/crypto/aesni-intel_avx-x86_64.S      |  3 ---
>  arch/x86/crypto/aesni-intel_glue.c            |  7 -------
>  arch/x86/crypto/chacha_glue.c                 |  6 ++----
>  arch/x86/crypto/poly1305-x86_64-cryptogams.pl |  8 --------
>  arch/x86/crypto/poly1305_glue.c               |  5 ++---
>  arch/x86/crypto/sha1_ssse3_glue.c             |  6 ------
>  arch/x86/crypto/sha256-avx2-asm.S             |  3 ---
>  arch/x86/crypto/sha256_ssse3_glue.c           |  6 ------
>  arch/x86/crypto/sha512-avx2-asm.S             |  3 ---
>  arch/x86/crypto/sha512_ssse3_glue.c           |  5 -----
>  crypto/Kconfig                                |  8 ++++----
>  lib/raid6/algos.c                             |  6 ------
>  lib/raid6/avx2.c                              |  4 ----
>  lib/raid6/recov_avx2.c                        |  6 ------
>  lib/raid6/test/Makefile                       |  3 ---

I see four checks for CONFIG_AS_AVX2 in:
net/netfilter/nft_set_pipapo.c
net/netfilter/nf_tables_api.c
net/netfilter/Makefile
net/netfilter/nft_set_pipapo_avx2.h

Can changes for those be added to this?

>  17 files changed, 10 insertions(+), 85 deletions(-)
>
> diff --git a/arch/x86/Kconfig.assembler b/arch/x86/Kconfig.assembler
> index a5a1d2766b3a..13de0db38d4e 100644
> --- a/arch/x86/Kconfig.assembler
> +++ b/arch/x86/Kconfig.assembler
> @@ -1,11 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Copyright (C) 2020 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
>
> -config AS_AVX2
> -       def_bool $(as-instr,vpbroadcastb %xmm0$(comma)%ymm1)
> -       help
> -         Supported by binutils >= 2.22 and LLVM integrated assembler
> -
>  config AS_AVX512
>         def_bool $(as-instr,vpmovm2b %k1$(comma)%zmm5)
>         help
> @@ -20,8 +15,3 @@ config AS_SHA256_NI
>         def_bool $(as-instr,sha256msg1 %xmm0$(comma)%xmm1)
>         help
>           Supported by binutils >= 2.24 and LLVM integrated assembler
> -
> -config AS_ADX
> -       def_bool $(as-instr,adox %eax$(comma)%eax)
> -       help
> -         Supported by binutils >= 2.23 and LLVM integrated assembler
> diff --git a/arch/x86/crypto/Makefile b/arch/x86/crypto/Makefile
> index 2f23f08fdd4b..928aad453c72 100644
> --- a/arch/x86/crypto/Makefile
> +++ b/arch/x86/crypto/Makefile
> @@ -47,8 +47,7 @@ obj-$(CONFIG_CRYPTO_AEGIS128_AESNI_SSE2) += aegis128-aesni.o
>  aegis128-aesni-y := aegis128-aesni-asm.o aegis128-aesni-glue.o
>
>  obj-$(CONFIG_CRYPTO_CHACHA20_X86_64) += chacha-x86_64.o
> -chacha-x86_64-y := chacha-ssse3-x86_64.o chacha_glue.o
> -chacha-x86_64-$(CONFIG_AS_AVX2) += chacha-avx2-x86_64.o
> +chacha-x86_64-y := chacha-avx2-x86_64.o chacha-ssse3-x86_64.o chacha_glue.o
>  chacha-x86_64-$(CONFIG_AS_AVX512) += chacha-avx512vl-x86_64.o
>
>  obj-$(CONFIG_CRYPTO_AES_NI_INTEL) += aesni-intel.o
> @@ -56,8 +55,7 @@ aesni-intel-y := aesni-intel_asm.o aesni-intel_glue.o
>  aesni-intel-$(CONFIG_64BIT) += aesni-intel_avx-x86_64.o aes_ctrby8_avx-x86_64.o
>
>  obj-$(CONFIG_CRYPTO_SHA1_SSSE3) += sha1-ssse3.o
> -sha1-ssse3-y := sha1_ssse3_asm.o sha1_ssse3_glue.o
> -sha1-ssse3-$(CONFIG_AS_AVX2) += sha1_avx2_x86_64_asm.o
> +sha1-ssse3-y := sha1_avx2_x86_64_asm.o sha1_ssse3_asm.o sha1_ssse3_glue.o
>  sha1-ssse3-$(CONFIG_AS_SHA1_NI) += sha1_ni_asm.o
>
>  obj-$(CONFIG_CRYPTO_SHA256_SSSE3) += sha256-ssse3.o
> diff --git a/arch/x86/crypto/aesni-intel_avx-x86_64.S b/arch/x86/crypto/aesni-intel_avx-x86_64.S
> index cc56ee43238b..0cea33295287 100644
> --- a/arch/x86/crypto/aesni-intel_avx-x86_64.S
> +++ b/arch/x86/crypto/aesni-intel_avx-x86_64.S
> @@ -1868,7 +1868,6 @@ key_256_finalize:
>          ret
>  SYM_FUNC_END(aesni_gcm_finalize_avx_gen2)
>
> -#ifdef CONFIG_AS_AVX2
>  ###############################################################################
>  # GHASH_MUL MACRO to implement: Data*HashKey mod (128,127,126,121,0)
>  # Input: A and B (128-bits each, bit-reflected)
> @@ -2836,5 +2835,3 @@ key_256_finalize4:
>          FUNC_RESTORE
>          ret
>  SYM_FUNC_END(aesni_gcm_finalize_avx_gen4)
> -
> -#endif /* CONFIG_AS_AVX2 */
> diff --git a/arch/x86/crypto/aesni-intel_glue.c b/arch/x86/crypto/aesni-intel_glue.c
> index e0f54e00edfd..c7f8c4d7f670 100644
> --- a/arch/x86/crypto/aesni-intel_glue.c
> +++ b/arch/x86/crypto/aesni-intel_glue.c
> @@ -233,7 +233,6 @@ static const struct aesni_gcm_tfm_s aesni_gcm_tfm_avx_gen2 = {
>         .finalize = &aesni_gcm_finalize_avx_gen2,
>  };
>
> -#ifdef CONFIG_AS_AVX2
>  /*
>   * asmlinkage void aesni_gcm_init_avx_gen4()
>   * gcm_data *my_ctx_data, context data
> @@ -276,8 +275,6 @@ static const struct aesni_gcm_tfm_s aesni_gcm_tfm_avx_gen4 = {
>         .finalize = &aesni_gcm_finalize_avx_gen4,
>  };
>
> -#endif
> -
>  static inline struct
>  aesni_rfc4106_gcm_ctx *aesni_rfc4106_gcm_ctx_get(struct crypto_aead *tfm)
>  {
> @@ -706,10 +703,8 @@ static int gcmaes_crypt_by_sg(bool enc, struct aead_request *req,
>         if (!enc)
>                 left -= auth_tag_len;
>
> -#ifdef CONFIG_AS_AVX2
>         if (left < AVX_GEN4_OPTSIZE && gcm_tfm == &aesni_gcm_tfm_avx_gen4)
>                 gcm_tfm = &aesni_gcm_tfm_avx_gen2;
> -#endif
>         if (left < AVX_GEN2_OPTSIZE && gcm_tfm == &aesni_gcm_tfm_avx_gen2)
>                 gcm_tfm = &aesni_gcm_tfm_sse;
>
> @@ -1069,12 +1064,10 @@ static int __init aesni_init(void)
>         if (!x86_match_cpu(aesni_cpu_id))
>                 return -ENODEV;
>  #ifdef CONFIG_X86_64
> -#ifdef CONFIG_AS_AVX2
>         if (boot_cpu_has(X86_FEATURE_AVX2)) {
>                 pr_info("AVX2 version of gcm_enc/dec engaged.\n");
>                 aesni_gcm_tfm = &aesni_gcm_tfm_avx_gen4;
>         } else
> -#endif
>         if (boot_cpu_has(X86_FEATURE_AVX)) {
>                 pr_info("AVX version of gcm_enc/dec engaged.\n");
>                 aesni_gcm_tfm = &aesni_gcm_tfm_avx_gen2;
> diff --git a/arch/x86/crypto/chacha_glue.c b/arch/x86/crypto/chacha_glue.c
> index 68a74953efaf..b412c21ee06e 100644
> --- a/arch/x86/crypto/chacha_glue.c
> +++ b/arch/x86/crypto/chacha_glue.c
> @@ -79,8 +79,7 @@ static void chacha_dosimd(u32 *state, u8 *dst, const u8 *src,
>                 }
>         }
>
> -       if (IS_ENABLED(CONFIG_AS_AVX2) &&
> -           static_branch_likely(&chacha_use_avx2)) {
> +       if (static_branch_likely(&chacha_use_avx2)) {
>                 while (bytes >= CHACHA_BLOCK_SIZE * 8) {
>                         chacha_8block_xor_avx2(state, dst, src, bytes, nrounds);
>                         bytes -= CHACHA_BLOCK_SIZE * 8;
> @@ -288,8 +287,7 @@ static int __init chacha_simd_mod_init(void)
>
>         static_branch_enable(&chacha_use_simd);
>
> -       if (IS_ENABLED(CONFIG_AS_AVX2) &&
> -           boot_cpu_has(X86_FEATURE_AVX) &&
> +       if (boot_cpu_has(X86_FEATURE_AVX) &&
>             boot_cpu_has(X86_FEATURE_AVX2) &&
>             cpu_has_xfeatures(XFEATURE_MASK_SSE | XFEATURE_MASK_YMM, NULL)) {
>                 static_branch_enable(&chacha_use_avx2);
> diff --git a/arch/x86/crypto/poly1305-x86_64-cryptogams.pl b/arch/x86/crypto/poly1305-x86_64-cryptogams.pl
> index 5bac2d533104..137edcf038cb 100644
> --- a/arch/x86/crypto/poly1305-x86_64-cryptogams.pl
> +++ b/arch/x86/crypto/poly1305-x86_64-cryptogams.pl
> @@ -1514,10 +1514,6 @@ ___
>
>  if ($avx>1) {
>
> -if ($kernel) {
> -       $code .= "#ifdef CONFIG_AS_AVX2\n";
> -}
> -
>  my ($H0,$H1,$H2,$H3,$H4, $MASK, $T4,$T0,$T1,$T2,$T3, $D0,$D1,$D2,$D3,$D4) =
>      map("%ymm$_",(0..15));
>  my $S4=$MASK;
> @@ -2808,10 +2804,6 @@ ___
>  poly1305_blocks_avxN(0);
>  &end_function("poly1305_blocks_avx2");
>
> -if($kernel) {
> -       $code .= "#endif\n";
> -}
> -
>  #######################################################################
>  if ($avx>2) {
>  # On entry we have input length divisible by 64. But since inner loop
> diff --git a/arch/x86/crypto/poly1305_glue.c b/arch/x86/crypto/poly1305_glue.c
> index 4a6226e1d15e..6dfec19f7d57 100644
> --- a/arch/x86/crypto/poly1305_glue.c
> +++ b/arch/x86/crypto/poly1305_glue.c
> @@ -108,7 +108,7 @@ static void poly1305_simd_blocks(void *ctx, const u8 *inp, size_t len,
>                 kernel_fpu_begin();
>                 if (IS_ENABLED(CONFIG_AS_AVX512) && static_branch_likely(&poly1305_use_avx512))
>                         poly1305_blocks_avx512(ctx, inp, bytes, padbit);
> -               else if (IS_ENABLED(CONFIG_AS_AVX2) && static_branch_likely(&poly1305_use_avx2))
> +               else if (static_branch_likely(&poly1305_use_avx2))
>                         poly1305_blocks_avx2(ctx, inp, bytes, padbit);
>                 else
>                         poly1305_blocks_avx(ctx, inp, bytes, padbit);
> @@ -264,8 +264,7 @@ static int __init poly1305_simd_mod_init(void)
>         if (boot_cpu_has(X86_FEATURE_AVX) &&
>             cpu_has_xfeatures(XFEATURE_MASK_SSE | XFEATURE_MASK_YMM, NULL))
>                 static_branch_enable(&poly1305_use_avx);
> -       if (IS_ENABLED(CONFIG_AS_AVX2) && boot_cpu_has(X86_FEATURE_AVX) &&
> -           boot_cpu_has(X86_FEATURE_AVX2) &&
> +       if (boot_cpu_has(X86_FEATURE_AVX) && boot_cpu_has(X86_FEATURE_AVX2) &&
>             cpu_has_xfeatures(XFEATURE_MASK_SSE | XFEATURE_MASK_YMM, NULL))
>                 static_branch_enable(&poly1305_use_avx2);
>         if (IS_ENABLED(CONFIG_AS_AVX512) && boot_cpu_has(X86_FEATURE_AVX) &&
> diff --git a/arch/x86/crypto/sha1_ssse3_glue.c b/arch/x86/crypto/sha1_ssse3_glue.c
> index 275b65dd30c9..a801ffc10cbb 100644
> --- a/arch/x86/crypto/sha1_ssse3_glue.c
> +++ b/arch/x86/crypto/sha1_ssse3_glue.c
> @@ -174,7 +174,6 @@ static void unregister_sha1_avx(void)
>                 crypto_unregister_shash(&sha1_avx_alg);
>  }
>
> -#if defined(CONFIG_AS_AVX2)
>  #define SHA1_AVX2_BLOCK_OPTSIZE        4       /* optimal 4*64 bytes of SHA1 blocks */
>
>  asmlinkage void sha1_transform_avx2(struct sha1_state *state,
> @@ -246,11 +245,6 @@ static void unregister_sha1_avx2(void)
>                 crypto_unregister_shash(&sha1_avx2_alg);
>  }
>
> -#else
> -static inline int register_sha1_avx2(void) { return 0; }
> -static inline void unregister_sha1_avx2(void) { }
> -#endif
> -
>  #ifdef CONFIG_AS_SHA1_NI
>  asmlinkage void sha1_ni_transform(struct sha1_state *digest, const u8 *data,
>                                   int rounds);
> diff --git a/arch/x86/crypto/sha256-avx2-asm.S b/arch/x86/crypto/sha256-avx2-asm.S
> index 499d9ec129de..11ff60c29c8b 100644
> --- a/arch/x86/crypto/sha256-avx2-asm.S
> +++ b/arch/x86/crypto/sha256-avx2-asm.S
> @@ -48,7 +48,6 @@
>  # This code schedules 2 blocks at a time, with 4 lanes per block
>  ########################################################################
>
> -#ifdef CONFIG_AS_AVX2
>  #include <linux/linkage.h>
>
>  ## assume buffers not aligned
> @@ -767,5 +766,3 @@ _SHUF_00BA:
>  .align 32
>  _SHUF_DC00:
>         .octa 0x0b0a090803020100FFFFFFFFFFFFFFFF,0x0b0a090803020100FFFFFFFFFFFFFFFF
> -
> -#endif
> diff --git a/arch/x86/crypto/sha256_ssse3_glue.c b/arch/x86/crypto/sha256_ssse3_glue.c
> index 8bdc3be31f64..6394b5fe8db6 100644
> --- a/arch/x86/crypto/sha256_ssse3_glue.c
> +++ b/arch/x86/crypto/sha256_ssse3_glue.c
> @@ -220,7 +220,6 @@ static void unregister_sha256_avx(void)
>                                 ARRAY_SIZE(sha256_avx_algs));
>  }
>
> -#if defined(CONFIG_AS_AVX2)
>  asmlinkage void sha256_transform_rorx(struct sha256_state *state,
>                                       const u8 *data, int blocks);
>
> @@ -295,11 +294,6 @@ static void unregister_sha256_avx2(void)
>                                 ARRAY_SIZE(sha256_avx2_algs));
>  }
>
> -#else
> -static inline int register_sha256_avx2(void) { return 0; }
> -static inline void unregister_sha256_avx2(void) { }
> -#endif
> -
>  #ifdef CONFIG_AS_SHA256_NI
>  asmlinkage void sha256_ni_transform(struct sha256_state *digest,
>                                     const u8 *data, int rounds);
> diff --git a/arch/x86/crypto/sha512-avx2-asm.S b/arch/x86/crypto/sha512-avx2-asm.S
> index 3dd886b14e7d..3a44bdcfd583 100644
> --- a/arch/x86/crypto/sha512-avx2-asm.S
> +++ b/arch/x86/crypto/sha512-avx2-asm.S
> @@ -49,7 +49,6 @@
>  # This code schedules 1 blocks at a time, with 4 lanes per block
>  ########################################################################
>
> -#ifdef CONFIG_AS_AVX2
>  #include <linux/linkage.h>
>
>  .text
> @@ -749,5 +748,3 @@ PSHUFFLE_BYTE_FLIP_MASK:
>  MASK_YMM_LO:
>         .octa 0x00000000000000000000000000000000
>         .octa 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
> -
> -#endif
> diff --git a/arch/x86/crypto/sha512_ssse3_glue.c b/arch/x86/crypto/sha512_ssse3_glue.c
> index 75214982a633..82cc1b3ced1d 100644
> --- a/arch/x86/crypto/sha512_ssse3_glue.c
> +++ b/arch/x86/crypto/sha512_ssse3_glue.c
> @@ -218,7 +218,6 @@ static void unregister_sha512_avx(void)
>                         ARRAY_SIZE(sha512_avx_algs));
>  }
>
> -#if defined(CONFIG_AS_AVX2)
>  asmlinkage void sha512_transform_rorx(struct sha512_state *state,
>                                       const u8 *data, int blocks);
>
> @@ -293,10 +292,6 @@ static void unregister_sha512_avx2(void)
>                 crypto_unregister_shashes(sha512_avx2_algs,
>                         ARRAY_SIZE(sha512_avx2_algs));
>  }
> -#else
> -static inline int register_sha512_avx2(void) { return 0; }
> -static inline void unregister_sha512_avx2(void) { }
> -#endif
>
>  static int __init sha512_ssse3_mod_init(void)
>  {
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index 49aae167e75c..c24a47406f8f 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -267,7 +267,7 @@ config CRYPTO_CURVE25519
>
>  config CRYPTO_CURVE25519_X86
>         tristate "x86_64 accelerated Curve25519 scalar multiplication library"
> -       depends on X86 && 64BIT && AS_ADX
> +       depends on X86 && 64BIT
>         select CRYPTO_LIB_CURVE25519_GENERIC
>         select CRYPTO_ARCH_HAVE_LIB_CURVE25519
>
> @@ -465,7 +465,7 @@ config CRYPTO_NHPOLY1305_SSE2
>
>  config CRYPTO_NHPOLY1305_AVX2
>         tristate "NHPoly1305 hash function (x86_64 AVX2 implementation)"
> -       depends on X86 && 64BIT && AS_AVX2
> +       depends on X86 && 64BIT
>         select CRYPTO_NHPOLY1305
>         help
>           AVX2 optimized implementation of the hash function used by the
> @@ -1303,7 +1303,7 @@ config CRYPTO_CAMELLIA_AESNI_AVX_X86_64
>
>  config CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
>         tristate "Camellia cipher algorithm (x86_64/AES-NI/AVX2)"
> -       depends on X86 && 64BIT && AS_AVX2
> +       depends on X86 && 64BIT
>         depends on CRYPTO
>         select CRYPTO_CAMELLIA_AESNI_AVX_X86_64
>         help
> @@ -1573,7 +1573,7 @@ config CRYPTO_SERPENT_AVX_X86_64
>
>  config CRYPTO_SERPENT_AVX2_X86_64
>         tristate "Serpent cipher algorithm (x86_64/AVX2)"
> -       depends on X86 && 64BIT && AS_AVX2
> +       depends on X86 && 64BIT
>         select CRYPTO_SERPENT_AVX_X86_64
>         help
>           Serpent cipher algorithm, by Anderson, Biham & Knudsen.
> diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
> index b5a02326cfb7..2dc010be793e 100644
> --- a/lib/raid6/algos.c
> +++ b/lib/raid6/algos.c
> @@ -34,10 +34,8 @@ const struct raid6_calls * const raid6_algos[] = {
>         &raid6_avx512x2,
>         &raid6_avx512x1,
>  #endif
> -#ifdef CONFIG_AS_AVX2
>         &raid6_avx2x2,
>         &raid6_avx2x1,
> -#endif
>         &raid6_sse2x2,
>         &raid6_sse2x1,
>         &raid6_sse1x2,
> @@ -51,11 +49,9 @@ const struct raid6_calls * const raid6_algos[] = {
>         &raid6_avx512x2,
>         &raid6_avx512x1,
>  #endif
> -#ifdef CONFIG_AS_AVX2
>         &raid6_avx2x4,
>         &raid6_avx2x2,
>         &raid6_avx2x1,
> -#endif
>         &raid6_sse2x4,
>         &raid6_sse2x2,
>         &raid6_sse2x1,
> @@ -101,9 +97,7 @@ const struct raid6_recov_calls *const raid6_recov_algos[] = {
>  #ifdef CONFIG_AS_AVX512
>         &raid6_recov_avx512,
>  #endif
> -#ifdef CONFIG_AS_AVX2
>         &raid6_recov_avx2,
> -#endif
>         &raid6_recov_ssse3,
>  #endif
>  #ifdef CONFIG_S390
> diff --git a/lib/raid6/avx2.c b/lib/raid6/avx2.c
> index 87184b6da28a..f299476e1d76 100644
> --- a/lib/raid6/avx2.c
> +++ b/lib/raid6/avx2.c
> @@ -13,8 +13,6 @@
>   *
>   */
>
> -#ifdef CONFIG_AS_AVX2
> -
>  #include <linux/raid/pq.h>
>  #include "x86.h"
>
> @@ -470,5 +468,3 @@ const struct raid6_calls raid6_avx2x4 = {
>         1                       /* Has cache hints */
>  };
>  #endif
> -
> -#endif /* CONFIG_AS_AVX2 */
> diff --git a/lib/raid6/recov_avx2.c b/lib/raid6/recov_avx2.c
> index 7a3b5e7f66ee..4e8095403ee2 100644
> --- a/lib/raid6/recov_avx2.c
> +++ b/lib/raid6/recov_avx2.c
> @@ -4,8 +4,6 @@
>   * Author: Jim Kukunas <james.t.kukunas@linux.intel.com>
>   */
>
> -#ifdef CONFIG_AS_AVX2
> -
>  #include <linux/raid/pq.h>
>  #include "x86.h"
>
> @@ -313,7 +311,3 @@ const struct raid6_recov_calls raid6_recov_avx2 = {
>  #endif
>         .priority = 2,
>  };
> -
> -#else
> -#warning "your version of binutils lacks AVX2 support"
> -#endif
> diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
> index 60021319ac78..a4c7cd74cff5 100644
> --- a/lib/raid6/test/Makefile
> +++ b/lib/raid6/test/Makefile
> @@ -35,9 +35,6 @@ endif
>  ifeq ($(IS_X86),yes)
>          OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
>          CFLAGS += -DCONFIG_X86
> -        CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |   \
> -                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
> -                    rm ./-.o && echo -DCONFIG_AS_AVX2=1)
>         CFLAGS += $(shell echo "vpmovm2b %k1, %zmm5" |          \
>                     gcc -c -x assembler - >/dev/null 2>&1 &&    \
>                     rm ./-.o && echo -DCONFIG_AS_AVX512=1)
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnG4F6%2BNdfj%2B%3DBoV6OidJjWS_dYtjvyCEJ6nyxkSQc3rg%40mail.gmail.com.
