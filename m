Return-Path: <clang-built-linux+bncBD2NT6VEXYMRBU6SSCAQMGQEYNH7R7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B4C316EF9
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 19:43:32 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id y12sf3378568ilu.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 10:43:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612982611; cv=pass;
        d=google.com; s=arc-20160816;
        b=xLvm4VxxjpfJ/5uZnnmz1X+pgbchoiswnSrO9du3l/A7myxIQOb54f3uMCMOgI/yWu
         YPqkRyGXkjOtOX7tVb7807YTsGwFY4ktczBd9lLqguRtcYaePynTyFZdE9tWC+U8/zQl
         yojw5shBoUsnbJMMqT3C1Jwwoq9urWBukJFwNHTc3GhglQIV2OWH8+W12cbZl9cMmEhb
         JCUAk59qpOPieYhd38x+a4Ki1AkTpm1pEweYCl59Gx0tx5zPxDrJr6RrIH1nsdJ07yCn
         Ju1PquAvEjStBfd5mBTgAbaBgOo/hAjFK7zB4BPLPzt4/zoSUBLgwlAQA0Wu3YYrigQW
         oByg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9o0ESyTc52EgQ2nn9gKz88XZ2U2U6vVtwPbnOTM6aZk=;
        b=ikgmorGpRkDpTork9MYdD5kfFqH1AEWmnObcVtV0kJSBqaBuSao6eErF3xrQ96izfa
         oZHWdbUWtZqVRQ0I0qOG/Z6qofCeFOeqa0ivbt82DKQR4PBtaL1ytJCZgHJrZT6k0p/e
         7oVHcJ/46mCpDPAvKwKHn+5JfM67tW6AG02o4p/yB0FwLXn+6eeOvNo3CYMQy/YTLKko
         1GDiGKHYr3OO76X9qpXGmhaZFGbGx9S2Md5QoLn591ZANQSfNIL27+lcUpQUHY9Y/VS1
         yPPnuPstRYQJ4dwdf1XMqWChrN7Lu27SpooJOQtiY54awZm+B88TUKkC/12u+ho9Sl5k
         /MQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GST2UoPe;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9o0ESyTc52EgQ2nn9gKz88XZ2U2U6vVtwPbnOTM6aZk=;
        b=RPPF0dTEs8MVJ1hWdzuZi4FyfY2aLVHQ55emsMVAVCBYEl8na+eqw38MmhopXMnOZF
         Nm5S/x//7zDqtvI7r6BWnuDwqoUTu1pAKrpHUaslxz3YPSfnilvRatTBY7XicOChG+JD
         26Piky6iTFG/o/WNwMj7RVFo6P1Je5VBS37qamsmlUdWHPuTMg9+Hl6BjW+uw3aIE5dL
         /UESyGWAS1sox2mUsqk2Bqr/pUkgVBKrIgFKa/HbXRD0nZvZs6GrLTVrvOCkNChKKfyq
         sVlDSOVF3QoY27VkrJrNdXRCLFRyTamxhYFEoP0hO743jWSQeNtf4r/cJFOHKDK490iB
         Rgig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9o0ESyTc52EgQ2nn9gKz88XZ2U2U6vVtwPbnOTM6aZk=;
        b=XNrrdeR+XAMoXKODLWcrSt4gaG/4mgFiZvHLfmMS6uh/3N34iRsNsesTW9XjXT3zH8
         FGulTmxcrCmqkOQHSO01v2zeIwFb/VJk8srSa0XyH03n9DYagtwdsV6TrvpOSwBDTXjg
         S3jY5Cjwz4LdhWIFpfbnssH1ZT3fzUoOXKCsMCwTHXCO21BT4LjcuLEfouVx+n1TdbKP
         HWUwUHq5oihavSJTDVdyvqCHAFJpBPEQCyRN5KxlE7NiXM9POCttGUQTxnktAzJ5pDL9
         KQDzhMnjS0VQDAUOSt1CetE0Vau43ODM6GLFQcNTfqTvEK+/WPlGkFT32mo/82D7NhtW
         Vmsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xhaT0u8a9VbTz5X6ZL88VbqM0EJ0isdCZ0TIdJ8/8xJ5KBRMA
	GW8UovQ4c+ez2ZNgTEozhDI=
X-Google-Smtp-Source: ABdhPJxfcogHweH8r3dWCGUgfgZtme6zyeFlL5J1+pa8hL4TrNA7czBML6z6kJmifE3CB1Fflyhf+Q==
X-Received: by 2002:a02:cd25:: with SMTP id h5mr4659160jaq.31.1612982611840;
        Wed, 10 Feb 2021 10:43:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1385:: with SMTP id d5ls845617ilo.5.gmail; Wed, 10
 Feb 2021 10:43:31 -0800 (PST)
X-Received: by 2002:a92:dcc6:: with SMTP id b6mr2399115ilr.295.1612982611366;
        Wed, 10 Feb 2021 10:43:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612982611; cv=none;
        d=google.com; s=arc-20160816;
        b=s6yUwVIB7lI/FG8qMO2N72vR7TcpD9qk8RJ0AdVPj/+1GZ76AEcQfs4AwtwgMQKoFd
         qIvAWOqsEzSuSZe4FEtiSXb24DG7o4U20zOPeBdaOgwDSHA8u09GlboQ1rH+OthruM61
         Oel3ceLLmc9C7AxsfM6X3zsA0AcUB2cBsSwfx2XiWYlq1ZI8+v956ZNK0D9i526iNMt1
         u+Osxs7la3LJJZIi58053J6pcxZid62OFnOenBgFYIPlgI7D4y57OJs+VJTNL+2M8rYH
         spc0iT+rTpHAspEBuPW7rzbMsx8Bo/huXWqaKTkfSfseOZ0yIqSJ7y1hD5Xg0s7ueU4P
         X2VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YwzA0hQqIkoCYnnPkbNwNB5ZH32bz6Q3OOzYHux2q7s=;
        b=DUM2R4aFab2CMmz2KLgylA4nYc2Y4L0dbcfxtkLewunRuSMyFA7h0C83AZMUBMHDXB
         ySdeYX77TrQUN6PrrbIfkusUtaJkaGd4s9vv1CpcahpZZBnhj8SFPanQAzBEcQVs3k9r
         ZeKPEMnXbDJYFPxlE2aILrXf/uN+gyGuBtFNZ0NRsf7fGrNFwq6TWzVoCaiUgQSU53IC
         w5C3s59s5UCu+NGG/Vc+Q2aWHRopeneLoKwLDxrJzUlSumdVBKFTLSgfSkUMn/eZ2b12
         7UoxDyadjAurJ0+U/Z5PLkX3SNnwZUWmeuiM0oCHns3O9rFATag7hbDIIBTr7NSawM7D
         cW4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GST2UoPe;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 207si116456ioc.2.2021.02.10.10.43.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 10:43:31 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 21D1A64E0D;
	Wed, 10 Feb 2021 18:43:30 +0000 (UTC)
Date: Wed, 10 Feb 2021 10:43:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Nathan Chancellor <nathan@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, netdev <netdev@vger.kernel.org>,
 David Miller <davem@davemloft.net>, "Michal Marek"
 <michal.lkml@markovi.net>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH RFC/RFT 0/2] W=1 by default for Ethernet PHY subsystem
Message-ID: <20210210104329.3ecf3dd5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210210183917.GA1471624@nvidia.com>
References: <20200919190258.3673246-1-andrew@lunn.ch>
	<CAK7LNASY6hTDo8cuH5H_ExciEybBPbAuB3OxsmHbUUgoES94EA@mail.gmail.com>
	<20200920145351.GB3689762@lunn.ch>
	<20210210183917.GA1471624@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GST2UoPe;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, 10 Feb 2021 14:39:17 -0400 Jason Gunthorpe wrote:
> On Sun, Sep 20, 2020 at 04:53:51PM +0200, Andrew Lunn wrote:
> 
> > How often are new W=1 flags added? My patch exported
> > KBUILD_CFLAGS_WARN1. How about instead we export
> > KBUILD_CFLAGS_WARN1_20200920. A subsystem can then sign up to being
> > W=1 clean as for the 20200920 definition of W=1.  
> 
> I think this is a reasonable idea.
> 
> I'm hitting exactly the issue this series is trying to solve, Lee
> invested a lot of effort to make drivers/infiniband/ W=1 clean, but
> as maintainer I can't sustain this since there is no easy way to have
> a warning free compile and get all extra warnings.  Also all my
> submitters are not running with W=1
> 
> I need kbuild to get everyone on the same page to be able to sustain
> the warning clean up. We've already had a regression and it has only
> been a few weeks :(

Do you use patchwork? A little bit of automation is all you need,
really. kbuild bot is too slow, anyway.

> Andrew, would you consider respinning this series in the above form?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210104329.3ecf3dd5%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
