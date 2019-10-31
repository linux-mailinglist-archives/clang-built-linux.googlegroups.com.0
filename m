Return-Path: <clang-built-linux+bncBDJ2R4G5X4LBBIOL5DWQKGQEZ72NTNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CFEEA7F8
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 01:06:57 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id d24sf33530edz.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 17:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572480417; cv=pass;
        d=google.com; s=arc-20160816;
        b=R7k6EXfuFNj8hCYaWFFqV6ihmrsS03xuN3Kr7/mpcIvF98ycxpFawWiCanwpQxvpYR
         bnfYNmwGOhMe++ShaKqwoD37IZBi7wI1aA0w4VEAVkGif81wRSXHsiYBCrgW4PvRypiq
         /tFguQIeLngg2m3peRjhnrkO5DmhwDO2uXQSo710V8kSsCGYDbnImHr6/+nyJN3XYXvo
         ZNBVwgNBrqOobBz/7NroI/llst9/Zyoz80vTV+ZWohY15jP0xvrJgOl0LNCMPfopRR7l
         2lQ/bYqpEjWCDTbvhgJ56C4i0lxOF1eG5cNwsbTsSldTiTGxMexiObc+JWr915/mRXlm
         TtXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=vmu3R/Q9d5n2tlot07zEG4BRNtN53j6smnnjhKtYYFM=;
        b=UsOATCnQtm/X5moIN2otT1gokyWUz7XizErxQoSbGh58nE8+qw/tEoZUcuf5qmce5K
         //GgteksJAXnESUeq6XCdgYmCecMR3pk54Spk75sFf7rqtIg2Lq04N5O92NDzWnirlo1
         Gqbx8do4Cgt2QEWcXK9/pCGpVYiA6YucpGGABDLEDmDMjRjByvGKMsK1CN/EcgSkN6Qt
         fV5VNqO1B9ix336VSkhnyuNJpcQ+lnanjdXiO2/QJEh1680wii0yKrxJek632c7/Ao8Q
         qWda2i4k7ArUE6LMyLfiVwQpRRmgjB3YenY4nnI4COaW1USW4f0xQ939NyjBmSIZzLda
         QGSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@themaw.net header.s=fm1 header.b=I7rJ27fI;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=LqybDlr1;
       spf=neutral (google.com: 64.147.123.19 is neither permitted nor denied by best guess record for domain of raven@themaw.net) smtp.mailfrom=raven@themaw.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vmu3R/Q9d5n2tlot07zEG4BRNtN53j6smnnjhKtYYFM=;
        b=LrG/x4h0W8oyLYj3b6HeIhfyOjuC/YZ8ajufl9BnCZjhmLgoQ/UWN4wHl7vTbUv9ER
         WBCZpZTqx853Uk3W7TXNFYcpW1iroWnMd6H4crwXPBP6wjjbVyR0k50pTRmYS20r/z70
         xJB/bheVHFnqK4//VjA2NvsWSWnXW4vNw7UtFXPKAHOfriwRuB8SpIYLeUSle1HOPe5b
         rtO9V/SDFUIx4D6pjkc1h/v4ByR//DHclNPu9XDfVmiEY88cloDnO4CfRTXZJ3OHahWc
         5+AWzthcvAK+N0fXsFsZETOUq/uqL5QoEQi4kQieuMlVA4sGSkmpzRBAyX2hJG5rvwAs
         +y2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vmu3R/Q9d5n2tlot07zEG4BRNtN53j6smnnjhKtYYFM=;
        b=PdYAhJDYFlIeSC0bo6cN3Yw5Iz29Ok4HDSG0m15VXDdyOOIYP0oOAhy/p9yi/wVLD+
         oSGQraM+CfDpNNA8bVbVhxAT5ibOVudqOm9V9mQ171Ksvcce3yFxJeSrjmGalz7T+vwm
         IQcY93YgY0vRHG+l8n2K6gHqeT0U0A39t6ve0uKYk7NtIXfFGEu5/u75jFj+FJCguU5P
         tDNLCWbD/6By7egwIMxXuDhcfJuCrnP0upPrOHcYx9kalgtWV1KN5PMaJT3Xu2z5SfWH
         gcm6fUmXUGBfhx4wy/YVGHjjwyT/nnMqnxtX899Dqrk4rqvoJ3QJNOp6Lxdfr5vgXQFq
         IDzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5tFEkOip8iYBuV4enTUTZlaspFJ6uNyt+12hgbrW20EP5z6rU
	3XrQWLTXUKKm8AUGE/ZcapQ=
X-Google-Smtp-Source: APXvYqzEKJMpn1cNvuYi3eFxHHw1t8v0kLiFZOw+Vowt4w5RjDoR3WXX9ijETa9ILnHbq/R1QKq+AQ==
X-Received: by 2002:a05:6402:12d5:: with SMTP id k21mr2894773edx.56.1572480417454;
        Wed, 30 Oct 2019 17:06:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:af86:: with SMTP id h6ls262539edd.3.gmail; Wed, 30 Oct
 2019 17:06:56 -0700 (PDT)
X-Received: by 2002:a50:eacc:: with SMTP id u12mr2831340edp.290.1572480416810;
        Wed, 30 Oct 2019 17:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572480416; cv=none;
        d=google.com; s=arc-20160816;
        b=XWf+iFsxoYDxscx6La7c6Jx0VxNfGaHqrSpzjvF9UtEYqgStA+erLg8IigTKLHyb2g
         gdNhvn/5UmZ4g3r1MHGl6uVWUUWJnM5nGWNNkFMXz8Tyvhtrx4zWdj/J0E1SV/bIqU1u
         mcf07xamg5XgET7refat6/yUzIBAV0D7IkMLNaalcmkVEJ8I2lswCGV0YUSypLrwy8Kd
         X77hwasXa5dKt1xDH4UAptHRCq4ANzdhX2KW1Cx9v3QTPZO0SZi7pbX/rjumJCHxZTvd
         +ABSDhRL1WkZs89dv/UnSxSw0iaPyEeW53nfBTaGS9tB1CX/ldjvNpnCZcyozmLL1wJD
         V4tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=v9XEk8uMvpCUndHRUtMMY5MfSVPQrGQEonOht4k9uBw=;
        b=Ocokb2yDxS8i76YTLXaK/KdtnQE7D/jswQqPSzw2WGtHZ74POOJ3D8EdFNV1NCntYE
         +IesL1M9IQ7o+eDVSZ8BC2jt1fMR4dvOEAf8jrPOHsK7IMqdhTnZkfD1YN+XM/bkKNm+
         SDwyKF+2r6tENG1Do/EuhJzEPckDEKdXDIz49taGL/K7KLtwXHQiJMo0MEQ/VFcE0V4i
         EQXBFq8vd4muRjcNa33oWphlkPLNkGJf5cq/7+EWtw8IqfCLgEKvyw6W+X+wFyd1J2cS
         QD8Vxa8anRnVNWGyTdGFvJcPQzrZgmaXez4bN/08rg08kFfpPWJmbCClXnD8dNzztQf6
         4xUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@themaw.net header.s=fm1 header.b=I7rJ27fI;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=LqybDlr1;
       spf=neutral (google.com: 64.147.123.19 is neither permitted nor denied by best guess record for domain of raven@themaw.net) smtp.mailfrom=raven@themaw.net
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com. [64.147.123.19])
        by gmr-mx.google.com with ESMTPS id y21si249099ejp.1.2019.10.30.17.06.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 17:06:56 -0700 (PDT)
Received-SPF: neutral (google.com: 64.147.123.19 is neither permitted nor denied by best guess record for domain of raven@themaw.net) client-ip=64.147.123.19;
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 493FA52D;
	Wed, 30 Oct 2019 20:06:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 30 Oct 2019 20:06:54 -0400
X-ME-Sender: <xms:nSW6XZBiOb4FkfDmc1XtRm1b286YwiFsI1lMd3mX5XgRh3ZHAjHl0A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddtgedgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkffuhffvffgjfhgtfggggfesthejredttderjeenucfhrhhomhepkfgrnhcu
    mfgvnhhtuceorhgrvhgvnhesthhhvghmrgifrdhnvghtqeenucffohhmrghinhepkhgvrh
    hnvghlrdhorhhgpddtuddrohhrghenucfkphepuddukedrvddtkedrudekjedrfedvnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpehrrghvvghnsehthhgvmhgrfidrnhgvthenucevlh
    hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:nSW6XU4v2qVeqjp6alTwu84qxItcm636QUDf42g3wgk1ySrEaWDsww>
    <xmx:nSW6Xb6vUL1goX_vBPY4WHPgl2FSrNjmfQdnYu57J2wAIUYuP7x9Cg>
    <xmx:nSW6XeTwJ3R_SMb05I5-mchhVqjUwd1s-rEvAuBVJ2Q0HclfUofZlA>
    <xmx:nSW6XcWF1ITqPFWwm_pliXtZvwE6P86h9l3Vw7rV6nFTrW0RxX9zYw>
Received: from mickey.themaw.net (unknown [118.208.187.32])
	by mail.messagingengine.com (Postfix) with ESMTPA id 87B6B3060065;
	Wed, 30 Oct 2019 20:06:50 -0400 (EDT)
Message-ID: <64f818691c707dfaecff334aafaabd74b14948c7.camel@themaw.net>
Subject: Re: [djwong-xfs:mount-api-crash 91/104] fs/xfs/xfs_message.c:23:40:
 warning: address of array 'mp->m_super->s_id' will always evaluate to 'true'
From: Ian Kent <raven@themaw.net>
To: "Darrick J. Wong" <darrick.wong@oracle.com>, Nathan Chancellor
	 <natechancellor@gmail.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>, xfs
	 <linux-xfs@vger.kernel.org>
Date: Thu, 31 Oct 2019 08:06:46 +0800
In-Reply-To: <20191030154543.GF15221@magnolia>
References: <201910291437.fsxNAnIM%lkp@intel.com>
	 <20191030033925.GA14630@ubuntu-m2-xlarge-x86>
	 <20191030154543.GF15221@magnolia>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-Original-Sender: raven@themaw.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@themaw.net header.s=fm1 header.b=I7rJ27fI;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=LqybDlr1;
       spf=neutral (google.com: 64.147.123.19 is neither permitted nor denied
 by best guess record for domain of raven@themaw.net) smtp.mailfrom=raven@themaw.net
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

On Wed, 2019-10-30 at 08:45 -0700, Darrick J. Wong wrote:
> On Tue, Oct 29, 2019 at 08:39:25PM -0700, Nathan Chancellor wrote:
> > On Tue, Oct 29, 2019 at 02:45:40PM +0800, kbuild test robot wrote:
> > > CC: kbuild-all@lists.01.org
> > > CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> > > TO: Ian Kent <raven@themaw.net>
> > > CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> > > CC: Christoph Hellwig <hch@lst.de>
> 
> FYI, It's customary to cc the patch author [and the xfs list]...
> 
> > > tree:   
> > > https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git
> > > mount-api-crash
> > > head:   e35c37b1b9987c8d87d91dbeca6c24aade2a3390
> > > commit: a5a36409da3a608c815b38b0ff2eb5bcfc1adec6 [91/104] xfs:
> > > use super s_id instead of struct xfs_mount
> > > config: x86_64-rhel-7.6 (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> > > 7cd595df96d5929488063d8ff5cc3b5d800386da)
> > > reproduce:
> > >         git checkout a5a36409da3a608c815b38b0ff2eb5bcfc1adec6
> > >         # save the attached .config to linux build tree
> > >         make ARCH=x86_64 
> > > 
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > All warnings (new ones prefixed by >>):
> > > 
> > > > > fs/xfs/xfs_message.c:23:40: warning: address of array 'mp-
> > > > > >m_super->s_id' will always evaluate to 'true' [-Wpointer-
> > > > > bool-conversion]
> > >            if (mp && mp->m_super && mp->m_super->s_id) {
> > >                                  ~~ ~~~~~~~~~~~~~^~~~
> 
> ...so, Ian, I guess this isn't necessary ^^^^^^^^^^^^^^^^
> because it's a char array, not a pointer. :)
> 
> Good catch!

Indeed, better now than later, ;)

> 
> --D
> 
> > >    1 warning generated.
> > > 
> > > vim +23 fs/xfs/xfs_message.c
> > > 
> > >     13	
> > >     14	/*
> > >     15	 * XFS logging functions
> > >     16	 */
> > >     17	static void
> > >     18	__xfs_printk(
> > >     19		const char		*level,
> > >     20		const struct xfs_mount	*mp,
> > >     21		struct va_format	*vaf)
> > >     22	{
> > >   > 23		if (mp && mp->m_super && mp->m_super->s_id) {
> > >     24			printk("%sXFS (%s): %pV\n", level, mp-
> > > >m_super->s_id, vaf);
> > >     25			return;
> > >     26		}
> > >     27		printk("%sXFS: %pV\n", level, vaf);
> > >     28	}
> > >     29	
> > > 
> > > ---
> > > 0-DAY kernel test infrastructure                Open Source
> > > Technology Center
> > > https://lists.01.org/pipermail/kbuild-all                   Intel
> > > Corporation
> > > 
> > 
> > Hi Darrick,
> > 
> > The 0day team has been doing clang builds for us and we've been
> > forwarding the valid warnings along to developers. This appeared
> > after
> > the commit listed above. That check should be unnecessary, perhaps
> > you
> > meant to check for something else? Thanks for looking into this.
> > 
> > Cheers,
> > Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/64f818691c707dfaecff334aafaabd74b14948c7.camel%40themaw.net.
