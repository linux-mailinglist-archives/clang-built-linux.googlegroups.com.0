Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBI4OZOCAMGQEBKLYQJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B14373FB2
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:26:12 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id a15-20020a05622a02cfb02901b5e54ac2e5sf1427151qtx.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:26:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620231971; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xkc3DqQLHz0IV9OI4zxwzrQ3UoZds++dr7WqHZdgBLkyGl/6S1FIvGs1rvUB6fkDRQ
         7x54bgVYG6gsBz1uLf70XAw72ORq01qAf0ozBTj59rFPO1g9EFNlt/9sCAG+Obv4jaWk
         avC25HWXx/7QtbsuPncY18gIB+74TwNviHZO0hbwadgTmGqnncvxRcUhVEkKU89dVqIU
         ACRmhES6Q0Yon4WTC22RLuN35bRP01P0OFnwq9JEdFJSYt5tAqS7VapsredGT/Lkw4DB
         3aGZEqYUWAt20pnZr4B46v1a3pPNyjZjilKdJTwrmZyI+vR5JGuYw5s6baOlhw+Te3Da
         bCSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A2z6W88pYjJCfUgq3si3R83e9b7AlSQpAcKMtCbTeJk=;
        b=WBmTsTZd7WSOfHEMToWXSk2JDvPCfJ4+jyBE5f7OMCW0jlEoY5bkFu7ac3m4DIsEeY
         kAvY/ffcuOFWfo6lcB/GArE2dXB+3M2Ij4CgT+5iXIFgDFciuZu7TqDaps2YcQ/JJo/m
         cV4GOpK4eM0J8bMR0mw33DtCNiENs06wUQc5vaYIQRtP2eqUOk1xPa3dX1UM3zbE/vfH
         edQhJj8o4iMlayMi9ALQK11XdYbLDsC4R+c3sYd+BU+GtUK2qbbiSY7gewKqLp1xVU8c
         qNvrRV8Smbej5A5zHljDWlZ+QtVC4ppr+y97OLv1N+DNg1b2v+Wmj5YZAv+YiFXK2FSb
         LXiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kXoYVX38;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A2z6W88pYjJCfUgq3si3R83e9b7AlSQpAcKMtCbTeJk=;
        b=BFk+EsYWzoVAf21EdD7/b0CWYtFT6QgFPVcdgEpjdJpAuPUAiDe4m8yqm2t2mRdbHF
         4LOAlzGe4GGO5ihJRDZxLbH9JtyQWl+ay0riligPdPX3GFlXzohn7d4qBwmR8rxf/oiT
         QS8v3esvOdraYYiiDv3i5qkBcDqzrGhBd8gPU7bMl9dnptVS+N3RsT3vMjvwI6rVwjqn
         kY95LfVYTaKwZLSjgRnutsMoV4B8l3AN5jAiaV31VGUfG+TX77Rtxfo6Jz7ZB1VOUcAO
         z2Wxz/qj0u4D7hfRhRB8hrCSF5pnWUOY6I+rULMWY7dTCxbuKtxm1yA4kzdBDBpRqish
         Dzyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A2z6W88pYjJCfUgq3si3R83e9b7AlSQpAcKMtCbTeJk=;
        b=nBe+o68kUcA7IMLw1KLzqx1cxBHiJH2un8Ol+SlHU/kcYqocty9Jsfxl4fqVI8jdkL
         q1dNANC6Gw9v+WHDumOWnyh4SDmtWkzxaPKYs7+0b2JyiPPfJZ/qAkzUJNzRDtIP+12q
         rkOvLsrA+ueb46tBEwjaOe35nqH/HbbfV84DAt6g9ge4vm48ju7OQGSUYoKS9Tir+PF8
         77wPKbRqTUZV1IPc+hgdCQ+5cPc6ZtdMbThwGnBMcukAvIrSSoDDQoLc2Z97ZU56qhxN
         UujkjsMeN6IDuha4aK1UQbtpzh71Dn/r2Ap5mzNQDN7ROeBMVdCbyFWym5drFzXF/Ln0
         F2Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oAUkD7f2T6TOpjXiKG2qQgpDuIpUxuHccEzfLqxXCowHdJSfI
	2EgXH7de7XLHdtfg1Sf8Apg=
X-Google-Smtp-Source: ABdhPJxICi+0ibMd9mF0MsRPYQtaW0Ev3q0HSBtrD394vsZCQCQEuEkqqwevPaZxcoIO6k2lGS78Ig==
X-Received: by 2002:ac8:1183:: with SMTP id d3mr28576156qtj.390.1620231971145;
        Wed, 05 May 2021 09:26:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7f0c:: with SMTP id f12ls9342510qtk.7.gmail; Wed, 05 May
 2021 09:26:10 -0700 (PDT)
X-Received: by 2002:ac8:6799:: with SMTP id b25mr23208186qtp.165.1620231970623;
        Wed, 05 May 2021 09:26:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620231970; cv=none;
        d=google.com; s=arc-20160816;
        b=WX+Wz//Bm9TVRNAf6xp+Ay2Tm7nVMFa9T6FPBE1SKvvh8dFRovHGX4yG/meliXCakq
         i4BebNAZQCySInEh4+25ZWe++8LDAz4hVuXRbHWBvGelmBB7oGmV5bBLPKpkDeXobY/8
         47vWZBeW4Sjcrp+dV66WaOOdnOr9MjVlIkd0E3FpeqJUzGQrkBSoEF0xWDrHE7k+EMJQ
         ADXLz0FSnqaNQrsMMHEScmyBmPeGcZ1wxDxdGzMpRXKhRItCSS2kUw7B67xx+6JSEyMc
         sOUpti3q5Hx9iY4HP0spgnIJldY2IEiQ3MRRi38NJzQAaqVFNThsQVa38FhjpW0V1Q/C
         anSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Rvsc/ZDOGHxPkXKrJu9HhU7kf99//t+FHje6uaJm40k=;
        b=hO+rcS3+JtlRUZig3TvfNGWzKXqzYX5+mlaDH0JYTFWu80/lTxQK5Diiq+PSOED57p
         +A8G6Fy7Au8BfCDnItquxNemFGWKfctH36CktUqp0OVTBrqZwhaFoYAbBZmjAFl/VyS0
         nowjo/+90Ld1XFjtoBrBRJvlFjz0yuPP4+szAu7jjgHhuGVaS8eenFV/V94EExfibH+t
         2cmtsn/dUwWZ4FVVgU4nuxsa1fqq0IgAxbqDN4yjyXORtgxzlfllltFLX99hie+M/egu
         B4MLkyWywaeHHba8obwMp/HjCmdS1PwDxqdsFhyLFDVf7hGergeBPV75kbyVSvXTXL27
         DLRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kXoYVX38;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si973376qtg.2.2021.05.05.09.26.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 217AF6103E;
	Wed,  5 May 2021 16:26:07 +0000 (UTC)
Date: Wed, 5 May 2021 18:26:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <YJLHHpatWOgJo0Zk@kroah.com>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210402233018.GA7721@ziepe.ca>
 <202104021823.64FA6119@keescook>
 <20210404135713.GB7721@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210404135713.GB7721@ziepe.ca>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=kXoYVX38;       spf=pass
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

On Sun, Apr 04, 2021 at 10:57:13AM -0300, Jason Gunthorpe wrote:
> On Fri, Apr 02, 2021 at 06:29:55PM -0700, Kees Cook wrote:
> > On Fri, Apr 02, 2021 at 08:30:18PM -0300, Jason Gunthorpe wrote:
> > > On Fri, Apr 02, 2021 at 04:03:30PM -0700, Kees Cook wrote:
> > > 
> > > > > relevant. It seems to me that the hw_counters 'struct attribute_group'
> > > > > should probably be its own kobj within both of these structures so they
> > > > > can have their own sysfs ops (unless there is some other way to do this
> > > > > that I am missing).
> > > 
> > > Err, yes, every subclass of the attribute should be accompanied by a
> > > distinct kobject type to relay the show methods with typesafety, this
> > > is how this design pattern is intended to be used.
> > > 
> > > If I understand your report properly the hw_stats_attribute is being
> > > assigned to a 'port_type' kobject and it only works by pure luck because
> > > the show/store happens to overlap between port and hsa attributes?
> > 
> > "happens to" :) Yeah, they're all like this, unfortunately:
> > https://lore.kernel.org/lkml/202006112217.2E6CE093@keescook/
> 
> All? I think these are all bugs, no?
> 
> struct kobj_attribute is only to be used with a kobj_sysfs_ops type
> kobject
> 
> To cross it over to a 'struct device' kobj is completely wrong, the
> same basic wrongness being done here.
>  
> > I'm not convinced that just backing everything off to kobject isn't
> > simpler?
> 
> It might be simpler, but isn't right - everything should continue to
> work after a patch like this:
> 
> --- a/drivers/infiniband/core/sysfs.c
> +++ b/drivers/infiniband/core/sysfs.c
> @@ -67,6 +67,7 @@ struct ib_port {
>  
>  struct port_attribute {
>  	struct attribute attr;
> +	uu64 pad[2];

Ick, don't do that :(

>  	ssize_t (*show)(struct ib_port *, struct port_attribute *, char *buf);
>  	ssize_t (*store)(struct ib_port *, struct port_attribute *,
>  			 const char *buf, size_t count);
> 
> If it doesn't it is still broken.
> 
> Using container_of() with the wrong types is an unconditional
> error. A kasn test to catch this would be very cool (think like RTTI
> and dynamic_cast<>() in C++)
> 
> > > And then two show/set functions that bounce through the correct types
> > > to the data.
> > 
> > I'd like to make these things compile-time safe (there is not type
> > associated with use the __ATTR() macro, for example). That I haven't
> > really figured out how to do right.
> 
> They are in many places, for instance.
> 
> int device_create_file(struct device *dev,
>                        const struct device_attribute *attr)
> 
> We loose the type safety when working with attribute arrays, and
> people can just bypass the "proper" APIs to raw sysfs ones whenever
> they like.
> 
> It is fundamentally completely wrong to attach a 'struct
> kobject_attribute' to a 'struct device' kobject.

But it works because we are using C and we don't have RTTI :)

Yes, it's horrid, but we do it because we "know" the real type that is
being called here.  That was an explicit design decision at the time.

If that was a good decision or not, I don't know, but it's served us
well for the past 20 years or so...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJLHHpatWOgJo0Zk%40kroah.com.
