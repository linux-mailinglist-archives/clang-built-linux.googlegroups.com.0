Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSFB5T6AKGQEWDXZRLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8867429F45B
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 19:58:18 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id f85sf1511678oib.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 11:58:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603997897; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXJxOcr4HVF7v23sjm3tiFpzxYkRkNwE6KS58PAMo/4EQKuepaUZr9qtYmSAIC+V7A
         V0AdGBub2hM0tg9tk+Bw6W7iq1x4etMo71YoJPPXAS7hLnLpBbsJAj/2qK461lBaRzkw
         CtNKN1oWQh3TbTFew086cvYlyPmHnnUs/2kSqUKQwXlyxIF0ekEi++Zlbkg7PQTLJX/M
         wsWFyMEy/ZeuHfB/3nIkML6kUJHys5+uQn38z6EQ0imPyrWQWcxN4nl+isvqDYdTDtJ2
         6PzEIEpg0bdGtSkrArxd8MS6dTM21Ic9NZ2MMJF9bLkNYa+PL4gLFm5bHMa8cY3Ml5u5
         D+QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yl1rShseIreGzEcG4JEnpiV8O4FifzX6eDYPKqzsPQM=;
        b=BgBWl5S639kOV2DUuwXjHLy8PYfp1JadEqWIikkSNhmia1w9uNN9BS5VXaQq1kLDf8
         NSjAYSrUls1TN+C9IJVpD52DMLGn4WVX3Gu4P+vqmwTUaI79xrmao39ECkdU3r1pB6Lh
         vryYvs/4+12uD13dplq6AF7o+kgK0squ60WRWo6jmLQRDk7di7QoXEfRni4KC9akyj0i
         OSxTyQvtXhwpCj9DMIY/SmvaflmAyTJF2Xh3dflM/znYk9tulNp7WWVjLbgLd4YoGwGf
         SOcykuC6NoGaZoclOyNBwxR8Z8EVu2ix0+At2wusnFh+Bid2nUYDtmlDWznBsimoLZ9B
         Qc4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SlVYufBS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yl1rShseIreGzEcG4JEnpiV8O4FifzX6eDYPKqzsPQM=;
        b=MDrqgUuWPlqp0K5l7Ym6Ow3N33W35rcTjQCXji1mGPK3qpNub7BLby+Mb3iLMTrV5Q
         i3JGh4fjfMoJsej0idIk+6gHMAA9xNLh03l0JH+MpvwEzAMS50NcJ+0i7dpv9Wkx7r3P
         +vHLpOaP77IkkZ6TTc1sVvGmrpBjOGlKPiTMCcAmeuFKeQon8jGpKgh7Ea7DxhNbBLBL
         g0B367a6A6gnX8WuyIkBWmhLa4dXw6wg3sc04Unu3Pg+xGCdm8NaId+OS2wJHmD1pO5/
         ZHBm06/Jjh+4u/rJxivY3sFKC5XKXeg9KCNPO1u2yUwic3A8DKD913ALICJ2O+xKqr3l
         IWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yl1rShseIreGzEcG4JEnpiV8O4FifzX6eDYPKqzsPQM=;
        b=oOlJudeX5Qc6IS3IS5flaV2LNOE2NL07f/m7MqmbPawnjjOPS8K0amxhDXoqCy/LNH
         8V6JF1hh3uAB8Goh98Epy1QT/Z3Kqh8aXJn5R/6Nu5ojG4MHT/K4RExch4QuMGedTdeO
         VrOFMVOL6Egv9/CMS+cYXEGdrbJNDzhT/1qQtLX90V8k0nuqQrCcTtAQDEpPJy9JxGBE
         9On/pwz+SsFcIysTmwQIbVJ50uL/aOpjotNF+TEa+QGMuTZbB1ydfbhWD3ebHMrgCXnu
         5rtmGJ4YFShN3pPcAq3I2xlQSw9Dk9Ilre8g2cA/K/95ZHVVnP2cR6DwDx8HLDrsfNMw
         4R7Q==
X-Gm-Message-State: AOAM532NiSeuW/YKzrWnwxGdtgMJZ28TyFtJcC0uFTEyDn06iXe/YiTK
	jnQGfF+atjgkAE+1P6xNpyI=
X-Google-Smtp-Source: ABdhPJzcHTfKUyKGK/myITeIEw9j13hxt54EE6LJ+R3gjAppwrfi8X9WEFEwNp90T8IXE0ZO4LX7Fw==
X-Received: by 2002:a4a:8f15:: with SMTP id e21mr4421793ool.8.1603997897013;
        Thu, 29 Oct 2020 11:58:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3108:: with SMTP id b8ls972805ots.5.gmail; Thu, 29
 Oct 2020 11:58:16 -0700 (PDT)
X-Received: by 2002:a9d:65c7:: with SMTP id z7mr4417653oth.327.1603997896570;
        Thu, 29 Oct 2020 11:58:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603997896; cv=none;
        d=google.com; s=arc-20160816;
        b=un7cgp068go3E+DD8i9sj9w1LddrCG3G93PWrbRvT7IAo/yrcIoZghGBhKyvGCMJlr
         70CmiYcO+0kEAPc9V3s3wcy9bvIQQ3E3+VrHmorgTxVxibcB7VWRvj0kjX32H1C6mAD8
         dmXYafpTmsaakSR9nks4cPu3JqKU1OP0wY1czUEtCkTRYlfL7WEONLpk2EDIt7yi+0Jx
         hcxwQAHRMCIJ5bOmTKTvoMK9feYXv0EbVXUzBgmb2PKwnznDK9ARw9ANNOrMBiaMczx7
         5o0sb4HK0p/GVaf6piOnyYubOduX1nVdkxtleTBrrwSQnteCf9ILgPOILYF8WfDx9u0u
         z6yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ygdtL6CnTQH7Tnq1yUpsax8Newnu3ysggevTfg1LisY=;
        b=JU7b9hhDszQ4UzI8gjFE+eS/TJ/B4eoBk7cq+6Q9ueHg45gScSPhmn59sNrvO2PtEh
         ON3H6iPIrwxi3UIIoiqf8MSyMobbNuOMulRGoJWazypCuQm5oKe+BkU8DAd196jZ2eMA
         5DUVL+HANecfJAIqVfRpQLkH+yUR/xOzpyJGMT+Fga5G74tbBMRqOYjYcXM2J80lW/LN
         MfxbshJ+4j8uq+wE87ctddBHTeAYNuvS8BgX9WLpBplOh9Ucz/wLUxy5KK/sBEfbGzpR
         dO05UknsjcLjduJVOhy5Af4NnwqLeOqklxpYsPXzg5U26Ms2vVQDH5BIcZG7vEPcBlfe
         Z6WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SlVYufBS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p17si345064oot.0.2020.10.29.11.58.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 11:58:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n16so3090816pgv.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 11:58:16 -0700 (PDT)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr546213pjb.25.1603997895872;
 Thu, 29 Oct 2020 11:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <20201029180525.1797645-1-maskray@google.com>
In-Reply-To: <20201029180525.1797645-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 11:58:03 -0700
Message-ID: <CAKwvOdk+72TmStpCr0jrCTeBB2mKuNAVqju5zD3m-K21BKfg-g@mail.gmail.com>
Subject: Re: [PATCH] x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S
To: Fangrui Song <maskray@google.com>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SlVYufBS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Oct 29, 2020 at 11:05 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
> memset/memmove/memcpy functions") added .weak directives to
> arch/x86/lib/mem*_64.S instead of changing the existing SYM_FUNC_START_*
> macros. This can lead to the assembly snippet `.weak memcpy ... .globl
> memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding.
>
> Use the appropriate SYM_FUNC_START_WEAK instead.
>
> Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: <stable@vger.kernel.org>
> ---
>  arch/x86/lib/memcpy_64.S  | 4 +---
>  arch/x86/lib/memmove_64.S | 4 +---
>  arch/x86/lib/memset_64.S  | 4 +---
>  3 files changed, 3 insertions(+), 9 deletions(-)
>
> diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
> index 037faac46b0c..1e299ac73c86 100644
> --- a/arch/x86/lib/memcpy_64.S
> +++ b/arch/x86/lib/memcpy_64.S
> @@ -16,8 +16,6 @@
>   * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
>   */
>
> -.weak memcpy
> -
>  /*
>   * memcpy - Copy a memory block.
>   *
> @@ -30,7 +28,7 @@
>   * rax original destination
>   */
>  SYM_FUNC_START_ALIAS(__memcpy)
> -SYM_FUNC_START_LOCAL(memcpy)
> +SYM_FUNC_START_WEAK(memcpy)
>         ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
>                       "jmp memcpy_erms", X86_FEATURE_ERMS

Thanks for the patch.  This exposes a lack of symmetry in the
assembler subroutine for memcpy; memmove and memset use SYM_FUNC_START
for their double underscore prefixed symbols, and SYM_FUNC_START_WEAK
for the non prefixed symbols, and no SYM_FUNC_START_ALIAS after your
patch.  It's also curious to me why you removed SYM_FUNC_START_ALIAS
for memmove and memset, but not memcpy?  Can we sort that out so that
they all follow the same convention?

Before your patch, with GNU `as` I see:
$ llvm-readelf -s arch/x86/lib/memcpy_64.o | grep -e memcpy -e __memcpy
    16: 0000000000000000    26 FUNC    GLOBAL DEFAULT     4 __memcpy
    17: 0000000000000000    26 FUNC    WEAK   DEFAULT     4 memcpy
$ llvm-readelf -s arch/x86/lib/memmove_64.o| grep -e memmove -e __memmove
    13: 0000000000000000   409 FUNC    WEAK   DEFAULT     1 memmove
    14: 0000000000000000   409 FUNC    GLOBAL DEFAULT     1 __memmove
$ llvm-readelf -s arch/x86/lib/memset_64.o| grep -e memset -e __memset
    15: 0000000000000000    47 FUNC    WEAK   DEFAULT     1 memset
    16: 0000000000000000    47 FUNC    GLOBAL DEFAULT     1 __memset

After your patch, with GNU `as` I see:
$ llvm-readelf -s arch/x86/lib/memcpy_64.o | grep -e memcpy -e __memcpy
    16: 0000000000000000    26 FUNC    GLOBAL DEFAULT     4 __memcpy
    17: 0000000000000000    26 FUNC    WEAK   DEFAULT     4 memcpy
$ llvm-readelf -s arch/x86/lib/memmove_64.o| grep -e memmove -e __memmove
    13: 0000000000000000   409 FUNC    WEAK   DEFAULT     1 memmove
    14: 0000000000000000   409 FUNC    GLOBAL DEFAULT     1 __memmove
$ llvm-readelf -s arch/x86/lib/memset_64.o| grep -e memset -e __memset
    15: 0000000000000000    47 FUNC    WEAK   DEFAULT     1 memset
    16: 0000000000000000    47 FUNC    GLOBAL DEFAULT     1 __memset

So in that sense, your patch is no functional change, and simply
resolves ambiguities in repeatedly defining a symbol with different
bindings.  I guess we can save uncovering why memcpy doesn't follow
the same convention for another day.  In that sense:

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

And thanks for the patch!

>
> diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
> index 7ff00ea64e4f..41902fe8b859 100644
> --- a/arch/x86/lib/memmove_64.S
> +++ b/arch/x86/lib/memmove_64.S
> @@ -24,9 +24,7 @@
>   * Output:
>   * rax: dest
>   */
> -.weak memmove
> -
> -SYM_FUNC_START_ALIAS(memmove)
> +SYM_FUNC_START_WEAK(memmove)
>  SYM_FUNC_START(__memmove)
>
>         mov %rdi, %rax
> diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
> index 9ff15ee404a4..0bfd26e4ca9e 100644
> --- a/arch/x86/lib/memset_64.S
> +++ b/arch/x86/lib/memset_64.S
> @@ -6,8 +6,6 @@
>  #include <asm/alternative-asm.h>
>  #include <asm/export.h>
>
> -.weak memset
> -
>  /*
>   * ISO C memset - set a memory block to a byte value. This function uses fast
>   * string to get better performance than the original function. The code is
> @@ -19,7 +17,7 @@
>   *
>   * rax   original destination
>   */
> -SYM_FUNC_START_ALIAS(memset)
> +SYM_FUNC_START_WEAK(memset)
>  SYM_FUNC_START(__memset)
>         /*
>          * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
> --
> 2.29.1.341.ge80a0c044ae-goog
>
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2B72TmStpCr0jrCTeBB2mKuNAVqju5zD3m-K21BKfg-g%40mail.gmail.com.
