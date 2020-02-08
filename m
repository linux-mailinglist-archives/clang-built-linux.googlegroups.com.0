Return-Path: <clang-built-linux+bncBDYNJBOFRECBBS6S7HYQKGQEVH5B35Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id E869F156359
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 08:54:58 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id cy24sf1461770edb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 23:54:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581148498; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ubryhfh4jgsDQipsiNBvf+c8ZTDTYd23hZpY/Hv7G03rG+HAM8USh9V7QZfnrhr2kz
         V6PwOteSwwlGnUambAaKkrtLmUWQWhl03U0TG5sG+y5gZGGaV3lGbOO7LANY/yW0BlL7
         paXDDG9pG2PICwxCRuo8zo90ReSM8eBlgxctzTPSB7Pz9MPUZK+TQ5vRsO9mrMjpwhVc
         L6VX73L/4GDW1ih3zCI/4Th+uVeHVEI99lWTvG8MyEelc/sJ7DE52vCaltAWwvMTEW9p
         Os3NRDqdHXxJWbPqZZcsRN//SrVIFT0QtvfILTKAj1X3uBbY6xsvUIBkTcKidFgrxs4W
         Ko5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GtBeXA+KD2IrLq/LTmhMeAVmFB3QB3ztdifY5rz3baE=;
        b=g3TtN9mTyoL50MBCVF8VvBhcX5T4fShca8l3IWC2S5vjg/TtxnqdSzT4dZWRmMuJKv
         UVUghRP+NQ0jB0xTxZUog03dyZ+leJEfU2/PrMZDIGe3d4qlnbWmvu7z9fFPUo4WwF2j
         ijdsSydKFYzflQETLfn8wmvKJGALgSOHLhYi+MrJ40eyGmSKrkOF3TKw4TKj9viVSXsu
         Tmziy2GlWpqpHchj8wZVP2ai6dJ5wzqIDLhNHRHwhrThQEBXljMILgGdeqE2KsC10bxY
         qL4sCZfcjGytGD+cAWIPxmofvp9++kprfIg+G2y6hR9wofWAaD9LDX+ZW74m9pK/maqK
         6spw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rWARtL0u;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GtBeXA+KD2IrLq/LTmhMeAVmFB3QB3ztdifY5rz3baE=;
        b=HbGubqtVchfjclif66bU+o6R2wbgVvPMlsUriCBmzhNYyuhlagQyrjDkbitoc5+F1b
         pUjT1YGrskj/36TeCwpk5h27xWTZ7W+2DgUyrNo/xJBfHrvbC1bRg8daIGIWGf8VaTKd
         mpQ08LB2qhte7eqgHuklXWQ9wDwukSUb3i7ca3cGLQpYcBE6iWkBpCdHL4+v9f6uKjqn
         Nb4YbR6/+ufS8a6rTHvbUTdbrkVD9Th6uCdCdNJP/YXH9lyN2FddGbiwL295k6xtzDp2
         yFTGW5jlnTJYxyGUJDzdR/Auzw+pyT9/utVERKw9j/yTp82+3mls3QmxUwnBcrhvMHmA
         0UyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GtBeXA+KD2IrLq/LTmhMeAVmFB3QB3ztdifY5rz3baE=;
        b=cmpkTpYYgpEYRUQiWjEIgXB2K/PkK4TYvE7WTrGDRvnpZT032ZlLl3b/G4KIsqx+KP
         4UB2fWFlfxuVuwQI774hGXayL/4400GIoaYtIdEAZfJle2f4r+szU/UeD46oA+pvSiXg
         XOWS+wnzehQW8Cx2H6dihd7qElmIpKL73Z9apde7CXzYD4QyOXmU+HJSgTYiSkrmaJFn
         m2Hgj8j02S/aaX3u718rPb52k7hm4Rgj5fp+jbZx6d1cl9JYCyzUqc4g5vlBZKmF95oF
         aobWsDPYtGzZc1EkP9xVfMV2bE1dwR2w+O3x8nx1d4V84ED25wOo0oh28u+5EkdrsrNy
         /o/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX74Qpv79n3mjK0AC5G8s5zzLgFyA/MQ+Jfi5VehZn5m+nFw9Cg
	watYDdfd0P9y/2W4fAGrBv8=
X-Google-Smtp-Source: APXvYqw+R7IdaAUAloYpZ+hVDPHX8Rh3Ihagjmz73N6463ejsGjBabcQ7ilNwZcnLrgsrgnftrQKSQ==
X-Received: by 2002:a17:906:ccde:: with SMTP id ot30mr3141779ejb.244.1581148491076;
        Fri, 07 Feb 2020 23:54:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8597:: with SMTP id v23ls1120963ejx.6.gmail; Fri, 07
 Feb 2020 23:54:50 -0800 (PST)
X-Received: by 2002:a17:906:4a97:: with SMTP id x23mr3096191eju.66.1581148490567;
        Fri, 07 Feb 2020 23:54:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581148490; cv=none;
        d=google.com; s=arc-20160816;
        b=mNIhzbe1duPwDHPe29B2xKYkJ8qAM51bDepsZ5VOVOvMNcWvD2GL87wVNld3Ha9keq
         SDf/klANtRAHOLzc/iS0p3gjcz7THIXAgohJcIV6SGR3p7x042LKQM2ty4FKkpTef6HY
         gPDWiRsqETKr4aSdj64RPqD+tmXnPniHkElEjt8WZ32GaAbTXyIxa8RVGA8KXxYT9Pl6
         /i88hgTrRgEWMIimrx5X99W0/N9w+gyucC3R846m3ru/VNIh7AuBv2Wq1TTvYTVSxtdQ
         azeoGJo0/rRnhXC7xeG3tHrhFvTnA2D+tYN58sDONs4O/bsbBwS1/gx1JyKJ75oYsO24
         0EDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7TqSOzSAKSsYvnnzVEi6urtzhXp7OVeHxDe+9KpIZTA=;
        b=rPtN1waAckdz9e0wqaDvAWpzCl8+B/nZNj7ERoXSfEEaSB066H/F7WFXOUGEymYLe+
         yQjeJ/KdCqCDDoiexhEVPNv1TXyE7vYF96J/3LLBvg/mvyoygHtmy2+wWA6NLr1t4bIE
         fSiakOlDcu6bao3NGSulW6fSUI0snofJZveM4qLp9A6cV2OW77qPfcLxT1kTfYy8e8CX
         N2OKU3ClvQWCucLPTum4I3ITpmmC3AJI01oM8oe6hpYu8kQrvhzbly6D3zVBmcSut6JZ
         DPZH82IflrJznaIR5ubewFQq1QLDY0wu26qK0+ufA4AZgKF5Y14xeE/jdYbJTYRyoEPk
         d1tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rWARtL0u;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id d29si86662edj.0.2020.02.07.23.54.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 23:54:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id t23so4765295wmi.1
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 23:54:50 -0800 (PST)
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr3328511wmk.68.1581148490179;
 Fri, 07 Feb 2020 23:54:50 -0800 (PST)
MIME-Version: 1.0
References: <202002071754.F5F073F1D@keescook>
In-Reply-To: <202002071754.F5F073F1D@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 8 Feb 2020 07:54:39 +0000
Message-ID: <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
To: Kees Cook <keescook@chromium.org>
Cc: Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Russell King - ARM Linux <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=rWARtL0u;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Sat, 8 Feb 2020 at 02:02, Kees Cook <keescook@chromium.org> wrote:
>
> When the uaccess .fixup section was renamed to .text.fixup, one case was
> missed. Under ld.bfd, the orphaned section was moved close to .text
> (since they share the "ax" bits), so things would work normally on
> uaccess faults. Under ld.lld, the orphaned section was placed outside
> the .text section, making it unreachable. Rename the missed section.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/282
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
> Cc: stable@vger.kernel.org
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Manoj Gupta <manojgupta@google.com>
> Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

As Nick points out, the *(.fixup) line still appears in the
decompressor's linker script, but this is harmless, given that we
don't ever emit anything into that section. But while we're at it, we
might just remove it as well.


> ---
> I completely missed this the first several times I looked at this
> problem. Thank you Nicolas for pushing back on the earlier patch!
> Manoj or Nathan, can you test this?
> ---
>  arch/arm/lib/copy_from_user.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> index 95b2e1ce559c..f8016e3db65d 100644
> --- a/arch/arm/lib/copy_from_user.S
> +++ b/arch/arm/lib/copy_from_user.S
> @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
>
>  ENDPROC(arm_copy_from_user)
>
> -       .pushsection .fixup,"ax"
> +       .pushsection .text.fixup,"ax"
>         .align 0
>         copy_abort_preamble
>         ldmfd   sp!, {r1, r2, r3}
> --
> 2.20.1
>
>
> --
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu8Wt-QX1%2B9E%2BQCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA%40mail.gmail.com.
