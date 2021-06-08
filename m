Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBZFJ7SCQMGQENTJREYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 629C039EF1E
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 08:57:42 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id n22-20020a6372160000b0290220c022078csf7898788pgc.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 23:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623135461; cv=pass;
        d=google.com; s=arc-20160816;
        b=b0LHVLDG2dF4kcOB2Wq7rqG3uh1oY7OZcuH7KZib69rQ0XX2u3DvS2ByQQ+tK2SzkV
         zfSL0oDBJOKaQIMDNX2dMgkrIwgtJ30ScXBebAqUnzjdG2M7W/yT12j5oayUy7hlD11K
         9ff6UqgAyxx/e9twkFd6AaKWSq66xpsTNU3vfKv98YkpG2gxjGBy0aVLxDB9Hof2ulxF
         JKcBC0glBuFIMc9Qct7bs+ZPJRygOqaakLtiOY35+kVgc6TkljyzNDQMRocvoeIOts4g
         K/rAW/ssNwn0e0fFcVYFqVKSJ5SSR3MzaaE/vb4aQ2C8zUnX48tNVB1qLEbS3MV/LRsQ
         jwMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yZFpg7ax7MBD5PWakIofsXlpjELYpxyrFKD/RpQ6CO8=;
        b=DOhzemiIXH5Ow1O/3B4F3ab+DK9al4xXAa+0t27QazxVnmT72tvmzeL9pjAcIqL8pM
         5DWl/81/yybWbfHSLloo6aTAFuGuxL1oMOvuGWZ8f/Ul/1bdr92QVMLljitmQoUpnHWa
         sHHdIPD04RUUrVVAUf0GGkpvnx7mMXnldjc6r907Q3nQWQbWMfc1i8LqFg4K3KcmNFn3
         1I02vf9qqxeAW9tj4Oe2DAdbABvMANnrKi62k+Nq9g9XLKJZvDqS+7rXSUEPG1jueWLK
         R/48p1ulLgu6EWIoS4kkICFjHowGlwFieGlLO8DAf29OAPEiXItbCVNYOOJIvjWX+Aih
         rgKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oukDiFIK;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yZFpg7ax7MBD5PWakIofsXlpjELYpxyrFKD/RpQ6CO8=;
        b=K2lyefGT9tK9N0UKaH9R/EUJLSPjWx1JozyjZqrQ0gN1BsYVs+joPbkfhZ2mSqDePg
         i6IgkLY6rzlpMGZM/k2asNNSUsjZJbxliWM00Ow/mwHEjgNn6I25yXwSCJw4jvnOf3Pl
         LPUjz3uXc8XYbzB7e9t0nuOEh9uZmcABIvXPwkwllmed45IfJLZIog6/T91qhIRCUi9x
         6XcTU0Yxg6ulaqjmN7WbZQIa1PhmJpylefncOXvKZV8uZEaxsWCn3U4xovOV+1SI+2tr
         pwlzQ5HMj4jwedT0+JkzrE7pOUklxPPvE+zha5PiLBdnp9fdCzcgXVO6gCrBOr3IWtHE
         GE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yZFpg7ax7MBD5PWakIofsXlpjELYpxyrFKD/RpQ6CO8=;
        b=sYTT95UrCTUNrw5ExSbadNyeESeCBiFUvlrcaqWug6BM4OeWHZRmGBWDlX8npjct1X
         o+ZCF3xTY0KjlN10bZwFwSgp4nc2IFW0pgOKRNXlNcBNv8gZIBecJQhwfIkAAb+Bfe9e
         zJq33p8o/nJCUlbMCEsTYWs2kd7egIooyzbZ25P3DNBNWMCTX465eTB2fcEVfJpct71z
         UeZCNJpeIMhO9aKCr9slAr8GzcP5RtCPYtbf/AIUZ5Zh5OyQbFRZqN27IwLAbQMTbWlC
         6AWRY+wz2f7hWUQUk2HwrcQDvbx39tD0vNq/UU4jL6wJSp8IGHmUA8quS1n7ii+JbbVL
         GY6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s7H3gcnfxO6YmRvw4jhJeh6qlB541VoXbnGwSB260Gu+2Su0B
	QDmD9lG62h/68hdTHXsksI0=
X-Google-Smtp-Source: ABdhPJz0JoKL1wNfspC9gN54I3kD0CCKHiQLXxIEvnDHw3JrUsG/5S8q+fa1PO2Bq3F/zNOfli0VFw==
X-Received: by 2002:a17:90a:4b0d:: with SMTP id g13mr23972231pjh.77.1623135460980;
        Mon, 07 Jun 2021 23:57:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3383:: with SMTP id ke3ls4067336pjb.0.gmail; Mon, 07
 Jun 2021 23:57:40 -0700 (PDT)
X-Received: by 2002:a17:90a:4205:: with SMTP id o5mr24789272pjg.140.1623135460334;
        Mon, 07 Jun 2021 23:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623135460; cv=none;
        d=google.com; s=arc-20160816;
        b=n9f4N4//UPOcO8ksm4bFIOEzvjbkb2BEiraTQgmE0fKaWT+8B6BzD6/6XS2nFlfpto
         HqlMFbUHEj9jNjzzSmImIGCJ9b7IwBP6s1cpwHLY6wCAqZUwyJ781lHravpMDixbfJGp
         9T31Kr4Wmx2lkq5bj8/N+AAXbq/VkTf3qX3OyvV/affu77TbeXbyiaRcKfAeqGZaOIyN
         TzONVGvGQpwNCFmk9UqvuGm5qWk5RO2pcEhU2bGCLDYHRLGV6t3ei1qt1lMBeONBKvE1
         nxG/UJdEMzfL2xHQZMWfUJWnLuGVB2iX95JJhou65Q29EmMt9LCpSCTsv4LAnF429vB2
         8CgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OyG4YkHI+LcN9A2uurGgvZn+yS9CfaamJ7nOHj74dTI=;
        b=Rcc0h0ZOycNUb5SY3bd3DmFmriEdD9nw4g1qQQF7y2mtzGpcdVMAy4EgA4IPqGik2P
         fXfmgZ6wf2CbeGb7lwbNDhglVSEUmdKIgei7JnKWdkbvs+KfNm+ks4JJrvyG3gYNPxaQ
         SMm22Gf0F89BAYb/zrfWn8GoKX6Ev9XzU5tnKIrMtjEGZh793oTlxSngmfD2cirYyca0
         kdJsqMvj0qhh0G5mbj4AtI8piQS91tAHoxebe//ECFzSFVBYKXwWRU4Fj/n9R4YDQnsD
         IX1JZ8txzich+khZL4WVwb2XsyXzO+sdf9Y6GePlSZyYLrlhLokfqVEaiwusfHWNrN33
         T5hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oukDiFIK;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si1580723pjv.2.2021.06.07.23.57.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 23:57:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DE2C6124C;
	Tue,  8 Jun 2021 06:57:39 +0000 (UTC)
Date: Tue, 8 Jun 2021 09:57:36 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Parav Pandit <parav@nvidia.com>
Cc: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
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
Subject: Re: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Message-ID: <YL8U4JqzyHl24Rio@unreal>
References: <cover.1623053078.git.leonro@nvidia.com>
 <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
 <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
 <YL74KtkVOxVDT5u6@unreal>
 <PH0PR12MB548195F3EC7E96C1ED2789ABDC379@PH0PR12MB5481.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <PH0PR12MB548195F3EC7E96C1ED2789ABDC379@PH0PR12MB5481.namprd12.prod.outlook.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oukDiFIK;       spf=pass
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

On Tue, Jun 08, 2021 at 05:32:56AM +0000, Parav Pandit wrote:
> 
> 
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Tuesday, June 8, 2021 10:25 AM
> > 
> > On Mon, Jun 07, 2021 at 01:29:58PM +0000, Parav Pandit wrote:
> > >
> > >
> > > > From: Leon Romanovsky <leon@kernel.org>
> > > > Sent: Monday, June 7, 2021 1:48 PM
> > > >
> > > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > >
> > > > Now that the port_groups data is being destroyed and managed by the
> > > > core code this restriction is no longer needed. All the
> > > > ib_port_attrs are compatible with the core's sysfs lifecycle.
> > > >
> > > > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > > ---
> > > >  drivers/infiniband/core/device.c | 10 ++++------
> > > > drivers/infiniband/core/sysfs.c  | 17 ++++++-----------
> > > >  2 files changed, 10 insertions(+), 17 deletions(-)
> > 
> > <...>
> > 
> > > > diff --git a/drivers/infiniband/core/sysfs.c
> > > > b/drivers/infiniband/core/sysfs.c index 09a2e1066df0..f42034fcf3d9
> > > > 100644
> > > > --- a/drivers/infiniband/core/sysfs.c
> > > > +++ b/drivers/infiniband/core/sysfs.c
> > > > @@ -1236,11 +1236,9 @@ static struct ib_port *setup_port(struct
> > > > ib_core_device *coredev, int port_num,
> > > >  	ret = sysfs_create_groups(&p->kobj, p->groups_list);
> > > >  	if (ret)
> > > >  		goto err_del;
> > > > -	if (is_full_dev) {
> > > > -		ret = sysfs_create_groups(&p->kobj, device-
> > > > >ops.port_groups);
> > > > -		if (ret)
> > > > -			goto err_groups;
> > > > -	}
> > > > +	ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
> > > > +	if (ret)
> > > > +		goto err_groups;
> > > >
> > > This will expose counters in all net namespaces in shared mode (default
> > case).
> > > Application running in one net namespace will be able to monitor counters
> > of other net namespace.
> > > This should be avoided.
> > 
> > In shared mode, we are sharing sysfs anyway and have two options to deal
> > with the port properties (counters):
> > 1. Show them in all namespaces as being global to port which is shared
> > anyway.
> > 2. Show them in init_net namespace only and applications that were left in
> > this namespace will see not their counters anyway.
> > 
> > Why should we avoid "item 1"?
> Because it is incorrect to show port counters updated by application running in net ns 1, to show to application running in net ns 2.
> Once/if there is per netns counters exist, than those counters can be shown using more modern rdma stats command.

ok, I see your point and have no strong position about it.

Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL8U4JqzyHl24Rio%40unreal.
