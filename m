Return-Path: <clang-built-linux+bncBD63HSEZTUIBB3G5UP6QKGQEKR2PZPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FF92AB1B8
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 08:25:33 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id t17sf3142470vsl.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 23:25:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604906732; cv=pass;
        d=google.com; s=arc-20160816;
        b=dsVU2SLtyO25LpF1R5ldRjhUblVVthu0AdElufn8qm2yIVsaTADDOKVn/sEP4WhpI3
         OvBFHzvQ6BRbUtLOPM+kIZwlsoYCgc3Z1+j07Ot/yIzUXHc5l/IBa6vXKyUj/xAh0hWH
         Q5PYa/uoiKRCd3Unwnq/qxFEXgvgmD6qH3pymCN1qPa/LF0XOt+rkeW37Z+HO+CFLBYN
         Pkqz/HahaZFg/U5b/1H+KhuxqZAN41hilRP/2pjtTZ0ysjkvx1P02vMXvVBdCREWWFHm
         WctERmDTZxwqdQLPRkD2b0go3yPiZDl1LU0CMG8JY2oUuhlhUWXEbm9Sc/F2bulCkfMX
         Fn0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=uSzvYW5ft3auZpOOcuRVdpyn/Mehu6TGpCFj7kKBqlw=;
        b=YhYm8I8T99Ap2s4ZTuWMLpqgth7DWfXIC1MuQEVON+Q2kA0ixyUvfrQOLP2GfCVmDp
         ZknHMnwilmTcPQKuMNEa4uWxCvpVFvch24vCP8ZPE/5lHdiBetdgPVpk2PInsIwL/ez0
         qJ2KQ8rdFTyj8bF76u8XC6aoLOOo3UAQDJu+DHXk2QraeYHXQ8TpJMgL3LjF+KTY3bat
         Sc6hRepQuwn1vKA/UOf8zluyiqUJzY0cpG68mlCf8zDJO9deapBnDZgNjFef8pHTXrRL
         +P742mBw5XW2+IfcQM0RPk6KoXXNm0grrrZScNasLb2+SZiarkIXetp08KGNuVbPeq/n
         YacA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CyRhaQ76;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uSzvYW5ft3auZpOOcuRVdpyn/Mehu6TGpCFj7kKBqlw=;
        b=hqTqtVQKhZGp6VMvG8+hnzi+fuLJtRhfbeoJdsQjREbNE6jvhkNWQp8h+sosJaOeFR
         KysKyMT7JN4X2aoveOR8lXX9QJQC0lzU9HhkGK1gPH8jnmqM2Wx+TeB6QgSTxoOXgF1x
         8VkKHFsfFF+Yw8jELndgX5yU6EGCvkt8/GnE6cEf1YECzCNcl92vkzid53ud+1/d4QJx
         6H/avjOW5x48Er1+xYokNx2q+i+DhHJyflFXpF+znUL1NPCOHy6tS/jA8JpNID/nILKa
         xL83cLmq8fMZ54zsZ823xgC9Ot2/b0CuL0UXuz1ES1GyL6URJx3m0jeTGp+msYPJN0Vx
         eD1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uSzvYW5ft3auZpOOcuRVdpyn/Mehu6TGpCFj7kKBqlw=;
        b=nxV8KhPyjiyX1lebecqfq/S6EhuKSCClB4DUcILdg/0pZe0LeqXhxvO+v98Y4PvqmF
         OAVVeXdqxwkZ8UFVPJdBUrfWKKrITUiCcs3yD5R88Y2TZNE1VfZ0WXm7JuFIk/nVEZjm
         pZ5BohhgnPfXRf4K6LQRdYT2MBhWSIsoNTSWjRFusPOyAw5M3d8PsBlaxTKdyTUgD9rh
         hFePn/MChILiuut+iHstbJL+3P+GM6QTr4PnJFv3yBeDdKMi6wHdF6aMimSRLu0ErSlp
         /KgVwt6DLVXIVtjlPybO+9Pcg3R7gIzTmTi/u44HWJCImefCCds4oegvu9jV9Y503oLT
         rxJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rGIdfAZBQhOT8VZ+SX1QhHIjj216Zo18sNQWCxAgTuD+C6NYj
	IZuptx1hAuORZ8tK2os4gnw=
X-Google-Smtp-Source: ABdhPJy0t53OvcCQdjsSB2imQzETLYJ+DNnCbJIiPBzuydrwEbBONMJGMa4IZEUSNROZ6jpSKLjpKA==
X-Received: by 2002:a67:eb03:: with SMTP id a3mr6346216vso.52.1604906732292;
        Sun, 08 Nov 2020 23:25:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3137:: with SMTP id f23ls846702vsh.10.gmail; Sun,
 08 Nov 2020 23:25:31 -0800 (PST)
X-Received: by 2002:a67:2e43:: with SMTP id u64mr6975885vsu.52.1604906731815;
        Sun, 08 Nov 2020 23:25:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604906731; cv=none;
        d=google.com; s=arc-20160816;
        b=AgnAwbCODHXgkePTKgpSqCDNJDnX3vzcPmX4cm/i6m5H4+mhTYMNb3/M65xfKUE/4z
         C0NorDHV2+liS4taWk315PpJINVTDJ23ppqdm1Vy+wD5/DOcdBoj7qLkOHnsn7rzCE7m
         Qm06DSmpGZ2eVCVv6bcNw16t9JEjsP/mnzVTPKoxZSDHtWPlSzqunGEm4PaMPyDvhBaN
         9JKgGLe1CY5d0whaEQ6CKhTe1MoVJtM5AX7GPgZPYByidFjPe+pxhGus4Uafq7/FS2xV
         HtuMBYQIEVuW+H/RsjkCU5ykXouPcSMZj3WNq3yC4ZKXWXySWj5ag7HYAoVbxUdDBOyL
         7xaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BN8laGPNBUdynnn8PQDUyO9yqDX2cOMcoepWo6rftdU=;
        b=HqhMi4ts86ytGnph/TbSMx9Zgj07Mpy4tXJBANVTQXdwtQ4ES2vsMrCoeLqpcT8NJH
         XDjWE1HyEpf6k8DruoomeFgXTPsUZaukL5YwIy+B4IBzFkgYgz9ox19wY7CYEwINJ422
         RFmALhX6LibQpbowtK211HayHAu9VHkY3k6UwCRSAXEQ/gjHC9X0OT9jbvBkzRYy2cRs
         /QaWxFtfUkQuHvAp9zGLYyDqd2yuHFA9LH4MsSJAUKSlzmlJabPcBQiY/SYJjEmHipfK
         0HcwVHAAP1NsTecFTOv1rf5R5OIoigtB+ROTSB861VnBafDaUqPqpWBXj0REkB+fXNys
         E4zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CyRhaQ76;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n1si586053vsr.2.2020.11.08.23.25.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Nov 2020 23:25:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 600A621534
	for <clang-built-linux@googlegroups.com>; Mon,  9 Nov 2020 07:25:30 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id m143so9276807oig.7
        for <clang-built-linux@googlegroups.com>; Sun, 08 Nov 2020 23:25:30 -0800 (PST)
X-Received: by 2002:aca:d583:: with SMTP id m125mr7761372oig.47.1604906729611;
 Sun, 08 Nov 2020 23:25:29 -0800 (PST)
MIME-Version: 1.0
References: <202010211637.7CFD8435@keescook> <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk> <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
 <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
 <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
 <CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow@mail.gmail.com> <f4b4f5ca-2c0c-c1f0-9329-a95967b99bd0@gmail.com>
In-Reply-To: <f4b4f5ca-2c0c-c1f0-9329-a95967b99bd0@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 9 Nov 2020 08:25:17 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEJL31KOMs7h_XzxFKXgqi2jOXCmLaxfKwW=wgo2so_RA@mail.gmail.com>
Message-ID: <CAMj1kXEJL31KOMs7h_XzxFKXgqi2jOXCmLaxfKwW=wgo2so_RA@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CyRhaQ76;       spf=pass
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

On Tue, 3 Nov 2020 at 09:43, Dmitry Osipenko <digetx@gmail.com> wrote:
>
> 03.11.2020 10:24, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > Still broken today
> >
> > https://kernelci.org/build/id/5fa0c1a74bdb1ea4063fe7e4/
> >

Still broken today

https://kernelci.org/build/id/5fa898baa00b5f3167db8857/

> > So the options are
> >
> > a) merge my patch that adds 2 bytes of opcode to the Thumb2 build
> > b) merge Dmitry's patch that adds an unconditional literal load to all =
builds
> > c) remove kernel mode handling from vfp_support_entry() [my other patch=
]
> > d) move sections around so that vfp_kmode_exception is guaranteed to
> > be in range.
> > e) do nothing
> >
> > Given the lack of reports about this issue, it is pretty clear that
> > few people use the Thumb2 build (which I find odd, tbh, since it
> > really is much smaller).
>
> I waited for about a month, hoping that somebody will fix this problem
> before bothering with bisection, which took quite some time and effort
> because intermediate commits were broken, and then with creating and
> sending a patch :)
>
> Thumb2 usually is untested by CI farms and in a case of personal use
> it's easier to wait for a fix. Hence no much reports, I suppose.
>
> > However, that means that a) is a reasonable
> > fix, since nobody will notice the potential performance hit either,
> > and it can easily be backported to wherever the breakage was
> > introduced. (Note that eff8728fe698, which created the problem is
> > marked cc:stable itself).
>
> The performance argument is questionable to me, to be honest. In
> practice the performance difference should be absolutely negligible for
> either of the proposed options, it should stay in a noise even if
> somebody thoroughly counting cycles, IMO.
>
> I'm still thinking that the best option will be to apply a).
>

Can we take that as an acked-by?

> > Going forward, I can refine d) so that we can get rid of the kernel
> > mode path entirely.
>
> And then improve it using d).

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXEJL31KOMs7h_XzxFKXgqi2jOXCmLaxfKwW%3Dwgo2so_RA%40m=
ail.gmail.com.
