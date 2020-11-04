Return-Path: <clang-built-linux+bncBDY3NC743AGBBPWWRD6QKGQETLFB27I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9181D2A5D4C
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 05:17:03 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id g9sf8128444ooq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 20:17:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604463422; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZxAqx+ao9gI0NmInMbX2yx1DdwejKJmY0CyBFaReGS4bhH0efd98A2Dx/tg3vNvGi
         D+X4zBpGVqU+o6DfO9+NRbB29EDD88pOv354LQy5MitPkJsl46KnWrUIAZWMsqwd49BS
         nX1ubF6RuzwRSQvEaqVOKHRwNvBzw/BMnVW32Zy8QuRDtGYPl2izJwDfidtUTpg4KkkU
         HgK7NFh5P5BaAQti/mdsWetwrrlChursG3d0kwW5BrexbS2l5wBfCggu1Uy6zbEF2/fW
         9X9cl5itJ2rYhU0IEVVjyiuNmmSDqeXFcux/9A2p0L5SoDRWloRNdXhQUKG+CHO/G3eJ
         XUPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=GZJAhgbnwCtyoreCRoObGCikx8qWwvXKn9s00aO7v4I=;
        b=RQ8SuzsGqgXc9f5YvRiz4Js4ksy+3T/OnJDoyF4Py8PQrObUeHA7WITauWcjimHvIp
         uh6ei3WZzkRocLdu1Z5yjha0qrAPRoFOdPgT3ISmlHCOMpsMVAOqCLp/X/nMvxzNPEqJ
         gra3/p9JizmGPjlJXJ6wl06sTeGpkHjuBkEhDIckz3xvDcMGyU7B/rdAqIYpQ3SATUWm
         szuzT6bMdHL4RqOer8sOVMRKb3M9EoWTn6whVCK33KhHr4VHhEnErmtQPEmNQaN9SteT
         spGF3bEbjNGp98K5rWXsoSTfDQm1M8u+WjkfTvD8A9sntPA4DqciC8qs99LrDd6HvjYu
         ifLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.49 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GZJAhgbnwCtyoreCRoObGCikx8qWwvXKn9s00aO7v4I=;
        b=RcU6BUpH2ryxm+HlBSot7wx/mcLzhG8P36ranraH076E9/SZJViyuuWfl+wzBZBrUc
         GwiPzEKn64nmHHbLYRR7S2WvL7FRPUUAP0zhqo5tmdzOw2n9R7ObJ5LaI9ulABJXiclK
         8PYQqTyk70JGPYBEh8g7tboitQ7lmHZBVaaxHr6JU9VOjSO+5eTfdMhID6N1TcTm9iLQ
         0ME+PJ1ModbwtgurP4Puma18NdU5Qt767QmPIajIkoLYhqUaMzAD+ODOlGdlCD7/quDu
         rBKKqSSW3o9NpqqPigQcVwGySA4Ob6hM8Ia7CQTmZICn7lwU5TahpdFMeWFGpm4cYfd+
         EGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GZJAhgbnwCtyoreCRoObGCikx8qWwvXKn9s00aO7v4I=;
        b=H3nnNIMP1ljLBXCLYX4BtmbJTO78AfPQFqlOjeFFfQCns5T/iDfg1nrU41SbCOuB56
         RREjyFGTgYMbfuWjk7v2F14aGJMHa/tc1SKgG53Ct9RZJ3a8GwpHA65KRe1Gb1q3ApRi
         zFE3uCOeIqz8eLQY+shVVBu8pkQMb3ZP7Ou9SAkNzOCLV9ErKLSbIIPirKt/z8UpUEnB
         a5l6+xZR6YFlm4dDisBBlca/bZRDj+4OhswuvLDtiiFI8oZinQafvlOrnFC7dJhSTnXD
         vevaJxmT/wxtC/946dLIRePrYC9+ilBFRMLf3Cr3IjkVM3HbqhDmWFfxyj+KVxmRB6PD
         5wkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sUsxQjnRgIUB2P9pi1ysyDsjWeXzH7RadAiPNvXa4TKtVVWE5
	DQzSsvSIlanI60z5ioAGRZQ=
X-Google-Smtp-Source: ABdhPJxmrFitep/+hyp7SZi+USc6/pexnCfVL68lrxBwf6RPOKTn/SlkaFWo8ToSNj+ud8JcqAzbHQ==
X-Received: by 2002:a54:4590:: with SMTP id z16mr1544375oib.63.1604463422552;
        Tue, 03 Nov 2020 20:17:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:390b:: with SMTP id g11ls242489oia.1.gmail; Tue, 03 Nov
 2020 20:17:02 -0800 (PST)
X-Received: by 2002:aca:bad4:: with SMTP id k203mr1600903oif.16.1604463422100;
        Tue, 03 Nov 2020 20:17:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604463422; cv=none;
        d=google.com; s=arc-20160816;
        b=i3T4C2IhLS5T8A4UOXsvKwzxqL7gt2OtTBeu4P7PqsWYzqePnmLXB70UbuSE4OOx0n
         Xq0LxO9pz4UklxqQShvLOQVXWw2qmEZQ6UmMGjEBJ4bdN+WcwPaWaFpL8NsCfcaY/jOj
         BNklDhw9BD/nQcQXV0TFaTPsbdMug9ofMQXFqPrrpKO/rLGz+6Xo1PkZ4XkoLgCF1Poo
         S5613xiX6WgWfAyHVzkXEzYAJExG8uuoQ5DWKzmYNDO6HcYOT790Rhbz3iXl3wTsmoiD
         J/tj7uKfBXEe+362hsiZXC1jjuErNAqaKL01x3vvayY72BWJ0j9rU3BfP6VazdawrWsL
         JrUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=WcQsTiGjudp/gh7NcL+x4c04vvvuIg+BAx6Q/kpPn9U=;
        b=Ym0ZNsauPei1Zo7dBLERp6v2BDEah2rD7foiinU+iLAK7kmvUhvxKzQbIAAhl5HCj5
         PWkPMY884Jr6xBjkEYK2VYpFhypqTx7HaB6Cy1rjnN/N2P2RbHMcmtlH26zaa6pbo5HU
         if2QCH5/PwGauB168Rux7c8aTXf8ovnyfpV/Pz7kLnZ9YViaqb4VoygzR4406fFZNfAU
         LAv3+QdyTqpoyGWO/B9lXNcOOYMDhd4Q48mnWvhEKJGoM6g20xjHq829PIXzoGLaOjYg
         8y5bkujeGDhm1Fr9XzMN3v0LGor03LIuqduireHieZu/RBHvVMjYoD+md2SilfCIPRZB
         D3SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.49 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0049.hostedemail.com. [216.40.44.49])
        by gmr-mx.google.com with ESMTPS id o22si93272otk.2.2020.11.03.20.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 20:17:02 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.49 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.49;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 65F6C100E7B42;
	Wed,  4 Nov 2020 04:17:01 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2110:2393:2553:2559:2562:2693:2828:2898:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:6120:8526:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14181:14659:14721:21080:21627:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: screw82_3004fc0272be
X-Filterd-Recvd-Size: 2346
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Wed,  4 Nov 2020 04:17:00 +0000 (UTC)
Message-ID: <1de8953aba13bcd4c9643bae61af2081e33f071f.camel@perches.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML
	 <linux-kernel@vger.kernel.org>
Date: Tue, 03 Nov 2020 20:16:59 -0800
In-Reply-To: <CANiq72k11+VO-igyHRakJEGuSmsDJyQCpYDVeNxZwRt62yCFXQ@mail.gmail.com>
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
	 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
	 <f474396f8f47c303e3a3ac90a582c116e38e50e4.camel@perches.com>
	 <CANiq72nnpdPSngjoOf=imLxZ2g0A7ZXe5nRjF0qf5AG1UCfXyw@mail.gmail.com>
	 <8d02497f4565c3154d3f7bcf2968b56ccd945ab4.camel@perches.com>
	 <CANiq72k11+VO-igyHRakJEGuSmsDJyQCpYDVeNxZwRt62yCFXQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.49 is neither permitted nor denied by best guess
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

On Wed, 2020-11-04 at 04:57 +0100, Miguel Ojeda wrote:
> On Wed, Nov 4, 2020 at 4:15 AM Joe Perches <joe@perches.com> wrote:
> > 
> > No one ever will use clang-format on the current kernel sources
> > without having a recent version of clang and clang-format.
> 
> Why? Many distros come with clang-format pre-packaged, and in fact the
> original patch (that you commented on) argued for the >= 4 requirement
> that way.

The current kernel is v5.10 which requires clang 10.0 or higher.
This patch is for the current kernel.

This patch is not to be applied or backported to old kernels so no
person is going to use this patch on any old or backported kernel.

If a person is going to use clang-format on the current kernel sources
unless they are developing for the current kernel.

They are going to have to be using clang 10.0 or higher and therefore
also will have and be using clang-format 10.0 or higher.

Take it or not, apply it or not.  I don't use clang-format and unless
there are improvements to it, I imagine I'll continue to use emacs
indent-region and a few other reformatting tools instead.

cheers, Joe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1de8953aba13bcd4c9643bae61af2081e33f071f.camel%40perches.com.
