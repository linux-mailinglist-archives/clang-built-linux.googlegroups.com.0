Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBDOST2BQMGQEZJLRBLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2038735317F
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Apr 2021 01:30:23 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id q19sf708679pgk.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 16:30:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617406221; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5xrVF7kj4oN52wyBiLPE2SC1A3id8pM/WxOWbtYNUZU3asMO47lksVmrLqC/mp8Cp
         HSv3q2KuOMYXjPd2hQPiMc2MeN2i/UU9ekWlHkVtaKduv0PWjZXjiU7Oe1nAihiofCeT
         cumsgG6NR3ZtDiOeHB7HLWOPnqlj0m8lQUhTznofzCRu/R79Me1c4VORXlWP5lsq1zls
         akinPcgOgon5CY3d1LhzhV4qCvqJD0YGnaY8B3VYz5jmqvOXSBq4SGFEHcYtBCOwOYyi
         jjd6kQt0QvnfSMFRdHKZuW4sy8wxnt4sybmwKphUZIiNqvSzURWTrh18TmpYwBV4V1fE
         55yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9dHILdX43kWIYOdtO/8+DuO04olDoX770p6JONur8Zw=;
        b=C9qYfEzUCK31/xh1y5ESsimA8Z1wGC/zhuPTcf+0AQq9e4L73RsjhZ+ZblCWVPGffY
         o1uD875fPI+EAtyG9x8p7qnKM59+06xJ919g+M7T6gFBD3kzH/dR58mGSOa5XPIc24kL
         GrF2hOTrwFfF0mNg6PLFdXOwokepafoweeiCwdBMZXwk0QyhF35XqJ8PjwWRFCEWgJ0u
         YQAXveFf/+rA9lOsVUsLvt82jfy784A01Fu7g0K0PBERcLTmbzaeUzbvZZzjBaUXeV+3
         bRIPFvSiUnsNk5P6fQ0543318ViRgRQLP9tQjm1OYX/rhELtHe85+rD7tzS4nrh3Gi2h
         WXhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=VC23UchA;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dHILdX43kWIYOdtO/8+DuO04olDoX770p6JONur8Zw=;
        b=Wmek1ST6bvuFWNZV/wAkuLdykLd+P2kv+CIWhFr7DogilZjxq/f1aA0rgiuA2cVKpj
         4abtPRkD/rLEY6hDsatNCojgO8ocYT/cUYcqI6bjyymSvYQIePpJ5NLnDRwMypFQDNev
         d+QV/IGGAUzVlOqbJ4FDLVMso5uMDQ9S1vZaBRe/MhPzV+xHm3Yc/wYFgDqIdDF0w7Eo
         ucQnMFsJk7VzLtIdN3ICyEmPh59Om9qUNTX/fZdpAKvqT6uiVVAW4yMJHjykuRCWFZMi
         7L3uVVv5Ir3OZ9cjWTj5pYwQhH1BpnkxV1ROxc0jwrd/yb+i1Mi7r3K1rwa9u8PPDywc
         JfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9dHILdX43kWIYOdtO/8+DuO04olDoX770p6JONur8Zw=;
        b=fZ5BKY35uOmwReakS35/CttFSOvIUHnWtQtd0T7yD4O4HC29DDQug1mcBnBnfI/1Oa
         wXxjNMnefVGv9s8FrrQh0OpUxK+9//7iRxFr2hUnkvFWewohV31NeFRw2X1Lr/EELtpX
         T57xaqCHK830ENWD4a6QfCeA3J51wrFaDSQ8+JRo3QBfs1TSeBUbkxVbJj7D6WBc6FPZ
         jdK4rUQt/WS0gag8BqGEK7rbeKi0Bvb34TA9wpF1dFplwsA2i9Pzb77/EOV520IdDVuK
         GwwWjGgncUsbOJA2Ifql0qawZxc4IWUk97BM1S/mNZTON0IXqMZuBuuncnndUAeGZEwa
         yufw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ckNCvk10iJfkMQGeWaGj+Z4wletRUsQgdksYBXQCwK3Tbdqx1
	n6/kfeBT3+nyYVisIwoMPns=
X-Google-Smtp-Source: ABdhPJwriTKqQrIasYRm1ewiBYwDp/FRFi+SgCJ2xvBQA5K146k4Nlr263XMaGFvQ5omyVpxVFZHOw==
X-Received: by 2002:a17:90a:eb0b:: with SMTP id j11mr15404502pjz.62.1617406221656;
        Fri, 02 Apr 2021 16:30:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:972f:: with SMTP id k15ls4142631pfg.10.gmail; Fri, 02
 Apr 2021 16:30:21 -0700 (PDT)
X-Received: by 2002:a63:e5c:: with SMTP id 28mr8993706pgo.365.1617406221085;
        Fri, 02 Apr 2021 16:30:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617406221; cv=none;
        d=google.com; s=arc-20160816;
        b=b3Fgu0yTShAtFFviZjYlA6aQTX9osddsB9h2pBKHAE/yFGtEunkrnZjH3jwTMaOUK+
         qd7FwNOC40Q68WIB4Joh6c5f2eYJyl15h4YESpVwJaZE3b6skAudwSW/ptpBHvz/Tvfk
         m5fAhrKNlB5NR6/wocSx7vjAPmj/GTE4YP6BCZFK0QVf3PP6BS7zR5GsCxvFIkdToh8T
         /3MbnIcM2v7AFVRqmMnqlK8xH0+C1dZ078Gol3tRgxcvP9BE+83IvlfBBXRe+sQpdW+O
         zE409r9FLsq5QJPlrhTXnhHUD34lk2qIpUPIOpSG8nca4oQkfKVvpM3qLYIQTKSLaWWy
         d91g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DUrZ26ujqM3QH+AI2fr1q6gmaG6zG9DayC1eq0IxhSk=;
        b=kZ54mZuLqOmOTfbFrnxJEeuCtlZ/JxyvhwlIKWxhVV5v5gkAxdZAALnPOBIh3OFKQV
         4zppsXEN3+nsdHt1mEPnzDINAJnRUu993ZpfL9tH3qqK5ZgamWAYTLn5qICYFmwwniFS
         YBe6iyTlDR9ra+GU5PtTLYB/exG047XJML44BcPAufjGdspEEWh3kR3Iau+dAo4wxcKK
         skpFiCVO3x7uUc0YZptcru9C5uso4W7fdS/lNY6VsMNUyiT8yhS/aGjyA9ScmbexSObD
         zWhMqFQ+pASeIMf7i7waqxhUuNVPnsIAL2seE5MKjacrOtayhkmH92CQ33aI0+ORGBgO
         5KCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=VC23UchA;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com. [2607:f8b0:4864:20::836])
        by gmr-mx.google.com with ESMTPS id d13si573173pgm.5.2021.04.02.16.30.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 16:30:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::836 as permitted sender) client-ip=2607:f8b0:4864:20::836;
Received: by mail-qt1-x836.google.com with SMTP id 1so4706535qtb.0
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 16:30:20 -0700 (PDT)
X-Received: by 2002:ac8:544:: with SMTP id c4mr13510366qth.248.1617406220566;
        Fri, 02 Apr 2021 16:30:20 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-115-133.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.115.133])
        by smtp.gmail.com with ESMTPSA id j6sm8695976qkl.84.2021.04.02.16.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Apr 2021 16:30:19 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1lSTF4-0003Yk-So; Fri, 02 Apr 2021 20:30:18 -0300
Date: Fri, 2 Apr 2021 20:30:18 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <20210402233018.GA7721@ziepe.ca>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104021555.08B883C7@keescook>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=VC23UchA;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::836 as
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

On Fri, Apr 02, 2021 at 04:03:30PM -0700, Kees Cook wrote:

> > relevant. It seems to me that the hw_counters 'struct attribute_group'
> > should probably be its own kobj within both of these structures so they
> > can have their own sysfs ops (unless there is some other way to do this
> > that I am missing).

Err, yes, every subclass of the attribute should be accompanied by a
distinct kobject type to relay the show methods with typesafety, this
is how this design pattern is intended to be used.

If I understand your report properly the hw_stats_attribute is being
assigned to a 'port_type' kobject and it only works by pure luck because
the show/store happens to overlap between port and hsa attributes?

> > I would appreciate someone else taking a look and seeing if I am off
> > base or if there is an easier way to solve this.
> 
> So, it seems that the reason for a custom kobj_type here is to use the
> .release callback. 

Every kobject should be associated with a specific, fixed, attribute
type. The purpose of the wrappers is to inject type safety so the
attribute implementations know they are working on the right stuff.

In turn, an attribute of a specific attribute type can only be
injected into a kobject that has the matching type.

This code is insane because it does this:

		hsag->attrs[i] = alloc_hsa(i, port_num, stats->names[i]);

		// This is port kobject
		struct kobject *kobj = &port->kobj;
		ret = sysfs_create_group(kobj, hsag); 
[..]
                // This is a struct device kobject
		struct kobject *kobj = &device->dev.kobj;
		ret = sysfs_create_group(kobj, hsag); 

Which is absolutely not allowed, you can't have a generic attribute
handler and stuff it into two different types! Things MUST use the
proper attribute subclass for what they are being attached to.

The answer is that the setup_hw_stats_() for port and device must
be split up and the attribute implementations for each of them have to
subclass starting from the correct type.

So we'd end up with two attributes for hw_stats

struct port_hw_stats {
    struct port_attr attr;
    struct hw_stats_data data;
};


struct device_hw_stats {
    struct device_attr attr;
    struct hw_stats_data data;
};

And then two show/set functions that bounce through the correct types
to the data.

And so on.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210402233018.GA7721%40ziepe.ca.
