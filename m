Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWUV4HZAKGQENEQTBDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F30B172BD5
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 00:03:56 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id d22sf5873989pjz.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 15:03:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582844634; cv=pass;
        d=google.com; s=arc-20160816;
        b=XklIbC2Te3UdhEnUNFPKJe8JV2B5f5f0R2SMZaK8j2anaZSMDtQz80uacHgspqTdCf
         kOYVISrbzFAJ8wkdGU45APvrDK+jc7mgyTVQcDikDNkEkCKMJAhWcFCDoXoixQ58SfQ4
         G477uFLUitjAhTLXOWIlE4eOoqhHQ8LsjPkHobSqWChpp6obEFvDwgl4QbHX5kxedGs/
         aXMP4HvB4b/L9dzG8E4RsyAjTgly3zjeNS6YkLy1dsnsaquEOO+HR2mgcBi8VdYGektS
         Xfm4JhOgl9OrCOLMpVB7nE+68ti6oXkQV81nTJNmUmnoC7iWconzC2XgZ2rlruZrwIEi
         KLRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GC4n57WGMEdbaEj2mAR3l0Wy91eyiZrWvZxRr4ep+jo=;
        b=SIDOybPKSg/NiX4ChsAEgMnyKfyJPnRTuGrrt5cezhyKkxQ8ZJ9C5q7hCjLM8Rir3m
         V0ZR3iQRMz7dX4gijqym2QO8ZrdG05VQI2bBCZfl9tnc6jjgJmkTl7/IFMqqgf3VEo4M
         Yp0RGvC9wzpQCYQYmEfC1xMyGEgQY5D1Q7m7r439tTzy7Pv1ZmauK8m3tew7DAp0xDgK
         RzQvUIHtR3wzum9kcVuCmv2WBr4C2D0rrr1XLdWzoSdyLO6/Jcu9uGq3YQr6k6luRt/y
         c4Z+l/VR00ofTmrKLEj3w4Fagy6M95GdwL8ZEK45D0UIkmPXTZpVX2VQ/wJdx69A5VUX
         O/xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TyZ+g8V1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GC4n57WGMEdbaEj2mAR3l0Wy91eyiZrWvZxRr4ep+jo=;
        b=Kyvdz/XTxE7HJJ6dnCGm9cm7wr2B+CaC/Iyxy5sltAIqq1rYkR5QKaSsQwJp/FPUxE
         9uElFjieTfp4LdgIzYXaz/BI1x1cwNYnvhUAOJtEK0C7Sb9t6W7blLXRpgSW4D+g9gns
         4KW0UPSXZXMGoKKklhs4sl+ndAg6n+BP/Z2TMh5/W7mXoaZm72QUvBETvW2N+rryRnVW
         OlAgOO61IVNH6AYNMN2MPftVy/sDbMIxULXF3oJcqF3grRMizLhIEiyEfW7+WoC6Po+p
         U8D/UjQXAGLoTR7tw1gfxuOEzXzPcRNkIPxmIiiJumXp5kdZ2gYuaSSzzCEpEeOfCNte
         cZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GC4n57WGMEdbaEj2mAR3l0Wy91eyiZrWvZxRr4ep+jo=;
        b=lvHqPFUOpxAv3lXc6URrpRIV69Tmh4EP4z1IWoEvhJSGegK5t1iYAE8N/XjmhMxdpJ
         in1WMDnq/aIH+0/7uzvuWRLVoD7KOVD9Z8G+pdY750PN2bERVJYwu7QKV7ivfisqhbNe
         d5o9SbNclbqLF3+3HNflBdAMT916w7z5dwwAmiN9Vm+m8F5bF+J15wZnyVh2uhSmRpBN
         ZcXZSlIBR3EDLJ8TSiiqw9mJoM1x8RC/G2qB3dUGpiH7htt3aOkE5CtWY+4THrKsSLQ+
         z5M0aHiurzYMa3ano6iuh/eCal/GMvTMxeZDktvJbmwVRtvp93rNiykgc4zQgdML93Pk
         W9Lg==
X-Gm-Message-State: APjAAAUOkbH3l6Qhfm17mA66WXcAMMwNLkbam1oF6v0GVk4WF8m9a+MF
	Oh4/mjiBJSiUOD/VK1a8ihw=
X-Google-Smtp-Source: APXvYqycQpTnY8nnq1Sn5GGx5N7qddCYFFbzz32cmbbTZ8bLbSfqZy341RITxnNq88jfbqgWNG7uuA==
X-Received: by 2002:a17:90a:e653:: with SMTP id ep19mr1432287pjb.58.1582844634343;
        Thu, 27 Feb 2020 15:03:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e795:: with SMTP id iz21ls175321pjb.2.gmail; Thu, 27
 Feb 2020 15:03:54 -0800 (PST)
X-Received: by 2002:a17:90a:c389:: with SMTP id h9mr1450078pjt.128.1582844633870;
        Thu, 27 Feb 2020 15:03:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582844633; cv=none;
        d=google.com; s=arc-20160816;
        b=P0KC3SOI7OgZSIV4nFsoQlgiBCpddBWsapQkTAx6K0061N/um8NWLz8XdRXdpYWXqi
         6644y+IHSw2UkGgIpef0VTKZLBz6d9zl+Y12NT8pPmAZ+WivdFLyBSuKqmsgfzJpIG2X
         5284xLwl8W7hpHH4pKcHX6TKNSgHyYk4xDrQN4Nw+Up7YP9cuq7ab9pgDKsSdG0fE0zR
         vgQjp2a0s/Eh1fzz/Jj5ZiPX4jAWqFuekOnHfI5k2lYLeuwRW9HA1sqCXBHuRiPA9NDX
         lHODCPtwDWw2in9W3g5h+MWJ8U55PCw3c28b/+aP6QInNR6Xqc4Oqg6B4m2HGsbIjeJc
         aKTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=M5TBV80+atYTW8ayxk/2OyPSXwC1dT0+88WbtQJtma0=;
        b=Q5Aj9bELFMA0mIfWTji0+bMTx8DqVKvWDrvUoNTZRGBVayvZlxubV3dNQaXKzKDEvD
         6iRoh3XihudIZv+GRpnqtLYwZBfEmFKuW9+T4t42dnrIdIjhHbJQGogtBgFU/QWGDq9L
         op/qBpDEe1ZxrDUD2lPLcOszCcloVs6O3+RkIBgrwxPTSm2hLMlE2Owh/ARDsEobSj6D
         zMhlxuHP8OqmgIo37YnKNEI2FVFMQCU1VosxYWKebRxwWHWnh9w6Q7GHcAWiTMg7u7ZL
         AMXhpKYOL7fYzstsRT1MbSpp0Kos/Xry+YK7yPKiqfzq5HVOs9QrNqQyFtz+JWvW+Ehe
         hg9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TyZ+g8V1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id q19si71335pgt.0.2020.02.27.15.03.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 15:03:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id n7so640709pfn.0
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 15:03:53 -0800 (PST)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr1586151pge.10.1582844633220;
 Thu, 27 Feb 2020 15:03:53 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com> <20200227213450.87194-4-palmer@dabbelt.com>
In-Reply-To: <20200227213450.87194-4-palmer@dabbelt.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 15:03:42 -0800
Message-ID: <CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT+u8g@mail.gmail.com>
Subject: Re: [PATCH 3/3] RISC-V: Stop using LOCAL for the uaccess fixups
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>, 
	Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TyZ+g8V1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> From: Palmer Dabbelt <palmerdabbelt@google.com>
>
> LLVM's integrated assembler doesn't support the LOCAL directive, which we=
're
> using when generating our uaccess fixup tables.  Luckily the table fragme=
nt is
> small enough that there's only one internal symbol, so using a relative s=
ymbol
> reference doesn't really complicate anything.

Is `LOCAL` a macro for `.local`? (Looks like no). I would think
`.local` is supported, but `LOCAL` isn't something I've seen before.

Ah, looks like it's local to macros:
https://sourceware.org/binutils/docs/as/Macro.html#Macro
"Warning: LOCAL is only available if you select =E2=80=9Calternate macro
syntax=E2=80=9D with =E2=80=98--alternate=E2=80=99 or .altmacro. See .altma=
cro."
https://sourceware.org/binutils/docs/as/Altmacro.html#Altmacro
Link: https://sourceware.org/binutils/docs/as/Local.html#Local

But these macros are setting .altmacro...
So it looks like Clang's integrated assembler doesn't yet support
`LOCAL`. Filed:
https://bugs.llvm.org/show_bug.cgi?id=3D45051

If we're no longer using LOCAL, do we still need `.altmacro`?

I also see two usages in:
arch/riscv/kernel/entry.S

Would you mind fixing those up, too?

Otherwise patch LGTM.

>
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/lib/uaccess.S | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
> index f29d2ba2c0a6..40bf130073e8 100644
> --- a/arch/riscv/lib/uaccess.S
> +++ b/arch/riscv/lib/uaccess.S
> @@ -5,12 +5,11 @@
>
>         .altmacro
>         .macro fixup op reg addr lbl
> -       LOCAL _epc
> -_epc:
> +100:
>         \op \reg, \addr
>         .section __ex_table,"a"
>         .balign RISCV_SZPTR
> -       RISCV_PTR _epc, \lbl
> +       RISCV_PTR 100b, \lbl
>         .previous
>         .endm
>
> --

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT%2Bu8g%40m=
ail.gmail.com.
