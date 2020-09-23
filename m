Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWG3V35QKGQEYX7IYXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C9D2761E6
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 22:19:37 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id m5sf362096oib.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 13:19:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600892376; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcC1yqVcfQ+pj1IVwbPAu7aX7ymoFw0wr1UVyqDYepEoAohSsiCIcp4U8HF41ZVnoi
         1vF4XX295O3jVA+1iNENAUHpt2dyLZlbp/0L92TLEq9WMETpy1KbZ6MoBJc6/nq5bfsY
         zyF6YPD7xVv0kqey7al+Y1Hg3HhaiMAMWNHEZBvAiW3EaV+4Efd+RcnbHFjiQj4HMTBD
         8dynGHkWIb86isFJQveYvOES7v4VThIoBAhfe1gOKyCQriEDRGFUIzjb3tMDpIVl7yY8
         ecPOPf++TE80a0nvhovmiT/iMUpCIh2OdYr4lLipG6EuBnEeeEnFvbM2+5z3HZd1cjC0
         tI/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=2/DhO8uzInZncRFiZ54sPqvzQPJhhqlpk9KLU5+gYSM=;
        b=XiDUshh8Pcr1to2xDnI+YLYG98ne95rTzn1Hl3cCtrkOZbjoOXNhdCLSsXVahQpeJQ
         ATI5OrqVuOb2PcI5SYU12UfmMDbsrkTfnjKs0W8vmJWxDDkQ+MLR/UiM800kp4uaULe0
         am+m0Y2fcPT9NU3cE0bVEbhmAbXwewc5NnoO71Xx98ld8Nkqz+af+2KUdgS3+0Cveub6
         3TDAZJifjk/si9tz1DXQvWOLVXo0OBP5CQbdyU7O5R8Nd1BgoyM3KY9swxWTeworADTY
         /iXWbsGjabmzWtNiK6lNNrbCX/AHqOTMvI58/V/RDlDSEHUaDDTuvEGSnwWvIQalEFMH
         P7Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iuib48xD;
       spf=pass (google.com: domain of 3161rxwwkaoirhiweyprmivwksskpi.gsq@maestro.bounces.google.com designates 2607:f8b0:4864:20::348 as permitted sender) smtp.mailfrom=3161rXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2/DhO8uzInZncRFiZ54sPqvzQPJhhqlpk9KLU5+gYSM=;
        b=rIczKYJmEasqG9Oi1jY4/iv2rsdecn6kGzsjio5C84Hd0NnjLJvQf2/J7oMUkCinvI
         JFlI1t7JxLeU5uVTXs7saTgE+GsDqDGoWzrcAwhVtswzT3bH/CgTgIuae7Kk9MCwycb3
         qcdWtDFmRwukMxH6+j8WUpfEQmai130Tnl733UZNM9RFY1fSCktX9Hrl+76iqcASZoJf
         PytcMDetT8fc5bnCt9eK+ctwB4Y9S5Zkjq/AZhq8siYfW4QUVn1zcY1crLm3SN4sDy/4
         EQagx0koPZnkHZoJ72x+vwf73kx1fE7b43YixaR5eBCgL4SxyG5LzYmutTvpet5Ltvc6
         hQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2/DhO8uzInZncRFiZ54sPqvzQPJhhqlpk9KLU5+gYSM=;
        b=osW3YEw4q0mPvTPFWESXwvI40dT+8RokwBRgH1Lk98ddNjupKu0sN3aadaVTQ0gV3w
         vNPpOHoVKvuN0ak//Qyg3INo+etC2JAwGjNsuNVJZ1DbW3SdH7+Is6tDjmTlPl1a2Rbn
         nGZMc8G6spho3qEQza8e1YTUnhUeCnUsmJtNlzNmibWDyqC2LPgR3hJxtxeniSVxQgR0
         y1kcwFKq9R/E5XUO8zp5au8S0mxd0UaQprbG0ItVrLNklM40fr7rIrxhRAnTUB3+3Fls
         zcH0eMpLkdCJ1iDyrEg9NXYdOn0FT1AOWs0YINARqhpNspgIUWh+VmqOW47/uTOD8dIW
         eumQ==
X-Gm-Message-State: AOAM531ZcFD94kCUZBh2QI79ZmsrdYJ57HtKD7HG7ixbVCqSoYmtkad3
	otT3+2ll/qj8aPae5ceYmbc=
X-Google-Smtp-Source: ABdhPJwUhdDK0X6s5Ma7022O675u4rrJ/c5u0hezRPF+8UGhr5Umsto6IPBcU6DEXFIgT/ChUNo+Uw==
X-Received: by 2002:a9d:5a8:: with SMTP id 37mr893758otd.362.1600892376302;
        Wed, 23 Sep 2020 13:19:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3741:: with SMTP id e62ls223196oia.7.gmail; Wed, 23 Sep
 2020 13:19:35 -0700 (PDT)
X-Received: by 2002:aca:fc07:: with SMTP id a7mr716954oii.106.1600892375887;
        Wed, 23 Sep 2020 13:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600892375; cv=none;
        d=google.com; s=arc-20160816;
        b=Weu1xlNqsWzliJbHcrKOUIIFfTar/NnHjWiKA6t/XW99IFl8ayH2uzYllt3+lIZQYz
         lNJS3a49raguYIVROz4aZfqcvaAU886xSWin+Hpg+z7elXLiU/fhaBtMjkBtGiD7pcES
         v8bs5bkV3alK8EGNawtxmDi61vOYaQWgPbqAqJ/qCino2IbGLPU8Tkup4p1CH1M4FutM
         sZD1SJuM26EPWF28Bx8WohdbjiF+LAlDr3+VulOTpa4IDVjVm+SqApKo6rO5+Ds08OXV
         KWA0fx+9AdZ8xWnZL+QmgRzYzYZeKuxHPOtbzZHpLTmyykN/JN8R3fXBIp4nwdyXa2fY
         G7dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=BHR3MOVzic+9NCO7g3EtaNNnSUInmR5ZwKtErpJz7x8=;
        b=m52RsAEDLACtAJP5C9EFB6Bhb418yum5hOSsjZE3h7QLVeHi+wOpHGjwqq47pp46Se
         mZVtD+7poy1BaV63tNLAUW1pp1lfetRkAm4CdZ55X+b82XJsfxPGYnnkXJDdYO/DoRnO
         W2CFKlgkoyHrRSXGueomApfmXGWrxd6zhqXAlQhw2Vkr7qfkftkvmyPMgKQMAr7ck1NO
         OktqoCadRbdWcSZLF4bH0T1YnPGxGz3aUFHg/fAPx3fVPU/ZfYGde2ufFgKA25Hb7ukQ
         LiquCHrHTZyfkBDWIfyQEckV3EGvZjGlLIE4L+B9hgClQxxaui6GZkDD7/Dn84j/TE8a
         XHRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iuib48xD;
       spf=pass (google.com: domain of 3161rxwwkaoirhiweyprmivwksskpi.gsq@maestro.bounces.google.com designates 2607:f8b0:4864:20::348 as permitted sender) smtp.mailfrom=3161rXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com. [2607:f8b0:4864:20::348])
        by gmr-mx.google.com with ESMTPS id u27si83163otg.5.2020.09.23.13.19.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 13:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3161rxwwkaoirhiweyprmivwksskpi.gsq@maestro.bounces.google.com designates 2607:f8b0:4864:20::348 as permitted sender) client-ip=2607:f8b0:4864:20::348;
Received: by mail-ot1-x348.google.com with SMTP id m8so220387otf.23
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 13:19:35 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:aca:5158:: with SMTP id f85mr699822oib.121.1600892375383;
 Wed, 23 Sep 2020 13:19:35 -0700 (PDT)
Message-ID: <0000000000005c379105b000cd86@google.com>
Date: Wed, 23 Sep 2020 20:19:35 +0000
Subject: Clang-Built Linux Meeting Notes - Sep 23, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005c377105b000cd83"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iuib48xD;       spf=pass
 (google.com: domain of 3161rxwwkaoirhiweyprmivwksskpi.gsq@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::348 as permitted sender) smtp.mailfrom=3161rXwwKAOIRHIWEYPRMIVWKSSKPI.GSQ@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--0000000000005c377105b000cd83
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Sep 23, 2020
------------

CrOS boot failure in 4.4 fixed just in time for clang-11. Thanks Jian and =
=20
James!
https://bugs.chromium.org/p/chromium/issues/detail?id=3D1123683
https://reviews.llvm.org/rGf7a53d82c0902147909f28a9295a9d00b4b27d38
https://bugs.llvm.org/show_bug.cgi?id=3D47468
LLVM=3D1 (Nick) in Android
KernelCI moved over
Binutils for Android kernel deprecation schedule: =20
https://android-review.googlesource.com/c/platform/prebuilts/clang/host/lin=
ux-x86/+/1405387
Backported to 5.4, Working on backport to 4.19
(Mark): can we even eliminate LLVM=3D1?
Syzbot stray 4B write
https://groups.google.com/g/clang-built-linux/c/b4Obxq5w6hw
S390 buildroot support being added, should be able to boot test s390 soon
https://github.com/ClangBuiltLinux/continuous-integration/issues/232#issuec=
omment-693255238
Llvm dev conf coming up, anyone want to moderate my session?
LTO stack protector bug (Nick): https://reviews.llvm.org/D87956
Arm32 adrl patches get us much closer to assembling arm32 w/ clang
https://github.com/ClangBuiltLinux/linux/issues/430#issuecomment-692904762
Thanks Jian for fixing https://github.com/ClangBuiltLinux/linux/issues/742
Saving eflags via builtins is slow
Missing lore thread :(
https://bugs.llvm.org/show_bug.cgi?id=3D47530
https://bugs.llvm.org/show_bug.cgi?id=3D47531
pac/bti compiler generated functions may not correctly have the proper fn =
=20
attr=E2=80=99s. Momchill and Daniel @ ARM are working on this in LLVM.
Open mandriva clang kernels look good in tests. Looking to default to Clang=
 =20
in their next release.
Ppc vdso
@local24pc assembler suffix
LTO patches need help testing
https://lore.kernel.org/lkml/20200918201436.2932360-1-samitolvanen@google.c=
om/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000005c379105b000cd86%40google.com.

--0000000000005c377105b000cd83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Sep 23, 2020<br /></h1><ul><li>CrOS boot failure=
 in 4.4 fixed just in time for clang-11. Thanks Jian and James!</li><ul><li=
><a href=3D'https://bugs.chromium.org/p/chromium/issues/detail?id=3D1123683=
'><span style=3D'text-decoration: underline'>https://bugs.chromium.org/p/ch=
romium/issues/detail?id=3D1123683</span></a> </li><li><a href=3D'https://re=
views.llvm.org/rGf7a53d82c0902147909f28a9295a9d00b4b27d38'><span style=3D't=
ext-decoration: underline'>https://reviews.llvm.org/rGf7a53d82c0902147909f2=
8a9295a9d00b4b27d38</span></a> </li><li><a href=3D'https://bugs.llvm.org/sh=
ow_bug.cgi?id=3D47468'><span style=3D'text-decoration: underline'>https://b=
ugs.llvm.org/show_bug.cgi?id=3D47468</span></a> </li></ul><li>LLVM=3D1 (Nic=
k) in Android</li><ul><li>KernelCI moved over</li><li>Binutils for Android =
kernel deprecation schedule: <a href=3D'https://android-review.googlesource=
.com/c/platform/prebuilts/clang/host/linux-x86/+/1405387'><span style=3D'te=
xt-decoration: underline'>https://android-review.googlesource.com/c/platfor=
m/prebuilts/clang/host/linux-x86/+/1405387</span></a> </li><li>Backported t=
o 5.4, Working on backport to 4.19</li><li>(Mark): can we even eliminate LL=
VM=3D1?</li></ul><li>Syzbot stray 4B write</li><ul><li><a href=3D'https://g=
roups.google.com/g/clang-built-linux/c/b4Obxq5w6hw'><span style=3D'text-dec=
oration: underline'>https://groups.google.com/g/clang-built-linux/c/b4Obxq5=
w6hw</span></a> </li></ul><li>S390 buildroot support being added, should be=
 able to boot test s390 soon</li><ul><li><a href=3D'https://github.com/Clan=
gBuiltLinux/continuous-integration/issues/232#issuecomment-693255238'><span=
 style=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/co=
ntinuous-integration/issues/232#issuecomment-693255238</span></a> </li></ul=
><li>Llvm dev conf coming up, anyone want to moderate my session?</li><li>L=
TO stack protector bug (Nick): <a href=3D'https://reviews.llvm.org/D87956'>=
<span style=3D'text-decoration: underline'>https://reviews.llvm.org/D87956<=
/span></a> </li><li>Arm32 adrl patches get us much closer to assembling arm=
32 w/ clang</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux=
/issues/430#issuecomment-692904762'><span style=3D'text-decoration: underli=
ne'>https://github.com/ClangBuiltLinux/linux/issues/430#issuecomment-692904=
762</span></a> </li><li>Thanks Jian for fixing <a href=3D'https://github.co=
m/ClangBuiltLinux/linux/issues/742'><span style=3D'text-decoration: underli=
ne'>https://github.com/ClangBuiltLinux/linux/issues/742</span></a> </li></u=
l><li>Saving eflags via builtins is slow </li><ul><li>Missing lore thread :=
(</li><li><a href=3D'https://bugs.llvm.org/show_bug.cgi?id=3D47530'><span s=
tyle=3D'text-decoration: underline'>https://bugs.llvm.org/show_bug.cgi?id=
=3D47530</span></a> </li><li><a href=3D'https://bugs.llvm.org/show_bug.cgi?=
id=3D47531'><span style=3D'text-decoration: underline'>https://bugs.llvm.or=
g/show_bug.cgi?id=3D47531</span></a> </li></ul><li>pac/bti compiler generat=
ed functions may not correctly have the proper fn attr=E2=80=99s. Momchill =
and Daniel @ ARM are working on this in LLVM.</li><li>Open mandriva clang k=
ernels look good in tests. Looking to default to Clang in their next releas=
e.</li><li>Ppc vdso</li><ul><li>@local24pc assembler suffix</li></ul><li>LT=
O patches need help testing</li><ul><li><a href=3D'https://lore.kernel.org/=
lkml/20200918201436.2932360-1-samitolvanen@google.com/'><span style=3D'text=
-decoration: underline'>https://lore.kernel.org/lkml/20200918201436.2932360=
-1-samitolvanen@google.com/</span></a> </li></ul></ul><br /><br /><hr /><br=
 />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000005c379105b000cd86%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000005c379105b000cd86%40google.com</a>.<br />

--0000000000005c377105b000cd83--
