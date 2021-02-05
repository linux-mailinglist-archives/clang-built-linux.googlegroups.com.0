Return-Path: <clang-built-linux+bncBCS7XUWOUULBBGE762AAMGQEIFBYPCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2DD310FF9
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:34:01 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id v2sf2640600oif.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:34:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612550040; cv=pass;
        d=google.com; s=arc-20160816;
        b=TL0zhL/80YQKWs0r7HDGDSPhtf+Im5Fr8mDwcboEAYIQtKrrZbK+jh0tJIKZ4oj3Eg
         BbqW1e2suF182BTAYVXrCJLpiGt+/VYIq3R7Ebu7AS9nkX73/reTRFvWXqBSa1h9Rh8s
         TGdu5rDMb37tqyUFWRwRyPMj7TOLKBe1ZCHVPgV2e0k5jPSct0mf/xdBkeWi2GOXYZYa
         ErGwhgzOR5se76VLR6MO8A8gHfhg8CHrIRn7hg+Nr5r2QciSjlTdgYq4JipQuKykc+8W
         OuuUddK5rEIKjkKGopumngmOEHk/LQtL0qVq88951nXkactRv4XpvPsVtR0OfN0HqtAn
         L9HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Xfq8ZWFm2d4slH5kb8HKKl+KQml3jNv7QWP+Hb/1Elk=;
        b=kaN/XKNgNe6J2ReWDJqw6j2TC18RoqDXt42jhl1Raj0AE8cFisHy3m1rTGAvCDGKOQ
         RuPug1DJ0yCSh24KN4sf77ls2k/I9QQniyLpDsNEyL8kiUZ1sH3KUyVqBLrrLsorb884
         BF1Jm8+Un5y0EU0PZzW0xOsvc29nf5twzhEUOjPDAPkd06d4sMluD5luqTaaP6OnsSqX
         0rwv/EZnnrp5BMsnrbnZQOZCEzjbQBNIJIlX74jVCygrVWSXAoI00puxprd9N+LvnXp2
         +kNy3LHckaMbYZ3daJOPet78XEowVzjrLmH8oeJtbzZZTYhiL8dPhtI13AsZEjEC5s3/
         m9Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cS0h34Vk;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Xfq8ZWFm2d4slH5kb8HKKl+KQml3jNv7QWP+Hb/1Elk=;
        b=NfD+cUWS99OPsoTs+5N20m6SDrpCeNKa65LDDm679301KDgcdA1+afftCusyCF4T8G
         uF1F58IX+pCsrw5hG/4xsJ+PvbEiOE/QadmxJaFrGwu2v1QCJ100cvA/O2/V3FoG68Zh
         c5waqYeJ7xTeIt6uNKbFX1z+vMqxVmpULqLIiCm2lEjKuoQwZK0+l1RYfG6ycUy8KuZi
         7+jebrWLDQLKMUHar2AVZ/2yRD5tpyDTaDo9QiXMMijM4V4Gd2MH8EPpUQJHOlL8Od8V
         aZp8XdbbTP1VhDkjV5rAdm4gV1V84Aq0KewSKMFDr7EHGCaLeoBto+iiwWb9hvDXMkyh
         grHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xfq8ZWFm2d4slH5kb8HKKl+KQml3jNv7QWP+Hb/1Elk=;
        b=PZ8DYMo0XAmHq9Vgkuv7F80Wf2OnW70c+7aYebkPCYUQfoUcPg4v3+TYuxfmONSzeD
         HcxJalunr0z3Oq6mKKXgfkf+FMLqW9UVCpIsC/G5J7LV/KqcKnS/5Hwcr5/bXvC21V3i
         g6+T4pPKZH9egb8w7ihhc+KAHlwPC79S/mZUlWRbJpFxOMHgtRAJutzp1XA+PQoPKBCm
         NJPzE/XLyGzXzcx7aejBSW9LjqYJFFBhjZBGHJ0EXoWiZ+7lo9MSU2UsO2QHsy1a8Ztc
         hfbF51AsJpkwXJ64LfF3a7Tz/eWoKB7X8SWOScaY1bxhu9/0mbReoqJOmj0BFq5Cli7v
         BIwA==
X-Gm-Message-State: AOAM531lR93KtpcQEJqp+jSThPfe6qK/GTmATv5LWCRrQDoNgIJm8IAO
	mvRUaYVRYvzLhuyRRvd37tA=
X-Google-Smtp-Source: ABdhPJxnbpsQlEiFgM+wyN+a7cGh/m6A/RQ9Xz5onW2XbshmDqd01ARPjby5dE3Z58DVMsFnlxVZCw==
X-Received: by 2002:a9d:4d95:: with SMTP id u21mr4254240otk.11.1612550040511;
        Fri, 05 Feb 2021 10:34:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls2357990oif.10.gmail; Fri, 05
 Feb 2021 10:34:00 -0800 (PST)
X-Received: by 2002:aca:3408:: with SMTP id b8mr2151815oia.158.1612550040099;
        Fri, 05 Feb 2021 10:34:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612550040; cv=none;
        d=google.com; s=arc-20160816;
        b=VkqydB97FtTEbG5DNrFgUzcvrCWc2TL4INQGwLBgS6skNFzRu+Hh63nNlfJhmJ7RLH
         BIrS+TFILJreXxU2PVQvNcNOQbwLN1E6xKSYJRdSc8/1O/5YueCBgyOpKa/4GnxcVAtf
         K+oKV0SvuXa4MwB3sN8TnxNeB1ubCUTVvembj8Qzw/WjGYT0fHhe7UJAMo1UzrPUQEKg
         c+Y+AU+lw4MiR235KrJ9fiIZZ3dUKq8VuoQmgqi4nTma2GCzoRu8PvE2BtN+sEnnOBus
         gnCm/ooNBeFnVUQCIQ/Jk9qsYSA/nw4TDEx57Bq+eVk3/VoXjTtf8zRPnrji2DuvJGk6
         3F/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rNx0rVxiog69RSRVnr1J0uvHvKP7EDA9idL7SCJRkzA=;
        b=Gv9+m2ccK8mBwYCo8JrFvQutXLKlD2BqC8L3ey2XgxSdzWS+8ZBgiEfL+KgGW63mT1
         OGfs5fGsLQUkhWAUylc2XJx5InZEBe4c0r2wEmN8/QilHFEeXatg2pHkpmD2oWqve8W6
         QvP9kueRlobloilE/9C8nXOvqOnZlU5bVELQkhShC7hqzgy8tHqbXvpxtdfq9QNkbGQ4
         JUSxPr6/PK4iouhpsAWTXVV+rIFStHtOrpKqrufFNrd0FDTQMCXGzwuRzyLsKN2of45G
         gQ5LLRf14Eaok7o6M82S/E9T7WZASv1vi7dgU1s1o3VFx4k42ALLK46WxRPS8fnUZYzf
         ypmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cS0h34Vk;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id a188si970935oob.1.2021.02.05.10.34.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:34:00 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id a16so4007436plh.8
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 10:34:00 -0800 (PST)
X-Received: by 2002:a17:90a:1b6c:: with SMTP id q99mr5141966pjq.137.1612550039254;
        Fri, 05 Feb 2021 10:33:59 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:e475:32bf:82a2:bfef])
        by smtp.gmail.com with ESMTPSA id a188sm10811648pfb.108.2021.02.05.10.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 10:33:56 -0800 (PST)
Date: Fri, 5 Feb 2021 10:33:52 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Nathan Chancellor <nathan@kernel.org>,
	Guillaume Tucker <guillaume.tucker@collabora.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: decompressor: fix BSS size calculation for LLVM
 ld.lld
Message-ID: <20210205183352.rsapgec5kfiylqoo@google.com>
References: <20210205085220.31232-1-ardb@kernel.org>
 <CAKwvOdkg75CRM0QNeO4ojM=OndFgJ+j7fO3Yt=jE4k0eTfYmRQ@mail.gmail.com>
 <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
X-ccpol: medium
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cS0h34Vk;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-02-05, Ard Biesheuvel wrote:
>On Fri, 5 Feb 2021 at 19:00, Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> On Fri, Feb 5, 2021 at 12:52 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>> >
>> > The LLVM ld.lld linker uses a different symbol type for __bss_start,
>> > resulting in the calculation of KBSS_SZ to be thrown off. Up until now,
>> > this has gone unnoticed as it only affects the appended DTB case, but
>> > pending changes for ARM in the way the decompressed kernel is cleaned
>> > from the caches has uncovered this problem.
>> >
>> > On a ld.lld build:
>> >
>> >   $ nm vmlinux |grep bss_
>> >   c1c22034 D __bss_start
>> >   c1c86e98 B __bss_stop
>> >
>> > resulting in
>> >
>>
>> $ readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size
>>
>> >   433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
>> >
>> > which is obviously incorrect, and may cause the cache clean to access
>> > unmapped memory, or cause the size calculation to wrap, resulting in no
>> > cache clean to be performed at all.
>> >
>> > Fix this by updating the sed regex to take D type symbols into account.
>> >
>> > Cc: Nick Desaulniers <ndesaulniers@google.com>
>> > Cc: Nathan Chancellor <nathan@kernel.org>
>> > Cc: Guillaume Tucker <guillaume.tucker@collabora.com>
>> > Link: https://lore.kernel.org/linux-arm-kernel/6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com/
>> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>>
>>
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>>
>> Thanks for debugging+fixing this, and Guillaume for the report.  It's
>> nice to see a fix so early; thinking back to last year before KernelCI
>> integration, we probably would have only noticed when CrOS went to
>> upgrade their rk3288 platform devices.
>>
>> Some other tags that might be nice to apply:
>>
>> Cc: stable@kernel.org
>> Fixes: 429f7a062e3b ("ARM: decompressor: fix BSS size calculation")
>> Reported-by: Guillaume Tucker <guillaume.tucker@collabora.com>
>> Reported-by: "kernelci.org bot" <bot@kernelci.org>
>>
>
>Thanks. I'll add these tags and drop this patch into the patch system
>
>> Tests run:
>>
>...
>>
>> + Fangrui,
>> Fangrui, __bss_start looks like it's linker script defined by the
>> BSS_SECTION macro from include/asm-generic/vmlinux.lds.h:1160 being
>> used in arch/arm/kernel/vmlinux.lds.S:149.  Should these symbols be
>> placed in .bss? Might save a few bytes in the image, unless there's an
>> initial value that's encoded with them?
>>
>
>Not sure what you are asking here. These symbols just delineate .bss,
>they don't take up any space themselves.
>
>What seems to be happening is that the placement of __bss_start
>outside of the .sbss/.bss section declarations causes it to be
>annotated as residing in .data.

In my build (make -sk -j 50 ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 O=/tmp/out/arm -j 50 defconfig vmlinux), vmlinux has:

   [34] .data..percpu     PROGBITS        c195f000 151f000 00c20c 00  WA  0   0 64
   [35] .data             PROGBITS        c1a00000 1530000 217914 00  WA  0   0 4096
   [36] __bug_table       PROGBITS        c1c17918 1747918 00a5cc 00  WA  0   0  4
   [37] .sbss             PROGBITS        c1c21ee4 1751ee4 000000 00  WA  0   0  1
   [38] .bss              NOBITS          c1c21f00 1751f00 063f98 00  WA  0   0 64

__bss_start is defined relative to __bug_table.
The issue is that __bss_start is defined outside of the output section description of .bss,
so its st_shndx (section) is not guaranteed.

I noticed that many linker script fragments used by the kernel have similar problems.
The delineating symbols are defined outside of output sections. With ld --orphan-handling=,
we can somewhat guarantee there are no undesired interleaving sections, but it is hard to
ensure their st_shndx values.

>
>> > ---
>> >  arch/arm/boot/compressed/Makefile | 4 ++--
>> >  1 file changed, 2 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
>> > index fb521efcc6c2..54307db7854d 100644
>> > --- a/arch/arm/boot/compressed/Makefile
>> > +++ b/arch/arm/boot/compressed/Makefile
>> > @@ -115,8 +115,8 @@ asflags-y := -DZIMAGE
>> >
>> >  # Supply kernel BSS size to the decompressor via a linker symbol.
>> >  KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
>> > -               sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
>> > -                      -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
>> > +               sed -n -e 's/^\([^ ]*\) [ABD] __bss_start$$/-0x\1/p' \
>> > +                      -e 's/^\([^ ]*\) [ABD] __bss_stop$$/+0x\1/p') )) )
>>
>> I wasn't sure whether we still needed `A`, but
>> commit 6cea14f55474 ("ARM: replace unnecessary perl with sed and the
>> shell $(( )) operator")
>> references that depending on the version of binutils you might observe
>> that.  There's no more info on which version or under what conditions.
>> Lest we reintroduce this same problem for that version, it's fine to
>> leave it.
>>

In my observation a symbol may be SHN_ABS (nm key 'A') if it is

* defined by --defsym
* a symbol assignment outside of output sections in -no-pie link mode

>Agreed.
>
>> >  LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
>> >  # Supply ZRELADDR to the decompressor via a linker symbol.
>> >  ifneq ($(CONFIG_AUTO_ZRELADDR),y)
>> > --
>> > 2.30.0
>> >
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205183352.rsapgec5kfiylqoo%40google.com.
