Return-Path: <clang-built-linux+bncBDMMLW4BXYHBB4UJ7CCQMGQESWZ5P6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BECA39DB78
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 13:37:23 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id d6-20020a2568060000b0290535b52251cfsf21807554ybc.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 04:37:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623065842; cv=pass;
        d=google.com; s=arc-20160816;
        b=cSf4rLAIUm7yBIrIsVHsxYmeDNU4XbC/7lfjzaTDOd8DAXzdes4E8DISiJFEAK9YBo
         /WwE8TKDMRFa3CDHNbqlFWG5HeCcg6xJLeTM8LxZqWG+J0jOsYUXUnlzLAi286CkAttY
         cTB7w919hRq87YoeS7QDHQqAnibIgG+s6GeKMR1q8hD3jnFBUTPyH1CaTftSGMwZ//Sf
         4QkaoWOGQXARbOxvssb6Zn8eQW80mnlxOSEjLXOoeKA6ZjGpY8dwMc/lYKHECsM6tXkW
         X0Ou9FGC8DcVfD5dcuCaHKTiuscFx4SkDi1qjNWmss2iQgOEszovkU2/7gGzfi42yWzz
         xNug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cwTAiqqIwrgccZSTrWZluobbv9pQ1SabXanv0wn02l0=;
        b=GRaJNDHcmL80IgZcEVxep7G0PapyGMMcvuPukU5ds98aUHMf7ugnvKqtsaFD1I3JeW
         gus8+GBph5KNpXW8xCrjvjhSEgoVEmdllQE4OSOXaDBWUgTnrZRLoOfeU0gx218e1+1U
         6hDbExUPrea972sth/kVePIlKHaUBdk4zKocfpBxCHFD44yFkkHoNanurOGE+Vn0bPSj
         Fbmsbz0pPdrb9CAZfB0YUqJN62kxBx/O65ow3QEIKBuhmN5ibq2A9pY+FHmvmL1Aoo6d
         ehgULkxspFn2ewKFa6CsvwEOdWAyFIn6HfWhFSRKrtCm1Z2fKU/58dsvTSF7jFuJc53o
         z6qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gdkj+Vvh;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cwTAiqqIwrgccZSTrWZluobbv9pQ1SabXanv0wn02l0=;
        b=ktsDGy9prTByDDEzDJzv4jZzwUK4BIz4cDgBPzkCoxgZ3p26TkPJVh6SLauiIfwgDW
         DynrrLlpX1Bnk2h2z1GJSsZylsd5OCGexdwZj8nXQAa4/WHCUBQoUKDAvKPq5+jaAdo9
         RjZZxu5wD9WN2YzCd6uW3MITPLVuiAYuOp+4T4g6aDhXApA5ydM9eC30cegAA5yenB3J
         lmZoQVnWUfH4yRqK7WsEMsWXOOfz9bC82Q6l8GDP9SYm16KF/2qTb2mL5SDIHYkUAhOu
         HbkUvzKQTgB3v+k3tufqhij8HGGlUxBnGLJns77R/skE8me72hu0uifRcthizCgAAKfp
         RyVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cwTAiqqIwrgccZSTrWZluobbv9pQ1SabXanv0wn02l0=;
        b=BsYz9uFnjYdaFy1IbKtcnzsfwf9fjqkKA6TmjFVRYFbDj2ysqZ1ON2PU2w/4vY7seJ
         dlOMC6B0cMjI88Ab+qOZwAluhor83fRkfDQbDHEqFCefNR95DDEbXw/2D8y7FEW1A4Cf
         OTb562hLdojlNeP4sTOWCrBJRsHdQWImxigblp3FtIGXN83XQNLzCH6uPXRjoV84JVsC
         ZqT4JBLTGLpbobQJltfeG3dKjgV34B8KCGtH0zQ31/JjLV2mVESzRnOmUNpAM0QASoy7
         C8CXkb/TiGK5BPndSGoN52caGew5dZhqLJPQNa30zpaKXoYHg2ahGecIfzJw41LNKM/x
         /iCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533C089oaHAYybOmqJraV2rg7LzfQEXjGTGoq3FKxn8QKwYbQjlJ
	+kTH4OYMBgf3v1dpy+JfXg4=
X-Google-Smtp-Source: ABdhPJw8ZB9Uz7Vdk2+PHGCzL/BjQNVuJn4PCcq/uV9e9uJeSCrguUCn19qOb+1JvW7J8UuoMjkDUw==
X-Received: by 2002:a25:31c3:: with SMTP id x186mr21030572ybx.382.1623065842428;
        Mon, 07 Jun 2021 04:37:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:38d6:: with SMTP id f205ls123848yba.1.gmail; Mon, 07 Jun
 2021 04:37:22 -0700 (PDT)
X-Received: by 2002:a25:c387:: with SMTP id t129mr14750327ybf.461.1623065842001;
        Mon, 07 Jun 2021 04:37:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623065841; cv=none;
        d=google.com; s=arc-20160816;
        b=a6F6JhfQTVeL9YRNE+1MyOQmUCJHmjmfKv8dkC9TG3VW7H9/HzLje5K/k1v24BxPBH
         9ajiI/puTWY3R6sHmwEayXq55EzZdC+Rthi7wpoaa7w3othEvWHqKZeC82s0EXluMaso
         4K2Yc7HdqgEHQXkHTQ/laXY6YD1ivUUti3+QsP3m+7zl+Sgnmcym0BNWObfrdWCfcgmG
         WT52vtvrLf9T8oYQuaoeYeJ/n7gNef011TrWu1hUEW+eEFbA2gQYJs5V3Er9+yS9CtIy
         MK5di1ftCmhuKXY8z+L7nMOen+jg7RHm9jl0zHIqmZW9tOTUaVbo4zqrmQ2eYA4Lz5IT
         Ng1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EUIaGV+GTU2Y6/oCirD600fG4HCd6yjM52CuEeahcx4=;
        b=Qm/biLStk7YpucJPAsLwYBX38GUZ4eRqg7AQF0c9E/HAXm7ixfgoQ1zwYUDZPm7ihG
         i4Ki4E0IhNzr1VMRoAWcFZ7GxNYGG5Vs9VGDmuhjZ990ljD7yVTO56pMS/tQp42bzkZw
         pAuxPw0iSi6GaUkT7x1W+a8s9zrgBAJjGjjElv94AQp9GsgeJ2XGrGdgIuTjNFeOiMRT
         L+sk8Z4cfoywX8ee2W0PNNiYOXbsZmyhXCWpWkkghmIs/7TTSfCmax7KOlxOjq4CNVwP
         16bfOcgpwSSx++iVDHCcWVObDeDfmevDxyhZ/DiS1m/hG6Xypx/KXElUenMTrqUuuVo/
         n1YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Gdkj+Vvh;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s65si358680ybi.5.2021.06.07.04.37.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 04:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54B7661130;
	Mon,  7 Jun 2021 11:37:20 +0000 (UTC)
Date: Mon, 7 Jun 2021 14:37:16 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Message-ID: <YL4E7C7tVUMy3poz@unreal>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
 <YL36OFkmlxJiqjvc@unreal>
 <YL4Bcm2dOyWKLGJ7@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL4Bcm2dOyWKLGJ7@kroah.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Gdkj+Vvh;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Jun 07, 2021 at 01:22:26PM +0200, Greg KH wrote:
> On Mon, Jun 07, 2021 at 01:51:36PM +0300, Leon Romanovsky wrote:
> > On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> > > On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > > 
> > > > This code is trying to attach a list of counters grouped into 4 groups to
> > > > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > > > everything naturally as an ib_port_attribute and add a single
> > > > attribute_groups list.
> > > > 
> > > > Remove all the naked kobject manipulations.
> > > 
> > > Much nicer.
> > > 
> > > But why do you need your counters to be atomic in the first place?  What
> > > are they counting that requires this?  Given that they are just a
> > > statistic for userspace, making them be a u64 should work just the same,
> > > right?
> > 
> > The statistic counters are per-port, while the cm.c flows run in
> > asynchronically in parallel for every CM connection.
> > 
> > We need atomic variable to ensure that "write to u64" is not
> > interrupted.
> 
> On what system is "write to u64" interruptable? 

On 32 bits, and yes, we have a customer who still uses such system.

> As these are per-port, do multiple threads try to increment these at
> the same time?  

Yes, CM connection can be seen as thread. Bottom line everything in parallel.

> And even if they do, what happens if one is 'dropped' somehow because of this?

Probably nothing, we increment the statistics only.

> It's just a userspace statistic counter, what relies on this being
> exact?

In kernel nothing, but I have no idea what userspace does with these counters.

> 
> thanks,
> 
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL4E7C7tVUMy3poz%40unreal.
