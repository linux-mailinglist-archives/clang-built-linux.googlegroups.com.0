Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBFNH7CCQMGQEQMJ6MQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E94F39DCAC
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 14:39:50 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id x22-20020a1709028216b0290112042155c8sf2379166pln.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 05:39:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623069589; cv=pass;
        d=google.com; s=arc-20160816;
        b=RyfSjAqZWC2h9XErLHcPhiF0Wy7q2JvLor6+PyuessK9UsQg4/WEjq3QbIpobC7KwD
         5FNUY+Jxjh+jzmP3EM7sE1WSBbaA+/WmGVudJEmCkB2RadExhrCSa9vcf2XhhwAtjJPy
         SLcBMRUWgoRlT2qW2Xm4KjomuW1+aUYQgfYh/Q074tAmwQmo1bwUoLMIVCSGqjPof8hS
         ULNyx24yi46nSO2g66Lzmi30Eain+MAxZWPeJdVI95C/GAbXZ0e5tbMX1lik57K6PV3r
         iljMPngRtVdqZAXbFT82tWhTIJaM7wWbLgoGl7ZGEXb9RncfqQ5Q/Cz54MD9TdxbrALp
         uT0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KeQKpsAZzgrT7yTUfpk5GFKQAnm3o0snLlQICtTpsG0=;
        b=S1ldneAydbBv81Ban3bFAUVOk4BXvtNZiAVhbT7AMdWHamJ/DIZqiQUELiTWHCJZGO
         5bT/fYPTq8NbbVRTZLGugPh1Y/0CfEUxHY5Vhru3YbSFdLrPzsxGySqxb6LzRIWhU7Ue
         rkdcftCoqM9kpPwGP91JJgL3pxFq1vjD/xycMCSP7eQ6HB1mAqEHNX3VcbfqChUfRtul
         qQ6PIvh6Ty9lVm51Vgmb3Tphx+DybS+yEiWQY2Wo//qeDzzJGHbRw0owJMu6fajW18Sz
         VXTUiYYE4xiryznnE7aO1+i6uMPtm+pBpnGMBrwE0uIbu8pXOD9dXBdoCn69DA3nA2mW
         Zwcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FdktRMOh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KeQKpsAZzgrT7yTUfpk5GFKQAnm3o0snLlQICtTpsG0=;
        b=Z8wnEB9ToZbe/FpfniRgCJA8rSfzZ2B5dUL34AJx8kmCyPivNZll/mDJDV9C0SVa+y
         gsJoJydDv2sAu0D1b5MN1d3w+3/C5SKUQKkemx1ovu3VTJMn7/KosD20TQw61dqbgfHd
         LqU1+Dn+Vxox1NQ04EYvYEnbWlkSJwethGK1rgwr9WpC0sPLYyMitz2Ao10qlI5KafXB
         8AWYmIxdoFW6lmJC9Y/IXuDPxmnWiQEqUFTdXMm6s5VqDI0vZEZwz/QWytkLBB12A9xW
         bT4irDPIS/XOIhR0ThcucM7xk+mXU6kffF51HSZ5XYgSx5NZznAVrQ3Vv6BGpEa3BSDf
         0JsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KeQKpsAZzgrT7yTUfpk5GFKQAnm3o0snLlQICtTpsG0=;
        b=q72lDnH8blQvyAaRdY/mX4VKEOSFBBX7F9Vk89Virg+YlDl0V5+XvkmMHGAbp/dh67
         qWEG42D9A6qRFs5AXjpOMylf8e7VgUwgZ8TbRqNWBfAe1TYCXxCjjoj+vgOLCbmQhWGB
         iaQ9cb+sSiqohfvPFtAa8n15p6BWJpXjalmcRapvBy6iAZWBDbxZH7+K+SNuSpbr7EBy
         J73MS6K4MwW6yOhLwtIeKbIIhEh0ug9fI3hEBwUG0Hita2nxpRkSIEDuWmqaBWnId0ab
         5G37mHvMz27z+ighWWwPkvHI7rEA2wJM8mpdKDjHgzUpAzrssqLFxX++eHyWd1tW5wvS
         tZ4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ylmh51b78d1gLGeZFbFA79s+XAa0nBsep+FEXCH6r6vVUqiQb
	rvagWO3kzDbqNe46lrXCTgM=
X-Google-Smtp-Source: ABdhPJw42rVPaUVjyCCRpkgAjABlg4hrKdPrstFVlGkGI90OfDbVnJh+ZjQTVOeIjjOua8HO6aO6jA==
X-Received: by 2002:a63:d213:: with SMTP id a19mr17827120pgg.28.1623069589255;
        Mon, 07 Jun 2021 05:39:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b48a:: with SMTP id y10ls8321419plr.7.gmail; Mon, 07
 Jun 2021 05:39:48 -0700 (PDT)
X-Received: by 2002:a17:902:7087:b029:104:6133:6d2d with SMTP id z7-20020a1709027087b029010461336d2dmr17992552plk.39.1623069588731;
        Mon, 07 Jun 2021 05:39:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623069588; cv=none;
        d=google.com; s=arc-20160816;
        b=vu8fGJFKUoA9RqzlQQ+gUhE8Cms2PKUwkbMfhj3Qshxvouu0bFucDb42GomGayOPbF
         0V0iHZgb2M5RE7tG4yN9oS/veqsprXHC36SFWgLjRkGZNCdMlG8Pv8NXgjBu/+9yhsUB
         d6KbWgGJgxZxGKc+Qz21lUJXDudrfqZpyUCYDOA+F02PJlKsi1MBmFhv43Y5tAZ/Ih5S
         FDHLvdb8TyUkkxnQsqiiqZDD8M0aKBihcAP2NO/GctUdir2fV/mK11C4ryBO+NeqKE+G
         GOwYRcNY9eQa+oIDMXNuuBg09KKVloHgoBiGBQ+DQIJn95QPC/rIj1li6EWnYCB3EDsY
         ybSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MLXBEkrHHTUP8huh+hMH/0K8COmKfBbYzFzmywMTH5Q=;
        b=OxlFFcybOwHZHT3Ns7axij4+rtC8a41E5/DCkHb8xL9nWr/Mt8qAavsgi2ByEYXLmW
         d+QDCz9/eKhTCRx5TlYN4O8yypNxkzOfklFQJsZEPyJi2chZZ2KYw2THflRxy2H4eFxz
         Ig3xfCK/nYsR1orqeCv3KcfeNJApNdkXGad3RmJtoFDApzzSm1uGIRi5UijLX9WHJPVx
         xJtde62RA1PerlGFqmtS8qfg71uLGRhdjC6FFcjLmqk5XGiZ8knSXbPdISZHamy6lAuC
         bbMRYVI9qsxCO2Yy5Lm+SnA7ykPNBPMTXikioELuHU85mKsGbAmZivdjqYSVgZn6/8Ta
         ajJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FdktRMOh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u24si1099832plq.4.2021.06.07.05.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 05:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E4EB611C0;
	Mon,  7 Jun 2021 12:39:47 +0000 (UTC)
Date: Mon, 7 Jun 2021 14:39:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Leon Romanovsky <leon@kernel.org>, Doug Ledford <dledford@redhat.com>,
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
Message-ID: <YL4TkfVlTellmnc+@kroah.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
 <20210607121411.GC1002214@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210607121411.GC1002214@nvidia.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=FdktRMOh;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Jun 07, 2021 at 09:14:11AM -0300, Jason Gunthorpe wrote:
> On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> > On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > 
> > > This code is trying to attach a list of counters grouped into 4 groups to
> > > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > > everything naturally as an ib_port_attribute and add a single
> > > attribute_groups list.
> > > 
> > > Remove all the naked kobject manipulations.
> > 
> > Much nicer.
> > 
> > But why do you need your counters to be atomic in the first place?  What
> > are they counting that requires this?  
> 
> The write side of the counter is being updated from concurrent kernel
> threads without locking, so this is an atomic because the write side
> needs atomic_add().

So the atomic write forces a lock :(

> Making them a naked u64 will cause significant corruption on the write
> side, and packet counters that are not accurate after quiescence are
> not very useful things.

How "accurate" do these have to be?

And have you all tried them?

I'm pushing back here as I see a lot of atomics used for debugging
statistics for no good reason all over the place.  Especially when
userspace just does not care.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL4TkfVlTellmnc%2B%40kroah.com.
