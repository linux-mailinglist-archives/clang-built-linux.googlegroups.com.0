Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6FXRSDAMGQEMRVDFZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9092D3A3DE5
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 10:16:57 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id w206-20020a1fadd70000b02901fb33a39f7asf2136373vke.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 01:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623399416; cv=pass;
        d=google.com; s=arc-20160816;
        b=IAvZQ9mCwhQzq3zcBY/f57kP8Dk98AbouN8gybprDsZ4oOey+iBMRBbDTX+crGCS5h
         wKcerzrEQz4H9gesXS4HjT/dKO+F+7TAJFfpXWj/p7kMmCdTJVc4hwDU6BWutvsHJjmc
         HoC83e8BsQP5qLJnxBXXhHxUc38qR9v+ZFwqduvdZipyhG/w3uKnDy4ypUMGmeFZMLGJ
         nmR/kK8KXMWu8Vs38QMW+YbeKAsOG2XzsqIbVnhrj8ekSHCdBbYNw7HECIH1Nl8z7SCf
         oZbM5Em5Klo86gpEDstoI4D4GxNl8qXFfYW5UfaLtoSDJnyECgnJIJUiGCJvdjYLvP4P
         MMkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=N+ZPktgE7fm9o9+jtrEdDQvfit20xiEMGRMKlxDBVf8=;
        b=fTaANzL6G/QsBTt/yG5nt1qgBrRDr9ub+VXp15tp5dnBNrtHu0RDCp39LxhrnWE4gh
         7QS/1a6fjLfBjbTiKG97I46pz+kOD3K1ZAmWXeXiTfEMEHA5U5wxr8psW811gPgvU1n2
         5iMF1Hi6dWOvsEMugiIvf6rWW7uS5EdPln8wV+7GyI4gPZn7WtaI/4gZN+Bl/X1yQvPH
         nUpqF1qSrYCR8eukqmanx4GAwAhaTsIInRbO4ozOp/01azDPLSg1lh8pbrWzvUiQWV94
         h4IhowAeTkHK+073SbeFvjxRI+AaW5z9DYOntWJXSyhCxfdZ6yQNZeZinQbcuSuwpddq
         tBbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Xt0tQ0EZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N+ZPktgE7fm9o9+jtrEdDQvfit20xiEMGRMKlxDBVf8=;
        b=Mg9ZLC2+OgweaiqX20QDB0yUPJ8fIb22/3SljmXR2UQEt0BMl/codobCP3Ez6uDDRq
         c+tTq2LFEtlYS4Mx2bmldb7LujNosrdTJsXuk5z2NpvQpIDGqbXYeG+xlusBv5iv4gmR
         5c/l4SKmmxfEaAjpMg2hZWYw+Wx3VDpge9ZOU1/51xdt7+hYqIzRJfdI6QbruOmS1eiv
         70/h/4uBa1TufUEblFHs3GH5g68/9fTDia/3lXM4d96ZcixDps7R8qMBjnAsLaPpZNh+
         J7hpXnG58jn/mw8svqvCLEdWAnCLM+WkogtkJlF0PH9eGFtbWpM20IdGeq/CW3go3Yeo
         Dbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N+ZPktgE7fm9o9+jtrEdDQvfit20xiEMGRMKlxDBVf8=;
        b=oFe43riJNMFC1T4/NUZ25l5cawRAQN2/8dNzYHcfWWaYPrzqQINshzmA6pegQG+EYp
         gh6i0pSQumnsp//G75gDoOngByKv5QZh0rNBzoijrzQpGjbZ7IYlg+vhfB0WAIA79Glg
         i6ZxUR4JgbGCCO/o3tvfoeR0+FG6ha/ouUGgqPJ/zy74Hu41y3HUsfgjGprQztOVF5la
         ij4eQ4f18UTk3fCMyZ28T1NqeH/1DWwekl4oHwqgknIYos1q6khiH/sZcL8sw6btBcOL
         TBljsRaM3jVXEyxWhKxsl7BYAWqxLXBWYbp/mz6yX8eltPlZ/MBjZNCPKZa96LW55T7q
         nWdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gNADa2DMefx3OJcFKl1bM19CG4Xk8O0T5L8B0GZFyZIf2xCKL
	T9O5CXd0cK3AMkWcxXK7cHs=
X-Google-Smtp-Source: ABdhPJw3Mpz9u/w5YRzEVubAtt6rud9K0UPbMIgcp7iPIyf/1aZQ0R7WqhVfVp/eoDNtXflBXy4zYQ==
X-Received: by 2002:a67:d50d:: with SMTP id l13mr7815618vsj.33.1623399416229;
        Fri, 11 Jun 2021 01:16:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:66c7:: with SMTP id d7ls1376003uaq.0.gmail; Fri, 11 Jun
 2021 01:16:55 -0700 (PDT)
X-Received: by 2002:ab0:778c:: with SMTP id x12mr1825555uar.88.1623399415768;
        Fri, 11 Jun 2021 01:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623399415; cv=none;
        d=google.com; s=arc-20160816;
        b=F/m20y6Dcl+Pp72njtVwBdDTPcFkZ9UCztkayaWWsPYOniS+TDfTCSUrwfZU68f9bY
         sDJz3qloeeZ1aHjA9kK0R0C+I/LkFbayF5FLQY76zsBEps9xVzstdNlL73/UcYGaL7gY
         mL9+6R3HyFjlY0vvt8MojJaA6tZl41/w6VdX/vi3RygA+Z/n9riHU50L4qe5z7hyQpJS
         KZVhS4AM6pVgZ5mKgyZQXMrlk6QdTF09fImk8Jzk35ZFRENAqjUjlsgLQ31e2gHwJbJF
         5rIuKJKX5RVD5tbB0WIHYJJO1hG0MXmZsVTZiP6Ej7CNHeIbqx26YZAcK8J1CrTVoAgH
         dZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IfqBED59JqqdiqLrrLhe1uNxFPk0Whz2l0UKYj0+vOA=;
        b=xplwoRj4EWSobufiBtChWT2SxIY8Eg3iDQvsup7omfnSGpsgBbin8ruBbKgBd+nied
         jrcC+bAwec2orQX51a82VRV6vVS4K+qvqTR8I67V9JmvHDqIgXspnzhHZcXfDh1uE6XO
         FleWe6KfRzCypoaVp/GR7ZiPvvkyBog5gBjwRhA81rsl93PgzmVHiDhc2avyrTHUyVPL
         VNBCmfcQ61w+MQ+7/UGjbLRQiIyt8CEzVKRynnmbeKOmSs9Kvz/7+TDKSgUgXEhglfzm
         2vGgMTvXn7pKuIjaJ0BOFcj4KJAagcj17wTih47mEqAjLcKQJXntlA4V4nUcvTSW+dhg
         B8hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Xt0tQ0EZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n15si417582uaw.1.2021.06.11.01.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 01:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 16EF2611CC;
	Fri, 11 Jun 2021 08:16:54 +0000 (UTC)
Date: Fri, 11 Jun 2021 10:16:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Haakon Bugge <haakon.bugge@oracle.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	OFED mailing list <linux-rdma@vger.kernel.org>,
	Michal Kalderon <mkalderon@marvell.com>,
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
Message-ID: <YMMb9NZ0nHRTullc@kroah.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
 <20210607121411.GC1002214@nvidia.com>
 <YL4TkfVlTellmnc+@kroah.com>
 <20210607125012.GE1002214@nvidia.com>
 <8685A354-4D41-4805-BDC5-365216CEAF40@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8685A354-4D41-4805-BDC5-365216CEAF40@oracle.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Xt0tQ0EZ;       spf=pass
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

On Fri, Jun 11, 2021 at 07:25:46AM +0000, Haakon Bugge wrote:
> 
> 
> > On 7 Jun 2021, at 14:50, Jason Gunthorpe <jgg@nvidia.com> wrote:
> > 
> > On Mon, Jun 07, 2021 at 02:39:45PM +0200, Greg KH wrote:
> >> On Mon, Jun 07, 2021 at 09:14:11AM -0300, Jason Gunthorpe wrote:
> >>> On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> >>>> On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> >>>>> From: Jason Gunthorpe <jgg@nvidia.com>
> >>>>> 
> >>>>> This code is trying to attach a list of counters grouped into 4 groups to
> >>>>> the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> >>>>> everything naturally as an ib_port_attribute and add a single
> >>>>> attribute_groups list.
> >>>>> 
> >>>>> Remove all the naked kobject manipulations.
> >>>> 
> >>>> Much nicer.
> >>>> 
> >>>> But why do you need your counters to be atomic in the first place?  What
> >>>> are they counting that requires this?  
> >>> 
> >>> The write side of the counter is being updated from concurrent kernel
> >>> threads without locking, so this is an atomic because the write side
> >>> needs atomic_add().
> >> 
> >> So the atomic write forces a lock :(
> > 
> > Of course, but a single atomic is cheaper than the double atomic in a
> > full spinlock.
> > 
> >>> Making them a naked u64 will cause significant corruption on the write
> >>> side, and packet counters that are not accurate after quiescence are
> >>> not very useful things.
> >> 
> >> How "accurate" do these have to be?
> > 
> > They have to be accurate. They are networking packet counters. What is
> > the point of burning CPU cycles keeping track of inaccurate data?
> 
> Consider a CPU with a 32-bit wide datapath to memory, which reads and writes the most significant 4-byte word first:

What CPU is that?

>     Memory                   CPU1                   CPU2
> MSW         LSW        MSW         LSW        MSW         LSW
> 0x0  0xffffffff
> 0x0  0xffffffff        0x0
> 0x0  0xffffffff        0x0  0xffffffff
> 0x0  0xffffffff        0x1         0x0                         cpu1 has incremented its register
> 0x1  0xffffffff        0x1         0x0                         cpu1 has written msw
> 0x1  0xffffffff        0x1         0x0        0x1              cpu2 has read msw
> 0x1  0xffffffff        0x1         0x0        0x1  0xffffffff
> 0x1         0x0        0x1         0x0        0x2         0x0
> 0x2         0x0        0x1         0x0        0x2         0x0
> 0x2         0x0        0x1         0x0        0x2         0x0
> 
> 
> I would say that 0x200000000 vs. 0x100000001 is more than inaccurate!

True, then maybe these should just be 32bit counters :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMMb9NZ0nHRTullc%40kroah.com.
