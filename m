Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBFNZT2QKGQEBMMN4UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B2B1C7ACC
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 21:56:53 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id a12sf2777065pfc.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 12:56:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588795012; cv=pass;
        d=google.com; s=arc-20160816;
        b=OfgMaANOJBpM63tRy4H98yE3g3clFH7YgJg+nmK1lvnSoSgT21ktUx62BGN0gCAdSr
         hsf+drCWrl5iSp/5Fa2yaoezhceL2L6ySup7V0ETKN1uV8HZlxsa1hONPpxgTemweB2L
         cqGmBzcq4vWY5AB603b1lL/Tv8Ad2nEyeE48ZfBlKCGdpvbffVORu9t5MAOcdYTe7DtY
         kRQsDS5qcOuHqMIq510rXqzix9LGtHzePl643zeS55r0B9rA4WGAYeejiPGXF8ApO8/I
         IW882ccq+EnansYC7PS0/v7p61FKnV2vr/rpW7gExURZ/p/immI85x6HHkGl+0Le2Lzd
         YX9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=onkl+mmwkI4bxqHJq8l23WxyokB8I9WymxYa5mg2IbM=;
        b=xvuPmwcsfEE93crL8a7T/xI4nLqI/NPRObVBLSzal+awIorXOc6MwhITo+0vzPRMzG
         ZG+JUaNcpRDIlIJgXJgwTbHUCli5MH2PXy505FfCBZGfVW7Sb5NIaJ7Y77C2viCQwr7K
         euWHti4sBFQw3SgBT42n1zg6bexwqXb0vt4fj7X0/+EpblxZ1pKbfNk4Iq2X+BTDJUPT
         YBLLK+iJDZMwlLXcwWkfjKdjB5Wo4wuHqKBtkD/Xa00l2wwfok8aSe8LV2Nj8AvluRme
         pywDYnhrYjZXM8YUGeik9FIP6+S4MzY+MEMbmnyDR0XcWwGUqdN64ePGxkdMguDIu3qI
         3lzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H9l6sGUO;
       spf=pass (google.com: domain of 3ghazxgwkahciyznvpgidzmnbjjbgz.xjh@maestro.bounces.google.com designates 2607:f8b0:4864:20::948 as permitted sender) smtp.mailfrom=3ghazXgwKAHciYZnVpgidZmnbjjbgZ.Xjh@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=onkl+mmwkI4bxqHJq8l23WxyokB8I9WymxYa5mg2IbM=;
        b=rchewmDDdLLyx/cujo3wxGHVggCz3V/0aZhCl6DCrXbWOiYygcGW7kECJP1wWhYOzR
         BZI9PSbzSP/rB3Weg8sXp9pc/Z2L3Xmo7ej1GYj/Rw9caW5PEG/yIJhFe6kSpjV0WqBg
         OYye/WBzphP9K2TnNp4GNqN2MHdezn+4J+9zBK5QYcWi57ADC4bFCGddNeqVYxzz8OuW
         I0mhc/6X7iT1B/Plow99ewd73ain6FkL0GEFEiEjl2qZsA0WsNBPHdbXgMYzlsPj6FzL
         QWqGb2YvuKjJZB/BdcUG0TVY82WGppCAYNd1IDDYwYS2a7ZBQ7hx75oiF9INjpet6Msx
         zaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=onkl+mmwkI4bxqHJq8l23WxyokB8I9WymxYa5mg2IbM=;
        b=A1Rldo2M0LVAlW8YAQ1DAzf3N4PYR/4frMiJBZB9auIEqZJ1+YV5EiYe3qascYW6a8
         t9UawTYIRfrbR+utuQ9kh0YxjxM7RBLtZoJCL3NZ6Wwo8m9o420rPASbYXrfkWekUSKk
         l9XPfZamnAsqPTQ5UqquFf2ARG2uoElCr2rdP0kY6Ern8rrhw8A4Tz+FVwc4S/7fwIJA
         Uaj4py0KphJlfsNp4/lS4N3QcBiFmg+0EHwXPN+kHdgJ4dkENpxp26o62gI1aLG5peF3
         p9sZsETDOT5Et5o6TFFLzzgn/QDrW4hiP3A3wNBQGjWKQTzqohZ/wp34wpEVhTzmTfDE
         WAYQ==
X-Gm-Message-State: AGi0Pubq5io3zthnTvzBTIRtLaYTldZqHOI0SYZQmXszIAA8xZ7dDbyO
	b3ogYdDPDiGS/bcz/NhRnW8=
X-Google-Smtp-Source: APiQypI127NiM2Ktc5xflmARJR50Nh4cA6GaUEphZsp+WxAuuQ3OIOelsmsg4iGdOWzNAvyZl5ShUw==
X-Received: by 2002:a63:ef04:: with SMTP id u4mr8543373pgh.280.1588795012391;
        Wed, 06 May 2020 12:56:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1b0a:: with SMTP id b10ls2243735pgb.1.gmail; Wed, 06 May
 2020 12:56:52 -0700 (PDT)
X-Received: by 2002:aa7:8b42:: with SMTP id i2mr10399481pfd.21.1588795011936;
        Wed, 06 May 2020 12:56:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588795011; cv=none;
        d=google.com; s=arc-20160816;
        b=HB1zuPjbFT++zCiuTNJOZmUHiGZ+bGjonyAJXF4VoC6vUTJZIhXBFCwc+lAmilCqqo
         5Nt0SBeeLYdeB7IE2aM5DdgDp3d2w1a7u+Oi1NuBvGCB9zXPuIOzktVddgBMy+a8Y9j/
         8HNb/KeyOVM2I9iegEBJu9u5ky+rTzoAuLbaiyxQReF9y54jCNCjMi7ptiRrVoBRbIqh
         YBIEZzlv81v/F9zsxQ1tuElsMb3BMb9RvfEC0HAeEVXFbF0FBNDBOe85rN/V8udDjf7q
         MIxFpcVACloSYY7u3FORXjOZxxE1WM7oNSdpOqlpC9/FA0MR2+lO0hAXUpPPbJU4bwQO
         bArA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=uePm5eT//BtTj3wus4D72TolGprI370YZHwmi4//ncM=;
        b=O+U2VpKpahhUEjCiz0+iNciEA5xRFP4YZxE/7sKG2ZXZSEWraz1YSQgqMtiYk1j1ST
         PgT2wsqwxkzzGM7MBRSGXlT/Hnb8R8Ec28M5u5RhdZh/OjEwLronCrMc/oIteP9/GwUv
         r7UduBKPA1iT4oosm8fZPt2EsouSJrUnUhb1y4SwdsurvnrtSQXVKquAEVQbchiA8dKg
         r84MYXuT65WbjlYRXmXHuQBtyeez+bojNNwzwgphezrSvGnIQ4xuS0zh6tziZF5J7qF1
         Z6syMW/2j/P+Kfbb9XSPqM5QD5cIvW1S9vxAxjQaRROyiycQll1o0PJv354aGDlDzI3b
         dw9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H9l6sGUO;
       spf=pass (google.com: domain of 3ghazxgwkahciyznvpgidzmnbjjbgz.xjh@maestro.bounces.google.com designates 2607:f8b0:4864:20::948 as permitted sender) smtp.mailfrom=3ghazXgwKAHciYZnVpgidZmnbjjbgZ.Xjh@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x948.google.com (mail-ua1-x948.google.com. [2607:f8b0:4864:20::948])
        by gmr-mx.google.com with ESMTPS id c17si253857plc.5.2020.05.06.12.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 12:56:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ghazxgwkahciyznvpgidzmnbjjbgz.xjh@maestro.bounces.google.com designates 2607:f8b0:4864:20::948 as permitted sender) client-ip=2607:f8b0:4864:20::948;
Received: by mail-ua1-x948.google.com with SMTP id v3so1163661uat.21
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 12:56:51 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6102:1c:: with SMTP id j28mr9420404vsp.209.1588795010667;
 Wed, 06 May 2020 12:56:50 -0700 (PDT)
Message-ID: <0000000000003c4d7f05a5002a86@google.com>
Date: Wed, 06 May 2020 19:56:50 +0000
Subject: Clang-Built Linux Meeting Notes - May 6, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003c4d6a05a5002a83"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H9l6sGUO;       spf=pass
 (google.com: domain of 3ghazxgwkahciyznvpgidzmnbjjbgz.xjh@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::948 as permitted sender) smtp.mailfrom=3ghazXgwKAHciYZnVpgidZmnbjjbgZ.Xjh@maestro.bounces.google.com;
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

--0000000000003c4d6a05a5002a83
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


May 6, 2020
-----------

Welcome to Arnd, Randy. (Linaro)
Fortify disabled (Kees, George, Tom)
~2 bugs, primary is that Clang does unusual optimizations around =20
memcpy/strcpy*/=E2=80=A6, so this missed some fortify calls in the kernel.
Clang-10 had a bug where it was doing full calls to memcpy() instead of =20
inlining down to smaller sequences. This is fixed, but exposed the first =
=20
problem.
Fortify is important for compile-time and potentially run-time bounds =20
checking.
GCC is better at issuing diagnostics later during code generation, while =
=20
Clang struggles with this.
Fix will go in a point release for Clang 10.
https://github.com/ClangBuiltLinux/linux/issues/1002
Script for filing bugs for Clang releases.
llvm/utils/release/merge-request.sh
More work needs to be done on the kernel side for fortify as well.
X86 LTO 4.19- not booting (Nick)
$local for keeping symbols from being exported.
https://github.com/ClangBuiltLinux/linux/issues/852
X86 -next orb (Nick)
https://lore.kernel.org/lkml/20200505174423.199985-1-ndesaulniers@google.co=
m/T/#u
32b x86 (Nick)
Close to working, just waiting on one patch to be merged to turn this on.
per cpu and getuser fixes merged.
https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@google.co=
m/T/#u
Compressed debug info patch sent (Nick)
Large debug info growth sparked work on this.
Dwarf 5 (need to retest w/ gcc, 5 recent fixes to ToT GNU as)(Nick)
Rust in tree builds working (Nick)
https://lwn.net/Articles/797558/
Plumbers will likely be virtual
Should we just merge with Toolchain MC? (Nick thinks yes)
movzxw mnemonic/pseudo-op not supported by LLVM (Jian, Diab)
Will probably just fix this with an explicit version of the instruction.
Pahole + LTO (Bill)
Networking slowdown (Bill)
Compile bug, missed optimization?
https://groups.google.com/g/clang-built-linux/c/ZCwRi6n_jcw
3 bug requests (Arnd)
Kcov + boundsan or tsan - kcov gets disabled
-Wframe-larger-than can=E2=80=99t be set with a value with a pragma
Can=E2=80=99t print all available warning options - Any ideas on how to get=
 all of =20
this?
https://clang.llvm.org/docs/DiagnosticsReference.html
-Winline-asm warning about any use of r7 in Thumb2
-Wformat (Nick)
https://github.com/ClangBuiltLinux/linux/issues/378#issuecomment-623772712

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000003c4d7f05a5002a86%40google.com.

--0000000000003c4d6a05a5002a83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>May 6, 2020<br /></h1><ul><li>Welcome to Arnd, R=
andy. (Linaro)</li><li>Fortify disabled (Kees, George, Tom)</li><ul><li>~2 =
bugs, primary is that Clang does unusual optimizations around memcpy/strcpy=
*/=E2=80=A6, so this missed some fortify calls in the kernel.</li><li>Clang=
-10 had a bug where it was doing full calls to memcpy() instead of inlining=
 down to smaller sequences. This is fixed, but exposed the first problem.</=
li><li>Fortify is important for compile-time and potentially run-time bound=
s checking.</li><li>GCC is better at issuing diagnostics later during code =
generation, while Clang struggles with this.</li><li>Fix will go in a point=
 release for Clang 10.</li><ul><li><a href=3D'https://github.com/ClangBuilt=
Linux/linux/issues/1002'><span style=3D'text-decoration: underline'>https:/=
/github.com/ClangBuiltLinux/linux/issues/1002</span></a> </li></ul><li>Scri=
pt for filing bugs for Clang releases.</li><ul><li><a href=3D'https://githu=
b.com/llvm-mirror/llvm/blob/master/utils/release/merge-request.sh'><span st=
yle=3D'text-decoration: underline'>llvm/utils/release/merge-request.sh</spa=
n></a></li></ul><li>More work needs to be done on the kernel side for forti=
fy as well.</li></ul><li>X86 LTO 4.19- not booting (Nick)</li><ul><li>$loca=
l for keeping symbols from being exported.</li><li><a href=3D'https://githu=
b.com/ClangBuiltLinux/linux/issues/852'><span style=3D'text-decoration: und=
erline'>https://github.com/ClangBuiltLinux/linux/issues/852</span></a></li>=
</ul><li>X86 -next orb (Nick)</li><ul><li><a href=3D'https://lore.kernel.or=
g/lkml/20200505174423.199985-1-ndesaulniers@google.com/T/#u'><span style=3D=
'text-decoration: underline'>https://lore.kernel.org/lkml/20200505174423.19=
9985-1-ndesaulniers@google.com/T/#u</span></a> </li></ul><li>32b x86 (Nick)=
</li><ul><li>Close to working, just waiting on one patch to be merged to tu=
rn this on.</li><li>per cpu and getuser fixes merged.</li><ul><li><a href=
=3D'https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@googl=
e.com/T/#u'><span style=3D'text-decoration: underline'>https://lore.kernel.=
org/lkml/20200504230309.237398-1-ndesaulniers@google.com/T/#u</span></a> </=
li></ul></ul><li>Compressed debug info patch sent (Nick)</li><ul><li>Large =
debug info growth sparked work on this.</li></ul><li>Dwarf 5 (need to retes=
t w/ gcc, 5 recent fixes to ToT GNU as)(Nick)</li><li>Rust in tree builds w=
orking (Nick)</li><ul><li><a href=3D'https://lwn.net/Articles/797558/'><spa=
n style=3D'text-decoration: underline'>https://lwn.net/Articles/797558/</sp=
an></a></li></ul><li>Plumbers will likely be virtual</li><ul><li>Should we =
just merge with Toolchain MC? (Nick thinks yes)</li></ul><li>movzxw mnemoni=
c/pseudo-op not supported by LLVM (Jian, Diab)</li><ul><li>Will probably ju=
st fix this with an explicit version of the instruction.</li></ul><li>Pahol=
e + LTO (Bill)</li><li>Networking slowdown (Bill)</li><ul><li>Compile bug, =
missed optimization?</li><li><a href=3D'https://groups.google.com/g/clang-b=
uilt-linux/c/ZCwRi6n_jcw'><span style=3D'text-decoration: underline'>https:=
//groups.google.com/g/clang-built-linux/c/ZCwRi6n_jcw</span></a></li></ul><=
li>3 bug requests (Arnd)</li><ul><li>Kcov + boundsan or tsan - kcov gets di=
sabled</li><li>-Wframe-larger-than can=E2=80=99t be set with a value with a=
 pragma</li><li>Can=E2=80=99t print all available warning options - Any ide=
as on how to get all of this?</li><ul><li><a href=3D'https://clang.llvm.org=
/docs/DiagnosticsReference.html'><span style=3D'text-decoration: underline'=
>https://clang.llvm.org/docs/DiagnosticsReference.html</span></a></li></ul>=
<li>-Winline-asm warning about any use of r7 in Thumb2</li></ul><li>-Wforma=
t (Nick)</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/is=
sues/378#issuecomment-623772712'><span style=3D'text-decoration: underline'=
>https://github.com/ClangBuiltLinux/linux/issues/378#issuecomment-623772712=
</span></a> </li></ul></ul><br /><hr /><br />Sent by http://go/sendnotes</b=
ody></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000003c4d7f05a5002a86%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000003c4d7f05a5002a86%40google.com</a>.<br />

--0000000000003c4d6a05a5002a83--
