Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCWG7X7QKGQE5KAMONQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8228D2F547C
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 22:15:55 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 68sf2034840pfe.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 13:15:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610572554; cv=pass;
        d=google.com; s=arc-20160816;
        b=0vPCRcgTGcAJFfEjhIiMvcAl40unOlEhNnKJZXRV0lzI3VjzG5Rc5ZYxup+Whg3hM8
         1twv1vVQmvFpRaXcDHAQsF8OwvuDZiPKiUXzUIEfn6e+tzihAqzshWYS99M29tpz4nqB
         xp4X3ADJRHzDzx0Mgz7ZTIgHJwUMkNJ2tUfZa6Z9jGSw8lN7Kl485AKFbPfZxj4qtttc
         We6Tdf2KF01a6/Bou05K6CO+ktU065XXk5UrVryVrSSRlunK678wvW9sGVNyr32jwqlP
         U1m6DCa1eFK1yLCQNlpYmEKug2cIuu8mQgpxD5uvQLg4q97eEeMI6AadH/KtaPsJKIHt
         2M1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=8Ap7S2BrVdfec8WvpmAFOxdhzNd8gzBLorbY8dWXdhU=;
        b=NarXSLxfHakXHsbMMathkeKN+Q+tsus6p5Tj/Q3I/LN0tIQoppc05pqOcVl0/SUPE3
         1yrPyLCSenxykORbMVjgPdKXGv0elsrbhFXOXfrSp8EZR5pZxAxURSCeZBdcwmt5Dya3
         gVOGoa1XguEaqgHVKbVies/Ncy4U83yzECQPmtyhJUkuyRqZyJWGberpKKO88K0fwZgY
         z2SlS0BfQQRo076J0rfEUDQvfQbv7NPBt8C7rq8gr7vRCnMy+fNuq7MY0KbnwNeZgrwp
         C+0ikSdKDFtSqGeKzlbTwDBNdewARVqcxsMvq5fVczZDD+agcHmo7C4OZ7VkbVnPL1Jg
         LzYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iPktoYra;
       spf=pass (google.com: domain of 3cgp_xwwkanea01fxh8a51ef3bb381.zb9@maestro.bounces.google.com designates 2607:f8b0:4864:20::246 as permitted sender) smtp.mailfrom=3CGP_XwwKANEA01FxH8A51EF3BB381.zB9@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8Ap7S2BrVdfec8WvpmAFOxdhzNd8gzBLorbY8dWXdhU=;
        b=bWk7xoopgWpsinYSOMa5ptfORl2gg42sAXh8YqDeH+9xY4QA7VnPF8mZnB/R2JhAcb
         zY0U1ChDHtamdrcp9tRkhxFp1k/ihkINiO+HtrnLtAXN8Por6MgKN/kvFkIQ+WAFHntN
         koxX6WSQNdzsXgynZh+M2SVSTkeSgvp2IMPK4lc8x6qB04ugWfbxmRZnzfHPxdH4vY/l
         Cpee7/c+17IdExZvR3pTuHz5vKJPQZErGHOHqHR5YKWpLgleR92bl3JL0fcIydrIL8CN
         jxOgUwFAeo00pWccQ6R3pH9JCoNi5DDb5rMqvT6h5J3EWVqGaWti3EhTV793Zlhr3Tee
         EgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Ap7S2BrVdfec8WvpmAFOxdhzNd8gzBLorbY8dWXdhU=;
        b=IjAwP2i0UUlJlwv0Ud/pZtIcNdhgpPiSlMMsMydQVOmbLI3PAH4HEvY9s4FoSc/ryF
         RKhrzDxyzxGG0/8I83LaazlT1aRggGoo9xMfvuv1kCRnM6XAA3UopFQj/3YYovbdM/3N
         RWFaCXHY0v5Q9jBWi1VCxjTaY84G0Usu6nQjIoEZZf7kYjTQJ1TGj4EUsSj1OY1e+e3t
         lJZEMUiZN6QedImtEEj3Ov0w3m7dIq8mP959hxzCHhgi8Mn9DTWLmP+NRFiWyfnhXluL
         9vHS0pAdy8b+n7nT2QDZYMGdzGkUtJ0UDuqDhyhuS7BH/KCFtah97G2jYSKWr5fXNfET
         OOiA==
X-Gm-Message-State: AOAM533qNiSme31HBwpn2dforyiKzLJGsscG9wuaLf1ClX3AZSkjf+P6
	1XYtSylGLiw+Tv1Bc24ipZo=
X-Google-Smtp-Source: ABdhPJzGyiVqX4C0Efd+CWOrYW6867FmDegFCWKr4j8twGQaxgLbQ0EpldnAV79CTy9C5XIwcl5Cgg==
X-Received: by 2002:a63:4557:: with SMTP id u23mr3904248pgk.346.1610572554171;
        Wed, 13 Jan 2021 13:15:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1e5a:: with SMTP id p26ls1279164pgm.10.gmail; Wed, 13
 Jan 2021 13:15:53 -0800 (PST)
X-Received: by 2002:a65:6859:: with SMTP id q25mr3884025pgt.57.1610572553517;
        Wed, 13 Jan 2021 13:15:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610572553; cv=none;
        d=google.com; s=arc-20160816;
        b=wajs+PIN8odkq1vyI4jFAA36a9/Va6ScVX0ZMBVVTTT0ZsV29fOID724C+WdNE8A+0
         rNXZkxrEOMSyzQn/ezh9w/Vm8CnGU7nMk/3ldYZyiy+lGK5A9EWS8hmj63/+hLN8hkwc
         T69SSZzQhud2qpMBu3/xYFHZzXjAjJCR5Ix6Pjl8x49Xqcow3Ehl3l2WpPjEaz4BIuoY
         7EBQPZqFf1em+JEGi1W70uYez9flvEpJpfx8bcMXyzbQoBNT9Ai7ob8QubPjDbvn2iOV
         PAdOgsZyfygeQ3DwyrdiSL/SvSFM/Jy8OZpuDw5Mks7rJuvBh/pEmieotMbOZ4Tj7bxo
         DIVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=k9NjY4/bR6fb0wR9vXZNlNpa3ihyG8d6tSHgbLvClXs=;
        b=xss2IpBNdDWihLlmqlChv4pgiptmLtJSQUej4Ekco7n9bVs8G1YROQjoGokX5Z+P5w
         o88tyZaEifGRRv8+c0ghhlYs15u2eUxh+Tn49dfUiAnp2bHUYiv9Njkco9i23QE9Y8Ag
         OyE2BD0zEey83byo10v6nWV5fNYCE99yJ6xCrAf8o6NlbPT49HcryuITEQHFsQjNj+b5
         FOxZpCzkwB3wPkBHK8xVclPB5tvS53wDs/zz7yQnw6dp7Fw/V0jtPHG0c1IpET7XrwaD
         Trs16i5UqqPVbG3ZLGGNCGSW6LxIc13qR83jUFepZzuWviiSbxcvUlebgWlJP1BuE7Sn
         JqkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iPktoYra;
       spf=pass (google.com: domain of 3cgp_xwwkanea01fxh8a51ef3bb381.zb9@maestro.bounces.google.com designates 2607:f8b0:4864:20::246 as permitted sender) smtp.mailfrom=3CGP_XwwKANEA01FxH8A51EF3BB381.zB9@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com. [2607:f8b0:4864:20::246])
        by gmr-mx.google.com with ESMTPS id o14si278675pjt.0.2021.01.13.13.15.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 13:15:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3cgp_xwwkanea01fxh8a51ef3bb381.zb9@maestro.bounces.google.com designates 2607:f8b0:4864:20::246 as permitted sender) client-ip=2607:f8b0:4864:20::246;
Received: by mail-oi1-x246.google.com with SMTP id z7so1470933oic.21
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 13:15:53 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a05:6808:b18:: with SMTP id s24mr756085oij.72.1610572552643;
 Wed, 13 Jan 2021 13:15:52 -0800 (PST)
Message-ID: <000000000000e3155b05b8cea419@google.com>
Date: Wed, 13 Jan 2021 21:15:52 +0000
Subject: Clang-Built Linux Meeting Notes - Jan 11, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e3154d05b8cea416"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iPktoYra;       spf=pass
 (google.com: domain of 3cgp_xwwkanea01fxh8a51ef3bb381.zb9@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::246 as permitted sender) smtp.mailfrom=3CGP_XwwKANEA01FxH8A51EF3BB381.zB9@maestro.bounces.google.com;
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

--000000000000e3154d05b8cea416
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Jan 11, 2021
------------

PGO patch: =20
https://lore.kernel.org/lkml/20210113061958.886723-1-morbo@google.com/
Regressions!
Arm: =20
https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/=
T/#u
Modules: https://github.com/ClangBuiltLinux/linux/issues/1250
Ubsan: =20
https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Aissue+is%3Aopen+UB=
SAN
CI back online
https://github.com/ClangBuiltLinux/continuous-integration2
CKI: https://gitlab.com/cki-project/pipeline-definition/-/issues/1
Linuxconf au
Thoughts on mixing matching + still supporting CC=3Dclang even after moves =
to =20
LLVM=3D1.
https://linux.conf.au/schedule/presentation/107/
Dwarf5
https://lore.kernel.org/lkml/20210113003235.716547-1-ndesaulniers@google.co=
m/
LLVM_IAS=3D1 enabled for 4.19+ for aarch64 in android.
Objtool IAS issue: =20
https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Aissue+is%3Aopen+la=
bel%3A%22%5BTOOL%5D+objtool%22+label%3A%22%5BTOOL%5D+integrated-as%22
Llvm-objcopy cros
Gentoo build system runs as root
https://reviews.llvm.org/D93881
Polly
https://github.com/lazerl0rd/tryme_redbull/commit/c2da3277cc0143c1351b9e49f=
15e918041c9aef1
Reliable stack traces for arm64
Objtool: =20
https://lore.kernel.org/linux-arm-kernel/20200109160300.26150-1-jthierry@re=
dhat.com/
32b LLVM_IAS=3D1 arm
Likely usual issues with CC=3Dclang and ARMv4
S390
Looking great, just need qemu fixes to get merged and packaged.
History tree: =20
https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/
=E2=80=9CClang LTO Support Looks Like It Could Land For Linux 5.12=E2=80=9D=
: =20
https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DClang-LTO-Linux-Nex=
t-Queue

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000e3155b05b8cea419%40google.com.

--000000000000e3154d05b8cea416
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Jan 11, 2021<br /></h1><ul><li>PGO patch: <a hre=
f=3D'https://lore.kernel.org/lkml/20210113061958.886723-1-morbo@google.com/=
'><span style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/2=
0210113061958.886723-1-morbo@google.com/</span></a>  </li><li>Regressions!<=
/li><ul><li>Arm: <a href=3D'https://lore.kernel.org/stable/20210113185758.G=
A571703@ubuntu-m3-large-x86/T/#u'><span style=3D'text-decoration: underline=
'>https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x8=
6/T/#u</span></a> </li><li>Modules: <a href=3D'https://github.com/ClangBuil=
tLinux/linux/issues/1250'><span style=3D'text-decoration: underline'>https:=
//github.com/ClangBuiltLinux/linux/issues/1250</span></a> </li><li>Ubsan: <=
a href=3D'https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Aissue+is=
%3Aopen+UBSAN'><span style=3D'text-decoration: underline'>https://github.co=
m/ClangBuiltLinux/linux/issues?q=3Dis%3Aissue+is%3Aopen+UBSAN</span></a> </=
li></ul><li>CI back online</li><ul><li><a href=3D'https://github.com/ClangB=
uiltLinux/continuous-integration2'><span style=3D'text-decoration: underlin=
e'>https://github.com/ClangBuiltLinux/continuous-integration2</span></a> </=
li><li>CKI: <a href=3D'https://gitlab.com/cki-project/pipeline-definition/-=
/issues/1'><span style=3D'text-decoration: underline'>https://gitlab.com/ck=
i-project/pipeline-definition/-/issues/1</span></a> </li></ul><li>Linuxconf=
 au</li><ul><li>Thoughts on mixing matching + still supporting CC=3Dclang e=
ven after moves to LLVM=3D1.</li><li><a href=3D'https://linux.conf.au/sched=
ule/presentation/107/'><span style=3D'text-decoration: underline'>https://l=
inux.conf.au/schedule/presentation/107/</span></a> </li></ul><li>Dwarf5</li=
><ul><li><a href=3D'https://lore.kernel.org/lkml/20210113003235.716547-1-nd=
esaulniers@google.com/'><span style=3D'text-decoration: underline'>https://=
lore.kernel.org/lkml/20210113003235.716547-1-ndesaulniers@google.com/</span=
></a> </li></ul><li>LLVM_IAS=3D1 enabled for 4.19+ for aarch64 in android.<=
/li><li>Objtool IAS issue: <a href=3D'https://github.com/ClangBuiltLinux/li=
nux/issues?q=3Dis%3Aissue+is%3Aopen+label%3A%22%5BTOOL%5D+objtool%22+label%=
3A%22%5BTOOL%5D+integrated-as%22'><span style=3D'text-decoration: underline=
'>https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Aissue+is%3Aopen+=
label%3A%22%5BTOOL%5D+objtool%22+label%3A%22%5BTOOL%5D+integrated-as%22</sp=
an></a> </li><li>Llvm-objcopy cros</li><ul><li>Gentoo build system runs as =
root</li><li><a href=3D'https://reviews.llvm.org/D93881'><span style=3D'tex=
t-decoration: underline'>https://reviews.llvm.org/D93881</span></a> </li></=
ul><li>Polly</li><ul><li><a href=3D'https://github.com/lazerl0rd/tryme_redb=
ull/commit/c2da3277cc0143c1351b9e49f15e918041c9aef1'><span style=3D'text-de=
coration: underline'>https://github.com/lazerl0rd/tryme_redbull/commit/c2da=
3277cc0143c1351b9e49f15e918041c9aef1</span></a> </li></ul><li>Reliable stac=
k traces for arm64</li><ul><li>Objtool: <a href=3D'https://lore.kernel.org/=
linux-arm-kernel/20200109160300.26150-1-jthierry@redhat.com/'><span style=
=3D'text-decoration: underline'>https://lore.kernel.org/linux-arm-kernel/20=
200109160300.26150-1-jthierry@redhat.com/</span></a> </li></ul><li>32b LLVM=
_IAS=3D1 arm</li><ul><li>Likely usual issues with CC=3Dclang and ARMv4</li>=
</ul><li>S390</li><ul><li>Looking great, just need qemu fixes to get merged=
 and packaged.</li></ul><li>History tree: <a href=3D'https://git.kernel.org=
/pub/scm/linux/kernel/git/tglx/history.git/'><span style=3D'text-decoration=
: underline'>https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.g=
it/</span></a> </li><li>=E2=80=9CClang LTO Support Looks Like It Could Land=
 For Linux 5.12=E2=80=9D: <a href=3D'https://www.phoronix.com/scan.php?page=
=3Dnews_item&px=3DClang-LTO-Linux-Next-Queue'><span style=3D'text-decoratio=
n: underline'>https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DClang=
-LTO-Linux-Next-Queue</span></a> </li></ul><br /><hr /><br />Sent by http:/=
/go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000e3155b05b8cea419%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000e3155b05b8cea419%40google.com</a>.<br />

--000000000000e3154d05b8cea416--
