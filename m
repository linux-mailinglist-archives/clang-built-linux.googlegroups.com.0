Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBL7Q7OCQMGQEJUWIQQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6766A39EDD9
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 06:55:13 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id o26-20020a9d6d1a0000b02903e61e3de711sf5514473otp.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 21:55:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623128112; cv=pass;
        d=google.com; s=arc-20160816;
        b=w74SIt+Thn1dSk7Hu78q/JdvqEb+iIdDIC9TE9FmzmLPdeU2knhYb5a8O9M4fFZ++B
         utkk9WYEHxSZIikYED5jpmL/QNYJP2QaXDK5jcreatD7IAjVKuCyOD2dUJ8/vSBePKyO
         Yi2rOUqdL79l3Hck4aA5yc1sa38Xax5ePaqxCN2QXhsAMmvYmwfRW7E9jn20b9ZyBKIG
         OH5XUb1hrlkaygzuQJy0D8ym7kOwmfs2UyCKUO+jzo8qewKfDrY1xC08CP+YoQqTNwZr
         Zc/hs7/pErJzOcTFYIK7UpTGjOVPBcIWxhYvllLFgMWK6Cnl9DNkh48m16NS1xZfl3/R
         a+sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BVwnIAFc43mBSQybkquK9oD4MqMpBuMLvcE4QNqKO2A=;
        b=zTEAfpPKRAbNKxet0VcK65GLTGnVb3DdyIjpl+DAVJHFaHPqk2mDCSiz+v+z2K++4q
         OoOw7UANSu1KDbPEQf/3gqDnm+JVxjp9uQ6/2l3DToV87XQvwXO1e97gtmlQfmzaLIGz
         8MXm0lskaueSiiFWmV2I1v+r+BNUJ4kDun1FliJ/H/cyEy2L9Mg5ifMY43yZBrPy8d1I
         LKHoI94WMolzqZ4WD5FXrjLJ4e638sAGoK38Ma9XOGbfKui+0AEHVwDhHqSi1HC3jMdj
         jZKiclQjmDBzFxxYh4h9oGAP3nlwo0/qIjX2W8zv5kEH0+W4DoOx/IltuQVvQBAnVYT8
         8wIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PRder6up;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BVwnIAFc43mBSQybkquK9oD4MqMpBuMLvcE4QNqKO2A=;
        b=O0kDns2aLKAIvbqZa3Y4GfR4Op1PVcfC6tkNDCPFACCXMqKtptvTQ/hg/KxhB8+CAp
         kCeTGvqYwNjpfPWB1yyK17RBrVVkFmNkoXMrAtuldwwUw1XdwpYqMkk/ZxlMxivSlrR7
         xMLv0QZodRj0mUZ2C40kjJAb9FLHZVzhkeuvZlhohuMuSGw3z80jnfxQiKLD69TnSG0Q
         CpkxrQAiUwx85VkmBB0cw/0tX/PL58Nmx1Bhd4f5JElBz6fAPtDg7mPlvzHDlnKf4X53
         z3qxWFDH2MoAeMAOwrbNGAkeyauDWC1TqjGoPSl3MalDi/PmbHL359SqgrZyVlkC5Fe2
         Z1HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BVwnIAFc43mBSQybkquK9oD4MqMpBuMLvcE4QNqKO2A=;
        b=NJTkmju4Cg0Piqix7VqN3RCfhL4a3jd87AC900HBBxBDapyRk8LcA/1ywjEZr7XL6E
         yQBmxDTXqPc0+Sa5jAA2MJX/F2L6855xLipICPn9q2CgDQ+CR9eOyXx5ELrWEIiwB5t0
         YBGwqvOCtM055RBogCYvZQDEkzJ1CZaPqDRiJqc3jUyUFQM55ydDfgZHH7jkUh5MTJJR
         12ozoTDMElUqPFv+6OxIe8y5ky++v4SVkiX57qZn0DDbxJJanJgCPUQCjXbuK3XmS8Oa
         xJeQUwZugPvHhugYZpYQxnlH+VabbPGvQj5e6NY0r+S4rmx7NSjQdk4PxCoRBnbvbPpf
         HS+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k43G/aJoS9ximS2J88bkV3A/VxAcT5opAvxUKZjvZWxXVKW0N
	KMNlX4OO4F0K2VHoPAKIMtM=
X-Google-Smtp-Source: ABdhPJyJn6BEsolSsLepyZi1p/bEEWal5kGyCcg2aUFcFKnRYBpUxwaVqQOeR/JtYIF6XwF2lPDXzQ==
X-Received: by 2002:aca:3707:: with SMTP id e7mr1697366oia.17.1623128111922;
        Mon, 07 Jun 2021 21:55:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls4560994oib.6.gmail; Mon, 07 Jun
 2021 21:55:11 -0700 (PDT)
X-Received: by 2002:a05:6808:190:: with SMTP id w16mr1645458oic.92.1623128111534;
        Mon, 07 Jun 2021 21:55:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623128111; cv=none;
        d=google.com; s=arc-20160816;
        b=SHRsYhdQkU2cYI+Ml6QjNCiEawWLy94e1OtAh14ql2DB2jPCDy/hLXEmj6zglZ+iDo
         gYpODLtgDq97QtOws/cMWbL6o5l9Qnif0f4znFPQ1X8SJTYK42RX5bfIoLy3P2CgaL15
         QZQTWRrPeTReFR98RWH7pZFprbmgQPxYLhYR0u9Z9rcy4enWNt7FeKN3KUj9FrlljKYT
         CFOaP0yvy+eJ3j15SpRcslIGhkZ9IXszUJ1uKgl1R3e5b2O3xb4ZMNVAvcfgOGbLy3Bf
         C/g1fynC3Xgbhh4pxHMPHLGIBAFsTBZjDnvEesoRGIsOKG7FSKIbUQo9aWchcNo5fkSV
         gHxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BQLIzKncZ0cGL79yh8QD8ozcaAjDYLS8CLV7dkYsvOI=;
        b=ooFCYbKItkYNN40A3gKGwGW08yodbpsuBsoE3kTPF6SZCDM1FUSfRuHlJHjHEt17Lf
         knnS5E8Pj/sexx8E40/f0xzpM/xNtZzsDKVRyuw0Dc/tfyRSaFzOUzKZBf7dDvbFXIlR
         wSzKAtUE8aKH6PQ3NZXkgDc6eW3gIMTkr4Nn7BfJCBMUfYu2iLaLQTerc0AD/v204JPY
         i5xkIfUDnxbVFvukeJrhI8zt4ww4k5HiOfOjmR7OW957xy4n1o9XX8SUWwA7+RjbNOU1
         0GUYKTpPsNTN1oIgpOKcJQVhq3U1005kjOFPOZb29JxYkxg0XZmBlx+DO4TuFEfq8Iy4
         br6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PRder6up;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e17si995028ote.2.2021.06.07.21.55.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 21:55:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C07646124C;
	Tue,  8 Jun 2021 04:55:09 +0000 (UTC)
Date: Tue, 8 Jun 2021 07:55:06 +0300
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
Message-ID: <YL74KtkVOxVDT5u6@unreal>
References: <cover.1623053078.git.leonro@nvidia.com>
 <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
 <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PRder6up;       spf=pass
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

On Mon, Jun 07, 2021 at 01:29:58PM +0000, Parav Pandit wrote:
> 
> 
> > From: Leon Romanovsky <leon@kernel.org>
> > Sent: Monday, June 7, 2021 1:48 PM
> > 
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > 
> > Now that the port_groups data is being destroyed and managed by the core
> > code this restriction is no longer needed. All the ib_port_attrs are compatible
> > with the core's sysfs lifecycle.
> > 
> > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/infiniband/core/device.c | 10 ++++------
> > drivers/infiniband/core/sysfs.c  | 17 ++++++-----------
> >  2 files changed, 10 insertions(+), 17 deletions(-)

<...>

> > diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
> > index 09a2e1066df0..f42034fcf3d9 100644
> > --- a/drivers/infiniband/core/sysfs.c
> > +++ b/drivers/infiniband/core/sysfs.c
> > @@ -1236,11 +1236,9 @@ static struct ib_port *setup_port(struct
> > ib_core_device *coredev, int port_num,
> >  	ret = sysfs_create_groups(&p->kobj, p->groups_list);
> >  	if (ret)
> >  		goto err_del;
> > -	if (is_full_dev) {
> > -		ret = sysfs_create_groups(&p->kobj, device-
> > >ops.port_groups);
> > -		if (ret)
> > -			goto err_groups;
> > -	}
> > +	ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
> > +	if (ret)
> > +		goto err_groups;
> > 
> This will expose counters in all net namespaces in shared mode (default case).
> Application running in one net namespace will be able to monitor counters of other net namespace.
> This should be avoided.

In shared mode, we are sharing sysfs anyway and have two options to deal
with the port properties (counters):
1. Show them in all namespaces as being global to port which is shared anyway.
2. Show them in init_net namespace only and applications that were left
in this namespace will see not their counters anyway.

Why should we avoid "item 1"?

Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL74KtkVOxVDT5u6%40unreal.
