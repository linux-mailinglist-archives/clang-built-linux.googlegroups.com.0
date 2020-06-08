Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJWY7L3AKGQEASQF3AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 861AA1F2170
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 23:22:47 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id r9sf6910886oia.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 14:22:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591651366; cv=pass;
        d=google.com; s=arc-20160816;
        b=FNGwI7dKD+e4f5vaJD8gSn8d2sv4HMhpD35P4p8abusPaNjm1o2I8YNH8g6lZt8PgW
         +JIe1pTosZiCafvN4FGQuwvB4p9bD3gaRTFYTf8l9/GuYhJFFgfCYyVLd9Nbmz851bUF
         5n6RJVboxcSlZyBT4uLWiD+KBu443MFSbKHh5g0q7yxpwGKWqVTgy74a88+n30lG5OEz
         sSInr+MuxEW2JqXjIUqC1YQnjmJ0iIw6G9mrWYQHXvWJCPgKGc/ZPEbBI0rW4MrvmCzt
         3q3JIwx03mEduzXFtby3bkkcBY8lKOHxfKJ8EyAvmtYqMQ5EJ2cQ6y/LND7NfXz210a8
         J6kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=JXVOyHHQQfLL/A4mHMKXq4WCyom//iRV1RDKg/5ltB8=;
        b=XjClstTb6mm6HzaJ/7JGbNoOwZb+VJu8lqyUB3fFjbhs59+wmvWu+SAwLoqF4qF29K
         Djl5DuW/PNE0L3oqYfECAEgfP+6OPItgLpErOOVmqjkCba4tpRJY6dOC84GXtAN9mE2F
         jGENsTc1iVsIjN1EMYKap7+YMPvGx03AXeZzb7fEcdk7OqlJZjjuhEdZduiD/yCJIY0i
         B9Au3OAJkjagDKlPSrWlXf1Sna4DqJkpIFVb42S/f0iTWe9Cir9GKXRB4X6aae0fJgAf
         dTpog0nz+a27F+XG3g78nIkIuQBDHMys24ibrbhfDJslIPG5mQBwtJP/d1IbzXmmraL9
         BHwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pH67onXK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JXVOyHHQQfLL/A4mHMKXq4WCyom//iRV1RDKg/5ltB8=;
        b=arhJ4dLfISd/JRvxtblM42QfL977fpbE91gsUPPU/HAovQmxZLT8Yd58AmTRCVCSZK
         H1BCv3ADbPHnYQzSHXDd60mUq0Ph/PwjcfGMwsmGU0BcjBW7wH7SJMEaV5YC9CrRcB3Z
         8hx688YQBrjrnrkhm334acjn56455WH9kpZcIl7L8er1dMN8JUtLcG1A+o9oK76//hM3
         vKGdGYEjR8zJbnycqc+Iyuge1F/6qUvNMepXr6X92LOd2lCAV32xnFBDYG2UFl6UWcjd
         qWVrhxqKoy3jTCDkvVWt8o9dtA8WxHzqgEory+53Q4FnIO9hNfdMmg49Lbpf/944mo6W
         XJNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JXVOyHHQQfLL/A4mHMKXq4WCyom//iRV1RDKg/5ltB8=;
        b=slI59BCPSLFjHcBxTfF1YCqMH6As5pBeVmDc79P4nWuTLXBwOrNOurmXinKLj4yW6k
         RVvY49P+XgmCEPLGupiCseTBBZQYCtTXWYU6IgQr763U5E3D9oMx0YS/IaeNfk97cnb3
         Wi3CBRWzWnY/Z50oTSmD5AVKzSn4lyzYT7ty4EwamgdYHsozBoYg7bB8fcL0a6Thy6bQ
         lokBNpaPol8I9K2qc5EiWB4srbfFqR0A4iR0rRufGScWzWPpRrsD73BfQ1bU4m+CECxW
         ciLD//3bOg6G2nfr52HNSjhDM/rLCQIGf19/r/pJbRD0j1cSJbC8qSHfOjgQ94yJ1E1C
         cSdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JXVOyHHQQfLL/A4mHMKXq4WCyom//iRV1RDKg/5ltB8=;
        b=hxq2QrXzRjIudwaC+9wzIzsyGgi0UNPaDTWV9C7u2M9H5kZ31AFXKXXgZ/YpaiY6Ni
         ITVDKj93xli7b677jwI/mZDKbIGg5UwE0aXI+mE0vsys+bChv6qZumy33JbQOm5ndsra
         iJN9LY7LkoNlWprDpuMP65AN58XWrxRsk6+uoo6nNEuw+wiYoiRuOa74//YiYBSbkgpW
         c3NA1o/Fj1XAQv/8oHUAUag5pWvdgRYGyoQ6CgWNiCaTEvNLZkIpcUz2VIBDmnl8Pape
         clvojxpDWS3e5AGvucbCxTrPI9+IYZoLGBWRdPlHcOIj07nkhxti2atdFo3AtvAW7x1j
         BXOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BrZ+174Zaz0O55kYB67F4MjNDncKjB+3JW7fD+6tikC/BYiB1
	lbROgsnWc/4z1ITvkPDaPCQ=
X-Google-Smtp-Source: ABdhPJzs5NDlwbBcl3vKmdRAbmkh1bbnJF7n9jgECtV9rqAD+TRnuVd/lmZ+5YML3EDBT4C5aHCROA==
X-Received: by 2002:aca:d15:: with SMTP id 21mr995600oin.41.1591651366411;
        Mon, 08 Jun 2020 14:22:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls1453454oti.11.gmail; Mon, 08 Jun
 2020 14:22:46 -0700 (PDT)
X-Received: by 2002:a9d:a14:: with SMTP id 20mr10804063otg.292.1591651365950;
        Mon, 08 Jun 2020 14:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591651365; cv=none;
        d=google.com; s=arc-20160816;
        b=GiD+OwV3NhrvEqDOgMCqNfKo073aQI5SS+W/9bIPNICQMzZdOYOIfxKJJRikCs13C9
         tLalSn+4KyPXnkXy7ea+nU44LLNzQVVymqMkD+gmHyg7/jQQTn+/5dh4HtFxQI8ubnqN
         Ex+H3UoShxkwAV0W/ESZeCjAJPUG0oBd/uh2R6EWNz+74Lq7jurDPNoIfWFKQhLfOYBH
         hN5jtXlQCPxtb8wxrnZuPTLVzGPNPgBJxJLWoGbKeoGZZHVtUFNc4KhkFEZzPBqAD6Cd
         Ref9uEPprQkbqeDogYHUPl7aXoFrZ4MZSPfu7glsqWAUJabNsMoV/n4viOAkLp8wzoOs
         fbbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wW8D/dSScjtqwaMeYYSqLpcYbiXjnjq+RVvdaEoSPKg=;
        b=VfdieR6eQNdF+9DNhK/xbo1mHOnHVgFWihaFIufgWnovcNakt1nadoXPufwEIRNJQF
         8F/kCh+gmOILSnBZ1ek8BCjR2hQVOAEZ1TmJnhbbN/EhrRHLI99nk2KlhiSzRgNsxOvo
         qEbDrB53BxceDx3fvMMTJhLAX4t4cfpdx+da0KCPNP3m1fCw4zLoN0VHC4lyNFevHq91
         GAyYSs3bfC/usR2K/1fhEz4D83zjw1vCuuwZ0FGZA0WXn+0y0KaqSHio9w+bO0FiUeUD
         BtPc31rg4WvUCEkF91rkOuHTCL9Bij+X1WKpNHaBjHvioxcQM7ME7EuJjU+2Qwdh3bv4
         8P8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pH67onXK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id e69si910093oob.2.2020.06.08.14.22.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 14:22:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 97so3531136otg.3
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 14:22:45 -0700 (PDT)
X-Received: by 2002:a9d:67c1:: with SMTP id c1mr12662793otn.27.1591651365554;
        Mon, 08 Jun 2020 14:22:45 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id r65sm592355oie.13.2020.06.08.14.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 14:22:44 -0700 (PDT)
Date: Mon, 8 Jun 2020 14:22:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Saeed Mahameed <saeedm@mellanox.com>
Cc: "leon@kernel.org" <leon@kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Vu Pham <vuhuong@mellanox.com>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"kuba@kernel.org" <kuba@kernel.org>,
	Leon Romanovsky <leonro@mellanox.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: Re: [PATCH net] net/mlx5: Don't fail driver on failure to create
 debugfs
Message-ID: <20200608212243.GA2072362@ubuntu-n2-xlarge-x86>
References: <20200602122837.161519-1-leon@kernel.org>
 <20200602192724.GA672@Ryzen-9-3900X.localdomain>
 <20200603183436.GA2565136@ubuntu-n2-xlarge-x86>
 <cf22654ba1e726c3f3d1acf7eff2bc167de810c7.camel@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cf22654ba1e726c3f3d1acf7eff2bc167de810c7.camel@mellanox.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pH67onXK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 04, 2020 at 04:44:00AM +0000, Saeed Mahameed wrote:
> On Wed, 2020-06-03 at 11:34 -0700, Nathan Chancellor wrote:
> > On Tue, Jun 02, 2020 at 12:27:24PM -0700, Nathan Chancellor wrote:
> > > On Tue, Jun 02, 2020 at 03:28:37PM +0300, Leon Romanovsky wrote:
> > > > From: Leon Romanovsky <leonro@mellanox.com>
> > > > 
> > > > Clang warns:
> > > > 
> > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning:
> > > > variable
> > > > 'err' is used uninitialized whenever 'if' condition is true
> > > > [-Wsometimes-uninitialized]
> > > >         if (!priv->dbg_root) {
> > > >             ^~~~~~~~~~~~~~~
> > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
> > > > uninitialized use occurs here
> > > >         return err;
> > > >                ^~~
> > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note:
> > > > remove the
> > > > 'if' if its condition is always false
> > > >         if (!priv->dbg_root) {
> > > >         ^~~~~~~~~~~~~~~~~~~~~~
> > > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note:
> > > > initialize
> > > > the variable 'err' to silence this warning
> > > >         int err;
> > > >                ^
> > > >                 = 0
> > > > 1 warning generated.
> > > > 
> > > > The check of returned value of debugfs_create_dir() is wrong
> > > > because
> > > > by the design debugfs failures should never fail the driver and
> > > > the
> > > > check itself was wrong too. The kernel compiled without
> > > > CONFIG_DEBUG_FS
> > > > will return ERR_PTR(-ENODEV) and not NULL as expected.
> > > > 
> > > > Fixes: 11f3b84d7068 ("net/mlx5: Split mdev init and pci init")
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> > > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> > > 
> > > Thanks! That's what I figured it should be.
> > > 
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > 
> > > > ---
> > > > Original discussion:
> > > > https://lore.kernel.org/lkml/20200530055447.1028004-1-natechancellor@gmail.com
> > > > ---
> > > >  drivers/net/ethernet/mellanox/mlx5/core/main.c | 5 -----
> > > >  1 file changed, 5 deletions(-)
> > > > 
> > > > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > index df46b1fce3a7..110e8d277d15 100644
> > > > --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > > @@ -1275,11 +1275,6 @@ static int mlx5_mdev_init(struct
> > > > mlx5_core_dev *dev, int profile_idx)
> > > > 
> > > >  	priv->dbg_root = debugfs_create_dir(dev_name(dev->device),
> > > >  					    mlx5_debugfs_root);
> > > > -	if (!priv->dbg_root) {
> > > > -		dev_err(dev->device, "mlx5_core: error, Cannot create
> > > > debugfs dir, aborting\n");
> > > > -		goto err_dbg_root;
> > 
> > Actually, this removes the only use of err_dbg_root, so that should
> > be
> > removed at the same time.
> > 
> 
> Fixed this up and applied to net-next-mlx5, 
> Thanks!
> 

Hi Saeed,

I see this warning in mainline now, is this something you were planning
to have merged this cycle or next? I see it in several configs so it
would be nice if it could be resolved this one, since it was introduced
by a patch in this cycle even though the core issue has been around for
a few months.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608212243.GA2072362%40ubuntu-n2-xlarge-x86.
