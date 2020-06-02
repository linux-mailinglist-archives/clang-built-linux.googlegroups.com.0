Return-Path: <clang-built-linux+bncBAABBN7V273AKGQEIB4N3MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EE91EB632
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 09:07:36 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id n1sf1012492vke.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 00:07:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591081656; cv=pass;
        d=google.com; s=arc-20160816;
        b=elYp0IKHsl76FS24hsQE1lnB+FQAWLROCKTqS23LUkwkveMV9Mgr8winF/J+luPy3k
         Nyy1qASzXPJZhnMfS21sPbaJP4MpvIMetVZOqGR8+VIB/XHl/2THPkaRHTcyUUilspfM
         UHi9hAHhHJW0ML9EVUUiZpq6qiYz/GnnAK7LGU9oNfoGu+XlHWTfmRuu/3WVRqaOEaUG
         zlnPYeQUXENCcS/Nbc62LZwupeilNLX/OpsmAstpGAkK3PrYRc5wdVQv1B0XfCKV3Lpp
         QNjfsRJCEVdc3mdkwDbqzW7RVsqBY0/3mzPTiIhXpXjFxlGQ+47yvVLsfeLAs4lcwEJU
         PvfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3GxJGqnssdA/qFLYLNrKD6ajQdkujqgOgH0EJhVYO3U=;
        b=ENlnz7gfGYWa7mIOeCRE/RlD2VG+E+0fb6/0rPAHMDHyw56CeAAPnrzVSlWHzwPoMl
         9KbXrG51CG4lLQeX+r225Pf83AcDwW05tnYZ9XeKOKEwhEg5X7T2ThDY/SNBs050uM5y
         QZtv7QOuVeXvjaF4yuXPjtzDvWGDqgoqdMWRVheXVfvEnxgwWmhX+9SjluPJO69iIsiG
         wPfcLfXTGZHEuuZt3lyTN+lRMO0jl8Q3RXnBT4xe0397sfckrRwN0ZxzICuso/OD9LAd
         gkcEzfF8MPhlKqSPoC4J7+FnUk8a5exls+EDs/f9QBhfCsb8aCvq0DrqO2gMXJ59EHw6
         5qCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CGt3enTe;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3GxJGqnssdA/qFLYLNrKD6ajQdkujqgOgH0EJhVYO3U=;
        b=dUF42TNVI3nFYqjmbwQ1Y5Ymc8Ax9ivd4o0EN1c1eq+rsLslBxOLdf9VYCD5gt90sH
         wNdjUOoxLE2FDfuBP1bzgpdkQ9lPLdDKUfo4FxeVnDMgohmZk71GSOgVMSwbrBrnaTts
         bLxq5/ACZUIb5GqqgOhluz+ideeS7nFdYynoDvUS3APViwN4k9Y7E1CnjxB4emHLMr0d
         owq3rjjI+iGb+47pLWOV1UR+D8HD4AiLGneJi81fhnHs41MKbuNhzpPGC50DFjLPUlQZ
         qP3osfriBDtOpKv+XCWzDcDeVOV7WvzC7v/6jkjvNP6w+MtOYizG5JtERxVUugJq/qan
         2Prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3GxJGqnssdA/qFLYLNrKD6ajQdkujqgOgH0EJhVYO3U=;
        b=jKy6mOP9BwuPV+2VMUl/vGau4jbO/27fbuQwLoi2uO7SA+FOeQB8A/6Uhl3RvyFwkS
         DyvVaKPEfURFjY2B0xnR26mO2X73wYKD1Q2lcPVA/cUE+xmvt4gO2hMFJNnIU3hs4vOI
         i8PPMu7hlzTXJMZQ7XrTgcsu9kWKuHHfegTIy9MP2yXibeMHQVDKqTsA4W3SuoNrZICU
         IxPq+U1Q5fPKJ20FuglbrWMFCbj9gf8vAVb+LtFxkAmQmUKi47BehhLDjOavMY5BQ7Yb
         D1MotykdvmsdihiUogLNwgbTRt7uJVaXvJJqJTFZAfy7Urcx7cLvcNyj70b7svDR9q5+
         QXlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GnanfX1f8mtPP80qv6ZyEBrhd/sbhI5Lfgq0sgFwjC8ZhQx6L
	CCC370oUWzjQa1pyUFGBk0s=
X-Google-Smtp-Source: ABdhPJwAy1W6LHtCllkKH1A4oC6b307Ltne3r/8AaCFhiYeK3uG8SksTTTVa876JP0y7o6wucyJYGw==
X-Received: by 2002:a67:7c94:: with SMTP id x142mr6874288vsc.192.1591081655809;
        Tue, 02 Jun 2020 00:07:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls254080uak.0.gmail; Tue, 02 Jun
 2020 00:07:35 -0700 (PDT)
X-Received: by 2002:ab0:548a:: with SMTP id p10mr17124015uaa.35.1591081655522;
        Tue, 02 Jun 2020 00:07:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591081655; cv=none;
        d=google.com; s=arc-20160816;
        b=jlv44EGgRQ9+u/bYQqCmvphoPbE2nv2Jrwszd30RZ6Hk3od8dTn/9rp0PsdVia04YF
         Rt2UcNsFUC/QM0qB72eJ0aay6AzBqV1YPifw9Ds/aXSHCTRE+Nj2vijUE72D57bhYy8d
         ygpkoE/6w8l+Jkr96d20GORksr5LgkX/2aqLni4zf/muy39IqBwzZ31UMbtUmvAuH2mb
         60KBFNNf/fqx7n5pwJ0vTZBZoMix0zoczZj1vPmtHGPTj3lWAcbvADtkN3c41+eXd7xZ
         ZduoN+zd/mDBOnvRyUHozIZU9RxyTid8ZLomFWvXu+3eOd/YjKJfJKN+ehAKeBjUt1X5
         1G1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kcwPG37JAr8Q3zxSERevZiEQoF4PQQpbovT/9fhtn8U=;
        b=Y+S7pnOipurlncRMysYA/IbB4s1h1BO1Btl/Xy/C8LwyGvRSHmmaZlSiqCiTENIj+g
         Oeu4ZriiER696Zis1B177MGn1ZzVDkpShhHvPhiKS5hGJ/K5EntAKt0aJUziTg0QWWhV
         ouMc2Fph1Sft6EizVfBVM+EDURukf6JlejCRwd7gytl8h68+JOwu1dtlDUj0tJYjKxb2
         VNYooe89+7MnrbIzNS4BmkwqCBH+AUk0WvgjJIVb34vlQzXhFMCExO+oNh7G413f3Y7g
         D5kxSbl+EXrILvlkE0nxbnT5hr3b+qOneunuSBFlPPS2FLjZ9C8E4GFpaR/51uKexhNx
         PvjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CGt3enTe;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si111270vsr.0.2020.06.02.00.07.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2020 00:07:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [213.57.247.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B70CC206A2;
	Tue,  2 Jun 2020 07:07:33 +0000 (UTC)
Date: Tue, 2 Jun 2020 10:07:30 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Saeed Mahameed <saeedm@mellanox.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org, Parav Pandit <parav@mellanox.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] mlx5: Restore err assignment in mlx5_mdev_init
Message-ID: <20200602070730.GA12686@unreal>
References: <20200530055447.1028004-1-natechancellor@gmail.com>
 <20200531095810.GF66309@unreal>
 <20200602040748.GA1435528@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200602040748.GA1435528@ubuntu-n2-xlarge-x86>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CGt3enTe;       spf=pass
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

On Mon, Jun 01, 2020 at 09:07:48PM -0700, Nathan Chancellor wrote:
> On Sun, May 31, 2020 at 12:58:10PM +0300, Leon Romanovsky wrote:
> > On Fri, May 29, 2020 at 10:54:48PM -0700, Nathan Chancellor wrote:
> > > Clang warns:
> > >
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variable
> > > 'err' is used uninitialized whenever 'if' condition is true
> > > [-Wsometimes-uninitialized]
> > >         if (!priv->dbg_root) {
> > >             ^~~~~~~~~~~~~~~
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
> > > uninitialized use occurs here
> > >         return err;
> > >                ^~~
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note: remove the
> > > 'if' if its condition is always false
> > >         if (!priv->dbg_root) {
> > >         ^~~~~~~~~~~~~~~~~~~~~~
> > > drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize
> > > the variable 'err' to silence this warning
> > >         int err;
> > >                ^
> > >                 = 0
> > > 1 warning generated.
> > >
> > > This path previously returned -ENOMEM, restore that error code so that
> > > it is not uninitialized.
> > >
> > > Fixes: 810cbb25549b ("net/mlx5: Add missing mutex destroy")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >  drivers/net/ethernet/mellanox/mlx5/core/main.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > index df46b1fce3a7..ac68445fde2d 100644
> > > --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> > > @@ -1277,6 +1277,7 @@ static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)
> > >  					    mlx5_debugfs_root);
> > >  	if (!priv->dbg_root) {
> > >  		dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
> > > +		err = -ENOMEM;
> > >  		goto err_dbg_root;
> >                 ^^^^^^^^^^^^^^^^^^ this is wrong.
> > Failure to create debugfs should never fail the driver.
>
> Fair enough, could you guys deal with this then to make sure it gets
> fixed properly? It appears to be introduced in 11f3b84d7068 ("net/mlx5:
> Split mdev init and pci init").

Thanks, I will send it today.

>
> > >  	}
> > >
> > >
> > > base-commit: c0cc73b79123e67b212bd537a7af88e52c9fbeac
> > > --
> > > 2.27.0.rc0
> > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602070730.GA12686%40unreal.
