Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSESWL6QKGQE3AZGU6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id E091B2AFBDA
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 02:00:57 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id p3sf2207667plq.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 17:00:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605142856; cv=pass;
        d=google.com; s=arc-20160816;
        b=KBlZ7Gk9yHc7ESYVnpgm2dADTdymTEkDl/iOWn1D0ASGuh2NQCpvWycLeXzscmlMfE
         o5BlhuHcas2hPMgoBkoM3ien1JEdpr2eKFDmNA6ISAuBEOGBwD/WiO9x1sHjyI4kwB0o
         A922QBRVKdHjWRcg87UAwxP+z89olqeP24F/QJ0qx2x+kPqIlcZk1RYFODdUqqYbnFPa
         l40k4HqMdEC+xHKZ9AnOXa1klqh4f8eT5dQo5eFAsQzu3lqdE7wa6Ypg+vF/n9IrtfOG
         y6lOFIkyLo5Pfb0bMtTjKz/+OLpTpNk3JSnZf8/+la1puxVUE4+4JmfDqXJZTBWGik3V
         ziHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sq7FwqAvlO/BWJOfnySmiAZAGUuma9HfZ/8HC7CRCGg=;
        b=HGppW6KK5KgdXfQnz8zTw5tiHy4FYWXO8gGx3I3QG+BKrO7iOSFLAAK13hUYOhsoNQ
         oVJfRVh7H7Ze+eHEfWtr81oQt2Fk3DG6ez1O1iZ/3ejpRRiMs2lTYTS746wZab3RlQ2I
         Th9UaWP/g2Astlq2Zm4l6dex4J4doF17yEyFHzHVg9jAnWhJxsRil6xzKMC4Qp5z71g1
         QOKjeNEy57NTSVjK4ztb3bwPTmXi6oEWrLJATxiUUUAOqCTzZw5ItZS0uMLJR+bN80Yb
         LybAgkf0lg6pxhwD+0ycoR7J8nA3R1X/giSvMEl7sLYar3MY84LrF29R+4q/Lx3/roR9
         2maA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E2SDleIw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sq7FwqAvlO/BWJOfnySmiAZAGUuma9HfZ/8HC7CRCGg=;
        b=ZMExb9ws6EK22cMdt6iXmf1KySjKBa7vWSkHYkyuHlajsJXmUB5LQ9Z3z+qGdzI1Qf
         IMYgJgBrI25nMAwJvW5EM95EVecdgB8FgMM0/mAy3eRIvYxz4qEf1MX31Vwu4YmUG5zC
         yenMGPiGrruBrquXIlxT5Rg/7dRXokV2cpREmaFQGucmbtG3/FWy1BNoqEhCe9WlUEUS
         e1RwZz6b9K7Ow+LNGfNk0u2bIUbve1U792mpo6ANO1Bp8U98IrjHcEHIBoIiIffhzBHL
         DdO0GNxEEt3E8Q/fioNgvjDc8ufEi/QEVJsZSu9Prg74H++dzyBzXWPbKwiBhpGVvjpu
         5npA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sq7FwqAvlO/BWJOfnySmiAZAGUuma9HfZ/8HC7CRCGg=;
        b=TuB17d/nwCTMLtoxQnfsDLQu4oGatNZkPvyyEESRD4Y4b2plv9gogOsJnmk19+XWQN
         gfTrbxI5K/LzR3ONzIwRpOTPcUaFKjlcegwYpaKS7PxYVDvGw160aJNRA21DY3fGMHpe
         xQPtShGEu2aFwpx7HdZfTMUiAHxb4rGja/TulUVr7ihfgHwROW/3XAcToRDIK32Qdoi6
         M9b7f9iHpXIVVBB1de/zixOibRLoA5OnlUDc/4unS8J4JUBgDZNILOmGyhVGzIV4Dn8h
         /FJxKaFwu3y+exmbGPKcc4GMaeRI7wwXoiAP+G5q2DEJSgh8cMBKZKsmG25zWYQPUp+O
         tBlQ==
X-Gm-Message-State: AOAM53093zDJy5GV0+4KAHZOm8YpYaqeJbH3K1by0h6Ga53PbZlX6jgR
	aBJfmhCmI1pmKjmgW1aSTdw=
X-Google-Smtp-Source: ABdhPJwpq7/Ym9JRMv+8gxvuXAd3W8GuA3Ry84TaEU69o8QhGoJggVsmJrZVaG6rtd3DiDgQnmxsSA==
X-Received: by 2002:a17:90b:397:: with SMTP id ga23mr6334841pjb.151.1605142856208;
        Wed, 11 Nov 2020 17:00:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b82:: with SMTP id y2ls612587plp.5.gmail; Wed, 11
 Nov 2020 17:00:55 -0800 (PST)
X-Received: by 2002:a17:90a:6288:: with SMTP id d8mr6799738pjj.210.1605142855654;
        Wed, 11 Nov 2020 17:00:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605142855; cv=none;
        d=google.com; s=arc-20160816;
        b=tgSAIYF4E3IApF6icgKoQEXOk0k6ObjUcXnfpP0bd1ZiLiqOfAXC1VvRGN58I4fU3P
         VbIAxdXCNqG/zgVpvzpbrSKVvy6FZO/4cwVP1PFppi5LMwvY1/7Heev5TK5c3Y8MNT4c
         2vtKCXVinBozVdoHyYXxP57IE2f310xe+C8bRcn/LPzMjNvhXb3XAJR166VEj/bxKIkU
         0nooEpU5B08R9nwBjnJqsbix9Oj3+gCzEJXGRrQz1yDDeZUW7RekVPIxgZ7U1J8q0WOj
         vl5flIYGTmbIz2SJ3WRpGyEKh05zqkB1pqnzEHpZkdGc42EErJ7QppmPH1O+vbWyFGuJ
         XvtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iWJMCBasD7Kt3omEYiLg083V4MvggRKPIB9CJhks3NU=;
        b=YmurKchonxWPDUugXYzAEZbeut6pfW/CPB94Kk2UC6P2RVfhL9fcg5CkWqUYm1PRaU
         jdOLhfbCpEPXY8blxTYNh7S/obbXJNTNp4CLVVuaHNmHHfrOJKdhGlGVJsPZ3W/vsA6N
         f+NJTLd42uexlvpzoUMTv1Xgx83Srn5NHmISBNEHFSm2n+8OhoZO5DX1FX0NZtmA+qeh
         yqcufLZSyGSeqV1mRGPcLfRhzqhrfVsHtNT0p6jJA7Jst+vcjXNJ8xYffclwVAj1ewhn
         5dKS6+kCiQVTkgEM3XCQr29skutV8GcDzYr8pFEEnAtVJSc3oKSfb9xtW9h4m9M7j1DO
         hTaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E2SDleIw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u133si205899pfc.0.2020.11.11.17.00.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 17:00:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id e7so2894400pfn.12
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 17:00:55 -0800 (PST)
X-Received: by 2002:a62:ed0d:0:b029:18b:78d:626 with SMTP id
 u13-20020a62ed0d0000b029018b078d0626mr213230pfh.15.1605142855176; Wed, 11 Nov
 2020 17:00:55 -0800 (PST)
MIME-Version: 1.0
References: <20201112001422.340449-1-willmcvicker@google.com>
In-Reply-To: <20201112001422.340449-1-willmcvicker@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 17:00:43 -0800
Message-ID: <CAKwvOdkDG2wt=ZT93GT7r60_qXn=tdW_zWiJ1Gr5JVdRvcU8uw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Fix off-by-one vdso trampoline return value
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Andrei Vagin <avagin@gmail.com>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E2SDleIw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Nov 11, 2020 at 4:14 PM Will McVicker <willmcvicker@google.com> wrote:
>
> Depending on your host nm version, the generated header
> `include/generated/vdso32-offsets.h` may have the bottom bit set for the
> thumb vdso offset addresses (as observed when using llvm-nm). This

Sorry, the commit message seems to imply a bug in llvm-nm, but I don't
think that's the case.  If it is, please, send us a bugreport.

$ aarch64-linux-gnu-nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
00000968 T __kernel_rt_sigreturn_thumb
00000960 T __kernel_sigreturn_thumb
00000968 t VDSO_compat_rt_sigreturn_thumb
00000960 t VDSO_compat_sigreturn_thumb
$ llvm-nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
00000968 t VDSO_compat_rt_sigreturn_thumb
00000960 t VDSO_compat_sigreturn_thumb
00000968 T __kernel_rt_sigreturn_thumb
00000960 T __kernel_sigreturn_thumb
$ /usr/bin/nm arch/arm64/kernel/vdso32/vdso.so.raw | grep thumb
00000969 T __kernel_rt_sigreturn_thumb
00000961 T __kernel_sigreturn_thumb
00000969 t VDSO_compat_rt_sigreturn_thumb
00000961 t VDSO_compat_sigreturn_thumb
$ /usr/bin/nm --version
GNU nm (GNU Binutils for Debian) 2.35.1

Would you mind amending the commit message to not imply that llvm-nm is broken?

It might be of interest to find out why the host `nm` was invoked,
rather than $(NM)/$(CROSS_COMPILE)nm.

> results in an additional +1 for thumb vdso trampoline return values
> since compat_setup_return() already includes `vdso_trampoline + thumb`.
> As a result, I see a SIGBUS error when running the LTP test
> syscalls.rt_sigaction01. To fix this, let's clear the bottom bit of the
> vdso_offset in the VDSO_SYMBOL macro.
>
> Test: LTP test syscalls.rt_sigaction01
> Fixes: f01703b3d2e6 ("arm64: compat: Get sigreturn trampolines from vDSO")
> Signed-off-by: Will McVicker <willmcvicker@google.com>
> ---
>  arch/arm64/include/asm/vdso.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> index f99dcb94b438..a7384379e8e1 100644
> --- a/arch/arm64/include/asm/vdso.h
> +++ b/arch/arm64/include/asm/vdso.h
> @@ -23,7 +23,7 @@
>
>  #define VDSO_SYMBOL(base, name)                                                   \
>  ({                                                                        \
> -       (void *)(vdso_offset_##name - VDSO_LBASE + (unsigned long)(base)); \
> +       (void *)((vdso_offset_##name & ~1UL) - VDSO_LBASE + (unsigned long)(base)); \
>  })
>
>  #endif /* !__ASSEMBLY__ */
> --
> 2.29.2.299.gdc1121823c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkDG2wt%3DZT93GT7r60_qXn%3DtdW_zWiJ1Gr5JVdRvcU8uw%40mail.gmail.com.
