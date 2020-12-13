Return-Path: <clang-built-linux+bncBDY3NC743AGBB5GF3L7AKGQE4TBPSBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CB79C2D9124
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 00:25:41 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id c7sf9866864iob.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 15:25:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607901940; cv=pass;
        d=google.com; s=arc-20160816;
        b=ObiQ/os6ut1VhgaMuJYNRn9UiFD1o+kFXIcZpdSvHVt2FVFYAvU3kET/lhdrcS+hU5
         sNU2Z0nSWdEbijJXWMQuX55LABTmUa2jOWpRbYIbKQUuJk+Hbtl4sibtqkNJpl1kNSKN
         yCIsZiAPXTg6Nh55NJ4oh5SdYB7E32bQxQ8AWsJMcPG6RzGBPCGg9lqk2HOIPg3g35FX
         rLoxCzBeGSMIMI0Rc/5fCsJ1ENxrheO85+NJjTHUt0EWgmNlI1Ygb6gr2kPFasuUBf54
         4ZnSkV9lXRETaGzW+PKGcx9jsEY7af8n7ulWnTxo9l/RibO41v0pVXZ/4UugvwkIoJsC
         II0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=QCu1w6xWh6bh63HaZDxqzCM7dOzaRYy0tLgyPP7pN/8=;
        b=VCGmIi8DOhqqbSU5pEFX7MFIMREwvpZYfC5HzZ0I8Nqe76HNZphWkoL2QEuq/BKT69
         /Ft6RGUxLmzVWZUSsVqWouIWl9IO7tk6zpYbF6OOHb9KjYHibCjnO2+qT9HrkeoWfV5H
         2CILmmG4o3+Fp3Ztcg3hZGRx5KUnG9UBtgZKGZBEM+z1r7Rt5bBMyZQEO039Zn0L+rkA
         6vsoRw2hwJ/epRJDdMm7qzT3wzVwJhrtXbC6nUku0p0Rrx67lmfcjpXNlz5qY3OW033/
         Rek5d0wYB7m6ujMUf8udk9/61mspTg3jC+T8/POI2iWJB126ObTilRbW9MfZbgmCwCSy
         NqBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.29 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QCu1w6xWh6bh63HaZDxqzCM7dOzaRYy0tLgyPP7pN/8=;
        b=iKvR0FChVJqgmXZA9oCyEGSfxHO3PJg6P+RoKBCPXbOvo9IkfLfD2T3YCwz1D2v2UB
         rE2d1G75uMinfeCqvhboy1bwVgSntdL3bnNf9RoxqilAsIxiNbykqOwmYilOQk0tfyN1
         qCvHCy6w9AVNPSWwY4K42ZDnZ53sx7R9xLlkZ2P0AhTywGrC4XAlnpPjlvVekvoRMJip
         Uhjtax7LhYAhfxPIhiIQkK6l78hVEcAMbAWUVtJ5vug1H5xV5bcf2IwiS9FSgeD+dmmV
         OFRTbE5edM9QoazXU+Ith67N7D3YjSPwXA8QIqli/dK/Aap/3BAL6lIL+8x3YSAflfqR
         BYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QCu1w6xWh6bh63HaZDxqzCM7dOzaRYy0tLgyPP7pN/8=;
        b=ifb23deyUa6JiGNJPtM6gK0ahZwIqfNJD0Mic9bvlTciQtNlvV2dsrA3QH8F0k+dyZ
         IDQSHelKgeTnYuLlAVj2ZVEeHNri9ClEa2/BM4HcvtQVw4jC6zLG38vIBoFdzSU6WdS+
         6b6dU0ZfWtYIdoMA5MT6obBSoviC+yUwF51nYdasSRlhg/AhDxnkxRhiyTvhUkj4J4WQ
         0fRPhLJbcjJWxpcBbZyP5M049DjrywKleOnAxy6hN8eLkM7EMMGFRpkcTWpSp0yj2iBw
         bIMDPJ6uiEpsDXB7T9tfMD7d2h79mxIWBFlLDFfbrUMX3/71L7EaYTbkO8/pw1dsyQIE
         Pumw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Jv4bXlsPc5qPbfwSROxdM6btgKCkqoyok2GaLoOwBcfDptLZW
	ppHlzHEUxFC4oDtutrAbPLs=
X-Google-Smtp-Source: ABdhPJwC+N+qoO3bKGsYG+LKfSbnqCBs9GEL56MQUEX9FJCc3qbqMmKrXU8xmo1F34ZH/sV3tcjw4g==
X-Received: by 2002:a6b:3bc3:: with SMTP id i186mr6272735ioa.192.1607901940825;
        Sun, 13 Dec 2020 15:25:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:170c:: with SMTP id u12ls65348ill.9.gmail; Sun, 13
 Dec 2020 15:25:40 -0800 (PST)
X-Received: by 2002:a92:9f59:: with SMTP id u86mr30797538ili.205.1607901940263;
        Sun, 13 Dec 2020 15:25:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607901940; cv=none;
        d=google.com; s=arc-20160816;
        b=Jj9ltj5DmvS8UCsNJTwJbntVpbZmZ5m917Ah+zKeFL1eWB/YU1YzFATzJsXbPHDYnZ
         uyRnJ3+jJaOi8WB7tf4X27+uZooMW399WVpXXNQoSQuiGSrmO6uqgMVN/OVOgHdkwyqM
         HAcF3FpAA3KfVmJE0t3x94HwiG7Im/UZhBuyoBI5Gx0Xaig4aDT9/18E/di+Nfb6bXtq
         4x0rmrN3+M4lIDy2o+sEfsCwlPf/a4JmQkCN2M1A4HsyZkGfiopG53zb0PDVHXKxU9IC
         HVQQSch9qczv7nYmKBQWf5c/qFniKWbjofLGy9S4ZwqOY+s1GiwlQFctjDqKsa0g+LeR
         Sw1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Z0e/Z/fIjIM4QVmFtqwQaaju4tZ+eam5QgjMym8wgj4=;
        b=Vo3pKa7mMcqqsmSQVKv34vDSpwkzszeRUNJ7yp+U3XRXfL6s/iLy3MwkiV4GiRqxtl
         /OrcBbMxXXs0hDald2a9PR1G4sVf3Ap7CUexGK7yfNpzwbGBX4BIuTDi0PpRlFm6DZhp
         MKbCq5NQzIOlT1vkoLSwAOnye0DLwyI/cmLxXTx9bQR7Ut/lmYZHZ+wHvuXF0GtwTtbf
         wilJGjmp+Hhy8TIDPnsiVDTwSHebyQZnjCB27yh4cvu61a6+BpyKexrR07kPji6iZXfa
         AlM0hvtaa4hEUIyI8nUhn89haSPROfIsbrovEeS+GN8NYoOaINSRJrAW1MvwNxoRwlIv
         XtJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.29 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0029.hostedemail.com. [216.40.44.29])
        by gmr-mx.google.com with ESMTPS id j4si1214594ilr.2.2020.12.13.15.25.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Dec 2020 15:25:40 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.29 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.29;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id ABDC1180A7FD3;
	Sun, 13 Dec 2020 23:25:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2553:2565:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4362:5007:6742:9025:10004:10400:10848:11232:11658:11914:12043:12294:12295:12297:12438:12555:12740:12760:12895:13069:13141:13230:13311:13357:13439:14181:14659:14721:21080:21324:21366:21433:21451:21627:21811:21939:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: fear65_5806dcd27416
X-Filterd-Recvd-Size: 2900
Received: from XPS-9350.home (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Sun, 13 Dec 2020 23:25:37 +0000 (UTC)
Message-ID: <cf2a184e2264a2b9fd2c8d7f10d524924d417d57.camel@perches.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
From: Joe Perches <joe@perches.com>
To: Tom Rix <trix@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik
	 <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>, "David S. Miller"
	 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Nathan Chancellor
	 <natechancellor@gmail.com>, netfilter-devel@vger.kernel.org, 
	coreteam@netfilter.org, Network Development <netdev@vger.kernel.org>, LKML
	 <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>
Date: Sun, 13 Dec 2020 15:25:36 -0800
In-Reply-To: <527928d8-4621-f2f3-a38f-80c60529dde8@redhat.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
	 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
	 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
	 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
	 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
	 <527928d8-4621-f2f3-a38f-80c60529dde8@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.29 is neither permitted nor denied by best guess
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

On Sun, 2020-12-13 at 11:21 -0800, Tom Rix wrote:
> On 12/2/20 2:34 PM, Nick Desaulniers wrote:
> > On Tue, Nov 10, 2020 at 2:04 PM Joe Perches <joe@perches.com> wrote:
> > > On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:
> > > 
> > > > Yeah, we could go through and remove %h and %hh to solve this, too, right?
> > > Yup.
> > > 
> > > I think one of the checkpatch improvement mentees is adding
> > > some suggestion and I hope an automated fix mechanism for that.
> > > 
> > > https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/
> > + Tom, who's been looking at leveraging clang-tidy to automate such
> > treewide mechanical changes.
> > ex. https://reviews.llvm.org/D91789
> > 
> > See also commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging
> > use of unnecessary %h[xudi] and %hh[xudi]") for a concise summary of
> > related context.
> 
> I have posted the fixer here
> 
> https://reviews.llvm.org/D93182
> 
> It catches about 200 problems in 100 files, I'll be posting these soon.

Thanks, but see below:
 
> clang-tidy-fix's big difference over checkpatch is using the __printf(x,y) attribute to find the log functions.
> 
> I will be doing a follow-on to add the missing __printf or __scanf's and rerunning the fixer.

scanf should not be tested because the %h use is required there.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cf2a184e2264a2b9fd2c8d7f10d524924d417d57.camel%40perches.com.
