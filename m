Return-Path: <clang-built-linux+bncBDY3NC743AGBBUEKT7ZQKGQEMPX3LJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FBE1803F2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 17:50:26 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id w197sf21785503ywd.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 09:50:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583859025; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sa1HhtyFBV6aiep4KcRWc/OWOC7FIuzKUkPG+O39mXvLrCbQnzwn0jqMhItjegfwz1
         DxyIHMJwthNaC9I1gnO/ZSs4t8/9kyAR67wDiXK93pWlWNdX4b2yBZ+rsp/HrTR/7bNL
         XiZJWi3q7qftmkR6rsAGV3orieQMO35mn5x+icuE5nlcYc5xFVQaJnh827CpXazdwosW
         ajHU62Rraq1HOeKRHbnJh9GYEc5bzxhEWf5T6LrIa/SYZV4iOiTGaBtdsKArMcvQSred
         wcgl9qNXxf7TLesc5W0LRmAc7tW9P1qfESvND+SbR2/03p0c1mAfrPOiNQCtOT8J+C3r
         8QcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=ej3/CGJdCERs+5e+z6Sk50TuW30qqJkS7RiBFwm/BME=;
        b=hedi+UfjFqVXIiXlOMWAFVgIDtLgzGg1KMSy84StMprWo0775UdvOjpT9v8tGURTNO
         6UHl8E43rQ1MrRtzRhrZrPWgQo4/lpw6q9EqS87BX2sqOPqm3Dx0M4ojlbIwke/bwxHr
         aOnNPW6rVxlzjdxOX0vQrQzI6S4o6czgnVV8Y9VA19uLkDWPoHjw0H+ApoigoMzTqynF
         boxLr4L9QEEtS3vnlNG8JuCjylQywJXw6T1pSh/tFLtrhGJXt5V3TbQclhY4kTTLzMod
         fTvS7OMpenqCCiT9yR/Z8ICigdHx01ejhxHxypeoTf+qS23gXbwVUw2WIcRK2BU/TD+3
         6ghg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ej3/CGJdCERs+5e+z6Sk50TuW30qqJkS7RiBFwm/BME=;
        b=E7tKcvZlqhdBCJcW4ABp7X49B8zRUOpvJX+F1n9nWX56ImHaG2h8DQRfWvP/FjWU+r
         40qvo2RUgMZ8knR9YLIf+shv1uCdPpMIYGAzFE6ocF44Uuo6+KhWQPcpA8Gw+s9LSc2m
         p7IkReEVLUqMJrWCHJA67gU9m65nc+uzTM/xIBg74565nOd2W00feo5OERQQQWxZLC6t
         2+Bb182sk/P5DeasXHS/vOgDu9ulgmzvqOhspQx/7eQBgr6N7wo8pkH9RE0dyfszIZkI
         hL094TwJaTY63b2l0XNkI8b9x1S9sUdetTGitkGV5hatw6nS0LNe8sCDzqN1gFSIuVd5
         /ASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ej3/CGJdCERs+5e+z6Sk50TuW30qqJkS7RiBFwm/BME=;
        b=OnJoZxoZF1eOhkLi+Qdmi4K7YDRVvvPzVSCVnibz/Gq9fyQHE7EeBCHu0qClfNFpKR
         djSn9MBOH+eTGhhtuz16x5TzQ44EViHQ8GC4q+/pGVJzKnVk8saR+eajauA7Af9geDU7
         ZPuDl858cejulwsA/oxyIAudve/RHamM8skv6hpuNCdevNlFuIUi0dx3Oc4UUgFkWCNi
         EswixlXI8qmTQZz5L1LNGm5OcOOMX1B81zlUNDbI7hC3ZrBy0cxYhNxk1h+DBbk0HgRk
         7UbxU42sMOdUtjHAGjF3kxZjAS3Gr4wrXNrF/97MILl5DvJcZzPT0jxTM11PJoJFoTxm
         KoFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0UDEkm4+bgyUfECWL1JbiwJD1EUM4CVr/Rwp91L3cmtXH/EFgx
	xouAcUhZKnW3Ah3ViNFwDPc=
X-Google-Smtp-Source: ADFU+vuXB/B160rCAA6jmzcAkVoS/xi57bdVlMjB/6axsTgi5XAz6IB98fHA/On5WwX//E2XTrVKhA==
X-Received: by 2002:a25:c612:: with SMTP id k18mr22819468ybf.96.1583859024330;
        Tue, 10 Mar 2020 09:50:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:883:: with SMTP id e3ls1601126ybq.11.gmail; Tue, 10 Mar
 2020 09:50:23 -0700 (PDT)
X-Received: by 2002:a25:f205:: with SMTP id i5mr23712746ybe.501.1583859023938;
        Tue, 10 Mar 2020 09:50:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583859023; cv=none;
        d=google.com; s=arc-20160816;
        b=WCd3oBk9sg5P2hqbj/T2CEyJ75o8bAPd4o296An5zpd/ZE9DchZ6IcQE3am7Utxv3S
         Uwyhzyv85ULEjIZ2zdotc+evHWSt2b6widTfPfab9NA1/JqW0PsTYg/cwonssBh6ERio
         pE93tcfucrCFizhQ/275ot1Q95YYru/3N8ktg3EkF3w2APeEBK1NJGHIrV1RN5AqsENd
         7IT96uYtr0aR1kfAcuTNGWcf2dXV7AkRP0wpmYKPSpOL3sjMb9rt9azobSUMKQrFfuP5
         4RFQSoooR0hzaVahhuX/5WbZp4lmWFyY4ccEiU3P8xJy/3xGdYRKZWWAbIbsZdXpge+o
         lGAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=dQbi36kiIYFdBQxb9XgSrLrhseoQud9pv0EcmE/G4g0=;
        b=elDr3KH/HDhQnnIHE+arrQZRgw99zi27+52SdC/drjTCKNmDfAHtrYQbJoly1KXXAp
         bJb+XhOQOxh0DhiNzwTgvVpdvH+0qd4vwvmZzx48D/nAQ2lDsxYerk2P7SJVrpR5HKbI
         +qd3y/s3uKXiHZjYnFvZvKjjbkp5bEfnC2nMGQaCW6kfMIm0MmJ/Zj6FnN0G5ERIh0Hv
         3RWtyUwtBaMYnxLDQadVAU2MCTcLZvPiIgae4Y9QuEjxJrOQPN7oezW/wJYriR/SqUkO
         499d1DfDDNcDcbVkkZSUCHhWyiPakCvDrY89uBvmZYQfy21owZM8qJI+DRG6mLyw89+h
         UGuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0035.hostedemail.com. [216.40.44.35])
        by gmr-mx.google.com with ESMTPS id x13si1148663ybs.4.2020.03.10.09.50.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 09:50:23 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.35;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 53E711802DEEB;
	Tue, 10 Mar 2020 16:50:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:5007:7576:8660:10004:10400:11232:11658:11914:12050:12114:12296:12297:12740:12760:12895:13069:13148:13230:13311:13357:13439:14181:14659:14721:21080:21433:21451:21627:21990:30012:30054:30060:30083:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: list44_3299c48c4159
X-Filterd-Recvd-Size: 2580
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA;
	Tue, 10 Mar 2020 16:50:21 +0000 (UTC)
Message-ID: <0fdd3a89033ce3d6e7ab6b12eddefc343ac43729.camel@perches.com>
Subject: Re: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
From: Joe Perches <joe@perches.com>
To: Masahiro Yamada <masahiroy@kernel.org>, David Laight
	 <David.Laight@aculab.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Michal Marek
	 <michal.lkml@markovi.net>, Linux Kbuild mailing list
	 <linux-kbuild@vger.kernel.org>, Linux Kernel Mailing List
	 <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>
Date: Tue, 10 Mar 2020 09:48:40 -0700
In-Reply-To: <CAK7LNARMsO0AeO8-kH4czMuW0Y_=dN+ZhtXNdRE7CWGvU2PNvA@mail.gmail.com>
References: <20200308073400.23398-1-natechancellor@gmail.com>
	 <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
	 <20200310012545.GA16822@ubuntu-m2-xlarge-x86>
	 <c2a687d065c1463d8eea9947687b3b05@AcuMS.aculab.com>
	 <CAK7LNARMsO0AeO8-kH4czMuW0Y_=dN+ZhtXNdRE7CWGvU2PNvA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.35 is neither permitted nor denied by best guess
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

On Wed, 2020-03-11 at 00:30 +0900, Masahiro Yamada wrote:
> On Tue, Mar 10, 2020 at 8:31 PM David Laight <David.Laight@aculab.com> wrote:
> > From: Nathan Chancellor
> > > Sent: 10 March 2020 01:26
> > ...
> > > Sure, I can send v2 to do that but I think that sending 97 patches just
> > > casting the small values (usually less than twenty) to unsigned long
> > > then to the enum is rather frivolous. I audited at least ten to fifteen
> > > of these call sites when creating the clang patch and they are all
> > > basically false positives.
> > 
> > Such casts just make the code hard to read.
> > If misused casts can hide horrid bugs.
> > IMHO sprinkling the code with casts just to remove
> > compiler warnings will bite back one day.
> > 
> 
> I agree that too much casts make the code hard to read,
> but irrespective of this patch, there is no difference
> in the fact that we need a cast to convert
> (const void *) to a non-pointer value.
> 
> The difference is whether we use
> (uintptr_t) or (enum foo).

or hide it altogether in a macro like cast_to

#define cast_to(type, val)	\
	etc...

where cast_to could do the appropriate
intermediate cast if type is an enum
and sizeof(tupeof val) is larger than int


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0fdd3a89033ce3d6e7ab6b12eddefc343ac43729.camel%40perches.com.
