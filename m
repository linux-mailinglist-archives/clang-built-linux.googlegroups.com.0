Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJG64L7QKGQECJTM27Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 648672EF7F6
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 20:14:45 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id g1sf11274349ilq.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 11:14:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610133284; cv=pass;
        d=google.com; s=arc-20160816;
        b=1AT74llpmD2oN9aP8E3X8t22uBXpf7Q5X6Sq8NnWWqK1AuEgGJfufOOHsnlrnWzJuw
         CZEDenOe6jmDZ9o7pFVs3Akish39OS9VfKhaxzdLOPsbMvivCFGTtmU21Y11nTXKveLy
         O30/9dzyZziyMRtJDwM3by6VtgoVWFkzvMUBDNfpPw+nNMFeeLrcHWvlCfYH3PTrjblh
         ZeIDPxQdB3R0tIXXI4ZdvPYAL+wSYDji4ZY/w7aiE908XTK2K1NMqz9aq9TjmW8Bp1Pd
         TcOPZ3vFmzoIy/Qi7mVvpNwq5yjieYEztTlm75XiDhENAHBs9uHT/tHv8FIBp3oUJM7p
         SZBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ReFa+sg7z2OrGvY7gvmhIkJ7Ys381Sx9N/AEo6HRy9A=;
        b=BgWU/GFyLNdB9gelE+6gEryQD52xjCs0/DQzvjZbd+9Jbyg6QVFRlEn7V98Ic07eYB
         FlDnzhHUJNvpAePP9h3KCVpBd7E8sWJc51YNz7jQAJivlZOUKLIvEz1wS2dLIaXZ7Yqs
         NXOKxixTrUIwp6tua5Oq08pmTjtp/hEb136fEoTYYokvMKU1aq9/n0LhtqaYXN4vZ98S
         1u06kqCaiPEjFd7E1mG1Iqh4cPeLDICwhSArjIkK0XAA320lqGNeb38J42Lu7a+FJRuF
         fa8KJV31P/og3RIXWqphdOV1hiAQMDr6BOfbEVQuPURJ5sVm6tordNKgUOMY9nn8/Xh4
         PMew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BcjwRJba;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ReFa+sg7z2OrGvY7gvmhIkJ7Ys381Sx9N/AEo6HRy9A=;
        b=Mqn4k1uo4Ka+gPX42aEsl2bHV7iHzHdM6vz4ksWSKjmdJOmA7DVryuqQc5uBcjOMml
         xuBYqXWWKxUX1kMsa10fBW1m1PpTAE56qoGqA5ts+/SrC6+JKBXMBIwnKTmaBlLh+asz
         s4ZgH6anUFSSaV4H5uO+SaI4dPZs0jGpgmdDSYNlM0wB4Ulxul1NYikdBVu+fABnkYfL
         h0N+Rw6S8q3OJ2G9tm+eyEbpepYwyyHSJ1ocLynf477w6Kc75MNLts3YZZIpvK3mobO9
         SV9/GoUTv6w33e7iazUBTas2jMtdEFXFwR0g2LY5V9XxRQ3vyyQTDsXatbje9Rm3PtgT
         yk2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ReFa+sg7z2OrGvY7gvmhIkJ7Ys381Sx9N/AEo6HRy9A=;
        b=g+dng2BN+pzGLV76ROpJ3TVek9mKYnoEDV1+GOQkiRXe/FK78hr4KBjLCVuA035ZMx
         Y9g80gTJ8NkfnvOMbQHux9UaGZ1YH78lqR1CmgzU6ifdgGri7XLw4MD4STQnRfV9W2Ot
         w1oEo+38cPtBxpX4t2k//i/q7j8aMymwd3KEvne2x/6ZroM6WnqBzJDhT2ql1WJ2jrXV
         cFPTmTZgt9pURjP6Rasw5ug2AzdmHFTutX3NxxCYGSyzu15FBuJHtknUsK195U9QGV/U
         aSbs6XuQkw77aHelfsE4739LKN6JT4TOyEKt66D0wGqfr1m+rTFQuNp6die0G7XPFk35
         Xs9Q==
X-Gm-Message-State: AOAM533WXfcCOhO6oQwHGcFaAl3TdbJDuSJ7niWCd1T7gjcFqqNxnFKP
	qaH7nKCMYBodE0IK89DEZzs=
X-Google-Smtp-Source: ABdhPJxuIfJA9MhABnpU7h6odKg2x96hPMijbV4mYEOVNR/RgajeYei5Efv+2MS1DIrAXDBdE+SAxg==
X-Received: by 2002:a92:358a:: with SMTP id c10mr5274573ilf.258.1610133284439;
        Fri, 08 Jan 2021 11:14:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ca92:: with SMTP id t18ls3481777ilo.10.gmail; Fri, 08
 Jan 2021 11:14:44 -0800 (PST)
X-Received: by 2002:a92:d5c5:: with SMTP id d5mr5280286ilq.24.1610133284048;
        Fri, 08 Jan 2021 11:14:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610133284; cv=none;
        d=google.com; s=arc-20160816;
        b=pHFzGH8YAETGkfkC3L6mifDzYOLiFKIfg3v3MAlypCTLEBBvLoz74QpJaD+ddI/xLo
         RmGC/C3F6A0mDYQgpCStGkVYQAEbwlAYOYRdeZqh5GEw4PkVzr/kifirgM8blpPWz63B
         gvqtJCrQW3Zo6AKJA6CI+NnV3AbJEIoF7WMl/c4qtRFGbYL3zXm1hgWtfqREz6TG9AgM
         RDOhFm8UOiPhA5waU5doJsfKxSCVP6Vnr9FYasK23PxQFwaK1mN3PQFxSBBb1QDxrVuj
         1E4GTI73v5157MtgWW1i6qNz7VGRNRk+TwDB7riwIq7gkR0o2w+NAar00bEK7ze/2HR0
         x7lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IC1lX0U6wtOsAcvgqFahg9RcbQ7ickkEiflCtjsjzq8=;
        b=Jr6C2PYMxxXd0SXjaOPL/pKG7rArmudac55Cbez+nghfX+TeXZ1njbjgwspIUKT4aS
         rdPHz9FaBwQ3xfdy1RoUaCHM0gJd+Pc04G9rMAiI7Qro5rB2uXxTVVm8zL5TuSPAd0Rw
         vcGz14YVeUVxGOIVAXPMDSwMiIOEboqlro0v1qgfFmzWQKHxP0ROwg9bocwwTabNgMv9
         aAc11v5PnKUZaY+iiIVFNQ/z8FNnV5cqAU+O4qvRxvk45c5t7mZs4ZLN6ep0CpLF2n6y
         tSsEw0MgwtZ/zvzcRWsMjB0MpYoreZ4LrClyo6tzOuCBxGKtzCovoq2THBM9oiSCqzU4
         itVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BcjwRJba;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id r17si1295573ilg.4.2021.01.08.11.14.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 11:14:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id w1so5972895pjc.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 11:14:44 -0800 (PST)
X-Received: by 2002:a17:902:ed14:b029:da:9da4:3091 with SMTP id
 b20-20020a170902ed14b02900da9da43091mr5258157pld.29.1610133283456; Fri, 08
 Jan 2021 11:14:43 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmE=Z9pV4txRw-kpcv5FOSr6eEXfmGnc++R_Vzv8MnRDQ@mail.gmail.com>
 <B6050D16-4BD3-4355-878F-33E3E7C3A75D@redhat.com> <CAKwvOdn068fXosDhtF_o-DVY2tQs4pWj59+uJ59_=JPfOK2Hsg@mail.gmail.com>
 <bbdd5d1b-6aa9-cd2c-eb9a-cf0345dbc999@redhat.com>
In-Reply-To: <bbdd5d1b-6aa9-cd2c-eb9a-cf0345dbc999@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 Jan 2021 11:14:32 -0800
Message-ID: <CAKwvOd=JRRG1XTKKMdNFuuDb_58Q1Kbgi7F+fOsdwy+xpz0UGQ@mail.gmail.com>
Subject: Re: [PATCH v1] s390x/tcg: Fix RISBHG
To: David Hildenbrand <david@redhat.com>
Cc: David Hildenbrand <dhildenb@redhat.com>, qemu-devel@nongnu.org, qemu-s390x@nongnu.org, 
	Thomas Huth <thuth@redhat.com>, Cornelia Huck <cohuck@redhat.com>, 
	Richard Henderson <richard.henderson@linaro.org>, Guenter Roeck <linux@roeck-us.net>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	Jonas Paulsson <paulsson@linux.vnet.ibm.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BcjwRJba;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033
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

On Fri, Jan 8, 2021 at 1:45 AM David Hildenbrand <david@redhat.com> wrote:
>
> On 08.01.21 03:20, Nick Desaulniers wrote:
> > On Thu, Jan 7, 2021 at 3:27 PM David Hildenbrand <dhildenb@redhat.com> =
wrote:
> >>
> >>
> >>> Am 08.01.2021 um 00:21 schrieb Nick Desaulniers <ndesaulniers@google.=
com>:
> >>>
> >>> =EF=BB=BFOn Thu, Jan 7, 2021 at 3:13 PM David Hildenbrand <david@redh=
at.com> wrote:
> >>>>
> >>>> RISBHG is broken and currently hinders clang builds of upstream kern=
els
> >>>> from booting: the kernel crashes early, while decompressing the imag=
e.
> >>>>
> >>>>  [...]
> >>>>   Kernel fault: interruption code 0005 ilc:2
> >>>>   Kernel random base: 0000000000000000
> >>>>   PSW : 0000200180000000 0000000000017a1e
> >>>>         R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
> >>>>   GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000f=
ffffff0
> >>>>         0000000000000000 00000000fffffff4 000000000000000c 00000000f=
ffffff0
> >>>>         00000000fffffffc 0000000000000000 00000000fffffff8 000000000=
08e25a8
> >>>>         0000000000000009 0000000000000002 0000000000000008 000000000=
000bce0
> >>>>
> >>>> One example of a buggy instruction is:
> >>>>
> >>>>    17dde:       ec 1e 00 9f 20 5d       risbhg  %r1,%r14,0,159,32
> >>>>
> >>>> With %r14 =3D 0x9 and %r1 =3D 0x7 should result in %r1 =3D 0x9000000=
07, however,
> >>>> results in %r1 =3D 0.
> >>>>
> >>>> Let's interpret values of i3/i4 as documented in the PoP and make
> >>>> computation of "mask" only based on i3 and i4 and use "pmask" only a=
t the
> >>>> very end to make sure wrapping is only applied to the high/low doubl=
eword.
> >>>>
> >>>> With this patch, I can successfully boot a v5.10 kernel built with
> >>>> clang, and gcc builds keep on working.
> >>>>
> >>>> Fixes: 2d6a869833d9 ("target-s390: Implement RISBG")
> >>>> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> >>>> Cc: Guenter Roeck <linux@roeck-us.net>
> >>>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> >>>> Signed-off-by: David Hildenbrand <david@redhat.com>
> >>>> ---
> >>>>
> >>>> This BUG was a nightmare to debug and the code a nightmare to unders=
tand.
> >>>>
> >>>> To make clang/gcc builds boot, the following fix is required as well=
 on
> >>>> top of current master: "[PATCH] target/s390x: Fix ALGSI"
> >>>> https://lkml.kernel.org/r/20210107202135.52379-1-david@redhat.com
> >>>
> >>> In that case, a huge thank you!!! for this work! ++beers_owed.
> >>>
> >>
> >> :) a kernel build for z13 should work with the (default) =E2=80=9E-cpu=
 qemu=E2=80=9C cpu type.
> >
> > Hmm...so I don't think clang can build a Linux kernel image with
> > CONFIG_MARCH_Z13=3Dy just yet; just defconfig.  Otherwise looks like
> > clang barfs on some of the inline asm constraints.
> >
>
> Ah, right. I overwrote my manual config by a temporary defconfig :)
>
>
> So, I'm on x86-64 F33.
>
> clang version 11.0.0 (Fedora 11.0.0-2.fc33)
> LLVM version 11.0.0
>
> I cannot directly use "LLVM=3D1" for cross-compilation, as I keep getting
> "error: unknown emulation: elf64_s390" from ld.lld and "error: invalid
> output format: 'elf64-s390'" from llvm-objcopy. I assume that's fixed in
> llvm12?

Right, I suspect that even if ld.lld understood that emulation mode
target, it would still fail due to lack of big endian support.  We've
been building with simply `CC=3Dclang` for s390 linux kernels.
Via: https://www.kernel.org/doc/html/latest/kbuild/llvm.html#llvm-utilities
we usually start with `make CC=3Dclang` then work our way up to `make
LLVM=3D1`.  So you shouldn't need the below patching, just use
`CC=3Dclang`.

>
> 1. I patch around it (strange, I remember CC=3D .. used to work, but it n=
o
> longer does)
>
> ---
>
> index e30cf02da8b8..89c57062ed5d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -427,13 +427,13 @@ KBUILD_HOSTLDLIBS   :=3D $(HOST_LFS_LIBS) $(HOSTLDL=
IBS)
>  CPP            =3D $(CC) -E
>  ifneq ($(LLVM),)
>  CC             =3D clang
> -LD             =3D ld.lld
> -AR             =3D llvm-ar
> -NM             =3D llvm-nm
> -OBJCOPY                =3D llvm-objcopy
> -OBJDUMP                =3D llvm-objdump
> -READELF                =3D llvm-readelf
> -STRIP          =3D llvm-strip
> +LD             =3D $(CROSS_COMPILE)ld
> +AR             =3D $(CROSS_COMPILE)ar
> +NM             =3D $(CROSS_COMPILE)nm
> +OBJCOPY                =3D $(CROSS_COMPILE)objcopy
> +OBJDUMP                =3D $(CROSS_COMPILE)objdump
> +READELF                =3D $(CROSS_COMPILE)readelf
> +STRIP          =3D $(CROSS_COMPILE)strip
>  else
>  CC             =3D $(CROSS_COMPILE)gcc
>  LD             =3D $(CROSS_COMPILE)ld
>
> ---

Pulling from your github branch, everything looks good; buildroot
support looks good. I'll wire this up to our CI so that we can help
report regressions!
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DJRRG1XTKKMdNFuuDb_58Q1Kbgi7F%2BfOsdwy%2Bxpz0UGQ=
%40mail.gmail.com.
