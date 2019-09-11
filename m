Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZF64XVQKGQEAEF6E7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E4598B0509
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 22:56:05 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id y189sf11142961qkb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 13:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568235365; cv=pass;
        d=google.com; s=arc-20160816;
        b=It40+KRH8uwNM/UCCV6h5IeWehFyRlJwAYxetKrVH5LzIJ2J5bSgcc8RGPk0MVACDY
         WgfepZX1xBxWRFEQp/LONw4AVv7Po3b6EDrXW313dEkBZq8ObCihnC/jNq97Hye/cqaV
         61IwCAwZPCNcMHxuopP5mrZkUR43vz44rrVwGG6MnNrglUbLVZSd4qtmJ2/xa/5p+Nlk
         3E6FRoX9NyHQyfHNdzjR4DnCNoZeJRarIKAQFpq/l0pA+31Bz9KYGU15IiGeoIg+75+v
         6uQWew1r1jY3jUp5AX7Mua2uggU2td2pf0fFQN4oFsJFAMM/F+YjwMgDg5w08bBxgZRo
         KUOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Om0VB91PdjdljZlP3v97lrIa8zElg/s28IYiuhRfny0=;
        b=oC3NyZkiiwKv0vddOWE4nItyYrvmJDeIbclARllUeF+RS8kmOnQGmvOAXME1QGfsc9
         FQ42z3BRCT7hs2oaoaNvaEsJRGjuIfmaZ7QTrZjBaOkP481rFQ6XzSWmkUX6Mln5MDd3
         0avg3Dc+ZV0/m+jAU26nkzRNtKKCvk1OahN11jyAWm3Q5H/QXgxY6fx60YzDS1fo2HW+
         8d/M2AXj6zK8heNK3SCi3uhUQgzB8zWKIaDF2DkBmL/GWHxeCj/N61JUMZ0xSFQnV8UK
         49zDt7DeHd8Iq9LbOru6AY8CmrCvsSMD8py006cjax2RPtsHiQMYI8qIXtv8Z0GETo9W
         W3Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4HLFzuL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Om0VB91PdjdljZlP3v97lrIa8zElg/s28IYiuhRfny0=;
        b=LYOj634RWNGlI11taW/7TeXBeX1a0EOZVrr+JcJLk0171OQxca7jQ0wjIjMS6wV5ik
         Kb7U1VUUP4sNVtNic1Gj37Dznro9NUfuVFGSv19AByNURPLNb/vUINR56VRcSbgxCVfD
         GGiP9i159qVqO+u1gt3Le0KJqsgWfzTDP8XXv74QSd350sUqYUwTNEr9wICvrn0gTwcX
         Ih56z/6wxQPj05E/poHVV/9KaSjyZd1hGezL+s4onF2qYtMUFWb0iwAURchdWtuNXhgs
         /eSeoeXUfP8VQgkBkmpHEHKKNelapSnBnLj2/zc73Iez1Ln5kALpwpk4/LcaNKi5nfMd
         RJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Om0VB91PdjdljZlP3v97lrIa8zElg/s28IYiuhRfny0=;
        b=ZzbtyZJ2HtzmqF85qyn2NEZzaKZz4UCicPSW0E8DKOwQz7myRySYovQL0LxLe/nXjY
         Teha4LlxhNuR1AiXzIi0YyEUnQX7gkafSBfEGsUmex905sbBZW/pEMo6DgACuMTGHNcb
         VO/dGtdpJAfS5bXhVueHgjKfKpVgDcd2yfPLE26reOm8NWsQBobjStY2vO13/OqyxML0
         6kVxtRHcPtQ41XMvXPSxv9wq7f4b2BqewR0Jlv34FahI9twV4+HeZEp1fYnWs18b2Cw3
         t09lYSrKvs02XZOYPJEK0Dje45JDW30C0GvGi/PW1OBQJCBaYd6Cy4lnpUpvgLD1qUp7
         oXjg==
X-Gm-Message-State: APjAAAUMotP21UeDaDX1kwzZRu/VndaFBT49MTEPuG56X2Y/R+nQaVu6
	iziPLIIr9zukCTEjKh3L7WY=
X-Google-Smtp-Source: APXvYqxCor+jfZsvDOfZRdstamUejy2IvuE9HRu0MAl7+t8IUImkXzk1PWLWFp/9C+4A0Oh2EZ/8bA==
X-Received: by 2002:ac8:1812:: with SMTP id q18mr37482978qtj.192.1568235364671;
        Wed, 11 Sep 2019 13:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3f5d:: with SMTP id w29ls177893qtk.0.gmail; Wed, 11 Sep
 2019 13:56:04 -0700 (PDT)
X-Received: by 2002:ac8:342a:: with SMTP id u39mr37569522qtb.7.1568235364386;
        Wed, 11 Sep 2019 13:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568235364; cv=none;
        d=google.com; s=arc-20160816;
        b=AcvxcN5Bqk00jU3y40/aYfkaa4flKEfMBcraRFfCczfbRR0D9zY2/6d1Wl2G6w7oSr
         70EsU+hA2eXNuV/BNaDM6Vj0jMs3noQHyUZ+NWg7T7ZLvvL9KfwkJ2EtIOVmCkT3KOOD
         D53gkNreL2u7u/RL0TZnWf6nZIusNhbdANlwnqG5FaAIW+Sg3sXAFHvAO4F9V/V/GUGd
         1XerwSP0Szo10nGAcCIrW6rmCF+xtywubs4AsgSJRACbufY7+YDXW9BnBkYvidhNhPRA
         SXtrIQGafFlDuCAW5pPhgzvpFpJqWc0ojsfptzurldCJlKngMfpXebZynUfiS6+RT86d
         zdIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hECyZnP2/Wb3+Wh7idFWgoa4zJGDS5Ymb1IJNhVMGsM=;
        b=X9CHLZ3pDBAikt3UMyZdRrvo/odshgJ7haJAiTt/ZcQrVK7xSicnBSGG8dc20XWuxh
         EvMBUXFPKH0mDWVplPAezPKVHSs+IKhhewjJBoHkDF+iOIViAGeF01wLnLCvZNyjuLGG
         4JkCSUAbNhnO/6jqrls0p41n+hBkhd6rMIo/KO7hYStLFwY0hfF7cY6RdXop95RJyIpt
         wlmYyeEJveSUKWv3HFKbYVkNGRPcUoJBGpW1lcYzFuSf8Yxib1asxTgx5VQoepxQBPuN
         TV3G/FknVeJPVvzn+GU4S2Nw2Kn9pGrw0d/nLBxFzdlIdI+0WS21rCtFgI67+Dcj8Rif
         DXDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4HLFzuL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id w12si216807qkf.4.2019.09.11.13.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 13:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s17so5789544plp.2
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 13:56:04 -0700 (PDT)
X-Received: by 2002:a17:902:7296:: with SMTP id d22mr39066409pll.179.1568235363028;
 Wed, 11 Sep 2019 13:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190911182049.77853-1-natechancellor@gmail.com> <20190911182049.77853-3-natechancellor@gmail.com>
In-Reply-To: <20190911182049.77853-3-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Sep 2019 13:55:52 -0700
Message-ID: <CAKwvOdn2vz0XGDQrbBiGFAp6vvBzmOgUH3GLkgGY4UAWLhhZUQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] powerpc: Avoid clang warnings around setjmp and longjmp
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O4HLFzuL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Wed, Sep 11, 2019 at 11:21 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> setjmp is used") disabled -Wbuiltin-requires-header because of a warning
> about the setjmp and longjmp declarations.
>
> r367387 in clang added another diagnostic around this, complaining that
> there is no jmp_buf declaration.
>
> In file included from ../arch/powerpc/xmon/xmon.c:47:
> ../arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
> built-in function 'setjmp' requires the declaration of the 'jmp_buf'
> type, commonly provided in the header <setjmp.h>.
> [-Werror,-Wincomplete-setjmp-declaration]
> extern long setjmp(long *);
>             ^
> ../arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of
> built-in function 'longjmp' requires the declaration of the 'jmp_buf'
> type, commonly provided in the header <setjmp.h>.
> [-Werror,-Wincomplete-setjmp-declaration]
> extern void longjmp(long *, long);
>             ^
> 2 errors generated.
>
> We are not using the standard library's longjmp/setjmp implementations
> for obvious reasons; make this clear to clang by using -ffreestanding
> on these files.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
https://godbolt.org/z/B2oQnl

>
> Cc: stable@vger.kernel.org # 4.14+
> Link: https://github.com/ClangBuiltLinux/linux/issues/625
> Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
> Suggested-by: Segher Boessenkool <segher@kernel.crashing.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> v1 -> v3:
>
> * Use -ffreestanding instead of outright disabling the warning because
>   it is legitimate.
>
> I skipped v2 because the first patch in the series already had a v2.
>
>  arch/powerpc/kernel/Makefile | 4 ++--
>  arch/powerpc/xmon/Makefile   | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
> index c9cc4b689e60..19f19c8c874b 100644
> --- a/arch/powerpc/kernel/Makefile
> +++ b/arch/powerpc/kernel/Makefile
> @@ -5,8 +5,8 @@
>
>  CFLAGS_ptrace.o                += -DUTS_MACHINE='"$(UTS_MACHINE)"'
>
> -# Disable clang warning for using setjmp without setjmp.h header
> -CFLAGS_crash.o         += $(call cc-disable-warning, builtin-requires-header)
> +# Avoid clang warnings around longjmp/setjmp declarations
> +CFLAGS_crash.o         += -ffreestanding
>
>  ifdef CONFIG_PPC64
>  CFLAGS_prom_init.o     += $(NO_MINIMAL_TOC)
> diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
> index f142570ad860..c3842dbeb1b7 100644
> --- a/arch/powerpc/xmon/Makefile
> +++ b/arch/powerpc/xmon/Makefile
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Makefile for xmon
>
> -# Disable clang warning for using setjmp without setjmp.h header
> -subdir-ccflags-y := $(call cc-disable-warning, builtin-requires-header)
> +# Avoid clang warnings around longjmp/setjmp declarations
> +subdir-ccflags-y := -ffreestanding
>
>  GCOV_PROFILE := n
>  KCOV_INSTRUMENT := n
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn2vz0XGDQrbBiGFAp6vvBzmOgUH3GLkgGY4UAWLhhZUQ%40mail.gmail.com.
