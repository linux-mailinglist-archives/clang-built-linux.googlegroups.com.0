Return-Path: <clang-built-linux+bncBD63HSEZTUIBBXUXSL7QKGQE5QJHXRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C12E26E7
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 13:38:55 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id m203sf3194180ybf.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 04:38:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608813534; cv=pass;
        d=google.com; s=arc-20160816;
        b=hqJcdzg5M5Sr5CUxMZJBBPaJtGJfBUZNMEuq08V53Jv9gNsI+dBBlNhQNAtJnOTIL6
         VD2rvZBmr901vtSRGEmQgYfuozrcFvxRFBtWdvgJA9dGUXFNb0JOqjDyey3Gk5yLmQdZ
         6bUN/+iIDkPJhwU4oOsNXHaRZq+hsYltE1eJG3Vsg7qRsDvDa8FIOeLZP67ZEJkQcE/3
         kZ3xqhiStBemyqEL3dI9O3DaGeq5n8XV54pscBn/9+bbKbuOl3qkq9OMvva5wn4Tyb5n
         /EdXLio6Z4Dhf4Lr1yKvXprKLgZZzixWNefK1AupPJfmrFRcouVSf01rAGqnm1FPD9Ep
         1c1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4dFTl9WAo/Xx2YbgRdUnA71BXWwt5q0d3dyNkWMI9l0=;
        b=HDDeGSgBfSpBIZgG/yvzTHNrJd7SaqWc2iaD8OdG72FQqhaA8xWNONXx/wGy3jW95C
         YY5Wmb38mFS1TYVXUWO78FPUAOS1F92sm6B394RpEiplxxIY1qw6bjQgAV4CbY78qyXU
         OTyKZIeSC7TFPkPAQcv/WkEYtGqcE2Nt5b5OtsJyEPO9HLLJdL92+/y4CAcLyxcYIE18
         gGeSnxHA839jn4YYcv1nMnR6KbSwoLjYBskfH9cMPnEXqJHo1dzFcQIfXt+gK3PMf48r
         GghS2g9XgaBHaSvXL2jXSThjraFwgpcI4eGlfgbJHpFLXG1O7YzKOYS1k+W+ngJ5mEAY
         L1DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kGUePHhv;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4dFTl9WAo/Xx2YbgRdUnA71BXWwt5q0d3dyNkWMI9l0=;
        b=CEpsJXe3WoTRQxQKiZW//QWgrgrnEZvQQTXVykxe5QIP1FvRXdMh+PXPPsOO9CxAZp
         5Ge/KuOUvJpLvegI89Eq74pYK0OHviTxp+nX/uaTdY8Wn88jfQz30SJToJga73t+XmEo
         jQgfOv8l9KemJXzhtdfZ4u3mvDoOFrsiZdxJhaMoGIU4V4gjUBDQcGc0l4FHrpX0hqO0
         VEYPPbgJWv+/AEbEpxvqPYkkmIaFH2U0gUKEx6zAIFtg4ePLQFBtWYXt1tXtesRTudX8
         Vyl4uutINJIDYSkzUAxKA4ROLcWsvaqZ8/bon+qyr1MhAdOXoYGMj0TsLkHhVh555//p
         t4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4dFTl9WAo/Xx2YbgRdUnA71BXWwt5q0d3dyNkWMI9l0=;
        b=cUNWBl3COWt5aw537WHnXQQwk2FsdyYdXwICy6uckBx54ZccY6tCJbwBTdUj4pLMhj
         n/2cFz4CuTsZV9PYYixESKMgt69P9MtCFKufQ13WilYK0GCxFTccs9x8Nr8LxQPz967e
         Bn82bHLn9Sorxsnn2LkNw8leTJ0mmkkoHoDIgqSSk+HCSeAFRHnHdWn5E8nEVmsKmwin
         ihiDmCE95SwSzeH59I6VppOh3Tq1V+5bNGCCM15vK/mV+AvM2HpBVLJ0Ud2pmUsY5Q8z
         InIv4vIgE3aspWl4Mh104Xoda/nVz/9xvgIjguxfepFfzxLCPHpRuPM5oWbKIbwxEGm3
         ExbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533q+3RHvLOX33MpIM1xPdP7BIklNZUy9wNuu77aDGX7/G+153as
	tBnTctBbO6E6nwj0p+BoXyY=
X-Google-Smtp-Source: ABdhPJzzuLobo9VFBuyM21w6PkPmuKV1kA9E2juXBcjSfxtldhrBbOeIeFKLq2uOAWVnf/bLEPfMdw==
X-Received: by 2002:a25:bbc2:: with SMTP id c2mr40156764ybk.170.1608813534450;
        Thu, 24 Dec 2020 04:38:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e407:: with SMTP id b7ls7164208ybh.6.gmail; Thu, 24 Dec
 2020 04:38:54 -0800 (PST)
X-Received: by 2002:a25:aa91:: with SMTP id t17mr38878015ybi.394.1608813533994;
        Thu, 24 Dec 2020 04:38:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608813533; cv=none;
        d=google.com; s=arc-20160816;
        b=S2Tt4WK/5nRhA3/pIWK5rKaWvUJ/FTgYnW11EtyPQNUMcp7h0zpQF0rAHkYqQPuz/S
         1wYAw9HF/jwc12LVccoyUHi1WPpCXdBNq6Ay0qLC1xMPHrcw8+LRY+BEYpwpCB7MZEST
         5m5CycoNqGtzTapYAcVhpZN9BNIeYRCmzICJq3h9jj453jQKqbgoLTXc9TdSu4VyPeqi
         hrUAIZs9tmHEq/8BsIhan+pzct303HsGLG45kobtom6a74FeCFobrgH1HhQxJ2S+riZh
         BhyrdHjirDbtm68bboj5SwTJ0sWeKdH0G6JMddmXie0VGOXIwyS0/fwcJaaaeUtpVzWY
         sT6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kFGXp/iy2XEg/Li9Z7thYANxtCromtvInk8zREVwKH8=;
        b=JSNhUpplqzTuyci+OitDMEFSPevUPZLmFiA/E2jMp6GSAkZNDotM3omX2l60iKTytq
         AbAyIbeT0O48Q1Oy1cq10Jd6tvWlOhMcohg7eIDo2eHI53lr1+z2zjVSDwPRI1/o9Vxj
         5whAdFOqSIGGoFiqsKd8CFtpefTopBSed97mbo3J8C79pJTHt7Eg9FtGJWOOY1cJUxBA
         TF1UZNg5ZWVtNRA99mfnG0Zuysxoyg4S9Lhvi4tajBkJTBvQPpHWRZi7HMqwBcq77Enc
         mRFj+w/rcEz5v+mIFhylZG0dDyNDZaJ+SuSEWcSI09FKXUkCDj+MoHmMghuECbvbdb07
         WoNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kGUePHhv;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r12si2105974ybc.3.2020.12.24.04.38.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Dec 2020 04:38:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DFAC8224B8
	for <clang-built-linux@googlegroups.com>; Thu, 24 Dec 2020 12:38:52 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id i6so1738717otr.2
        for <clang-built-linux@googlegroups.com>; Thu, 24 Dec 2020 04:38:52 -0800 (PST)
X-Received: by 2002:a9d:12c:: with SMTP id 41mr22254055otu.77.1608813532207;
 Thu, 24 Dec 2020 04:38:52 -0800 (PST)
MIME-Version: 1.0
References: <20201223223841.11311-6-ardb@kernel.org> <202012241954.M3EGclj3-lkp@intel.com>
In-Reply-To: <202012241954.M3EGclj3-lkp@intel.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 24 Dec 2020 13:38:41 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFjNPe4387MJFUgeoJiTTsv==+T6oqpP=rrzkRGQNytjw@mail.gmail.com>
Message-ID: <CAMj1kXFjNPe4387MJFUgeoJiTTsv==+T6oqpP=rrzkRGQNytjw@mail.gmail.com>
Subject: Re: [RFC PATCH 05/10] crypto: x86/glue-helper - drop XTS helper routines
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kGUePHhv;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 24 Dec 2020 at 12:55, kernel test robot <lkp@intel.com> wrote:
>
> Hi Ard,
>
> [FYI, it's a private test report for your RFC patch.]
> [auto build test ERROR on cryptodev/master]
> [also build test ERROR on crypto/master v5.10 next-20201223]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>

This is a false positive - the base is a patch that was also posted to
the linux-crypto list in the days before.

'[PATCH 2/2] crypto: x86/aes-ni-xts - rewrite and drop indirections
via glue helper'



> url:    https://github.com/0day-ci/linux/commits/Ard-Biesheuvel/crypto-x86-remove-XTS-and-CTR-glue-helper-code/20201224-064421
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> config: x86_64-randconfig-a016-20201223 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/ad8857244950d3ad8c01b5bfae95f15e4ba703c4
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Ard-Biesheuvel/crypto-x86-remove-XTS-and-CTR-glue-helper-code/20201224-064421
>         git checkout ad8857244950d3ad8c01b5bfae95f15e4ba703c4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> arch/x86/crypto/aesni-intel_glue.c:542:2: error: implicit declaration of function 'glue_xts_crypt_128bit_one' [-Werror,-Wimplicit-function-declaration]
>            glue_xts_crypt_128bit_one(ctx, dst, src, iv, aesni_enc);
>            ^
>    arch/x86/crypto/aesni-intel_glue.c:547:2: error: implicit declaration of function 'glue_xts_crypt_128bit_one' [-Werror,-Wimplicit-function-declaration]
>            glue_xts_crypt_128bit_one(ctx, dst, src, iv, aesni_dec);
>            ^
> >> arch/x86/crypto/aesni-intel_glue.c:566:14: error: field designator 'xts' does not refer to any field in type 'union (anonymous union at arch/x86/include/asm/crypto/glue_helper.h:21:2)'
>                    .fn_u = { .xts = aesni_xts_enc8 }
>                               ^
>    arch/x86/crypto/aesni-intel_glue.c:569:14: error: field designator 'xts' does not refer to any field in type 'union (anonymous union at arch/x86/include/asm/crypto/glue_helper.h:21:2)'
>                    .fn_u = { .xts = aesni_xts_enc }
>                               ^
>    arch/x86/crypto/aesni-intel_glue.c:579:14: error: field designator 'xts' does not refer to any field in type 'union (anonymous union at arch/x86/include/asm/crypto/glue_helper.h:21:2)'
>                    .fn_u = { .xts = aesni_xts_dec8 }
>                               ^
>    arch/x86/crypto/aesni-intel_glue.c:582:14: error: field designator 'xts' does not refer to any field in type 'union (anonymous union at arch/x86/include/asm/crypto/glue_helper.h:21:2)'
>                    .fn_u = { .xts = aesni_xts_dec }
>                               ^
> >> arch/x86/crypto/aesni-intel_glue.c:591:9: error: implicit declaration of function 'glue_xts_req_128bit' [-Werror,-Wimplicit-function-declaration]
>            return glue_xts_req_128bit(&aesni_enc_xts, req, aesni_enc,
>                   ^
>    arch/x86/crypto/aesni-intel_glue.c:591:9: note: did you mean 'glue_ctr_req_128bit'?
>    arch/x86/include/asm/crypto/glue_helper.h:103:12: note: 'glue_ctr_req_128bit' declared here
>    extern int glue_ctr_req_128bit(const struct common_glue_ctx *gctx,
>               ^
>    arch/x86/crypto/aesni-intel_glue.c:602:9: error: implicit declaration of function 'glue_xts_req_128bit' [-Werror,-Wimplicit-function-declaration]
>            return glue_xts_req_128bit(&aesni_dec_xts, req, aesni_enc,
>                   ^
>    8 errors generated.
>
>
> vim +/glue_xts_crypt_128bit_one +542 arch/x86/crypto/aesni-intel_glue.c
>
> 023af608254add7 Jussi Kivilinna 2012-07-22  538
> 023af608254add7 Jussi Kivilinna 2012-07-22  539
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  540  static void aesni_xts_enc(const void *ctx, u8 *dst, const u8 *src, le128 *iv)
> 32bec973a8435af Jussi Kivilinna 2012-10-18  541  {
> 9c1e8836edbbaf3 Kees Cook       2019-11-26 @542         glue_xts_crypt_128bit_one(ctx, dst, src, iv, aesni_enc);
> 32bec973a8435af Jussi Kivilinna 2012-10-18  543  }
> 32bec973a8435af Jussi Kivilinna 2012-10-18  544
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  545  static void aesni_xts_dec(const void *ctx, u8 *dst, const u8 *src, le128 *iv)
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  546  {
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  547         glue_xts_crypt_128bit_one(ctx, dst, src, iv, aesni_dec);
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  548  }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  549
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  550  static void aesni_xts_enc8(const void *ctx, u8 *dst, const u8 *src, le128 *iv)
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  551  {
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  552         aesni_xts_crypt8(ctx, dst, src, true, iv);
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  553  }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  554
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  555  static void aesni_xts_dec8(const void *ctx, u8 *dst, const u8 *src, le128 *iv)
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  556  {
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  557         aesni_xts_crypt8(ctx, dst, src, false, iv);
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  558  }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  559
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  560  static const struct common_glue_ctx aesni_enc_xts = {
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  561         .num_funcs = 2,
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  562         .fpu_blocks_limit = 1,
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  563
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  564         .funcs = { {
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  565                 .num_blocks = 8,
> 9c1e8836edbbaf3 Kees Cook       2019-11-26 @566                 .fn_u = { .xts = aesni_xts_enc8 }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  567         }, {
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  568                 .num_blocks = 1,
> 9c1e8836edbbaf3 Kees Cook       2019-11-26 @569                 .fn_u = { .xts = aesni_xts_enc }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  570         } }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  571  };
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  572
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  573  static const struct common_glue_ctx aesni_dec_xts = {
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  574         .num_funcs = 2,
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  575         .fpu_blocks_limit = 1,
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  576
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  577         .funcs = { {
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  578                 .num_blocks = 8,
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  579                 .fn_u = { .xts = aesni_xts_dec8 }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  580         }, {
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  581                 .num_blocks = 1,
> 9c1e8836edbbaf3 Kees Cook       2019-11-26  582                 .fn_u = { .xts = aesni_xts_dec }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  583         } }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  584  };
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  585
> 85671860caaca2f Herbert Xu      2016-11-22  586  static int xts_encrypt(struct skcipher_request *req)
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  587  {
> 85671860caaca2f Herbert Xu      2016-11-22  588         struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
> 85671860caaca2f Herbert Xu      2016-11-22  589         struct aesni_xts_ctx *ctx = crypto_skcipher_ctx(tfm);
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  590
> 9c1e8836edbbaf3 Kees Cook       2019-11-26 @591         return glue_xts_req_128bit(&aesni_enc_xts, req, aesni_enc,
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  592                                    aes_ctx(ctx->raw_tweak_ctx),
> 8ce5fac2dc1bf64 Ard Biesheuvel  2019-08-16  593                                    aes_ctx(ctx->raw_crypt_ctx),
> 8ce5fac2dc1bf64 Ard Biesheuvel  2019-08-16  594                                    false);
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  595  }
> c456a9cd1ac4eae Jussi Kivilinna 2013-04-08  596
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFjNPe4387MJFUgeoJiTTsv%3D%3D%2BT6oqpP%3DrrzkRGQNytjw%40mail.gmail.com.
