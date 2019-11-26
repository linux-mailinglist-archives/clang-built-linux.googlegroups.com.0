Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZN36XXAKGQEBA4N44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id C20FA10A337
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 18:16:22 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id m12sf12936825qvv.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 09:16:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574788581; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ssb7yoy1MI7i7B4sZIXXl04yvrNzsYPZkPgCnhFAy+i2E37JyCy1PI+fROzrsFSNt6
         3eBXxRycycnA2aN1D+Q6WVhLohT9XLB2YgE/EMEX+RQE/KVsgtE+J5QxLUeFiOxlZM2o
         lfyXbK4chloemgTRpSGBpVnb48Ny7s44ZqhAddYhupAFVJYopluja7ma3u6vYNgKHQ11
         X5QQQ6MQ17iMWrCbtZ3acsQHiuyYdm1BlgEBWej0TyZ118XX1sEG438qsGkdeAWasMv0
         9V6ss8tlIbt+BMSvCRN2q9Ztj5tze1+2SN/eEbR5rbuOOju0Gx5tO1MCnt2cH1VXOK7G
         GARQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CfaWS1equmjMXyhLpAztuPEmKhAGYmPSJVWiUc7N9O0=;
        b=PUFnOeO8i1oX1A9J9+UyVHVes15to0OTknCy77PFfdndeFmu7i9KcRKQayv6ZFV2qn
         6/J8dJEJ7ZL9Cukb2QoT3YYrEYZFhL1/1otFb3V21wFt46kgYS5C6Bf1JqnhdeTpOj2V
         ZSQSmPo+RI3FU/Yewe1mrQnEi310Osw+LVM0dTVPae0yImKb+8AT2TGtR/MjpbQA34c4
         JsJiA2DvyrgHxZsGFcQKWCHkiaCOUMgn9AVH20VYQMrGAJGTMLy5CGtez6y0UapHDIKy
         tvnSbHl4rLUbvyGBudyDfuWylTTTncSRgJrp67f+Bmrq8uhVBDM1KsrpQ9eXVqYeoF7Y
         ldEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SBxzc7Di;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CfaWS1equmjMXyhLpAztuPEmKhAGYmPSJVWiUc7N9O0=;
        b=dAsAI4axsWRHiFzVTwLrj+ATfjfxGyY20Od5Lli5nSW969E4YI1ajWG2y5fiNrlTYB
         AWNhE2wU5xIBEqQ5V2dbbdqCpe3pU6prW9q9MAjvwPDJJb/27fgZZ+40CK8fX7JXGxxe
         yEJKnhrPavBjcMQfG8H9Cz4/qmqHD3CDA8RqkqCmcQaRdvIdDut2DFa9gFiM2pFKceUL
         JAaT85UdAAHvoR3mMi+0PK+/8k89DhXOpUplmVUnw0o85tQ3UUN7lKCnU/EcTqiFVpH6
         CtWRoW9OmHvemulEnxWxgk0/nqEM2EjWInCFC+Pt1pIYjMskJwN2uew23LkF5Q/3YI+D
         I33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CfaWS1equmjMXyhLpAztuPEmKhAGYmPSJVWiUc7N9O0=;
        b=MYpS76hwnSxjtUFRQzjSk8BEIkE3U8dNmk3oVzlZnpLmr1Hp2/guYXyWfDBJF8FSEi
         /n3hTylzXxr8QkI0L9eF4lt+Po7BAlyzSnztTNHZsdOec7/xEVG1CAoF5nYlUenC1aVL
         PPLxKNN05SNbMEssPdIJzyOQCFhLmhfyIzWPgKwGT51B0Gwg5zuLKzOIWXIguZhXkQMP
         uxpHa6VSxSOEjQZXp9OvuxAznVDRSmYb/Bxqp3MCQh4H0oz0sK+hst8Ij48Gwr4J3onc
         d5dNWbyI5mlB9USD7R5Dc61Gcc/9oPIStcY7GzkaDbFQUmvkydeyzaiD0ZoRxEEvXA9s
         zLjw==
X-Gm-Message-State: APjAAAXBzHDDH0KejkCq8EHMI+2KQSn8woyjMVlNFVebXr/xe450BlYY
	tcVGhiqDFMKkIkccQYKnRHE=
X-Google-Smtp-Source: APXvYqyRsWN65zQGhuvKJsR7byN0O2YUwtLpnIYW279dyfRj4QUGDaUWYBRHHIE/ZyxfE8oh3iiGow==
X-Received: by 2002:ac8:7317:: with SMTP id x23mr21805434qto.110.1574788581526;
        Tue, 26 Nov 2019 09:16:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:45b4:: with SMTP id y20ls3645254qvu.6.gmail; Tue, 26 Nov
 2019 09:16:21 -0800 (PST)
X-Received: by 2002:a05:6214:1029:: with SMTP id k9mr34432190qvr.106.1574788581083;
        Tue, 26 Nov 2019 09:16:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574788581; cv=none;
        d=google.com; s=arc-20160816;
        b=z/y6Rp2cH1EpjLjsUYB3Zk0GESnkwa63HFiP07ZDzDLzUq/tqZqLJHR4gb9ebCbyv3
         aGPYz3aJOmBPL0XCvRX06ENjBuZoWB+5f9il6gA/kBv/new1VaKmerXa2v4OVMkg6gjR
         WTiZAUvyAQglswNV2NxOrWQrQGXRAdCsOgA+nsL8nJeGlQid9xdRQBw2bYySRTEebAkP
         SXY5sm5tBvEHvKu/pmnOmIoEdTzrmcnZFIRlad6cr92peEjok3Iafpjjusxsa81D18NA
         Lv6KQgfoXJ0ozSjPAS52IVqIssfeca5xPiOoWc3gM4FL89tHbR4y8T/pyN/BLl9OrMVB
         e49w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I/k92MKWWjFnPno4gnuWPGd3qNyBSvlefuqaP0mxb6E=;
        b=iYC3jE3hfFkZNm3iz8sxyG3Aont5qsrbxHRd2w3ToLwZMVlyQa7UiAUl8oqW3S1AVM
         JvHkDqxjGltKdoDJiGUo3aqBRMSnK5mLWdP6O7yyjVU6viMa6y3PmOp3ytSYqAWprFAh
         pK4DJBb97ilk6V+a1rZCE+43zcARlYzBmXACsViTfd/1Xm3fSA16nX6YweyxZmHd1ybr
         p9yv84K0C0aWIZFulv3kt3GhVz14KH6wCiC9uQsPrNmh4gY2J7Dvgc+xRACRN562vzCV
         jxp8xEHbeoAZzaoGuO3Kn72Eb8SD9nG1SYs2UW3SgBWoawvY1Sjq/+5DgaHs7pM5npRQ
         yGmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SBxzc7Di;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id x6si516544qkl.7.2019.11.26.09.16.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2019 09:16:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id r67so818959pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 26 Nov 2019 09:16:21 -0800 (PST)
X-Received: by 2002:a17:90a:178e:: with SMTP id q14mr129343pja.134.1574788579737;
 Tue, 26 Nov 2019 09:16:19 -0800 (PST)
MIME-Version: 1.0
References: <20191118175223.GM6363@zn.tnic> <20191126144545.19354-1-ilie.halip@gmail.com>
In-Reply-To: <20191126144545.19354-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 Nov 2019 09:16:08 -0800
Message-ID: <CAKwvOdn0x4jc0=25O+Xy5BsUisAPrz_hjzmBbMS0ubpfPMLgrg@mail.gmail.com>
Subject: Re: [PATCH v3] x86/boot: discard .eh_frame sections
To: Ilie Halip <ilie.halip@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Andy <luto@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SBxzc7Di;       spf=pass
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

On Tue, Nov 26, 2019 at 6:46 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> When using GCC as compiler and LLVM's lld as linker, linking
> setup.elf fails:
>       LD      arch/x86/boot/setup.elf
>     ld.lld: error: init sections too big!
>
> This happens because GCC generates .eh_frame sections for most
> of the files in that directory, then ld.lld places the merged
> section before __end_init, triggering an assert in the linker
> script.
>
> Fix this by discarding the .eh_frame sections, as suggested by
> Boris. The kernel proper linker script discards them too.
>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Link: https://lore.kernel.org/lkml/20191118175223.GM6363@zn.tnic/
> Link: https://github.com/ClangBuiltLinux/linux/issues/760
> Suggested-by: Borislav Petkov <bp@alien8.de>

Ilie, thanks for following up with a v3.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in V3:
>  * discard .eh_frame instead of placing it after .rodata
>
> Changes in V2:
>  * removed wildcard for input sections (.eh_frame* -> .eh_frame)
>
>  arch/x86/boot/setup.ld | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 0149e41d42c2..3da1c37c6dd5 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -51,7 +51,10 @@ SECTIONS
>         . = ALIGN(16);
>         _end = .;
>
> -       /DISCARD/ : { *(.note*) }
> +       /DISCARD/       : {
> +               *(.eh_frame)
> +               *(.note*)
> +       }
>
>         /*
>          * The ASSERT() sink to . is intentional, for binutils 2.14 compatibility:
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn0x4jc0%3D25O%2BXy5BsUisAPrz_hjzmBbMS0ubpfPMLgrg%40mail.gmail.com.
