Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4FQZOCAMGQEKUSF6TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id BA86F374390
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 19:40:01 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id i11-20020a4a6f4b0000b02901ef8b6e92a6sf1525481oof.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 10:40:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620236400; cv=pass;
        d=google.com; s=arc-20160816;
        b=HYnQnhfv9dUyx84RgAILo7ht1fgzKqCG06uMWXF0/Bk5GM2/3fQnJ9wvpQ6VA4tYMz
         Gp8Fa9nz0bgX7u31jKDhTHYKOAVNOLFD/Dt9B9EiAvV8Lbf0JAHx9d6aWNnq+xgP9V4P
         iVP9JoyfRgWYLdRpCb1AR6xzkbqXcdP8+69jJg66rrXhcr9x6jQ5rwQ6gxJxNrnasAO6
         PE6lN9PlXbvRsrEd5eVZMkTlj7JPH1P34JkO/O6WufAslrcRvjq4RDIAMhL6un8GiJz2
         8soKmqhkvrsN7ZPvTD7RQkJhn19Ebu9rtftjAvNpHNMfdw+nRHtfpw4K9AyDESm5sdJQ
         yTGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sb7SUob0JPjJ1sd6KU9/9VlLQhkUsjsKIJyOYQbwDeM=;
        b=d0sSZ9YM1Dh/PPR4/xFcMN54cD8hzEvIIW1gDmRWLHlSSWi/TOETcdlG+Pao9ry/2S
         JwMqfYbOrbi4ygmPBfOAyiRALKJjiepXG7WtNI04JLwXe1lsYemSRyEz72wxXw6F3bnC
         ORITmU5jpuGwxAp7sNDDdvsGcLl3vq0+e05OXnThS6BxsuBbNBD0RlAx5hRXhR25SEip
         HGsQaaoYD2RKNEVVv0U5H/tBEStJi91bO9U/0sA9xdG+u1R1ZHK9ATCLRvi32yPWE9B3
         YXWkB0CDxDomt+7t8M5jNMn57DTgURQHBFtGgnwpOhCBAvnvPJkOMycxPGG78r2ATGs7
         OvZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=AhWldoB3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sb7SUob0JPjJ1sd6KU9/9VlLQhkUsjsKIJyOYQbwDeM=;
        b=s00vUuPqiByd8PC+BB850XLV2XP70f3ezMvzOpIamPu7wvenkzOZgACB6wFH36PgtL
         4YsKT2ygyg3oO4FLNozFz6QkUV/xdavki1tAzciCZ6RnoNESiAWBcIbtZYcUacdaQwD6
         bEvId85kmTzFtAwQo4dO0BE7kposzkMEz8l703T8BXqsTe1jQBMhFAY0ELcgyK+Vtytl
         dhJfSm/Z9zGRLpIafEwsJ8lQXKvXsIfbRw2JSNIbTyyYBoErYUJYf/HmHZ1cN1Z7AqaV
         P42MBTlcSpiCh5jKqJgku3xn2ZA5Sjqgzl5zhlxKsEATyj349a18cZW35mCHTzgx1Io/
         y3ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sb7SUob0JPjJ1sd6KU9/9VlLQhkUsjsKIJyOYQbwDeM=;
        b=GbuovB43zmh28jsfYqMjb0xiq8bmJbLvoc7IvA4sBIasJI0fTGRznNzvysfyTThLEk
         3tl1kt9nr6NRtmKEa/VJ7TmAP0YjcTWGcjWz58jQXUpwpjlb/fAU2ar4P7ZgIv+8UKy1
         tcYNZ/kX07eORWAIcaG8qkyrsxxGmQ2J2I/boPTwatNImoYuHKjdXWJL1oGll+1BvVdM
         LNUGBAivYd0Uw++Oa4iSx5epc0JmLf1tmiZvGrqq9ooLgn7sD+c5TyfFug+SUOT3v7Hx
         3R6TcpJwRlCdH06uQ5UOrDHnCbfFszRmxOFBEJsqn74LBodiaIcDagk9Vz4siNP5el+3
         aGOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m4PXrQ+6gdscwqeSGtGddEmJ5o2ZGyR9mopLOT12vUB1RP2r0
	3oedOM9ZNxp1R6i8qlSYQ1c=
X-Google-Smtp-Source: ABdhPJwu+3r3c81BPtaYeKTLtAaTZagLfl/vt4VBhMt8oWJ+TCMx2dlHlHcD97HQa9v8Vmw+j7wlOg==
X-Received: by 2002:aca:c08a:: with SMTP id q132mr7382519oif.5.1620236400650;
        Wed, 05 May 2021 10:40:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:200d:: with SMTP id e13ls3288862otp.4.gmail; Wed,
 05 May 2021 10:40:00 -0700 (PDT)
X-Received: by 2002:a9d:71da:: with SMTP id z26mr14634773otj.41.1620236400259;
        Wed, 05 May 2021 10:40:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620236400; cv=none;
        d=google.com; s=arc-20160816;
        b=iDMh1mDAjV63anLveBpOvf8v26DdBO6TDJMfZJK0WqzHSW/cWAHaeaVlP2wCXLUgEX
         UuxIlUMuOBJ7m0a79vQVXvOyK9An1Yy+GN77d776FIzuRHW3WO9wyy7a5n/Vgr5KnrFY
         KPvDfc+eR+XxuR/lhRwM6UreFf+cc37G55AxL2NgpH6qQN3wvwjjRsSaJr6cbUlFEWJR
         pKaVtu1cg4L4zvNoMbe9KNUiVuzpfl64E9tvq0FmzRgNtWZIDAGykQTfTK4g51WQUhoW
         m0AoBZIjy8xO063BXQqnBXZA5rCPoNWqwALkZDzluMU8vWQLiyunlax8DTz4qK8djIEj
         DQ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=c+Pwa5We0eg0N+YQF1AFSXqY42ZWJ2hKuI5mjdc1ii0=;
        b=wkhY9pDZyxWiAxx79qRIDHUKEoTXvS+W1pTalL3o6MMsPE54Swizp3kZo9MrLX3qb/
         316wRfivRyq6CJBTGz6x1eKDhXhhnrwCMxWNtCQLSP3p3RlQHPbwEqbpKBqdlXHntQt0
         8ku0hrg/Fv4rtfSDXTJS6tSHuBhw6ADiJ/H15/wD5Di/kci8l0YSVxQVD/pheKJnaQak
         5HZgkjnSjv020rg0KESbxTrNaT0Dut1vmK1lnRKt90TZwgcgsVYLZ9J4n/K4AHtY282i
         QqIcWa2+W46yr53+dyo/gzjnodetW0XNxdODEPx2MHfEYQQxYDGi/l2V6XOPAQb8IHMD
         aFHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=AhWldoB3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si4163oov.0.2021.05.05.10.40.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 10:40:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B4BDE608FE;
	Wed,  5 May 2021 17:39:58 +0000 (UTC)
Date: Wed, 5 May 2021 19:39:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <YJLYbCIKgLCZlcOv@kroah.com>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210402233018.GA7721@ziepe.ca>
 <202104021823.64FA6119@keescook>
 <20210404135713.GB7721@ziepe.ca>
 <YJLHHpatWOgJo0Zk@kroah.com>
 <20210505172916.GC2047089@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210505172916.GC2047089@ziepe.ca>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=AhWldoB3;       spf=pass
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

On Wed, May 05, 2021 at 02:29:16PM -0300, Jason Gunthorpe wrote:
> On Wed, May 05, 2021 at 06:26:06PM +0200, Greg KH wrote:
> > > They are in many places, for instance.
> > > 
> > > int device_create_file(struct device *dev,
> > >                        const struct device_attribute *attr)
> > > 
> > > We loose the type safety when working with attribute arrays, and
> > > people can just bypass the "proper" APIs to raw sysfs ones whenever
> > > they like.
> > > 
> > > It is fundamentally completely wrong to attach a 'struct
> > > kobject_attribute' to a 'struct device' kobject.
> > 
> > But it works because we are using C and we don't have RTTI :)
> >
> > Yes, it's horrid, but we do it because we "know" the real type that is
> > being called here.  That was an explicit design decision at the time.
> 
> I think it is beyond horrid. Just so everyone is clear on what is
> happening here..
> 
> RDMA has this:
> 
> struct hw_stats_attribute {
> 	struct attribute	attr;
> 	ssize_t	(*show)(struct kobject *kobj,
> 			struct attribute *attr, char *buf);
> 
> And it has two kobject types, a struct device kobject and a ib_port
> kobject.
> 
> When the user invokes show on the struct device sysfs we have this
> call path:
> 
> dev_sysfs_ops
>   dev_attr_show()
>     struct device_attribute *dev_attr = to_dev_attr(attr);
>       ret = dev_attr->show(dev, dev_attr, buf); 
>         show_hw_stats()
>           struct hw_stats_attribute *hsa = container_of(attr, struct hw_stats_attribute, attr)
> 
> And from the ib_port kobject we have this one:
> 
> port_sysfs_ops
>   port_attr_show()
>     struct port_attribute *port_attr =
>       container_of(attr, struct port_attribute, attr);
>        	return port_attr->show(p, port_attr, buf);
>           show_hw_stats()
>            struct hw_stats_attribute *hsa = container_of(attr, struct hw_stats_attribute, attr)
> 
> Then show_hw_stats() goes on to detect which call chain it uses so it
> can apply the proper container of to the kobj:

Wait, what?  That's not how any of this was designed, you should not be
"sharing" a callback of different types of objects, because:

> 
> 	if (!hsa->port_num)
> 		dev = container_of((struct device *)kobj,
> 				   struct ib_device, dev);
> 	else
> 		port = container_of(kobj, struct ib_port, kobj);

Yeah, ick.

No, that's not how this was designed or intended to be used.  Why not
just have 2 different show functions?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJLYbCIKgLCZlcOv%40kroah.com.
