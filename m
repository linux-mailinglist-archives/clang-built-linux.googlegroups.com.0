Return-Path: <clang-built-linux+bncBDY3NC743AGBB75E4L6AKGQEYORBTNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5466929CB4F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 22:34:57 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id m64sf1674153pfm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 14:34:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603834496; cv=pass;
        d=google.com; s=arc-20160816;
        b=qjgcllQD89DDba+FaGgUjSMV+j0Qs8jRBTUmabtPuiJjheNmQ0p+OKEH/ZszWHCj7P
         SK+u6DOxisy3lMmmFsbDQb6JrBTVU59T631aon/A/o9AjF8ZwGpzO2fkvBmPGL5BZbgB
         C/r7J3lchEkghuD7KHVPb2+YxchHZFS7A5gHprdw0kTh88UJkKYjxvZNfCDC3cwsirER
         lI9DLAnFBktxOx2xbymZjQRwvWbGjGRm7uBQmgqJi8aZQgSZmPzYnDqkx5vfXnCybuCz
         VrSeMrjDaPrXAYKCyLCaBhqYPP3PGdm70ufFSh3rtkZTmOjNF89W/1k6svTTp8077nxo
         CyxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=BUynkHTr6P0SOQT/gRYcCIGw+tjxbLMH7pjtTOaQPUk=;
        b=GOk2nBHIqS2C5yxJsL3/k2Az5rOIRMB963iJdKmDk+iZCKN4s3+Y6qPHtF0XF6xhlh
         VQqxRvSoyMm7s1JFJmDwLhOkPmMfylc9fNtJ7Jn/g2XcoIJ8fu63qAs0E9gZanV0NHqh
         V+LEuL1hqAY/bgtMCsY3GjS0Ee3VOTfNO1fiPbs/GxlpSDXsmqRd5eL8T1l+GetI8wrn
         ZqUkBq7oBs5+Es72Th1blNK7FDTroCKeUkZj0CChZYW71v7NXRI3Oe9Zq6M7oQmzZDlF
         PIv11Wlkdk5c8gXBd8FOZtwCnFGe7Nw3IlyfelGVgPGcgFbS7EUDROuXty6fpcl/g0Xs
         3Vyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.244 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BUynkHTr6P0SOQT/gRYcCIGw+tjxbLMH7pjtTOaQPUk=;
        b=I68RbozHzGu/gwhs1UBDs5jpJanCvLfHU8UB+RWV+AIa2zCNn3vOgAfXK7ixvsoyLv
         1GRnyj3XfgUeuOAP87tbHxuNhuTW+86OwciPokYphtcI/vApcbiWL1t1MtTlIjvXWXeZ
         WZhY0jEE2ir5GKOw5IE0btbT+KomlO5hlQS1nyexpJOJNDRzF0vbyOUtqhMyP7Hh0QNR
         IWmQLSXkE/AV5/CCk07DNEfDDRj9AosiDKKBZXlFqzsMo54Bh/mWinW7F6rANvM4bOf+
         Za1SWB5PtM6mC+nuTQbipTL9ug8jN4gxTe0+laFK8FWk/KZa5o8Zt1AzHhCARSKokwhT
         MgKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BUynkHTr6P0SOQT/gRYcCIGw+tjxbLMH7pjtTOaQPUk=;
        b=fjM3fS0UgVsT3inm8q5H/QiE+IqljvcIutNAvZ1rp7J1ehae3mEtHcKULvQ4ax0dvP
         9z6gLlZWov3E8ljTW9PCQPYgShHcb13Vf3YwZoPVg+QMRh2LiRYkcqyxNuKQOQbVbqR8
         zXF0SdfMzbuyLrnLTSVbx0RIi5L+Cw0r9q5eNjZ1znUBH45piea8ZkK0yFXUU9scfqWc
         xbfXlqhnjuxLhg+B1NSUqJZT/JRFfCtYlSdMCZEfOlNVYpWQzfAk8SmYLjIuAKVVKVkm
         p/HLEg/yZ3XJBuXiJzJalcTLs3aKbscqifqgFUxz2t7YHhWaglckLtT6WdNS6m/1DXc+
         tGDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MZIVZsObHHRNJfPIK5gkzLWwI0uLZLG1nKKsEY2VISVOHaBST
	Gf3v8LG5mHrNkIhaV0sU24c=
X-Google-Smtp-Source: ABdhPJzHfCZlExQyyylc5DYE7/AC0spOkjquJz29pJN6IX2MtD+YiNSrHTrxGZJ3BX+/TlCNkwhqtg==
X-Received: by 2002:a17:90a:ae12:: with SMTP id t18mr3882356pjq.147.1603834495968;
        Tue, 27 Oct 2020 14:34:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls1301539plb.1.gmail; Tue, 27
 Oct 2020 14:34:55 -0700 (PDT)
X-Received: by 2002:a17:90b:3587:: with SMTP id mm7mr3967685pjb.234.1603834495340;
        Tue, 27 Oct 2020 14:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603834495; cv=none;
        d=google.com; s=arc-20160816;
        b=q6tAvA4R9NG5zaNUikbXrTY+DK+K8xroo51qMpdUYyBU1EGH7uQPD5qlof3ze/1uDe
         S+wV+TK96yWMZ9Q6q+q4cGjCI1kvrkqdGb8kVnS78XQf+B0ZP51urfN6F1p3OGzKjgxf
         4jJWcSERFqFm5ZgPpNO5hVjBKsSbqOUKF0Exwb3/ShXbsKmnyFJffXpaZjQHzTmQyizA
         9o7347pNU8+kg220MZdGWeECDiwQ8QuSiU5twCazK6TS/Os3pCEaMjt9gGlyLR39N/SI
         jMocLNzBMX4xamw/+t8iv49wIbslqLbcR9rEtwk8sj5hhhnYpSWNMH4sXbtf+qnfYGzH
         ueFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=k4H/CWZl4skPh+vP9MNuxB+NKSvwVVjL0EetnIF/WME=;
        b=Qu3APqkLIQfYko12w6OzVjbAhI0gsL3qawNgTggNTuiltPVZ6g3Nrv+Iw3ds9pDUAK
         ednwTBj2gu36ZWIS3WkErJDiLKQvmUYtYx1P499/KGXj40tE2zHxgXiz2SaBo8eLEBGk
         9mCQJB8xOFBhvW6g9ISpNzOqZe5BCT6HRbcFN4sBSuzP7Iv0s0Nd2XZjOTGt89Ppbbim
         X/piN08Km+YzKwqK+vgRi6omEADScJka11iIihmrwgINgdjrrHwT7rvM0zjPkwsMxPAZ
         41R/BYcrtGbD4rdVETNrhjvgCdw4XmORWkz0ivpVXAyhV/HQonVEYKZ2pYSJUe1hFpKL
         /eVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.244 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0244.hostedemail.com. [216.40.44.244])
        by gmr-mx.google.com with ESMTPS id cl2si155779pjb.0.2020.10.27.14.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 14:34:55 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.244 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.244;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 25582100E7B44;
	Tue, 27 Oct 2020 21:34:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3872:4321:5007:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13141:13230:13311:13357:13439:14659:21080:21433:21627:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: bite12_160bff42727f
X-Filterd-Recvd-Size: 1984
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Tue, 27 Oct 2020 21:34:52 +0000 (UTC)
Message-ID: <df5ec26c2d219d204eaac445571bc92de3f18e21.camel@perches.com>
Subject: Re: Subject: [RFC] clang tooling cleanups
From: Joe Perches <joe@perches.com>
To: Tom Rix <trix@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Cc: LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
 Julia.Lawall@lip6.fr, Linus Torvalds <torvalds@linux-foundation.org>, 
 Masahiro Yamada <masahiroy@kernel.org>, Nathan Huckleberry
 <nhuck15@gmail.com>
Date: Tue, 27 Oct 2020 14:34:51 -0700
In-Reply-To: <cfad533d-1a9e-cf01-cefe-47c23de27a33@redhat.com>
References: <20201027164255.1573301-1-trix@redhat.com>
	 <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
	 <8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa@redhat.com>
	 <a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel@perches.com>
	 <cfad533d-1a9e-cf01-cefe-47c23de27a33@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.244 is neither permitted nor denied by best guess
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

On Tue, 2020-10-27 at 14:09 -0700, Tom Rix wrote:
> On 10/27/20 12:51 PM, Joe Perches wrote:
[]
> > I hope a scripted patches mechanism will be established.
> 
> I would be interested in this as well.
> I already have a repo tracking next.
> I can code up a script to do the commits.
> Then we can poke at it with sticks and see if hooking it into next is worthwhile.

I presume it will be worthwhile.

I hope the robot will run compilation and integration tests against
this -next plus additional scripted patches repo.

I also hope the time required before integration it into -next itself
is short as running the robot for all arches seems relatively expensive.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/df5ec26c2d219d204eaac445571bc92de3f18e21.camel%40perches.com.
