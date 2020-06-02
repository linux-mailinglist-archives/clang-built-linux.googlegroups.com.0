Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF5B273AKGQERHLZ7NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 695701EB418
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 06:07:53 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id c17sf3395065ioi.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 21:07:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591070872; cv=pass;
        d=google.com; s=arc-20160816;
        b=FaizfpSQoMEf4r9a5r2uab/3CPRvuakaKGHdZUh2YXJJCp7p0qO8NONPwzfCIP1Hsm
         MAQ3ABkzmsdZEBLbbwZe0wRwmsdU/Ry9HzSBsPTHDFGktVFzFQWEk8Qh8HWgkjOTWck3
         rLDaJO2kKLv4gSkbziZ/0XrnNDz0SHOZycrZ9SR4lZ9Ss8N3LvdZjERhbzhbE1kTJcFj
         zYo3qbxFRaq60CSUMFnu65fSbzT1tAPaJZ+wRKQfRNLNJbpM3T6zYTwyWXGPO2sCnsos
         w7RDNjt2yB3ngkQpBi44V5PScHLr4CvkPAlVQEsgQjxvy0h60hkAUIIy5cqUwbAvKjOB
         L72Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=9RfY31VLhTdKMwWO2tho56Rw4B8w8bEKfQVYjT0Zu5M=;
        b=FmOcKkjeel9nWd/yEDwYTp44LrZAalsm5UCR89XRJgnLV0liEkE5MUAMqWBnEInn7T
         JbyQZ9d5KfPBLX7DrUJlNNVjNlANpbHkfsMcOozLT9M7lNIvmTYq3kcgPZwgo1FqqTn2
         CjHprLqNb2/93rxtmM32f4AhwbcoQmUKkdJbk49fDMEcouXxHofuFBZBq4SEq5caPXNU
         Y13D7IrgzBkmzO4NyPDvKCrGuLYcrRQwZ0VstFCOVYPUo2osa2Kdz5eRwh5HAjfETL4t
         Dqtw14ZPJpD1feCx7EOC51jFCO7+AJJmMuAiZ5GjuVVeYPHTR2qywlDins5vocQUVUde
         tbIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WMxPxSbb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9RfY31VLhTdKMwWO2tho56Rw4B8w8bEKfQVYjT0Zu5M=;
        b=lwo+Dj24P6wqdVtyeAiajEmFG9IRtBeJLA9sIAqYvfZ8HPyr/EFYQ8QQiAvd6k9eeB
         HNwZIhcWDf/aMuoEQ9PR6jA4qUPTGiWlRurVKkHuVbMuOpdK2oZ3b6nReaN5Qr5rZEWJ
         S30UziXRbfgOdVlsH9QF5yPlKrQ2BpgZoR9qQAZsgn3S099Ww4SuKFFy94EArhtKOL+z
         ufw5XHuzXbWixDXG0vAngzzTVYUhiRXa1J4+aIXWOYHgbCRKrDVqivWNHZpSfE/fyo5v
         TBE5m66S6GADUa2OHyR9SY/kS257wKkzmisGDvT+l7qRZG9rMGL9sNm23cE65FRQAwQ/
         aHTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9RfY31VLhTdKMwWO2tho56Rw4B8w8bEKfQVYjT0Zu5M=;
        b=nuk+H7Qx+78NMXxiaeZclKSYqumteDKIUYcvmh9HmWQbALiZLFHnYQQK31/+UOH+LO
         EN4soo/yNq9leU+vmOP6lF56V+JBMjqqOWTqChEJuXyywFIb6tnu9a+7r8ULBd/8xTD4
         I345PVK/8jhbGU/LB7MlMaV1FyqJVtSvxDwOpOckdOmns9Jz8dflqo8owva6Q/1XAwN1
         LLpSchywVANSc4IcWc2ppf5UJyYecYmx8s2Mgr1i1CmHknjMrglT7D7JvfXQobGuLS0K
         FXH2wbS8+dVLm2gzItSQVbMnmHcfswOeQLYPgDcoxgw95C77o6/MMZt9EbL5jTrvjix5
         DIzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9RfY31VLhTdKMwWO2tho56Rw4B8w8bEKfQVYjT0Zu5M=;
        b=CdVjd/HwrQjJf4CTT2K4gnFy/664lflBY7Clua5RkHBWrepLThPdXJNJwfUkL3RL96
         loczT/IQ/krCh2JhShCpDRNGyU+XEx+W2RoyZCc6evVw6Wbvqw12P5FV6+bXn7jvHuRn
         wHXyLjuRgOQuwHD9YBlnko8bzAcza9NkXqmQO0NlKmTyxcX8BI5CGDVaIYV2Wp6tT4cm
         meHOjJ2ZR1bt6M7fC0oK9FAmdzfUlXDj7yqLVfr+IvbvD+uBSwfAwz5Pz7hbTWy/lxMr
         Tff9T5UUIQiJ7RJfP4HL0wX1FtS5nZHe2QzGEX8uP6vnQI//EKRXXxJAQ7zx/lBZJion
         AvAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iFh0Rj5ldD/YLt/SzP5XU8c294ZxQz9zh02xyU8mxgPW7wLrC
	S+H3lpA9VMkuFb35D6i+MB0=
X-Google-Smtp-Source: ABdhPJyTNgOGVWyUXS/ejlXg+PV34zRJb4HtZah7P2+OFuaExB1hxrZb4KNhZ8iuw7CEXWHIahYJvQ==
X-Received: by 2002:a92:280b:: with SMTP id l11mr2081119ilf.179.1591070871962;
        Mon, 01 Jun 2020 21:07:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:c85:: with SMTP id b5ls2899588ile.8.gmail; Mon, 01
 Jun 2020 21:07:51 -0700 (PDT)
X-Received: by 2002:a92:aa85:: with SMTP id p5mr3915011ill.19.1591070871608;
        Mon, 01 Jun 2020 21:07:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591070871; cv=none;
        d=google.com; s=arc-20160816;
        b=NOUVaYZAmRsMd94Bs9uwAqROlTeq8+xNxXrBVnP8EpoclEC7WvS78+psVH5F8qeXHU
         BuX4WWj3Fg758KGnfEJYzcu/CJ5qx3uuBgXACgn9TX+KbuCRrus2xcLOOeYoeucjHQsf
         8dR39l+CR6mQOCiJwhiW4fsSgLwNRo97lto5PSzBy7Zyit1UngFUh6JMqxNZabXw+Mr6
         sbKL3A55UPjyTp7AEu7saPavN8KIs+0xsJN2O8cVMvInpwOVOztr13CQw4bPcQNwVF8z
         7mzZt4wdor0AXVgswPxvPR2QZ81lyhobfkxfzPB7H0+f67m1wo1yUkEByGeInHY06q4T
         Pn8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KMSPv9lovPpFYq/LUSFG6QcTM2yJAf6mkVnhkUqAWFE=;
        b=JDNxZoXSkDduxfCnmcKs6doFPTnGU7rKI6rLbcr2Af3wGOyBnaaXQuMaq1nUVrBNxE
         Mfo7Y4SKbo+rq8TrM0B0yOjhjvqTdgFqLaoQBy0iP9msBKMrdFXAYumg+R57C63G0vlc
         s5fcq7jp47axbNHlaBPM5AkBC74/LtSqsrOrg+/OyfOBhyEs7XKJC5xnzTI9rfDMT6e/
         fK74TAqpz8XD79BOf5w3qfm/wKJkk3mVQiqUMIYbAyrZX1qrWQ1JNK0c20RWYqcfICPx
         UZSunO5hEZDsV90vf+MyYzlRY1bEsIKkZHJF28CTxAyPy8iONfhIu6+1E3JiuNJiiQYq
         7LPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WMxPxSbb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v72si125533ili.4.2020.06.01.21.07.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 21:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id e5so2513042ote.11
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 21:07:51 -0700 (PDT)
X-Received: by 2002:a9d:1d43:: with SMTP id m61mr19800887otm.190.1591070871042;
        Mon, 01 Jun 2020 21:07:51 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id v1sm418926ooi.13.2020.06.01.21.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2020 21:07:50 -0700 (PDT)
Date: Mon, 1 Jun 2020 21:07:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Cc: Saeed Mahameed <saeedm@mellanox.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org, Parav Pandit <parav@mellanox.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] mlx5: Restore err assignment in mlx5_mdev_init
Message-ID: <20200602040748.GA1435528@ubuntu-n2-xlarge-x86>
References: <20200530055447.1028004-1-natechancellor@gmail.com>
 <20200531095810.GF66309@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200531095810.GF66309@unreal>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WMxPxSbb;       spf=pass
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

On Sun, May 31, 2020 at 12:58:10PM +0300, Leon Romanovsky wrote:
> On Fri, May 29, 2020 at 10:54:48PM -0700, Nathan Chancellor wrote:
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
> > This path previously returned -ENOMEM, restore that error code so that
> > it is not uninitialized.
> >
> > Fixes: 810cbb25549b ("net/mlx5: Add missing mutex destroy")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/net/ethernet/mellanox/mlx5/core/main.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > index df46b1fce3a7..ac68445fde2d 100644
> > --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > @@ -1277,6 +1277,7 @@ static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)
> >  					    mlx5_debugfs_root);
> >  	if (!priv->dbg_root) {
> >  		dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
> > +		err = -ENOMEM;
> >  		goto err_dbg_root;
>                 ^^^^^^^^^^^^^^^^^^ this is wrong.
> Failure to create debugfs should never fail the driver.

Fair enough, could you guys deal with this then to make sure it gets
fixed properly? It appears to be introduced in 11f3b84d7068 ("net/mlx5:
Split mdev init and pci init").

> >  	}
> >
> >
> > base-commit: c0cc73b79123e67b212bd537a7af88e52c9fbeac
> > --
> > 2.27.0.rc0
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602040748.GA1435528%40ubuntu-n2-xlarge-x86.
