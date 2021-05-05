Return-Path: <clang-built-linux+bncBCUO3AHUWUIRB3VLZOCAMGQES3QCG2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9177637437F
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 19:29:19 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id g7-20020a056e021a27b02901663a2bc830sf2185428ile.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 10:29:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620235758; cv=pass;
        d=google.com; s=arc-20160816;
        b=ECeXWEcqIKx8ea61qp99lFRx3b3Wk4jgqJfg+1zHdZo0sOiBdR5P6/q+s1Tkz53sto
         sMlmV8TjRooeTMMlL70BTsJKm9aCplXLzqzY2gnzE7g7MXA+YFn2Gj/F4BLdtIOr8WTx
         naojmErEg3ZITqatgqtYOO/WSVu9EzWGL5l/QM5FAw3v1GplKfBioSq8LbNBbumI3CiT
         SwZUIenG70toWdJdH1oOHE3fmt03uMz3UKvA1iPyYhDMyfZrk0+4lC7t4X7xgpAop90c
         V25XJ6bAZC6gZVKz1hW6fN7C2w60+U/wZpEhFdcm4Bil9k2gIMblhC6f8Y9Bj7ivKQ3S
         bCuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uoxpkj5M8YdYD4XLqJuKEw49iDDckO1mOJMwQKMnq6I=;
        b=XD7Pj+7F5BslSsMEOtpK1wgaBifbi/bsvyhlnkoeJYKzOy0sCYWuYsiacqRlOZj5s5
         VDa0dR4UsxEu80MU7d2Sb5SCHRr4n+wMsXqJBOj108aALlHUZwRZcpt5M7u7ypc01pJo
         as2qvB9eyMtCxY3aFFcENWTA7Kj3HemRfbRipjy62b0sx498BgQM9B3WpTGEmxsvBYIi
         /Y7LdJIXp7K5MS07I+xNCi1UdIAIY2ihB+aF7eS00RZW1ai9F97NUlHI6TqDBO7QfIQ5
         0/QptRyWlOOw3fpEMpOGCG4PworMHYsc7lnck9l6BBI3b5XvXV2Hpo3gSnV2bXjXpx+y
         v8zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="H8/wac+r";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uoxpkj5M8YdYD4XLqJuKEw49iDDckO1mOJMwQKMnq6I=;
        b=pztujdTFS0Hvu+6U//syJaRUf31ess8vjswIydAPIcRYEKiB72iwxwogh+PyS7nYDS
         lzYragMnziUf+iuCEpgxYH4vAlZwqCFiFjCLGgZyysgSYeSpX+XiscfHB5GsKiFvG/2n
         NfJtjCAD11DHBqBFBsZ1mfQEb7YywH32oCVp8CxhBH58pgDL1CHkrLfwacWLesf8PfVD
         OWSqEcgcVLznvDDoVkCpL8XU3BsPB8m0YkiE/fu0cIizFfWHQmCpGW62RfiMPxGwz4e9
         1t/rSVHjvqOBLiWNUQpwoiaQYRWgDR/Q2RXSLUQqE2y/rqGMZJnOwf2TeytJmEvyatkO
         hpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uoxpkj5M8YdYD4XLqJuKEw49iDDckO1mOJMwQKMnq6I=;
        b=DPMXE1dMqmm+zgW+G+V9vtzOIcVwIMW5B6IO5Q/60zXBMhwBe8uQ6kAzOSMumF5nk/
         Y1aovXNKsIgjKsbWL86TCm6YdpxsaKO1txkqbP50b0qwzlGdLP4OvFyQZroV6W7woKcH
         9HERmz/G43LOPv2aZGqeNHh3S1Yazg/zmVXORdRebBP9Wx0yQfRiYNKIWDDGIWNj4CN7
         VE2O+LYtjfZXHxE0htxVcifhecV6+jOdzqAbiSfMtlGjFxIZukWd5QDwJhXZ5Gf9VvHv
         aZpskQKSsK6lU3/uE1QIUMh1SzfitATTQ9oRau/ezYFbk5Ot3DBkzJh3IJ5bOlSaVLsh
         0zmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LL89oeMPZZzLLO0yyf0B8btS63fWKhfyh7rmX52wSPDWNfEY2
	64KOFbk2dazKps3jg8y7SLY=
X-Google-Smtp-Source: ABdhPJyYmwZFlyBebsTPaRGo0C6yfn5F11Bb6JNCa76or6icIKdqggCSJZkM5aVw+dzVjcoMY3a6iQ==
X-Received: by 2002:a05:6e02:19ce:: with SMTP id r14mr61758ill.4.1620235758532;
        Wed, 05 May 2021 10:29:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c301:: with SMTP id a1ls1285642iok.0.gmail; Wed, 05 May
 2021 10:29:18 -0700 (PDT)
X-Received: by 2002:a5e:d907:: with SMTP id n7mr24652667iop.177.1620235758036;
        Wed, 05 May 2021 10:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620235758; cv=none;
        d=google.com; s=arc-20160816;
        b=gZ7Ovz4NGBeNB6Jp8BDJP3FmTFWm8KHzts0UhH/wPKOmJtf55M/pOhY3IM8/3KXfIa
         mcJPi0h+trvgCQhTQcfQ5uUXHIz7HIhI6nQ1CAlZDP7rJ3kEipaS6hGbQSENQ1D95UgP
         TUg0zLf0/Ib78/oiMvHQFnFZMyTdgNgpsAHMT7WDOil3SNxkj2ZzM7uOqkMJ1+lU2KDC
         vlUi0EpXA4hy8wlBf1eAJdX0X06YWXk9LJlRjTOXJkJMy9D2IkzhgZOHlZzQPB8CGMC8
         uNG7AN56JDnYp8pnQMR83jTXznBY8hcl2iV4YeTzdPfmwjl/ZXWaxzLrtSJrsIeG0ZBl
         vHHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fojQ2PXj0G/XPL225fjb5EMP1GoQwlvE1vKQPnzG0g8=;
        b=P8ssazfG0LgrGe6vJxXwA48Ksha0BgWdRVSOc1nAP6bRpDvGVO7sC9Trzui5cpeimy
         9FitjY5EnXoiPxrynZqkfkhgj7kAxiLisIHWqz6LGeMCmSje/CO2p3eD/XluVUXc9jHr
         Q0hA5XVHeU97kZB8Opzbjg9+6J1lPuAAKK2/58Wm2GAv9KC0UZ4VtBzkjxZ2l8CDpss3
         w/d7HjP4OXY6jrsQ147brgAOdONokTOnLLz+QZ8T3AWQo6bi8mMDWOKjFRGWSg7pRADJ
         C60Rthhq60NlDez7/JcDBK+Gu/dgkpc5MoeWPl8aW9LXfnr23S/Yia4l26Mn5zpzT238
         PSKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="H8/wac+r";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id o3si918717ilt.5.2021.05.05.10.29.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 10:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Received: by mail-qt1-x82a.google.com with SMTP id o1so1825691qta.1
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 10:29:17 -0700 (PDT)
X-Received: by 2002:ac8:6e87:: with SMTP id c7mr17134578qtv.358.1620235757561;
        Wed, 05 May 2021 10:29:17 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.113.94])
        by smtp.gmail.com with ESMTPSA id z4sm5441793qtq.34.2021.05.05.10.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 10:29:17 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1leLKm-0017M9-8i; Wed, 05 May 2021 14:29:16 -0300
Date: Wed, 5 May 2021 14:29:16 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <20210505172916.GC2047089@ziepe.ca>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210402233018.GA7721@ziepe.ca>
 <202104021823.64FA6119@keescook>
 <20210404135713.GB7721@ziepe.ca>
 <YJLHHpatWOgJo0Zk@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YJLHHpatWOgJo0Zk@kroah.com>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b="H8/wac+r";       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::82a as
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

On Wed, May 05, 2021 at 06:26:06PM +0200, Greg KH wrote:
> > They are in many places, for instance.
> > 
> > int device_create_file(struct device *dev,
> >                        const struct device_attribute *attr)
> > 
> > We loose the type safety when working with attribute arrays, and
> > people can just bypass the "proper" APIs to raw sysfs ones whenever
> > they like.
> > 
> > It is fundamentally completely wrong to attach a 'struct
> > kobject_attribute' to a 'struct device' kobject.
> 
> But it works because we are using C and we don't have RTTI :)
>
> Yes, it's horrid, but we do it because we "know" the real type that is
> being called here.  That was an explicit design decision at the time.

I think it is beyond horrid. Just so everyone is clear on what is
happening here..

RDMA has this:

struct hw_stats_attribute {
	struct attribute	attr;
	ssize_t	(*show)(struct kobject *kobj,
			struct attribute *attr, char *buf);

And it has two kobject types, a struct device kobject and a ib_port
kobject.

When the user invokes show on the struct device sysfs we have this
call path:

dev_sysfs_ops
  dev_attr_show()
    struct device_attribute *dev_attr = to_dev_attr(attr);
      ret = dev_attr->show(dev, dev_attr, buf); 
        show_hw_stats()
          struct hw_stats_attribute *hsa = container_of(attr, struct hw_stats_attribute, attr)

And from the ib_port kobject we have this one:

port_sysfs_ops
  port_attr_show()
    struct port_attribute *port_attr =
      container_of(attr, struct port_attribute, attr);
       	return port_attr->show(p, port_attr, buf);
          show_hw_stats()
           struct hw_stats_attribute *hsa = container_of(attr, struct hw_stats_attribute, attr)

Then show_hw_stats() goes on to detect which call chain it uses so it
can apply the proper container of to the kobj:

	if (!hsa->port_num)
		dev = container_of((struct device *)kobj,
				   struct ib_device, dev);
	else
		port = container_of(kobj, struct ib_port, kobj);

There are several nasty defeats of the C typing system here:

 - A hw_stats_attribute is casted to device_attribute hidden inside
   container_of()

 - The 'show' function pointer is being casted from from a
     (*show)(kobject,attr,buf) to (*show)(device,device_attr,buf)
   This cast is hidden by the above wrong use of container_of()

 - The dev_attr 'struct device_attribute *' is casted directly to a
   'struct attribute *' and this cast is hidden because of the wrongly type
   function pointer

 - The dev 'struct device *' is casted directly to a 'struct kobject *'
   and like above this is hidden inside the wrongly typed function
   pointer.

 - All of the above is true again when talking about port_attribute
   and struct ib_port.

This all implicitly relies on the following unchecked and undocumated
relationships:
 - struct device's kobject is the first member in the struct
 - struct ib_port's kobject is the first member in the struct
 - The attr, show and store members are at the same offset
   in struct device_attribute and struct hw_stats_attribute

None of this is even slightly clear from the code. If Nathan hadn't
pointed it out I don't think anyone would have known..

> If that was a good decision or not, I don't know, but it's served us
> well for the past 20 years or so...

I agree with Kees, "my mind rebelled". I don't think it aligned with
the modern kernel style. If tooling starts to shine light on these
bast casts I feel it would only improve code quality.

For instance the patch Kees pointed at e6d701dca989 ("ACPI: sysfs: Fix
pm_profile_attr type")

This is a legitimate typing bug. ACPI should not have been using
struct device_attribute with a kobject creted by

  acpi_kobj = kobject_create_and_add("acpi", firmware_kobj);

Certainly this RDMA code has no buisness being written like this
either, it nets out to saving about 50 lines of straightforward
duplicated code for a lot of worse junk.

Regards,
Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505172916.GC2047089%40ziepe.ca.
