Return-Path: <clang-built-linux+bncBAABBNX7ZX3AKGQEZT2XSOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E911E96B9
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 11:58:16 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id v15sf5354604ply.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 02:58:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590919094; cv=pass;
        d=google.com; s=arc-20160816;
        b=vJTU4IVvExawvWh1No6bWsFnVs+j2sBc0khnAirtvZxZpNqCGgVc/A0nmduEVum3Dq
         Rs5XB8CPfAxZpCZB/JuyLUnyokqKVFJ/VJQ6DNGlxi08nf3zmCPqwN1WTGgU0TSkkfEy
         xZVHt0FJO+TxakYYxSjV0tf3IAlt6IiesSvM1dyHGhNHBeKNYEFpy/qCzQ/Lfi20dpgW
         GZ3r09ZhPFLtyW0VDmHO9Eer4wr/EhaBewTinbOtQftraCgPsrDBIYVm5B4T5Gj4Lj+n
         4qrKV7MDOqtT8FB1ZEQpxo3KgFx0SkPl4iELIFg1O+RZrfOSUvZYvnBUtvazfW9KY6Fb
         V4+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Oyxe6mxg38yc+swJtlg2a3FTorU5Y3D4zWqnyPy26OE=;
        b=Fj/+EYpUnOLhsllzEwXfkhwaJtTabWCOFfsUcMKj7EC8eOEIOe9dVuOquoJzd9wj5E
         bs0Hl0dyM9Du5XO+ZV3DUs5yptG9fuNsgfKPYZwSZiIv0w2H609c3iL7Cy4rF942J5zR
         ITm0xnQvvbX7tpIkZtL2luk5N08JVY3Hg1JTl46SqBQuyqUyBeLj7q21LmiJnJlQfTIC
         D2SLbRg/WtFP78laXVzYesumcjl9Is+Z0Tqlu8fkK6FLZAaF/taqyBvELC5NT//pPFB0
         gHrb/FFXcqcFiK5gILofOonZfX2EwnC7F4DBwr6QkXVvMRf4vOsHaJ46lJAq7XCuTRcW
         +qbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Vv+oB/fX";
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oyxe6mxg38yc+swJtlg2a3FTorU5Y3D4zWqnyPy26OE=;
        b=S5oLEg9WRfAciLtzjI4ECM74ZhW0rxqcXYRB3KFt/zr5aV6Y/inp91SftaIl6uqcfS
         o3NpHzTV8s0JDMTPuq8mmMIAXLA3n/USUUi4KdMu+CeMWuY2g65QhD/twz0b0vu1NRJ+
         fc5mUFkuJDrH5QufP+RgCWLMnKzdBi9uTqEEun87el/MotNLDDcpBq0cKw78dI0gj4eE
         yQsI6JjlZqR9r5gvAhw00aD0QC2PrelA5m72uapj1MW6mocQaGCEVN069aHEw+PPMsf/
         ALiU6Geq4dlZ/vk7YanOaZeYTAxuLLeoNNMTI6Naek0l6d3eyyfIrbRLvrZZljw+awQN
         Eo/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Oyxe6mxg38yc+swJtlg2a3FTorU5Y3D4zWqnyPy26OE=;
        b=SGbV54Fx3QvXrFRphxdDV8hyKspp93xyZts7dU2Pe5G3jDy+C9COvG/bfNSRuiuPYW
         yYi5ntK3+85DTPtlkRoHHBJL3ibw7uGIIpehU4Sju66DSGJYorYO1vVNnnJANl5e+8eo
         fYB/mZf9rdZxcKkfY+r1/d1F+gGnGqacr2iR7oG1NP+QXSREv+TmdyrMWCXHU3a4D0SZ
         YWoRzr/cyOjxfr0ZEYh4ESQXGz38K+nS7rxcaDbHu4Xt1KXwmqGh3/b1XOFtJZFkT7eS
         +m0ezJ2Er9q20pvb777BbRCeUrnN6etfsiuLTScG8mt1fM7quUI42XxDyOmaJencYJ4A
         iRDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sC9RExhtXlUX/93yo/gK1IqSiWuJAXNDmBpMCFTDg2WCByacB
	TI5qqkZgdmEPMpBVWQXnGHY=
X-Google-Smtp-Source: ABdhPJzpYI+4mEhK2SnXx88RudydJSdi3mtMiwJ/mdfxI7zEiiAHgYYPlzRj0abPNc0X0KRVyTk5kw==
X-Received: by 2002:a62:86cc:: with SMTP id x195mr16125277pfd.298.1590919094305;
        Sun, 31 May 2020 02:58:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6943:: with SMTP id k3ls4550088plt.7.gmail; Sun, 31
 May 2020 02:58:14 -0700 (PDT)
X-Received: by 2002:a17:902:ab8b:: with SMTP id f11mr16382202plr.145.1590919093998;
        Sun, 31 May 2020 02:58:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590919093; cv=none;
        d=google.com; s=arc-20160816;
        b=oZ+1SdAcGBfKcHFFBNp0daAptObxQjEh27NZ7ZWp634RnxUzCbeip4p4nBccHbvPZt
         MAI3F1cL8oDdLwuOnOBhLZFXrEREuPy0ZVMkNDgxnoo+UZhkmJlliEf9v2M2pdTuZ7Ns
         Flmhyjpuc9RcHAbanvvJkvzp69g2zKM1AIh3+CQCrdgKNNYT9ro0MZsN7gLTNveFs7q/
         0J/gtQq2Dh7ZTC8p+fEUfLISzcnJ6uZWYpgD5OunKCWfRH6kswlIquDxt0paQrjfXSso
         A+ZNteO9Gwud2BVQg/KHH+ls2j0l7qVn0gaCV+DCTI9LUKrH6SqbewHn1FgrjMxjGI7h
         XVGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tlQ688tJgZN7gorQ1nZLl+TYt6QDGZgK9jo/eGLq0fU=;
        b=fhDl16l8huNQREdsRyIlO5wcm4XOi2V517Q74IAmfFfMgVLfJHTKILZCWCMewllwGW
         FgvU4Ec4W2eN9ajJTHRvOpOdeQkKGpU+LUob4OWmuBPdHGCSOfhd4iNOvlxipkE49VQV
         tvSupGzPZCJBZT1poNjwdy6v/ccV11xt26Eqh44Z7HCd+pW+SnRHtJgLt9m9aH8amekB
         HFpSx72VtgRcgTwNN0ZYp8hNk84YHaBaxqlpWBHE+2MDzhKOjncqunaWRdO/pB527wCZ
         8QvDHf/nnsS5tif0JAiTPyMYgfArnKw2YtUjozySkZrPGqGWVJj43S+MrqSjWCUhAYSk
         Gljg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Vv+oB/fX";
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id gv9si28065pjb.3.2020.05.31.02.58.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 02:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [213.57.247.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E9F7B2074A;
	Sun, 31 May 2020 09:58:12 +0000 (UTC)
Date: Sun, 31 May 2020 12:58:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Saeed Mahameed <saeedm@mellanox.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org, Parav Pandit <parav@mellanox.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] mlx5: Restore err assignment in mlx5_mdev_init
Message-ID: <20200531095810.GF66309@unreal>
References: <20200530055447.1028004-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200530055447.1028004-1-natechancellor@gmail.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Vv+oB/fX";       spf=pass
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

On Fri, May 29, 2020 at 10:54:48PM -0700, Nathan Chancellor wrote:
> Clang warns:
>
> drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variable
> 'err' is used uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
>         if (!priv->dbg_root) {
>             ^~~~~~~~~~~~~~~
> drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
> uninitialized use occurs here
>         return err;
>                ^~~
> drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note: remove the
> 'if' if its condition is always false
>         if (!priv->dbg_root) {
>         ^~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize
> the variable 'err' to silence this warning
>         int err;
>                ^
>                 = 0
> 1 warning generated.
>
> This path previously returned -ENOMEM, restore that error code so that
> it is not uninitialized.
>
> Fixes: 810cbb25549b ("net/mlx5: Add missing mutex destroy")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/main.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> index df46b1fce3a7..ac68445fde2d 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> @@ -1277,6 +1277,7 @@ static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)
>  					    mlx5_debugfs_root);
>  	if (!priv->dbg_root) {
>  		dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
> +		err = -ENOMEM;
>  		goto err_dbg_root;
                ^^^^^^^^^^^^^^^^^^ this is wrong.
Failure to create debugfs should never fail the driver.

>  	}
>
>
> base-commit: c0cc73b79123e67b212bd537a7af88e52c9fbeac
> --
> 2.27.0.rc0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200531095810.GF66309%40unreal.
