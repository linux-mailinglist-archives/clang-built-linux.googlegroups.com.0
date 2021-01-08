Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXMC377QKGQEIM4VAGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 433102EEB37
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 03:20:14 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id d187sf13860471ybc.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 18:20:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610072413; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZE9WvuBbFgAsrm50dzdYTObJ8ozU9wABZxO17Z2fjtY9tlaPza78YwmBYexxtAcDbg
         h7wSvzejNmcxZNyPp47BrNxn3CZfOhhz47onioAJEMHIlcGxkS7iy81tKTPBBdk3ajm8
         hR2gEBIpRXVoUwipyCyGtrQzEWzzcjZC4YoLsUo4Mx0YHhUndqjyPSC6+3mCMqK0W83G
         pTciDkOuoqOPLZBz4PClhaY7L2RjuVyBGy7+ID3VHKjoy4neuKjSt6vBJZTRA5zi6KX+
         Gjz8GjHD6dglR9qmepUutIhl4NzjFn5+oxi3p1sjr45+tYVjVwaF39kCTno21rI3gE2y
         itXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jkl7tTkqxW7AKLp9/PvyjOEhuLG0QSswreQ1T4XsGi0=;
        b=jX8bAacR74kMCodMlYO5EKYSO/KNoRTGqsRVf7U451H7hx2uGGZx6CxuFazRzfIlfx
         Hba1X72BCciqrEmAkCbd3yhr5qAgBdX/f/7MdLs1f6zIQbsYa6VQnVG83+fdqHbFSlS0
         jW6Z/ogCZ/i6e2sAF00k2wreEFklpr7Ea3eSVlZtHmv86aY+7t3AkEQ1vMKgEWOUKrbE
         5VvMlfD7TYnh/sGbXCP+ZpGm5E4jSptM2vbPk6QWvHXI6JDNIyDPYjbcWqX+UfUYU747
         TAqyNZf0sHgmlX+7GxmCW/FaodihHTqJv6d7NQv98IYASnIKUdbXgB9PktnR/wj8KzOv
         GfyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hZ7/dK7f";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jkl7tTkqxW7AKLp9/PvyjOEhuLG0QSswreQ1T4XsGi0=;
        b=OE+lTR2BYtRPuyBxcAa91kxRj8KlBFVNlgY/mTveKrtI/qljYY6EYkJjN/lu7QSX74
         Aj8zQZdXnFx7PElxdUdoRYKnLCnc560tXmAdF1oYXzmFqYUrog1ATGfTy5XjzR0PpG2g
         D8bkmM3tn47xjEzuIZU7M5OQKTfhEjPXub8loYpAhsyP3z2TkKXIlnmmSnS9JLm2+MIV
         C17jd8O7yC516ildp5Tlury5MYJTmzoo9jEKRkaVFEcEXZbQV4VySlq/oa+jj742Hbt5
         MIibQk8cnGQkhmqlLYcez4BHZ14QzIw5rkXhF28CjJqHgW5sTAYkrScsrEPxbkZaY0MA
         4pMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jkl7tTkqxW7AKLp9/PvyjOEhuLG0QSswreQ1T4XsGi0=;
        b=sl78Iw+qWwAo7LAK0pDytRPosSQ/KS2yKnqsZ5edGIlw46hys+EmktFxKM1+KRMyBI
         dHQXEQq5yfJ3eA5kAwrfdgE1oEPae/uepGhQ8yK7fj6b+oxD0Fp47H9IEMo/hkRImSTD
         75DlWwvWswjSx6NlsQADR823ikXvOLtZPmCSP5IpVjCTJPOwcOM1xDlC5boDr07Nl0x/
         AE29if1JptCnWqw+KgtNf1ctIHriZH6AJXH9d8sRgy+yJOjrsP5cAAs/Ye8X+z26QP+S
         FUNO7oZtaemX/GyKLKU/jAjk5iq3Y9Z71NufvQe3AUnnlz4KjDrCSq/xULZvPK8tM/Il
         dQtg==
X-Gm-Message-State: AOAM531olJmX5m9QxfBSe6nRMJjj5+ZLc/gR3f953RVwbm7cbdsxylZL
	EkE5S4Vvbb/qwT19BfEqJC0=
X-Google-Smtp-Source: ABdhPJzyPq54fqbI4lgzURtA2qnaS7ES+nWnHssH8lbFbcyTvN4gnPk9v2ml9cyAO8SFF93rABwunw==
X-Received: by 2002:a25:ac25:: with SMTP id w37mr2454551ybi.522.1610072413317;
        Thu, 07 Jan 2021 18:20:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls4826003ybd.4.gmail; Thu, 07 Jan
 2021 18:20:12 -0800 (PST)
X-Received: by 2002:a25:778c:: with SMTP id s134mr2526862ybc.411.1610072412872;
        Thu, 07 Jan 2021 18:20:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610072412; cv=none;
        d=google.com; s=arc-20160816;
        b=Np3ttIJu6W95+T4olUQDL/35Z2WkIEnbBCsYF9dyEvNh5Va+P0Va3dUigO1EYxtuWD
         zYYLu/QTyEx6H55Bj43X9keQZzD3M6y0VkfajSV5Y07imsCra+hRcFXXyJA6k55q1vOr
         J+U/NBUNleLcV1fMbgmIxYJfZBoXhEOU0vv8K5PlU9c3s871BGyWHRONVFyD+G8eGe0B
         9YfwEaaSX5xEDskVjjRt2iMk1me1AmVO9ltO6JkHfKQdbj2hRRcbD4MliXdTwLuVgf7S
         ieLfGLuUAdaA78fg+pTIyJfxIPbN115rp00nYNp7Zh+xikuIk8bbyMijjUUqbD+cset5
         OuOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KyyvKHC+BZV2Hza48F3WOIS2sCmjAAJf4TKFksUrC6I=;
        b=TjsDdK/F38gOmOZQESG3nWar9aQfuMu3K7GcS+lxnrhMHKHrCRhaaS7qo0uedU86jm
         H9e2ecBX7et9g1+nRrm2yfmV1ocwUDJgXJwonf8+Qf3JxZnf3mVUHmfl+PE5tSs//rbX
         m717DtS+NuxmeLgoxDjyl6/+yi2lTKG5nwMBMKjwZ5Y+cXa86QRfu+dkQJornuMo3EdN
         EoHrCEZMkbHL8vjFhuaNa3j9zwtyeSRZROFnPMxlD/HOiNw7cRiUF1I92cBiKL0/APEX
         +fCuQxVIEa7B8M+n2BCfi+ymOppytYpef+1F39xABjWMfXkUlEYmMeX1kIA1jRDVI8Ro
         qrVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hZ7/dK7f";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id e10si972153ybp.4.2021.01.07.18.20.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 18:20:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id v19so6640879pgj.12
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 18:20:12 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr4742511pfy.15.1610072411680; Thu, 07
 Jan 2021 18:20:11 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmE=Z9pV4txRw-kpcv5FOSr6eEXfmGnc++R_Vzv8MnRDQ@mail.gmail.com>
 <B6050D16-4BD3-4355-878F-33E3E7C3A75D@redhat.com>
In-Reply-To: <B6050D16-4BD3-4355-878F-33E3E7C3A75D@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 Jan 2021 18:20:00 -0800
Message-ID: <CAKwvOdn068fXosDhtF_o-DVY2tQs4pWj59+uJ59_=JPfOK2Hsg@mail.gmail.com>
Subject: Re: [PATCH v1] s390x/tcg: Fix RISBHG
To: David Hildenbrand <dhildenb@redhat.com>
Cc: David Hildenbrand <david@redhat.com>, qemu-devel@nongnu.org, qemu-s390x@nongnu.org, 
	Thomas Huth <thuth@redhat.com>, Cornelia Huck <cohuck@redhat.com>, 
	Richard Henderson <richard.henderson@linaro.org>, Guenter Roeck <linux@roeck-us.net>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, 
	Jonas Paulsson <paulsson@linux.vnet.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="hZ7/dK7f";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

On Thu, Jan 7, 2021 at 3:27 PM David Hildenbrand <dhildenb@redhat.com> wrot=
e:
>
>
> > Am 08.01.2021 um 00:21 schrieb Nick Desaulniers <ndesaulniers@google.co=
m>:
> >
> > =EF=BB=BFOn Thu, Jan 7, 2021 at 3:13 PM David Hildenbrand <david@redhat=
.com> wrote:
> >>
> >> RISBHG is broken and currently hinders clang builds of upstream kernel=
s
> >> from booting: the kernel crashes early, while decompressing the image.
> >>
> >>  [...]
> >>   Kernel fault: interruption code 0005 ilc:2
> >>   Kernel random base: 0000000000000000
> >>   PSW : 0000200180000000 0000000000017a1e
> >>         R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
> >>   GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fff=
ffff0
> >>         0000000000000000 00000000fffffff4 000000000000000c 00000000fff=
ffff0
> >>         00000000fffffffc 0000000000000000 00000000fffffff8 00000000008=
e25a8
> >>         0000000000000009 0000000000000002 0000000000000008 00000000000=
0bce0
> >>
> >> One example of a buggy instruction is:
> >>
> >>    17dde:       ec 1e 00 9f 20 5d       risbhg  %r1,%r14,0,159,32
> >>
> >> With %r14 =3D 0x9 and %r1 =3D 0x7 should result in %r1 =3D 0x900000007=
, however,
> >> results in %r1 =3D 0.
> >>
> >> Let's interpret values of i3/i4 as documented in the PoP and make
> >> computation of "mask" only based on i3 and i4 and use "pmask" only at =
the
> >> very end to make sure wrapping is only applied to the high/low doublew=
ord.
> >>
> >> With this patch, I can successfully boot a v5.10 kernel built with
> >> clang, and gcc builds keep on working.
> >>
> >> Fixes: 2d6a869833d9 ("target-s390: Implement RISBG")
> >> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> >> Cc: Guenter Roeck <linux@roeck-us.net>
> >> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> >> Signed-off-by: David Hildenbrand <david@redhat.com>
> >> ---
> >>
> >> This BUG was a nightmare to debug and the code a nightmare to understa=
nd.
> >>
> >> To make clang/gcc builds boot, the following fix is required as well o=
n
> >> top of current master: "[PATCH] target/s390x: Fix ALGSI"
> >> https://lkml.kernel.org/r/20210107202135.52379-1-david@redhat.com
> >
> > In that case, a huge thank you!!! for this work! ++beers_owed.
> >
>
> :) a kernel build for z13 should work with the (default) =E2=80=9E-cpu qe=
mu=E2=80=9C cpu type.

Hmm...so I don't think clang can build a Linux kernel image with
CONFIG_MARCH_Z13=3Dy just yet; just defconfig.  Otherwise looks like
clang barfs on some of the inline asm constraints.

It looks like with your patch applied we get further into the boot!
I'm not seeing any output with:
$ /android0/qemu/build/qemu-system-s390x -cpu qemu -append
'conmode=3Dsclp console=3DttyS0' -display none -initrd
/<path/to>/boot-utils/images/s390/rootfs.cpio -kernel
arch/s390/boot/bzImage -m 512m -nodefaults -serial mon:stdio

(Based on a quick skim through
https://www.ibm.com/support/knowledgecenter/en/linuxonibm/com.ibm.linux.z.l=
udd/ludd_r_lmtkernelparameter.html).
Do I have all of those right?

If I attach GDB to QEMU running that kernel image, I was able to view
the print banner once via `lx-dmesg` gdb macro in the kernel, but it
seems on subsequent runs control flow gets diverted unexpected post
entry to start_kernel() always to `s390_base_pgm_handler` ...errr..at
least when I try to single step in GDB.  Tried with linux-5.10.y,
mainline, and linux-next.

qemu: 470dd6bd360782f5137f7e3376af6a44658eb1d3 + your patch
llvm: 106e66f3f555c8f887e82c5f04c3e77bdaf345e8
linux-5.10.y: d1988041d19dc8b532579bdbb7c4a978391c0011
linux: 71c061d2443814de15e177489d5cc00a4a253ef3
linux-next: f87684f6470f5f02bd47d4afb900366e5d2f31b6


(gdb) hbreak setup_arch
Hardware assisted breakpoint 1 at 0x142229e: file
arch/s390/kernel/setup.c, line 1091.
(gdb) c
Continuing.

Program received signal SIGTRAP, Trace/breakpoint trap.
0x00000000014222a0 in setup_arch (cmdline_p=3D0x11d7ed8) at
arch/s390/kernel/setup.c:1091
1091            if (MACHINE_IS_VM)
(gdb) lx-dmesg
[    0.376351] Linux version 5.11.0-rc2-00157-ga2885c701c30
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (Nick Desaulniers
clang version 12.0.0 (git@github.com:llvm/llvm-project.git
e75fec2b238f0e26cfb7645f2208baebe3440d41), GNU ld (GNU Binutils for
Debian) 2.35.1) #81 SMP Thu Jan 7 17:57:34 PST 2021

>
> >>
> >> ---
> >> target/s390x/translate.c | 18 ++++++++----------
> >> 1 file changed, 8 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/target/s390x/translate.c b/target/s390x/translate.c
> >> index 3d5c0d6106..39e33eeb67 100644
> >> --- a/target/s390x/translate.c
> >> +++ b/target/s390x/translate.c
> >> @@ -3815,22 +3815,23 @@ static DisasJumpType op_risbg(DisasContext *s,=
 DisasOps *o)
> >>         pmask =3D 0xffffffff00000000ull;
> >>         break;
> >>     case 0x51: /* risblg */
> >> -        i3 &=3D 31;
> >> -        i4 &=3D 31;
> >> +        i3 =3D (i3 & 31) + 32;
> >> +        i4 =3D (i4 & 31) + 32;
> >>         pmask =3D 0x00000000ffffffffull;
> >>         break;
> >>     default:
> >>         g_assert_not_reached();
> >>     }
> >>
> >> -    /* MASK is the set of bits to be inserted from R2.
> >> -       Take care for I3/I4 wraparound.  */
> >> -    mask =3D pmask >> i3;
> >> +    /* MASK is the set of bits to be inserted from R2. */
> >>     if (i3 <=3D i4) {
> >> -        mask ^=3D pmask >> i4 >> 1;
> >> +        /* [0...i3---i4...63] */
> >> +        mask =3D (-1ull >> i3) & (-1ull << (63 - i4));
> >>     } else {
> >> -        mask |=3D ~(pmask >> i4 >> 1);
> >> +        /* [0---i4...i3---63] */
> >> +        mask =3D (-1ull >> i3) | (-1ull << (63 - i4));
> >>     }
> >
> > The expression evaluated looks the same to me for both sides of the
> > conditional, but the comments differ. Intentional?
>
> & vs |, so the result differs.

D'oh, I can never spot single character differences!
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn068fXosDhtF_o-DVY2tQs4pWj59%2BuJ59_%3DJPfOK2Hsg%4=
0mail.gmail.com.
