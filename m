Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYU6QSCAMGQEKNS2DAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F0436798A
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 07:53:39 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id h2-20020a05622a1702b02901b9123889b0sf7461878qtk.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 22:53:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619070818; cv=pass;
        d=google.com; s=arc-20160816;
        b=NHss5wCSqvqYPHc670n6R8+d9pAH4Cj+yb+daBOd4xa+qN6D6yI1Ha86j+x7acjDvb
         KDCT0znrVkK2kFkxEAhc+LX1PA0kcOoa2rwQZtIK4cusCoCXRwpBmGD6AXECahVp8F/o
         gsmdWb2xdKReu/OvImEg6bLS0FtcgmrhU58nouoDCDAo0bTxvP0TYRYousA35ONa0zk4
         /L0jUuO7EImdSZgz0P+6dZhEoqlpEIky0h3dAj6mxpJEi4BjfdV2Top5nPiWn205QjKI
         U5a4ww3OP9JXgKocwJG3Zsn7mDLmztruLY1+oblJLkZ1GtEHDsF9jA3TxFPBv+hN4W4u
         pFig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=SeTt6JwvHV6Uu3uXO6aY49Zsk7Q8Nk1y4AYgNhfQxMk=;
        b=gaQURTGBjWEWazBvq34100a3RmU/A3oqEjONBPnM54JaIxEcN49GDuMU0Ussw17kWB
         xqNjvpDq+2bEOQBsBCGJ2R9JnurQNAU4qDHcQsAnPVHjv87H8X0Tp428oMlhuyjZg7DE
         ed5gNEoEEQeM5XrGjLE/S6skPLSkWqKUH4dKsYZzwxEPWKRBFaWuoAUI8+KZj8hbddxX
         C6mzB7m7QkWMB99GNyEDtWssuVTHgnkDL0EmCgYACXRtp1NjzAXMdz3WSEJc+TnEGcTi
         WUUAWFneEDOaHRZce4zIL9tMuB7lBFbXjt9zxlrYcoJjq3s4swB4pqT9ku2d/3fXl/Ly
         K0MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nNJ7b+VO;
       spf=pass (google.com: domain of 3yq-byawkai45vwasc350w9ay66y3w.u64@maestro.bounces.google.com designates 2607:f8b0:4864:20::a46 as permitted sender) smtp.mailfrom=3YQ-BYAwKAI45vwAsC350w9Ay66y3w.u64@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SeTt6JwvHV6Uu3uXO6aY49Zsk7Q8Nk1y4AYgNhfQxMk=;
        b=q6ftxScaIyHivS113244wtF+tYoGcvgpI2rlZ9tBofHYJXEmrUU8n9YQ+X5Dq8usf/
         n7oJIr9Pi5sbgrlxY6gA2l+eA3Q1ibCFJcgUqni0VV0oBASQG5xEPcysmZR2MsPfqvHA
         0P3GeyEJGqfiPFUSpwpmswvN9Avs+dbiyGetS/x1ZPfIR1sGCG6eFDoQi3cBQbp2XiHq
         i/kwzNwtt9+k2qI51hg944P0bQnPe361znlgOwkR9E78wqS1PWULsdRqUoKjjSK4VdcN
         vUuERbzKco2eUmshXFuGRJpFpeQhKjbxRVG9juDvtA4Ey2bEVl3jyugfA5fw6egwRoRK
         YDQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SeTt6JwvHV6Uu3uXO6aY49Zsk7Q8Nk1y4AYgNhfQxMk=;
        b=AXc8IbblkoIE6/yuLXt8PC8Z5JZUzuinfv7NJjgxh7hYp61QPa+NJPxDsVsb3hYxIC
         vfoD2Q6V6RWu7+UHimNIVmubF3ZcHSJUxWB5oIuP+wQ4dc9nEqcx6mVScGPYxs5OZOMz
         hj1a1u41lyi/A9YWhl9bXFNiTHpfO/CCsvBA5gJcz6v9FGZ5qIN/VBQOTyerE6qDofNi
         w9m3kSVfcZYeAPSF0neorHD4rKA59n0mCo69s+wu7JfiVz2sP+gnDWB3kzeGmaXUB5iL
         7/iq+wNW9DG7DMQpp0ORQg9apPJZTk8lLK4STOuxEccJH7gxa/ULj6L5rBD835sUSfKP
         SPhw==
X-Gm-Message-State: AOAM532euBa70VMP74ZVib5yP3yt0H5w6v4bFm/YQUpXhDhnR4irhig7
	CMXFZIt9mDjXNwR4kTmEEm4=
X-Google-Smtp-Source: ABdhPJySjDU6KmxzMopC4w9qTX4VBRLptTF/RkBDMvKF6FPR0VIPqEKSJVOr6cM/L7U+qIskkfNb1w==
X-Received: by 2002:a05:620a:4081:: with SMTP id f1mr1900607qko.203.1619070818232;
        Wed, 21 Apr 2021 22:53:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:21ca:: with SMTP id h10ls2568698qka.10.gmail; Wed,
 21 Apr 2021 22:53:37 -0700 (PDT)
X-Received: by 2002:a37:ae02:: with SMTP id x2mr1866923qke.335.1619070817847;
        Wed, 21 Apr 2021 22:53:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619070817; cv=none;
        d=google.com; s=arc-20160816;
        b=opxcdjbmGYFtg5YGh9Cd5cpOT/KZ78a39DGyndiMpj8jgDbYiVSxeywofPAyfPPH5Y
         tJjPPQKa+bm5u1EOKlKzUmg+Vgf7HHqrurAqRuGeOZuDLQiiET7ApLBjF2Ebz8GQ39CN
         r6j8EtRmFCyvUVQ6R40VaiejqTy4+IXS+fY6bEfeCXIBBw6cC95rC0H51513l8GS4U/6
         bRUX4Jx2G7T93+6q10qyeUQ/HNTzaWxhw526DlhO/uu51RZFonl/g/Ia5flvJn2GHPmD
         r8k4xoSTIqVD9eZ3cFIqGjNYNVbc8CfZieXRTpnHb27K+T0J+kvu8fNSl/ixhNjzo8zC
         2PEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=woT9zLNCWgQHQNoVN+BO9p9OPbGMbBVaJ/pLDRDE7l4=;
        b=PpxldSTPXTZkIn21CgydOHCya2nPwaaZqnOx+G4OQDxn5RKZRJrdRMj1hunW24hliC
         sU6EeExdnbzP6O55Z2AFwqdnBw+ZjSego9M2GTLzI6dg5w4gUYW6Jc7NuzEeCbbXMTvg
         4Y2sg36p9JrL2ix++8Zif9H76jeN1gJ0ixoIZre/X+I2v0ohNQx4QNnsQtHGngf95Xdm
         /koPBUVIhTN/yahXfS7Q8cyHanCK7O8N+UXtWnwQfVwiYOb2L9Pwj/wKYaEyjC0bRPu4
         x/hrCL4A8ygonODJ5opSsNHmEUpEMdhn3BcLYOLKg9PA22sj93Q0jHOnDVoCav9qzqBt
         BI8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nNJ7b+VO;
       spf=pass (google.com: domain of 3yq-byawkai45vwasc350w9ay66y3w.u64@maestro.bounces.google.com designates 2607:f8b0:4864:20::a46 as permitted sender) smtp.mailfrom=3YQ-BYAwKAI45vwAsC350w9Ay66y3w.u64@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa46.google.com (mail-vk1-xa46.google.com. [2607:f8b0:4864:20::a46])
        by gmr-mx.google.com with ESMTPS id s65si498235qkc.2.2021.04.21.22.53.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 22:53:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yq-byawkai45vwasc350w9ay66y3w.u64@maestro.bounces.google.com designates 2607:f8b0:4864:20::a46 as permitted sender) client-ip=2607:f8b0:4864:20::a46;
Received: by mail-vk1-xa46.google.com with SMTP id h126-20020a1f53840000b02901d97d79b209so7524735vkb.0
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 22:53:37 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a67:ea4d:: with SMTP id r13mr1189401vso.11.1619070817361;
 Wed, 21 Apr 2021 22:53:37 -0700 (PDT)
Message-ID: <000000000000eff40905c0894ce8@google.com>
Date: Thu, 22 Apr 2021 05:53:37 +0000
Subject: Clang-Built Linux Meeting Notes - April 21, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000eff3ea05c0894ce5"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nNJ7b+VO;       spf=pass
 (google.com: domain of 3yq-byawkai45vwasc350w9ay66y3w.u64@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::a46 as permitted sender) smtp.mailfrom=3YQ-BYAwKAI45vwAsC350w9Ay66y3w.u64@maestro.bounces.google.com;
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

--000000000000eff3ea05c0894ce5
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


April 21, 2021
--------------

Ppc32 boot failures
https://github.com/ClangBuiltLinux/linux/issues/1345#issuecomment-816864777
Debian LLVM patches causing issues
https://github.com/ClangBuiltLinux/linux/issues/1355
Gcov shenanigans
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7af08140979a6e7e12b78c93b8625c8d25b084e2
KCOV issues resolved
CFI feedback
Aarch64 per task stack canaries (Nick): https://reviews.llvm.org/D100919
Alignment issue in blk still not resolved
https://github.com/ClangBuiltLinux/linux/issues/1328
Double CI, oops!
Fortify source
Merge window opening
Bug scrub tomorrow!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000eff40905c0894ce8%40google.com.

--000000000000eff3ea05c0894ce5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>April 21, 2021<br /></h1><ul><li>Ppc32 boot fail=
ures</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issues=
/1345#issuecomment-816864777'><span style=3D'text-decoration: underline'>ht=
tps://github.com/ClangBuiltLinux/linux/issues/1345#issuecomment-816864777</=
span></a> </li></ul><li>Debian LLVM patches causing issues</li><ul><li><a h=
ref=3D'https://github.com/ClangBuiltLinux/linux/issues/1355'><span style=3D=
'text-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issue=
s/1355</span></a> </li></ul><li>Gcov shenanigans</li><ul><li><a href=3D'htt=
ps://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D7af08140979a6e7e12b78c93b8625c8d25b084e2'><span style=3D'text-decoration=
: underline'>https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/commit/?id=3D7af08140979a6e7e12b78c93b8625c8d25b084e2</span></a> </li>=
<li>KCOV issues resolved</li></ul><li>CFI feedback</li><li>Aarch64 per task=
 stack canaries (Nick): <a href=3D'https://reviews.llvm.org/D100919'><span =
style=3D'text-decoration: underline'>https://reviews.llvm.org/D100919</span=
></a> </li><li>Alignment issue in blk still not resolved</li><ul><li><a hre=
f=3D'https://github.com/ClangBuiltLinux/linux/issues/1328'><span style=3D't=
ext-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues/=
1328</span></a> </li></ul><li>Double CI, oops!</li><li>Fortify source</li><=
li>Merge window opening</li><li>Bug scrub tomorrow!</li></ul><br /><hr /><b=
r />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000eff40905c0894ce8%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000eff40905c0894ce8%40google.com</a>.<br />

--000000000000eff3ea05c0894ce5--
