Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSUH2DZQKGQEOFP5G6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id E875618C3E4
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 00:44:11 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id t10sf1239401uaj.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 16:44:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584661450; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZ37CjPByNlO88N6L3fAa8RH6bd2dhO/GmSpHHahsyOjHCZEpuAIBmPomKPKUr1Ck7
         a13KEVnugPupBp/Bpe22fiYA6q4qt6De6IAU5hQ96uvMg6tqkualqrqzvcwwOwzYkOU+
         vQoFal0pfcgr7z4yW3llNOjD8s0KlinCooN5zBuhVhN9XUDJXG/4o9wniyw9SLF30fhf
         zB0Aq7CGIiUrRlMUJuqU4fvuec+iLQo55XE9mAwuzWqP09kmR0x8zyMxoDZCIaH+FfGV
         GwqINYW7nJ/q4R7o2RghHiT0HpKplOd+s9Gj8CIM5mE1VyhMeyHppAv87FQGu+mBFje1
         0biA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Njht7gY3+4sz7PljZ9vcdU6xhs4ibjGAz5L2KLCSaq0=;
        b=vTCBt2HHc7VlTtORlFIDjWJzGUDYwtwENvouf0AyWhlVUldrKbyPn2r09AG5k3a7+V
         zhPHNY1LzfH8o3Cp4DZgTjC5bDpRwdpSYdYTzdtzKTpEdAaDOvX5WsN8/VLj9kWqykB4
         ihA8shmvfi9Jm/olao3gg4yok2Exa/QYJYXeuMFbFrr8ldcMprc4Vp6y6JIT4Y6AHNOX
         dt7/oPhjoqxR5O1uu7n+fZ9MXmepTVENC2wN4og4vQqE2zdgwDMDinlLm95D3h2kU0kM
         sFHlGY2o2o4KKiUGs9croDzV43oCsPCD7s91E+zOtD8weIXLvoikALboNWt049hFun/v
         6kqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="g01y/QG6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Njht7gY3+4sz7PljZ9vcdU6xhs4ibjGAz5L2KLCSaq0=;
        b=Ylcuk2CR8EXmiR0jE+lJFYUkZ8QFkHO0G8Htt45HJNYqq4o5lWyW/aZUGw6PPh7Tgx
         dllG2+WTX+BAnJi7Pac6Gfed+kXa3PAlVEpA//F9OOpWh72/k4SbOCPRqH7x8aubO9Y0
         2okJjk67sicS2RH+GJRpFHxJaTWrLEK26FWoge6SGotwBELTNcGUtxC5NKNGgvqscCgF
         rUQlMHYzEmw9D9bILsc3kHE2BD3mVMG2W4HgjDwcYDlTL99S3fbgPIpYwKo6lHIi06SX
         tjwA2ZfBsGJb47UxnnZEw6PSRtZfOfje1DfTwc4FsEKEHBZDWL62DThpzU8Bav7LUjWD
         yVpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Njht7gY3+4sz7PljZ9vcdU6xhs4ibjGAz5L2KLCSaq0=;
        b=X3Q/NhZ5gg8FpcA11dsT1KRBPufaZaJJjF8I8yHsv8r2GzXi0e1IMjeRo3RGzRATjd
         wqeaJRjSEhWpbd/fJu5e9D0MvSVQhFGLkPz/8SjepvgVkPFpsdYETWEhjvJ0qoQjOu9+
         2+N1GVYjXBSLy+ANLeReGBp9p9tbDuUPCMkU1ZOpMg5gMJrrU5zeysBw0WUk3ar8hGP+
         gm9k9jwyu50Yb0dBUl6m1MT5Dp0e3JBvGhFYkec51lFZcDfRQ7Ndiq+zTAUo61rEIeGV
         jmEbMV2IjmJq4nO5bReKpMnPEsR9vw64YQYt4oexo4rUDZxyaDqVFUZEyIMh76Wm7N+g
         fA5Q==
X-Gm-Message-State: ANhLgQ278vrp2oJ8NFqSOUM+EBB2gvTbQHemsdjGjDL2WRZ5qYi20LxC
	i+GjxP9Q5v4IzzIfiAeqLCM=
X-Google-Smtp-Source: ADFU+vtVhrE1WuLOT5RBdcO03iiES4OIT5tW2Vnv9ZBI5Qbl/2rcdGpLUpPCY3t9juiqUBVuUODd7Q==
X-Received: by 2002:ab0:45f8:: with SMTP id u111mr4055765uau.50.1584661450543;
        Thu, 19 Mar 2020 16:44:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:320a:: with SMTP id r10ls606836vsf.9.gmail; Thu, 19
 Mar 2020 16:44:10 -0700 (PDT)
X-Received: by 2002:a67:c01e:: with SMTP id v30mr4564744vsi.71.1584661450148;
        Thu, 19 Mar 2020 16:44:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584661450; cv=none;
        d=google.com; s=arc-20160816;
        b=oLX5tt7OB278U+/RAyPclsGErpcGz4lHmPjUaOPCRJU/0zaUvM8o5ZNnCcT7FyVoqb
         zM62v01N4vMG34STDKbSEyXCHuOim2OSd5NkI3oVBuvY2abkvl6PAP3KMxy+gCLiI2mq
         eh4DVu2TFxySEh2tbWEeosiNfFA9ziMknJPllUv+5ydzOP8cpLv88gXxsF8dg7lv8B4p
         Qw2n9VeYlmIryzp5I97rrTEAulTNCB83dDinlOEMBlT0tN8yJgjfFZ1jKFPveStTvDVP
         LqAXIQJiSqzavm+NP00qDJQ2UF6QSt8+fpItF17zk/XqO5pNksSg5WW7rhv+kqYygxk6
         G2Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R0+TGEcl33aqQZuHdJpZvB8paDQF2GsWepjBb7GJLN0=;
        b=ay9T8i6VfyOr91wG9q3WxDaZNNOmY71+hDDFaKNcEkkKUifpjAQZzYShhhi6M+LYXx
         dt8ag84wlI+ANKATt++pI9DJUNaxRLaAhCX8l8E/KWpFNX7B42D4vUtfDYLaPPOuvr3C
         8xhIFNvs68h/QSE9pkI63MYz+03URaqemiaL/EFFYCnc4zljfBz+F+ywvOqWj0BcltR7
         7NHdKzzGjFFud1PuYPkRpctSwnWdj1NySJ1Qq66cwOOkPF/gnuWQK/CMmYbPW6+f2ItT
         36x3qxo7sYK77vFA1Nl9hRYr9VmLgwBWCXmFELdaHUPUH66pECoMtkoUnFZ3M518ROs4
         ggBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="g01y/QG6";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h13si163202vso.0.2020.03.19.16.44.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 16:44:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id f8so1731485plt.10
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 16:44:10 -0700 (PDT)
X-Received: by 2002:a17:902:820a:: with SMTP id x10mr2291998pln.179.1584661448715;
 Thu, 19 Mar 2020 16:44:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200319214530.2046-1-ilie.halip@gmail.com>
In-Reply-To: <20200319214530.2046-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 16:43:56 -0700
Message-ID: <CAKwvOdneL8F_ZHBAzyb+VoJ+Z1FZp0VW8asGTu=g39TrouqAgA@mail.gmail.com>
Subject: Re: [PATCH] arm64: alternative: fix build with clang integrated assembler
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Andre Przywara <andre.przywara@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="g01y/QG6";       spf=pass
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

On Thu, Mar 19, 2020 at 2:45 PM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> Building an arm64 defconfig with clang's integrated assembler, this error
> occurs:
>     <instantiation>:2:2: error: unrecognized instruction mnemonic
>      _ASM_EXTABLE 9999b, 9f
>      ^
>     arch/arm64/mm/cache.S:50:1: note: while in macro instantiation
>     user_alt 9f, "dc cvau, x4", "dc civac, x4", 0
>     ^
>
> While GNU as seems fine with case-sensitive macro instantiations, clang
> doesn't, so use the actual macro name (_asm_extable) as in the rest of
> the file.
>
> Also checked that the generated assembly matches the GCC output.
>
> Fixes: 290622efc76e ("arm64: fix "dc cvau" cache operation on errata-affected core")
> Link: https://github.com/ClangBuiltLinux/linux/issues/924
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> ---
>  arch/arm64/include/asm/alternative.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index 324e7d5ab37e..5e5dc05d63a0 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -221,7 +221,7 @@ alternative_endif
>
>  .macro user_alt, label, oldinstr, newinstr, cond
>  9999:  alternative_insn "\oldinstr", "\newinstr", \cond
> -       _ASM_EXTABLE 9999b, \label
> +       _asm_extable 9999b, \label
>  .endm

Testing a -next defconfig build, if I apply this, apply fixes for
https://github.com/ClangBuiltLinux/linux/issues/913, then disable
CONFIG_KVM, I can assemble (with Clang's integrated assembler) and
boot an aarch64 kernel.  I think that's a first for Clang.  Wow.

For CONFIG_KVM, I see:
arch/arm64/kvm/hyp/entry.S:112:87: error: too many positional arguments
 alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
((!!1) << 8)), 4, 1

               ^
which also uses `alternative_insn`, but not `user_alt`, so another bug
for us to look into, filed:
https://github.com/ClangBuiltLinux/linux/issues/939

Looks like `_asm_extable` itself is a macro, defined in
arch/arm64/include/asm/assembler.h on line 125.  It's probably easy to
fix this in clang, but from a consistency with the rest of the file
(arch/arm64/include/asm/alternative.h) this patch should be accepted.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Should be easy to fix in Clang, too. Filed:
https://bugs.llvm.org/show_bug.cgi?id=45257
Thanks for the patch!

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdneL8F_ZHBAzyb%2BVoJ%2BZ1FZp0VW8asGTu%3Dg39TrouqAgA%40mail.gmail.com.
