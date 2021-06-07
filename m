Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBP4Y7CCQMGQEPOJBZAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E865A39DBEF
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 14:08:32 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id 96-20020a9d07e90000b02903c030760be3sf11174919oto.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 05:08:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623067712; cv=pass;
        d=google.com; s=arc-20160816;
        b=ob4qjkq7awqM7khO6D1tbbCuF1KXXxN4CdjgQ5HpvrYID9k91DxcilG7AzYmsK6Kn6
         UdZCcq4Of9rWJzhuQkrt0/MIssDdLbv+ODuFVmNKmVuQ7jbqC0xaN4Zgr37/0CH40GHl
         iXxzS+pWEWfRWXTYLWSI4+OuOI+fZPZILZNgKcHHwIVWrGNUUlkKTG7ChPwOLbX50R1V
         9OIHCNJmd7ZVVyvxXj9on7pnfitCpRMoAKxX8b0VJZhuKhpR9Qbadf/H0zDzFEcZAOGs
         Q5288jd7rre1dxdtOh+NKGniLPoGXZbxtGqyGZspZMVRGmhsjKzN5Xqi/mtEZzn+uW0r
         ng9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8JM2THfZwccG/9Ue3ll3QBFSQ0WYXX160tXVU9OQGNs=;
        b=T9KqFjZrqp+3y/kGV+VqXmwZLHIKp20EO1mlDiKIS7adJ+EySRXgu3i6xptZTb8Y2F
         A2zKr/OAyg2VPMr26gu5DZoISu9Rl5V/JkG/UZTJnuQ5LN75wQtr1xaMy/z1QSsnqHfg
         FbT8/pmp/EJQBTiL01QJ7WGbwz+XPWj4KWdhXL6escffGdJjqPPQXIV5WLL7HXs/fH0G
         aufL8W7XoYvjjzDNeFQJZKKCueXMAAc5TU05eeflN+YcYy4anuyxFuNMRc1tI4kh0Yhb
         zx9r2dXU9hH9wGnv4iUN21zUWaE/D67y4mDOUq7Bi5AHbV77rYfCBwwICWRybqRKghPS
         MVAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=smkIfRgg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8JM2THfZwccG/9Ue3ll3QBFSQ0WYXX160tXVU9OQGNs=;
        b=SoU6uVViXaimqaj1VAJVarQ+PM8Rhy+sxi3SpnIwksA+SQ0nlzO4gPmDnF3hPeI5Ee
         +LWQJkTzPSzuNXz58oeDa/MjYSOjJWhJvXpmWBsylncWLYMOmuQlkjLDlG5yd4CFxsMi
         KdI85G5HQXfMqCCraxU1q6wXMiNs7nuKdTGCmuMz5Hl+9vjxb4Oc26k+Op6BDirepdFG
         0xj+h3TfrlJJAQbaEIDHEW6xbtuavXXA+NgGCQYooqPCr0wkM+W1ZFiJZ4+4TwzT5lv4
         CDFljBM0N2Ii9mzcZry0orK7tR9wCB3St3g4uDKQgBmJHhH5CMRljar0H3BLmNt2gfFa
         F5Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8JM2THfZwccG/9Ue3ll3QBFSQ0WYXX160tXVU9OQGNs=;
        b=SDw2outd6lCybQRhR6C7+wOvSl6czQg8Amh5KLzMjv9Ai+G2nzmssqTZpjPTLgIwK4
         rraylQceGcU/tZ1be40LmDTfUKqwKroHuB0lHiQ3hbrVBwAXgdr+puzxDpJY2S6mVLyH
         4xC4kTEfPTeIMz5vKsLxUn79EL23XlGoESCwKXGsdjq5oPC/7z4UEyRG5QRXwMhc2YGF
         WISwFZ53gGpb8jpN9N5py35W/i2iCSYfkxS9g1kGuz+x8H1HCy1tZ4GIimVzafejI0ts
         M30AV7rIQIzw2uaenpYZcJuOcyaDvNjLL4sH7pXvzUseaYnQNqaDmLgN6Fy8AvLZ/GJc
         wP+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VvYzJbkXInX0rIdIaarCbE75WI6VOyfgnU9zuBo84F3RP6Xxe
	r6aYfiPDMbEu0XcUE/DGMuA=
X-Google-Smtp-Source: ABdhPJyqPRQpbRhh4RcNjfAKB8ki0I+N77kM6yI6hIO9fqPAq2bWoOrsA81xuQGqxsIWl/zSNSb13Q==
X-Received: by 2002:a05:6808:9b2:: with SMTP id e18mr2476523oig.109.1623067711797;
        Mon, 07 Jun 2021 05:08:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4d16:: with SMTP id n22ls344415otf.11.gmail; Mon, 07 Jun
 2021 05:08:31 -0700 (PDT)
X-Received: by 2002:a05:6830:1dda:: with SMTP id a26mr12638468otj.213.1623067711456;
        Mon, 07 Jun 2021 05:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623067711; cv=none;
        d=google.com; s=arc-20160816;
        b=Ce8tuIr08FDmTl5jnDeVguWc7gKZvd089PXKNK0GNb8zIHDc72UNEc+wzuQIiIRunh
         8JCHfW6muHwQo5bnhj7bugqYh3WQjLhpal5ak1wJfu1B7alYidDIHW0E28M7J0aGRbi6
         qFYoIlzHQhzk5/uklnZN74qDCQQXPefYyUXE8mAew/tHcnfMhInxJLVn5gRdJXdDZ2IX
         yN046ltJyHdTaoqS/eFGCPXFbz9UsY1DU6+7MfCtUw+1TFsy7saSxlPUtsIPKBgDAwnx
         EzOIzqfZbZRud3XqTbdS+aCC60MrAbcgI3pbeL9nKbLFz3gNlY2G5ZxGWpKA/kYeABdI
         z4og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hs85yKdFotiF277sB3NwCeE0P6cukP7d3Xcv6DBtF2U=;
        b=pbQHs4u5xmkBIj/ef7S+wJVSiRyKhLFlwsGXOHF7DEhfDIoQXwVmStGxfz/vNlIxVL
         7awqkREbVD4rAB+Yd6EKzXiA0HoF6G7eG+leBMKhwnvTh/c/dGiAjLyJFuM0F5Q47x80
         TzfR0gEAJ9uaP8jXFDcbJ0OG3f/d+ale750aR+Kyvcchz4Ai5u6RqrI3yoKpMZyNUJxh
         afahoV4YLw6npX4qeCckvf5oZa2elA0HG6zj1lrZV6wpx5hbjfi8j+5dm4bPmZdfepmN
         bGy8JHlPVLuwUxYUtJBbLInq4X8D64kJ6K6beL+JgPSSvBFRNR7JSjsUJmw2+LrsVx5M
         QiTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=smkIfRgg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si1126689ooq.2.2021.06.07.05.08.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 05:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC51661249;
	Mon,  7 Jun 2021 12:08:29 +0000 (UTC)
Date: Mon, 7 Jun 2021 14:08:27 +0200
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
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Message-ID: <YL4MOyxQi1O3dog5@kroah.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
 <YL36OFkmlxJiqjvc@unreal>
 <YL4Bcm2dOyWKLGJ7@kroah.com>
 <YL4E7C7tVUMy3poz@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL4E7C7tVUMy3poz@unreal>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=smkIfRgg;       spf=pass
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

On Mon, Jun 07, 2021 at 02:37:16PM +0300, Leon Romanovsky wrote:
> On Mon, Jun 07, 2021 at 01:22:26PM +0200, Greg KH wrote:
> > On Mon, Jun 07, 2021 at 01:51:36PM +0300, Leon Romanovsky wrote:
> > > On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> > > > On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > > > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > > > 
> > > > > This code is trying to attach a list of counters grouped into 4 groups to
> > > > > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > > > > everything naturally as an ib_port_attribute and add a single
> > > > > attribute_groups list.
> > > > > 
> > > > > Remove all the naked kobject manipulations.
> > > > 
> > > > Much nicer.
> > > > 
> > > > But why do you need your counters to be atomic in the first place?  What
> > > > are they counting that requires this?  Given that they are just a
> > > > statistic for userspace, making them be a u64 should work just the same,
> > > > right?
> > > 
> > > The statistic counters are per-port, while the cm.c flows run in
> > > asynchronically in parallel for every CM connection.
> > > 
> > > We need atomic variable to ensure that "write to u64" is not
> > > interrupted.
> > 
> > On what system is "write to u64" interruptable? 
> 
> On 32 bits, and yes, we have a customer who still uses such system.

So you will see what, a "tear"?  Or a stale value?

> > As these are per-port, do multiple threads try to increment these at
> > the same time?  
> 
> Yes, CM connection can be seen as thread. Bottom line everything in parallel.
> 
> > And even if they do, what happens if one is 'dropped' somehow because of this?
> 
> Probably nothing, we increment the statistics only.

So you are hitting cache lines for no good reason, probably not a good
idea, you are wasting cpu cycles for nothing :(

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL4MOyxQi1O3dog5%40kroah.com.
