Return-Path: <clang-built-linux+bncBDY3NC743AGBBDGUXTVAKGQETX3BIQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2BA88D2B
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 22:33:17 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id q22sf76360894otl.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 13:33:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565469196; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzr5vTTkZGcDPt3jMOWK6JPye6XRwF0hbhVKXHPSz6F9MhNxSq7si9iKWBbsYju3Cn
         fHQdtUsMcV3Ztr71n5w2lvEeADAjwbAYZdz3eV6DOBgGG5Jpz13FlWvM4ysyguzqxEKr
         Ntd3cyhReiGKRlPDw99gIR8W2V9X2gLVZAdbcOqOzRBfHKeX+pmvHvzmsKow6CyXX3o5
         tQ3aKI65i1R/ctShMhRnL6x/SHFVlDXGSVXt+WTnpw1uNjM1EZrd7nbTuNy7NqLic0SP
         47L7wN+CQMMWlXHhoL0TeBfqGQyW3pvT9ilVc/7oaibNHe29Td8x/opUm10p6uxfrMei
         d2jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=x1pIyS8Hs3y9EUa1//uknyZMfmDqzl2lLlW/7c1Ouac=;
        b=iaVhJEsNkx+dWJuf/RHldKNW06n/nSlEAJRzExv4TrlRgHoa27SnqlEckdxjnhBlVR
         rr3mKdvRRKxdBM2VYw/QBIdp7lew7d52tRADFKByG5e4Mxl4X60cPM4uZ7e8HXXDmBo/
         cSt5uABQxAjBxJaRh1qwZppu7I9aYXFe0hHP/pGaAuzXcRQQyPgyFNuuipIPRXJIszBj
         p/kGc7WFeOc83lPwFgPTodrRZQN37uhqTuGE9ddg5JhCoLbe2K+vI9L3di271dF+6BCE
         pXNyj61cywprk+xpGf0VlrAbDZ0b19Q0BtzrRz+bN8ZhlLTRARU+AZ7/3+RVxttin8Qe
         ES/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.249 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x1pIyS8Hs3y9EUa1//uknyZMfmDqzl2lLlW/7c1Ouac=;
        b=goZPMacCQ3ioL51er52GlpmfpXyegP/QpyKQkaGbQF5z2RW/7dwLwQcxVv4ReJvE1d
         sBF42XS8w59XwxqpUGVAO8Y1EanR8tdqWWnYU8gKO209gAOFT3Evkwli4RS5PxmKQvn5
         +s5yRoP8+PvNyxjRO2tH0ID+NhLGtZ2mZryi82eCo5fbR1zyDDzTm6D8GBar+zo+Cqbt
         t4VAfn4KO8G/dCjfLDoOukV68DvyNFy9cA9HINDgbL9m2vxNXfL6rhYrHPtdjXsWtmuA
         0009hNVRHxVJUNsej+4utkxn31Z0ewicvzkxJetQkB46RKqfd4VhrTFf12auYBxtQZIz
         RXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x1pIyS8Hs3y9EUa1//uknyZMfmDqzl2lLlW/7c1Ouac=;
        b=MMgE80aY78n4wtrzePdplt0eyZbZjRTs1zrGtJOZAOvWgzJdx8N2t1Va++ugKcGBBh
         ncdLqH98DenGeEoM0Nxwb6yhPyQkbc971VBLEYY/P4tHCqC+g1P/UZBDlw//LdmbEiDC
         h2jqK1tu+ELzE2ZPcBkz0d4jbPeXBGJhUMTjNYQ85QFFXtYZ5iGTXakEFRNlkyrhpQNq
         PJcsl4QDDElkYs4YyzzY6e+KFKaM0/0j9odH5iewxMqA3m83Udwf8XO6yfYEu9ltYfAr
         QdtQPALkoiS7y3u4wCXbI3BZlz3uFruoqrZ9rR5u18qzW3MPaW/yDinSM8mI+TtJzBN+
         T4uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjZY7k/VXYv299r1lB5GtOkZI1lUBQgd8piSd2c31erQ+LIpmj
	NX2AFZeWczWur8jkcQ1ioZ4=
X-Google-Smtp-Source: APXvYqwRyKEiQnXiQWW05PhDKhpqcfu6Vai1GndYA73iMTG7lOKmVIkjt4kQuhWV6f6IPeLDCj4Giw==
X-Received: by 2002:a9d:459d:: with SMTP id x29mr9467361ote.39.1565469196476;
        Sat, 10 Aug 2019 13:33:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12ee:: with SMTP id g101ls283065otg.16.gmail; Sat, 10
 Aug 2019 13:33:16 -0700 (PDT)
X-Received: by 2002:a9d:73d0:: with SMTP id m16mr24955261otk.190.1565469196182;
        Sat, 10 Aug 2019 13:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565469196; cv=none;
        d=google.com; s=arc-20160816;
        b=kHbKAaJ2rY4uV6MoQc8tTVThxBvPtIu4NtHknyo1zmtcIslznsrk+NuE9uCXsw7Ro8
         ODgpSLGTLtVQlL51dRYmjJwcD4SUlHSUYeckVMUDDHP6H6zUS0bV4JTO83BUj4ADmSJM
         UdgXKIGWBM/DaLgMgw7hyQMYM3uGCR4sW8bUBSmrnXyznA0I1paGxlcWhra9gcq7MJzn
         6Ci/1BnDKti05FwUkveg9gduox9BRaOneTOZ2wd6/5FaDV9JubP6U2RS2tZv9QKylsdb
         lQl433SynYpziSlpnajHHS9l5UCNCR7Q86ntRrDzsxD5V9DAB7VVkRnXAKc0JJS5FA0f
         WuKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=bWb+vADEgvpV60ztyrQl4wfzPIm7we4n9Bwn5QMNRBc=;
        b=Agm/eOtjDtLBAuaJZREeqYXTn2IQniVY9NntElmzEQ2LIt49FiUQ78t0Kx1SeIERDo
         rlmgCUvE7K5hcGjQYAfzoGdA39jI7KKVWlFa+kDIuzgGo1l9GluNLZVgLDW2qsB9w8u/
         bcmBvf0GL0oJ2e9neUlKOi1qGa7LASCMei342wyaBASx3taw+UuHm4djJ0VwEy+QZhsF
         wKTEkouHtB7EgEU5Ux/PvrwGbgnIKVvAHYucJBswUe6DdqUEGFY2Kuxt78tEhIP8x0RO
         9wTZowkErSszUMWKBC4NvZNjW2aFLMg3dtArQ4TC9nXu1mYnliLfDz6xn6DTa4BNzn52
         zAWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.249 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0249.hostedemail.com. [216.40.44.249])
        by gmr-mx.google.com with ESMTPS id p23si124319ota.2.2019.08.10.13.33.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 13:33:16 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.249 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.249;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 5A0FA1802913B;
	Sat, 10 Aug 2019 20:33:15 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2559:2564:2682:2685:2691:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:7903:9025:10004:10400:10848:11232:11658:11914:12043:12050:12114:12297:12438:12555:12740:12760:12895:12986:13069:13142:13230:13255:13311:13357:13439:14096:14097:14180:14181:14659:14721:14819:21080:21451:21627:21811:30041:30054:30060:30070:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: dust49_1c42199401b48
X-Filterd-Recvd-Size: 3048
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Sat, 10 Aug 2019 20:33:14 +0000 (UTC)
Message-ID: <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Stephen Rothwell
	 <sfr@canb.auug.org.au>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML
	 <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, Linux
	Next Mailing List <linux-next@vger.kernel.org>
Date: Sat, 10 Aug 2019 13:33:12 -0700
In-Reply-To: <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.249 is neither permitted nor denied by best guess
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

On Sat, 2019-08-10 at 13:18 -0700, Joe Perches wrote:
> On Sat, 2019-08-10 at 12:44 -0700, Linus Torvalds wrote:
> > On Sat, Aug 10, 2019 at 12:32 PM Joe Perches <joe@perches.com> wrote:
> > > What does it take for this sort of patch to be applied by you?
> > 
> > The basic rule tends to be: "normal channels".
> []
> > I pulled from Gustavo earlier today to add a few more expected switch
> > fall-through's, I guess I can take this Makefile change directly.
> 
> Thanks. It's simple enough.
> 
> There are classes of patches generated by scripts that have
> no real mechanism to be applied today.
> 
> For instance: global coccinelle scripted changes to use stracpy
> https://lore.kernel.org/lkml/alpine.DEB.2.21.1907251747560.2494@hadrien/
> 
> and trivial scripted changes to MAINTAINERS
> https://lore.kernel.org/lkml/6482e6546dc328ec47b07dba9a78a9573ebb3e56.camel@perches.com/
> 
> that are basically impossible to be applied by anyone but you.
> 
> Otherwise there are hundreds of little micro patches most of
> which would not otherwise be applied.
> 
> There should be some process available to get these treewide
> or difficult to keep up-to-date and apply patches handled.
> 
> I believe these sorts of scripted patches should ideally
> be handled immediately before an RC1 so other trees can be 
> synchronized in the simplest way possible.

Hey Stephen

Question for you about a possible -next process change.

Would it be reasonable to have some mechanism to script
treewide patches to generate and apply after Andrew Morton's
mmotm patches are applied to -next?

This could allow treewide scripted patches to have
compilation and test coverage before possibly being
applied to Linus' tree.

What would be necessary to allow this?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4398924f28a58fca296d101dae11e7accce80656.camel%40perches.com.
