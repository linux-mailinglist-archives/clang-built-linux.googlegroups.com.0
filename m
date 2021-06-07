Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBT7Y66CQMGQEPGAVRWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5480839DA7B
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 13:00:33 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 30-20020a630a1e0000b029021a63d9d4cdsf10020613pgk.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 04:00:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623063632; cv=pass;
        d=google.com; s=arc-20160816;
        b=f5DQqbzExjd/1wFbsrFGxAorBJO9jUsPuor+6jtXWiCtgSYgfo/yUvWQQlXIOqysCp
         9QqhQMmGZ1bNy3Dd0Ehu/Y0mwLawjFmF/23/F4sg/B0ZvA2M6K8+bYlVHD/x8SNfvr76
         2U3vsNUEZ18IrSEzQagoMOD3kYMy42GFchQFz1ZC+PH50UOpl5d/qh5JCJUk4tuRMXR4
         mByoT00QPDFORmyeg5QwYmuEl2NTmSr84oCBhO7wZOK2bndxIP5LOBqV09aI1ofBJ9f0
         DXenVN9tMHUr6tIpUUyhW5CEtTWzx7nUryRBGGANx3esh5lD/xc/5BXG130P2bRPbEsu
         JV3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8m7/K1nCCtQUFRtXKg69uVcRmAEkLWt0WWKoXzg8suU=;
        b=VgadTHC9WGSIk+pBj3+68zOlS5z0vHGC8X6W1MFLV1f/v1ZkD5VQvnVVsAEIbrNst1
         AMEYX9xxq6MAcGfPgvSLVwc1j5xvzDxAG7Hvz9htvj6x79A7f9jdsO2SzfvcwmExmhDT
         +LjU8Fl3T77kW9biCX96RW2Tco48ujb0XZuDCZSSG/5Pq4YG720qr6lmGRucJEJBQFNL
         dqCMHK+pA1dGcP/anKYsUNkg+8+POh5Ivt43spIvNkFrDnx8nZg2qz0BKIVC7E4NSCeQ
         EhkeMzhXm8IMtiT951F2HNR+p8BV+JHI0jBhtCbbLv8eqwO6EduZSz5+1vdTRZH31z12
         T17g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UeoyKq7n;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8m7/K1nCCtQUFRtXKg69uVcRmAEkLWt0WWKoXzg8suU=;
        b=kAAY7O1Id68+azLtPT0+oBZja1e4m5QWhdbhPD6/pOxwCxsNC7tXOoGJwA1PmemY1e
         Kg/F3VcRuH0scWOHIPhYxnz7y8tXdplmYfKZDwLwS7+8ZUx0yUN+93x0gepu8oFT5peU
         P3QPcs8F3MPHK5NRdtJzK1dg9PBx+hVkuhTncWz+gj1jCPNc6vJTd9W8wUJmX0gbtVXQ
         Qy+hh4cQFhaJnxN4HmVBhRxMlqQW8Uipv0nujgVg1c+GFga/CARtJthj3r8HzlLUVMm6
         pZx4Jm5cwLSZrnI9fxJs4l2JmPh9pXo5Xl0ttATIMQkTUjy/rpqzEbOAq+cxnRRB+FY5
         v+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8m7/K1nCCtQUFRtXKg69uVcRmAEkLWt0WWKoXzg8suU=;
        b=I2wi7cD97EHlZog2J/lfN0aZitZA68vgNUqiSW30+ONlCgXfwCf4JAWRLd8BUiPg40
         NFVbP/JuGNu34nKaMEIE2WRL7kOGdZRTxdmSflgZNdIYtXjoCcwIlTwrCgDLR/mksWfc
         SqK5IHrwYECi+PLhZ81965MN9iBRG+whu6Il+bCM95hVnDBfwt1vxGEQvMJBf1tahGUH
         bSc6dl485+xdtRvfnlED6O0Wm0RRB5gxv3jvK2diHteoLuSuMsMzSi43E3Qc8pLSOXTH
         CzUhHaO29c25pS4VmMYV7hr5FxMDDNShlmZZeVHuE7V8o74CX0iV5YS/XOU/7cymsRFA
         89Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cH+mVVulCiGvIRCvHp2vsO0FrgMMpvPsQAq8XfRqlubmLOs3f
	m1OX5pNOkWMFHlGBnBosjqk=
X-Google-Smtp-Source: ABdhPJyWa+r2/t7jJIi/5Pp2tnS1dci08qsnjVtjhCEEcF8g3Uv6dbJyt321iTxED+g+3uZ7SpoXfw==
X-Received: by 2002:a17:903:4106:b029:10d:22fa:13d4 with SMTP id r6-20020a1709034106b029010d22fa13d4mr17405553pld.78.1623063631882;
        Mon, 07 Jun 2021 04:00:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb11:: with SMTP id u17ls3290337pjr.1.gmail; Mon, 07
 Jun 2021 04:00:30 -0700 (PDT)
X-Received: by 2002:a17:90a:de15:: with SMTP id m21mr12865439pjv.87.1623063630110;
        Mon, 07 Jun 2021 04:00:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623063630; cv=none;
        d=google.com; s=arc-20160816;
        b=G4/wO/bFQlnfY5I9pAejG4zUCdXqFlPOGPxACcLMUd7FfYoR6b9orYvNCrF+nHhqUI
         qkkTgEAYoEggwD5BeRh7O2unrtcJwgJoJ5sNzvkfrbgWoCCKdoJ3/kTHpa1AF6O2YFfZ
         d6hPZDdNaXlJ3511AOExkaTqjl8ePM+vfmDljPclkAmxs/AwZc7oxvDX/z9mXlnZRw2i
         7oCvUluG+2nDtaME2FV2KnLyZM0vFTN90e1kQHDsvt/IBeVLIZKIuZsAVmC1xrTQHIYP
         DLfQ++E13FKnzsOCGK+0gctupinJQ/FfKn7WGdERGSD7zz+D9N8sruFXR8HhiR/rOOhJ
         nS9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xLL3EYvZrbVc0g06N2Q6tkIZP7m96MwTzRhwnK6TsM8=;
        b=btpNnOr/AP9oSQ67ocTdQrNtGwMifUMbs2P9bOoePnByAj6/DxCxEkM7JPXvjGNypA
         /4pjcQ9BfA5gWvPWyIpp1ijBGX9amiejquQMm5VWMN9xE33YaeiLXPvI2s9UvWu/iVvH
         Yx/9owWYWMs2ji8IWyBZaYBOyrC2K2uEjb14uGWGioI5oauEusW3wQ+MnLEy3U+r8Jx7
         eNJnR1o3Mb/8jdyeIXLQrHsHCr7ZVbuQfIdRzBx6vST9enjFNTRm5LCw+3JR8tjOScjg
         JqV5eJyPxcUfuI1/XFZ+XdtkLyXLSZIT4wUaEDOX7/QRcPDoAZXOxa4145X6s/jedECC
         Q8Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UeoyKq7n;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j15si836028pll.3.2021.06.07.04.00.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 04:00:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25AAB60FDA;
	Mon,  7 Jun 2021 11:00:29 +0000 (UTC)
Date: Mon, 7 Jun 2021 14:00:26 +0300
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
Subject: Re: [PATCH rdma-next v1 02/15] RDMA/core: Replace the ib_port_data
 hw_stats pointers with a ib_port pointer
Message-ID: <YL38SpQ3+mXAvp67@unreal>
References: <cover.1623053078.git.leonro@nvidia.com>
 <6477a29059b1b4d92ea003e3b801a8d1df6d516d.1623053078.git.leonro@nvidia.com>
 <YL3zmzSTJ8nE1yr6@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL3zmzSTJ8nE1yr6@kroah.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UeoyKq7n;       spf=pass
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

On Mon, Jun 07, 2021 at 12:23:23PM +0200, Greg KH wrote:
> On Mon, Jun 07, 2021 at 11:17:27AM +0300, Leon Romanovsky wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > 
> > It is much saner to store a pointer to the kobject structure that contains
> > the cannonical stats pointer than to copy the stats pointers into a public
> > structure.
> > 
> > Future patches will require the sysfs pointer for other purposes.
> > 
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/infiniband/core/core_priv.h |  1 +
> >  drivers/infiniband/core/nldev.c     |  8 ++------
> >  drivers/infiniband/core/sysfs.c     | 14 +++++++++++---
> >  include/rdma/ib_verbs.h             |  3 ++-
> >  4 files changed, 16 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/infiniband/core/core_priv.h b/drivers/infiniband/core/core_priv.h
> > index 29809dd30041..ec5c2c3db423 100644
> > --- a/drivers/infiniband/core/core_priv.h
> > +++ b/drivers/infiniband/core/core_priv.h
> > @@ -378,6 +378,7 @@ struct net_device *rdma_read_gid_attr_ndev_rcu(const struct ib_gid_attr *attr);
> >  
> >  void ib_free_port_attrs(struct ib_core_device *coredev);
> >  int ib_setup_port_attrs(struct ib_core_device *coredev);
> > +struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev, u32 port_num);
> >  
> >  int rdma_compatdev_set(u8 enable);
> >  
> > diff --git a/drivers/infiniband/core/nldev.c b/drivers/infiniband/core/nldev.c
> > index 01316926cef6..e9b4b2cccaa0 100644
> > --- a/drivers/infiniband/core/nldev.c
> > +++ b/drivers/infiniband/core/nldev.c
> > @@ -2066,7 +2066,8 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
> >  	}
> >  
> >  	port = nla_get_u32(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
> > -	if (!rdma_is_port_valid(device, port)) {
> > +	stats = ib_get_hw_stats_port(device, port);
> > +	if (!stats) {
> >  		ret = -EINVAL;
> >  		goto err;
> >  	}
> > @@ -2088,11 +2089,6 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
> >  		goto err_msg;
> >  	}
> >  
> > -	stats = device->port_data ? device->port_data[port].hw_stats : NULL;
> > -	if (stats == NULL) {
> > -		ret = -EINVAL;
> > -		goto err_msg;
> > -	}
> >  	mutex_lock(&stats->lock);
> >  
> >  	num_cnts = device->ops.get_hw_stats(device, stats, port, 0);
> > diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
> > index d11ceff2b4e4..b153dee1e0fa 100644
> > --- a/drivers/infiniband/core/sysfs.c
> > +++ b/drivers/infiniband/core/sysfs.c
> > @@ -1031,8 +1031,6 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
> >  			goto err;
> >  		port->hw_stats_ag = hsag;
> >  		port->hw_stats = stats;
> > -		if (device->port_data)
> > -			device->port_data[port_num].hw_stats = stats;
> >  	} else {
> >  		struct kobject *kobj = &device->dev.kobj;
> >  		ret = sysfs_create_group(kobj, hsag);
> > @@ -1053,6 +1051,14 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
> >  	kfree(stats);
> >  }
> >  
> > +struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev,
> > +					   u32 port_num)
> > +{
> > +	if (!ibdev->port_data || !rdma_is_port_valid(ibdev, port_num))
> > +		return NULL;
> > +	return ibdev->port_data[port_num].sysfs->hw_stats;
> > +}
> > +
> >  static int add_port(struct ib_core_device *coredev, int port_num)
> >  {
> >  	struct ib_device *device = rdma_device_to_ibdev(&coredev->dev);
> > @@ -1171,6 +1177,8 @@ static int add_port(struct ib_core_device *coredev, int port_num)
> >  		setup_hw_stats(device, p, port_num);
> >  
> >  	list_add_tail(&p->kobj.entry, &coredev->port_list);
> > +	if (device->port_data && is_full_dev)
> > +		device->port_data[port_num].sysfs = p;
> 
> You are saving off a pointer to a reference counted structure without
> incrementing the reference count on it?  That's brave, and really wrong.

This is done to ensure that device->port_data[port_num].sysfs is not set
before "p" is properly configured. From reference point of view  "sysfs"
is equal to "p" and the latter already initialized.

Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL38SpQ3%2BmXAvp67%40unreal.
