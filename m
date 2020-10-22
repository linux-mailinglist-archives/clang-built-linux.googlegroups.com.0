Return-Path: <clang-built-linux+bncBD63HSEZTUIBBZ7CY36AKGQEYQ2ZQPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id A95C8296291
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 18:20:56 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id e8sf1392753qtp.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:20:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603383655; cv=pass;
        d=google.com; s=arc-20160816;
        b=otPI1vOBwu6Y4TzfCQBU05awIbx8N+OLmikB86qP8DRQ6IFjVXnu+LP2s0IpmpQcYZ
         Fa1TW4RttKrWf1QXXXbPILNt2NuyI5O5OYTaee32PGZnunGU8R5RwDjgBiA3j9WJmT8+
         INKEhYV0OaX6AI1Jd0JpG4FptkcMmUpay+EJE/c3VwK6KjPXRanugITnU9vutilPIadB
         MOdnBRweeoAiIihrnK+iasH8Wp4pwK0OYzD+XAc9eMWxNZzLbUwQTXkvSKSx76Kldrtt
         xD+/Qlz6isu+B3s1muuk8xcoa3u7WCcy+mnIrPRH9cIN7hGIpm1SyD51cVDHnGuJyG0Y
         D+5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=ftLKYeqCd3gTyi/cv+oKZV2/bxCgXxYjwgspHCmF928=;
        b=FK3ghl74meCShUPt5COoJjuD7p1fsmjypvoya1tGQKgNNcEBj6YSHxKXn8+MG2U9N/
         1C+2eopeTRZ8nwth6HNN0lB0ClbjUenYvCewf7VndnLmPB1EwpeWsu2H7qI4Q92+o0i4
         IObA8oD8+DnhVzKdVFxCREowj6G2HGqpgwKbdCXzUZOSzsfxpEtl5HQUsByljDXRYIRx
         IV+bRxntzhorxSoS2y1zn3apCGnpJ0wrWLBGpgBEIXv9HWnxnWzblYdLcgNN7voGdeq/
         rcCw5j4ZGuA8tn5P9jZfOJ8jUOkVVhsZeXu6vgWVwUv/X3P9rH9xRQK8ukpD9i50/86k
         ZXLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PpacB0q4;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ftLKYeqCd3gTyi/cv+oKZV2/bxCgXxYjwgspHCmF928=;
        b=I2+EuXORCOlfVfDvfsn5Hrb7d6nMkum6Jcz9kUtAPxXMPTrRSv2xBBRhM24crsNRw/
         R01etx6hQSGN5WsJ4Nu0LJHaqtoJDc12Fz10+/GSxSN1w8LgXJfbUm3/lYk5PDiWwhsp
         N2Mv7CG/2Pz4WrEj6TFyYfv5N03wx+OsaT0QVxcgu2B6gEuIL8sAABZPBw42rMvEFvtU
         B4Aux0bWpqcpAIA90GKrOhIqB5eE88k2kAO//98YygH39hMs7eoSoshGend4QWx2eSdL
         tzG9vP6l6Ie3DxYOyAORn0PWUEDe6sXE06FYMt/PD3jwd3hxKwOqsEkx2IZzzWai19Ml
         VIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ftLKYeqCd3gTyi/cv+oKZV2/bxCgXxYjwgspHCmF928=;
        b=USJXxVXC2UvGbEUO8qMNMI6qd6m6PJlUkUXR0GPDArnSId6xdaztnphoWmbXJrRlMD
         fbA48/EYNdcDSa20AGK1iTfknkPkSRg0a8Po2HLvvpa4Dgi3/93BSrQvsciDzCrEStwu
         aNxobLqczo85gyKlt9E+EHB6UqRkYJ6e/9z5bfq3uJPTTI4wexopZVsPwByAUCbOieVS
         +rVWGz2GLF/kmqRV9MYxnP7VVGIRLqHtQ+f/EkQTq5y9FSRiwtlMcsFiyczLzZTJGDU8
         +rbMLF0jAjbCiMt/wBot19UxImKGtgdyXRNsf0v2zD2nilJzOnZ/jpuJwZb9kHKPjygY
         4r3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530meXdBmKStUKPafwJRgWun+7ff8fNqW20md6x/od45kCUUjZ1z
	HiV/NQxklPbJ9y3x193c9os=
X-Google-Smtp-Source: ABdhPJzKLjNiD+ytMm4FFj/3ObaVe4Vfq4A0C7nZMVYyxIvb/HLloeowj8tRPKyu50bwVtLw37icrA==
X-Received: by 2002:ac8:4a09:: with SMTP id x9mr2761566qtq.123.1603383655631;
        Thu, 22 Oct 2020 09:20:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1132:: with SMTP id p18ls1065123qkk.9.gmail; Thu,
 22 Oct 2020 09:20:55 -0700 (PDT)
X-Received: by 2002:a37:2753:: with SMTP id n80mr3184556qkn.353.1603383655141;
        Thu, 22 Oct 2020 09:20:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603383655; cv=none;
        d=google.com; s=arc-20160816;
        b=lAkRkymsnrqyz2viztMmfpz30UhvETaM0DFJ6ypvcfgfd+a7CZxVtn8O4b59vRcVl0
         pEM06E/TxhpUVpw1ueuU5C4rQ3dK2LESL98qaGsyjZHqps6j6l92+1XmKKshhSJEY0xo
         N17f2SgSW1y0Tx/QKe22UeXbN5gzjzZsdPO7/UGHw6KRH2dBI/8C6zWb4e/QUfC5Mywl
         z+mvmST1fe12z/P+xTBpW6GhVS6f6EqkTnfCOHHwlhF9dVjVdoUm/1XPdXORcJb3fh/j
         QzlwDSbrNDe8CztzfyY8oqFlxy2JIINovV+dq08a2hDNmojA3bKOaauL5gw3F1qyD8i8
         UNcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HuABFY55Q/u439fCHA0HrQ3pUEOLzIaVau0uW1SUzko=;
        b=bZ5fMHULxT6L/wlq8fYtpI0uY2ACwLVWGWHTa2WmSMb05Zc79NsAVlLqi/9a64xSii
         VOIrrlk2+969jWWqU20HCvorZT09i2j8Gi0HfQ+iW2tWtEJ7u5EbGue20MgpWKPLAKpO
         UKkANJO1n/Z/M5GDIB5WnEjvcr5tw+KqfRZ2ZyTHffUG8aYG4orMAO+iGrP/1/oW1N3o
         gFrOD/vp+K3icHqv1z+iYo6G/kNgivOEriuitI5j2ZtQjSJrUIh1eS2D0kKst/KQOXJ9
         1TuzT7lxZ1in3RGqhH1IZeijCQWLOCBiQXx5elRJHgT8Kyy7QePc7pLtbfMXRnAzWy5u
         rf4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PpacB0q4;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z205si134624qkb.1.2020.10.22.09.20.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 09:20:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3EE324654
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 16:20:53 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id l4so2290384oii.13
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 09:20:53 -0700 (PDT)
X-Received: by 2002:aca:4085:: with SMTP id n127mr2135345oia.33.1603383652814;
 Thu, 22 Oct 2020 09:20:52 -0700 (PDT)
MIME-Version: 1.0
References: <20201021225737.739-1-digetx@gmail.com> <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com> <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
In-Reply-To: <20201022161118.GP1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 22 Oct 2020 18:20:40 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
Message-ID: <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PpacB0q4;       spf=pass
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

On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> wrote:
> > >
> > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> wro=
te:
> > > >>
> > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
> > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
> > > >>>>> The vfp_kmode_exception() function now is unreachable using rel=
ative
> > > >>>>> branching in THUMB2 kernel configuration, resulting in a "reloc=
ation
> > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_ex=
ception'"
> > > >>>>> linker error. Let's use long jump in order to fix the issue.
> > > >>>>
> > > >>>> Eek. Is this with gcc or clang?
> > > >>>
> > > >>> GCC 9.3.0
> > > >>>
> > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input =
sections")
> > > >>>>
> > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing sec=
tions") ?
> > > >>>> That commit may have implicitly moved the location of .vfp11_ven=
eer,
> > > >>>> though I thought I had chosen the correct position.
> > > >>>
> > > >>> I re-checked that the fixes tag is correct.
> > > >>>
> > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > >>>>> ---
> > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > >>>>>
> > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor F=
P exceptions
> > > >>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel mo=
de
> > > >>>>>    teq     r3, #USR_MODE
> > > >>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > >>>>> +  bxne    r1                      @ Returns through lr
> > > >>>>>
> > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > >>>>
> > > >>>> This seems like a workaround though? I suspect the vfp11_veneer =
needs
> > > >>>> moving?
> > > >>>>
> > > >>>
> > > >>> I don't know where it needs to be moved. Please feel free to make=
 a
> > > >>> patch if you have a better idea, I'll be glad to test it.
> > > >>
> > > >> I might have just been distracted by the common "vfp" prefix. It's
> > > >> possible that the text section shuffling just ended up being very =
large,
> > > >> so probably this patch is right then!
> > > >>
> > > >
> > > > I already sent a fix for this issue:
> > > >
> > > > https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D90=
18/1
> > > >
> > >
> > > The offending commit contains stable tag, so I assume that fixes tag =
is
> > > mandatory. Yours patch misses the fixes tag.
> >
> > Russell, mind adding that? Or would you like me to update the patch in
> > the patch system?
>
> Rather than adding the IT, I'm suggesting that we solve it a different
> way - ensuring that the two bits of code are co-located. There's no
> reason for them to be separated, and the assembly code entry point is
> already called indirectly.
>
> The problem is the assembly ends up in the .text section which ends up
> at the start of the binary, but depending on the compiler, functions
> in .c files end up in their own sections. It would be good if, as
> Dmitry has shown that it is indeed possible, to have them co-located.
>

Why is that better? I provided a minimal fix which has zero impact on
ARM builds, and minimal impact on Thumb2 builds, given that it retains
the exact same semantics as before, but using a different opcode.

R_ARM_THM_JUMP19 only has -/+ 1 MB range, i.e., smaller than the size
of .text, and so using it for calls to external symbols is still going
to be risky, unless we create a completely separate code section for
VFP related routines. So we may need the IT instruction anyway, at
which point we don't need anything more.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXGExnUrTuosMpX2NN3%3Dj0HF-8_s1SzLaTyBvq4_LQNT-w%40m=
ail.gmail.com.
