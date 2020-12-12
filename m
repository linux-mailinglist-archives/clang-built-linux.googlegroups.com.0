Return-Path: <clang-built-linux+bncBDY3NC743AGBBSMN2H7AKGQEBZOXRDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id E25652D8478
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 05:27:54 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id l37sf2262624ota.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:27:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607747273; cv=pass;
        d=google.com; s=arc-20160816;
        b=kh9f9CZaeKTmQPFq+KhTQs4mOv8Eh55fvCeuwrF0Mu8A3z30gSWq+QerQJNXaI78fL
         NNiapEEo59m6AKhWsOKoTV9u2nLr1ZOOtVkdHzG7tzOWRLJt4VnujiqmRjF8JjavuuZf
         01ktQzRdnE6U0ovpQySHKHxULXh7+J/xPtpj9R9gu+gxckIoeQg2aUdZy4du7eGhhe/U
         /ubHIp+Q4dYXocnkasfoI4zka+zFe7wc907tN7HyqE9jN0NPaJ5skpxc24efJsrHNT5o
         GV/9tL9AbmxaU6t5pc210ELFbmxwu0HVOz8nMX4NX8US8cB03wbEf2y2713Jv+6qEkzu
         aWFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=RA8W8eqivpZ/tJ+hPIvDuB4z/8RPMmaNejZ7eIc/nuQ=;
        b=SD3lYQAebQ5hATTqUUCfC/4C+PhdGh8BZ2+MSbkVYGlEozCW61i2v0He0JU5Ee+X+c
         9z1TVPL7qttK6T8ggTLFAB3EuFdnSgmE9tYuLpj4myMsJJIYOVu+P+u6qeG4pwSak8gh
         Lb5r457i8W/zZQ5DaO2QLJU1o7A2edvNOGzURP9M/Y9TDEc+og2k2heoPC2hiCumg4u2
         7zEVJykLBt5ReC9XaiQjfJbee0E6Aik7LH9vDeTo95dC3rFaelP+BtHUSlbvRIqMFCr5
         ObUxUazowgS2CiTLh0aAAkRBKFuVHUyFi8523Z2YVriP3bH26PLy+hGl3X6BbV0UKAdX
         hgLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RA8W8eqivpZ/tJ+hPIvDuB4z/8RPMmaNejZ7eIc/nuQ=;
        b=HvPbJWeHYaJ0OXcBFcy9pby098OZiFQ5z+GkcrCn0paiOwMLKKJ4lG6+L5ylIFPdhR
         XX2HpQPP/7GdGUXkaeQj5buz6QKCWVqRRKBg+2XcVyTqNlRp5E5vwrw5Y2tLRoulVigC
         uGEhg+bhBgskgVf21KeHSlXehfeuJbQlOFYbAVTvaFsDVt4sZ3zoj33E9z5S31RrzqTy
         J1B29jkNxxe41SMvLTAJXk9XfX1ZN2B59zC9esaEQASQST8SQTzGIF8eO/rjrqdHyuXe
         1uTmq148/DeMMkS4Ha1cmNoI6e4hXTbo48EK5RafK5xn/PgL+qDgqueU5faAVfxaSkWt
         xj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RA8W8eqivpZ/tJ+hPIvDuB4z/8RPMmaNejZ7eIc/nuQ=;
        b=CGqlcBQdEDgbF9ye8UrKnbatuQzUh6TrXSh/AGn4t5EwPQT47wPJwa8VlD0cEI6N3B
         gt1s+Vh0bTBIJoYdlWPonahQ9LyJO+0jiKEtf0HhKTxSiC7Qk63e3NvP21vVOf93D3pR
         Si7r7S+OIB5LUgQbqrnE+4112is8VjaP1SQ52+78n0TdRV8QoCBwNGOR5dpeBxl6A4L8
         /sxQkFgJJ8zWU7ompUfa6gzgvhoTtdwT9J2hsWIHcMuxeYRlAyL2Sq11hxjubK4ybs1Z
         es6ryBPDo0snKBCdlwCijWRpKvdm//oSau1byyvYnzglMM03lU4xVedi7C/3je2rS22e
         1JhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CjZ17Tuutf8avAOLz0XYOeRnSDMZDrSFn8X0Vzv4Jl9Kbmxt/
	42b9tnUBsFRb+zCnaUBZ9yw=
X-Google-Smtp-Source: ABdhPJwyB8cNoB+rXxYm/pSfVgeQYLeIUh2lpJIhzlbWUF3LVaW03+kr9RQlVmSJ+5qO/DlCF3w39g==
X-Received: by 2002:a4a:8ed2:: with SMTP id c18mr12653451ool.33.1607747273772;
        Fri, 11 Dec 2020 20:27:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:140e:: with SMTP id v14ls2995636otp.4.gmail; Fri,
 11 Dec 2020 20:27:53 -0800 (PST)
X-Received: by 2002:a05:6830:1d71:: with SMTP id l17mr12492237oti.269.1607747273309;
        Fri, 11 Dec 2020 20:27:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607747273; cv=none;
        d=google.com; s=arc-20160816;
        b=ZM+d9B8kfKuKuuijHHP7115QggdZ3ZrstKIkPhFrBsx00+HbfInlhB++frmQpNVl5j
         WegGr1hxd0ZGsSiTCsVznSvptKI/1C3T2iDm6nn17T0RfE8Be033T12r2t16/KTX87cI
         dWbuwH4IAQg2YzSPOfGk+0DMOvk+aG7yrMiXFzvklWikO87eJiL5loet4dYTvkYzqeha
         ZwNYn8kXdZAnDAA31v1LsRGmV62q+G9H4F+Gu4G3KgOp3eWkxLFWWg+9TpMF+rzivj1U
         D3/llvASNXsFvZLCRVvnizdYOOUTl+g8sbFdt+v9mHFWnxyaZrXTSGLSxmVj4iolWAhV
         NdUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=eUH2tlW1YyN10KC13MAkdnJ1/T9VIX6MbeUeCQLcNRE=;
        b=mDFoSjwRUfiiksU/cdq6t7SwZYrBH4/8APDJAEayX3FTvNVtxmy0gp56G9ftY8SW0S
         WGID5oSWavdC7vicqrL4Mu1E92FHI0Zp/yVFIVg9kujhxCa4nTWRxaVwo3ELqiROOFQp
         jlGFgP6lrUDwqrtYO7DWl+2E6bKqa6zZ4S1cXG9DHGT4HFYYqxyu3ojeaMe6o9Gr9cB7
         1gY7PiMg08AN7x6CqBuuAq1SlW/1xlfBQl8lsqoLBttsqSHO6oerSkd5ci1li21rm5cq
         HNah1vU88Rs6i1/cy/NF9+pkZ35zyl0iCQXDoaGbkrLmXW+pho5cfbQSvUQi42qp8daB
         GTGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0185.hostedemail.com. [216.40.44.185])
        by gmr-mx.google.com with ESMTPS id f20si820600oig.2.2020.12.11.20.27.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 20:27:53 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.185;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 92A341802DA2D;
	Sat, 12 Dec 2020 04:27:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:4321:5007:6119:7903:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12438:12740:12760:12895:13069:13141:13230:13311:13357:13439:13972:14096:14097:14181:14659:14721:21080:21451:21627:30012:30054:30060:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: shoe55_600a68027406
X-Filterd-Recvd-Size: 2115
Received: from XPS-9350.home (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sat, 12 Dec 2020 04:27:50 +0000 (UTC)
Message-ID: <4257c266dd5edf3ad6617657331abcabfd59188f.camel@perches.com>
Subject: Re: [PATCH] block: drop dead assignments in loop_init()
From: Joe Perches <joe@perches.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Julia Lawall
	 <julia.lawall@inria.fr>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, 
 linux-block@vger.kernel.org, Hannes Reinecke <hare@suse.de>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>,  kernel-janitors@vger.kernel.org
Date: Fri, 11 Dec 2020 20:27:49 -0800
In-Reply-To: <CAKXUXMxjtv5B4ekC58=Ww8R4Ju2MvT0pXbPi7XH+OU7JuYnP3w@mail.gmail.com>
References: <20201211181236.25755-1-lukas.bulwahn@gmail.com>
	 <alpine.DEB.2.22.394.2012111923020.2669@hadrien>
	 <CAKXUXMxjtv5B4ekC58=Ww8R4Ju2MvT0pXbPi7XH+OU7JuYnP3w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.185 is neither permitted nor denied by best guess
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

On Fri, 2020-12-11 at 19:40 +0100, Lukas Bulwahn wrote:
> On Fri, Dec 11, 2020 at 7:23 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> > On Fri, 11 Dec 2020, Lukas Bulwahn wrote:
> > > Commit 8410d38c2552 ("loop: use __register_blkdev to allocate devices on
> > > demand") simplified loop_init(); so computing the range of the block region
> > > is not required anymore and can be dropped.
> > > 
> > > Drop dead assignments in loop_init().
> > > 
> > > As compilers will detect these unneeded assignments and optimize this,
> > > the resulting object code is identical before and after this change.
> > > 
> > > No functional change. No change in object code.
> > 
> > It looks like some braces should be dropped too?

> I just rewrote it to:
> 
> nr = max_loop ? max_loop : CONFIG_BLK_DEV_LOOP_MIN_COUNT;

A relatively common gcc extension would use ?: like:

	nr = max_loop ?: CONFIG_BLK_DEV_LOOP_MIN_COUNT;


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4257c266dd5edf3ad6617657331abcabfd59188f.camel%40perches.com.
