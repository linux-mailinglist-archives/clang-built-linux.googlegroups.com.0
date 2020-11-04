Return-Path: <clang-built-linux+bncBDY3NC743AGBBKPYQ76QKGQETJYZFRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id B21922A5B55
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:56:10 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id d6sf5697248vsh.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:56:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604451369; cv=pass;
        d=google.com; s=arc-20160816;
        b=IkY8jmZgekRdd3ySH5Nro8KTSZkAaohbjVnmBRsHnQnB0apqKEHGXLOLVNZBKuI75Z
         mOKMJQBCfdsMpcyCjb5SlHPwAnOYCYlvRcawZhU/HdUzLmesBc7Gn1YUa538DXkh3osQ
         vy0D3QBk5A2LHMbyqJP28Mj0IJVAAg4qQhLHhLRFM/8KwY1tzTI4hZF49Sity9yomTfo
         NaVOF+yABPyh2NZzoUZw7tgwbh0zBX09xgLxQ9P1XtcAhOaYVFEnPWAdT7pud63r1/5y
         mBXbHB2RzSW1FZFm4GgRgWW0xQPfkDEJvWywKd43kOUxRZJE834zi/a4q5EZPpMwwRhn
         H0/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=9nuMvPb9qnzPhHjwb5+piOpBmi1Ze6/9GJQ4qMfxXuI=;
        b=UD8k3ynovmR+uY3CUlKqwgDkB3lc9xL0MiBMz17978TrNygU7pQ1antHAnVrU/YgNz
         3SBRWKHrfpYuD2P8yLiLiiBT+XRihmBpvoUa1KAOUEePQtbcb+HuPIpRQxMPAM8iFF1a
         vaTi6iGMXB7kxRPMbpA6oi5ck4zvU94mPZJ4OO1VA459oBZyYz/l5dx+7Nl5tWcUCy4F
         HyDgxPspg/CIS9F/Gz0F/V2yRXhUW77e9n+5wWD8+aIe5uFHAivDsxW8p3p0cRZ6rDNv
         KssG41ErIKIs3YmZzON4Qyt1molxg+EEScGVo3r7Y1tV0ZBZk8wHIOgCyLc8zKeDSFLP
         SoIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.235 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9nuMvPb9qnzPhHjwb5+piOpBmi1Ze6/9GJQ4qMfxXuI=;
        b=ihaX7WGzHDXb37VTmNEr1YQORtpR7tubzPJJnP9EYUbVweWDN+IJ3VnVGRLboeDze3
         NUYJBtQDRxGq1WybpUcK5kbXSHOTmvISiP9+yNeZatYdp1Equ5hrN0Mx+FWVyql8vLS9
         /Bg6ktKDlFqkA/9C2E2bJMNoaGPu2HMDD5LhXpdDi88sRA14yfOl6UeFoaG+RRAlFoug
         DaITO2YOcl7nld07ASpiTJE9yV64wpRxW1WjPp2H94OOk5RS5jBmbq5VXQjXsDLz1jKD
         7UjzixKHYAiIn7nLWsR2AhhJbP5zRVGE2pXJbRQBYTD/8kzeVYwuEM8XG3SfEqewbdI5
         sBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9nuMvPb9qnzPhHjwb5+piOpBmi1Ze6/9GJQ4qMfxXuI=;
        b=gPyAXI6lNvR48tqmqEEFgwPoVVLmE7fCnK2yJZmMRoPsjc56OgFGLbF7+fUXJKBxeh
         K3HEcHfPu6tUBx+Uex3qTpX43S4ckwOGbWHeIB/kBm5X/BjwuDFtr9iIkp4Ocu2SzNZa
         u3LfE7kbNjK2UyFtbiyWbwgW5GVLKT3dMO+XcvU0uWv7VA0EDQfylFQD88hqxoycncPe
         Oli0x4cv7rbx7T6SgSp3DNrnquijAoXilUXVYVIJrROiwlxJQyn521Qol2CW34PFLAIY
         u7V7/gBynQx7n0l49MaINw07K1wtIGAE/Ln/JzrldjGnTdinNTnDFd2g2kWNyOsQuIfW
         Y7rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530H73sfORb5EUHaegwL8cUuxIWs17lbs3ppWIp4wspmBi0o74YK
	+M+xaBZXOsuOktAKGSP1RSo=
X-Google-Smtp-Source: ABdhPJwQbtvF9L19H6SULRpFYo02PK68i4v0kvDWaTPv1Nxveu5r3q6lxGtvgIMBN906Riqmtmm+9A==
X-Received: by 2002:a67:b40d:: with SMTP id x13mr14872943vsl.46.1604451369832;
        Tue, 03 Nov 2020 16:56:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:15c7:: with SMTP id 190ls82555vsv.1.gmail; Tue, 03 Nov
 2020 16:56:09 -0800 (PST)
X-Received: by 2002:a67:b646:: with SMTP id e6mr8940223vsm.31.1604451369321;
        Tue, 03 Nov 2020 16:56:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604451369; cv=none;
        d=google.com; s=arc-20160816;
        b=ORRSnAyPHxhUhfWmCbpFfBMn8el4kUkHQtoDVWYla2N9hACIhKIXT4kL6rRWG1sqMv
         IGvq9kUG3M7dphg9hbfpoHL+ySCfJxxA7Fv5tSQu84rnLs8I+sik7a2f651oh5xwJBqw
         J9EScCqVgrtVCMuKggOpWzGZMTHeWNm9yoTQxEpYA9ePw2o7FR2XSSULw1BlEaZ7z365
         2f5c++HVL6G/noVqBaap8gh5X1WbQEZNVAzaLIbboKoXuPkYDmIUECS390mhK0+e7gHa
         d1DDiEQ+R1UE7Kz3GSfvdDwMQXe04RZp/GTgqPcQCOczMl+cmzP36QKGhBSBHIpRgSFR
         cowQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=l7JvguM2vCc3eZ2B1wkeWfGhT47eA+o5LzfDGJCK07A=;
        b=i1K58F4WQL+rPB+O8zyH2ifk8MO2hccCPD0DVwNeL99y4X3zKPBvcQ3d6rPxmIRpGF
         sCjMQBlJ+ziJGmrrR/8voGMifai1/0v/M+otoqK9r1+KAUY28WjEHxxGsedqnIN+qXdL
         gKhPyRDA22OCugv2tTeHGO3s0Bw6k0vkiWdg1sWM1fXfjWGZa46PZ1DyM4JybtEfDiSf
         GB7jdj7yd9ZCiKdFSfs0sHYelAvauS9MrDuzFC8VyjF6pxIiOnihMFFeLTf+UqHj0Z+H
         90oE3XBJ8vxTKhGnadIMWRu0WMlg9eo4QswnsjsQJ5wQu78eB3ALku2gDmkz2c/sw65W
         NCrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.235 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0235.hostedemail.com. [216.40.44.235])
        by gmr-mx.google.com with ESMTPS id n1si32164vsr.2.2020.11.03.16.56.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 16:56:09 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.235 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.235;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 7140518029121;
	Wed,  4 Nov 2020 00:56:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2689:2693:2828:2919:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3874:4321:5007:6120:6691:7875:9108:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14659:14721:21067:21080:21627:21972:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: baby40_1802367272bd
X-Filterd-Recvd-Size: 1681
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Wed,  4 Nov 2020 00:56:07 +0000 (UTC)
Message-ID: <f474396f8f47c303e3a3ac90a582c116e38e50e4.camel@perches.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML
	 <linux-kernel@vger.kernel.org>
Date: Tue, 03 Nov 2020 16:56:06 -0800
In-Reply-To: <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
	 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.235 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2020-11-03 at 22:33 +0100, Miguel Ojeda wrote:
> It is, yeah; however, the concern is that there may be developers
> running an old clang-format from their distro (i.e. not using it for
> compiling the kernel).

I expect that'd be extremely unusual.

> We need to compare the functionality advantage
> vs. the inconvenience of installing a current LLVM. The best would be
> to ask whoever is using it right now, but there is no easy way to do
> that -- many will only notice when the change is actually pushed :-)

Do remember that this patch is for the current kernel and
not any old version that someone might be compiling.

The current kernel _requires_ clang 10.0+ and that would
obviously provide clang-format 10+ as well.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f474396f8f47c303e3a3ac90a582c116e38e50e4.camel%40perches.com.
