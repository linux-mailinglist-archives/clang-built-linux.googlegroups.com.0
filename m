Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQXUWX6QKGQEA33MEHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F63A2B0C51
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 19:09:07 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id h23sf4836636qka.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 10:09:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605204546; cv=pass;
        d=google.com; s=arc-20160816;
        b=ps1LHCs9RduW1u43QyY9umX1xnje2L8JPrKRchvOGaMdJmcX350Hpyohk8FHjqu0Va
         TJ0IWA05JsY21bA3Ru+U6hfmGxOwvPZ/+aUY8oy0vx/raeKZFOuHVXCVTOgPc6vdVHFC
         SEaRKGEwFeA6QTjSlo6kYcL29sykpVt2nFuFlLBXf5kP/BdflShhBhUzgOMyBNo924J7
         s/AUktfsEvIqqypOwviL0JZ4TORYa/3DLsN73ZWlF2zkz4Pr4tyoPgCabUcouiZRs2tn
         M7724PF/BEfPFG0kK4nIedrB3V4z/7HeRHJlYSy5/s09cX18lWET8slJs4FZyMLo4jqZ
         h5DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=v4Im9v7hYHfHB3jz/V1oWC9o/tUm8WxXgmxuT67VEpc=;
        b=KjKJ+08AMgxI96QeYaOMUwi9wErKGCWM03PG37BRA2Z/n6BSVR1p0/gsccYXNbGDfY
         VKpP5cZMvGzrAtBgFb619TBdnWaD1rv13FqwgW73cPbJpyvOLZ/+KyZtx9rvIIdJHBrg
         Mqm6hDVNY51LOKa+VQ3dkxnojlcwPBPj1PbWVW0vVIL0k3R7THOmIKmSwrXrMKG85O17
         XE+TdeYCggTQ4B1nNkYeJ/mKDrbuxS0iijEwCyu+fzlbVs+XT7pF2uZ1dE6AioVVjE8s
         bg4W2S3ljgl7bGl3/ilO4Nrx/HusiDLwAP/6mUjF5k2gji2E6qTl06wadvL7ekjymESS
         HzOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A2xuNt+P;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v4Im9v7hYHfHB3jz/V1oWC9o/tUm8WxXgmxuT67VEpc=;
        b=QymEtMntkv1X228Ein2kUX+qbbIRMop52g9+fCGySIFOpfAU6XXqIUROGnV9XFiTf8
         W3CHqICQ4Z/OYDVQgmphJHyNBpvH33ayIcl90DcDWTu9qBG2U0l7CURXSZsNELoybVH1
         3jfPynhTqoJ2dkxhWvoMtJtRnBpfl28UydvvDCXxQ5HYqqi8678UpD1vUkXKU1C2HfLD
         p8ApJ/N3ykQ2HjBfiYozWL64UJ6zt3wq14SA/OJoSsoyaSZBj7HqtWUZ2X6oUzaKeRZw
         nS7tPaWb6FdkXx2gW9b83YpmQHtWKiILADbaBbTJdu2Y0zE3J6BqPTAarRymiwfuV80n
         lXLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v4Im9v7hYHfHB3jz/V1oWC9o/tUm8WxXgmxuT67VEpc=;
        b=kQo/7hKb8TVx9V3pvmA4FirKLWGqVr1um3xl2ta4SyUsZC0DfGoMnYc4rYi89lRCBi
         u6WWGTtre8PT4tnWfvfSpnvhGvGLPSev3SivPQuyRvHgKn27+3LoIxRui2ep+uUsY0fv
         akfb+KMcQHpRQZV48gXlCkUbDszkzM3y2ixeg4RfAuPkuR7BrovrSoMAjQNHGRxZBlmI
         iT3bL1i78LZ6ZZI6/Y0YMOoJNCdNhP/c7K9X8yD0XShC9QjnBqLFChvFf9SQnP77sJdv
         CoruT2jvcdamGKdkI1lYSIH+cWVyx5dC083O1/PF9Pte5uZRSGxwQhWNqr8tdmRmWNqZ
         l0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v4Im9v7hYHfHB3jz/V1oWC9o/tUm8WxXgmxuT67VEpc=;
        b=TgE5pj83Xs1/r7XtYw/5Rv0veJD4VsYWgY7miUH/Ee4Nzb2lrRFBYRA+BdwzCYDkAA
         uVH+4h1YTJZBQZ1uyiJc3iZW6zSMlf/5xwUYyKJ2QagdZcoqSTe5k66s0LLqVayahz9j
         OrswplaQgHfhUTuNyq1Qoucg/P5cRuMHqsOssBZ26hWFoMWbfCIMR11qlheNSM9okKCm
         paEuM3ZDlTGMhe394oFzrGumwXK0eVwaEvAONtHG072aCMyV5bPP9Pa6v5h/Iduv4OeC
         Q4n4yReNIJWlGRlaJ3sor/EFhrOttzcdEVMSaRGOw3hAo+VoTaVec8buzQuzfmdpxzdj
         wJBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332R0VyulQiw9aVMH1hymHhpQ43A/pGfqeVlSbvIq+wwMGxYukh
	P05IuJpLZAq7l8ttcw+UzWM=
X-Google-Smtp-Source: ABdhPJxhtQ2qNkn8NMBRMbkAXcv1DiYL6d4V5XK92Jmg1ocwtC3x900lO6M+pAwa9WJ85/zlVqOtAg==
X-Received: by 2002:a0c:fb4a:: with SMTP id b10mr885846qvq.1.1605204546365;
        Thu, 12 Nov 2020 10:09:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:304e:: with SMTP id 72ls1253627qte.9.gmail; Thu, 12 Nov
 2020 10:09:05 -0800 (PST)
X-Received: by 2002:ac8:431c:: with SMTP id z28mr421744qtm.118.1605204545888;
        Thu, 12 Nov 2020 10:09:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605204545; cv=none;
        d=google.com; s=arc-20160816;
        b=wr2xOLw/xQlL2/nl2abFOUN/FVByNh0P+0vIhzPcujF9pBH96J1Ha1x3huccVvomvb
         Mb3A+R1dWasaeuYeursrzPwcoX0eRHjd9UG3DRxXG1UXGvBYsVUe+mOmA6WqDTZuWvWZ
         8V/b88G0QLCjxdGyutL35vhfK589Tf27I1kt7jAAQBcdKAx5qLz0ZVEYAHHl9r+CiInO
         HbfptTFtH9AOaT3wMaOZpQexvJ5Nx3qFqvWZULjSN5IhIUenSbMsFKmYAOA6kXKmUqAv
         WkSgen7dvmsmKUiC6rgg+Lt7IuQv7RuoLkKcxEfSXGTzoymeTHvdELiHxEzW7LaFHeUl
         f/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O8w5eL8a+QV57B/jVWr5Nut2fi1R7VtNR2kkAi+fZ/k=;
        b=iI0LE9Tvyns7YtspogW2SNf2ElZJkQIpoQnKWA8/IdnFkZ00lFEgUv8dc+33R5cPe0
         zdBiqQdPDcEGneKkBar1+MoYnrXrNoJOuS5XA0bxWmgvgQaUhqLQe2v/yb3AGmte6Uys
         3sl0N/iNQzhbL8NNqJtTN+/GXxzsnp3QgxplNZ+iKRVRDOwxXmgwDnMpdCsjwfHf5eA5
         8aui1up3BS0Ksz1nFekK2y/i8x86Ye32VfvVpGGDVFaNJh8njcy1KHPJHDEdqxt92NN2
         uB6rujtQYw4masMap0NHOM6kVYRgNER8Gv2pdCBH0NO9jBcy6K/Twf494k+TgsRFWqwP
         mdwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A2xuNt+P;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id o23si401756qtm.3.2020.11.12.10.09.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 10:09:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id h15so6111273qkl.13
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 10:09:05 -0800 (PST)
X-Received: by 2002:a37:2f43:: with SMTP id v64mr1003475qkh.127.1605204545543;
        Thu, 12 Nov 2020 10:09:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id e186sm5122506qkd.117.2020.11.12.10.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 10:09:04 -0800 (PST)
Date: Thu, 12 Nov 2020 11:09:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Matteo Croce <mcroce@linux.microsoft.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
	Pavel Tatashin <pasha.tatashin@soleen.com>,
	Petr Mladek <pmladek@suse.com>, Mike Rapoport <rppt@kernel.org>,
	Tyler Hicks <tyhicks@linux.microsoft.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-ID: <20201112180903.GA935117@ubuntu-m3-large-x86>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com>
 <CAFnufp2eEKW4tencrhUoYkY6C-eGB5xF_Fg5hms52zgJj68hJg@mail.gmail.com>
 <20201112174954.GA934563@ubuntu-m3-large-x86>
 <CAFnufp2edm5wkRtLzZf0XwL2xCKzJ7EgpZAKKg70QzZog_ND-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFnufp2edm5wkRtLzZf0XwL2xCKzJ7EgpZAKKg70QzZog_ND-Q@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A2xuNt+P;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Nov 12, 2020 at 06:59:36PM +0100, Matteo Croce wrote:
> On Thu, Nov 12, 2020 at 6:49 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hi Matteo,
> >
> > On Thu, Nov 12, 2020 at 12:26:45PM +0100, Matteo Croce wrote:
> > > On Thu, Nov 12, 2020 at 4:50 AM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > Clang warns:
> > > >
> > > > kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> > > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > > [-Wenum-conversion]
> > > >                 reboot_mode = BOOT_TRIPLE;
> > > >                             ~ ^~~~~~~~~~~
> > > > kernel/reboot.c:709:17: warning: implicit conversion from enumeration
> > > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > > [-Wenum-conversion]
> > > >                 reboot_mode = BOOT_KBD;
> > > >                             ~ ^~~~~~~~
> > > > kernel/reboot.c:711:17: warning: implicit conversion from enumeration
> > > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > > [-Wenum-conversion]
> > > >                 reboot_mode = BOOT_BIOS;
> > > >                             ~ ^~~~~~~~~
> > > > kernel/reboot.c:713:17: warning: implicit conversion from enumeration
> > > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > > [-Wenum-conversion]
> > > >                 reboot_mode = BOOT_ACPI;
> > > >                             ~ ^~~~~~~~~
> > > > kernel/reboot.c:715:17: warning: implicit conversion from enumeration
> > > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > > [-Wenum-conversion]
> > > >                 reboot_mode = BOOT_EFI;
> > > >                             ~ ^~~~~~~~
> > > > kernel/reboot.c:717:17: warning: implicit conversion from enumeration
> > > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > > [-Wenum-conversion]
> > > >                 reboot_mode = BOOT_CF9_FORCE;
> > > >                             ~ ^~~~~~~~~~~~~~
> > > > kernel/reboot.c:719:17: warning: implicit conversion from enumeration
> > > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > > [-Wenum-conversion]
> > > >                 reboot_mode = BOOT_CF9_SAFE;
> > > >                             ~ ^~~~~~~~~~~~~
> > > > 7 warnings generated.
> > > >
> > > > It seems that these assignment should be to reboot_type, not
> > > > reboot_mode. Fix it so there are no more warnings and the code works
> > > > properly.
> > > >
> > > > Fixes: eab8da48579d ("reboot: allow to specify reboot mode via sysfs")
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1197
> > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > ---
> > > >  kernel/reboot.c | 14 +++++++-------
> > > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/kernel/reboot.c b/kernel/reboot.c
> > > > index deba133a071b..8599d0d44aec 100644
> > > > --- a/kernel/reboot.c
> > > > +++ b/kernel/reboot.c
> > > > @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
> > > >                 return -EPERM;
> > > >
> > > >         if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> > > > -               reboot_mode = BOOT_TRIPLE;
> > > > +               reboot_type = BOOT_TRIPLE;
> > > >         else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> > > > -               reboot_mode = BOOT_KBD;
> > > > +               reboot_type = BOOT_KBD;
> > > >         else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> > > > -               reboot_mode = BOOT_BIOS;
> > > > +               reboot_type = BOOT_BIOS;
> > > >         else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> > > > -               reboot_mode = BOOT_ACPI;
> > > > +               reboot_type = BOOT_ACPI;
> > > >         else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> > > > -               reboot_mode = BOOT_EFI;
> > > > +               reboot_type = BOOT_EFI;
> > > >         else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> > > > -               reboot_mode = BOOT_CF9_FORCE;
> > > > +               reboot_type = BOOT_CF9_FORCE;
> > > >         else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> > > > -               reboot_mode = BOOT_CF9_SAFE;
> > > > +               reboot_type = BOOT_CF9_SAFE;
> > > >         else
> > > >                 return -EINVAL;
> > > >
> > > >
> > > > base-commit: 3e14f70c05cda4794901ed8f976de3a88deebcc0
> > > > --
> > > > 2.29.2
> > > >
> > >
> > > Hmm, this was introduced in v3 I think.
> > >
> > > I wonder why my compiler doesn't warn about it, the two variables are
> > > defined as different enum type.
> > > I get the same warnings with GCC and -Wenum-conversion.
> >
> > What version of GCC do you have? -Wenum-conversion is a fairly new
> > warning in GCC I think. Although if you get it now, maybe it was some
> > configuration error?
> >
> 
> Hi,
> 
> the one shipped in Fedora 33:
> gcc version 10.2.1 20201016 (Red Hat 10.2.1-6) (GCC)
> 
> I enabled -Wenum-compare -Wenum-conversion globally in the root
> Makefile and I had only 15 warnings for an 'allyesconfig' x86_64
> build.
> 
> Maybe it's worth fixing them and enable the warning, it's very useful.

Ahh, I thought that -Wenum-conversion was enabled with -Wall for GCC, it
appears to be enabled by -Wextra. I believe that Arnd has been tracking
down these instances with GCC and sending patches, I assume in hopes of
turning on the warning globally. I agree, the warning is definitely
helpful and clang has helped catch several bugs with it.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112180903.GA935117%40ubuntu-m3-large-x86.
