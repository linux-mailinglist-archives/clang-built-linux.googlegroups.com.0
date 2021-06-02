Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHWB36CQMGQE7LZPXPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E63993D9
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 21:48:48 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id a16-20020a63e8500000b029021ab84617c0sf2380678pgk.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 12:48:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622663326; cv=pass;
        d=google.com; s=arc-20160816;
        b=kM5wwk0xGCXx7nEdmKaB5EaW8haAWOwSBOldTfOk6frYmXH8RyUlgJcR87CHKFuCFN
         UZK6uB2MH7sVsQ2nVKTolZOUQBz/soxY1WhNEVXja5Pss9miYZFl5HnmK1sVCEZ63gME
         CDVLHXil5hTaowE4RSgonhi5cTEMo2wwOWgoUrjoBOCgeDVBlqfT/0DHFTszEbLe0XIp
         7Qn4/dqH8HH5rVaax2txzhC43ewQ4xCenAtKQLKiKKg1/5LcXc8ZUnEfoNbbz/4JbAhW
         aVgrAiVCqarQ/ResuCjSiCPwa31DOD35r0znW7OBqG+UJn/8FIrjogaSYS4lIFLfZMdo
         hKDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=3sX3Nanv3O9wFdwLbX8I675SYDaXXj7rmCsFdcVkpdQ=;
        b=buVngVgssHvQDh1G3tlnU43Gg7sAhj+iiWeDwbi05gunm6Vm7bf/0VC9owF8Utms89
         cWKsGS3moFV58FTVaTtS6MwAhMQM80yfjPnrax+vPT9Xt0lHPg3n6YiOQO2Tj4zV4zhW
         xEt7Ah6uKtvNvGKfhWEqauz4DLc9+qcIhJ3v1AEWtY/HibKv/2r054Zcma9zxkq6N1+D
         pCcxEmFqdtLfD0IWxjTRNch7Tk1ySlnYGjX91oEV0CRzQJjCZSAh+qzPj9OT7WB/dRgL
         Vsuyy3150HdYTUdgpP7XRgzKtuln8x26F+TnbvYqNsJpGcDSHjArQhcU7UtC/a+pv23F
         2Ypw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eMWmqsrC;
       spf=pass (google.com: domain of 3nec3yawkaeozpq4m6xzuq34s00sxq.o0y@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3neC3YAwKAEozpq4m6xzuq34s00sxq.o0y@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3sX3Nanv3O9wFdwLbX8I675SYDaXXj7rmCsFdcVkpdQ=;
        b=Z2H8nivbOGGNZ5KC0+mXj3U3Sk3PsuoL0Fs1hm9yTsHuN1lI1j7OoCe0PCPCRhH+tQ
         KtvmqgblTKiCn/AGDUofS86YR5Ulzx5dUzxd2Lxg5yvs0SuDOiOHf5uN9fUnhrhV5pzY
         ALqBPTP8Ltyfa0eIMfTU5PjHZWg55AlgIVyb6xyqNCjtWzp3Tw2TEyYeoDLAwKlHsp1j
         oRWGK9+7QrbGfkjzxHj5YWXVoJoeaT6YpyKfQz/pWd2vUDeXeGc0JTmcS29Hp6X0ZHA2
         NIJLjlDXOlZB1rUwCnsLZRgsykJH05oapYo/YQw4mY8u0qyIPVum+hmdjC5kBMTrmprX
         qzKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3sX3Nanv3O9wFdwLbX8I675SYDaXXj7rmCsFdcVkpdQ=;
        b=nV/dJR2CA5aGwXBzWhNuwZxkzhSmqeBtLvQL9/BMKYIxqu6wEQkgbPbbppxm5w8XDu
         6JEBBrh6vUgengOEizQB76W9mjYK3MmQhkY7Zvq/3eqhVUXHzywrcQSy0nVBJmUdKfWL
         6qC686wd75I8FWw3WFvvpZLg6p2j24ERmJFixGw+Jj9vWfQ5SreO8+xZKxUrCyeCk/Jd
         0Eb4toAZgqirWyCGvzwZPhVgElO4BT4Q+fpZ3b03oKBDRhaUGqvUK08dt3VcvNLkqmoB
         Y0eJJSdW2BgGqb6cP6zV8SUDipESXcKXLHGcyottEoqk62m+EbsGv0jD9GkRPQydNa3E
         /Clw==
X-Gm-Message-State: AOAM533a7nNE2uZKDBnlTFh8yMIera1tNYloq8/gMPU0uoacY9u+JTCW
	Tz+HgR+B0GFiOdsdJuo4NGE=
X-Google-Smtp-Source: ABdhPJxZiciGrrgJYT4gmlpqq09+H9xpYMeVmJUj+WxrleaNt1eeLBZDkmre5vuR1GeYa8mf/OtVCg==
X-Received: by 2002:a17:90b:4ad2:: with SMTP id mh18mr31495590pjb.148.1622663326520;
        Wed, 02 Jun 2021 12:48:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed8d:: with SMTP id e13ls404276plj.2.gmail; Wed, 02
 Jun 2021 12:48:46 -0700 (PDT)
X-Received: by 2002:a17:903:248e:b029:101:fa49:3f96 with SMTP id p14-20020a170903248eb0290101fa493f96mr23454994plw.16.1622663325922;
        Wed, 02 Jun 2021 12:48:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622663325; cv=none;
        d=google.com; s=arc-20160816;
        b=IpJcy+tqS0kcbw19/6zqEtSywa9bhp1xnVh2wLxMTrRsVIpCgQlJF3BqzUDBPtmE5n
         xzSrBhzigumRVBXmu+6YE7YyXjXku9zkb4ow2vm0eTzp6U/uAb+LIUIsi2JXDRYpnyPJ
         FFuEiehu033A4EpeG93JcwQQvoS4pWKb3D8QfujuvFjItoQxCbVaYfkOQUAnfc85JLVL
         K6PEQIxJSmOq9q1ualSuR6QEhi0Oz4si1PP5EfVwrrt7Iy4S4airCDYtt29M+LVH4XyO
         Bc8fnVaozFasxposut0lgU+I7hlGPHA5piV6i79qFTisQsjcOnl8Fv/efQGZld6J6z5R
         DTZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=xGQwC6MyXXMHmWCWEJ0roSWMVXLmDmWf3yYvBpSkEco=;
        b=0boT7/GiWsxICVVIayiDtSbRbd0AEz364rkAaxublxMeAkKdb8xp2Ep/tQfpqWVxRy
         Lmia5dnkCl/SqUrTyJ5w/GNd1EtuxrJ5b5qKIMQSLOwEiPqfiL37cQU3agBAoEcHihe1
         i6JeNLXd09SXtOUK400FTvNtQFamhtBcRzx95i7ygFnRnFffjGn2tWD7f2U+Q2xQNNXz
         w9llo5tnzFmjEm46GYJY6VaOhyPaqGDMyJiDrN+hUW1MnlhYoKusrrzceX0Fb7Wu7WjD
         sPNcrWGUORKxfncKGvDNjNV1rhxe9cPpcRCBCfcCX1tp2ueH4kt22Z+suc0buFMZrKVZ
         FWsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eMWmqsrC;
       spf=pass (google.com: domain of 3nec3yawkaeozpq4m6xzuq34s00sxq.o0y@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3neC3YAwKAEozpq4m6xzuq34s00sxq.o0y@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com. [2607:f8b0:4864:20::d48])
        by gmr-mx.google.com with ESMTPS id r7si63378pjp.0.2021.06.02.12.48.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 12:48:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nec3yawkaeozpq4m6xzuq34s00sxq.o0y@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) client-ip=2607:f8b0:4864:20::d48;
Received: by mail-io1-xd48.google.com with SMTP id p20-20020a6bce140000b029049372849df8so2301891iob.11
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 12:48:45 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a02:3506:: with SMTP id k6mr32190176jaa.39.1622663325169;
 Wed, 02 Jun 2021 12:48:45 -0700 (PDT)
Message-ID: <00000000000016a83b05c3cdbf30@google.com>
Date: Wed, 02 Jun 2021 19:48:45 +0000
Subject: Clang-Built Linux Meeting Notes - June 2, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000016a82e05c3cdbf2d"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eMWmqsrC;       spf=pass
 (google.com: domain of 3nec3yawkaeozpq4m6xzuq34s00sxq.o0y@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3neC3YAwKAEozpq4m6xzuq34s00sxq.o0y@maestro.bounces.google.com;
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

--00000000000016a82e05c3cdbf2d
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


June 2, 2021
------------

Planning second meetup: Friday September 17 2021
Planning LLVM Distributors Conf: Thursday September 16 2021
Series of fixes for PGO being posted
(Nathan) fixes for Hexagon
https://lore.kernel.org/lkml/20210521011239.1332345-1-nathan@kernel.org/
Riscv boot failure
https://github.com/ClangBuiltLinux/linux/issues/1389
Strange PGO failure
https://github.com/ClangBuiltLinux/linux/issues/1388
(Nathan) PPC breakage
https://github.com/ClangBuiltLinux/linux/issues/1386
Upstream regression reverted (worth chasing a reproducer?)
https://github.com/ClangBuiltLinux/linux/issues/1385
CFI boot failure on WSL2
https://github.com/ClangBuiltLinux/linux/issues/1384
(Nick) PGO crash (will ask upstream LLVM to revert)
https://github.com/ClangBuiltLinux/linux/issues/1383
M68k making progress
https://github.com/ClangBuiltLinux/linux/issues/1387
(Nick) still looking into section mismatch warnings
https://github.com/ClangBuiltLinux/linux/issues/1302
commit 4a3893d069b7 ("modpost: don't emit section mismatch warnings for  
compiler optimizations")
(Nick) Reverting android patches for -fuse-ld=lld and -rtlib=compiler-rt
https://github.com/ClangBuiltLinux/linux/issues/479
(Jian) -Wa,-march
(Bill) KASAN KVM crashes, potentially a fix on llvm to backport to 12.0.1  
release
(Tom) June 8 tentative cutoff date for clang 12.0.1
(Gustavo) -Wimplicit-fallthrough down to ~25 patches on -next
https://redshirtjeff.com/listing/linux-recompile-shirt?product=211

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000016a83b05c3cdbf30%40google.com.

--00000000000016a82e05c3cdbf2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>June 2, 2021<br /></h1><ul><li>Planning second m=
eetup: Friday September 17 2021</li><li>Planning LLVM Distributors Conf: Th=
ursday September 16 2021</li><li>Series of fixes for PGO being posted</li><=
li>(Nathan) fixes for Hexagon</li><ul><li><a href=3D'https://lore.kernel.or=
g/lkml/20210521011239.1332345-1-nathan@kernel.org/'><span style=3D'text-dec=
oration: underline'>https://lore.kernel.org/lkml/20210521011239.1332345-1-n=
athan@kernel.org/</span></a> </li></ul><li>Riscv boot failure</li><ul><li><=
a href=3D'https://github.com/ClangBuiltLinux/linux/issues/1389'><span style=
=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/linux/is=
sues/1389</span></a> </li></ul><li>Strange PGO failure</li><ul><li><a href=
=3D'https://github.com/ClangBuiltLinux/linux/issues/1388'><span style=3D'te=
xt-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues/1=
388</span></a> </li></ul><li>(Nathan) PPC breakage</li><ul><li><a href=3D'h=
ttps://github.com/ClangBuiltLinux/linux/issues/1386'><span style=3D'text-de=
coration: underline'>https://github.com/ClangBuiltLinux/linux/issues/1386</=
span></a> </li></ul><li>Upstream regression reverted (worth chasing a repro=
ducer?)</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/iss=
ues/1385'><span style=3D'text-decoration: underline'>https://github.com/Cla=
ngBuiltLinux/linux/issues/1385</span></a> </li></ul><li>CFI boot failure on=
 WSL2</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issue=
s/1384'><span style=3D'text-decoration: underline'>https://github.com/Clang=
BuiltLinux/linux/issues/1384</span></a> </li></ul><li>(Nick) PGO crash (wil=
l ask upstream LLVM to revert)</li><ul><li><a href=3D'https://github.com/Cl=
angBuiltLinux/linux/issues/1383'><span style=3D'text-decoration: underline'=
>https://github.com/ClangBuiltLinux/linux/issues/1383</span></a> </li></ul>=
<li>M68k making progress</li><ul><li><a href=3D'https://github.com/ClangBui=
ltLinux/linux/issues/1387'><span style=3D'text-decoration: underline'>https=
://github.com/ClangBuiltLinux/linux/issues/1387</span></a> </li></ul><li>(N=
ick) still looking into section mismatch warnings</li><ul><li><a href=3D'ht=
tps://github.com/ClangBuiltLinux/linux/issues/1302'><span style=3D'text-dec=
oration: underline'>https://github.com/ClangBuiltLinux/linux/issues/1302</s=
pan></a> </li><li>commit 4a3893d069b7 ("modpost: don't emit section mismatc=
h warnings for compiler optimizations")</li></ul><li>(Nick) Reverting andro=
id patches for -fuse-ld=3Dlld and -rtlib=3Dcompiler-rt</li><ul><li><a href=
=3D'https://github.com/ClangBuiltLinux/linux/issues/479'><span style=3D'tex=
t-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues/47=
9</span></a> </li></ul><li>(Jian) -Wa,-march</li><li>(Bill) KASAN KVM crash=
es, potentially a fix on llvm to backport to 12.0.1 release</li><li>(Tom) J=
une 8 tentative cutoff date for clang 12.0.1</li><li>(Gustavo) -Wimplicit-f=
allthrough down to ~25 patches on -next</li><li><a href=3D'https://redshirt=
jeff.com/listing/linux-recompile-shirt?product=3D211'><span style=3D'text-d=
ecoration: underline'>https://redshirtjeff.com/listing/linux-recompile-shir=
t?product=3D211</span></a> </li></ul><br /><hr /><br />Sent by http://go/se=
ndnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/00000000000016a83b05c3cdbf30%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/00000000000016a83b05c3cdbf30%40google.com</a>.<br />

--00000000000016a82e05c3cdbf2d--
