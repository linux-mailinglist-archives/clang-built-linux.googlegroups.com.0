Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBO4LU6BQMGQETSQDKKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E59B35384A
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Apr 2021 15:57:16 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id g7sf6767730qtb.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Apr 2021 06:57:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617544635; cv=pass;
        d=google.com; s=arc-20160816;
        b=vV8upF8ADLDS4tzTSs2iCgYD6FlDRAqdVbVH0VXW9gvqkYwKewsUIX9InptQ6BtHfH
         nAh7meEOP84bk4EQWUdVlhgzaR3vsuFNLD6o9ID0wfbCi3n18ZZoy72ny9XdeD+nSZp5
         L7m7sbDz1K0pQz7qsNlP3XIIvUVMiQf4P/ycyAKu9qjIN0UULTIqmkaRteST++TRGeNl
         oyj2v+2BMcE9pz0f0QwoyjNP+blia3dB0Q2gdojM+K278eOy+QbXa7bCmv71z8DCKk7e
         mDzFQm5zHfRZ9RHNg8/Sn3aNePAlHO5B4G/ehTHT9bI0v0w0T/qk5sFg01bDGAAhJFYx
         7evg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IoBCeErplwMpVy5Tbu6HvAFGoWiGNydKrAt+TuK34QU=;
        b=yoVMB+Wcp7eBCBjZY8SSzZnk9T4+IhUVhecRGhsevRqSQtUctX4LoMzjJbXfIAetDP
         w9eX8RZkEE64q417Es802aBY2d4oU7/IiCZ5hmkys02K3LJKXhsAv+nsajSFR3A8Yt9f
         H/ij2t+7BVa0X4N4k9Avp8zUlVpNZhxkGIdnP+uRemncrH94zccglnU1M3KuacjRfFzL
         WxhmBRB4e9fRFHHkuIIkDda85x7PNx4DffR9kuWN5nsLMP2LOuEpU5C7CXTPx/jKDIKP
         q8GZ8L+gMTmoJSKvGmYa/df4qDjRpbs+7v6/jUlfFj2MjY/zFA7ljL2qEMZOb9wnibl8
         ENTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=LCW+fT8r;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IoBCeErplwMpVy5Tbu6HvAFGoWiGNydKrAt+TuK34QU=;
        b=UZo7u1bZDds9YY8UfK0cEZEPxAnt4mvwVGPY5g0XiikHdYuIpoYbqowNOB5Ve0iDN7
         qtG1F/PrJxN9kbSUKa3iYq4OCEyq2oPb2PHYjqRSZhPNQ5ozBmxrN9+QDbbC0fMuC8om
         9YdQkrW0J7D23+iQVgQi0Osov8OA+tdDeuFQzmoahk3LmNxLkDfrpWg9Od2QiYPd9COX
         W1soqRZGogzC6ucqT4QM88JtTUy3qZ9pcZUbvJrYtA/gkT9DcejTFIeFxoLogu2QvRdm
         QFc7rWkt5SaYAGXNmEtxLmdBl2sGR4L7G9yNhjcwc7T+pjX15XVHJvhNHx7dQUJpK8KE
         XBXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IoBCeErplwMpVy5Tbu6HvAFGoWiGNydKrAt+TuK34QU=;
        b=Yl6lUDNu/twgpcHQ/4UmKPyaPhM77ugbkhOOa/rvOSUw/uvxuDYS2r+V+oMAsiBX4b
         304u8cIELawEAEqKJTPCJI+LEZvhyEXSxD7jPEcVP0WXJlNeKH1HzE48CFq5261aOi3v
         OekUUIg/IVVYVszHndhgtSzbeXRFuUJrSB4B3ifknDlRTz+mmkKzLG5brAa13DNOrVcx
         ipRZpQ8uNFoet7yHMZhwFosZ6zruo8hRDczj8ijEHxcZQivvMwX0NP5MaUkBcM2aFUo9
         h0Khpp8YFIP6Sa1JeR6QjjY9zsUoWb/cZwQgy7ziyUEgI5YlMrfVqsVp1VpT7jvzbcjr
         Nu1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hN5GwIbGkAlDQ0IukOXdBGprj3Hv7rK9mILYZ7FgN7Am6Fe+m
	VwfoIVaU4vsSxdphO0rhSB4=
X-Google-Smtp-Source: ABdhPJwog6Shsc+t+FnzawYD1AYPyMc+Ycpum2aJ/uIOti1Z0EOnnOmifBZz0NPyMTByypu/lG97Vg==
X-Received: by 2002:ac8:7d09:: with SMTP id g9mr18712380qtb.288.1617544635623;
        Sun, 04 Apr 2021 06:57:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls7438380qkx.2.gmail; Sun, 04
 Apr 2021 06:57:15 -0700 (PDT)
X-Received: by 2002:a37:ac14:: with SMTP id e20mr20471084qkm.388.1617544635159;
        Sun, 04 Apr 2021 06:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617544635; cv=none;
        d=google.com; s=arc-20160816;
        b=FEmheD8+qEXZuOhzRjfBVYmawjIP0dq0OTrODmSXWx30oSLk96jY7mhQo4JzWcOW6c
         VuD1/swUC61zq6PZYjX0brT8m/IqrRF62/iSej+a+CBM2wwQHIouYaqR3Q/JS9WVI/Kg
         OZ0WWPgySV1oeBOJam7Bi9HjhzyAt0cPoOtcR3rHAbbkak+1WbkQA9XZ3rswgSu3d9Ct
         X5X78JYWNJtJ7hZzH+PBMDG3sgzsKer70hncRY9jlkxaOFYOKyiT9msjvyr5efbjwK5+
         yBip6dyPPzYPow7WzMFgA1duSvArqL5WO4a4l90W6Xseg1Yn0SSO7HUNzCglwD3n5FZS
         NhoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0ZjxEGyqxVpobPm/RJ+EZNtUYuEiSg65YJlV16IYPyU=;
        b=baZHhY2Ph+Xb6YIy6nXepzxN0D5btEwAowA2bTbuWTpBhixATlbNe4XXpr88obMVb9
         A6XR1hhdHXMyvhGxysnw3T2cJQd9Fr0gxPvKb5fsR38ZBhQryLo2jVLdA/zCy3zKjddK
         Mr6Jl9uoCA+SrQ/M13XUqLr9N76dJc46X+5PU7mmN0A1GyUP/Rtx5fco+qmCKA3ENPh6
         r75b7Fgt86/HP1ZyHTJ0W2z9CgHuZkR6ZUi2GjJgfB0KLixUnSKF+nyw3onfmO8p4Kgo
         Uq4S1Q0l1NugLJ83I6x0oF1ndLqpfKU2Y0F1kuz5SfqS/fWtQkfIdRz+NWMlFAXeLjBH
         kUjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=LCW+fT8r;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com. [2607:f8b0:4864:20::f2a])
        by gmr-mx.google.com with ESMTPS id a15si2396618qtn.4.2021.04.04.06.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 06:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as permitted sender) client-ip=2607:f8b0:4864:20::f2a;
Received: by mail-qv1-xf2a.google.com with SMTP id o11so246564qvh.11
        for <clang-built-linux@googlegroups.com>; Sun, 04 Apr 2021 06:57:15 -0700 (PDT)
X-Received: by 2002:a0c:f749:: with SMTP id e9mr1900291qvo.14.1617544634869;
        Sun, 04 Apr 2021 06:57:14 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-115-133.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.115.133])
        by smtp.gmail.com with ESMTPSA id d2sm9830886qte.84.2021.04.04.06.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 06:57:14 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1lT3FZ-000Vay-2X; Sun, 04 Apr 2021 10:57:13 -0300
Date: Sun, 4 Apr 2021 10:57:13 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <20210404135713.GB7721@ziepe.ca>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210402233018.GA7721@ziepe.ca>
 <202104021823.64FA6119@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104021823.64FA6119@keescook>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=LCW+fT8r;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Fri, Apr 02, 2021 at 06:29:55PM -0700, Kees Cook wrote:
> On Fri, Apr 02, 2021 at 08:30:18PM -0300, Jason Gunthorpe wrote:
> > On Fri, Apr 02, 2021 at 04:03:30PM -0700, Kees Cook wrote:
> > 
> > > > relevant. It seems to me that the hw_counters 'struct attribute_group'
> > > > should probably be its own kobj within both of these structures so they
> > > > can have their own sysfs ops (unless there is some other way to do this
> > > > that I am missing).
> > 
> > Err, yes, every subclass of the attribute should be accompanied by a
> > distinct kobject type to relay the show methods with typesafety, this
> > is how this design pattern is intended to be used.
> > 
> > If I understand your report properly the hw_stats_attribute is being
> > assigned to a 'port_type' kobject and it only works by pure luck because
> > the show/store happens to overlap between port and hsa attributes?
> 
> "happens to" :) Yeah, they're all like this, unfortunately:
> https://lore.kernel.org/lkml/202006112217.2E6CE093@keescook/

All? I think these are all bugs, no?

struct kobj_attribute is only to be used with a kobj_sysfs_ops type
kobject

To cross it over to a 'struct device' kobj is completely wrong, the
same basic wrongness being done here.
 
> I'm not convinced that just backing everything off to kobject isn't
> simpler?

It might be simpler, but isn't right - everything should continue to
work after a patch like this:

--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -67,6 +67,7 @@ struct ib_port {
 
 struct port_attribute {
 	struct attribute attr;
+	uu64 pad[2];
 	ssize_t (*show)(struct ib_port *, struct port_attribute *, char *buf);
 	ssize_t (*store)(struct ib_port *, struct port_attribute *,
 			 const char *buf, size_t count);

If it doesn't it is still broken.

Using container_of() with the wrong types is an unconditional
error. A kasn test to catch this would be very cool (think like RTTI
and dynamic_cast<>() in C++)

> > And then two show/set functions that bounce through the correct types
> > to the data.
> 
> I'd like to make these things compile-time safe (there is not type
> associated with use the __ATTR() macro, for example). That I haven't
> really figured out how to do right.

They are in many places, for instance.

int device_create_file(struct device *dev,
                       const struct device_attribute *attr)

We loose the type safety when working with attribute arrays, and
people can just bypass the "proper" APIs to raw sysfs ones whenever
they like.

It is fundamentally completely wrong to attach a 'struct
kobject_attribute' to a 'struct device' kobject.

Which is what is happening here and the link above.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210404135713.GB7721%40ziepe.ca.
