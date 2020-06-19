Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5G3WP3QKGQEPVLDHQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC46201844
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 18:55:17 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id e22sf4827005pgl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 09:55:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592585716; cv=pass;
        d=google.com; s=arc-20160816;
        b=N+ALekvbC2aDhfmo/c4hCCAXnf0wUANekH/UwoYWCK/RqVAYwHhsUCbz7KJ+TkG86F
         NxKC4+Oxlk0R81DYiY8xtnL/3GLkgVVSQm0yj49598d1p7J1m9Iiy+2OpX7/FoHjZbOy
         a7ZufDvBysSfmk8NIY63Yko3lmdAEqBD7FLmr848+E2CgXxoVMkKi6mBDw9DNro/WPmv
         RBPYfhmp4tUYsFwC3HlWqX3RxGZulYIDIET9bXbFgrkGSDytvnLQyD4g9vq4xjb8AetS
         QSfeYrhuMyisaGaqD0bolkpKTqUQ8dmlIkx0Isbd6ZMcAmyf6RTcCphdAh3wa3MqYq0x
         Yv5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8gNmGrlXo6YWHMSVFzveTjgPfewW3Te5AmEglgHcIm4=;
        b=ySxxy6tdQQYkXwKE0G/nUV26gK7FbtqVMlTwP8LZSu2KbEZWkL1rOrnfSak/mrHaU4
         vQwOJQmFIRzx4EuojmPQgiN2+YesqUY+Kj30J92ZxIQX+pGo0H8HiU4eaCqeObUgF9kU
         18I15pb8AQU0cPdD/1sy3wVh1z8yFQaaOCxQAtOK746YMASgHaHAdwNHp2fAuWqR9W+a
         v7SyGe7gm5IcsVcXvtf1kHGpRV2pJ+mJQX541v+VW+m/PkNO11/MLSzGPTLUTZlCeHCD
         DivCn8axHdQkgJtqW+28ikQSh/S/xEH1Ukp4Gr26mAbGH34RPRhxIHGaENtpAFzqj79p
         mK2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XAWPPWUj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8gNmGrlXo6YWHMSVFzveTjgPfewW3Te5AmEglgHcIm4=;
        b=Ny8PqXc0CMUvDU6CuhvNcLWuW2R0CEVOpZxBt/jHOem+bzudW3iShe9oV5R5ebH2G7
         WZHoYFjngitCC7/EAvbaz0SP05FjzoYDJf02PlIHjgWm1hPQDxJXSnz8OJe8yktmWvVe
         oBnRrLlHC/ZJTyZSSXOmYj7Jkln9P1Kd4+MQRyEwGOVuFS7vlINZP8GieFJ9ahOdf91H
         rTrAq8Qg3UP+ul2iWZYkCxevnjzQndgo2/PUqFNJkwqjiAoSzCl/LLWBIb+dr790INTW
         9bm3q5UwRdQuQKkDp/eas5IGbgJEuGn2fNScjXXAxIWk0T1sAlibGEkKlok7J/ChQf1s
         JmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8gNmGrlXo6YWHMSVFzveTjgPfewW3Te5AmEglgHcIm4=;
        b=HkDvO4wHY1SngUnYcdtmoNfsxL2XZdau82RQFNWe0kTtlMBwjBOMp0gJHOro6Gq3qL
         pTZM/ZPJ6pb/XcieogupVBsnrj+U3euHPene5Pf12McA4JHt6tDRHtXSCb9LleDIvaLP
         Dqv4SEk5Vy/zIH0lUCc+78C+jCMe6Q8zf9LMTpTxq7u2R53xkDVRSJXbVwnGkOAY4e6f
         ez2wGEDdVnEl1AorA2N4r8PGiGNdem8vazdFzXp6Hp4ikxhO1iJ6C88Hy+uSoqVTxJb5
         Uixb4DpC0Q6xbzEqET1PkdQ13Ery2D6ogp02cTvCEqu/dxzpSn6qG/HCt1kraq3sC+II
         LSOw==
X-Gm-Message-State: AOAM533f119ICpj1PMn5PzXavnjJQxQ1uHZUHffnbAzpQOKGjuQEBOEx
	b3vhN1gU3KhC1dsm7vYDAOA=
X-Google-Smtp-Source: ABdhPJxJwQwHNy175p23PRkpi1dgTZYe6vrgS/+mE3cvcDBaIiJDfc++rZBjA+1toQ1MAXDpO7ABag==
X-Received: by 2002:a17:90b:18c:: with SMTP id t12mr4410894pjs.53.1592585716284;
        Fri, 19 Jun 2020 09:55:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a84:: with SMTP id w4ls3108505pfi.7.gmail; Fri, 19 Jun
 2020 09:55:15 -0700 (PDT)
X-Received: by 2002:a63:e153:: with SMTP id h19mr3899722pgk.167.1592585715880;
        Fri, 19 Jun 2020 09:55:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592585715; cv=none;
        d=google.com; s=arc-20160816;
        b=af0kYze+vCdWKyKA0TkaPTXMWSQfXE0ONPBWc1YWP81hfGifh8VZprX72jD2RkqdfU
         +Cw0M5D/duqhTOHaMahw4mhR6xy2f7TWuZciQkYnBanA/b2rHlIUUi65fy7QzppyN0lE
         qD5NdaccK/MjlpXEmhVEkVFfN7FDgruyLVaM6uvGvhiYD7Qc4Ps/MzzNg8jAorJg7KvH
         +qhq7Xnm3bEBpIa3H48VewsBVCPTI/dg/IeqAAG3Wye4HiXNfBn5pWKwooIxRit6WuvM
         GnsQ0A4gH8BERucJZHBLsIkkm1VBeoFyoUQWBZlIS1ELasaW29Mk2TetfBZTBoZQ4YoD
         Y0Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7y7t2icJN/GWPUzIVRaSjnDOm7HE/CoO/x4Xxmj7FZA=;
        b=U0NKn85J0pNiPNP96lPfO2GuTZfvLZAB+3Xlb9Ay0MCgIAMX8XZoQs4vxyKntye6vl
         BXxNkvFTcUIZxbPQe9o8QKAFc2RrloZC3q0wpYOOV6B1JlpbOS1jZPd7/1EU7UpviMOP
         nvzj1z5oHQ0j4cUxIzZYGkSWmouG9iamQp6gJ0KvMRZk7L1yN+GhffpYLIeHrjR1x1HG
         hJXwZ7yrShvIAPPWA81dhHqyJctwI9MAHZrA/JnD+amJ75wY4SdMuLPjxqOC0yb0aAsS
         ckZW7T1JUxnoGhIZJc3cNhaYqZrZQ6bwPCLGdnrXK6UWmaDxEReaxg566ofz30yAjWnY
         qzwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XAWPPWUj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d16si320810pgk.2.2020.06.19.09.55.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 09:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id b5so4728281pgm.8
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 09:55:15 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr3914935pgh.263.1592585715153;
 Fri, 19 Jun 2020 09:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200619123550.48098-1-broonie@kernel.org>
In-Reply-To: <20200619123550.48098-1-broonie@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Jun 2020 09:55:04 -0700
Message-ID: <CAKwvOdnAamgwD8UKuxMsZtmAWnY99TwwCQRcFoHBzAmL2U+W=A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Depend on newer binutils when building PAC
To: Mark Brown <broonie@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Amit Daniel Kachhap <amit.kachhap@arm.com>, Daniel Kiss <Daniel.Kiss@arm.com>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	KernelCI <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XAWPPWUj;       spf=pass
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

On Fri, Jun 19, 2020 at 5:35 AM Mark Brown <broonie@kernel.org> wrote:
>
> Versions of binutils prior to 2.33.1 don't understand the ELF notes that
> are added by modern compilers to indicate the PAC and BTI options used
> to build the code. This causes them to emit large numbers of warnings in
> the form:
>
> aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>
> during the kernel build which is currently causing quite a bit of
> disruption for automated build testing using clang.
>
> In commit 15cd0e675f3f76b (arm64: Kconfig: ptrauth: Add binutils version
> check to fix mismatch) we added a dependency on binutils to avoid this
> issue when building with versions of GCC that emit the notes but did not
> do so for clang as it was believed that the existing check for
> .cfi_negate_ra_state was already requiring a new enough binutils. This
> does not appear to be the case for some versions of binutils (eg, the
> binutils in Debian 10) so instead refactor so we require a new enough

^ is Debian 10 what KernelCI is running, currently?

> GNU binutils in all cases other than when we are using an old GCC
> version that does not emit notes.
>
> Other, more exotic, combinations of tools are possible such as using
> clang, lld and gas together are possible and may have further problems
> but rather than adding further version checks it looks like the most
> robust thing will be to just test that we can build cleanly with the
> configured tools but that will require more review and discussion so do
> this for now to address the immediate problem disrupting build testing.

I think that's a fair compromise, in the interest of immediate relief
to KernelCI testing.  If we need to be more precise, we can look into
feature testing all of the build tools (version checks would have to
check versions for BOTH sets of GNU and LLVM tools, so feature checks
might actually be simpler in that regard).  I think we can cross that
bridge another day, reprioritizing if we get a report of PAC not
working for some particular mismatch of tools.  Given unlimited CI
resources, I would absolutely test random combinations of GNU and LLVM
tools, but for now we're mostly testing one or the other.  Thanks for
the patch and the revision.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1054
> Reported-by: KernelCI <bot@kernelci.org>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> v2: Update comment and change to check binutils version except when
>     we specifically know that the compiler doesn't emit notes.
>
>  arch/arm64/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index a4a094bedcb2..66dc41fd49f2 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1518,9 +1518,9 @@ config ARM64_PTR_AUTH
>         default y
>         depends on !KVM || ARM64_VHE
>         depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
> -       # GCC 9.1 and later inserts a .note.gnu.property section note for PAC
> +       # Modern compilers insert a .note.gnu.property section note for PAC

It can still be helpful to note compiler version numbers (GCC 9.1,
clang-10).  Someday those will be ancient history, and the kernel will
move beyond support for those toolchain versions.  At that point,
having a comment makes it easy to `grep` for `gcc 9` and find all the
places in the code that can be cleaned up or simplified.

>         # which is only understood by binutils starting with version 2.33.1.
> -       depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
> +       depends on LD_IS_LLD || LD_VERSION >= 233010000 || (CC_IS_GCC && GCC_VERSION < 90100)
>         depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help
> --
> 2.20.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAamgwD8UKuxMsZtmAWnY99TwwCQRcFoHBzAmL2U%2BW%3DA%40mail.gmail.com.
