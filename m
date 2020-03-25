Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSGW57ZQKGQEHIPATII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9861934B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 00:37:46 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id g198sf3378016oib.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 16:37:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585179465; cv=pass;
        d=google.com; s=arc-20160816;
        b=lvWjQc45IHDB+gSTiy/1RinjXTmNLiDsoTsvPMezW8aOiTayAH1aWW5ZEn+yzrybcJ
         TS4fp6KE41ypwPgqzIaPtet/6rWTx16P3Da+WuUU8d/If7/Evqh/Bf+m59KwCN6mJ7rb
         MdYEdmfxmwdWK0kxNILBC0ECINMHM8Y7QXMZUBH2Rta7u68U+pNCiJYAajjczITtVRLx
         vEKp9mO/VdQ1wiPlVhs0Bxbwe55jigow4JpOvzlG12HGti6Mz2X0BFgp8Rh0bfpaLHGr
         kdwsq97SFZoM6DnbozFnY5c1+3N4m5oOq/qGRbBeJqpL6uxR+S4alBqeOudQAaKTrlN9
         dS+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=PBQgMApJxILOgLBsPBJgMkoBQFfIlryz5jlAOM36CF0=;
        b=VmRPRxzgfHanr4YSu/Km4zfhBK6xSaxjDMiBddsUs1GiVp780x18r4feUHCXlBJliU
         rOg6hwzYvp0vSh/EjjaYNGfSuoG8qHBT2BuOGtaEguwnnm0YAH7yfw6pCM3q49Ymd3Q5
         OmSXva+POmSavJ1JRwSTXj9v32O/0SPGCcoQG2NH56vocjJ3o/p/knEAOC8gALoMc9BM
         TrjJ2vcP0jrBiR4V9AovbDCm28qSGCQrM8+uKaqfuPdSspvVLvn/N9+PfLJ0ooJiZYtd
         OLMtWLRQF8YbGr9U2n3L73W5M3zYK6/INX1eDODpkmZ9t+F2iCMV63a4/YV2x4gMBNCo
         blnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=itWqYqdt;
       spf=pass (google.com: domain of 3r-t7xgwkaagvlm0i2tvqmz0owwotm.kwu@maestro.bounces.google.com designates 2607:f8b0:4864:20::346 as permitted sender) smtp.mailfrom=3R-t7XgwKAAgvlm0i2tvqmz0owwotm.kwu@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PBQgMApJxILOgLBsPBJgMkoBQFfIlryz5jlAOM36CF0=;
        b=R7KHhLAcXFb7zYUfldKuTbJNOi0GbCVNKrTgj8kRxHZ3oOq5OmHJAW5O8AvrYyKG1U
         CFGtw0yeXSuxqSLjD0ijv4CDAFl74woC4LrjTTb00ZU2GgIZ3C9Kdp4xZMi7LKdHVkoZ
         M3YVUczcwXGAidCze457CbBKKrroEPOaIG5AVDOKAIkULs3XoFy7Q1VdrwGQFrGLv+wy
         ZdcS2jqgtYbwdbXjsA3irVPvatIpG1+YlbwbIFnEnY+21qI9TOp5VrFL/tQ9zoljqQLJ
         aR3hzVdMZ2Dd3uQaG4tlxe19Mcs8PE3BYqLaojvcJnSUIQTVRdTkrS7j3KqPvB6+v+6h
         twTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PBQgMApJxILOgLBsPBJgMkoBQFfIlryz5jlAOM36CF0=;
        b=fboYtJP6ud6qdGIUo+MN2SfMGY6/M0dALrke/ouDm+YYg+x1NjKAW1sH+6mRCB2tdq
         cBy/8HsmfhLuAjv0gyEEmso3uNtj/v3lQVdQY0yTtva6eNymb/oxHSKFi26cvq1L9iD5
         SZrrZSW2H9c6s7mBV7fVklEJqyNU25n2smoY8FhvU1xfQ0L+2DYAf9dCS1RpmVdOmU6J
         ahRKVNzAEYjVHYJ0sTkrygncco/ulrZ0aqs6vC4JcKqimLj5D5xNItnV1kmCjXY5Brc2
         quqgjDOb2oki4PcbFQ+mvEnapjvrb3rwjx9V4iqjkKmi7h3pJMrinm0X5MIiZ7JwX44y
         wsEg==
X-Gm-Message-State: ANhLgQ3Dty8fXiQt5EYcgRZAFip9+kD4MqCdFQF5Ao9rCeuN5ZwtGJsd
	jzVxOLAnYt85J/fxPebmATc=
X-Google-Smtp-Source: ADFU+vvpiA72wWpa1TUpUeicQvsglrlHloBAxMYSVE2S4qS9ywvaU+zQdIksrGm6zsETkZYsB75vUA==
X-Received: by 2002:a05:6808:90f:: with SMTP id w15mr46835oih.0.1585179464739;
        Wed, 25 Mar 2020 16:37:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls1351922oia.0.gmail; Wed, 25 Mar
 2020 16:37:44 -0700 (PDT)
X-Received: by 2002:aca:6056:: with SMTP id u83mr18076oib.95.1585179464376;
        Wed, 25 Mar 2020 16:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585179464; cv=none;
        d=google.com; s=arc-20160816;
        b=tGZ1d9ccHpDzoMe0pC3x6fy/Gb5ew8Eyg/+X96GKIZo9Ti+evb5CXWoM50Mj5+x4ZC
         iqgzpsMftFOIIE0SG2ClZHxEI9af7OzHlPhbOD1+/468bYzLhoAzc2bEBp2xAiy/ecZj
         gjva7NxIDkByH3lVCRHdEdB7IKSgpm2yUcKHX1k/eZLIPfJiGnyt7l0nVkmJftz9LxB9
         pklanpMAEUar+ur/s6S4MtV/119smT6EgKi2sPdhDuxPKpzVv+HK7X5UYRd9hEANdith
         8sZ/P4tT+EIADkc5H87bezjap3QtgqcfSkj98iZDzLaX32OfNRF0crapQsNtrn8Qu8Oa
         lBBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=Z2uMDtv0twkeGwrXNTNpnnp60V31YbxivYAG2/SlAd4=;
        b=qL+W1K5UaY0+kHYgzX/QhODknTuCC5IJzH6mw0RjaCegB9kq0YGTaL6sdKpBqEfX3Q
         FAOifYV24JTB41kqD5treQ6FgBOq7NYeOHK05qBlxA51J0/dqiQwRXo4qIo4GClcN/RZ
         pguQy1bcCsJSYbPcr/CDm4XHS2oRNSEQrwHfZ77qiD4W78HaNHFefg5hzoV/XnbtdkdK
         tM+V+Dbbh/R5RYqM8ZQJ9IPr+Els+KFQpQj8eipILX9YhvTrB/GUFdC6p4eE4w8piZv2
         7w5GB0IZTHdqrZn6Gm2bPo2NZ0McTs6gBpd8kFkgmKqnpXH0TfYmb84x7DVC+ZFlSdex
         JP1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=itWqYqdt;
       spf=pass (google.com: domain of 3r-t7xgwkaagvlm0i2tvqmz0owwotm.kwu@maestro.bounces.google.com designates 2607:f8b0:4864:20::346 as permitted sender) smtp.mailfrom=3R-t7XgwKAAgvlm0i2tvqmz0owwotm.kwu@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com. [2607:f8b0:4864:20::346])
        by gmr-mx.google.com with ESMTPS id d22si67804oti.1.2020.03.25.16.37.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 16:37:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r-t7xgwkaagvlm0i2tvqmz0owwotm.kwu@maestro.bounces.google.com designates 2607:f8b0:4864:20::346 as permitted sender) client-ip=2607:f8b0:4864:20::346;
Received: by mail-ot1-x346.google.com with SMTP id a66so3102163otb.6
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 16:37:44 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:aca:3b41:: with SMTP id i62mr21587oia.55.1585179463863;
 Wed, 25 Mar 2020 16:37:43 -0700 (PDT)
Message-ID: <000000000000d9b19805a1b65acf@google.com>
Date: Wed, 25 Mar 2020 23:37:43 +0000
Subject: Clang-Built Linux Meeting Notes - March 25, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000d9b18505a1b65acc"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=itWqYqdt;       spf=pass
 (google.com: domain of 3r-t7xgwkaagvlm0i2tvqmz0owwotm.kwu@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::346 as permitted sender) smtp.mailfrom=3R-t7XgwKAAgvlm0i2tvqmz0owwotm.kwu@maestro.bounces.google.com;
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

--000000000000d9b18505a1b65acc
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

Clang-Built Linux Meeting Notes
http://go/clang-built-linux-notes
Meeting: Hangouts Meet


March 25, 2020
--------------

Dtc yylloc patch eye out for stable
Will regress our CI when it lands, as we=E2=80=99re carrying it out of tree=
 for =20
now, but backporting as is won=E2=80=99t be sufficient.
Syzkaller fix
https://lore.kernel.org/lkml/20200323191243.30002-1-ndesaulniers@google.com=
/
Arm64 ptr auth fix
https://lore.kernel.org/linux-arm-kernel/20200319181951.102662-1-ndesaulnie=
rs@google.com/T/#u
Ci changes
KernelCI: https://github.com/kernelci/kernelci-core/pull/340
TODO: enable coverage of mainline and stable now that we have the configs =
=20
right.
CBL CI: tuxbuild prototyping
Assembler
X86 booting?
Blocked on https://github.com/ClangBuiltLinux/linux/issues/913, works =20
otherwise.
https://github.com/ClangBuiltLinux/linux/issues/669 becomes an error in =20
linux-next, so that needs to be fixed.
Arm64 one llvm bug away for defconfig?
Blocked on https://github.com/ClangBuiltLinux/linux/issues/913, =20
https://github.com/ClangBuiltLinux/linux/issues/939 (potentially more for =
=20
CONFIG_KVM)
https://github.com/ClangBuiltLinux/linux/issues/716 isn=E2=80=99t a blocker=
, but is =20
really annoying and should get fixed.
Polly
Aosp llvm: =20
https://android-review.googlesource.com/c/toolchain/llvm_android/+/1261718
Kconfig: =20
https://groups.google.com/g/clang-built-linux/c/ZR7kT_Z0kp4/m/RqwkQ0OkAQAJ
Linux Plumbers Conf micro conf proposals just opened, plan to do a =20
ClangBuiltLinux micro conference.
https://www.linuxplumbersconf.org/blog/2020/
Request for test: =20
https://lore.kernel.org/lkml/20200317215515.226917-1-ndesaulniers@google.co=
m/T/#u

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000d9b19805a1b65acf%40google.com.

--000000000000d9b18505a1b65acc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><h2>Clang-Built Linux=
 Meeting Notes<br /></h2><a href=3D'go/clang-built-linux-notes'><span style=
=3D'text-decoration: underline'>http://go/clang-built-linux-notes</span></a=
><br />Meeting: <a href=3D'https://meet.google.com/yjf-jyqk-iaz'><span styl=
e=3D'text-decoration: underline'>Hangouts Meet</span></a><br /><br /><h1>Ma=
rch 25, 2020<br /></h1><ul><li>Dtc yylloc patch eye out for stable</li><ul>=
<li>Will regress our CI when it lands, as we=E2=80=99re carrying it out of =
tree for now, but backporting as is won=E2=80=99t be sufficient.</li></ul><=
li>Syzkaller fix</li><ul><li><a href=3D'https://lore.kernel.org/lkml/202003=
23191243.30002-1-ndesaulniers@google.com/'><span style=3D'text-decoration: =
underline'>https://lore.kernel.org/lkml/20200323191243.30002-1-ndesaulniers=
@google.com/</span></a></li></ul><li>Arm64 ptr auth fix</li><ul><li><a href=
=3D'https://lore.kernel.org/linux-arm-kernel/20200319181951.102662-1-ndesau=
lniers@google.com/T/#u'><span style=3D'text-decoration: underline'>https://=
lore.kernel.org/linux-arm-kernel/20200319181951.102662-1-ndesaulniers@googl=
e.com/T/#u</span></a></li></ul><li>Ci changes</li><ul><li>KernelCI: <a href=
=3D'https://github.com/kernelci/kernelci-core/pull/340'><span style=3D'text=
-decoration: underline'>https://github.com/kernelci/kernelci-core/pull/340<=
/span></a></li><ul><li>TODO: enable coverage of mainline and stable now tha=
t we have the configs right.</li></ul><li>CBL CI: tuxbuild prototyping</li>=
</ul><li>Assembler</li><ul><li>X86 booting?</li><ul><li>Blocked on <a href=
=3D'https://github.com/ClangBuiltLinux/linux/issues/913'><span style=3D'tex=
t-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues/91=
3</span></a>, works otherwise.</li><li><a href=3D'https://github.com/ClangB=
uiltLinux/linux/issues/669'><span style=3D'text-decoration: underline'>http=
s://github.com/ClangBuiltLinux/linux/issues/669</span></a> becomes an error=
 in linux-next, so that needs to be fixed.</li></ul><li>Arm64 one llvm bug =
away for defconfig?</li><ul><li>Blocked on <a href=3D'https://github.com/Cl=
angBuiltLinux/linux/issues/913'><span style=3D'text-decoration: underline'>=
https://github.com/ClangBuiltLinux/linux/issues/913</span></a>, <a href=3D'=
https://github.com/ClangBuiltLinux/linux/issues/939'><span style=3D'text-de=
coration: underline'>https://github.com/ClangBuiltLinux/linux/issues/939</s=
pan></a> (potentially more for CONFIG_KVM)</li></ul><li><a href=3D'https://=
github.com/ClangBuiltLinux/linux/issues/716'><span style=3D'text-decoration=
: underline'>https://github.com/ClangBuiltLinux/linux/issues/716</span></a>=
 isn=E2=80=99t a blocker, but is really annoying and should get fixed.</li>=
</ul><li>Polly</li><ul><li>Aosp llvm: <a href=3D'https://android-review.goo=
glesource.com/c/toolchain/llvm_android/+/1261718'><span style=3D'text-decor=
ation: underline'>https://android-review.googlesource.com/c/toolchain/llvm_=
android/+/1261718</span></a></li><li>Kconfig: <a href=3D'https://groups.goo=
gle.com/g/clang-built-linux/c/ZR7kT_Z0kp4/m/RqwkQ0OkAQAJ'><span style=3D'te=
xt-decoration: underline'>https://groups.google.com/g/clang-built-linux/c/Z=
R7kT_Z0kp4/m/RqwkQ0OkAQAJ</span></a> </li></ul><li>Linux Plumbers Conf micr=
o conf proposals just opened, plan to do a ClangBuiltLinux micro conference=
.</li><ul><li><a href=3D'https://www.linuxplumbersconf.org/blog/2020/'><spa=
n style=3D'text-decoration: underline'>https://www.linuxplumbersconf.org/bl=
og/2020/</span></a></li></ul><li>Request for test: <a href=3D'https://lore.=
kernel.org/lkml/20200317215515.226917-1-ndesaulniers@google.com/T/#u'><span=
 style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/20200317=
215515.226917-1-ndesaulniers@google.com/T/#u</span></a></li></ul><br /><hr =
/><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000d9b19805a1b65acf%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000d9b19805a1b65acf%40google.com</a>.<br />

--000000000000d9b18505a1b65acc--
