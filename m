Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCG7VD6AKGQETTOX7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4BC290E3B
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 01:40:57 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id d16sf2451657qvy.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 16:40:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602891656; cv=pass;
        d=google.com; s=arc-20160816;
        b=E09DnsER8E3Xkyx/kRvuyDqgP/2NpWwBcoRI5bCR8VCYxVifqgn88XQ/AlcSiXRtN4
         1PP4l0ak2G7IV732sP/L7fPq9iWfKFLk3vlKUbt/pFxMl92sq9bDij70y7i0WsJf/vmN
         plMA+oyJbPRSxctME3BrJkTtTiX+/w4RglWEHukFVUS+/V/hCErvV0UhHJrRHxlR+lq3
         ZPxNLKVjQHnZSUKfpyKsR3gls1pnff3h58rSS5lM9eZrP+KtM7ydisbopgwYiXd1rqPd
         FGGhL+CTYmCWH2qqkXoFbkPjPpP8eOe5DATrkn1NCiUG3iesio0tayXIvs1lg4tjvtUt
         IENA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UzIlCIl6WntivUmRsYMKfqNOMBme/Pb6vzpZG+yW+2E=;
        b=bGfAuQ5MKk7efh87j0U2YJQKvNZdeGVpxbij3xpg/GaOAhDpHE+wi5WigZZKBCkfgc
         xnT1D7A9awUiBKWz1mENkDuStsuEhF7hJM7utwwaJxiaq8aeJWSPh/Q+90RsiO/6kqSP
         WMNoNXymPTQqQC63BIYnL4DWAnrYsZUquUyZmRLi01J8C5MNBNF7+Mneu95sJI05/CMw
         0Bvpn979Dqx2917V85r5uBOdiMpU3wyBbgNr+TRy3kBDrDNNK/L1xFA24y64Smi203yE
         XpqjlItkmgm+kTcMxAmxlIOsdvUMWq7H0jRgK361YlotRPBy5pOJTYwvRUkuJakaV0lw
         aV1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J61nxz5R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UzIlCIl6WntivUmRsYMKfqNOMBme/Pb6vzpZG+yW+2E=;
        b=RK0YeHv2gZ/unuSmG6O+twuy2c9q7lc3gKPBNAtPq2Q3BytHMYP0YxRQ5sZ4/0eAzA
         pOU7O98ojVg7eadaJ/jp+MjrPeQyrt/5/45iQoW9xsQFuElMm+k7tE+7ncrkeZDwQ/O9
         CnOOm0/Y1izzGhBsm1aAE3I+q1hDc5aB4r69ikLKabB6hsSLSQmiQYSLLw6ZE13sAp0j
         t/UG67pNJ6A9WLt88YGd79EKzPh9TdK/q8ZYOPmy3KJLtMw9yK/8WwKznMy1LotI5ZYk
         /NUUJ3FjxcCr/hALVC+aVlD53ToRdlj+qkp8ZGLkCwLNKgmK0vPIUox2Lgo7un19IyPu
         GwSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UzIlCIl6WntivUmRsYMKfqNOMBme/Pb6vzpZG+yW+2E=;
        b=fQeAFG2xk+J673ATg3y4LuewLYn4ZWEs8lm+YFLO2pUiz7m4xJ38b1+wvAWQyk4kv9
         z8Van2GDcqSM+8AYJRRcXUBAZRzZjb1ZXpxSz79dZBx96CpAfyxQHfrKuZQXc9qu1OHW
         M65vVTORbNO45xRexEndqFnhTz1Nf2/hVz+oAqyCK1MDubC7pS2ekHk46f4wlwHr48ZY
         JfgKtTVA4MRtUYZanAYsilEX/kI9F+LLUspMEWdKmB878+TQjbt+iInZStI54y3R7nIS
         pUQEZz3oSbGOBzsK4CkONy6aMigKPBHztLpW0nN2kPuritaaWJm4M2tWn3fuuZIS2koy
         4NsQ==
X-Gm-Message-State: AOAM532UrKcdKuDHtWAAeG7KqvIC0b1O0GYpYWrMgn8+EtyIa8Byq80q
	LVH9yh5zw4q8IBKvs8W/UfI=
X-Google-Smtp-Source: ABdhPJydMDQzxK7kFt0nFfcQoD8GUsRGCGe0dqbPxQ48jWSYeEefYXQltjiCAkb95QJmGgkUN5JR8g==
X-Received: by 2002:a05:6214:184c:: with SMTP id d12mr6739166qvy.11.1602891656132;
        Fri, 16 Oct 2020 16:40:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7441:: with SMTP id h1ls1484484qtr.2.gmail; Fri, 16 Oct
 2020 16:40:55 -0700 (PDT)
X-Received: by 2002:ac8:7a8e:: with SMTP id x14mr5534411qtr.202.1602891655659;
        Fri, 16 Oct 2020 16:40:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602891655; cv=none;
        d=google.com; s=arc-20160816;
        b=h/uon3JixtNXhw0RPH+0VwXPVd1Eb4scKY1snqBJgiijsfrdA/ysg4yJXaqZkajOe+
         TqqQoh6llwVhjkWkdruIqe5oAVVIyvMirIKhJRAZjG/i+Cqcuw7/VwZFwNMxRI6jfFMo
         JzCZ5VAUlkWce6AQ3O6g2zV9Ln8m8J0B31eC8ncwKNyJJ/DfEjJg6zWOcPgttlmYgL7R
         IgiPbbj8SgpIkuqv1Onm2guTT6z72UV1AUHyLND3c1qPvpvEQI/Jp8ozJ/U2/y7gQ6WP
         GGoXi2mDcEd0ywDrg+OEunTLW36u+HvextdPVruPQn33VeIkqRLVg8+udyvBA/J93+Mr
         pcEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=imeehIzXqDCP3GwBOKUDuLl6wIOElcCi9v+YkEUSMMw=;
        b=vptfKmf4xXGfaDP9hFoWifbLmZuHceLibZd632vPVb009972h73d6OIfs9k/AIfmP2
         2w4JjsADZWEkQc83li8Vuncv358PkFD54fm/uN/LXJ/jKASb8reoiCBLe28KcKLUYryY
         B1CVKbTfCz+lZ2P4OtxbU9pSD8phVQdKQUWmxSMxhxz4qHv39KuNZOIzzzdH5n9cn0ys
         AhInBj/H++bUXM5MCfYVwRTB4DPUkQ067L3ODQaynU1MiI0mi8YiSkG27ulRSNw/nmkA
         Vgi/7b09mwQq0FCAITMbQ62uRMKycbMo6sP1h99UM0FIIHvh88u/LujfTU8B1fk40hxW
         3InQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J61nxz5R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x11si243876qkn.0.2020.10.16.16.40.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 16:40:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id e10so2383700pfj.1
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 16:40:55 -0700 (PDT)
X-Received: by 2002:a62:2905:0:b029:15b:57ef:3356 with SMTP id
 p5-20020a6229050000b029015b57ef3356mr3627024pfp.36.1602891654603; Fri, 16 Oct
 2020 16:40:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
 <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
In-Reply-To: <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 16 Oct 2020 16:40:43 -0700
Message-ID: <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
Subject: Re: s390 - buildroot + qemu
To: Guenter Roeck <linux@roeck-us.net>
Cc: egorenar@linux.ibm.com, Vasily Gorbik <gor@linux.ibm.com>, 
	Joel Stanley <joel@jms.id.au>, Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J61nxz5R;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Oct 16, 2020 at 4:18 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 10/16/20 4:11 PM, Nick Desaulniers wrote:
> > Hello all,
> > I'm working on integrating the latest release of buildroot (2020.08.1)
> > into our CI for ClangBuiltLinux.
> >
> > https://github.com/ClangBuiltLinux/boot-utils/pull/25
> > https://github.com/ClangBuiltLinux/boot-utils/pull/26
> > https://github.com/ClangBuiltLinux/continuous-integration/pull/327
> >
> > I'm seeing the following error from QEMU:
> > KASLR disabled: CPU has no PRNG
> > Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
> > SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
> > ilc:2
> > PSW : 0000200180000000 000000000001779e
> >       R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
> > GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
> >       0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
> >       00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
> >       0000000000000009 0000000000000002 0000000000000008 000000000000bce0
> >
> > This is via a kernel built by:
> > $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71 defconfig
> > $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71
> >
> > The booting qemu:
> > $ qemu-system-s390x -M s390-ccw-virtio -append 'rdinit=/bin/sh '
> > -display none -initrd /android1/boot-utils/images/s390/rootfs.cpio
> > -kernel /android0/kernel-all/arch/s390/boot/bzImage -m 512m
> > -nodefaults -serial mon:stdio
> >
> > Is there a preferred kernel config or additional flags to QEMU I
> > should be using to avoid this error?  It's also possible that there's
> > a bug in the kernel image, but given that it fails very early with no
> > other output, I am slightly suspicious of that.
> >
>
> Maybe that helps ? From my builders:
>
>     # qemu only supports MARCH_Z900. Older kernels select it as default,
>     # but newer kernels may select MARCH_Z196.
>     sed -i -e '/CONFIG_MARCH_Z/d' ${defconfig}
>     sed -i -e '/HAVE_MARCH_Z/d' ${defconfig}
>     echo "CONFIG_MARCH_Z900=y" >> ${defconfig}
>     echo "CONFIG_PCI=y" >> ${defconfig}

$ clang -march=z900 --target=s390x-linux-gnu -c -x c /dev/null -o -
error: unknown target CPU 'z900'
note: valid target CPU values are: arch8, z10, arch9, z196, arch10,
zEC12, arch11, z13, arch12, z14, arch13, z15

Hopefully qemu supports something newer than Z900?  Or can we change
arch/s390/Kconfig:255 to use a different arch? Is arch9 == z900???:

252 config MARCH_Z900
253   bool "IBM zSeries model z800 and z900"
254   select HAVE_MARCH_Z900_FEATURES
255   depends on $(cc-option,-march=z900)
256   help
257     Select this to enable optimizations for model z800/z900 (2064
and
258     2066 series). This will enable some optimizations that are not
259     available on older ESA/390 (31 Bit) only CPUs.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmnr0qqJTg%2BcU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg%40mail.gmail.com.
