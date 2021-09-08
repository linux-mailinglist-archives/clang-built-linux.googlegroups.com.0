Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD5T4SEQMGQEIDMA66A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE0140401B
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Sep 2021 22:14:08 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id u21-20020a631415000000b00268f723a4d3sf2394155pgl.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Sep 2021 13:14:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631132047; cv=pass;
        d=google.com; s=arc-20160816;
        b=QNPKk16NHN6cYGg1j+hB78gkvJfy3996mLyj5iKmtpzNudKeHW8SKf/H48xV3FtAxi
         Af6XwgTv3Bfsh1b1VIx98wLP/4/CdQoAC0X+Bqj6XaOmm8jFCX1tnSa8w+yrnAxnyPBr
         V6p1zInFn9D+uY3G/mPUoBmB7baQZzqRRbrN0oh7I9cwsdO+dGaqGIWq7TowMicuqcXc
         DdOzztQe1EZ+1/blMhgve47FPH1PzQg2bZ3KGVvxnXae3q1LQXW0LBNP9KGCLv2FdPxU
         qjritxbY1IcPUmgSQFz2Aw3+L4eMbeKOYEMBem/jEGLXiQ4JqrMkwHWwgQ84xKHw4cLx
         JraQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=cw2zE/+JkoKmk60KQ3CsJlBSEDt5ke3bBihPy24wlv8=;
        b=LUyOcbnJ4HI73mLEVyHstp8jBACFm2vIFGqdnGv6Z9UZRLKqWRSRXI0B98c7NkJLlN
         a3OgswewyAHZNsd3bsAuevJI+XPy0unrrgu6JS8qSnmhO0pqeUCt1OA6vjocJQN7Foc7
         x5e7EXh3O4nBufjoXIwm7YSObMj1Ws/r8UdB//DMU9JcBKMgPhlFIR5Xppo0Iwkh0GgP
         yJkLlWzpSwyMStjagNHNVINHznWcov99Ubp5t9zoCPprjvmva43/Db4JnJNmKWY/B5pX
         zJT/S5x07TWNSoiN7FZpj15A13QUaoXwkQPk+QKe1wKzEPDsYW5uxv5ykJbvMTsXsigw
         eQ1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=RecVpnZ2;
       spf=pass (google.com: domain of 3jrk5yqwkalqhxymuofhcylmaiiafy.wig@maestro.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=3jRk5YQwKALQhXYmUofhcYlmaiiafY.Wig@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cw2zE/+JkoKmk60KQ3CsJlBSEDt5ke3bBihPy24wlv8=;
        b=MpwJic9cKU1lT5tuO8EYBUVZ881Jys7uHDkFgOaXYbP1AXgnNNsh+OcD1ztwoubhgq
         kCrADMmCaQ0iml/XbuctBX9kkM1co0p9tT0dKE2UtCtv57T0s2ebsyweN+ByM17om6Z0
         xS9eds7ETkKyXo5ap04yPXvHLgvKISDsCHyOkqiWeVan9VJi0BkF6dtfR91A6GYS9H3O
         cXW7J+m1SxMh6xvVUp5LPcYIM+xftwIGO/DkzVud2XoTggq3cQG794vh5lZhELj5KEnd
         XrAOgQAxXk6khhPy8717PBeqWwbRQ/aUzqds1D/nTdhTEfJzvelEL29Rs2tb6kYQEq/F
         sDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cw2zE/+JkoKmk60KQ3CsJlBSEDt5ke3bBihPy24wlv8=;
        b=XLxLsgnlxYiUPMywuqoYZ1h5y+O+il3Yc50Bq9Pa3EdXvkPAgBbV8o0OXCY18dZx0x
         QEkTK6xi2NteKzrF0WLFFZTvTNqBRSeZ/DGJwDb9a38jJqhO1PrsHdUD3KlVyaH4t0nR
         599Cqtsj1deZtsRmWzxffEJA7pH8Dkswq8ii2KbaLmK8Utg2wqtsfbVqdqXfZ/qSOiEV
         FCgGTTtVGxVBERGsx2cZtYlD+PbuaysBKQIyaXmp1qLHiDdxdYtnpG+6l9f5IXrKDvUd
         06vIxk7s+hfiHRfHzoZjTAPQdw8cr29dr7bbmpAgaA865SL2UQsJMINugIccKA/xpnEw
         8BJg==
X-Gm-Message-State: AOAM5321fQHOhISOsYzpgteBXobb3EBVkIsbnwUb63LlT8tyj1h2RgEz
	65qvLXMYSsF82EfiPX1yvFk=
X-Google-Smtp-Source: ABdhPJymqIT+hL23E8luRSJRlc7G1MAevOdTT/sVARBdtGSWbFSEWTK3VcIoT678Vuk7meYdcAEwgQ==
X-Received: by 2002:a63:b349:: with SMTP id x9mr5324444pgt.139.1631132047186;
        Wed, 08 Sep 2021 13:14:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15d4:: with SMTP id 203ls1397815pfv.4.gmail; Wed, 08 Sep
 2021 13:14:06 -0700 (PDT)
X-Received: by 2002:a62:8415:0:b0:407:8998:7c84 with SMTP id k21-20020a628415000000b0040789987c84mr5465541pfd.71.1631132046533;
        Wed, 08 Sep 2021 13:14:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631132046; cv=none;
        d=google.com; s=arc-20160816;
        b=VunSexJ6ekZBzVYoLQ+zo3utIuxX35GYs11vT/xZNxyT7yqAPun+nwAkExuxo6sCcJ
         l76RuAGNuaBzx6RriIjpMX3dqGJJDzEONlqQI1D94um/NDOXw2uz6dvbigg7oS9QnuRc
         GS81hEMg/Bg/SSq0c5/rSf5jvE2YV+7iGiV9wF+Cmp/ZeWFqEv6ljeS4ETYc0hXwxEEa
         oSb3qdrL5ZXD/TXPJH4tvbqWzcFFWQA4jgqw0LOypGLaIGIxPMzo4Jayi6UseZrpVK6y
         W+ygQZWpbJ1Munq60cY8Zz8L1+1jb5mZGitliUgilu0YJrXZQjHsBfqLd1QROXT3ruDi
         S4Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=7Kx02UBSWsTDVfqRHs3rNQ8UoVTJPFp5XwO4IFjHn2U=;
        b=DedSpQifZJj8eA3VHAvU0FW8Hxb6pze2/x5HRJJK17/FPN5737eJkiOZxgCp79VlZn
         csQtlI1fgHl8BUpE8DiXoIF7pokuIY7XzdXtymlO7jYSb0FVnhqq20xh5+a9bjW5qYX5
         84CXds+2RUyXmF+wHmkcRq7KUE8reBkA1jnVhoYB8YEqamtUK/MRPf3daG8CrPt1kr9D
         rJ8DTOA1lbphudP2TP3SLafGzZSPdEpMgMvPLMi7j4jZYPrNfdSkFiWtN5NTfnpRe74z
         0JTbwLRhe2JcIH+oQjwZmXst3XZ7ckiPZIvr4WY5zGToP2H6X0yjMGvLk/dTf8QgwG70
         GuAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=RecVpnZ2;
       spf=pass (google.com: domain of 3jrk5yqwkalqhxymuofhcylmaiiafy.wig@maestro.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=3jRk5YQwKALQhXYmUofhcYlmaiiafY.Wig@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe45.google.com (mail-vs1-xe45.google.com. [2607:f8b0:4864:20::e45])
        by gmr-mx.google.com with ESMTPS id r14si9469pgv.3.2021.09.08.13.14.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 13:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jrk5yqwkalqhxymuofhcylmaiiafy.wig@maestro.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) client-ip=2607:f8b0:4864:20::e45;
Received: by mail-vs1-xe45.google.com with SMTP id y12-20020a67d20c000000b002d0f223aecdso1179563vsi.3
        for <clang-built-linux@googlegroups.com>; Wed, 08 Sep 2021 13:14:06 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a67:d981:: with SMTP id u1mr3830082vsj.9.1631132045468;
 Wed, 08 Sep 2021 13:14:05 -0700 (PDT)
Message-ID: <000000000000277d0305cb81862d@google.com>
Date: Wed, 08 Sep 2021 20:14:05 +0000
Subject: Clang-Built Linux Meeting Notes - Sep 8, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com, 
	llvm@lists.linux.dev
Content-Type: multipart/alternative; boundary="000000000000277cea05cb81862a"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=RecVpnZ2;       spf=pass
 (google.com: domain of 3jrk5yqwkalqhxymuofhcylmaiiafy.wig@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=3jRk5YQwKALQhXYmUofhcYlmaiiafY.Wig@maestro.bounces.google.com;
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

--000000000000277cea05cb81862a
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Sep 8, 2021
-----------

Need attribute error warning kernel fixes to be picked up by Miguel
https://github.com/ClangBuiltLinux/linux/issues/1173
__mulodi4 llvm fixes in, need to do kernel fixes
https://github.com/ClangBuiltLinux/linux/issues/1438
Todo file bug against gcc for mulodi4?
Switch bit test fixes landed in llvm fixes LTO boot
https://reviews.llvm.org/rG4331f19d8b9ac8101d55073834b35814afce4e5a
-Werror
https://lore.kernel.org/lkml/20210907183843.33028-1-ndesaulniers@google.com=
/
Sanitizer vs frame-larger-than=3D
Stable vs compiler version checks
TODO Disable WERROR in CI
LLVM_IAS=3D1 CROSS_COMPILE landed in mainline
5.15 merge window open
Conf cfps
Distributors conf: =20
https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues
CBL meetup 2: https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo/issues
LinuxConfAU extended their deadline: =20
https://linux.conf.au/programme/miniconfs/
LLVM virtual meetup (no BoFs this year, let's do a roundtable?): =20
https://lists.llvm.org/pipermail/llvm-dev/2021-September/152483.html
Kasan s390 ci coverage added to our CI
Nearing Github Actions CI matrix limit
Kees fortify patches (being split into 2 series)
New mailing list and IRC
TODO update mailmap
llvm@lists.linux.dev
#clangbuiltlinux on irc.libera.chat
Sami CFI patches
https://reviews.llvm.org/D108478
https://reviews.llvm.org/D108479
Bill finding shadowing and scev issues (b/198158061) =20
(https://reviews.llvm.org/D104741)
Talk to Miguel if you=E2=80=99re interested in Rust+kernel
(Nick) tailcall optimizations for fortified routines: =20
https://reviews.llvm.org/D107872

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000277d0305cb81862d%40google.com.

--000000000000277cea05cb81862a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Sep 8, 2021<br /></h1><ul><li>Need attribute err=
or warning kernel fixes to be picked up by Miguel</li><ul><li><a href=3D'ht=
tps://github.com/ClangBuiltLinux/linux/issues/1173'><span style=3D'text-dec=
oration: underline'>https://github.com/ClangBuiltLinux/linux/issues/1173</s=
pan></a> </li></ul><li>__mulodi4 llvm fixes in, need to do kernel fixes</li=
><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issues/1438'><=
span style=3D'text-decoration: underline'>https://github.com/ClangBuiltLinu=
x/linux/issues/1438</span></a> </li><li>Todo file bug against gcc for mulod=
i4?</li></ul><li>Switch bit test fixes landed in llvm fixes LTO boot</li><u=
l><li><a href=3D'https://reviews.llvm.org/rG4331f19d8b9ac8101d55073834b3581=
4afce4e5a'><span style=3D'text-decoration: underline'>https://reviews.llvm.=
org/rG4331f19d8b9ac8101d55073834b35814afce4e5a</span></a> </li></ul><li>-We=
rror</li><ul><li><a href=3D'https://lore.kernel.org/lkml/20210907183843.330=
28-1-ndesaulniers@google.com/'><span style=3D'text-decoration: underline'>h=
ttps://lore.kernel.org/lkml/20210907183843.33028-1-ndesaulniers@google.com/=
</span></a> </li><li>Sanitizer vs frame-larger-than=3D</li><li>Stable vs co=
mpiler version checks</li><li>TODO Disable WERROR in CI</li></ul><li>LLVM_I=
AS=3D1 CROSS_COMPILE landed in mainline</li><li>5.15 merge window open </li=
><li>Conf cfps</li><ul><li>Distributors conf: <a href=3D'https://github.com=
/ClangBuiltLinux/llvm-distributors-conf-2021/issues'><span style=3D'text-de=
coration: underline'>https://github.com/ClangBuiltLinux/llvm-distributors-c=
onf-2021/issues</span></a> </li><li>CBL meetup 2: <a href=3D'https://github=
.com/ClangBuiltLinux/CBL-meetup-II-turbo/issues'><span style=3D'text-decora=
tion: underline'>https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo/iss=
ues</span></a> </li><li>LinuxConfAU extended their deadline: <a href=3D'htt=
ps://linux.conf.au/programme/miniconfs/'><span style=3D'text-decoration: un=
derline'>https://linux.conf.au/programme/miniconfs/</span></a> </li><li>LLV=
M virtual meetup (no BoFs this year, let's do a roundtable?): <a href=3D'ht=
tps://lists.llvm.org/pipermail/llvm-dev/2021-September/152483.html'><span s=
tyle=3D'text-decoration: underline'>https://lists.llvm.org/pipermail/llvm-d=
ev/2021-September/152483.html</span></a> </li></ul><li>Kasan s390 ci covera=
ge added to our CI</li><li>Nearing Github Actions CI matrix limit</li><li>K=
ees fortify patches (being split into 2 series)</li><li>New mailing list an=
d IRC</li><ul><li>TODO update mailmap</li><li>llvm@lists.linux.dev</li><li>=
#clangbuiltlinux on <a href=3D'https://libera.chat/guides/connect'><b>irc.l=
ibera.chat</b></a></li></ul><li>Sami CFI patches</li><ul><li><a href=3D'htt=
ps://reviews.llvm.org/D108478'><span style=3D'text-decoration: underline'>h=
ttps://reviews.llvm.org/D108478</span></a></li><li><a href=3D'https://revie=
ws.llvm.org/D108479'>https://reviews.llvm.org/D108479</a></li></ul><li>Bill=
 finding shadowing and scev issues (b/198158061) (<a href=3D'https://review=
s.llvm.org/D104741'><span style=3D'text-decoration: underline'>https://revi=
ews.llvm.org/D104741</span></a>)</li><li>Talk to Miguel if you=E2=80=99re i=
nterested in Rust+kernel</li><li>(Nick) tailcall optimizations for fortifie=
d routines: <a href=3D'https://reviews.llvm.org/D107872'><span style=3D'tex=
t-decoration: underline'>https://reviews.llvm.org/D107872</span></a> </li><=
/ul><br /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000277d0305cb81862d%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000277d0305cb81862d%40google.com</a>.<br />

--000000000000277cea05cb81862a--
