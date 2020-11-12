Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRPLWX6QKGQER42SGOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC732B0B99
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 18:49:59 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id x82sf2040846vsx.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 09:49:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605203398; cv=pass;
        d=google.com; s=arc-20160816;
        b=u3NvskY9udc2mcF7HBx0PlxSqbEp0p/m2kaBPPJtybRqfSX3hoJiQ0/eLPTx0QCoHL
         +ZLEVVMqQ3bMayeNqYfyvYaSRGAde2W+lV02rsnJqmu/Os82kKOugyVcR5oX68oTgzuA
         PyZed1b6nCb59NLcCWIb36qQMKoc8JweNB/sJn6Knvuuny0QKa4EvJqe5RshEY2uqUUi
         0CYRdjZ/LqcxEXcGGYUHwvA5hu74abqzOvwgQmOwYSnOj4DQhwZD7V6Wo77Lmatw+lon
         4FdUWvYIHG0UBKifCvyAdVuSFJfdoX6nlL87OiJ+O4lporL6RXDvi+jSWo95Bumxzf/2
         gunw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=P20hqYpFJkNae25T8g1V+8SRfuiuWP+kBI3WSU8nhIY=;
        b=Zy2vfqFEBMRBHK75EjtmAddOUG0UxqeO7846KZdOP/zJltnvU3TIvTGLufFjFB+gN1
         rmGBX8bd8PlwOCHoJhf9KL9/KXIGSRoVDmTZgm4v0tXORIl1v5jTzahD4316V+v7PLBr
         8uadaQ+TtpS0SZzFB5GURnNiAv6igySBDBwAUP/lUJvS05d7JBNONexagE80O8WPCHb+
         tkGxeDEqf4PsOZFiHUEDnZZ+OZs5KceAYeKKXo16Iszxo2b9SMHHf+kblJB1xO2oYRPy
         d9312I9+/E/W9Z+9PMqFUDnF3qQMCn1jMJt2KQpjBA5ApzElIFW0ybaFztTQwAra8ZoP
         FfIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xvx/OrnR";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P20hqYpFJkNae25T8g1V+8SRfuiuWP+kBI3WSU8nhIY=;
        b=LaZa9Au1cms3r3iVNdVQhNVKIZv2w91wye/8Lsp4P91D4HdyReOagf3Hq19/Agc1SO
         TEASyu2nB7AUqaRm0hST+jdcZnhfrIacqixEDdzi89sLVi9kGSqMUp/Y84M//bic3xWu
         e1wLrSgI2G+IAmOM31MqhWn7Tc8WzwjwPqGqdpsHUFdC5BZ9exv9neeOyyZm6tD4aKAJ
         GIfMX4W0D3bfoHV3J6wtgPkGVvFfEMPoLjKsIlzAH+/ZqbeTScTR987Cf67ha6AVHMra
         RLer5aLdpRvyTDbNOe+3ot+0mtTcG0Tuea+t3hqO6+TWuI4V/KCyV2HCPQvn+od7AKJ7
         X9VQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P20hqYpFJkNae25T8g1V+8SRfuiuWP+kBI3WSU8nhIY=;
        b=KPu4i97T7sgydw/0/KBAdXtS/IZBt0Mr6WilfkIczrpaFRqWYergbJ7pgYwBlOoZYX
         3lYudepPv/knxeDbEixMCNnYoP/81GfRGt3ZJYHheZBchf6xLs5eI0RcaUcWPeXL3+k1
         nh8cANbRqFs9JzyJqbLLR+9z++ZmflU2XpmLTIEUw9EWP3yaPkojj5hvfE/SvWRv38wo
         V1i8vp+jWefeDFc92d6jl3mf/dIbh/4jNN1TINS83cEwyBysiheF88GCG2bQWk1aDmkn
         pZxUix4esWLZFp95o7u9FVryBeLd+V7xmmBUTTQrxymDGK2xXS9lPreUCYX2jDLa731M
         37Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P20hqYpFJkNae25T8g1V+8SRfuiuWP+kBI3WSU8nhIY=;
        b=osh1sRORg3vRO28nZmGe04oRpVpLRRkLo0GZKUUvuSwLsc4uGm01yr5UEq8KyyXsNs
         BlrIkDHhkRK/r+27RL59Hsv2gNbfLukd62gCyiCOG1u0XdpqoGvsK4H+PFvGHj4xxWhO
         LnO9HyjyAfN6/i5dfpy3vvhzoh5J5Q1KsCuMc63SbM+0ck71tt+MRCqk3tLSuWL4NJ0N
         rWrvxS+tVubx15PPw1webb6mHGOzQ8xn0vRe925fC6iv2ySJ5N06RrYyqqJ7eAiFioQo
         6T5EQ4AOq2M1nNtn0BEWDMbM58YxsnFbCMYR9gLAnK9eQ/gQRJbFUz4/hB5Cn1K3z7Pe
         JZvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KCVozyqewnrNKPZhlXeemuIgTwIeOhN3O/VQvLIVoGySNVZQj
	vPvGj0f0TyiVwa3meMEgy4U=
X-Google-Smtp-Source: ABdhPJwGTd2IVyGCGqZQlrLTEivCnaLLDUYFURyFDzBCgLiW7jHCajPZvn6cPXBP1L2cXJcQxkMx/g==
X-Received: by 2002:a67:f055:: with SMTP id q21mr546754vsm.15.1605203397957;
        Thu, 12 Nov 2020 09:49:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3b19:: with SMTP id i25ls279467uah.5.gmail; Thu, 12 Nov
 2020 09:49:57 -0800 (PST)
X-Received: by 2002:ab0:3004:: with SMTP id f4mr711122ual.105.1605203397475;
        Thu, 12 Nov 2020 09:49:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605203397; cv=none;
        d=google.com; s=arc-20160816;
        b=Sf1w7OP47BGJGdzAymVQ57gHW/qDHh8ha+WrcYznF3stfldvx8W8pC3siBsvc++4it
         Jyg0m7V4bODji/WKfPAWCaqvL8ks34UrSpoeNooARe+Hc13mRs2UM7TA2P38Eb4Ue6PN
         JEZWsZxsO0uWvmkrG6Hif4X4tFewY5tuWvhY9W0RFhi525rRIjL9bFGEO1HjS/Q9uHMl
         SBHBfIITUlvnQb1Rb49vG5i4gSV8Dbpvd47Lze5QTY53IC1qS+fqnMyYXaVZiwDfSeTF
         /DNYCYrKC7SNbJiRqgaYozlU/Ti9P49Xp4SaFJbxlmmBmB5aeruA87p3lvmoU8S0sqRb
         33gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DOzovp/JPeex+MvYDmhccU6DaC2VE2y5zyRUd+90Qqg=;
        b=Hhr2btmWlA3C/2+vg9b2MYTkcVGBB1oxv70yj82b2p/0CYlemn28Wscdzy+4/YSsaj
         B5vPwduKinv+z7DMJmHuqc8VccsVRY8RckRm3UFfRkpvdVw7hYbdunnrwDLkm1NmZT3l
         BcyWNtjOiba/+vIo4Q8ySTdwn4GKy2k+nysHh1Ue51n3CDpVCnpvXPm8KPq0FFidb1Dk
         bgLvG0diBaEVIevVjvzCuTePkK4KuGNfIESdHT2BviGl6tOrcDGePnkDvnRvbN5A/KCX
         x1Pklo1jSbuAIECcmCUeSwmOrxZrgGFWtgHZ59JXJdO7sDofS3EXFvOR95HQ98PThi4t
         W3Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xvx/OrnR";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id j77si361295vkj.1.2020.11.12.09.49.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 09:49:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id i12so4608483qtj.0
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 09:49:57 -0800 (PST)
X-Received: by 2002:aed:22c5:: with SMTP id q5mr315410qtc.234.1605203396999;
        Thu, 12 Nov 2020 09:49:56 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id l79sm5421245qke.1.2020.11.12.09.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 09:49:56 -0800 (PST)
Date: Thu, 12 Nov 2020 10:49:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Matteo Croce <mcroce@linux.microsoft.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
	Pavel Tatashin <pasha.tatashin@soleen.com>,
	Petr Mladek <pmladek@suse.com>, Mike Rapoport <rppt@kernel.org>,
	Tyler Hicks <tyhicks@linux.microsoft.com>, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-ID: <20201112174954.GA934563@ubuntu-m3-large-x86>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com>
 <CAFnufp2eEKW4tencrhUoYkY6C-eGB5xF_Fg5hms52zgJj68hJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFnufp2eEKW4tencrhUoYkY6C-eGB5xF_Fg5hms52zgJj68hJg@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Xvx/OrnR";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Matteo,

On Thu, Nov 12, 2020 at 12:26:45PM +0100, Matteo Croce wrote:
> On Thu, Nov 12, 2020 at 4:50 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_TRIPLE;
> >                             ~ ^~~~~~~~~~~
> > kernel/reboot.c:709:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_KBD;
> >                             ~ ^~~~~~~~
> > kernel/reboot.c:711:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_BIOS;
> >                             ~ ^~~~~~~~~
> > kernel/reboot.c:713:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_ACPI;
> >                             ~ ^~~~~~~~~
> > kernel/reboot.c:715:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_EFI;
> >                             ~ ^~~~~~~~
> > kernel/reboot.c:717:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_CF9_FORCE;
> >                             ~ ^~~~~~~~~~~~~~
> > kernel/reboot.c:719:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_CF9_SAFE;
> >                             ~ ^~~~~~~~~~~~~
> > 7 warnings generated.
> >
> > It seems that these assignment should be to reboot_type, not
> > reboot_mode. Fix it so there are no more warnings and the code works
> > properly.
> >
> > Fixes: eab8da48579d ("reboot: allow to specify reboot mode via sysfs")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1197
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  kernel/reboot.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/kernel/reboot.c b/kernel/reboot.c
> > index deba133a071b..8599d0d44aec 100644
> > --- a/kernel/reboot.c
> > +++ b/kernel/reboot.c
> > @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
> >                 return -EPERM;
> >
> >         if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> > -               reboot_mode = BOOT_TRIPLE;
> > +               reboot_type = BOOT_TRIPLE;
> >         else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> > -               reboot_mode = BOOT_KBD;
> > +               reboot_type = BOOT_KBD;
> >         else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> > -               reboot_mode = BOOT_BIOS;
> > +               reboot_type = BOOT_BIOS;
> >         else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> > -               reboot_mode = BOOT_ACPI;
> > +               reboot_type = BOOT_ACPI;
> >         else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> > -               reboot_mode = BOOT_EFI;
> > +               reboot_type = BOOT_EFI;
> >         else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> > -               reboot_mode = BOOT_CF9_FORCE;
> > +               reboot_type = BOOT_CF9_FORCE;
> >         else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> > -               reboot_mode = BOOT_CF9_SAFE;
> > +               reboot_type = BOOT_CF9_SAFE;
> >         else
> >                 return -EINVAL;
> >
> >
> > base-commit: 3e14f70c05cda4794901ed8f976de3a88deebcc0
> > --
> > 2.29.2
> >
> 
> Hmm, this was introduced in v3 I think.
> 
> I wonder why my compiler doesn't warn about it, the two variables are
> defined as different enum type.
> I get the same warnings with GCC and -Wenum-conversion.

What version of GCC do you have? -Wenum-conversion is a fairly new
warning in GCC I think. Although if you get it now, maybe it was some
configuration error?

Regardless, thank you for taking a look at the patch!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112174954.GA934563%40ubuntu-m3-large-x86.
