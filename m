Return-Path: <clang-built-linux+bncBDY3NC743AGBBHPAUX6AKGQEYJVUEQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF9D29026A
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 12:04:14 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id k18sf671335ots.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 03:04:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602842653; cv=pass;
        d=google.com; s=arc-20160816;
        b=rA2bIQ6XXhKBDP3pY+Z6oHmDbqgxujmHgT6YAljlCeEtEKGPTvrfSP2SvG2wbY0t/m
         Pa76f4Bd6WMhOIjYSbn6ImPzBX0AB8PeViamyD58CBhMUq2urn5owgMn+3w6fwfBTzfp
         OoG7C6uwf16f0pjVzctdfJTFtotQFGHM0a8JV7lOq/iu9u9zoCElLJaQ88u87fUrNO0U
         w8b8Z2CSdm3hZo768My7TXbw3ujEVpP70wk4dPY7wHH7x9tvgt7Gu0ydTiUYTNV1r5qO
         HLCpwlTQjz+y7+iPJl7p5THlyp4NTCUUf5rq0ZoZpot0sfC+S2qzs2b8MbIuZx/Jmfwv
         pQdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=PNqTbrtD3OvtgKMDwnF79mi+Vib3Orpz+tEYNbT+4gg=;
        b=Hjn/Gp4YNiSX7T2NFUW7VpJYmTvIZkwHMdQJA6DWTa21E8R+QPnjrm4VwLBBkXf+GM
         Wsb80GSAGzWJzzOwcNwL0i6mV2wZPvVFBB0tg9K0Fc8Sr2hl80Qr9iAbwjrhTWB/ofPL
         uZ7I0nfmP+gmwyNDX2zaRJ4qoiSbNqkpy+jvuqsPpPOEEkM86AhPhr/v85GUePzjgzU+
         x27+FS8QuiYMD0EtH5KOGHa89Nx8/OWYE5PJ2aTzonqbMYDZ2Xqsd9wpj2xDu4sVBjvB
         kaMZPX/TMTyTxTWMFCPqCyJrjPojWqQHxIGkp7Wh7sLH14LjiWR525eZ3FJ4AYpBFkLU
         7oCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.146 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PNqTbrtD3OvtgKMDwnF79mi+Vib3Orpz+tEYNbT+4gg=;
        b=ol44nh7eyBfOch/Biw1hZcDwuWSEcqXdbUQhlmfOQBPJ7TOsmq66NRldEH4Gb8jyfD
         V/BtAVWToxmKBUjj/Ou4I5nW+cP1yD9iuVf4K4fM0HdCD1qHaPSWx9pqVfgk/tZ0Y2A5
         ouK0luPbjy9ECmcLLD5ZOJsZG5YsPKsIxzSSypvXMS8hYQvrR1IV7Mlk0eFpJZSwSrNi
         fQwNTtRN1xvma+w2b21In5NLoJxzH2JPhyaYZSXBO70TJ/t72IX2wKuXxVNvztr17Fa9
         7HVlcVKKYwNX/G3IPnOhCWKj1xcrXZMMQvN/CB61RUGaTm9dtLiJhUXQIrgLq6dlYmx0
         FIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNqTbrtD3OvtgKMDwnF79mi+Vib3Orpz+tEYNbT+4gg=;
        b=IcMB/BmpUN1JDJbiqcUxgnE+J4lJeOJqukq175MjpT8ik+Hpm0YJ5q2W3DEkHc7HqU
         fXnxeQh0IfIgquuAu9XnLCrhTX0DSbP2Lrm5Rl0ajHzKWZDyahkUK7ie4OExVcc6osmC
         EPti5JnRv5dN7SnXZ4l5MilBPQh6UN2RpB4B23AEVykf3w3H7pjHBr6T4s7elOriWv+i
         GB4p/Mk0IwtIglzZ0cWy/rzdBTyAwQ8BGRbtQf8zDABxrHWz0X8MkzInkJHCi0crnzvd
         UmAO9bKe7pz0L4KUyXvWXGe29zsJfc1JDdhzay7vF3gIiS9+7f38e9Av5tzmn4ptUCRH
         9K0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dgCjk9QW3Ai0XJUcUjcJlAPhyjcu0zXODyi+Byxy3fqe0Dr76
	GaDr8QY4Y7WhIyV/XKfvOH4=
X-Google-Smtp-Source: ABdhPJx8CZ1jzJL8vb8PjNtmZROTbn1jjmF6ejJhmBvnruWD6mGjwNLrYOIZx9qgPOeY8rRc5BeqbQ==
X-Received: by 2002:aca:6183:: with SMTP id v125mr1899214oib.97.1602842653258;
        Fri, 16 Oct 2020 03:04:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38a:: with SMTP id t132ls491893oif.4.gmail; Fri, 16 Oct
 2020 03:04:12 -0700 (PDT)
X-Received: by 2002:aca:bbc3:: with SMTP id l186mr1956286oif.112.1602842652908;
        Fri, 16 Oct 2020 03:04:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602842652; cv=none;
        d=google.com; s=arc-20160816;
        b=jXr9neK89VKIl13Qr/IDtuEcj0vZdpmBiP2ZDcWJu/4vnO2Gdf31+3Cdcv+BJADwWp
         PubdmDQ1E93GDTb6jd3wNgUupMG4wHeMR+CRE1CVEELGwcsDIPDcMbvyAhzRxFk+iWXe
         2c1cfMlBoR35AfpE6eRXtb3rlJqDQP/bkAHT5m38ZnJEUkUbfgDiVnjfHNYX29WHX5Pg
         UuKc0pnzUsd3rkVOS9fobOWe50gvmQJmiSw07h6HekZerQS3F3Ofs7zOG4of07Hlnv63
         LMpWXux3ynvXu9IFeItF5Ypt44KF4bIMBvFgO9ivOWMzNlMJz8lgSOWYkFEkFBn70P4Z
         A+Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=GI3FCiXaai/6K2NLCBAkbftSubcvzC0xz5YCHI5H1zM=;
        b=txG2BfrpiV6M+BgtX3GIDrhvAIFvjszHI8vori1BMJqE0oE1PWsrrVfg6t90oBqnmA
         oydAMf74DsgBYb31MicYp6M/BKgJz1tS1gKjf2nRL9tJCEvox7m18SPcNovkIawrm/78
         +XYeAE2trulc1JfdrBCWSilsSqZpaItv2q58LKsucRXpXdwDBYqNMnsoaJ90CZwKT2Xs
         SRR7aLHuH8EKpojP58vZKgRneL9n/wlgC520msYWIq/s75rhUz9stgY2DfDAHtjBUb0N
         g7rNEdCVURBgfhnnaIqpz9Fy1voy9LVjPEcIxUeQN516HJZgqNi9te5WSYEL6/FafwGm
         ahUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.146 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0146.hostedemail.com. [216.40.44.146])
        by gmr-mx.google.com with ESMTPS id a7si106593oie.4.2020.10.16.03.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 03:04:12 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.146 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.146;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 16698100E7B45;
	Fri, 16 Oct 2020 10:04:12 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:421:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3872:3873:3874:4321:5007:9010:10004:10400:10450:10455:11232:11658:11914:12114:12295:12296:12297:12346:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:19904:19999:21080:21324:21433:21451:21611:21627:21660:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: food58_2e0663e2721c
X-Filterd-Recvd-Size: 2484
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Fri, 16 Oct 2020 10:04:10 +0000 (UTC)
Message-ID: <0a91e4cd501a92b26dc5143b03753abca814b9d6.camel@perches.com>
Subject: Re: WARNING in __rate_control_send_low
From: Joe Perches <joe@perches.com>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Eric Biggers
 <ebiggers@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 syzkaller <syzkaller@googlegroups.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Fri, 16 Oct 2020 03:04:09 -0700
In-Reply-To: <CACT4Y+bt6Y9k=tJR6Q9Xo3TT8Xp2aD7zp0iBEFWMnmWGrfu2Cw@mail.gmail.com>
References: <00000000000064f6cd05b1a04a2c@google.com>
	 <CAKwvOd=4h5-YFWvUATRx=++oGJ9jfBP+n6B=4iuW_nWU5XfJjg@mail.gmail.com>
	 <CACT4Y+Zv5nM4V0jPr+MXwDCcrq8ZZjKFfpHBJBGOekYVOrtOeQ@mail.gmail.com>
	 <20201015175819.GB3336735@gmail.com>
	 <CAKwvOdm7=WJHaz+Kq9rxsTZ_AJKAMaYQ65KYOpGWQHu7gXHUiQ@mail.gmail.com>
	 <9dd3b8b35a5d03475d9d4f68b54a6265b4c24da8.camel@perches.com>
	 <CACT4Y+bt6Y9k=tJR6Q9Xo3TT8Xp2aD7zp0iBEFWMnmWGrfu2Cw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.146 is neither permitted nor denied by best guess
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

On Fri, 2020-10-16 at 11:56 +0200, Dmitry Vyukov wrote:
> On Thu, Oct 15, 2020 at 10:21 PM Joe Perches <joe@perches.com> wrote:
> > On Thu, 2020-10-15 at 11:02 -0700, Nick Desaulniers wrote:
> > > Joe, would it be possible to distinguish between get_maintainer.pl
> > > matching this on a patch file vs. -f <input>.c?
> > 
> > Lots of things are possible.  I think it unreasonable though
> > so if you want it, it's up to you to implement...
> 
> Interesting. Looking at the current list of K: in MAINTAINERS (below).
> I think some of the entries were added with the same idea. Definitely
> "bpf", and I think we got similar complaints in the past for it.
> I think it may also apply to mentions of some APIs -- e.g. you have a
> widely used API, and you want to be CCed on patches that
> use/add/change the API, but you don't want to be CCed on all bugs in
> the all the files that use any of the API...
> I wonder if K: should be skipped at all for the bug reporting use case
> of get_maintainers.pl? People generally list their files/dirs
> explicitly.

Maybe, get_maintainer has a --nokeywords option to do that skipping.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0a91e4cd501a92b26dc5143b03753abca814b9d6.camel%40perches.com.
