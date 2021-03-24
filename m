Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCN652BAMGQENLFWP5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id B82C83482C2
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 21:20:26 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id b78sf2460878qkg.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 13:20:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616617225; cv=pass;
        d=google.com; s=arc-20160816;
        b=yRcibEwEf2VLLoZvyTU5hEFS0cceP+ySHgk2XZHgRD5srtGOmAmZdACAMeIi5gbdSX
         KwLlN75seWrYD/jonRd7Hh4FvGFQSwHJWgKV68hrduKOzGE5OguriUw66RsVdI8LMro3
         0OaQwJKBSb5Zzv9gpX7bUejyi+6VhTZxfH/YRrEHP/rGBTj5G9gZWOmRt/EvaE2Xe9OF
         K6ch08syE0PcUyW7sEMUeIU8PtDfh4m3sx1B9szHNVHMa39kYR5F5If8UE46fAUsTBET
         fUiYR9KC7p905tZfMJBETqfAo06z+9I0SrCYb5nqz3zNEh4YJhR9Htir+n6aVxJFjy7E
         N4xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=0/VtMTJO5T/53kBgYS8KaC/Lgv/1ihmbfXyev1+MSyM=;
        b=HlzYAfbeaPJqaLoAq/apZ1orGcXHQ+9UnTyw3jbaSJzMmU/LtGfXay8fya3tdwcwdC
         AkMt+iEUQQ/SoUI9i3SKM3PRsx9SOy4O0Z/8aYMeK6mjBvPxjVSUI8Ar1cHJ5o1bdzoE
         WP7snPQCrC0Pycdm1JxaCRR72A29lFBRYkoCdjbpE19fbNWUNLWI70dauEaCgqd09Zfv
         EXfFy1+EYpEAcYsLX2kkBrFYA9Of/NdH/LwlRSYhjNhgVqUCbKHG765JSR3AFCbKTdSY
         VFRp+QI+5yD0WfNusvk0Ji+OXq5HT6Dpf8SlT9z2KLpqakWoMjQatJvHR5Do/SmW+1tT
         g1mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sgMba0qD;
       spf=pass (google.com: domain of 3cj9byawkal0qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com designates 2607:f8b0:4864:20::945 as permitted sender) smtp.mailfrom=3CJ9bYAwKAL0qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0/VtMTJO5T/53kBgYS8KaC/Lgv/1ihmbfXyev1+MSyM=;
        b=pHYxfe2R5J6ON6ZdnbTETO4wlF3jFUrtw2kIgQe/l8J52gDuGEuWdY5rFQWqvzVcJy
         HaSDcLGB+KrYeybo/sukTl07s7dXjNqYAtA7RuuIDzufidEzhM22jYtEq/olhlNk+C/R
         HkjF62eR2OlODy1mJZs4dlUOY4VbnklSBHmq5vffaN0jhm/O/kHu192ULqJ7X/BYf65X
         Y8qNI7rTfSZKxZvZ4WyVShbRInFLQXkIVo5M4gYkidG5QCOEFuBhVK8aFDbjQ1vc0maA
         KI0pFVSAeTT/q48kvABDaVlOLSBu3TZA9TVofruTEzMkTZxu9SrCWOhJTzQCZTQ+vsYC
         tRTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0/VtMTJO5T/53kBgYS8KaC/Lgv/1ihmbfXyev1+MSyM=;
        b=I9wjolOIfAtiBl83VmY307lDYtSDlvpleykpdwUEMVpDRVtvyp4h6g4oIYLFQXsEci
         PEAGwB+/04SpqszSvauCOISiaWvGgaX31c20kTBF75pF6PO6UCnvE8B8TfXPWAZ5tI3j
         7HYEBNcH0JDybjiI0/S4wymtwy99xkbpFervVNrQYVZ+HmEgFVCmB9lihAX262sPH6IW
         j1f17MOqmpalHYBsw5oFlr3uT+tvUQ0t098Iimt1v6i2mtU4ONXauN4Yn5JjaitXB33l
         mkxgg7y/iqGzU6bBIvLp3KvzKIus39TBZ4LTnleif0TfulCMfW//WXVRQSf3NFU91APl
         +DIA==
X-Gm-Message-State: AOAM531/KfWvMcDPmzIyn6OLHUgnd8ma4SgS6qbpkaslTHmk+qlJly5d
	Khb11uEdlnBHCLVoYS+zR44=
X-Google-Smtp-Source: ABdhPJyvlFZd3l+FWsyyRZhkbrPqXlQHBh1RgbGzgwDWFL/ndDWJ1gXr4eievsY2pvoM0fY45AIDFw==
X-Received: by 2002:ac8:664a:: with SMTP id j10mr4683686qtp.119.1616617225352;
        Wed, 24 Mar 2021 13:20:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a88:: with SMTP id c8ls1205476qtc.1.gmail; Wed, 24 Mar
 2021 13:20:24 -0700 (PDT)
X-Received: by 2002:ac8:4510:: with SMTP id q16mr4574879qtn.241.1616617224832;
        Wed, 24 Mar 2021 13:20:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616617224; cv=none;
        d=google.com; s=arc-20160816;
        b=PpldwjJyASA31cESDDBinz7r1Y6pNpb6XR4y+6PSlYfQogocbfZulawFFEiOKKOb2p
         icTcNO1vWDHPTThjVIgQ0p3g8H1zERrWfGl4pLi5F7arQ40VeIONVmlDZD5esAG5TnBX
         QyXCZMEtPcy0+IfOfyr+NUBQ91N6OidE+uJ/fkabaCGr4hKLA66entY7jHvxc9Zuv/vJ
         QgqOb/+bf4QgjJbOKB2cW/xeDSCkgQ1aEEho8Ws/5k9Vk5U6b/iADCJNhvQG+23Qg60f
         m/ac7Rt5EiY6YrIsKK+DsN6blsnBnMlnJShuAa4MOeB5GFxeWNbyW3d3H4jsG6gZcvRO
         tXkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=OE/kYYQ/ctkwEE5GlyyFPJ/V0U1dcXOIEtNDTuLoveU=;
        b=mevhZEBaxf1nY5Ck7fAdrNiuKi92fQwuYCXy9SnjvgotDFJboVLwrjmHp4yY/MzluX
         i3FtKyo0B9/cI7XU2xvKGaCI8HfVIZGowhqeZ9LDu3IyNe+FiyfOIGd1E3aqKqMpmisG
         vr23JIpcwYYw5IBuIqv9LHoqY+j3M7N6b2CPM4M9i6b9tzXPnICumTVClU7Aw/2OobcY
         ZEVu0A0c+UZkiA/vrJ+1ajHko3YHSiq/1LgvEh8mho+CB+oFAxizXHQS0JIxlrs8eqQ0
         khn6tBk1b/927SzKCqN80dt6Moqq2ZYQlQ9EAmD2Z9zPC2qvJkR6TSjJFQdG0gPTyOEg
         4q0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sgMba0qD;
       spf=pass (google.com: domain of 3cj9byawkal0qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com designates 2607:f8b0:4864:20::945 as permitted sender) smtp.mailfrom=3CJ9bYAwKAL0qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x945.google.com (mail-ua1-x945.google.com. [2607:f8b0:4864:20::945])
        by gmr-mx.google.com with ESMTPS id a15si301088qtn.4.2021.03.24.13.20.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 13:20:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cj9byawkal0qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com designates 2607:f8b0:4864:20::945 as permitted sender) client-ip=2607:f8b0:4864:20::945;
Received: by mail-ua1-x945.google.com with SMTP id x6so927314uao.18
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 13:20:24 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a67:e01e:: with SMTP id c30mr3137404vsl.9.1616617224283;
 Wed, 24 Mar 2021 13:20:24 -0700 (PDT)
Message-ID: <00000000000064b16905be4e0722@google.com>
Date: Wed, 24 Mar 2021 20:20:24 +0000
Subject: Clang-Built Linux Meeting Notes - March 24, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000064b14f05be4e071f"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sgMba0qD;       spf=pass
 (google.com: domain of 3cj9byawkal0qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::945 as permitted sender) smtp.mailfrom=3CJ9bYAwKAL0qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com;
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

--00000000000064b14f05be4e071f
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


March 24, 2021
--------------

LLVM_IAS=3D1 ARCH=3Darm landing in Android
Probably going to skip 4.19.y, one last assembler bug won't be ready in =20
time, 27 kernel backports required.
https://reviews.llvm.org/D98916
https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-u=
s.net/
https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO=
2vDcnQA@mail.gmail.com/
32b PPC BE builds spun down in CI
https://github.com/ClangBuiltLinux/continuous-integration2/pull/111
https://github.com/ClangBuiltLinux/linux/issues/1292
https://bugs.llvm.org/show_bug.cgi?id=3D49610
Riscv crash on -next, requires earlycon to get more info (or GDB)
CFI patches need help review+test
V3: =20
https://lore.kernel.org/lkml/20210323203946.2159693-1-samitolvanen@google.c=
om/
PGO patches need help review+test
https://lore.kernel.org/lkml/20210226222030.3718075-1-morbo@google.com/
Wenlei, Hongtao, Yonghong (ThinLTO+pahole)
https://reviews.llvm.org/D80765
Duplicate type info, skip emitting it for cross TU defined types? (TODO: =
=20
Nick: talk with dblaikie@)
Inlining of global functions means they can=E2=80=99t be traced; =20
__no_inline_for_lto __attribute__((noinline))? Prevent inlining in LLVM?
R=C3=A9mi, Antonio
TuxTest, TuxRun demo
https://gitlab.com/Linaro/tuxsuite#tuxtest TuxRun not yet ready, stay tuned
Would allow us to drop distributing QEMU, simplify workers in CI
Plan file support to be added to tuxsuite, months out though
(Arnd) warning promotions
Warnings were disabled in top level Makefile, but not enable-able via W=3D1=
23

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/00000000000064b16905be4e0722%40google.com.

--00000000000064b14f05be4e071f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>March 24, 2021<br /></h1><ul><li>LLVM_IAS=3D1 AR=
CH=3Darm landing in Android</li><ul><li>Probably going to skip 4.19.y, one =
last assembler bug won't be ready in time, 27 kernel backports required.</l=
i><ul><li><a href=3D'https://reviews.llvm.org/D98916'><span style=3D'text-d=
ecoration: underline'>https://reviews.llvm.org/D98916</span></a> </li><li><=
a href=3D'https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5b=
aa@roeck-us.net/'><span style=3D'text-decoration: underline'>https://lore.k=
ernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net/</span><=
/a> </li><li><a href=3D'https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQN=
NyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com/'><span style=3D'text-decora=
tion: underline'>https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQNNyoYmw+=
hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com/</span></a> </li></ul></ul><li>32b =
PPC BE builds spun down in CI</li><ul><li><a href=3D'https://github.com/Cla=
ngBuiltLinux/continuous-integration2/pull/111'><span style=3D'text-decorati=
on: underline'>https://github.com/ClangBuiltLinux/continuous-integration2/p=
ull/111</span></a> </li><li><a href=3D'https://github.com/ClangBuiltLinux/l=
inux/issues/1292'><span style=3D'text-decoration: underline'>https://github=
.com/ClangBuiltLinux/linux/issues/1292</span></a> </li><li><a href=3D'https=
://bugs.llvm.org/show_bug.cgi?id=3D49610'><span style=3D'text-decoration: u=
nderline'>https://bugs.llvm.org/show_bug.cgi?id=3D49610</span></a> </li></u=
l><li>Riscv crash on -next, requires earlycon to get more info (or GDB)</li=
><li>CFI patches need help review+test</li><ul><li>V3: <a href=3D'https://l=
ore.kernel.org/lkml/20210323203946.2159693-1-samitolvanen@google.com/'><spa=
n style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/2021032=
3203946.2159693-1-samitolvanen@google.com/</span></a> </li></ul><li>PGO pat=
ches need help review+test</li><ul><li><a href=3D'https://lore.kernel.org/l=
kml/20210226222030.3718075-1-morbo@google.com/'><span style=3D'text-decorat=
ion: underline'>https://lore.kernel.org/lkml/20210226222030.3718075-1-morbo=
@google.com/</span></a> </li></ul><li>Wenlei, Hongtao, Yonghong (ThinLTO+pa=
hole)</li><ul><li><a href=3D'https://reviews.llvm.org/D80765'><span style=
=3D'text-decoration: underline'>https://reviews.llvm.org/D80765</span></a> =
</li><li>Duplicate type info, skip emitting it for cross TU defined types? =
(TODO: Nick: talk with dblaikie@)</li><li>Inlining of global functions mean=
s they can=E2=80=99t be traced; __no_inline_for_lto __attribute__((noinline=
))? Prevent inlining in LLVM?</li></ul><li>R=C3=A9mi, Antonio</li><ul><li>T=
uxTest, TuxRun demo</li><li><a href=3D'https://gitlab.com/Linaro/tuxsuite#t=
uxtest'><span style=3D'text-decoration: underline'>https://gitlab.com/Linar=
o/tuxsuite#tuxtest</span></a> TuxRun not yet ready, stay tuned</li><li>Woul=
d allow us to drop distributing QEMU, simplify workers in CI</li><li>Plan f=
ile support to be added to tuxsuite, months out though</li></ul><li>(Arnd) =
warning promotions</li><ul><li>Warnings were disabled in top level Makefile=
, but not enable-able via W=3D123</li></ul></ul><br /><hr /><br />Sent by h=
ttp://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/00000000000064b16905be4e0722%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/00000000000064b16905be4e0722%40google.com</a>.<br />

--00000000000064b14f05be4e071f--
