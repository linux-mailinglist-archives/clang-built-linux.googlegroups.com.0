Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQG2373AKGQE6UN2GKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E47311ED632
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 20:34:41 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id c5sf2005274iok.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 11:34:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591209280; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+8Sejyw0iq4SvDrLsUZHnVOVAmdnsYDgW1T0/IgG9WiO5ytQ2KzRVoN2J8jhjFsO0
         vKux1gPDAijU+NPVvuSi5/R1+e43stRDtPXa43sMOmqpuDGSmLqovRlcF3QYErVh6Rjc
         tqvJ82P70U3KGiTAOzJe850YcqsUgQoM0xYogyB42i9Rh67HzZeJ1LmM0VaZ/VTz5T8h
         3pQzpdb0dzXak5N9gW9N5AgyqQBLrakC7mp4pqRSaX/vfoOv95nNCwZeI++RqLgwFqm1
         HQV8l72yBDMiUmgZCK1ge1FOXac74gkBQmipkjrQmX3SylrRjR2L6LBdWrqNNb+Oc599
         cShA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=wjPevAPoZbZWEL7ExL/+/UALBMsKjBtqgJfLeeriOaE=;
        b=x2MlKk0YO4h1LL45+VyC3z8u/bP02+zJysLeptbhQP7XPrEITW1w/dmeloSfF/9X84
         +ds0X7x7ArLw4NSAUfJCsPaIJQidtWvuEx9KMb0RcBer6rd5fLMdCHqRriNfJ4AcFmeV
         5dOQtpWHVYutXm2kUwCrFY4Mld9hMQcnAASn5OZm/5eCZUqv5LG2dykYRSHD8RGjArGl
         D6nh+UmhsvR3H3ooP+w8sRKjROmHAF2ZjFl62GqiHNjGu5LcheNvsc4wh8ihcIYcOZtu
         SVNtmHpTLM0tj/cUQYlSLXFg3DUkiMwJZoKuufYSYLQSiWzCyfVI/oS82+NQxwBYss7H
         1jhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WAuK+Ys4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wjPevAPoZbZWEL7ExL/+/UALBMsKjBtqgJfLeeriOaE=;
        b=jDrzX8aA7VoC1DvhVdJtO8MYCVsPMmwm1d85pJNWbtwhTwdIoOz0ve5X9m06EDg9Al
         9DVm/TUx8pGfWMXP1A8ig1+wgi+8QzJgZ7MtmyUUXcWf0eczwR9qF5EBL7JVf9Kf/4xD
         HJ9vMCdm0uwyQ36SGx6VZIeuODlPNrUoFAO+1Vxa9KHoDfdrwvo8eiKzKeMqfOuv3eXF
         Ve+6AI9NiHR+VXpSz0p4dIozrN9PQhEKxvUcwXEeHbNVDV+l0VskYsNb/U14ZKhQpk94
         MsolNA5XnDuI0hehqdSK54t1y9WfPr/5uW0H62vsZQeEukvMkqzipul56H6VHiYkOC9R
         4trQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wjPevAPoZbZWEL7ExL/+/UALBMsKjBtqgJfLeeriOaE=;
        b=mKryVgBBrWt6GGz543WE4I7XYoGBS4Ziu/iqil0n99IXCRHNkaEba+C4lM3+HjsVDq
         gxJrmbyN/gDD1rCjnAhzPTIeY5+MRhXrZVzn1zrxcKE+y9RzgYbUZuf4ydS68mkKi6NX
         B76wLnvMoq8I07j7+5RQ+h1/AiTIrjtJLa3lpD7nISz8kLU4hliGYpWIIrnztJp+3h46
         u2ndq/mOeO/lrHi9/FoEwR82ylTUF7wupd3velBPG0yd6CdK7IEoIun/ms/FuGbg6r3a
         +8XLJW1+jZUVYZB7c3c4BZ6bFHzITh1roQi4LAcZ6hXpWuq48JaLBPjRTZm0JVs2fQHP
         ueDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wjPevAPoZbZWEL7ExL/+/UALBMsKjBtqgJfLeeriOaE=;
        b=tcsHaDfvQexqn9cQGTI3rhI1GJXBcfMu9CycRRxtcCl7H/i1pvf8HDPKWx8Sv9rNT4
         Bm6VWw7eE6Lo4vW9uU1qbaK/gLNh7iG8DJOaoABd9UaByvdByHm3pPVW4iwywXPKQw+h
         wG/bdGM1emsw1/0fF6qmmpAeFLQ11j37455BowSl6xGdBCBdYbbAhwzdKX7s4nKJp11h
         snYInB2+20hQU7oulXUMaL2p/WJB3xfaCpM0J6UiHCiexwKsUd5QVJNqs/oieXB+P4rt
         h4LTNeE7KQ8A3wjEIFR0k3Okh8szzL/gxL3gwwwxwJs1GNvOgVsoZRbf73y30kLL8vhi
         7m7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IGPBA47LPotclJ8Q7edULy1yfhbYGCi1+NOhtDtTG1be5G8s4
	YtUR79hbubNAXeFbyNrtLRM=
X-Google-Smtp-Source: ABdhPJzg64kDHtzxfk8luJVrlUotUS8KQx9wkogxmqlE+GG6Cl1y48gLejBDbfVxNOwjGrGQFiowNQ==
X-Received: by 2002:a92:6d03:: with SMTP id i3mr818596ilc.103.1591209280690;
        Wed, 03 Jun 2020 11:34:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:1453:: with SMTP id 80ls502740iou.2.gmail; Wed, 03 Jun
 2020 11:34:40 -0700 (PDT)
X-Received: by 2002:a6b:d017:: with SMTP id x23mr966703ioa.59.1591209280267;
        Wed, 03 Jun 2020 11:34:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591209280; cv=none;
        d=google.com; s=arc-20160816;
        b=05taFkPIRfIj3MhrrizTcbjuYaQp5i38hji5QEej8wZHzdHkrlDCUalrjqeMQ3Hvz/
         UMPDOHLufSrbQCbgiGafHuirKLJ0TGeXeusoNLMpVkJhhoHlx2CetTKK60cl3Dr9fV0e
         OHjBadIVx2DhLTafLFKgkvAUXq4JKa7ABazukCQDWUNVPcijphymSo79RC2KU9DtgpNW
         JmYo5fkMd3hyOEYcP55hwWcQKI9bRfH75fliOTEIzgvNCrm2qGLv0sLPGPAwEgmS/uNw
         i9cUxR4UBYbc/C4nZvhhCslPmb5roJU59Vk948NmDHweF6lyY62tWsY7pwQFvOaywBgN
         OGIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oQUJgJ3YOiG5bkxRQ655KQgPRUZx1ajq2wCUvcTmv/c=;
        b=yBt4fFzfZOKNcOeGuAIVO8KrzW2dowKXYqCWbgJuza32ucnLhqsGIQxKP9XbRVAzGG
         Yi4ItxnJu9MnEou+Ne5d9g7X+nAkI3A4+i1r6oWPbi0mbDZuqVAaYC0IrDVgzYOn4R7p
         /yN9ppRUJscJAGn0T5U7sAJK6hHxOa6E5s+H/s2lcmhTdySc+sLF+vyoGWZIWR4nxW5Y
         qxH+HNU8vB2Pvc6EGcib1FJhcht0yfxVY3DAOGI8AqtIVNh8Deh6VUUUTuy34YqwJHTc
         fWbVwiy9mGJAkjAsjzfRY9/hI+Wpi9pzd39WrOVaf3g12fSHp27lM+dSAVepJpTayu2z
         Fi1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WAuK+Ys4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id 29si4512ilv.5.2020.06.03.11.34.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 11:34:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id t25so2705071oij.7
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 11:34:40 -0700 (PDT)
X-Received: by 2002:aca:1e0f:: with SMTP id m15mr763445oic.23.1591209279813;
        Wed, 03 Jun 2020 11:34:39 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id m18sm693585ooe.12.2020.06.03.11.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 11:34:38 -0700 (PDT)
Date: Wed, 3 Jun 2020 11:34:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Leon Romanovsky <leonro@mellanox.com>,
	clang-built-linux@googlegroups.com, linux-rdma@vger.kernel.org,
	netdev@vger.kernel.org, Saeed Mahameed <saeedm@mellanox.com>,
	Vu Pham <vuhuong@mellanox.com>
Subject: Re: [PATCH net] net/mlx5: Don't fail driver on failure to create
 debugfs
Message-ID: <20200603183436.GA2565136@ubuntu-n2-xlarge-x86>
References: <20200602122837.161519-1-leon@kernel.org>
 <20200602192724.GA672@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200602192724.GA672@Ryzen-9-3900X.localdomain>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WAuK+Ys4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jun 02, 2020 at 12:27:24PM -0700, Nathan Chancellor wrote:
> On Tue, Jun 02, 2020 at 03:28:37PM +0300, Leon Romanovsky wrote:
> > From: Leon Romanovsky <leonro@mellanox.com>
> > 
> > Clang warns:
> > 
> > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variable
> > 'err' is used uninitialized whenever 'if' condition is true
> > [-Wsometimes-uninitialized]
> >         if (!priv->dbg_root) {
> >             ^~~~~~~~~~~~~~~
> > drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
> > uninitialized use occurs here
> >         return err;
> >                ^~~
> > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note: remove the
> > 'if' if its condition is always false
> >         if (!priv->dbg_root) {
> >         ^~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize
> > the variable 'err' to silence this warning
> >         int err;
> >                ^
> >                 = 0
> > 1 warning generated.
> > 
> > The check of returned value of debugfs_create_dir() is wrong because
> > by the design debugfs failures should never fail the driver and the
> > check itself was wrong too. The kernel compiled without CONFIG_DEBUG_FS
> > will return ERR_PTR(-ENODEV) and not NULL as expected.
> > 
> > Fixes: 11f3b84d7068 ("net/mlx5: Split mdev init and pci init")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> 
> Thanks! That's what I figured it should be.
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> > ---
> > Original discussion:
> > https://lore.kernel.org/lkml/20200530055447.1028004-1-natechancellor@gmail.com
> > ---
> >  drivers/net/ethernet/mellanox/mlx5/core/main.c | 5 -----
> >  1 file changed, 5 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > index df46b1fce3a7..110e8d277d15 100644
> > --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > @@ -1275,11 +1275,6 @@ static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)
> > 
> >  	priv->dbg_root = debugfs_create_dir(dev_name(dev->device),
> >  					    mlx5_debugfs_root);
> > -	if (!priv->dbg_root) {
> > -		dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
> > -		goto err_dbg_root;

Actually, this removes the only use of err_dbg_root, so that should be
removed at the same time.

Cheers,
Nathan

> > -	}
> > -
> >  	err = mlx5_health_init(dev);
> >  	if (err)
> >  		goto err_health_init;
> > --
> > 2.26.2
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603183436.GA2565136%40ubuntu-n2-xlarge-x86.
