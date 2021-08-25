Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXNVTKEQMGQE6HJVH3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 171953F7CC4
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 21:32:52 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id g6-20020a655946000000b00255ef826275sf42181pgu.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 12:32:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629919965; cv=pass;
        d=google.com; s=arc-20160816;
        b=WSSCddWtWX9iDeSrOpOc+BxY75hnbXICUlSJj/litIcnl37QzJRorIaQqfuyeFodqA
         04zsg+sEYu5M8XGjLzwmqymb1+kkckKC9JkJmmNnZjhUZ9rvn7xffLxs8mckH5Ii43y9
         bFiB7RMcSjZUraL6/TrtqK8eEtX9IWrRT/ps6EXhNehQbdWM1+7DXCcicoj4NNDpAi+q
         05cM36jd9rp1tMrfmfqzq3HKFM5HA8l6ZQM1EIJWcrYTRq0wX085/drjTuKzN50CgBTW
         AJ3GtWd22bYYCdNgrCshS08F/g8RvcHZqNXi06uxgYESo/3hlYqpfBudzMwScYiSaNlL
         jLRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=ny90bG39yv8myXaQG1VIu5VWWFwQ8vpV01lfqdVDOTg=;
        b=0iZhzBtV5y4F410iWlqB32j9fEQBCoPBXA5w0wjF+75UEqifvrwJywYNWWDGd4Aw1S
         ISD5KNPf9Gs3GBLC7/X0u+DaNsVcnzxHsrJzdERnPPX3/Tuz+Aks/m0CbCmJWAiZuhTU
         5LFj8XKHQ3rMr/fcNHlSzBsxaWWpVBNGJKuQcAbEWdP+2cxDzbbYzACqodYPs5xkCEcS
         4fOy21IqNJsur9TNaBqD2EVD66zBDfkZ4OD4Ouz7YadanshQCr5TXbbwR2dXZm1GM++b
         rGer0EiiaixOuJjfDLX9D4wQbd2ye8exVoy9MZk8QgZSbH6Jo/jWzPK09C2GUgvXvnEs
         Myaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iOgJ2CXm;
       spf=pass (google.com: domain of 33jomyqwkalsoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=33JomYQwKALsoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ny90bG39yv8myXaQG1VIu5VWWFwQ8vpV01lfqdVDOTg=;
        b=oydzg74dCwMr0ATINmLonCp0w5y2itk6ZcXuyfT52Lq+9xSQIbkgI8zkHMm8OnK5yL
         glKxmAtdS2GZFf2Sdpk4GbbtozOGGOD1BlOfE+Rp72PpqO/MIJgjd2ASNm4OsZ7YyaeF
         S1ShaFOTOCSfkjonhK6/586hcTF0N0Hr4KZ7BYuwM2nLw+Iyfh94XSFOhpt17BgKBCzF
         zF9gDB+CV/uXXR+fSBbdPsFwiMkhf+U2rQ4ZcOSlLggbvfzE8PljQP7jC1DQYUYglyi9
         5YpJ495K5GNoSLqFwdZxRiCnCb8DGZui4PKyspFhkNuQsrf3lotplPWphzuBDPRxTg+l
         Zxvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ny90bG39yv8myXaQG1VIu5VWWFwQ8vpV01lfqdVDOTg=;
        b=hsFQ0C2qMNsvvzPJPgm1AZ9m1dX5y9w/exPX7z/zGdXnVKxKlsLX7UHkSffjtS55kj
         iGlzRWIGk2UxO9eiY5MhLZkBdVLURr09Br2wh45O1HlPjLXjzhCTyro5UfmYYBjLuJNI
         wyviv7/pSkA91WiRc0xeAtaFvbVBc7kO0IyBJS6YHBnj07jSKB+zsk0j+FODJ9LlN9gB
         seln2aB6HelZnuYxBdpQ/8rC2aZnkaI8v5iesIwKBRfthgSeACapQAC2GISkd5HpNGMo
         Hr7aNDXf4bujXCXCLliGaBcNwA/gOp3SPQRahhubYfXDxg9PA0fbX+fMPJ1MD5E53RP8
         IhdA==
X-Gm-Message-State: AOAM532Ze2APFUGmT298MnSFeQ1rHboHHOuv5+T8eglT5IMs4/Fa1RoD
	WdhCbC0PmMyVZDRBUJPtWm4=
X-Google-Smtp-Source: ABdhPJyrx5SqLAuhDkHuzyJPtM7Qm73kxi6OuZKPXmcKUOqXuzF8jSPFRVmxkxzHxERDoRni4ciTKg==
X-Received: by 2002:a17:902:8694:b0:12d:c7de:591a with SMTP id g20-20020a170902869400b0012dc7de591amr241683plo.20.1629919965701;
        Wed, 25 Aug 2021 12:32:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa03:: with SMTP id be3ls1730460plb.7.gmail; Wed, 25
 Aug 2021 12:32:45 -0700 (PDT)
X-Received: by 2002:a17:90b:e0d:: with SMTP id ge13mr12510385pjb.53.1629919965060;
        Wed, 25 Aug 2021 12:32:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629919965; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVJ0ttDARJCw7qhdT9cxxDsSk/KUu7H9xwIVkgRRs++vhymkL4X6PDp11blztFUIyR
         p2Kkq+nZbP6PBYZNclyZ2KhPp6X/N1whJc+Z4CrggaV+pDjJOYS30TrQfuySoQHp/Ns5
         zRatBQHR91cqhlPFhw/FhTNIgP48o+leE+ouq5yuxrXxEp+4JN+x9xrAUJ2TdUa7Ycgu
         EFKIE6rWrnJ8/UmKL86XQZuRlodamJ7oEpHxaOyI9wQqk4bYhDf6ZATxlpzkNE5nMjx1
         hopXYDal215HvzX6uqKXCei/4WuzDmRQWkL+8jP1IhL3A113V2qNUr2Z//BAkQlqkcbC
         shaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=o5hpugIg4jfsmNpeDZOpk5zbTqyZf5wMOJhG+dskAbw=;
        b=Zu+eNBFkSh7/LoII+FHcc2jip50FhxJSkB3cugqbEpUh/eyIexpmMIQVI9sOSvc4gJ
         mMhV6fcQZS92nnFtgu/5nFu3sByBFlZyv31cy4ZyHwYIxuO4bUk8y4SYht2ms/csVg/E
         KCLgMTQuOf9R/M27b2t+aQHuAcO3lCxmopA+pegxEn8xH3oZCdf+2sbGVvg6Bk/3/mC1
         xwUWxc3eeKstYI1IkLpwX2R3crSme6V7R2zzH1amWvf5d+geVGpgGJOVSNSrlo11mjNc
         igUqsjbF+GpOImRlk5wMOGcU6ecIhylwAZBR8VydDHWYI+ImFHnVbKqLg2q2BSuKcyyA
         VNrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iOgJ2CXm;
       spf=pass (google.com: domain of 33jomyqwkalsoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=33JomYQwKALsoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa45.google.com (mail-vk1-xa45.google.com. [2607:f8b0:4864:20::a45])
        by gmr-mx.google.com with ESMTPS id 136si73636pfz.2.2021.08.25.12.32.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 12:32:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33jomyqwkalsoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com designates 2607:f8b0:4864:20::a45 as permitted sender) client-ip=2607:f8b0:4864:20::a45;
Received: by mail-vk1-xa45.google.com with SMTP id n19-20020a056122069300b00286e14b8871so71461vkq.5
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 12:32:44 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:ab0:764c:: with SMTP id s12mr3798249uaq.27.1629919964078;
 Wed, 25 Aug 2021 12:32:44 -0700 (PDT)
Message-ID: <000000000000790a6a05ca675029@google.com>
Date: Wed, 25 Aug 2021 19:32:44 +0000
Subject: Clang-Built Linux Meeting Notes - Aug 25, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000790a5a05ca675026"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iOgJ2CXm;       spf=pass
 (google.com: domain of 33jomyqwkalsoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::a45 as permitted sender) smtp.mailfrom=33JomYQwKALsoeftbvmojfsthpphmf.dpn@maestro.bounces.google.com;
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

--000000000000790a5a05ca675026
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Aug 25, 2021
------------

Error+warning attributes landed
https://reviews.llvm.org/D106030
30 years of Linux!
https://lwn.net/Articles/867315/
-Wimplicit-fallthrough for 5.15?
https://github.com/ClangBuiltLinux/linux/issues/1429
https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
https://lore.kernel.org/r/20210819040517.GA329693@embeddedor/
ThinLTO regression in LLVM
https://github.com/ClangBuiltLinux/linux/issues/1440
https://reviews.llvm.org/D106056
https://lore.kernel.org/r/5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org/
CFI x86_64 v2 series
https://lore.kernel.org/r/20210823171318.2801096-1-samitolvanen@google.com
Currently limited to clang-14 but compiler side fix should be going in  
clang-13.
-falign-jumps=0 warning
https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/
https://lore.kernel.org/r/20210824232237.2085342-1-nathan@kernel.org/
clang-13 and sanitizer coverage in CI merged
https://github.com/ClangBuiltLinux/continuous-integration2/pull/178
https://github.com/ClangBuiltLinux/continuous-integration2/pull/179
cc-option-yn removal
https://lore.kernel.org/r/20210817002109.2736222-1-ndesaulniers@google.com/
-Wbool-operation enhancement
https://reviews.llvm.org/D108003
PowerPC '-z notext' fix for CONFIG_RELOCATABLE
https://lore.kernel.org/r/20210812204951.1551782-1-morbo@google.com/
Getting help from Intel on certain bugs
https://groups.google.com/g/clang-built-linux/c/fIy6K5Uxr3s/m/vV--Yt78BgAJ
llvm@lists.linux.dev
https://subspace.kernel.org/lists.linux.dev.html
https://subspace.kernel.org/#subscribing
LTO kbuild patches
https://lore.kernel.org/lkml/CAK7LNARoxA875uynQHs-HpcfXtzFvuxkzSha9tquR2uV0Za10A@mail.gmail.com/
Fortify source series for 5.15 then 5.16?
Bill looking into zero call registers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000790a6a05ca675029%40google.com.

--000000000000790a5a05ca675026
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Aug 25, 2021<br /></h1><ul><li>Error+warning att=
ributes landed</li><ul><li><a href=3D'https://reviews.llvm.org/D106030'><sp=
an style=3D'text-decoration: underline'>https://reviews.llvm.org/D106030</s=
pan></a></li></ul><li>30 years of Linux!</li><ul><li><a href=3D'https://lwn=
.net/Articles/867315/'><span style=3D'text-decoration: underline'>https://l=
wn.net/Articles/867315/</span></a></li></ul><li>-Wimplicit-fallthrough for =
5.15?</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issue=
s/1429'><span style=3D'text-decoration: underline'>https://github.com/Clang=
BuiltLinux/linux/issues/1429</span></a></li><li><a href=3D'https://github.c=
om/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8'><span=
 style=3D'text-decoration: underline'>https://github.com/llvm/llvm-project/=
commit/9ed4a94d6451046a51ef393cd62f00710820a7e8</span></a></li><li><a href=
=3D'https://lore.kernel.org/r/20210819040517.GA329693@embeddedor/'><span st=
yle=3D'text-decoration: underline'>https://lore.kernel.org/r/20210819040517=
.GA329693@embeddedor/</span></a></li></ul><li>ThinLTO regression in LLVM</l=
i><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issues/1440'>=
<span style=3D'text-decoration: underline'>https://github.com/ClangBuiltLin=
ux/linux/issues/1440</span></a></li><li><a href=3D'https://reviews.llvm.org=
/D106056'><span style=3D'text-decoration: underline'>https://reviews.llvm.o=
rg/D106056</span></a></li><li><a href=3D'https://lore.kernel.org/r/5913cdf4=
-9c8e-38f8-8914-d3b8a3565d73@kernel.org/'><span style=3D'text-decoration: u=
nderline'>https://lore.kernel.org/r/5913cdf4-9c8e-38f8-8914-d3b8a3565d73@ke=
rnel.org/</span></a></li></ul><li>CFI x86_64 v2 series</li><ul><li><a href=
=3D'https://lore.kernel.org/r/20210823171318.2801096-1-samitolvanen@google.=
com/'><span style=3D'text-decoration: underline'>https://lore.kernel.org/r/=
20210823171318.2801096-1-samitolvanen@google.com</span></a></li><li>Current=
ly limited to clang-14 but compiler side fix should be going in clang-13.</=
li></ul><li>-falign-jumps=3D0 warning</li><ul><li><a href=3D'https://lore.k=
ernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/'><span style=3D'text-decor=
ation: underline'>https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel=
.com/</span></a></li><li><a href=3D'https://lore.kernel.org/r/2021082402264=
0.2170859-1-nathan@kernel.org/'><span style=3D'text-decoration: underline'>=
https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/</span=
></a></li><li><a href=3D'https://lore.kernel.org/r/20210824232237.2085342-1=
-nathan@kernel.org/'><span style=3D'text-decoration: underline'>https://lor=
e.kernel.org/r/20210824232237.2085342-1-nathan@kernel.org/</span></a></li><=
/ul><li>clang-13 and sanitizer coverage in CI merged</li><ul><li><a href=3D=
'https://github.com/ClangBuiltLinux/continuous-integration2/pull/178'><span=
 style=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/co=
ntinuous-integration2/pull/178</span></a></li><li><a href=3D'https://github=
.com/ClangBuiltLinux/continuous-integration2/pull/179'><span style=3D'text-=
decoration: underline'>https://github.com/ClangBuiltLinux/continuous-integr=
ation2/pull/179</span></a></li></ul><li>cc-option-yn removal</li><ul><li><a=
 href=3D'https://lore.kernel.org/r/20210817002109.2736222-1-ndesaulniers@go=
ogle.com/'><span style=3D'text-decoration: underline'>https://lore.kernel.o=
rg/r/20210817002109.2736222-1-ndesaulniers@google.com/</span></a></li></ul>=
<li>-Wbool-operation enhancement</li><ul><li><a href=3D'https://reviews.llv=
m.org/D108003'><span style=3D'text-decoration: underline'>https://reviews.l=
lvm.org/D108003</span></a></li></ul><li>PowerPC '-z notext' fix for CONFIG_=
RELOCATABLE</li><ul><li><a href=3D'https://lore.kernel.org/r/20210812204951=
.1551782-1-morbo@google.com/'><span style=3D'text-decoration: underline'>ht=
tps://lore.kernel.org/r/20210812204951.1551782-1-morbo@google.com/</span></=
a></li></ul><li>Getting help from Intel on certain bugs</li><ul><li><a href=
=3D'https://groups.google.com/g/clang-built-linux/c/fIy6K5Uxr3s/m/vV--Yt78B=
gAJ'><span style=3D'text-decoration: underline'>https://groups.google.com/g=
/clang-built-linux/c/fIy6K5Uxr3s/m/vV--Yt78BgAJ</span></a></li></ul><li>llv=
m@lists.linux.dev</li><ul><li><a href=3D'https://subspace.kernel.org/lists.=
linux.dev.html'><span style=3D'text-decoration: underline'>https://subspace=
.kernel.org/lists.linux.dev.html</span></a></li><li><a href=3D'https://subs=
pace.kernel.org/#subscribing'><span style=3D'text-decoration: underline'>ht=
tps://subspace.kernel.org/#subscribing</span></a></li></ul><li>LTO kbuild p=
atches</li><ul><li><a href=3D'https://lore.kernel.org/lkml/CAK7LNARoxA875uy=
nQHs-HpcfXtzFvuxkzSha9tquR2uV0Za10A@mail.gmail.com/'><span style=3D'text-de=
coration: underline'>https://lore.kernel.org/lkml/CAK7LNARoxA875uynQHs-Hpcf=
XtzFvuxkzSha9tquR2uV0Za10A@mail.gmail.com/</span></a> </li></ul><li>Fortify=
 source series for 5.15 then 5.16?</li><li>Bill looking into zero call regi=
sters</li></ul><br /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000790a6a05ca675029%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000790a6a05ca675029%40google.com</a>.<br />

--000000000000790a5a05ca675026--
