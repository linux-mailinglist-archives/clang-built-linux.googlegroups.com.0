Return-Path: <clang-built-linux+bncBDYJPJO25UGBB44WSGAQMGQEYV2AXHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 453C23171FA
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 22:09:08 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id a1sf3503681ios.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 13:09:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612991347; cv=pass;
        d=google.com; s=arc-20160816;
        b=R4ExCQm3A+8MUrBTvItpmDfycxEykHGVPQiNNOaNnU7mI8sIe1wEIT5V0eNSqzrZef
         MqP0fbMUU8LGijO/KP1lruS2VBMl0XC3YdbMEwLw3Vhpa87xjVGQGfhZbZfJtQrkbRNQ
         CWxkCCe+JjTKPaOvUULfUwOUwklXHyhqK5NaLg0WBJujCq4N2gUIcazJbhKEvI8depic
         Yj9Z9f4xljJKidBVWVJr88mY6xK7srUpFDqpuU8UgL+tZK2p69r/xqYxFrUNXlOOh9qM
         g96HJfeE0zg9miauXe3CkLyT9EFnJXjFu8IrqDBf2oyGs+VvA+7ZRnN6gVakka8cHhX8
         GWDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=Ct5y8jKnVSLcrkyvnitS7mnXvZNO7Exh+VcIwTj6GAs=;
        b=hSpp9iHmgghGnET3nAgIiJFE0aS8qoJq/vbKoyrCeCPzPBYU+8Kp1Bf+BhE3yLZeX0
         VpQweGThisoaOJNH+jDLd6qDafdP13m7RSX18Eg/cWuuPgh15DMncLXnslGf2Z3KCZe7
         SmcSEndbxGg3GRosFyG2VSXiZoekV9mbKSYnzNpwKfPI5UpIeF8zd/RbFCW1E2ajFxRH
         kCUn2rk5tLnXgCRtBhbyFI0Efgbk56LnwvJfUFmspT6y4BYYz6RCq119uxf+hvds396J
         B974S3zKzjx3qSeR1fzVPyRA2UWd1Xc3JvkfnutEcsAsXRWtTfxHjaBVGfcWhcp2HkuB
         sycA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nmpTkWJQ;
       spf=pass (google.com: domain of 3ckskyawkakeoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::d45 as permitted sender) smtp.mailfrom=3ckskYAwKAKEOEFTBVMOJFSTHPPHMF.DPN@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ct5y8jKnVSLcrkyvnitS7mnXvZNO7Exh+VcIwTj6GAs=;
        b=nRmlEKIkOiVnICJJNelyre7lqqD/AgdUU+J/LYwKyXNIR6sJB7vEgPLn/gQPq9ZGW3
         ZDSnUwvFKYL87KprLJmk9NAFP4h8vuS8DwU7NaaqUA4hAIa1y19jLxhB8WZNELSD8VEg
         GQ88McnBtlcKrhNvsv8FRy2IcGzWur93z84lO998vSokIJHkAU0Gcg+ETmVEXQslf/hW
         PlOkXYX3qnxHqKvlBewTebxbvYvmMSf7L8UOA2OfvlSTuFBgkgkSif7dwaY4bKbFGwhe
         hsu1sqpAzPv6QV7HXmOwT2atd99lSqyzoAiStxJob6V01VebsXfdrAAqBd5FHNvqePUK
         r+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ct5y8jKnVSLcrkyvnitS7mnXvZNO7Exh+VcIwTj6GAs=;
        b=aLtOApWQ2Bg6lbbH0wNC6LcKs/ZQPiiJnfoD5nMeNwKBTJ4MpO85d+KevJvPoWi3xB
         aKfRWIox0OKBakCiYnxD37s6RoCdArtPpgXUiBVjc8+9mLk47N92hJcMcB+BbMwlqGMN
         oOSgsOWACy222Md21+9+jTtf4Kpb/9pf6UmTXizb/RMAnXne+Bsfx8NMZOcvmuOtoYjJ
         x0yE73bJPSKKPlyXijBI+Bw4lKiEb6c/Bhba0pr1F8isYOjzpgbisCTI67B/hl0bdQeF
         DuBvwINj5CYQG1JFIimZg4DTVYUczPOro7FEgf3pdyOtyRjM8vVxA7qvilYIUBGXAyR8
         R2oA==
X-Gm-Message-State: AOAM533jW3MZyOGzZGj5PJuRMsWocLFaK/6DOLxtwMulnp5VzKkKZ8uy
	kLd4Mx9c2FjQMrs04ECRLl8=
X-Google-Smtp-Source: ABdhPJyRvhD9C0cfB7CfuaZhA1Ri1YbKkvev6wRHBAr0ZF8Di5QiINFh6rM3UTavHcZneTeFYfG+4Q==
X-Received: by 2002:a02:9083:: with SMTP id x3mr5268288jaf.17.1612991347162;
        Wed, 10 Feb 2021 13:09:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:97d8:: with SMTP id k24ls597854ios.6.gmail; Wed, 10 Feb
 2021 13:09:06 -0800 (PST)
X-Received: by 2002:a5d:9f4a:: with SMTP id u10mr662899iot.186.1612991346743;
        Wed, 10 Feb 2021 13:09:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612991346; cv=none;
        d=google.com; s=arc-20160816;
        b=DtnkA+5NbqCjbWHwhAhF6epWQ1eri97BRuW6lQdxgHVvh+96fA9Dqv5qdyfsYU8w4m
         kWwCyY8Wxwah1dpCD8D2xl5qcaxjqS4Wgcuba7uvb/IttEEPEUWc1Gd7/knv6fAe/qiy
         BEqEWgUR70bTB9235w+uty4OmUQNWaqtlnmum84AtuykqmaBvFhRVd3bnNd3OVgZzo7b
         tetMQkGjsjwcxK1il3QRLjGWR/vuCTof8gPyS9cfibu5m0+CGSbDYWCe+7HcxoabdCQy
         sTdcOoiEnFmfhrWx/mgOhHr5f7QeLC4TbJ8MtPtB7MiZmQRK45rJl3jUQ872YTkHPvqy
         Zksg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=9moIExiupA2UiNer4z+MmJMN12KN76v90T88wmPJSOs=;
        b=KYWz0J070YblqHsSKjh3zeXfvvpTXgfD90D1z/49Y1CCBBl9t4jyopfQonsZ1YIGWD
         W6XYUc2fdihgEvOnVGIeZI97742GiDavvUHvUZ9bIkhn+alXLZSFtG8b+vDdpIYb4SGS
         rREEqNRIBq+OnVRplPhXzB+/reB3HOKYVKhPPgB2Qigs4KM2pyYBNmF7Pmr1KhTqVhql
         jEOeoLCR3AUPMEySqp4o3zpvtOqCjOHb+UoR92dNOxpBZHjrqHuZyS3PX7kWxlthzorZ
         BtFCiq0vDjVEh6i6N35rYscA7hqYt9+06jx5fuaKoge/h0i+xAOaUPkwjohEq7AzCVTn
         TmkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nmpTkWJQ;
       spf=pass (google.com: domain of 3ckskyawkakeoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::d45 as permitted sender) smtp.mailfrom=3ckskYAwKAKEOEFTBVMOJFSTHPPHMF.DPN@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com. [2607:f8b0:4864:20::d45])
        by gmr-mx.google.com with ESMTPS id y16si220396ili.3.2021.02.10.13.09.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:09:06 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ckskyawkakeoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::d45 as permitted sender) client-ip=2607:f8b0:4864:20::d45;
Received: by mail-io1-xd45.google.com with SMTP id f14so3452415ioc.20
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 13:09:06 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:1905:: with SMTP id 5mr2590577ilz.50.1612991346386;
 Wed, 10 Feb 2021 13:09:06 -0800 (PST)
Message-ID: <0000000000003a897d05bb01d0f3@google.com>
Date: Wed, 10 Feb 2021 21:09:06 +0000
Subject: Clang-Built Linux Meeting Notes - Feb 10, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003a897105bb01d0f0"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nmpTkWJQ;       spf=pass
 (google.com: domain of 3ckskyawkakeoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::d45 as permitted sender) smtp.mailfrom=3ckskYAwKAKEOEFTBVMOJFSTHPPHMF.DPN@maestro.bounces.google.com;
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

--0000000000003a897105bb01d0f0
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Feb 10, 2021
------------

Integrated as
Arm32 patches
https://reviews.llvm.org/D95872
https://reviews.llvm.org/D96285
https://reviews.llvm.org/D96304
Arnd filed a ton of bugs via randconfigs
Need  
https://lore.kernel.org/linux-arm-kernel/20210205223557.3097894-1-ndesaulniers@google.com/T/#u  
reviewed.
0day bot GCC report
X86 (64b & 32b) and aarch64 enabled for Android S 4.19+, CrOS 5.4+
(Bill) pahole + LTO
Different stack sizes objtool
https://github.com/ClangBuiltLinux/linux/issues/612
(Nick) DWARFv5
https://lore.kernel.org/bpf/20210207071726.3969978-1-yhs@fb.com/ BTF fix
V9 is probably final version:  
https://lore.kernel.org/lkml/20210205202220.2748551-1-ndesaulniers@google.com/
Requires integrated assembler for old GNU binutils.
LLD BE support!
https://lore.kernel.org/lkml/20210209005719.803608-1-nathan@kernel.org/T/#u
32b ARM, s390, ppc?
Mips be enable
https://youtu.be/GpiWVXKs9Z0 : "ClangBuiltLinux: What's Next?" - Nick  
Desaulniers (LCA 2021 Online)
32b ARM LLD bug fixed
https://lore.kernel.org/linux-arm-kernel/20210205085220.31232-1-ardb@kernel.org/T/#u
vfs_truncate BTF BTI
https://github.com/ClangBuiltLinux/linux/issues/1297
NPM causing one issue for ppc, -Werror though
https://github.com/ClangBuiltLinux/linux/issues/1292
Tuxsuite working well, adding many tests
PGO? (needs chasing upstream)
Inlining kasan experiment
Mailing list?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000003a897d05bb01d0f3%40google.com.

--0000000000003a897105bb01d0f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Feb 10, 2021<br /></h1><ul><li>Integrated as</li=
><ul><li>Arm32 patches</li><ul><li><a href=3D'https://reviews.llvm.org/D958=
72'><span style=3D'text-decoration: underline'>https://reviews.llvm.org/D95=
872</span></a> </li><li><a href=3D'https://reviews.llvm.org/D96285'><span s=
tyle=3D'text-decoration: underline'>https://reviews.llvm.org/D96285</span><=
/a> </li><li><a href=3D'https://reviews.llvm.org/D96304'><span style=3D'tex=
t-decoration: underline'>https://reviews.llvm.org/D96304</span></a> </li><l=
i>Arnd filed a ton of bugs via randconfigs</li><li>Need <a href=3D'https://=
lore.kernel.org/linux-arm-kernel/20210205223557.3097894-1-ndesaulniers@goog=
le.com/T/#u'><span style=3D'text-decoration: underline'>https://lore.kernel=
.org/linux-arm-kernel/20210205223557.3097894-1-ndesaulniers@google.com/T/#u=
</span></a> reviewed.</li><ul><li>0day bot GCC report</li></ul></ul><li>X86=
 (64b & 32b) and aarch64 enabled for Android S 4.19+, CrOS 5.4+</li></ul><l=
i>(Bill) pahole + LTO</li><li>Different stack sizes objtool</li><ul><li><a =
href=3D'https://github.com/ClangBuiltLinux/linux/issues/612'><span style=3D=
'text-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issue=
s/612</span></a> </li></ul><li>(Nick) DWARFv5</li><ul><li><a href=3D'https:=
//lore.kernel.org/bpf/20210207071726.3969978-1-yhs@fb.com/'><span style=3D'=
text-decoration: underline'>https://lore.kernel.org/bpf/20210207071726.3969=
978-1-yhs@fb.com/</span></a> BTF fix</li><li>V9 is probably final version: =
<a href=3D'https://lore.kernel.org/lkml/20210205202220.2748551-1-ndesaulnie=
rs@google.com/'><span style=3D'text-decoration: underline'>https://lore.ker=
nel.org/lkml/20210205202220.2748551-1-ndesaulniers@google.com/</span></a> <=
/li><li>Requires integrated assembler for old GNU binutils.</li></ul><li>LL=
D BE support!</li><ul><li><a href=3D'https://lore.kernel.org/lkml/202102090=
05719.803608-1-nathan@kernel.org/T/#u'><span style=3D'text-decoration: unde=
rline'>https://lore.kernel.org/lkml/20210209005719.803608-1-nathan@kernel.o=
rg/T/#u</span></a> </li><li>32b ARM, s390, ppc?</li><ul><li>Mips be enable<=
/li></ul></ul><li><a href=3D'https://youtu.be/GpiWVXKs9Z0'><span style=3D't=
ext-decoration: underline'>https://youtu.be/GpiWVXKs9Z0</span></a> : "Clang=
BuiltLinux: What's Next?" - Nick Desaulniers (LCA 2021 Online)</li><li>32b =
ARM LLD bug fixed</li><ul><li><a href=3D'https://lore.kernel.org/linux-arm-=
kernel/20210205085220.31232-1-ardb@kernel.org/T/#u'><span style=3D'text-dec=
oration: underline'>https://lore.kernel.org/linux-arm-kernel/20210205085220=
.31232-1-ardb@kernel.org/T/#u</span></a> </li></ul><li>vfs_truncate BTF BTI=
</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issues/129=
7'><span style=3D'text-decoration: underline'>https://github.com/ClangBuilt=
Linux/linux/issues/1297</span></a> </li></ul><li>NPM causing one issue for =
ppc, -Werror though</li><ul><li><a href=3D'https://github.com/ClangBuiltLin=
ux/linux/issues/1292'><span style=3D'text-decoration: underline'>https://gi=
thub.com/ClangBuiltLinux/linux/issues/1292</span></a> </li></ul><li>Tuxsuit=
e working well, adding many tests</li><li>PGO? (needs chasing upstream)</li=
><li>Inlining kasan experiment </li><li>Mailing list?</li></ul><br /><hr />=
<br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000003a897d05bb01d0f3%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000003a897d05bb01d0f3%40google.com</a>.<br />

--0000000000003a897105bb01d0f0--
