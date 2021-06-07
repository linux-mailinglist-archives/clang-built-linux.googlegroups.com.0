Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBO4D7CCQMGQEYHCO3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450539DB2B
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 13:23:40 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id k16-20020ae9f1100000b02903aa0311ef7bsf9566068qkg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 04:23:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623065019; cv=pass;
        d=google.com; s=arc-20160816;
        b=R5MHytQLworWazuYqMhVuXBmBKSlpkdQ3HKkB6hdckkfoEQU/BOEC9kQOeKr1O0tG4
         yj3txjIjxlAKBup10Kvcs0Uj0+mJ5/6aqdwQeyoqzP4L46+TUUgRFoCNwFpYyV/u+cCl
         V2cqfe75RCJ4RuG8HgsT/QPi960cIqFgOnKMEBxC1jDrJYHQAvL1Zj45KFvZeAhtOBt7
         lghdQ015+RMfe420V34GIrFbw1ZB0WktQYVZYFoUziyzBMEKyE3VFrtKMayG2+PW2HiO
         gTPzsqBRUVpZG9CTg3rxdXQO4TM5eauQXCfvJBQNW0Bz7HIhPktStrdBkRF0IZqbCHsl
         wBbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=q2U/nR0XKNMGEEEXS3Et0LSKWkK51O0qcmT+IxrOnuM=;
        b=gUcaQIOcxSstyd5Wb/VtwOLMvO3yt9wGddqVsyoUW985auAqZLCrG9bevrc7JrVVdd
         ypj+VnMRDi30+ImOWoi9g8sVfTjW6ec/36/E6/why7VWKYkMFHbVr+vWNFyc1rY7u+zO
         Cayjl0VbhR4nDz32I3wfJT5gP+LJXCU66IiwrEGWaF9mR8z68TOSoNPrgthR5vHM9kx1
         vscE9xKf42YSPZAupVnqkm+TlrrnO6W9p90DYj5N4lcplqXLPwmGPOf/R3IcGCWSXqFS
         bpMzFDAlOP6hLpjXS6ra3ftTjv0VqMPdA3BKFaxRXKycfDH0aAz3Rz3wv4JUSXsAQ9v7
         8wPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=sIay0Q6t;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q2U/nR0XKNMGEEEXS3Et0LSKWkK51O0qcmT+IxrOnuM=;
        b=RPyRp5JtttE/q8fOzXKz/gAliXFDWwwPyFpi/6tP90uJgODYCqwnIsYN5G7l14CWv0
         l2OzwBJc28MxuIXnkpgsNLrfCOhwga2iDvlSkKHMTHORnFjNhvFjp8T89nkXF3cPFSyD
         j/3qCpqs+wNW4l9y2zyTPXy22kbFRH8yXSJstHxC/DbTFElzm3OMR0eOwS9YGs+OEQOB
         YlM6MJ1o88qDizEPZc5HBCKHSu1jqxlMvbdIv1g12MDIxr+wuOPE/OWF+VjR830Hcw1l
         SovIraombgwouSEppR5q8AA2X0pPEucpPrQUPZlZ9wZqDMK15CUstA49CTD6kpO7EHa/
         h32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q2U/nR0XKNMGEEEXS3Et0LSKWkK51O0qcmT+IxrOnuM=;
        b=ZpztuM6C3C5WvBc3wwjQNfl8/0AOLXSbblmyukKSqF+lUszQtnNcC6eJ76ERLJq5lk
         nvG0i08YB2QTWwEN/P3PJhkuOl6G94931sKguDcewNfCdFbwComSzYUd8o4+cU80VNn+
         S780MidsnYxDvnmz3cNYoEg3FOe7VgI/F56opO+S+Tp6WYWsJXyS6AHBA0Azjx8dpgdx
         owKAGGfKVjbStKRQZ63XlryRWuMimi4YzIGryheNzNUxy5KxDlILgQ3J5eNdDtAphDAr
         j81J+bh6eU1F+k7MNv6FEe061DhUEeZCOVS5RNchcfg/RXHm2/sh5wq5HDGvFy+pnJzA
         IKJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HR4et5nX0xljiwEs0X5/TC16NojEMqGlDQsG+F9iEJ40bEl7E
	mkuBX3OvB4jKmwCHs607m9Q=
X-Google-Smtp-Source: ABdhPJzjOBfD+8wrmnagAr0yyERpnMElGSpM+lTQuJ4nzEYXhZaxupBJrE4XKhpcveUodz8UIrVzbw==
X-Received: by 2002:a05:6214:207:: with SMTP id i7mr17597555qvt.10.1623065019116;
        Mon, 07 Jun 2021 04:23:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:22d3:: with SMTP id o19ls8342798qki.3.gmail; Mon,
 07 Jun 2021 04:23:38 -0700 (PDT)
X-Received: by 2002:a37:5847:: with SMTP id m68mr15717455qkb.111.1623065018678;
        Mon, 07 Jun 2021 04:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623065018; cv=none;
        d=google.com; s=arc-20160816;
        b=VwmGHiuqo6tTnU15SWHuAqSiVnTc7d68FCtn8Os+9CBi8DL1Psl8U8ySfup+bznGXU
         wkf1R7CZZBwh5sxLZS7ltTa97Gj0hYgsvtaSdPWjJT9Li2ueAcft1bUMGcNGTLOiT35+
         XtK1VAZqCdGmv5zNXq1OfkndAYLqK9EXQux+GplfwwulOZFSjkddlqJo7vusUw1+/3f6
         TCK0oFm0rL4onbn8cLAX5w8XQex+XE0lSxa9yen2eF+d8/SiutX4HrF+eFmcLSVrF5e7
         NU0SQN6+R1dOGx4OJqsGk8J0kOSynBBT1b44zeCfN3XEKEMJ8iZ3mq+ivmrgeNziWCrh
         3XkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sjhRJsoQWK6TbDFmtC3itfZTlhL232IxaKxgOffhHTE=;
        b=TUReqnbCy/etnlNN21xStJHZ+LdqBVGoyeoZJUTYVLGo46pjvXGTNYaaS3DXxoMQJl
         pbQdbj9EGnhLoa3Kk4Z+4Jtgy6L5IpnhEE5+mIE5TxUqxl7ZrZLO96dnP2f+9mbh09KN
         ySJtPpBA7Eh/9gDovrUvY/UcHbigYrUwORJ43QO5JzckWZCiWQswm5+McIGutAm9kQrK
         atkAfQlkPIuNur8epgKnCcO0/xggWtfzU1rTK2LnZMGz4yE5eR5Fx38hDq3B9PLyeLZD
         GYXQ6nSfYEPIMdozF2HHgJrmB+cIwiznSU/Av6w+hcwNr/hiKeq1Vk+DOZh+9WxVijsC
         fG6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=sIay0Q6t;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x24si1345374qkx.3.2021.06.07.04.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 04:23:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3216F6101A;
	Mon,  7 Jun 2021 11:23:37 +0000 (UTC)
Date: Mon, 7 Jun 2021 13:23:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Leon Romanovsky <leon@kernel.org>
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
Subject: Re: [PATCH rdma-next v1 02/15] RDMA/core: Replace the ib_port_data
 hw_stats pointers with a ib_port pointer
Message-ID: <YL4Bt3im9z36SOq+@kroah.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <6477a29059b1b4d92ea003e3b801a8d1df6d516d.1623053078.git.leonro@nvidia.com>
 <YL3zmzSTJ8nE1yr6@kroah.com>
 <YL38SpQ3+mXAvp67@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL38SpQ3+mXAvp67@unreal>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=sIay0Q6t;       spf=pass
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

On Mon, Jun 07, 2021 at 02:00:26PM +0300, Leon Romanovsky wrote:
> On Mon, Jun 07, 2021 at 12:23:23PM +0200, Greg KH wrote:
> > On Mon, Jun 07, 2021 at 11:17:27AM +0300, Leon Romanovsky wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > 
> > > It is much saner to store a pointer to the kobject structure that contains
> > > the cannonical stats pointer than to copy the stats pointers into a public
> > > structure.
> > > 
> > > Future patches will require the sysfs pointer for other purposes.
> > > 
> > > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > ---
> > >  drivers/infiniband/core/core_priv.h |  1 +
> > >  drivers/infiniband/core/nldev.c     |  8 ++------
> > >  drivers/infiniband/core/sysfs.c     | 14 +++++++++++---
> > >  include/rdma/ib_verbs.h             |  3 ++-
> > >  4 files changed, 16 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/infiniband/core/core_priv.h b/drivers/infiniband/core/core_priv.h
> > > index 29809dd30041..ec5c2c3db423 100644
> > > --- a/drivers/infiniband/core/core_priv.h
> > > +++ b/drivers/infiniband/core/core_priv.h
> > > @@ -378,6 +378,7 @@ struct net_device *rdma_read_gid_attr_ndev_rcu(const struct ib_gid_attr *attr);
> > >  
> > >  void ib_free_port_attrs(struct ib_core_device *coredev);
> > >  int ib_setup_port_attrs(struct ib_core_device *coredev);
> > > +struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev, u32 port_num);
> > >  
> > >  int rdma_compatdev_set(u8 enable);
> > >  
> > > diff --git a/drivers/infiniband/core/nldev.c b/drivers/infiniband/core/nldev.c
> > > index 01316926cef6..e9b4b2cccaa0 100644
> > > --- a/drivers/infiniband/core/nldev.c
> > > +++ b/drivers/infiniband/core/nldev.c
> > > @@ -2066,7 +2066,8 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
> > >  	}
> > >  
> > >  	port = nla_get_u32(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
> > > -	if (!rdma_is_port_valid(device, port)) {
> > > +	stats = ib_get_hw_stats_port(device, port);
> > > +	if (!stats) {
> > >  		ret = -EINVAL;
> > >  		goto err;
> > >  	}
> > > @@ -2088,11 +2089,6 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
> > >  		goto err_msg;
> > >  	}
> > >  
> > > -	stats = device->port_data ? device->port_data[port].hw_stats : NULL;
> > > -	if (stats == NULL) {
> > > -		ret = -EINVAL;
> > > -		goto err_msg;
> > > -	}
> > >  	mutex_lock(&stats->lock);
> > >  
> > >  	num_cnts = device->ops.get_hw_stats(device, stats, port, 0);
> > > diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
> > > index d11ceff2b4e4..b153dee1e0fa 100644
> > > --- a/drivers/infiniband/core/sysfs.c
> > > +++ b/drivers/infiniband/core/sysfs.c
> > > @@ -1031,8 +1031,6 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
> > >  			goto err;
> > >  		port->hw_stats_ag = hsag;
> > >  		port->hw_stats = stats;
> > > -		if (device->port_data)
> > > -			device->port_data[port_num].hw_stats = stats;
> > >  	} else {
> > >  		struct kobject *kobj = &device->dev.kobj;
> > >  		ret = sysfs_create_group(kobj, hsag);
> > > @@ -1053,6 +1051,14 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
> > >  	kfree(stats);
> > >  }
> > >  
> > > +struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev,
> > > +					   u32 port_num)
> > > +{
> > > +	if (!ibdev->port_data || !rdma_is_port_valid(ibdev, port_num))
> > > +		return NULL;
> > > +	return ibdev->port_data[port_num].sysfs->hw_stats;
> > > +}
> > > +
> > >  static int add_port(struct ib_core_device *coredev, int port_num)
> > >  {
> > >  	struct ib_device *device = rdma_device_to_ibdev(&coredev->dev);
> > > @@ -1171,6 +1177,8 @@ static int add_port(struct ib_core_device *coredev, int port_num)
> > >  		setup_hw_stats(device, p, port_num);
> > >  
> > >  	list_add_tail(&p->kobj.entry, &coredev->port_list);
> > > +	if (device->port_data && is_full_dev)
> > > +		device->port_data[port_num].sysfs = p;
> > 
> > You are saving off a pointer to a reference counted structure without
> > incrementing the reference count on it?  That's brave, and really wrong.
> 
> This is done to ensure that device->port_data[port_num].sysfs is not set
> before "p" is properly configured. From reference point of view  "sysfs"
> is equal to "p" and the latter already initialized.

That's fine, but again, you are saving a pointer to a reference counted
object, and then later using it, without ever having properly
incremented the reference count to assure that it really is going to
stick around.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL4Bt3im9z36SOq%2B%40kroah.com.
