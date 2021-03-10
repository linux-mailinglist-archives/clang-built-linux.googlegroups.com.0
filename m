Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPHFUSBAMGQE2DHMX2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEB0334936
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 21:57:34 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id l19sf9557001plc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 12:57:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615409852; cv=pass;
        d=google.com; s=arc-20160816;
        b=hwuZe9VSRYq7D6Eq2sL3XUsfpvJM7xUkmaY1BMWOdVE0dhL7eLQZj0U8uZ+WdxR1cm
         sywaRKv2DQRrtKxjAwZZihCJThQGD+iPx4dPfed8E9NCZSh5245k3l0neKHMQxyhvSiM
         kEwSFUw86yHDBLSU3EMtZUYe9sVhCuRk2JJc/5DuDMKcTpet0XcuY8HZjZX/wy4LlSuW
         sRiRhuPi6Eya9tRNE5w28is6EtRQWMA2ZDQY2P9s/2zBV9+YieZ/PH9iU3eu2DX72dSO
         xwvZCSYqBeDqXs8CnRdv5nwTTCJmWZntNvKYFSFOLPLW/pGwum7+FvjC1Kak6gyT/c3D
         8ZWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=sEHqlYHRscn42LSGEWkndhvo5GgvzUmGRfulq262rEM=;
        b=HaHmmW6KYCQCd4AfXXrpzpgKWSblDekTzeBxP5/ZGS11SB5GaDgY2scK62nTKfS3tm
         h6NQzPt1jWEEp0jNx8FVt1IGVmCR/rII5LO9t3O49mMD/BZ3gQpGsaCwrSRULj5Xg9sQ
         h6WZT5hoih2BlQ0cojYu6GSO9tCdEh38nQRXUWIEgXLK7ZJYFSYP/nrweAFdENGp7s/M
         tvnF9KN2tZ03JTYc6ShrQiw6sG4rIaCtfqEpwoCCrQyMH/LWtWLmZJAMMVcQ290nqDJK
         INk4BZkU3BzaDUXhigQjtd13A53fPqLEWmi7ey0OobmL4TV+V3Y+8zBm/N5zy/oZFmgz
         sAGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RH26mNBy;
       spf=pass (google.com: domain of 3ujjjyawkae02st7p902xt67v33v0t.r31@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3ujJJYAwKAE02st7p902xt67v33v0t.r31@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sEHqlYHRscn42LSGEWkndhvo5GgvzUmGRfulq262rEM=;
        b=HQlo+EaU/V/VhROLGH4wD+Ifgb/9emMa/AfvrrqMJOIuSPqOUJcrLCToHWHYhaseY1
         JTwiIIeOOKqeDdKCwCPCXFojFSlsAcxiD3+zJgFFSpuHWHsCwJqiobKIZo1vqkAEImZB
         fvU3/HoFUCsw2raMbfhhTQk/GhD7sy5xwXvRsYvniiAp6mRK5BGN3HRyY+Xii1iAf0iY
         WOMmCGwX1DKiRpVeGDFQlkiApUcpS8K+LVjVGCgMSjpURCs765DUMthw7PpsRrxSmG3X
         08o/quBWK1SuOUjCdMdc7ZrPqOrQq+BljtmBgHyiQf0kOJXz6yhUSZpe9MaIvFXuvlZQ
         y7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sEHqlYHRscn42LSGEWkndhvo5GgvzUmGRfulq262rEM=;
        b=G7oTdQJ/G+W8JjJKIf8VoT0mOsewh1707csoYkq94hfgBj/iaQOITQbPCWVd16HoK5
         VgjQYEzNiJZptvuShgMBBR578vU94dHBJVo29OjAyNBomIKTGMT0EiA1iXd+8Crq3IqO
         +OSG3sTW5yjMT4HsHV47Wi/18T10tXCKav/acDV61OCRUXAGTBuxwRXSoGATDQ0HJaIn
         ccUVyg/pU6nh50ac5Hp4tiuWQC9hKNAXf3L+rnJRWebinf2/pkjl2bKc0lxSgZYg7MTg
         ysUk1b1IER3lQPCKEH2tP5texM49/vg4VZ13uAVib5aT++iMbagG9ku48yvGXQnylXYC
         h0vA==
X-Gm-Message-State: AOAM533/iezuL2xcKiXm8aQE0sIUJPoBxLJDlBsn5gs+Osk4aesgdv38
	bFFXdpmMRcogfeSRwziCJC8=
X-Google-Smtp-Source: ABdhPJwgnK1Y9cnlK4NOcw1WHCw6O/hN+L/7lQjpYBdWy9hE6VBhZNrd3w8cRns5MG+F8/XX5J33VA==
X-Received: by 2002:a17:90a:7344:: with SMTP id j4mr5129360pjs.223.1615409852208;
        Wed, 10 Mar 2021 12:57:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bd8b:: with SMTP id z11ls2090154pjr.1.gmail; Wed, 10
 Mar 2021 12:57:31 -0800 (PST)
X-Received: by 2002:a17:90a:9309:: with SMTP id p9mr4272853pjo.174.1615409851715;
        Wed, 10 Mar 2021 12:57:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615409851; cv=none;
        d=google.com; s=arc-20160816;
        b=VYjHG1iYbSXj1YnKNgV3aGwW20XtnuISYxR+DcgshwN/aLXBQ6rw8dkeM+Vf0+4ZKY
         oyEgafLsqhKNh23wDpBsg5cfVFIY8sgg0WoViHvoAnnLLWXjrEtsoUETSEeUdpO5C2jP
         +W8vd4P1877LiFT8Be1kXCNw4qWHRRHERDFpH42jtGpDM+tC6Aj8Dp6pAyLjA0YUX3ZR
         Ri4PlKdkDwryxnavu1hdUmS6EM+a/YDrOaY3ErA8m0E7Pirs/6fl8o+GbQDTTYDuWCzc
         0o3a7ptBT3YvvTChsfERYUF1KP9vodSbHOF4HDKbdo5RMrPxREyW5nSCV34clQY8AuG4
         Anaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=a04jb4ZjhL/RcdOe1szSUEMBa1BMye8+PbARc6rUM8s=;
        b=c2QDLWQCQ/9ae3DEnmaXgExQz+pCnLjeP5fPBj3+ruR+0EDx1G3NJ5/eLuIcorkJrc
         pzUP2moRPD7RoF5Wt/tlWHmHjB440ow4yCRsovNc6sr9bEJqgh9AYgzjXWfBzrMYdZUk
         ONkozgr5Z/t3p+4cy46vnfamKFJWlEKIWMDW7+ITHD8r+35Fa0IiHK3Oy7tzGmO5Ulhu
         lZhl0eCzrnU8S5MkgqZvh0kNeQxlIZhTvaHiquII5UtSFvdhRKlZRCnv1M66/qWKytYw
         jiKou7XiLBdNs+qi0PV5KzzZ3Ou1RrvO6H8JHYawj2E4N4BmZKKenYf+AnUnKnbn+Ang
         QeOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RH26mNBy;
       spf=pass (google.com: domain of 3ujjjyawkae02st7p902xt67v33v0t.r31@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3ujJJYAwKAE02st7p902xt67v33v0t.r31@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd48.google.com (mail-io1-xd48.google.com. [2607:f8b0:4864:20::d48])
        by gmr-mx.google.com with ESMTPS id e8si22866pgl.0.2021.03.10.12.57.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:57:31 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ujjjyawkae02st7p902xt67v33v0t.r31@maestro.bounces.google.com designates 2607:f8b0:4864:20::d48 as permitted sender) client-ip=2607:f8b0:4864:20::d48;
Received: by mail-io1-xd48.google.com with SMTP id m3so13812052ioy.0
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 12:57:31 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:d2c6:: with SMTP id w6mr4091315ilg.273.1615409850993;
 Wed, 10 Mar 2021 12:57:30 -0800 (PST)
Message-ID: <000000000000563c0405bd34ea22@google.com>
Date: Wed, 10 Mar 2021 20:57:31 +0000
Subject: Clang-Built Linux Meeting Notes - March 10, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000563bf805bd34ea1f"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RH26mNBy;       spf=pass
 (google.com: domain of 3ujjjyawkae02st7p902xt67v33v0t.r31@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::d48 as permitted sender) smtp.mailfrom=3ujJJYAwKAE02st7p902xt67v33v0t.r31@maestro.bounces.google.com;
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

--000000000000563bf805bd34ea1f
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


March 10, 2021
--------------

Integrated as
(Nick) working on enabling for arm in Android.
Will do another pass for THUMB2.
32b ARM boot failures CrOS .text.unlikely.
https://bugs.chromium.org/p/chromium/issues/detail?id=1184483
LTO crashes
Try disabling CONFIG_SYSCTL_SYSCALL
Next is red? (unrelated)
Ipsccp
https://reviews.llvm.org/D97971
kernelci
Spin down clang-11 builds?
SGTM
Compile times with sanitizers
https://bugs.llvm.org/show_bug.cgi?id=38809#c16
https://github.com/ClangBuiltLinux/linux/issues/1314
Arnd ran some stats:  
https://docs.google.com/spreadsheets/d/1EoKc3ploXakwVHx_Pz8D5-1fMU2xiJHLiySvaeJpBgk/edit#gid=0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000563c0405bd34ea22%40google.com.

--000000000000563bf805bd34ea1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>March 10, 2021<br /></h1><ul><li>Integrated as</=
li><ul><li>(Nick) working on enabling for arm in Android.</li><li>Will do a=
nother pass for THUMB2.</li></ul><li>32b ARM boot failures CrOS .text.unlik=
ely.</li><ul><li><a href=3D'https://bugs.chromium.org/p/chromium/issues/det=
ail?id=3D1184483'><span style=3D'text-decoration: underline'>https://bugs.c=
hromium.org/p/chromium/issues/detail?id=3D1184483</span></a> </li></ul><li>=
LTO crashes</li><ul><li>Try disabling CONFIG_SYSCTL_SYSCALL </li></ul><li>N=
ext is red? (unrelated)</li><li>Ipsccp</li><ul><li><a href=3D'https://revie=
ws.llvm.org/D97971'><span style=3D'text-decoration: underline'>https://revi=
ews.llvm.org/D97971</span></a> </li></ul><li>kernelci </li><ul><li>Spin dow=
n clang-11 builds?</li><ul><li>SGTM</li></ul></ul><li>Compile times with sa=
nitizers</li><ul><li><a href=3D'https://bugs.llvm.org/show_bug.cgi?id=3D388=
09#c16'><span style=3D'text-decoration: underline'>https://bugs.llvm.org/sh=
ow_bug.cgi?id=3D38809#c16</span></a></li><li><a href=3D'https://github.com/=
ClangBuiltLinux/linux/issues/1314'><span style=3D'text-decoration: underlin=
e'>https://github.com/ClangBuiltLinux/linux/issues/1314</span></a> </li><li=
>Arnd ran some stats: <a href=3D'https://docs.google.com/spreadsheets/d/1Eo=
Kc3ploXakwVHx_Pz8D5-1fMU2xiJHLiySvaeJpBgk/edit#gid=3D0'><span style=3D'text=
-decoration: underline'>https://docs.google.com/spreadsheets/d/1EoKc3ploXak=
wVHx_Pz8D5-1fMU2xiJHLiySvaeJpBgk/edit#gid=3D0</span></a> </li></ul></ul><br=
 /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000563c0405bd34ea22%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000563c0405bd34ea22%40google.com</a>.<br />

--000000000000563bf805bd34ea1f--
