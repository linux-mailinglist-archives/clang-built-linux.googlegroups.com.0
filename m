Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBH7H66CQMGQEXOTUMQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F03039D98B
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 12:23:28 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id f15-20020a9f2bcf0000b02901f8fe91b89csf5601238uaj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 03:23:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623061407; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rmw3qIHUyYJX8z7glwbCiWYjOPNuzf6D/t4u22R80405WYCr0ugTeX935gxUfboud2
         XUs50xwJB4uQg2EdQ1MO3+99lFEvjeVNFO9FMilaZrVXhLysxpKHz/CDM4zZapCTkdpQ
         oel0ozRYILB8c6ntnwlhLeIz3yImZusjuJM8GpZP7flu28GL2FuFDBqOlcSvimSOj8fZ
         dKujubkpF9MrljrqrDv1dg8RizdRXJ3/H7a4rx03sxSFMT5hbsflCyTMehOEJJKeXfkb
         XxQVSCo0DiGtEAejQfe7uylfHlP0e/mOy2BWrFnzxEoLwbgltp9tUUnRA9ghhrv6gbjO
         mN3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=42hfTgj4wXolKlaS4AyxmGmKOOHApcGgIo5TcHntMPk=;
        b=j2/Vi21/p+vZae8G8TxTeaCDfUCkjoBjZdOHb+pkwTp8pvLRBQdOloYUox2oHrd08p
         xelOc6ux/z5JK1QrgacnIjJqrqzYZpWxEeBLx6S01ylz/7UrWd34vrupsvPBkuQRLzMw
         C9QWctJ333gsQicwZnA3bz7IXjvG4V0eBh7ataAPqsyejj+ny1/s7/zggdUHyEXyfMPS
         SygXoh786aEBmLuXA3MZbpB9X3ZWtmvpKYxCVgqS+dSyWBc/HK4yyLekSWX68ju8Jx3A
         Swh/r/J8B6IFNUeCHykWb2NGGhyVnDe0Iu7v628/XIuaHy14wIFLo4970SV/789NKlIF
         2Y+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GCAbd4ne;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=42hfTgj4wXolKlaS4AyxmGmKOOHApcGgIo5TcHntMPk=;
        b=le1aDoNpHoDjvDLBgKRawiCVpNG8kkFv80PzXdJxmXGRPPpjRmNLZVmErTaAyVfgg6
         LQdNeUmhQJEJqACqoou2jtZ2vJvSHispG6M1K1J1P7/+/AWdpVCreZfUXxXnlMIlsCxm
         KnBCzEXCIvBsTnPZaC3txr+PW4H1k3U3/W/lJt49zu4tgfYCxJ5bQpDOOOKwP4/RKofK
         wWgLbr9EBsYNc6dON0dyiiRmKJzdqMzrcwjJ634E00nG0yXBuSRkcGVbAf64qg5QsHf6
         1oE2prp+XhEAcatefI/Uv7iaEYyCNCTHvaqKqYqDmUwD+5Z4TIeVbIQzIS/VWZT/oCwx
         ox6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=42hfTgj4wXolKlaS4AyxmGmKOOHApcGgIo5TcHntMPk=;
        b=nDgzJatxO5wHzSMYmrU/RJpPRPhl0wG8vzOfNlHgVq76qkWG0V/A1SIdHBp0zprmhU
         ogXm5FqAUAVQXobq0zw/nBXd9p6UQ2lrlsdoStn44alLOJpJ1UpguWY4PomiH7EY3W3N
         kZBTGoNjSicmzeZDr6/7gwqwE+S20KztCsaOFGuTHrX4Ut5MUM0yBBrHZZmFs3uB8HJm
         NqHvD72pRsCD0X3D17kURz19mnL0wMpp1UbpKnXbu7Jp9bmnC3yqk+b8D4of/HLDarR/
         XJOs9EuEKS+aEOh8KJwr+VhSjThnqYcFEd0Z7EQAm6Nysuje3NYDmUoDveJRnai7rdwV
         v/mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533poSaGrWDPEtfUbRKrKkgv55vLlsXVA09qyj7PmOkJ/azCcg1q
	Lfaawv3i4kJKjuQAE95GWoE=
X-Google-Smtp-Source: ABdhPJzmqA/sKXippRvZZphVCbMlxj/DObn8Md8wdN6Wi+C8s8IDT80qo1LmIuu67oGxIaV86lFnrA==
X-Received: by 2002:a67:cd08:: with SMTP id u8mr155706vsl.18.1623061407752;
        Mon, 07 Jun 2021 03:23:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1527:: with SMTP id o36ls692363uae.3.gmail; Mon, 07 Jun
 2021 03:23:27 -0700 (PDT)
X-Received: by 2002:ab0:6346:: with SMTP id f6mr8545730uap.77.1623061407212;
        Mon, 07 Jun 2021 03:23:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623061407; cv=none;
        d=google.com; s=arc-20160816;
        b=r3Q/3+frxlnfQfjYVtn2F964+AXVLYQMfLEnwVty39EUHmVawWFZMOocFH6+OD3obz
         OZspP1r2hjNxa+A62JeF7ztxRc+/W+ZJTz5+0+uE+6FpOy42riSftEbmQfNrrCaR9y+C
         zzS0GslJW5ttc5hmy4hURIDgMQ/Y9sPV4bIZ2r9vQT7ktoh8VWU9CnAeCO1bfS68zuip
         lysm4AqWAHdFUK1Dqf3TGZBWUKDHI96H1z4qbi+c8RKO9G5vfF6P/MgAhoiX2+3jcDr9
         gc5tsPCY0UHhIayG+VIIdFVKgNXTeMhzgQOGQRSyXil6nd4bMquXVCsVDR6CftcSeJze
         qImw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2XM5P1bSSYeUoiC8Zo6b6k6g8MexNA6mAV4KMUAatKc=;
        b=OMcjVfg7XHCPGheimAhx1XWjn/ck7R/TQXCoYUimHWi2LnuD7eRUUeYU2OpoZeR+bX
         uecydm2uKjxDxMVGMFSlCBlxaUJyWxwmXsc0Nue47jOB1eBLdd4D0fqUiMKJLxya0agZ
         U4s3sRDUqhvWYVsSsyUXZEJMifXFdEpn26e0BgxCcN+PfL5WLl+ZbptoePYDUhz6A1b+
         OZKfasJASWJ2Ugvb2LkXACTJTiixU+FSbd9HWZ5vIu0qUuM5zouU0LXJcEItuJWUWZa2
         Cg931n0nLQfdEGBbjokQUnkMZ1jdHTCQH+5+EqhbHZYFf9PvbfvQb26alFzEgGBLG2De
         gvlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GCAbd4ne;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z26si1469008vkp.3.2021.06.07.03.23.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 03:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8723D61164;
	Mon,  7 Jun 2021 10:23:25 +0000 (UTC)
Date: Mon, 7 Jun 2021 12:23:23 +0200
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
Message-ID: <YL3zmzSTJ8nE1yr6@kroah.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <6477a29059b1b4d92ea003e3b801a8d1df6d516d.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6477a29059b1b4d92ea003e3b801a8d1df6d516d.1623053078.git.leonro@nvidia.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=GCAbd4ne;       spf=pass
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

On Mon, Jun 07, 2021 at 11:17:27AM +0300, Leon Romanovsky wrote:
> From: Jason Gunthorpe <jgg@nvidia.com>
> 
> It is much saner to store a pointer to the kobject structure that contains
> the cannonical stats pointer than to copy the stats pointers into a public
> structure.
> 
> Future patches will require the sysfs pointer for other purposes.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/infiniband/core/core_priv.h |  1 +
>  drivers/infiniband/core/nldev.c     |  8 ++------
>  drivers/infiniband/core/sysfs.c     | 14 +++++++++++---
>  include/rdma/ib_verbs.h             |  3 ++-
>  4 files changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/infiniband/core/core_priv.h b/drivers/infiniband/core/core_priv.h
> index 29809dd30041..ec5c2c3db423 100644
> --- a/drivers/infiniband/core/core_priv.h
> +++ b/drivers/infiniband/core/core_priv.h
> @@ -378,6 +378,7 @@ struct net_device *rdma_read_gid_attr_ndev_rcu(const struct ib_gid_attr *attr);
>  
>  void ib_free_port_attrs(struct ib_core_device *coredev);
>  int ib_setup_port_attrs(struct ib_core_device *coredev);
> +struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev, u32 port_num);
>  
>  int rdma_compatdev_set(u8 enable);
>  
> diff --git a/drivers/infiniband/core/nldev.c b/drivers/infiniband/core/nldev.c
> index 01316926cef6..e9b4b2cccaa0 100644
> --- a/drivers/infiniband/core/nldev.c
> +++ b/drivers/infiniband/core/nldev.c
> @@ -2066,7 +2066,8 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
>  	}
>  
>  	port = nla_get_u32(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
> -	if (!rdma_is_port_valid(device, port)) {
> +	stats = ib_get_hw_stats_port(device, port);
> +	if (!stats) {
>  		ret = -EINVAL;
>  		goto err;
>  	}
> @@ -2088,11 +2089,6 @@ static int stat_get_doit_default_counter(struct sk_buff *skb,
>  		goto err_msg;
>  	}
>  
> -	stats = device->port_data ? device->port_data[port].hw_stats : NULL;
> -	if (stats == NULL) {
> -		ret = -EINVAL;
> -		goto err_msg;
> -	}
>  	mutex_lock(&stats->lock);
>  
>  	num_cnts = device->ops.get_hw_stats(device, stats, port, 0);
> diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
> index d11ceff2b4e4..b153dee1e0fa 100644
> --- a/drivers/infiniband/core/sysfs.c
> +++ b/drivers/infiniband/core/sysfs.c
> @@ -1031,8 +1031,6 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
>  			goto err;
>  		port->hw_stats_ag = hsag;
>  		port->hw_stats = stats;
> -		if (device->port_data)
> -			device->port_data[port_num].hw_stats = stats;
>  	} else {
>  		struct kobject *kobj = &device->dev.kobj;
>  		ret = sysfs_create_group(kobj, hsag);
> @@ -1053,6 +1051,14 @@ static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
>  	kfree(stats);
>  }
>  
> +struct rdma_hw_stats *ib_get_hw_stats_port(struct ib_device *ibdev,
> +					   u32 port_num)
> +{
> +	if (!ibdev->port_data || !rdma_is_port_valid(ibdev, port_num))
> +		return NULL;
> +	return ibdev->port_data[port_num].sysfs->hw_stats;
> +}
> +
>  static int add_port(struct ib_core_device *coredev, int port_num)
>  {
>  	struct ib_device *device = rdma_device_to_ibdev(&coredev->dev);
> @@ -1171,6 +1177,8 @@ static int add_port(struct ib_core_device *coredev, int port_num)
>  		setup_hw_stats(device, p, port_num);
>  
>  	list_add_tail(&p->kobj.entry, &coredev->port_list);
> +	if (device->port_data && is_full_dev)
> +		device->port_data[port_num].sysfs = p;

You are saving off a pointer to a reference counted structure without
incrementing the reference count on it?  That's brave, and really wrong.
Properly increment/decrement it when using and when done with it.

thnaks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL3zmzSTJ8nE1yr6%40kroah.com.
