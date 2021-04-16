Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBTMI5CBQMGQE4KX3H7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E6C362A76
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 23:40:31 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id q6-20020ab02b860000b02901e737010257sf2089402uar.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 14:40:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618609230; cv=pass;
        d=google.com; s=arc-20160816;
        b=m5HOSicV+6LCfEi+3IwdD/kTmvNADMK+L3AKzB6ITFCLpB1O0S5QMHq3ZSGTFKjQFQ
         1Yi3tyRm7288H4kvuz3vamJmzRjb4s+CuypuC7GOiVcrjix12yr7KnPFFGh4WuJbfm1M
         /aLMO072+UN7VEhl8j8Lgqhsh3blywg3VuwGCLSBTSH7KTUzSn1YPuHoZoAky3k1I+Ic
         SeTBuUrtoPCoUtJZ2PuNCUybIOxOeSkxCw3R1qv2ewFTmTArJS54Rf4am2k92ZsMdTU5
         P70oEulyj+Ikv94mc09DZnTuVN3kr4ly1lj9inyXDV3S5lF1o9UYdB/x9zfoLs4KySWt
         qAlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=834eO/BqagKJeP433+WDCCju2UNU4ahI82xeh82k1og=;
        b=RUyIosnWfF3OCJbMBFBJK1COYmMlk76y37NSjU6UsndcDlymTKu/4RI8u3svo1zR8h
         VE/MVoI1Lc96zbLJgKCEUPzMoerHzkliPsrwdf8bjz/KbTwTubCvfP9R7YwuirManO1x
         oydUewIuJuCXPpuo7KV2a+h80OT39v28DKQTlBcosUvNlZnSJebLPuECQRRbVezA6ZXO
         0r9bpWVshSfrLCl8L3f4v2cmw5L/kW23hS1Ccy9P8HKJMz6+spWDw+5dOAnnrTS0Qq3G
         jbuDjcD4NTV5WgF776wlDeoeuaB9HZV2lgMkvcb/Eak5cmQD+SxTIwHIkdZGtsl6A1sD
         gxqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u+fyM+Zw;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=834eO/BqagKJeP433+WDCCju2UNU4ahI82xeh82k1og=;
        b=W0hegMaBAOUn6OG7rNHDv1BUFqHHp5PYifFudos3jCYBA9ZqtGCRtckCL6QqZaVB7i
         /y5n0Rj5keLI5Eztv3//XA4JYuDWcDG0gbACVY8qWVOjZ4tAvp2dEA+cat5S7BvwxyVN
         AQPtSzN9c7fLyjyyqRi6GoSyK74AVkLR8vYXTyKiEBnRU1fMWWjWzQsuIU2pkGQj1jUG
         4T0vmYtbLK8tdYFmm/gT0KvEaE0TCDR/hRmCJ5qHHxLiBwwunZq/fXd/MKATIJ5TmkDA
         X85LxLDJDEKeNNfTOOobv71474QUiuCIvjrLh6xuOUClG2zwhT6ucxrO6Ihe0B5RGtC/
         ujIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=834eO/BqagKJeP433+WDCCju2UNU4ahI82xeh82k1og=;
        b=aMyTpNa2RckZnak79/yMz+4E9s+FVip6GVS7WxpooqUf59C7inloUvtVxJnqHghA/+
         bG55+6b5A1WmMpj4gt4aZm5VroCqQbQ2iSXIIcKiz2PcEflEThvW7evHtSThQv4qN8oX
         2JHWztEp145UtSYHRVIsve00zPc5e/Kn6ualy59wQ4yTSuN8DJ59e3/3HIQnfA0BoTgY
         FABVSKzIjnwQHKNrbv5bBnVtIgLcqSmG+ktGOSc9/gL7NX1ykO1NjcQDa1f8juWK1uWH
         MUx5rglLXM8nQWDI88rp2DqtLsza/NyS78oyqwPwst+xFX/jQOnfhAJnwjRet4O0tqus
         rsBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YaMwgU+y6U4+zWtxh7o3Qh5xWYJAJeL9ybxMqxGv/Jby3mUI5
	46ldwO/RMETYyMrYkFNFAbY=
X-Google-Smtp-Source: ABdhPJz9H4qMKq+XTcPT2/WWpBswr9El7T6Qa4xMGc3fDNVj+XxmT/pCLG8GtfF1c96Vta5olAvgDg==
X-Received: by 2002:ac5:c968:: with SMTP id t8mr8955857vkm.14.1618609229949;
        Fri, 16 Apr 2021 14:40:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2016:: with SMTP id v22ls962213uak.8.gmail; Fri, 16 Apr
 2021 14:40:29 -0700 (PDT)
X-Received: by 2002:a9f:3230:: with SMTP id x45mr1251473uad.23.1618609229415;
        Fri, 16 Apr 2021 14:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618609229; cv=none;
        d=google.com; s=arc-20160816;
        b=LRFwYoVBDw0e+yL5SbWl7Pirwyc1qmSRLkn20arLwuVuqxKTzAMuVciX+NlADiSaDW
         FDzWBEK9bRFFmchW5xcyfdEx/yfFfJ+luGWdN8RwJLytOllLA6+WbN4sMPh/hxIgujVv
         nmvckzHC436J4FUMsWCVFOO6t9PkxllKHlY+Ls+5REF0+ipYLDp/cFiHU/dRgLFYgpjN
         eT0cgYymqLM2PxPFI5yr5+khlwpUbYUZ2gYROOeFi2HXCsGSpMnuV6s/SL15+3k5SBQ6
         kbYWVIhAUQzlvXV2yaAcCf8JlDUrYbk160yLlmEMCW8E62axs3Q8pBmbcXs/X6vlZGDh
         oKvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p7j7YD4iVE/Z62KME0g++6YLX424KCuhg/eYuxmEXjA=;
        b=tR8rAead/MHUcrxaJNUMUNeIHFLapepTGRLdRu5DoXKRa5xFqU5B87jTXTuFP8tsYZ
         MlCssA5f5yekTgYyZcUPB3wHu8XMvjmdBpLR0QXrZlB9JBiO1yqrbn0FNy+ekrU2FlF6
         n1AglZtmU7b5F9+ojI8HYQ7rme5HSsyFtxecU+DCgzv3r8HlC0clibVODDO8JwWV59bg
         YPQBJmnt4BW5IRDWMzDUhy81KT7tFxkTOj5Sn3O/2JKRoKwiAku3IeG9mB6QRVCosnvE
         /jPfS59880EUCbLKS0CnRtr9zyPXTcuiZswyShBD/Hcu30EwM+6SSrNT5ATYMu4+7DQv
         a98g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u+fyM+Zw;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v23si707426uak.0.2021.04.16.14.40.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 14:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25AF9610EA
	for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 21:40:28 +0000 (UTC)
Received: by mail-oo1-f52.google.com with SMTP id 125-20020a4a1a830000b02901b6a144a417so6433031oof.13
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 14:40:28 -0700 (PDT)
X-Received: by 2002:a4a:b997:: with SMTP id e23mr4811719oop.13.1618609227327;
 Fri, 16 Apr 2021 14:40:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210416181421.2374588-1-jiancai@google.com> <20210416203522.2397801-1-jiancai@google.com>
In-Reply-To: <20210416203522.2397801-1-jiancai@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 16 Apr 2021 23:40:15 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEBR7MMiXyOEHO+si1Fp7ZfzqFD-ks-tS=_3ncw_RmKVg@mail.gmail.com>
Message-ID: <CAMj1kXEBR7MMiXyOEHO+si1Fp7ZfzqFD-ks-tS=_3ncw_RmKVg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: vdso: remove commas between macro name and arguments
To: Jian Cai <jiancai@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=u+fyM+Zw;       spf=pass
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

On Fri, 16 Apr 2021 at 22:35, Jian Cai <jiancai@google.com> wrote:
>
> LLVM's integrated assembler does not support using commas separating
> the name and arguments in .macro. However, only spaces are used in the
> manual page. This replaces commas between macro names and the subsequent
> arguments with space in calls to clock_gettime_return to make it
> compatible with IAS.
>
> Link:
> https://sourceware.org/binutils/docs/as/Macro.html#Macro
> https://github.com/ClangBuiltLinux/linux/issues/1349
>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>

Please remove this tag - the only thing I suggested was to drop part
of the original patch.


> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>
> Changes v1 -> v2:
>   Keep the comma in the macro definition to be consistent with other
>   definitions.
>
>  arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
> index 856fee6d3512..b6faf8b5d1fe 100644
> --- a/arch/arm64/kernel/vdso/gettimeofday.S
> +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> @@ -227,7 +227,7 @@ realtime:
>         seqcnt_check fail=realtime
>         get_ts_realtime res_sec=x10, res_nsec=x11, \
>                 clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  monotonic:
> @@ -250,7 +250,7 @@ monotonic:
>                 clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
>
>         add_ts sec=x10, nsec=x11, ts_sec=x3, ts_nsec=x4, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  monotonic_raw:
> @@ -271,7 +271,7 @@ monotonic_raw:
>                 clock_nsec=x15, nsec_to_sec=x9
>
>         add_ts sec=x10, nsec=x11, ts_sec=x13, ts_nsec=x14, nsec_to_sec=x9
> -       clock_gettime_return, shift=1
> +       clock_gettime_return shift=1
>
>         ALIGN
>  realtime_coarse:
> --
> 2.31.1.368.gbe11c130af-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEBR7MMiXyOEHO%2Bsi1Fp7ZfzqFD-ks-tS%3D_3ncw_RmKVg%40mail.gmail.com.
