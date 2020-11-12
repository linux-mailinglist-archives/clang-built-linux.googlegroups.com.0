Return-Path: <clang-built-linux+bncBAABBLPQWX6QKGQEQJWV7AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8702B0BF1
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 19:00:15 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id f5sf4498360pfa.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 10:00:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605204014; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXiv6sMrHpYsa1CbHUmWIx1hYxBaz7TpWFEYJCrX2t2AJNBlAE7VtPgS3chvJIXUH4
         NqZxle1z44a/TB22XrprlLOEiCY9tgkzjIpSSLEFV2O6u4xwYhMaSfrNGBQmIxB4Bukz
         4/FwHZVyxKzHHPzVIHUMMSdeIOBXdXShTnq7hfGvF6DqMZqGe6OcgvwtPQFWRA35U91m
         TYpXgiA+VE8puNpqoCSX9DiO3DxN3rwhXhmCJcnhdsHlsQH/kOBFlcMTP9g3jaBTWXeL
         ehjL2HJVvnC4Sib+5gk/NcJ2bhmxc0A4zTCpFxDpBJiFk1gF/L8f435fqHFIkwxuu8cJ
         4sUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=3lEjbaY6J9uxDTSyFx4OqfsX4LlrLygbwWkBrhmnNEA=;
        b=ds9Q6bFSwK+ThosKq1XH7M93IDPxHUbRmWiJHt0jPl1vf5v5sEk3q0mekiGwSUCEN1
         M9Rh2V9Gjlj6549+N5Iqsl4ZpnkJBM19U21oasmwwtfWIUlnvCBvaKhvM5vwNp+ZwhEH
         ECxOiyT+eXl1LAMpM9RjMm3fMgkj++VF4kKWqk8Lgy8lKYTe4tGKQEjVJIa5YsoRWNOy
         N2ACGpbxgk/OcmcG8K/6fRWkMDTw2fIF7xkZbml3nOkxzZyWeGjz5b7rIJrnpp1Aln7G
         tPCyTJNV/Jc9Hfke3xzeHe4JmCIcn1Sb8rp9qVL7xh9yOydYzkYAujlCXd0YTI2d+3wV
         dqKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=p5DjSu3n;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3lEjbaY6J9uxDTSyFx4OqfsX4LlrLygbwWkBrhmnNEA=;
        b=paAPsEJotZCXOuASW8Lz95NACEC+2McCjFm8J0sMnjAi6fPsjSMyF/vVa1O45+j9lz
         5IKeqA046XE6+nIBLT6b3gKikIqHh9MWkK4m9xrAMSm+B2Z73xqEKYehXgduXYmKYEdq
         h5SMo0326kQ/Vi/PfWsjSLMWeoWVpo/4MFI1XCF+L4Q4sL1td6tKwfoj+8DKwsYTzjGg
         PaekMh5Y7KjtkPJem7stvtrZnmGOX6lY5q/3Py/gG1/6ESL7bvm/aIgtAwxn6d4xy/AS
         vUm0QD3DdoFWl4SkeCIjU/4X8wR15bovd2tLL3QRtRY8B96H5rQKPVZDVR+jMX/3oMAE
         RH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3lEjbaY6J9uxDTSyFx4OqfsX4LlrLygbwWkBrhmnNEA=;
        b=SboqBwZDPLirJ+yJKur/dp9U88hzVHVFKMGMos3LqAmSQbK8L9MZeGOSVdJJwGW1wm
         pi3HtOuMs9mv22TIhDDJfbySSmznHuqf0lzLKaQiiuZEObYZvB9SCVqkj241j07TXYBF
         fMGUv4W+/J2g3fEC/pARsOST6hahoMgzpPqZ/UfJ9mWGyxkhnbgqDVaBKV2Ru5t9i4c9
         kh7g7A85iZHlOf77fjoV4mrgt8/rFVUZ1DQFsJSg9BiH2In4G0SuLleDD4fFH6ck9Cp9
         JNJ9nCNFBHVX575gvEOms31JrtdoXA7zuT+Iq5bSvlatPeDatTJUatlUw8VCAKwF+VtC
         x3lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332K6NcvAIlV0bMjC/eCGtatSzSQ/LLza1ublqU0+Cy4JzgqXT+
	pt6tNfju23jVz+cvWXXS83E=
X-Google-Smtp-Source: ABdhPJwjWfCzbueoflsJH8kjFQFZ+KtWybyaglvw1lx3YEhR3bv2jO9oXubxCyo0p9bsO40xPNDVkA==
X-Received: by 2002:aa7:950b:0:b029:18a:df47:ef90 with SMTP id b11-20020aa7950b0000b029018adf47ef90mr474854pfp.74.1605204013935;
        Thu, 12 Nov 2020 10:00:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:223:: with SMTP id 32ls1783125plc.1.gmail; Thu, 12
 Nov 2020 10:00:13 -0800 (PST)
X-Received: by 2002:a17:90a:5898:: with SMTP id j24mr406033pji.78.1605204013392;
        Thu, 12 Nov 2020 10:00:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605204013; cv=none;
        d=google.com; s=arc-20160816;
        b=tDuKmpkaki4hW5ylqC1C1ZRXD5epvdqueJABv9nJOvPVsoI2OTprEaByWQSrY9yQyQ
         t6wEOfIDFLCIoTR0GxyQKIhqS9zSjCVloFyA2alr1Ox+9WVFkU/4nNzBsJJxNo3U4o/5
         UQ1JB+A13A7Yj5CCVm4aT6ruKo85RHMFzLrXTY1X4efXDW6KF+hBwmTM5/UY7JcT7Saq
         3VnjxbFu2xrt+Ao7b8izoiLPDSPzz+jasHGPWqE1LsVGcnSY+FFsEtPvTJSjF4d2HxzD
         7hLkDF1dvghC9G9DVZmYegaxJ/LBbJxB6lTwBRHiyTKN3uY1YE5NNAzR3IAxt/WbeFcq
         /MCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=rWOh7GylTqiAkTDgEMzJCdlRF0cb3PsMAOZugOSpS1M=;
        b=htHyKgCspgEMjJZu5WwBXcl9DwxH7Gny10XbeihIgB1278PnYMaEvHMPx5auGz+rOr
         IFoXzL35RiWw85WzcwReCjBUjxU/74wlpHX/yDUB5VvbLioMbV+1gpcDlClPTbU3gbbh
         GL6Ns1/M93A+ALH1eJ/BSaxsanxiKXdYi/IhziLKR5mlRmXagNkIRzp1/rmAh9y7WzzY
         A8tr8AZT+0tZYXFhwIT95pp2wSQBrxLgd/HS30xaiBDQ40t2aK/MOGHWjDZAeYXqgH5T
         oZuyYdryXG7HHfw43/78EcBQnOWv0Rupj6on1gZBRvl/G2waFmV5il+dkgfIzWCcMzRv
         KZOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=p5DjSu3n;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id l8si483439pjt.1.2020.11.12.10.00.13
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 10:00:13 -0800 (PST)
Received-SPF: pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by linux.microsoft.com (Postfix) with ESMTPSA id D9F2520C288A
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 10:00:12 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com D9F2520C288A
Received: by mail-qv1-f43.google.com with SMTP id ec16so3216144qvb.0
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 10:00:12 -0800 (PST)
X-Received: by 2002:a0c:cb04:: with SMTP id o4mr953748qvk.15.1605204011871;
 Thu, 12 Nov 2020 10:00:11 -0800 (PST)
MIME-Version: 1.0
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com> <CAFnufp2eEKW4tencrhUoYkY6C-eGB5xF_Fg5hms52zgJj68hJg@mail.gmail.com>
 <20201112174954.GA934563@ubuntu-m3-large-x86>
In-Reply-To: <20201112174954.GA934563@ubuntu-m3-large-x86>
From: Matteo Croce <mcroce@linux.microsoft.com>
Date: Thu, 12 Nov 2020 18:59:36 +0100
X-Gmail-Original-Message-ID: <CAFnufp2edm5wkRtLzZf0XwL2xCKzJ7EgpZAKKg70QzZog_ND-Q@mail.gmail.com>
Message-ID: <CAFnufp2edm5wkRtLzZf0XwL2xCKzJ7EgpZAKKg70QzZog_ND-Q@mail.gmail.com>
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Guenter Roeck <linux@roeck-us.net>, Pavel Tatashin <pasha.tatashin@soleen.com>, 
	Petr Mladek <pmladek@suse.com>, Mike Rapoport <rppt@kernel.org>, 
	Tyler Hicks <tyhicks@linux.microsoft.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mcroce@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=p5DjSu3n;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

On Thu, Nov 12, 2020 at 6:49 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Matteo,
>
> On Thu, Nov 12, 2020 at 12:26:45PM +0100, Matteo Croce wrote:
> > On Thu, Nov 12, 2020 at 4:50 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Clang warns:
> > >
> > > kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_TRIPLE;
> > >                             ~ ^~~~~~~~~~~
> > > kernel/reboot.c:709:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_KBD;
> > >                             ~ ^~~~~~~~
> > > kernel/reboot.c:711:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_BIOS;
> > >                             ~ ^~~~~~~~~
> > > kernel/reboot.c:713:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_ACPI;
> > >                             ~ ^~~~~~~~~
> > > kernel/reboot.c:715:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_EFI;
> > >                             ~ ^~~~~~~~
> > > kernel/reboot.c:717:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_CF9_FORCE;
> > >                             ~ ^~~~~~~~~~~~~~
> > > kernel/reboot.c:719:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_CF9_SAFE;
> > >                             ~ ^~~~~~~~~~~~~
> > > 7 warnings generated.
> > >
> > > It seems that these assignment should be to reboot_type, not
> > > reboot_mode. Fix it so there are no more warnings and the code works
> > > properly.
> > >
> > > Fixes: eab8da48579d ("reboot: allow to specify reboot mode via sysfs")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1197
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >  kernel/reboot.c | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/kernel/reboot.c b/kernel/reboot.c
> > > index deba133a071b..8599d0d44aec 100644
> > > --- a/kernel/reboot.c
> > > +++ b/kernel/reboot.c
> > > @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
> > >                 return -EPERM;
> > >
> > >         if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> > > -               reboot_mode = BOOT_TRIPLE;
> > > +               reboot_type = BOOT_TRIPLE;
> > >         else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> > > -               reboot_mode = BOOT_KBD;
> > > +               reboot_type = BOOT_KBD;
> > >         else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> > > -               reboot_mode = BOOT_BIOS;
> > > +               reboot_type = BOOT_BIOS;
> > >         else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> > > -               reboot_mode = BOOT_ACPI;
> > > +               reboot_type = BOOT_ACPI;
> > >         else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> > > -               reboot_mode = BOOT_EFI;
> > > +               reboot_type = BOOT_EFI;
> > >         else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> > > -               reboot_mode = BOOT_CF9_FORCE;
> > > +               reboot_type = BOOT_CF9_FORCE;
> > >         else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> > > -               reboot_mode = BOOT_CF9_SAFE;
> > > +               reboot_type = BOOT_CF9_SAFE;
> > >         else
> > >                 return -EINVAL;
> > >
> > >
> > > base-commit: 3e14f70c05cda4794901ed8f976de3a88deebcc0
> > > --
> > > 2.29.2
> > >
> >
> > Hmm, this was introduced in v3 I think.
> >
> > I wonder why my compiler doesn't warn about it, the two variables are
> > defined as different enum type.
> > I get the same warnings with GCC and -Wenum-conversion.
>
> What version of GCC do you have? -Wenum-conversion is a fairly new
> warning in GCC I think. Although if you get it now, maybe it was some
> configuration error?
>

Hi,

the one shipped in Fedora 33:
gcc version 10.2.1 20201016 (Red Hat 10.2.1-6) (GCC)

I enabled -Wenum-compare -Wenum-conversion globally in the root
Makefile and I had only 15 warnings for an 'allyesconfig' x86_64
build.

Maybe it's worth fixing them and enable the warning, it's very useful.

Thanks,
-- 
per aspera ad upstream

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFnufp2edm5wkRtLzZf0XwL2xCKzJ7EgpZAKKg70QzZog_ND-Q%40mail.gmail.com.
