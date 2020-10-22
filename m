Return-Path: <clang-built-linux+bncBD63HSEZTUIBBAG7YT6AKGQEPH76ANY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAD12958C9
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:06:42 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id e6sf420853pld.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 00:06:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603350400; cv=pass;
        d=google.com; s=arc-20160816;
        b=EU9cOc6AlGPLwLGXuWdxycACqHHUUAb8GVvJByvQZrxhpo2lxQnQfpDH5JA554uLAe
         w3t5BjjREJ2+oIyvbuGh/t7JGpTLtSmqY5KFiHIFl3nwLLTVTSi4JsVt4eW0EvL80Lto
         iUKDOPYCufdUiMx8F/PiTdP5/Jy+wtCiTGIXxExzfzhCmLQkU8ktI+KzjrjplCt1FcvC
         xucm4o7NByIkofigN4cOyNGdQubR28XnbwJjCGWCwikgQI0DNqIOwZSKOq1PDd8qMooi
         V5+uHY+e42dH36f2AyME3qLgWTjYpEjGXcjyEtXrNj4Q/njWo7V8u+YT2iFjFi9GO04w
         QzcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=11GJe10GfA+/DItOclQOKWgE8tYRVU/M1IAg6UKjbQA=;
        b=B/YxBHCVrvIenx4+nw2sUbPq7UMYnfGy0JzdBB2GCBxtXicfKPWBMApIXZVc9OXQFE
         HUbzfhPKnZhJ02kgMiW9er8fDLe5SOFKQMDZ+swo4ez6U+LTpvruAWvgcdY47Hp2XbOR
         WmUsSXNCv+8lqECV1FOFYBcdtiJa/OsX+hMEUgSGsWELlmj7wqTL8fIxb+uXVoDxV5RY
         DwBX01AKEN4IPX1H0lVqmjXhS5xSnhYWNYJV6BaFdPBwmDyYA7PZgpD3D9cilAqgtvMi
         omQTJQ4wOvi7VgwGxQO9xgjNM200RdX1kP0alPuuA37p0QkcJOxg8zBhoNPk/2mPJUNH
         FaGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VVfx0awh;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=11GJe10GfA+/DItOclQOKWgE8tYRVU/M1IAg6UKjbQA=;
        b=R9f/2QzTIpq2RLNZyKyaxaVl3BGaWpMu2Iw/DXaLgza7HcnW6KyAZaYyTPafBtbu8F
         Hq8nCle9GgjtUqRlNorXLMrWRBmez+4+lDA9IUHxQn9uZcky9O+c39k4P7nN8yN0g92n
         t0A3glMBl1pj31CXd3FeySIWfYl5eGvwvyVawOrVPF+etyJbsHnSAUdplkusVflrQank
         QzGV7ouR0ljQMx6/1BWXlJHC+Tr8kIxHzrW1UM54Ss2x+S6KYMrSPRz7aD4BuC6MfvyC
         FBCpfSMGRCKDGXA7wfRYC0h17gObkBhPPfNznuyQfaas1rLD/3jr20xvde7XW5QJTKIj
         rD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=11GJe10GfA+/DItOclQOKWgE8tYRVU/M1IAg6UKjbQA=;
        b=DlPRcZajejxdxeYmuKAoMgZRRKfeBrHpkRixWw0z9oBDYwtG6vny8ckuDo2UngSaQw
         2y9G/lwLeem1rjpVNlE6kHyhDDQmN2BYkeQ0MRxyyIE6H2PFKZI/SOgxygqlKvuOIPNI
         fm/KxMNimMNWu/QOmVQfL83dBAM3OV5RcFUtWv/1fELuYMdhNr21tVjXvI+nSKpaM5Ys
         pVTR4Uf/U9kqZo/Wdo0NxL5PFCzvdIvdNltJE1ca3VsmJcHv/cWTOIiBp0fCjQd7/Dxw
         QHuoKjvj+7Y0gQ4udJ4g1xe6p+YImGb8licPyEdwxJj/ZEnhypTO1rGuRv9QDWqB8yyV
         sM/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YZ4oLrKdXchcVOBDYRpvWReYLv/xk4CYUWvsv2DyrFn160sVj
	Vp17n3F97AumFXnnyEb28VA=
X-Google-Smtp-Source: ABdhPJy/cl1TB7aKUFG1UGty3gTUIEYct76G4zzp5ETQ9vygwXiPb2WZde+D5oWemoQRYYowSaKTig==
X-Received: by 2002:a17:902:7046:b029:d5:a5e3:4701 with SMTP id h6-20020a1709027046b02900d5a5e34701mr1147815plt.57.1603350400712;
        Thu, 22 Oct 2020 00:06:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b4b:: with SMTP id b72ls416538pfb.2.gmail; Thu, 22 Oct
 2020 00:06:40 -0700 (PDT)
X-Received: by 2002:a63:5b63:: with SMTP id l35mr1213151pgm.70.1603350400116;
        Thu, 22 Oct 2020 00:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603350400; cv=none;
        d=google.com; s=arc-20160816;
        b=IzWFk27RBfgv3cBui2R7dWqsceW3w9lq/p/DooyYjcY5bJhIOcDnqgJpqlsu7ogysG
         LCkah9VqveME+FrWUoGRj5Gs+K2vyo0//53MZCDzDuNjKyQP8ihASmWDO7JQC1PnFCsW
         DZHhqV9BlEpdxWcjVKwnN9zNwz4cN+hjFCQwqGJl3J08b+GuajfBDm1hz4HI+LfdtWFJ
         Z5FyhCMl6Sg3XkenOq+K3xcvBKseiowqO92c2baiPIdWufjZTaHR0MEnrrtWPzR5S2qq
         R4fgaYf1D5F+VTu1uv+upJWG8eI3sXF4gkV9jJqS0qqY79L8mMxF9HyS0APRssYFzQAq
         1Kuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nQLDM4Pd1OcUaIvyVpbvvdZCPUxHbcda5wAY9licqUU=;
        b=PdeerTzAtCOgN5GbigTufawts4Ud2NpZGEbJXStPv4pKeodJz/VJ5mkl9yNOnuucWD
         XWGAtmKbbmh/9cBqnfI3EzU8N0+2BJVJR+lYUFOFeeb7oHcX9rdjrLYHaMmcNAq4j3T3
         Drz8BSryeonH2hwup7RfmnuTq+szm8JBWKfPeOKV7eKm3AMew/AFaVZtBHbJd8JJOdA8
         5wvALie2jxD2OngussWmd+0P8fXNAOZHbZrkeG06QW4rZmNbZTTjkDUwK1nHnur/hpC6
         j1CsTVTgcSbVg0QK0f6yNBKG1+4juOdPukd5hkc7uJ3hpans7jH4FUWX4zE9E18VS+ob
         N2fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VVfx0awh;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t15si40607pjq.1.2020.10.22.00.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 00:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 67D12223FB
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 07:06:39 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id u127so702103oib.6
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 00:06:39 -0700 (PDT)
X-Received: by 2002:aca:4085:: with SMTP id n127mr639122oia.33.1603350398525;
 Thu, 22 Oct 2020 00:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <20201021225737.739-1-digetx@gmail.com> <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com> <202010212028.32E8A5EF9B@keescook>
In-Reply-To: <202010212028.32E8A5EF9B@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 22 Oct 2020 09:06:27 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
Message-ID: <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Kees Cook <keescook@chromium.org>
Cc: Dmitry Osipenko <digetx@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=VVfx0awh;       spf=pass
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

On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
> > 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
> > >> The vfp_kmode_exception() function now is unreachable using relative
> > >> branching in THUMB2 kernel configuration, resulting in a "relocation
> > >> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_excepti=
on'"
> > >> linker error. Let's use long jump in order to fix the issue.
> > >
> > > Eek. Is this with gcc or clang?
> >
> > GCC 9.3.0
> >
> > >> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input secti=
ons")
> > >
> > > Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing sections=
") ?
> > > That commit may have implicitly moved the location of .vfp11_veneer,
> > > though I thought I had chosen the correct position.
> >
> > I re-checked that the fixes tag is correct.
> >
> > >> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > >> ---
> > >>  arch/arm/vfp/vfphw.S | 3 ++-
> > >>  1 file changed, 2 insertions(+), 1 deletion(-)
> > >>
> > >> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > >> index 4fcff9f59947..6e2b29f0c48d 100644
> > >> --- a/arch/arm/vfp/vfphw.S
> > >> +++ b/arch/arm/vfp/vfphw.S
> > >> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > >>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP exc=
eptions
> > >>    and     r3, r3, #MODE_MASK      @ are supported in kernel mode
> > >>    teq     r3, #USR_MODE
> > >> -  bne     vfp_kmode_exception     @ Returns through lr
> > >> +  ldr     r1, =3Dvfp_kmode_exception
> > >> +  bxne    r1                      @ Returns through lr
> > >>
> > >>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > >>    DBGSTR1 "fpexc %08x", r1
> > >
> > > This seems like a workaround though? I suspect the vfp11_veneer needs
> > > moving?
> > >
> >
> > I don't know where it needs to be moved. Please feel free to make a
> > patch if you have a better idea, I'll be glad to test it.
>
> I might have just been distracted by the common "vfp" prefix. It's
> possible that the text section shuffling just ended up being very large,
> so probably this patch is right then!
>

I already sent a fix for this issue:

https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9018/1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXHXN56xmuwVG3P93Jjwd%2BNxXTYHtfibPWg5TUADucOdWg%40m=
ail.gmail.com.
