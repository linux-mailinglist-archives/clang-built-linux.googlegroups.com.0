Return-Path: <clang-built-linux+bncBAABB45CW76QKGQEYOICABI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 317D52B1327
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 01:21:10 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id t10sf4688824ply.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:21:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605226868; cv=pass;
        d=google.com; s=arc-20160816;
        b=BjGuxwRtnU28B6XivH2CW9Z6n3TR948526Uwy2ZX27/fhEVPW9Tz/eTaQThPkguEVn
         yStsYAPDohNwXHlJQqjCyvZPmomNmV+aVUnuvZSCFKvzKCLxXni35jg4j/kFmP4VLXem
         y28CduCXA7JkJdlLcQMwh3nAjwcLh/CpbDWTr5WrgV9YaD7u8lMMLovzqcJP7Evzutrp
         67B4lTh4w0lgLz1l3xAU2qABmW/Ld9cowQM1lgqkxwtW+IVbMf+fJ+hI6YAIVB7ugnzS
         3SHnDUAmdWEgIdh6EVHHhopgTM2k093Yp7GjOqo4mm3/gVerMQK14RbRsWtCQxcYuoPW
         Z50w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=LDWtGMdjo7ctqalxXzrYz0UUqJjZmVwBRPeO3NIm34Q=;
        b=YfKxjwrtxk7LXiNr+byzsTgZEDvZmyJsjJS3i86iA96tO9w/+O5Xydv0ywPoG24f77
         qn7r7tE7Xki+ib8hvC+7WCuloXAPt3RPJYuEQpvKMyjbXosUDBJ90OJBu0WrEYLarwOu
         h2mPI73zeWh6nqupWE1MO5xnjtb/1+dL93Xmp8OYSes1wucRyR6Hx0iJgmjJD4cFB2TV
         9wWvRWIRaqANUuuvNqeyXvgcwWroUqgp7cUZbtsPffZaKwQqBeJD0MhazU+u4mT8NiZp
         atrHTUohYFZv9mmHie51RrLzskyeaJfr4BfRckE0ciSx4K7LC0HE02q2henlIFFsFOsX
         z6UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=kCKZuTvB;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LDWtGMdjo7ctqalxXzrYz0UUqJjZmVwBRPeO3NIm34Q=;
        b=BDWQq0IiHQrsVJB4syjtvggXEgoIWjAt0K9D02oPP1cFWStAGT5bqvrXZXU050q8LR
         qZh7EqQq8mkTjF3o/EaVOASYMEHm7KdNR2fJ8UPyN42yp+i1pdYcu25B/KRq4qDY9Juu
         G29e2Dxn9SGH4vn6xCAv+9bQoHJKFN0S4VioTa+N1uQLQZbMMUPWh6N19/s9u7FIHoEg
         H78RYQXc1qSDc3GnF7cDXL55K5eEs4PrvI0SjqY1/vufGsYWczaMQD6AdZvl8fiOL+yT
         lFerJPZZ4KbRXN9bZ8Km6xvqK9PCXFhfhA2i5A0KUQXcn/T8Gn1nTecwdt/OcWfi3rxn
         DvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LDWtGMdjo7ctqalxXzrYz0UUqJjZmVwBRPeO3NIm34Q=;
        b=XETVKwdvnLjw6t+88wOAmcH/b5V8B7kgDdeR2sLw8zGO1NEJ5SkvDUfwTx4N+JPSs0
         ijZFEgwin2FNZ8t4TvsBHVT6aoLikE7WAXMf9z1XnePldLLaywqdL+/QnfOBYjohKmBk
         ZNsbvec66ap2ZMl4SxUjp7C8Bv6G/nulDnMEa5zp0RISfGOH8YjpBVyKGph9ImCaipiz
         BJOGxExdmwoDV53MehiitbSl20FaWSdZbOX1k2m9VTkzu6bvr4DSSKxgjlD+ajzhq4XI
         M1HIZetEjYrL8UOmIcclXYU8tMaCySO2RJd1CxxeDLuip6IQcjfs9lXaw6v1sdzdNeaU
         XXWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bdS1f0mr/W6vDMUpAGNjyIcwWbLCuopi41oECYpRjtuWLdE7Z
	ukwRqyowaKgZ9ukv5NrlHXM=
X-Google-Smtp-Source: ABdhPJxVfAbiRJzlUVdmx3cOcMpDfVET/Mx8k0bcl/FY65hvY+PMMjinhL1SWoWXUeksd2tp/jNdNA==
X-Received: by 2002:a17:90a:4742:: with SMTP id y2mr377239pjg.228.1605226867955;
        Thu, 12 Nov 2020 16:21:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8f0c:: with SMTP id n12ls1554631pfd.8.gmail; Thu, 12 Nov
 2020 16:21:07 -0800 (PST)
X-Received: by 2002:a63:a57:: with SMTP id z23mr1588639pgk.404.1605226867433;
        Thu, 12 Nov 2020 16:21:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605226867; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOsqlMNefjHA9fVaIs3o061av4P+NHbPvGfVOI62FS0fj901rnUUvsXEcqU6Qami1B
         8KsUAqXZNPiZEU0bIxcHrQ0c/UND0y6yCehvNGWAnwu15amjwNA56T13eRX1jNs1d//6
         Otq3CvqvZ0VOpnaOCnSOdzRdPCJw1fDY57WHJT5cYpmsPPeiBX/xRJkNFMZzmSK6N+fg
         qZN6QBCDplIEMhA5rL8ScAnWHZdqB0nwcU16QjcFxRBF3Gf9GWJ6xvg/wGU5zxgZcOAJ
         NR3rM4Bad4V3QftKQAPPQiqBLfuWvPnE7qhhFc6uyJz16aBHB+JDgtEKaLu8hWo6z/Je
         r9JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=nz9yqF8USSSrlPERDOTsESfQ4zYSnGbwhAj5bwSzo9k=;
        b=IYsiXTgAKx5kxe9olSMwbwZUkS6uCYRyGZVllxSV6mEKRwlz3Jm0xKCZip+fgX73Xj
         hEoFr2NwxAn8PttA173HUjdMdz3GN5JLLGxMRhlyOr5O6O5SXJF836XCJtTqE0/jkgXU
         Kk7E1pSgWB0YqnkhC5bleXJdHZNkMew7To4/JAABHvOq1jWy+qPlNiKOd2wvYpGHiKPC
         SytyKO/lk2ahtpp01CXqVLvOv6mZBL92TjNFVqbWVtVgvJru+hKlfmu1SdH2XtMhEFyT
         zIGLkg1G4+5VrvC4lahbDo3erRW8WMp5H7LtatnLXkq6bln3bXSIdkzl/9szGP6QKFfA
         h0Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=kCKZuTvB;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id k24si606075pjq.2.2020.11.12.16.21.07
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 16:21:07 -0800 (PST)
Received-SPF: pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by linux.microsoft.com (Postfix) with ESMTPSA id D520B20C2899
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 16:21:06 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com D520B20C2899
Received: by mail-qv1-f51.google.com with SMTP id d38so2468018qvc.3
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 16:21:06 -0800 (PST)
X-Received: by 2002:ad4:490d:: with SMTP id bh13mr2423164qvb.14.1605226865807;
 Thu, 12 Nov 2020 16:21:05 -0800 (PST)
MIME-Version: 1.0
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com> <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
In-Reply-To: <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
From: Matteo Croce <mcroce@linux.microsoft.com>
Date: Fri, 13 Nov 2020 01:20:29 +0100
X-Gmail-Original-Message-ID: <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
Message-ID: <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
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
 header.i=@linux.microsoft.com header.s=default header.b=kCKZuTvB;
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

On Fri, Nov 13, 2020 at 12:13 AM Andrew Morton
<akpm@linux-foundation.org> wrote:
>
> On Wed, 11 Nov 2020 20:50:23 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> > Clang warns:
> >
> > kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> > type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> > [-Wenum-conversion]
> >                 reboot_mode = BOOT_TRIPLE;
> >                             ~ ^~~~~~~~~~~
> >
> > ...
> >
> > --- a/kernel/reboot.c
> > +++ b/kernel/reboot.c
> > @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
> >               return -EPERM;
> >
> >       if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> > -             reboot_mode = BOOT_TRIPLE;
> > +             reboot_type = BOOT_TRIPLE;
> >       else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> > -             reboot_mode = BOOT_KBD;
> > +             reboot_type = BOOT_KBD;
> >       else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> > -             reboot_mode = BOOT_BIOS;
> > +             reboot_type = BOOT_BIOS;
> >       else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> > -             reboot_mode = BOOT_ACPI;
> > +             reboot_type = BOOT_ACPI;
> >       else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> > -             reboot_mode = BOOT_EFI;
> > +             reboot_type = BOOT_EFI;
> >       else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> > -             reboot_mode = BOOT_CF9_FORCE;
> > +             reboot_type = BOOT_CF9_FORCE;
> >       else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> > -             reboot_mode = BOOT_CF9_SAFE;
> > +             reboot_type = BOOT_CF9_SAFE;
> >       else
> >               return -EINVAL;
>
> This is a fairly dramatic change to the original patch, but it eyeballs
> OK.
>
> Matteo, could you please comment?  And preferably retest?
>

Hi,

I reviewed the patch and it looks good to me.
I tested it with this script which passes now with Nathan's fix:

for i in cold warm hard soft gpio; do
    echo $i > mode
    read j <mode
    [ $i = $j ] || echo "mode $i = $j"
done

for i in bios acpi kbd triple efi cf9_force cf9_safe; do
    echo $i > type
    read j <type
    [ $i = $j ] || echo "type $i = $j"
done

for i in $(seq 0 $(nproc --ignore=1)); do
    echo $i > cpu
    read j <cpu
    [ $i = $j ] || echo "cpu $i = $j"
done

for i in 0 1; do
    echo $i >force
    read j <force
    [ $i = $j ] || echo "force $i = $j"
done

While writing the script I found that in the documentation I left for
'type' the values from
Documentation/admin-guide/kernel-parameters.txt, which is 'pci' for
cf9_force reboot.
While at it, should we update the doc with the values 'cf9_force' and
'cf9_safe', or rename to 'pci' and 'pci_safe' to be coherent with the
kernel cmdline?

In any case, kernel-parameters.txt doesn't mention that reboot=q does
the 'cf9_safe' reboot type, so it must be fixed anyway.

Regards,
-- 
per aspera ad upstream

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze%3DB2ru3aA%40mail.gmail.com.
