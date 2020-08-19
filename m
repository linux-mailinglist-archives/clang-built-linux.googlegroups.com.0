Return-Path: <clang-built-linux+bncBDYJPJO25UGBB27B6X4QKGQEE5ECIKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4462424A60E
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 20:35:25 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id g6sf17389367iln.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 11:35:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597862124; cv=pass;
        d=google.com; s=arc-20160816;
        b=JDJ1W+LHxMduzfz9jP3neswWybK8y9gHhU7c4XLiZsTGzAnj7hMaFTqtiDTi2Qx0PO
         1MdJHnCuHu9FWdEuztYWZGfgxFRa1JMkqmZMY8J2/Jlusow80OfnmVNxi+qyGUzlhZVD
         nXdPlmMCX3xYMkx0+KeluAgLVUTLreovll0vu/EnPP+virkFM/n9sWvaf+iJOgoH8TZ0
         Mo9/pGtk0HapSBJfFkcT+/prmcqdQPdbQ0FlvmdXxZw+8opBbY/m983eJTCdpgyCKSHK
         wBOOk4UBYfFYuDasrcADAHP/kfxit9EbkoQ/qqA5aFABg+aX1FjPK4tscId5/HSFTg9W
         o5tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xFxgF7eUvg5rJoUuIEgcaGrXCidUtznSY1iGsqC1cp0=;
        b=XRzgSbpsSyN9FdUpYXlSZV1jTKQ4lEDWh0IrVZCLd01pyUiqJ0rEwjIWuI8BbDAK/p
         T1Gtefv/Fp1HxUAtUx7NGlRkzcTbYei/ZNnzStZhRRj2l+Jna7Q+brj44E3sKKDRnk+r
         YxlvrnaqEiZl0lF2SZJVWo2kBP4h/yTs87vF7Na3lMJon5u+b1JwSk557B8PRjY0YGub
         Z9RzpV5PA5HL8xqPwXufPa0+PGw7OyAd2b7N1BjHtml8avuvjS2CeYZH2nYjebUWquFv
         ZAlk3MvvdjNcCdJ9CZ4VQvjj+rQPdFoCmyBRvvrsq0nau9uJKSnPz7k/r5JSZ7/C+PHj
         zCrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hwETQq0w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xFxgF7eUvg5rJoUuIEgcaGrXCidUtznSY1iGsqC1cp0=;
        b=CBjaYrWf8gZ08Uq/JyUbQ9Fra9IevCllH0+0E5b12IJikNbuVJDkeAWbNGPvnfFBFq
         vc/h+ao3pDXjhbJMCklRtIxq7/HSSthCLKCQWa9yDLxxCRjnhuSmUfvflj4qhJNPyjJc
         C57wmFAnTWC/qj7DriSGksd2Totj+7TbcnYt+CrCj1fW3eG2C72sXHBtyDFDF+qfCrde
         GbGI3YM44MSfFEzNUutaraNv0JIIeGAmg9XaZp93NjVjezqT/Vj6vURK9re82y2p9oEf
         nOZa+AGHTHlnKuYNCVRdoiRfq5imZnLEGbZREZWNxxilCmYprWFlF5upz3qfVzbAWVQn
         5ngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xFxgF7eUvg5rJoUuIEgcaGrXCidUtznSY1iGsqC1cp0=;
        b=sxasrZ/luxERo9UlQXtGT9PB9dMJG68go2ADjsGOTO34GxKewksdzSPKPIZF1YkoTR
         EACfmYlUZxXIJTGKb4ujBz3zTJ8hHmNzsRmCIe3xOjnunox3PTMgYe1A5ZAbdAu3PIzH
         WJJDlQ/B5xIik3Pg/Ds7A5e7h5kGgyax3/tUD4Ao9iV39pPyRiNsJItHWTgBKD1NwrpT
         ifPZzgo7uEz1H4VZJ/OgeJ5fJ6XEKTVeaiXflmoNQLQWbRTO3K9J21XFSXb6LUDA5Kqa
         6F7epH9qAjC0VdK7RqvjrxzHaDIptBIRHAdaoFoG9hngTj2QjfedcIQXFCPn9qHJdFg/
         cY2Q==
X-Gm-Message-State: AOAM532Cj53lZpNPMgLkC91TVFXbE4hCCEkWzVovsju/q0iThZmjtOJb
	fAuMMxMDgVcI2EDUP3WL/KM=
X-Google-Smtp-Source: ABdhPJy33T/jDvq8UpEpm3I9axC1azJTNXDGeEmmImt8Ms7CYXt/8PPDmacRTxtKUHHU5L78S/qODA==
X-Received: by 2002:a05:6638:1b5:: with SMTP id b21mr25656690jaq.125.1597862123799;
        Wed, 19 Aug 2020 11:35:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3aa:: with SMTP id z10ls3284050jap.1.gmail; Wed, 19
 Aug 2020 11:35:23 -0700 (PDT)
X-Received: by 2002:a02:8e:: with SMTP id 136mr657209jaa.111.1597862123487;
        Wed, 19 Aug 2020 11:35:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597862123; cv=none;
        d=google.com; s=arc-20160816;
        b=a3NJI0HAMQngXcMPexAzaT8D169NHQ6RQCiBKnapP/nluy6SPNrNKMe5KMBiHrxRaj
         52K85GVnPN+H7ddN2ExVw+CONa2wrLKwdkwIdU+Nv/31vL5RrR012oS8O9kZQiOpRHXP
         4+4IvEibYbjB4+k/LPypUKqKNuKx/vkjtfbTIBUnO7OZW4/IAMCxWikFXLFviO26KutV
         a3c2TuGyfctF9vEACWSIfxLav7itIdkGw/zO2PhvV9dvrcaPLzmeaVvcqhsAWcCO10KM
         hrQRaNralGWaulD9HlVoOnYaMYi/RP/fDYwmAADbux9DWU7kZ2slm///P8zXYI6mg1v2
         /+JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ap3wyF3ycynr5I2+EM8mbSJRoPdo5xTYvxy7Dp4qm24=;
        b=vO5MD1sUD8T159rtJchizalVH4cwwGEGeZjLUCHY6eRC+edDjyhgWyS/2Bzkxy4bBz
         7TjthFpk/RKuH8nqPAKMNko1S651XBtDM+rmviwocEWQoCb0iPTcff1qf8eZz8UZUKmc
         pKVyaGoS5sQoSjeH2/IF3o9N9zupMahSYF30rXgwRDCcpwmJuRgIEJv8dGlKrtjoE0RE
         WOxHFfGSAcs9XBnu0f2aU85xtYVF9w7GNDaPpkWFmRyq0b7P38OKPr5WlFbACL5Lk4zc
         JxwowA8EY53qFdP5j+9+wbHBfZGQLkTdMet4E7Eyw5sNeJRCYq5qXPi36j+iNJuf2+kg
         qz8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hwETQq0w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id z6si1352900ioj.0.2020.08.19.11.35.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 11:35:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id 2so1496080pjx.5
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 11:35:23 -0700 (PDT)
X-Received: by 2002:a17:90b:4a42:: with SMTP id lb2mr2276677pjb.25.1597862122566;
 Wed, 19 Aug 2020 11:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
 <20200819140816.3807604-1-nivedita@alum.mit.edu>
In-Reply-To: <20200819140816.3807604-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Aug 2020 11:35:11 -0700
Message-ID: <CAKwvOdn-mv1D1GEk3pWnPYsyzQRRk5qZFhSi0CYn6tRDo1O_iw@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: Use freestanding environment
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hwETQq0w;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, Aug 19, 2020 at 7:08 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> gcc can transform the loop in a naive implementation of memset/memcpy
> etc into a call to the function itself. This optimization is enabled by
> -ftree-loop-distribute-patterns.
>
> This has been the case for a while (see eg [0]), but gcc-10.x enables
> this option at -O2 rather than -O3 as in previous versions.
>
> Add -ffreestanding, which implicitly disables this optimization with
> gcc. It is unclear whether clang performs such optimizations, but
> hopefully it will also not do so in a freestanding environment.
>
> [0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56888
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

For Clang:
For x86_64 defconfig:
This results in no change for the code generated.

For aarch64 defconfig:
This results in calls to bcmp being replaced with calls to memcmp in
strstr and strnstr.  I plan on adding -fno-built-bcmp then removing
bcmp anyways.  Not a bug either way, just noting the difference is
disassembly.

For arm defconfig:
This results in no change for the code generated.

I should check the other architectures we support, but my local build
doesn't have all backends enabled currently; we'll catch it once it's
being testing in -next if it's an issue, but I don't foresee it
(knocks on wood, famous last words, ...)

If it helps GCC not optimize these core functions into infinite
recursion, I'm for that, especially since I'd bet these get called
frequently and early on in boot, which is my least favorite time to
debug.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  lib/Makefile | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/lib/Makefile b/lib/Makefile
> index e290fc5707ea..a4a4c6864f51 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -15,11 +15,16 @@ KCOV_INSTRUMENT_debugobjects.o := n
>  KCOV_INSTRUMENT_dynamic_debug.o := n
>  KCOV_INSTRUMENT_fault-inject.o := n
>
> +# string.o implements standard library functions like memset/memcpy etc.
> +# Use -ffreestanding to ensure that the compiler does not try to "optimize"
> +# them into calls to themselves.
> +CFLAGS_string.o := -ffreestanding
> +
>  # Early boot use of cmdline, don't instrument it
>  ifdef CONFIG_AMD_MEM_ENCRYPT
>  KASAN_SANITIZE_string.o := n
>
> -CFLAGS_string.o := -fno-stack-protector
> +CFLAGS_string.o += -fno-stack-protector
>  endif
>
>  # Used by KCSAN while enabled, avoid recursion.
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn-mv1D1GEk3pWnPYsyzQRRk5qZFhSi0CYn6tRDo1O_iw%40mail.gmail.com.
