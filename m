Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVXH6CAAMGQE3TW6RVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AF930FA1C
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 18:50:15 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id o20sf3152460qtx.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 09:50:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612461014; cv=pass;
        d=google.com; s=arc-20160816;
        b=EuP1nCOpUPSmMk107myooKPdVpFVTE6lDR5Q42fkyYQQfiuEOYatJ9JtQbMZEOKgKP
         1siqHOuK54hXxs5mFjsrzlGSV42fCp5Y144x39fNZmwotNgj+s1edzxMr29oc7KFCp/S
         EYDFiEv6phhlmHSUTRmzMk3rnGnNWlalB2aDtRZHE95flzp9/dod3fGUX5iW48GFbyLO
         6EfDxIsmghxdj3L34A9y5M6oFzy/ssH2SCzxeExW3SOpqnmi1taFXEKW5cOAo0EVYgqe
         SJJC7GyR7XcRZTfcPHiZ1zWcJyGNbpVjGtC9JmrZWMdzKG+40Zwh8z+Nt+hWNj4mpb9c
         L4vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bLbB+uKo3fLTJBvYYxcjxI686GAYXoZVaml0E7db+GM=;
        b=fAKnODqxOEx1gnMNucee2j44f3AOCsvPOtH0mc85P6MiN7AuNiMMYFPrgkU0i/nwm3
         UMfd0SCWA1pjxMlBxYY2yo7E3D1PaqWyMiomk/u+i5QF6pMyEhmhvAIdOumtFBhTbuiN
         JuTV/CdXmWoWLUOvb/l0KRzzm85P0LD+ZM4AEj4LZ1CqduKfa4IffvLGaMZ420JkPrm7
         dEhoEptpq71YkItYYZTJgy897GWKrV/o5kv/h5pajwAh8gFkDWgBqP3Uli6Zq/wC/2CY
         7Go81rWfXeckM5KOVORaKwGzUYfNpTML0cPxZU3dJ5+IpWNKFvo/hvtbpTfMxY9r3I/z
         G9MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qCY2Wi7b;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bLbB+uKo3fLTJBvYYxcjxI686GAYXoZVaml0E7db+GM=;
        b=WRrWlkRQyC3UXY8VmyxzhKSfkTUyTqfkqTyzPNms8wbj0etAsmTnE2yS2Ls/iwgLtX
         W9VMyg7XkjWjVDjC8s5idUbJT0TTzfH3b6RDi1cg6DKppTlTQbxutO639XOZDtgeUEQW
         Pu37euJk+vyjNces/v31pC8Qtw+rMJ+PVINoh7gHXloth1Jg0Imx+C3U0+H/A5EkNWpH
         ct4NFcqXxSoIL5k8P16eiffcGTSQSUyrVjZibsvg3CeH+rdPskGhb6cbKe+vMxM8ldIk
         WEdeuIV0jrk7vQte3YTu9Uz1dTnEzUeEdF8j6zknNHudl/i40+PO7vaoNidW2RK/p4Fh
         uv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bLbB+uKo3fLTJBvYYxcjxI686GAYXoZVaml0E7db+GM=;
        b=RmGMohXfxYsb0LfwwxYxcOaFDwW09eDlIGCtZ3Ek0QVZ5cnCDabHWRcDTHR4OKlEM3
         2sX3aVavHqo+n8IH15P1dphiMKkOlaxV7OQYVa6uwWt0QsoFpszThy+ID/LOOTP9b3wz
         TfaxQWmrZlaR2XKCrV6gFpUtZwSyhFOMu1Gx7iTNyT3pKXb/7Ivy4d4v2QwAcwTK4PRM
         IuipjNnRVD8dZtkIEhF8sjtJtkHH69rNuAiOX52ITUVV5+j+iv3VgcKpeXamw2Fpu1Cw
         SFHzwuPNGJNrydHSlfSe0Z9+UIGKSk0rzTDVN98YOA3n7a8M8VA3Thhldrr/bbX2eJ5W
         gacQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531X3Qprt8PDVQTTbkGUiWzK51amYPn09P05o/uRVd5q1d9fuCAN
	1xsnR9PsuAi1AA8iCIfMg1s=
X-Google-Smtp-Source: ABdhPJx5fA4mYU6WAfWr/zS9NiL9JlgmEgm4uNc4CojCH08gr/plTEFlaHZ39JavuxnddJ0d8Xak2g==
X-Received: by 2002:ad4:486e:: with SMTP id u14mr338466qvy.21.1612461014794;
        Thu, 04 Feb 2021 09:50:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e904:: with SMTP id x4ls3422763qkf.6.gmail; Thu, 04 Feb
 2021 09:50:14 -0800 (PST)
X-Received: by 2002:a37:aa90:: with SMTP id t138mr299239qke.150.1612461014389;
        Thu, 04 Feb 2021 09:50:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612461014; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdnymUGQXEJ6fT5YiQ4VJckjQkSQBPaGWWP1O8a9n+JSfixMSYFv/jfw6Mx3m0Aq73
         K9TgXj8T9a2AxlM1+17oB7Em0wr53YEdwlCMzbLHwPaqmfA3aUYXwQCfsFYpPqZ0vh85
         967cqPLGLqdSH4YyOrLuooKqz3FqitlYg38M7W3EnUmcDmU7Tp10F8qnTm5XaLZrfOpf
         c+1CkWauPDcas6FuMKZqpii2t/H0gNB8w8GXzROWoPhVG22HKGGAuTCRhpOwNqiEnWe5
         fpZtA/zE5SLwzPjqNUQW58D0yfDmB4IFon99tKGb0BdmC3fNPrZ0AMuP/L2Z6sqpk24h
         QR5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8Kh68VvzJ7uDFBbTKZm/8Opn8JiDLvZAUjjlXXyNQrk=;
        b=qG8fbjyuB4vf2+jHLPwDPOB38xxXBfisk5q+5mEnnLlT/ixH/JPN7hfYO3w7d4HX6K
         ZY1HwUnVAuxCg7ePWgbI3IjNzDsFYTSF+CGWkgT3XOJZitFsZ8R1eSivA+X82fZtdjGN
         H0pL52PDcu3hdHRWO9+HGhC43mfYxKXfOMWUvbsxa6lV/zn9rkjUVtaaapYFcSVzucYT
         R0G9uDLiqHWQf3BU8UoYjCoA6UAwHnhBiK2vK3LiTU9NIM7jh7yoX8tCnhxw7O39XMVW
         jYChqZa9Y7dFTJHDOGmhMfXwQaE7iy313VR0gb3kF5GnCadVbUP3GHoTv3MD1YhP+qwT
         fguA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qCY2Wi7b;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f10si251233qko.5.2021.02.04.09.50.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 09:50:14 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3F4FD64F7E;
	Thu,  4 Feb 2021 17:50:12 +0000 (UTC)
Date: Thu, 4 Feb 2021 10:50:10 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Rachel Sibley <rasibley@redhat.com>,
	CKI Project <cki-project@redhat.com>,
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>,
	Filip Suba <fsuba@redhat.com>, Memory Management <mm-qe@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	skt-results-master@redhat.com,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210204175010.GA2988776@localhost>
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com>
 <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost>
 <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qCY2Wi7b;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 04, 2021 at 07:07:49AM +0100, Sedat Dilek wrote:
> On Wed, Feb 3, 2021 at 11:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Wed, Feb 03, 2021 at 10:36:32PM +0100, Sedat Dilek wrote:
> > > On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:
> >
> > [snip]
> >
> > > > As far as the panic, it was was triggered on our upstream LTP test, I
> > > > don't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > > > bug which is causing our jobs to abort while updating the kernel for x86.
> > > > You will see the following in the logs:
> > > >
> > > > 'failed to validate module [something] BTF: -22 '
> > > >
> > >
> > > Guess this is with CONFIG_DEBUG_INFO_BTF=y and LLVM/Clang?
> >
> > I read that sentence as there are issues with BPF issues with GCC, not
> > LLVM/Clang.
> >
> > CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:
> >
> > https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369
> >
> 
> OK, Thanks.
> 
> Can you give me the link of your (above) response in the
> ClangBuiltLinux mailing-list?
> 
> - Sedat -
> 

https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/oNIZyE6fBQAJ

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204175010.GA2988776%40localhost.
