Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM4DRTXAKGQEHF4KHNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id AB95CF1C67
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 18:24:04 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id w69sf22345539ilk.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 09:24:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573061043; cv=pass;
        d=google.com; s=arc-20160816;
        b=WiHps52J8+IK+Xexv8vfyWQ4/pJmdHqDF8xsaIpgeIlndySH0W1m7QHAweVRe9YxbG
         Y+Dup3hM1yDfNjQJXX32ULYPVLY1GvnVsU5rgBkCY5dtY3nOMbzuNn6IjbquFmngghRG
         fDChepraeewniE0iZFaRPM2KpX/xPB6KfbSAcVkuBsVXuLNI5n+r5M5ZfTzLF55ffe/6
         azotp9gHbOM0FuWvMd1Ku7HmVEWIVwml1BAFNaZdnp4yyTN5l1g8HSyhlmfr+xxrPhSN
         zL8U3v77htf4M9kJJX0+4444lUeh0Ddmb0sSHRLYazNQM3A/vdVy7tJA9ffReXVB/tGz
         ozbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YyBMMfxqorvJoEBCD024xyndzPI3oBGNtWCLAqFSQdo=;
        b=Z0tdUbgrUcu/JffGlS3qe4W7BhQcnbEsruaPiIr14aB7Lt9GGo4i5ej3UoGBVGr5wK
         VIqxiyK2MCisEJOKJrPpdAzLCo3rXQ+B40tKoxEMDXuSNeAvIVG29MiainpzD8G5a1CL
         gwR5ifjvroQ1rdYhx6z303iPJt5EgOGsqKGLCY56vV6n1GZtt26iyh1FNPLYhfSN6i8B
         +P9E94vzsjHmM6bhP/ux4fb1zz0Dx/f5y5rv9T04Aa2mqmkMnv2o3XQFtSm06eyxlfA+
         Klxvh/zbUmXsVz0Gtxc3k1qesGqgEeNeztQFCA3agpEw3NRU5pWHVyCpXeuH2z3Q+L0s
         yFEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v72MaS+E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YyBMMfxqorvJoEBCD024xyndzPI3oBGNtWCLAqFSQdo=;
        b=YKVIRX3QMY3RpQKAOEyjJeBu6NAqf0b3mLlA506Qj7Qio4WH8SHrgcMITLCPUtTu7N
         pJuwpZPGTtsDwkKsX2hPJ/tQ9Nt68WiZYvHHUe+eKreN/IZeDBvXG+AzQ0bKmcQwPEMY
         /xrmz5WkPK9TGXwrt2P5U7SLL+Rr3BvLX+WA+hzuY2oLVNF6Qdw2//FeJgElYrcW7H6o
         jE3peLzJvToF8d8I1sfO4aLcfKdM19JUZEyL8/H2qpb+wUS/8XoDUAv+G86fAZwCPb1c
         aJNRJKYjIJuLcubJzZMyJCpMHPRt9akax/cIvnD/8lALaFW2Yzj/KCyvrO/1jvJE3rzp
         Gadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YyBMMfxqorvJoEBCD024xyndzPI3oBGNtWCLAqFSQdo=;
        b=g3w/eh16X78GJxsX36wKRz1m7lXefKTPOgrF5VTwoDtAUiut6/vaj0XnnY4vpwErzU
         w8FISaIeoij7vShlX3BQ0cwk9Ig/c8+q85uZpGigzuXwHaJpcXcEscNt+U3wfw4HXuC/
         d6RJVcXgQdlhqouaF+TT6HC3INsKPnTQiUSOQKB96w4EB56WEozVIY/odu7GN4mLwqHI
         eRQ04QVap93xCpgyx2ArMWi8zt9enuC1LMHl/NFo6meXPWgNB9IH3TTrNFAtluonc8qt
         JnKVy9hOnoTZ64Q5cwVUdJaXWFGqD7bxSJQfmp+kRPibIfMzt0OSCuCiXcu63f4VA0da
         CzwA==
X-Gm-Message-State: APjAAAWy8oP5hm1eeZPVVHSFYcq1I74a2e0hLqenAOs4oE8Hi/3gdHv6
	bfqC7+eKIwngefoBiH2DMIE=
X-Google-Smtp-Source: APXvYqxslFypYcLvrcwfqUCojRPtvH5+A9xK+RmMd8diKYgp41YilFWeYVOof8Z5jr/H4fZ1TYv0rQ==
X-Received: by 2002:a92:d608:: with SMTP id w8mr3815752ilm.308.1573061043371;
        Wed, 06 Nov 2019 09:24:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9145:: with SMTP id y5ls445171ioq.11.gmail; Wed, 06 Nov
 2019 09:24:02 -0800 (PST)
X-Received: by 2002:a5d:8d14:: with SMTP id p20mr21562708ioj.216.1573061042727;
        Wed, 06 Nov 2019 09:24:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573061042; cv=none;
        d=google.com; s=arc-20160816;
        b=I3ntXqkq2txS9X/aj4RSneaOItbrbCuAffeXnxMxAS/YCKDpq2P81mAelsYGzp8NoH
         v8Owp8KlcbSw9XDosp7JHZHyK7WAzpqUibnC8VmF5FGZi7/MLXWkwjXaLI/L4zPMHkOk
         BnVhLBbxI7zEzsU9FEU7d0zS6RaF6ZBKBtVhnf5gxTKc5Awee3U8kc1dxTMT7P5NbBGe
         Fxo6NKPkZy4aSo7S0CB3r80DtHJx+b0khyQBMOAUV/9p3s7Cqb4OCp1zD+2Xf0YtOdil
         V6WgUtenQFki515hBLzxKwBivbu56c5kkMA/5GY0MwRZybuHVbaPrv7bnk+llrePUCRH
         nsug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L53qqYgrERAW9zaeKnbt4pvYYWM8Rc69Hp8/MLhvFjk=;
        b=N5mKdNXFsM+wvHLLoYHK6qNrsYWveiWaJrGXJi5Wx0QqqsTlnkBt2Zty+OHwxNS+8v
         awObshEC2HXhFwObo3Puo61nfyun+d9uf+wYcmC5pqX4Lg/QYdNbfioUpABuRYOd/k5X
         TIZEBUXrFHIJ+VCjGDWdLmAxM9/n+5sQaMwBcx9cy4Xit529ezxS1fgunlQt/yG4r/hv
         q7GSL6jNZ1qi6WpQF7QMTvP8dDO6KNXmcZtJylGqftZGYQ71VemgRFHYLnXQMpXlqSgZ
         ghvNDbrSgv481NT5mV5DthxVWlw3juuMjoBwpXv8XFLif+WJOup52mvrFn5ZpO9rRYv1
         IBHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v72MaS+E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z78si1703132ilj.5.2019.11.06.09.24.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 09:24:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id o9so5067386plk.6
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 09:24:02 -0800 (PST)
X-Received: by 2002:a17:902:8498:: with SMTP id c24mr1141086plo.223.1573061041582;
 Wed, 06 Nov 2019 09:24:01 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
 <20191106120629.28423-1-ilie.halip@gmail.com>
In-Reply-To: <20191106120629.28423-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 Nov 2019 09:23:50 -0800
Message-ID: <CAKwvOdnJR3vbHd6Z0eLK9CppABWFL4E0Rjh6SzDN6U6mShS2qQ@mail.gmail.com>
Subject: Re: [PATCH V2] x86/boot: explicitly place .eh_frame after .rodata
To: Ilie Halip <ilie.halip@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v72MaS+E;       spf=pass
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

On Wed, Nov 6, 2019 at 4:06 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> When using GCC as compiler and LLVM's lld as linker, linking
> setup.elf fails:
>       LD      arch/x86/boot/setup.elf
>     ld.lld: error: init sections too big!
>
> This happens because ld.lld has different rules for placing
> orphan sections (i.e. sections not mentioned in a linker script)
> compared to ld.bfd.
>
> Particularly, in this case, the merged .eh_frame section is
> placed before __end_init, which triggers an assert in the script.
>
> Explicitly place this section after .rodata, in accordance with
> ld.bfd's behavior.
>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/760

Thanks for following up with a v2.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in V2:
>  * removed wildcard for input sections (.eh_frame* -> .eh_frame)
>
>  arch/x86/boot/setup.ld | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 0149e41d42c2..30ce52635cd0 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -25,6 +25,7 @@ SECTIONS
>
>         . = ALIGN(16);
>         .rodata         : { *(.rodata*) }
> +       .eh_frame       : { *(.eh_frame) }
>
>         .videocards     : {
>                 video_cards = .;
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJR3vbHd6Z0eLK9CppABWFL4E0Rjh6SzDN6U6mShS2qQ%40mail.gmail.com.
