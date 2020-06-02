Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGWQ3L3AKGQEYT4NZKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB711EC2B3
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:27:23 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id q19sf1584125uad.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:27:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591126042; cv=pass;
        d=google.com; s=arc-20160816;
        b=waW8WwbS5Axl+eZKUt6CZCKjvUSBVEAEtEBymRs/zhv5OynwLYwMK+/XTvJXbYVbGr
         xXXCXSz0Cx5StUOVjBvdToCqtisXpZR7WrgrRSADy4GkjzoVz2CFm4B6YBCzjTTGiuOg
         T6OmV8oe3b8/9cL4eirZaDD8bd/lQdTH8n1OnMqktdiCtxP4sEceYhgfwrsfUmsnKqcc
         CB18U4BR7hbxpDh17ksmeHF0xs+a7oTvhPiW11jAS/Rknw6y6lLfQVh55d9owG3OndmE
         bOGYrPOkO6SxrgWBOVKncFgohfwSPa1NFba90O3NznL1fASVh5G8vQ9y/N/Fb7kAYEoc
         2IUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Sw9T4J9JRymLpLgpWg/Xq3STrXC/BHmxavwwJ6fBdUw=;
        b=ckNyf7OX/azrYgN01e8mNU3GhHNlOQKEwxSgyog/OpsfyKsMfMregYG0cjYTlqgRgT
         c8U1/0t/uDthP6oV17ZbaZGwFbwqTzqH7GjsNtKx1j58nJEppyRtjizHi7CjFdBRiyqw
         XYeKmpyzUAWi9bDm07/9EUvPOVp5eKcu/QiOH//3GDIGr4H3kWkiI1eHH82taIZsEWdx
         lSUsxcJn1dRl77qX2f3c2/Ifr+qhApVoSFPL+CS9KInNyididijmfAiXLwVFgqs7fKeN
         H3AQ3LBKWUYVhoe8dw2bhL3Npom1I5XfBRhydx0Vx0wKE+CBjSUis1FW12y+JG6JveJM
         DAqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/kvpOvI";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sw9T4J9JRymLpLgpWg/Xq3STrXC/BHmxavwwJ6fBdUw=;
        b=Xxl/KaXUuxmVGe/jF4l2ThM3xSSzqVzsZ3nJsseuTtlmVmd3GrIHtF0sQBzzN8Isp9
         F+8NDnT2pMveEJLRJ/rTEFhNaqWReHpcRapOt6XUXadVdvKhh4MphzXbjoG/XfXbVEPs
         0C7pbt1Xi73fWS6dBSF9qioth2h08BSVGhaseBfiqkc0luyq8Ro9xaeEQ9WUfI6YJHSy
         lJblDve7ogWd0XjiG4t1u03EabYHW0UasDjm0eLWODjT330VgcGoEg1aUytKMSBTWJHc
         IA2ucmK98zAkaPG1jJ8vP2l9XlD5ihPWISPanGosaNd/TGRshTs0utvTLbtUlVZ9ApQN
         oFzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sw9T4J9JRymLpLgpWg/Xq3STrXC/BHmxavwwJ6fBdUw=;
        b=XHD+lCZRi4w0TcgeyaOqAQ7HbTrtJNH8iDi+NT4a6RKOmPszFbu3HNspmCYSadZJby
         GEMSyrcYXbFtiYpS2lkpG4Q3q/5jqVATqk1WoDEh8AIZZ0mXHBma/nIiDEfZpkDXYUdI
         MJIzUvuYxURMq6c+WU6bMRVgbSFcgdxrkFd50tcAnH+lvbH1vIJYg0BXcmPkzUPlbXfK
         4IeRKYkVInkm3Xjf9vw7gJ4+b0tGJHPiqMjo6I8WIKeN2CNWYCORPMN/2+kxc5YOOob1
         6LIumI0FvaEIjX6lAvIQZj99TPVqtBOZM6550aIBItRnal8pkjBax918OuLZPO32ces9
         +3DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sw9T4J9JRymLpLgpWg/Xq3STrXC/BHmxavwwJ6fBdUw=;
        b=PRG59KvKicTdhWIbwSHV8jB74XQ9/2BpJ59TG1nw4N0gGJ5toc7CrD6RqWsDoFqRP+
         jNq26x7FBUnZWEOmaS5Pmz//5BAazJKxEdu/6VcZjj0GVjaYUJ1wu2+L8Ly+fiHUg/tV
         lStRBaRMtO7fjyzZepSKT5i6O7bJXHhOBkR6NC3tCqSdVTCTPZE+UeZP1zbfjrii4DYz
         EEE5IdDRAW08yLBHlqSaJxNSVqQ8y9Usz6fplZR3xRFw6QZudBLrb1LI/7Vsd82m0LNP
         EKnT0ebANEJAUtCfdnHFKfjqh+aAXUTPKrNXlC5MJumjv5X5Vj0NamNX++Zpy6m1q0z6
         R6hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532e98ep5UbIglwM3u2ri012EaKuNQ/483IjGXouuSTrMqp3Jstc
	i7ksfV6j75NG9LMd48kGB+Y=
X-Google-Smtp-Source: ABdhPJw08yP2K6tbzMrRFwaR1kF34fprJ0HqOUbch9esWUyghtPUaSnCPvCo08YKPDp7h7fQ/ZKxig==
X-Received: by 2002:a05:6102:3ce:: with SMTP id n14mr19480301vsq.113.1591126042736;
        Tue, 02 Jun 2020 12:27:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls408614uak.0.gmail; Tue, 02 Jun
 2020 12:27:22 -0700 (PDT)
X-Received: by 2002:ab0:268b:: with SMTP id t11mr19093931uao.58.1591126042356;
        Tue, 02 Jun 2020 12:27:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591126042; cv=none;
        d=google.com; s=arc-20160816;
        b=v8o4sZ3UPqmz/IkooOXuct2vMq3A8x63AJVDDTaiJAgSzZnX12qkWqLTS1tjZyTEfy
         uiANIRWubmj47+F9h3G00bK59YZzsgKA6bwrEEWxfJu/G17R6iskpOaRPKbJYZczm56h
         zTMbDMz8gwG/TYN+ybw+TlDlyPxfBgGd7lOLqB5EJhN/yInMfKgd+6e8ACzOL+knuk40
         dLWJPdq9pzhhY8KfFe2qONrTRFpf17gLs3mNcIHNfSq0rcjgz8vcon/ugAhTj9xHm6cn
         dyW7yRLbAJu7gy7jVtebFVFVtio8CL7L18RhmUJVXATapZOlx6iFMnLUsvx3Q2XAnUCW
         oP8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ojxsapJVRcLIVUs+X1YXzLQFjCqQZDJZ+jxsQ+PG7k4=;
        b=m1f9vwnx+p74o5OTSzsX6v797YPVdO/GsuAxk/y+5eCUI2i+Uctbn3AEcA4XJHFWE2
         Deb0irlX+KYxMVEWGUONfRJwoE5sMh8czQLX601n9PoOpfaF6kOLn2qIIwFN3Q0yif/O
         V4vH+AqoZbPEu6rgQ/SRrRhF5n6QaWlBadahJwdENn7Ce/G0sjQG3gF09gGJXqWujcGg
         4pGo6MzLVwdpP0jhUeZ7TftUMYSt0vK0ErgwSp8dYinDEUU0ztNzf8r603YNnXIn9ter
         byVmAzsPcapc3urPmBWbhD0M1kozEoo9t29Yjtx2kc8UDEqk37dd9RJlh/+NGz+3kCFt
         /yOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/kvpOvI";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id o18si52778vke.0.2020.06.02.12.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:27:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id q16so1805938plr.2
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:27:22 -0700 (PDT)
X-Received: by 2002:a17:902:bf47:: with SMTP id u7mr25970116pls.159.1591126041361;
        Tue, 02 Jun 2020 12:27:21 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id 17sm3057279pfn.19.2020.06.02.12.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2020 12:27:20 -0700 (PDT)
Date: Tue, 2 Jun 2020 12:27:24 -0700
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
Message-ID: <20200602192724.GA672@Ryzen-9-3900X.localdomain>
References: <20200602122837.161519-1-leon@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200602122837.161519-1-leon@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="b/kvpOvI";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jun 02, 2020 at 03:28:37PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@mellanox.com>
> 
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
> The check of returned value of debugfs_create_dir() is wrong because
> by the design debugfs failures should never fail the driver and the
> check itself was wrong too. The kernel compiled without CONFIG_DEBUG_FS
> will return ERR_PTR(-ENODEV) and not NULL as expected.
> 
> Fixes: 11f3b84d7068 ("net/mlx5: Split mdev init and pci init")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1042
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Leon Romanovsky <leonro@mellanox.com>

Thanks! That's what I figured it should be.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Original discussion:
> https://lore.kernel.org/lkml/20200530055447.1028004-1-natechancellor@gmail.com
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/main.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> index df46b1fce3a7..110e8d277d15 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
> @@ -1275,11 +1275,6 @@ static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)
> 
>  	priv->dbg_root = debugfs_create_dir(dev_name(dev->device),
>  					    mlx5_debugfs_root);
> -	if (!priv->dbg_root) {
> -		dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
> -		goto err_dbg_root;
> -	}
> -
>  	err = mlx5_health_init(dev);
>  	if (err)
>  		goto err_health_init;
> --
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602192724.GA672%40Ryzen-9-3900X.localdomain.
