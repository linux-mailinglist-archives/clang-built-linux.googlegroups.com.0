Return-Path: <clang-built-linux+bncBD63HSEZTUIBBKEKVH6QKGQEQFJZK2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id D25262AD09B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 08:45:45 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id x20sf5880568qts.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 23:45:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604994344; cv=pass;
        d=google.com; s=arc-20160816;
        b=N0Fn0vqt+69vtpn3i+HYTnUyMTiPmneciRxGSGIkdylqnpyTq82k9Qod3v4JomlZal
         LVD3h92DKa5WW9iCiAoclG9ChQoLnxz+9erFdYziZ+2z1h+0r+nKZaW/3llE4S6vyA7g
         dxa2C0Fg90JKTq0frzuDmsEm6hp0uKFo9yYtnsqjO7IULzZ0ty13CxbJwZRQ9erTnt/l
         5I8dWGTVVNOj/xrvi5cdRDoTgZ+dLjpHGguNhVOTATDTogv8F0d3e5Y1KF0+VrtW5am9
         9ixGY5VjS6cac/AX5wUvTN2yCztaZL7YTRZof2zDfri7Kqv8JZqIlOHN1C4lLHrCwFzF
         Shog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=S84oKqBsv4TYO+vzw3lhDyO7i0J2qrWWWd4XQH5F6Ic=;
        b=x4vKem6FtVi9e226pmPRIlivMA4WQ/8KiigdByoDJBOg+Bscv6I2obt3zAMujW/dWz
         pNPUBvoGe9RuE8WFNhjpu6MZJ30FJqg/NoXJHra4ieLHrY5IURso4HWIu55M4iI01aoI
         1c5vsVkvXz1drnFbSqTsVXPdmw4o1qebfjIVqB3xkrXMnqK9kryfBV2QC1nEX/1vBGGm
         BFbxLQOcfNzXSEeFHTSeUft+wGQBx1c+JM8otqDDAAG5Fmo5MjL/F7yMxP+zPHiD+Hx8
         tsvvXoJRb8w6mMTXiy75g32UOdlYVheXQgmeBu5UcJbhk5Op+ttXNscr4d7lUfYRnFDU
         dLCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rHy97eW3;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S84oKqBsv4TYO+vzw3lhDyO7i0J2qrWWWd4XQH5F6Ic=;
        b=LZYnfvL/QuD/IsQzmxwiryEVOv1/+VYbesx0kg8Qnv+nCtoLbDeDXHN7oj353lTtRF
         XUr/28WmPEjulaNXc7AVYzAPYSSJDZysGaaHN2psntCAyPQSp1PAqXTr4VYSBRBRVELc
         6fT7ITcGvekER19OFw6YfT8oiDLU2dXcA7bLG/4ynMaGoRgcwoK22yiCT1pU0kV1HPT+
         qMur1uuLPgaPBf4J7XQsLZZy+2l78ip4r1bBTMjOz9wxwfUtxDCi0Gf9STU5GlZXSpls
         CSncaBpBynCut5GUB3sz5Le8N7/DV/QmgMGNJ3Vi5vpKTkRT6tOZdYavKXCzrMTNfe9R
         26WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S84oKqBsv4TYO+vzw3lhDyO7i0J2qrWWWd4XQH5F6Ic=;
        b=ncAUORCQ7lZo450k8oavMpv07QarKIjiYlZ+BE0DQyZ/pSOjpVzwYhuZ2ACiM7LN4j
         7s22bdpvyIhvdd9RYhudWtfVq5ytumD9Vhkh4c45bt3eEAvPSXB9B9DeIxo6qRsPLUKv
         +oAbFXuwiGsoHO2clCWbdUc9qqq/xfkliZtshOv5xK3Hl+KwrwKBJDknnU1tH9VU8F5d
         c3rq2tyKDRQieFB6vAoK4DkH62+MvYL1SbzOcGsfVtRPe7PAmZHDnheuNuuGEoQOiONB
         FEh0G/s7g5RtDhec49ZUDGKzHCH2Ni8r8k4zThWiHdn0aCslRStGgX6Y4/ZtjRI8Vx1S
         jNDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+LjOco4Eygii4PAewOdfvOo5vTGJypgBJ0agM5SBEaeNvgNKA
	TXCZ+6Q6YVoJoCKlN0dw3GA=
X-Google-Smtp-Source: ABdhPJxCw1AUuxoHNZ3Y8IbRGNZk0NQxK8dyVrvhK9g+BgJSinQZlhosXDgu0g/oqi3Kb0FQr9YFtw==
X-Received: by 2002:a05:620a:995:: with SMTP id x21mr17673334qkx.52.1604994344581;
        Mon, 09 Nov 2020 23:45:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:240d:: with SMTP id d13ls5527320qkn.6.gmail; Mon,
 09 Nov 2020 23:45:44 -0800 (PST)
X-Received: by 2002:a37:b505:: with SMTP id e5mr11589777qkf.309.1604994344109;
        Mon, 09 Nov 2020 23:45:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604994344; cv=none;
        d=google.com; s=arc-20160816;
        b=vZd+ED7EgGkzFF+vok5zWhq/KhRPx4A0ir4XJ6XRc53FgaDOZWyWYII6at+B1vBLoM
         5Ir4A/RVhOInItUm2YD+CJ+0sY7+9ifxJGB9TehrpXHU4P5Kj7ZpbRQoUgSC1dCQIrUt
         fqeXQh+g5IO7M8O9wik4iAQIjO+dFxCLbIS2ltsNmuIPYa74agpRQ8RcY1Coe6j+HDnZ
         WUqwdyedrvEXbOsvLRGuaPiE2/DSuN4mAtotLvdFNaF3oulhnBrLU1PzkefKXFEXi1fR
         g24uzURa5vjQUqBVOlDtFIYNrN6yxtqDazsLvMYtK/jH8KcMw0c7SsN9AWuh+jpvMjmq
         6muQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=V5seme1Dc/72WBLamjIKlKO0QKIx50V3ebIunpvCVQU=;
        b=VNd7xm1w80bneBVRtBeOOCTHk3eOWayyZ/lpyfErMy1ndAvCACFdRy5VcGN/ZDUzuy
         28OtaXwSn07xzRZCwpqZK53fq79T0DSTpVsaWXsGZcDS0BURvdW+H2gKOg49y5EJfAfD
         VkLMot+Evw27ixWIGMz+OGCNAhb1BrMR79LBYMRmxWjnjAzYgncYes9rFLAFJ6dty+uC
         ZVoBY1NRX1/Mp3EQIXCykE7eyc//JCkALEw7hUGWqzqNM+Ese2rSw2mjrwJgFvk2/cGW
         nlU7IA6hGTt1LmRnDtkzzjnWvSErXZ4kJxVFroiIUf+fYMqBIw1Z7QJKDbqMVCXZAvyE
         4jew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rHy97eW3;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g187si312929qkf.7.2020.11.09.23.45.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 23:45:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C148F20897
	for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 07:45:42 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id t16so13294038oie.11
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 23:45:42 -0800 (PST)
X-Received: by 2002:aca:d583:: with SMTP id m125mr1848352oig.47.1604994341968;
 Mon, 09 Nov 2020 23:45:41 -0800 (PST)
MIME-Version: 1.0
References: <202010211637.7CFD8435@keescook> <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk> <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
 <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
 <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
 <CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow@mail.gmail.com>
 <f4b4f5ca-2c0c-c1f0-9329-a95967b99bd0@gmail.com> <CAMj1kXEJL31KOMs7h_XzxFKXgqi2jOXCmLaxfKwW=wgo2so_RA@mail.gmail.com>
 <a438f99d-26a4-a1b5-9fc3-5abd2e76edb3@gmail.com>
In-Reply-To: <a438f99d-26a4-a1b5-9fc3-5abd2e76edb3@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 10 Nov 2020 08:45:30 +0100
X-Gmail-Original-Message-ID: <CAMj1kXG53RH0vJZnWJWi8KSQ6aA0uxi_uhYnffeO5+85ZTYZnA@mail.gmail.com>
Message-ID: <CAMj1kXG53RH0vJZnWJWi8KSQ6aA0uxi_uhYnffeO5+85ZTYZnA@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=rHy97eW3;       spf=pass
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

On Tue, 10 Nov 2020 at 08:44, Dmitry Osipenko <digetx@gmail.com> wrote:
>
> 09.11.2020 10:25, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> >>> So the options are
> >>>
> >>> a) merge my patch that adds 2 bytes of opcode to the Thumb2 build
> >>> b) merge Dmitry's patch that adds an unconditional literal load to al=
l builds
> >>> c) remove kernel mode handling from vfp_support_entry() [my other pat=
ch]
> >>> d) move sections around so that vfp_kmode_exception is guaranteed to
> >>> be in range.
> >>> e) do nothing
> ...
> >> The performance argument is questionable to me, to be honest. In
> >> practice the performance difference should be absolutely negligible fo=
r
> >> either of the proposed options, it should stay in a noise even if
> >> somebody thoroughly counting cycles, IMO.
> >>
> >> I'm still thinking that the best option will be to apply a).
> >>
> >
> > Can we take that as an acked-by?
>
> Are you asking me for the ack?

Yes.

> I think this is a more appropriate
> question to Russel. I'm not arm/ maintainer, but could give r-b and t-b.
>

R-b and acked-by are basically the same thing.

> If you're going to follow approach that I'm suggesting with a) + d),
> then could you please resend the two patches in a single series? The
> first one-line patch-fix should contain the fixes tag.

Ok

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXG53RH0vJZnWJWi8KSQ6aA0uxi_uhYnffeO5%2B85ZTYZnA%40m=
ail.gmail.com.
