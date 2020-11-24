Return-Path: <clang-built-linux+bncBDY3NC743AGBBKPA6H6QKGQEOY3MG7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DC72C1B6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 03:30:03 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id f19sf472736qtx.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 18:30:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606185002; cv=pass;
        d=google.com; s=arc-20160816;
        b=E4kfgBdGobU2kgQ3KLy8zlIvF7+PCpqjVGR1HSQZnEURvUUIvA3r8tCoBxZDUvVbkO
         LmmG5SdMGHnMXSorxyDmAWUF4ORAN3BXF5bxCUHsxh8IlnQjsTLp0vwiTRduVUSTJv1n
         Njc2fAhITaSSlqVCxeq+U4zj4dVy5ePheaeVoRCGu9cbJlacSd1axRnlDtJDTJuGs/AR
         +bi1nn/sKc6WI+yNrOMDE822p1AS7RgVNXQXp3yEBZ3ViP0Vv3ZiQfPwkIFU/HVceBKD
         ud/ZMQDLP/Vn00L2R/yGsylVd+bSN8FqxqEirlyt1tGwsjenvvEB91/5IjG2+4WidLev
         QsMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=88zKUQ1XBTmZFzOTBijojARfamDoradRJoFWh8jejpA=;
        b=tsUDA0SIbC5Z8tWXJ1/5wkLC5bi14hbnRg3KlfX/3qPyvPq/6cWdMMeG2L3qc1wlAW
         vG0Q0D+YnPaCsZcofI9ZhhCTrRgoFetiKBPLhv+bC8sm0EF5TRodn5Htcwsh+MDxoiAm
         q95RPftHsvI6frQzTo64eXLJH+rQxhnKk5rwLZPMDK/QV2m6DQknv1p7qQoga5lk3RaJ
         2HbekC6PLbXEtdlAi6bybl2gfkUVb2TJsyb7nfaNQk3P8E0iQ56LxTV86u7Qf0Q8F4x2
         44mmSr7VjQYZamEF/KqRml/1mAHb+U7vqCsV8jHRQdz/cIXyrJHJy4LMslSzE/A8Sqtb
         eyFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.42 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=88zKUQ1XBTmZFzOTBijojARfamDoradRJoFWh8jejpA=;
        b=EAVFfl0lDHzc5iRHLQdBvbhBSanwQgSJQrJHT5CGy+J1zirK+T1L8BpOopwbhHo26i
         panNWRI+Ql6rWQL+Wwtk6wrpDqabHtPSd9A/RKNOY4q131zG/WCjZwyCp80ypxGpI9vc
         sLQ2A8LxuA7j2xF1LO9nr4aPwr0SXSA1pXt/FMxamI9mypN6Cpm1uNsdPr2MX2qTtM5C
         pKZQBldERnVZmf2+ZFM0OilH/E1I1xZ66EFRadmFOF9ainnyAReRqJ6Hk2bbO0hxLjwN
         OSjiP3VxPeLDDXzOXllOPUtMI015jRDI2z/0mmcGNPUbUdCeSd+ALajstI07PbqONax8
         IZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=88zKUQ1XBTmZFzOTBijojARfamDoradRJoFWh8jejpA=;
        b=pBJs4Z8hujcpy0/pcDRBf1Tb5fnk1k2RmYbsFZDqMXVaddW+IRZg65JlGYIXxjJCrg
         9s/FzKbAKIFUW2n3EGeYR0gEQdSZ5Y4MR/ek/gsXRo/1gVk+pbYQuZhwt6l9OQz0A5PF
         RSO1+Ifa964XIRctDDK6bCEbWD7jVdzHaRhBGponZ40tufGKSOczlnbnRlXbUEUijqjB
         JjO4wffHlNsWHwKS7h6Yto4q/QzAcEx/ZqQVfPYlNQ+4ZYheda9W6yyMqK3xuMYO9BK4
         cag5K+dGbtbGvTjUL8IIjU8nZWgYkpZp3z6rsZNtdSO+7TREhzFNQicPYY2NNSA4BJoA
         z62g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gsuSLIshCGtVT3Iqe4A9ZB82LXkL3tuUbAt4nbRcv1xbIYVfj
	hnjNPMwUAtfb65EQ5wZnVnQ=
X-Google-Smtp-Source: ABdhPJzFKsAllt6Ze2E3i9mKbZo5CRqUbNauJDRN8vH7Ovy76DwvVJhB2EGeyAqN8t90DPcec6ZS8Q==
X-Received: by 2002:ae9:f204:: with SMTP id m4mr2712175qkg.227.1606185002030;
        Mon, 23 Nov 2020 18:30:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7196:: with SMTP id w22ls5867218qto.6.gmail; Mon, 23 Nov
 2020 18:30:01 -0800 (PST)
X-Received: by 2002:ac8:6608:: with SMTP id c8mr2216711qtp.203.1606185001652;
        Mon, 23 Nov 2020 18:30:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606185001; cv=none;
        d=google.com; s=arc-20160816;
        b=fw/3JWhSvSwD1Xck+FNhG9Zpm5fkfgh5l+Ml7r2QEohgirLbc61C6AiUu8Q9PKHKXH
         3Fur2BhIqIgMySF3bUdd882SmKS+PEW+Da1Nl5avPESscYYZByo7fD2wJHFNqYWhV46s
         GkHe7vMJF+fVEqXuv2pITSTzPwGo5kVEzVKaNXezWw08hJwU/mqua4UGgh4cE081nsqQ
         q900nQlT5PF+0yj8DKe0AElIRf5mrpLqBnKtPQpYrwgouCt2dCeUjyrPN1fLkuBheApJ
         48HY10tGbVgkTqNz55bs0tI1ITEMmvwQEYZqjBiPnO21JJaxqN/tyDgjTWGUG/+64zo1
         cfbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=kZiMfKorU51DqfuMvyR6Z/+e3mMJxm7C5wgOW651BAE=;
        b=dCBX1i6PnzWr/9uIh6IJichO0zDxemUxlbK7JqfnE18B2HdK8kDqm0RTuIXAzsmI9f
         hlhw6DeHpYAePhb31hMPm+juBhL5G4R/gt74FiU/djBPmYvuJ/mMGAbOesayl/DNksq5
         qImwRcdwfEuWaymm2DrrMcMjcblFC6+JvaNPRrwZ+C+GvBFGyuYVnD5YsHdIq1XUD+ly
         r+8zBYn783ogIVz2e6u9FH7HInKWA6y7JTC4zBSxTmwBJCRg3Ni9YK3p3SWhsZ97nE6A
         LBskS3vhnxM0pqeHH8nUiquhuJa78HIfRxEMEL2wC0M1tNObgNX6lLzfYHS/7qYnqKkv
         gpIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.42 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0042.hostedemail.com. [216.40.44.42])
        by gmr-mx.google.com with ESMTPS id k54si143069qtk.4.2020.11.23.18.30.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 18:30:01 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.42 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.42;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id BFE0F181D3026;
	Tue, 24 Nov 2020 02:30:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2561:2564:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:7903:9025:10004:10400:10848:10967:11232:11658:11783:11914:12043:12297:12438:12555:12740:12895:13069:13311:13357:13439:13894:14181:14659:14721:14777:21080:21366:21451:21627:21790:30012:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: brass76_52018ef2736a
X-Filterd-Recvd-Size: 2652
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Tue, 24 Nov 2020 02:29:59 +0000 (UTC)
Message-ID: <2b5803f8d4fd9764c1b6f5b32e7a9716fa64024c.camel@perches.com>
Subject: Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Jakub Kicinski
 <kuba@kernel.org>,  Kees Cook <keescook@chromium.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, LKML
 <linux-kernel@vger.kernel.org>, linux-acpi@vger.kernel.org, James Bottomley
 <James.Bottomley@hansenpartnership.com>, Nathan Chancellor
 <natechancellor@gmail.com>, fthain@telegraphics.com.au, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Mon, 23 Nov 2020 18:29:57 -0800
In-Reply-To: <CAKwvOdkxY4pXN4wbYM_B1cLjr8uX6sQ2iS=m=rRGL_TkJQUFZw@mail.gmail.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
	 <20201123174648.6a22575b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <CAKwvOdkxY4pXN4wbYM_B1cLjr8uX6sQ2iS=m=rRGL_TkJQUFZw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.42 is neither permitted nor denied by best guess
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

On Mon, 2020-11-23 at 18:05 -0800, Nick Desaulniers wrote:
> (minus all of these lists, except LKML, CBL, and ACPI)
>=20
> On Mon, Nov 23, 2020 at 5:46 PM Jakub Kicinski <kuba@kernel.org> wrote:
>=20
> > On Mon, 23 Nov 2020 17:32:51 -0800 Nick Desaulniers wrote:
> > > On Sun, Nov 22, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wro=
te:
> > > > On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > > > > If none of the 140 patches here fix a real bug, and there is no
> > change
> > > > > to machine code then it sounds to me like a W=3D2 kind of a warni=
ng.
> > > >=20
> > > > FWIW, this series has found at least one bug so far:
> > > >=20
> > https://lore.kernel.org/lkml/CAFCwf11izHF=3Dg1mGry1fE5kvFFFrxzhPSM6qKAO=
8gxSp=3DKr_CQ@mail.gmail.com/
> >=20
> > >=20
> > > So looks like the bulk of these are:
> > > switch (x) {
> > > =C2=A0=C2=A0case 0:
> > > =C2=A0=C2=A0=C2=A0=C2=A0++x;
> > > =C2=A0=C2=A0default:
> > > =C2=A0=C2=A0=C2=A0=C2=A0break;
> > > }
> > >=20
> > > I have a patch that fixes those up for clang:
> > > https://reviews.llvm.org/D91895

Pity.  It's a good warning.  gcc not warning is a mistake in my view.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2b5803f8d4fd9764c1b6f5b32e7a9716fa64024c.camel%40perches.=
com.
