Return-Path: <clang-built-linux+bncBDY3NC743AGBBZ44VT6QKGQEYA67YWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E192AE270
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:04:25 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id o1sf2133459qtp.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:04:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605045864; cv=pass;
        d=google.com; s=arc-20160816;
        b=o5dg8AEw/sKJAdsZQO39XBtRljtRgcN0IiSXvQW5zUC7LmUIYFCSLV/sgzXlwcI2Tl
         h1hGpg28NP76KMc8/OlgCHEn0hmm5O2P/d+5xGjZRwigIFawFFK2dUlFyirsrEwsewuk
         rmSFPX2OGzHutNYHbf8BlkVhk1iTVsMziywZMAOTBFXs8yArr7iDi6dsgnbTKiykFe3X
         Xvsin4X2FteXxKJ8o9JMD9tsGyWjRUo/L5WXprJ3EdvthuKj7f6OiHtRuLF6GVbvZhzk
         yO+5yeA6d7GpYuSwmD/MuFmAhFriqehRLO18LctR1AMTt/B+GWmQSTHywilwXV8XoDg3
         L3VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=3hSC5NgSQyiNZlcewGUpfJQoByxCCVy8uCfKu74yM3k=;
        b=tKQr7ttw1m/A/MpFWzJRiPmCw8J/bIJDDtLio+LRY6hTNsoR4AG4/WQuxGE7V4wfTz
         hTMQZostkP4ZmIR5J5zpNYhp29nwCLGLaqaF9p4EMECqjFRptYgTvieKzHqsoXxyQfwY
         p4I4z5PRGpYokNBwkJdu4uB/vBJSeomhfhdPqpT/wtUQbVDRsb9je9yQlAEe8NTSIb4H
         MS8aDjab7h1C7FdGkHh/iFrg57IfAmiPcZlkC6A06N5hMiuM74VrL0MFMKeKskL1xeQ2
         AoehF7hgwRnbqN3qMr9eD9s8AJjTJivsw8jvd3FrRVFEmzFyV1xGKoB1wZPO5rIsr3oF
         9P1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.157 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3hSC5NgSQyiNZlcewGUpfJQoByxCCVy8uCfKu74yM3k=;
        b=WZvSK390Vq8ndkL9qlzJVbWDhc6rf+QyP/WD0XyljC3U1MXDvGI558xB8NXgB6lyUl
         mwlmELTiJut6H+dPoa5AvTZTgmT0YPdLBmsl86Aj9Y4aC0wHoc8cdPg/DllfPLketO9E
         YcmdBBQ73HTHs/qAmLDCt/s6wDGDtINrldtn1p06ygPC3II4BmN8us+fqIBvIFU4RjcK
         On38zsdICTu59h3WHFZWh04d0auD4vKCI4hT2MvljeWma6JvcXOAvXZFdYcoQ5XfYNvZ
         GA1w1/+f/4yWOH8nC1JxHDI96crLfUxohCUW+u1WXPn0ttN8Euyb/38fgTcNudfaVnxc
         mdeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3hSC5NgSQyiNZlcewGUpfJQoByxCCVy8uCfKu74yM3k=;
        b=KU25wkVFbeKAfob5QSWPVG6CWLUabXJzWph6b4NuEO4C7BhLIZc9o263v0S63dsc+U
         /tasURCSmTyynq4ZqZoXgPO4jXX9W9Q5tC1a11Fc5JV9J6Ngn2OWAm0USeWJriFAfydU
         0ssyUrlWBlauaC4YAHGy/MsSZTOYAOYNPgtMFdgnPp8UoqzqxBV6EmQzaMH+wGmj7tFT
         TBts9m0Y43wmkPUkmG1NH6l42vi1Jyny/TjNSBnKi2VTMoLCiJVcnoxXcr1qvUSEIO5+
         eVf7OLzafXn/8sAneHl7ulzS8NJEM1zthCoAHo9FNlZOC4fKKL3N3YLZd58MPOcbQzFT
         z9sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rvLLTxMiafr43OAvAhrhmopiLRZ66tPTutCBEOblPRF7jRA4a
	8vP7HN8KTty0kYOrr2IpS5k=
X-Google-Smtp-Source: ABdhPJy3oEtrDdXSX116rOJUGJBzoj6uyHOUCE5DigIp1H6OSMHX5iwlF7Cd5D6BdEfMGNcTG2UHFw==
X-Received: by 2002:ac8:2ab4:: with SMTP id b49mr20201828qta.20.1605045864093;
        Tue, 10 Nov 2020 14:04:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4085:: with SMTP id f5ls6650820qko.7.gmail; Tue, 10
 Nov 2020 14:04:23 -0800 (PST)
X-Received: by 2002:a37:4a93:: with SMTP id x141mr22555019qka.378.1605045863641;
        Tue, 10 Nov 2020 14:04:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605045863; cv=none;
        d=google.com; s=arc-20160816;
        b=VZy1gl6x5bXf95N9Y9UUa0h6G4AjQpETidcYYmLwgRNjiQoDvKH6YpAsq+BS9kffqh
         zaPv71Oo1YU3Cfgwo8iPwmzBzj9uY6jRsw5SsIjsxe992vlCL+NdYDn/85hiCFtSo9GY
         h1ExVdb+GLhONVOHQiZr2h2n19R8BmE+jbr3rir6lMG/+0ksTzBXCUBuYYM5dUBoYSf6
         btSjY2Uo1Boecvrq5hvNnHbw38jKd0stN+xFQVd72jr4q6c91n2YsM+866PCHbhxrjMs
         HO4uc2HZ8JF2RYgSk3ImrcjYZ//G8Z4JxKCtB6vRabJJz0QRj+kfgZFEAa85skhT04hI
         BnIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=DbFttaod7JZdfo78lfm++KaCbbETJM25h0ht8/D5T3c=;
        b=RXWno7rFvu8vGJTcBSr3GyU9zMJNbpJuNAdMJ5Ra/lEWTswTUZSHIH1DhcKIuywr15
         9HEDkVSLt0l+jn57kaipVoseZuXMhJbm7VWnUrZNBdb/yuYaIoH/OIZsHm8QcW9qzvmJ
         5zHraSJaRo/UuFp2mLaP7DniwHdZhuLZ27WcDDo+29HRp2me6MXHrscPdGmWbvA5Qj5p
         HiQjeip6ZVuV6PzAO9LOZBvv55BfLaWHfzlIguMkQPg6tgpX72rQBZijQhu8WTAc6snE
         EhhyCSRQEgZrClRrjELcIwJa377XyCzBistm4jh2bXhKU5AmVTjOlmusfVWwhz09xUto
         YRew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.157 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0157.hostedemail.com. [216.40.44.157])
        by gmr-mx.google.com with ESMTPS id g19si13874qtm.2.2020.11.10.14.04.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 14:04:23 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.157 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.157;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id C40A5182251A2;
	Tue, 10 Nov 2020 22:04:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:968:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1561:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3871:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6742:7652:8985:9025:10004:10400:11232:11658:11914:12043:12297:12438:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:21811:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: bait31_310502f272f8
X-Filterd-Recvd-Size: 1717
Received: from [192.168.0.160] (cpe-72-134-80-165.natsow.res.rr.com [72.134.80.165])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Tue, 10 Nov 2020 22:04:20 +0000 (UTC)
Message-ID: <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik
	 <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>, "David S. Miller"
	 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Nathan Chancellor
	 <natechancellor@gmail.com>, netfilter-devel@vger.kernel.org, 
	coreteam@netfilter.org, Network Development <netdev@vger.kernel.org>, LKML
	 <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 14:04:19 -0800
In-Reply-To: <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
	 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
	 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.157 is neither permitted nor denied by best guess
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

On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:

> Yeah, we could go through and remove %h and %hh to solve this, too, right?

Yup.

I think one of the checkpatch improvement mentees is adding
some suggestion and I hope an automated fix mechanism for that.

https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel%40perches.com.
