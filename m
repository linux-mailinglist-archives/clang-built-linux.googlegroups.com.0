Return-Path: <clang-built-linux+bncBAABBYVMW76QKGQE4ZZ66HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 750DC2B1363
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 01:42:11 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id m17sf5013242qvg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:42:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605228130; cv=pass;
        d=google.com; s=arc-20160816;
        b=HIPOgvnMVhk6sNA3xfQV1/kobhYrmaPwT8C1IbDUJ4zu+mF344w8NhMSXinAvCI1Ci
         w+r75gD5AWo6bIUc90OxeZXDkbqygvdtHo9dS/Hdk88k7ZLxHuEBd9LabVuaUj2ovGrB
         MXZ/+FrIKMqDFAOaEsfZAr7kmpCu/ewCEGW0dA0qqJOgtEWfOiNXPK4jpI3GAqSC81F6
         IdyypNsG4deLJBdpOIpfhe69TJ+Bfexf/lTzp+PIht4UFXKBLLC/CWpaShi0NWALfZ88
         20dVFYxlzVDDiNWFRIXMh9lGuYa44pdau/g2zUP/f5G/s69RROv7le9ZRp5qLXmNz+5D
         G0gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=V6gpRdozP8T78O6WtN/IYCViq40H6zCnn2GOJy1UcR0=;
        b=lkvLgXkXTGVVIxC/oxLlc0ggsjAGHkezqC7G8PgydI8R7PHqyZWqOjw750sL1PL+47
         FOOwA8LuP0cXg85ZsWw2IiIYqvcvJyBoBbeDLfcXyTPBajfZNwDMQsB95Hc9r8aybDcB
         3Jw5mWVcbPRIl+bmT0ET80j1U17iUbFWgpBbURewDcHL+q8qajQZJRXwYg5KA/W4D/3K
         X75dh4h983jl1nFDDfqS7ZvkFfQanw0ElPEpXSJLvoipbdr4Yb+mmouo1Ho4h7vRe/2o
         16lyjXWO2gB7I8GENdj/rOVuOjRa/Muu1sOub9UFVC6jkFIRztfia23aAnNt5sYQfnum
         HEuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=jB9OEBKJ;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V6gpRdozP8T78O6WtN/IYCViq40H6zCnn2GOJy1UcR0=;
        b=DB/jWZRq7BbXzm0Zj/ej2O7l1A/qSnJlyEaXnCL6eHl+mULEKgszgzkRSyr2C/dJiQ
         XD2nSCC4vjHRd9eEW75ROF6a3epLHdtQ2pfYg5uEedofNKc/VSuxmdQFXLaBgUDQgJc7
         s4rxTmYfd1FVRg5ihi2s3dgsKBCR+y9Gec9YngFbHODBGB4+qh9unfI7/nrb0trNTLfK
         +FwQPFo1+dL0VKCGktnkDWpcq3ztPmH9hR1cqgO0Hn8HHA53Pafuh2HIw2abnDyn6x/F
         155kaZ2Q8Dc8md9DNs1YyTVawgWI+T8VZZNIjGqWwjchbRUhhwlKlSsPAhgnxKH93fyW
         mdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V6gpRdozP8T78O6WtN/IYCViq40H6zCnn2GOJy1UcR0=;
        b=TAXyCnp8nsKX94uhbUwzHm0xctEZF2D1dtwdM8JTIGgDYlcke/jK6OjD42UPOIKc2z
         ayeOuKF7Yz0Ej56igyyMp9FDKrDbGiNCF0YuW7asPUkk+WbkvuscXmalLfWdf8gZalO+
         KR0oPu/Lkbpw2+fjloZ/OG/vZv4cbDLcRKNzGsiWbtt1zz5y2tUu28EqsQgv0lPqGOeT
         XzhgRHfdry2hVL0NRZk/Fnh89bZZbFS8lcMxfrL/T5y9gJVfg9XJ1o9aqCDD/S/tVBZ/
         +ktDJczh/MWh0wVoRHB5HdsjQrR9f9YBNNMl/6711/NCn4OfhCknImLie4v2+XP21ODq
         DwHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ajNdMwF83sHoTqXIkV5TxGVxmz3XXEb37QI1+jgKUmmm/pCyJ
	Q40rFGOiikXkUS6SyjmEQMs=
X-Google-Smtp-Source: ABdhPJxNML4M00shzbO9mI8Psos5G2Hqmo6XBwgpm/IF8M2swhqhrGszo/vzou9Wb5oXxNztWmjOrA==
X-Received: by 2002:ad4:5888:: with SMTP id dz8mr2499327qvb.34.1605228130535;
        Thu, 12 Nov 2020 16:42:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a2d1:: with SMTP id l200ls2145582qke.3.gmail; Thu, 12
 Nov 2020 16:42:10 -0800 (PST)
X-Received: by 2002:a37:78c:: with SMTP id 134mr2658033qkh.359.1605228130095;
        Thu, 12 Nov 2020 16:42:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605228130; cv=none;
        d=google.com; s=arc-20160816;
        b=m1j3TWgL2YWcDdY8iZ9floQP5RwqgcBcrMk8epqA1kGWDBLjzr2oVq/9YX0EWaATty
         K1jpLXSQkkdTMif6Io1dvnW07f5md3KRQ4+rL4HKawcxekdc6OpQ8Wps8/e8H3Sw3wGk
         p31YhogYL0j2vJUmIctgyBTr2HocZOZ4PHii6TuS9PgnW6ogvhbHbCRVU6Xg28kcgHDe
         /P/8XRx7fP1K/C2+C3GS8hTgyDAGt+iLri1uR7nJADAF4y8J1HoM81ghmzkkQbwtahOL
         bPyojjqfdx0tNDMS8LRax1tsq2AgVneZlgIvpslAA7FGc+Xcvan6ym2RKSCbjQLCNY3Q
         yUHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=BLyq9e6WMsX58xvPzqQvR0qZa+PPwQVF0bTZmr9IcaE=;
        b=Xig7waLhxks+f2Y/crhlbLcWBtCm2ZcYJPdskz+rhNJrBktIrBi+sCFYscvm/c34Ei
         1kFnZ8alWRGvEDWwxcrSzf+hnw1Qd1hcIlomdH2//NemBAVRkRTbQP/Ed+y/GY1NosFW
         MAMiZeLaDG5Nb98bGvjAo9xFsZ7Y9qJyA+sEEXyMHDuYe40pWrxk90GLSeUHgFNJ0dpR
         b4yNdU56fv2Fe9vuuRq22KqjGOBYd8eUvxrO4/XxBsJJJSjm1ksbEAgcKTn7gmrTzABR
         CPJZewnaCMVCb2+s+NxE/eVJKSl5J984TtukyHcaq2/xZ3GxkPOHE2i0kkWXmtwMzs2E
         M0Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=jB9OEBKJ;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id n21si233833qkh.0.2020.11.12.16.42.09
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 16:42:10 -0800 (PST)
Received-SPF: pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by linux.microsoft.com (Postfix) with ESMTPSA id 0FB7020C2899
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 16:42:09 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 0FB7020C2899
Received: by mail-qv1-f43.google.com with SMTP id x13so3817693qvk.8
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 16:42:08 -0800 (PST)
X-Received: by 2002:a0c:cb04:: with SMTP id o4mr2565193qvk.15.1605228128037;
 Thu, 12 Nov 2020 16:42:08 -0800 (PST)
MIME-Version: 1.0
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com> <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
 <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
In-Reply-To: <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
From: Matteo Croce <mcroce@linux.microsoft.com>
Date: Fri, 13 Nov 2020 01:41:32 +0100
X-Gmail-Original-Message-ID: <CAFnufp00cGHi708s=6UG6H_HkM5-7_nX8SJ8=RVvgXKaai=LZA@mail.gmail.com>
Message-ID: <CAFnufp00cGHi708s=6UG6H_HkM5-7_nX8SJ8=RVvgXKaai=LZA@mail.gmail.com>
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Guenter Roeck <linux@roeck-us.net>, Pavel Tatashin <pasha.tatashin@soleen.com>, 
	Petr Mladek <pmladek@suse.com>, Mike Rapoport <rppt@kernel.org>, 
	Tyler Hicks <tyhicks@linux.microsoft.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mcroce@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=jB9OEBKJ;
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

On Fri, Nov 13, 2020 at 1:20 AM Matteo Croce <mcroce@linux.microsoft.com> wrote:
>
> On Fri, Nov 13, 2020 at 12:13 AM Andrew Morton
> <akpm@linux-foundation.org> wrote:
> >
> > On Wed, 11 Nov 2020 20:50:23 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:
> >
> > > Clang warns:
> > >
> > > kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> > > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > > [-Wenum-conversion]
> > >                 reboot_mode = BOOT_TRIPLE;
> > >                             ~ ^~~~~~~~~~~
> > >
> > > ...
> > >
> > > --- a/kernel/reboot.c
> > > +++ b/kernel/reboot.c
> > > @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
> > >               return -EPERM;
> > >
> > >       if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> > > -             reboot_mode = BOOT_TRIPLE;
> > > +             reboot_type = BOOT_TRIPLE;
> > >       else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> > > -             reboot_mode = BOOT_KBD;
> > > +             reboot_type = BOOT_KBD;
> > >       else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> > > -             reboot_mode = BOOT_BIOS;
> > > +             reboot_type = BOOT_BIOS;
> > >       else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> > > -             reboot_mode = BOOT_ACPI;
> > > +             reboot_type = BOOT_ACPI;
> > >       else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> > > -             reboot_mode = BOOT_EFI;
> > > +             reboot_type = BOOT_EFI;
> > >       else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> > > -             reboot_mode = BOOT_CF9_FORCE;
> > > +             reboot_type = BOOT_CF9_FORCE;
> > >       else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> > > -             reboot_mode = BOOT_CF9_SAFE;
> > > +             reboot_type = BOOT_CF9_SAFE;
> > >       else
> > >               return -EINVAL;
> >
> > This is a fairly dramatic change to the original patch, but it eyeballs
> > OK.
> >
> > Matteo, could you please comment?  And preferably retest?
> >
>
> Hi,
>
> I reviewed the patch and it looks good to me.
> I tested it with this script which passes now with Nathan's fix:
>
> for i in cold warm hard soft gpio; do
>     echo $i > mode
>     read j <mode
>     [ $i = $j ] || echo "mode $i = $j"
> done
>
> for i in bios acpi kbd triple efi cf9_force cf9_safe; do
>     echo $i > type
>     read j <type
>     [ $i = $j ] || echo "type $i = $j"
> done
>
> for i in $(seq 0 $(nproc --ignore=1)); do
>     echo $i > cpu
>     read j <cpu
>     [ $i = $j ] || echo "cpu $i = $j"
> done
>
> for i in 0 1; do
>     echo $i >force
>     read j <force
>     [ $i = $j ] || echo "force $i = $j"
> done
>
> While writing the script I found that in the documentation I left for
> 'type' the values from
> Documentation/admin-guide/kernel-parameters.txt, which is 'pci' for
> cf9_force reboot.
> While at it, should we update the doc with the values 'cf9_force' and
> 'cf9_safe', or rename to 'pci' and 'pci_safe' to be coherent with the
> kernel cmdline?
>
> In any case, kernel-parameters.txt doesn't mention that reboot=q does
> the 'cf9_safe' reboot type, so it must be fixed anyway.
>
> Regards,
> --
> per aspera ad upstream

Reviewed-and-tested-by: Matteo Croce <mcroce@microsoft.com>

-- 
per aspera ad upstream

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFnufp00cGHi708s%3D6UG6H_HkM5-7_nX8SJ8%3DRVvgXKaai%3DLZA%40mail.gmail.com.
