Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQPI7KAQMGQE24GYULY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B9A32AC67
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 22:55:14 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id i10sf12695875pgm.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 13:55:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614722113; cv=pass;
        d=google.com; s=arc-20160816;
        b=EmElkHE/9QuEa5KTBeKXN7490O0AexJCwRBp0JFRk5Du/P19Rd0NoL64ozSmXGUV5a
         hjBu90uxBnFDf+PHLnzVHQhCEPDkVkZ6UDCZrm5szBUWv9XiyeB8HdhV0CFsHuT0x7tO
         6OfT+C4qPu8pePqwguB0hwDwVC/6ESwp91sEsjI7HbyiL0r5sntpPx0aa+nLm7iW7vKt
         0boHr0efBEPNa0/mDYKAtNVGeXTSlD4k2iHmfKJxDw+X5i7DFcrk9xv3QEBfUL/M4pIh
         x8Wx6/dTDYoBQa+cpdeH22lqN6v2JlVUpGgPJklKpjldjAoIe4dg0Vh495SFoXG8b4vB
         8bzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=ThaVWLyEJWyGTZWjL++XST4SlplPICOboMH3MAW8QfE=;
        b=R7TPBedtJyzzc4gHMAaLk3VtBS4f8mP+E76/UYvyYJNlgUwEv4+MZPWT38J7vIe5c3
         4nKwBzzAzppvWQyTct2/KlzW+Zr1EjgcjJKOc0+iLxacc3MLJmZQefIGkjmJsgv0gIrW
         xZSA3F27x9ASFg8mtemWQsYhfDpBN9hCGsMKTazq0ThFxr4gY3PWFmmtl5SQr1yoVPbG
         UDe033nLkLKyTVzg7YnC8/8YWvpbBqicc/3so4fZKou6l4doVhd69r8nIlDr1yu0SeBE
         HGgakYfECd5yvcstqroSLn8WSHM4FF8+0IZ6O4s27xEvdMBV1BuERoPJ1UY6GISitBPH
         bcWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kzVnJOOU;
       spf=pass (google.com: domain of 3qlq-yawkaksyopdlfwytpcdrzzrwp.nzx@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3QLQ-YAwKAKsYOPdLfWYTPcdRZZRWP.NZX@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ThaVWLyEJWyGTZWjL++XST4SlplPICOboMH3MAW8QfE=;
        b=dcJyK5U0Tm4vJyPncupNoHOihegxXuFIi4/5HJxBWzUveCoj39wENRJxw5IXqfJNy2
         OZEd+sY1o9gjSJN62G1LN0oT1BGyMfYluES5nWxP9/sGMJ1hbxmqqPpNL0AOpRQm9IAw
         bCxf9XZeNP7KqbxRNyC7AQmvf4+rTsUf8bSI0Tpy+ZSWyD7ucVC0lWn6G/TUW43iqGFL
         qsi2PdDTQ8PjEgIskJteDeQuoSL+vEIEddsMOpW4KZI4husR9CYAB8PsGYvs3+F1TiqM
         kp32ajeMHrBvkjY5QFEllz4Y3/pjSymabrGyZSrjvYBKaTZOadwg2K+6X254VgMHcqKU
         hmEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ThaVWLyEJWyGTZWjL++XST4SlplPICOboMH3MAW8QfE=;
        b=iy08/KnNf0DfofFA1AIQtuGCnGgkk516ibmOD67JwVp/ktObTaRBkTKc+VyxOrTTYR
         jkyYhiG4Por6gb6QT5X99BY7oIDm6yoFY6DYDifEUGf8Z/ShrAzcEwLW1wFQiAG6INGg
         vZd0MMBwuPZ3mlj51qsooSwGahtsngyeRTgaYNaIABKdoWl3wZokPFh8zn99Oj0FBBYx
         aL2qCER7O52FOi2PvsIbnEl7CFNlIVucucoFBlufASY/8POnd/4dM0LWsCrr31jf9KwJ
         U7gg+9ZE7dR4YNl46wuY4JAHurWs6GO4Xs7jJPEjqGTGNpbtqX75+9KVMfcNCdn7UOMi
         SOXw==
X-Gm-Message-State: AOAM530h1E/nbATq51ewIUvpD04FhBt1XQjEBukcJcN6RW/DS4k/CSlO
	O9E8t0BHM6x2h+Y8TiILTvA=
X-Google-Smtp-Source: ABdhPJw0tTDZopNU/p3m1gsbZdY/VgQCGFvlF9lyKLPWy1G8C0y3y0jVoR+hxNWFLPZ5l0D+x6iHHQ==
X-Received: by 2002:a62:8051:0:b029:1ed:d704:1f11 with SMTP id j78-20020a6280510000b02901edd7041f11mr5110759pfd.41.1614722113344;
        Tue, 02 Mar 2021 13:55:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:ec9:: with SMTP id gz9ls78273pjb.2.gmail; Tue, 02
 Mar 2021 13:55:12 -0800 (PST)
X-Received: by 2002:a17:90a:7e94:: with SMTP id j20mr6665598pjl.8.1614722112750;
        Tue, 02 Mar 2021 13:55:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614722112; cv=none;
        d=google.com; s=arc-20160816;
        b=KRVCa+9F3jp6uR6EJrLFhmdkzMTh1n09AHK22Rumi2iqJjQ0zLJOzFyzpzDv/YpM1X
         zxxvbJF1Fxd82DYH8qju0Qks7FDsc9u/bGr9qsTBkPe3XmT15phqux6B18iCUnEOzMTq
         3wY7IPEms0XIsTjnf/ujNF62WeJCPKYyck/uaO/nIOrV9L5QUicnl57nhM1iPEkAe7Ps
         9tOlajmnL1uuMSZ0nJePvSap4K1JVrOmJkZdhtScTEYDJTPX63Vh17WwHIsr2145fcHI
         hPK12mcFjQIGwSBReH+hcjWk2KwtEl75Aaya2eNu9Z5zfCNQ2Nv9zcndeaG3VT5h/d2x
         buDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=F+KaY7oVaoPlB2I6MSxxQPvgyG/jxuGF7n569SXsb00=;
        b=SAAH/wdj3gLQxdOKfe2L+9zNbxj4rHZXh7+qZ/Rh4wjJ3g1OBu3Gk9EMVwpOQrrLNu
         99KkUDOlBs4zhL6WXm//IbZBSjOBOeoYFAxegtQC7kfZoK70DwQ80gPfJXFcmWwEkuvE
         onpB4AuvxzcyeZpTkPaLALU+qNioaVBV73i22LiYqqSh+IJwBBKEi0q3JXfyqCJl/7f2
         JvM8UIXlNTsYVvGJyXjSjSv7WlugZadgKp6ps4YM2WUKRw7qH3S1MUZV/nbbC0zd1VeI
         D4e3vw2obse4zrl9N1GP3+aajSQtF9tTJswDGFnDcGGDB2KWdCW2/fV14fKG/Zp6bjUF
         WbbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kzVnJOOU;
       spf=pass (google.com: domain of 3qlq-yawkaksyopdlfwytpcdrzzrwp.nzx@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3QLQ-YAwKAKsYOPdLfWYTPcdRZZRWP.NZX@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com. [2607:f8b0:4864:20::d48])
        by gmr-mx.google.com with ESMTPS id lt14si376837pjb.2.2021.03.02.13.55.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 13:55:12 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qlq-yawkaksyopdlfwytpcdrzzrwp.nzx@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) client-ip=2607:f8b0:4864:20::d48;
Received: by mail-io1-xd48.google.com with SMTP id c4so17165361ioq.15
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 13:55:12 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:d686:: with SMTP id p6mr19007591iln.268.1614722112138;
 Tue, 02 Mar 2021 13:55:12 -0800 (PST)
Message-ID: <000000000000e8200605bc94c9c2@google.com>
Date: Tue, 02 Mar 2021 21:55:12 +0000
Subject: Clang-Built Linux Meeting Notes - Feb 24, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e81ff505bc94c9bf"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kzVnJOOU;       spf=pass
 (google.com: domain of 3qlq-yawkaksyopdlfwytpcdrzzrwp.nzx@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3QLQ-YAwKAKsYOPdLfWYTPcdRZZRWP.NZX@maestro.bounces.google.com;
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

--000000000000e81ff505bc94c9bf
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Feb 24, 2021
------------

Integrated as (THUMB2)
Final blocker to build: https://github.com/ClangBuiltLinux/linux/issues/128=
6
LTO has landed upstream!
Arm64: =20
https://lore.kernel.org/lkml/CAHk-=3DwgQ=3DoaLD_ybzhOP+8LFNZH3Qzpc-dp4XB4cX=
xXLReCdnQ@mail.gmail.com/
X86_64: =20
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D414eece95b98b209cef0f49cfcac108fd00b8ced
BTF support?
Curious inlining changes from NPM (ipsccp)
https://github.com/ClangBuiltLinux/linux/issues/1302
Using qemu from ubuntu for riscv
https://github.com/ClangBuiltLinux/linux/issues/1293 causing x86_64 =20
allmodconfig to fail to build w/ clang-10.  Can=E2=80=99t fix clang-10.  Tu=
rn down =20
build or bump minor version?
Kconfig depends on clang-11+
https://lore.kernel.org/lkml/c0ff7dba14041c7e5d1cae5d4df052f03759bef3.16132=
43844.git.luto@kernel.org/ =20
missing =20
stack protector for 32b x86: =20
https://bugs.llvm.org/show_bug.cgi?id=3D49209
Kpatch clang support: https://github.com/dynup/kpatch/pull/1156
Boot test Debian images: =20
https://github.com/ClangBuiltLinux/boot-utils/pull/35
http://cdn.kernel.org/pub/linux/kernel/people/will/docs/qemu/qemu-arm64-how=
to.html

https://github.com/ClangBuiltLinux/linux/issues/1269 LTO issue blocking =20
toolchain upgrades
ETM related arm64 IAS
Rust for linux: https://github.com/Rust-for-Linux/linux/issues
Testers wanted:
PGO:
Polly:

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000e8200605bc94c9c2%40google.com.

--000000000000e81ff505bc94c9bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Feb 24, 2021<br /></h1><ul><li>Integrated as (TH=
UMB2)</li><ul><li>Final blocker to build: <a href=3D'https://github.com/Cla=
ngBuiltLinux/linux/issues/1286'><span style=3D'text-decoration: underline'>=
https://github.com/ClangBuiltLinux/linux/issues/1286</span></a> </li></ul><=
li>LTO has landed upstream!</li><ul><li>Arm64: <a href=3D'https://lore.kern=
el.org/lkml/CAHk-=3DwgQ=3DoaLD_ybzhOP+8LFNZH3Qzpc-dp4XB4cXxXLReCdnQ@mail.gm=
ail.com/'><span style=3D'text-decoration: underline'>https://lore.kernel.or=
g/lkml/CAHk-=3DwgQ=3DoaLD_ybzhOP+8LFNZH3Qzpc-dp4XB4cXxXLReCdnQ@mail.gmail.c=
om/</span></a> </li><li>X86_64: <a href=3D'https://git.kernel.org/pub/scm/l=
inux/kernel/git/torvalds/linux.git/commit/?id=3D414eece95b98b209cef0f49cfca=
c108fd00b8ced'><span style=3D'text-decoration: underline'>https://git.kerne=
l.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3D414eece95b98=
b209cef0f49cfcac108fd00b8ced</span></a> </li><li>BTF support?</li></ul><li>=
Curious inlining changes from NPM (ipsccp)</li><ul><li><a href=3D'https://g=
ithub.com/ClangBuiltLinux/linux/issues/1302'><span style=3D'text-decoration=
: underline'>https://github.com/ClangBuiltLinux/linux/issues/1302</span></a=
> </li></ul><li>Using qemu from ubuntu for riscv</li><li><a href=3D'https:/=
/github.com/ClangBuiltLinux/linux/issues/1293'><span style=3D'text-decorati=
on: underline'>https://github.com/ClangBuiltLinux/linux/issues/1293</span><=
/a> causing x86_64 allmodconfig to fail to build w/ clang-10.  Can=E2=80=99=
t fix clang-10.  Turn down build or bump minor version?</li><ul><li>Kconfig=
 depends on clang-11+</li></ul><li><a href=3D'https://lore.kernel.org/lkml/=
c0ff7dba14041c7e5d1cae5d4df052f03759bef3.1613243844.git.luto@kernel.org/'><=
span style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/c0ff=
7dba14041c7e5d1cae5d4df052f03759bef3.1613243844.git.luto@kernel.org/</span>=
</a> missing stack protector for 32b x86: <a href=3D'https://bugs.llvm.org/=
show_bug.cgi?id=3D49209'><span style=3D'text-decoration: underline'>https:/=
/bugs.llvm.org/show_bug.cgi?id=3D49209</span></a> </li><li>Kpatch clang sup=
port: <a href=3D'https://github.com/dynup/kpatch/pull/1156'><span style=3D'=
text-decoration: underline'>https://github.com/dynup/kpatch/pull/1156</span=
></a> </li><li>Boot test Debian images: <a href=3D'https://github.com/Clang=
BuiltLinux/boot-utils/pull/35'><span style=3D'text-decoration: underline'>h=
ttps://github.com/ClangBuiltLinux/boot-utils/pull/35</span></a> </li><ul><l=
i><a href=3D'http://cdn.kernel.org/pub/linux/kernel/people/will/docs/qemu/q=
emu-arm64-howto.html'><span style=3D'text-decoration: underline'>http://cdn=
.kernel.org/pub/linux/kernel/people/will/docs/qemu/qemu-arm64-howto.html</s=
pan></a> </li><li></li></ul><li><a href=3D'https://github.com/ClangBuiltLin=
ux/linux/issues/1269'><span style=3D'text-decoration: underline'>https://gi=
thub.com/ClangBuiltLinux/linux/issues/1269</span></a> LTO issue blocking to=
olchain upgrades</li><li>ETM related arm64 IAS</li><li>Rust for linux: <a h=
ref=3D'https://github.com/Rust-for-Linux/linux/issues'><span style=3D'text-=
decoration: underline'>https://github.com/Rust-for-Linux/linux/issues</span=
></a> </li><li>Testers wanted:</li><ul><li>PGO:</li><li>Polly:</li></ul></u=
l><br /><br /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000e8200605bc94c9c2%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000e8200605bc94c9c2%40google.com</a>.<br />

--000000000000e81ff505bc94c9bf--
