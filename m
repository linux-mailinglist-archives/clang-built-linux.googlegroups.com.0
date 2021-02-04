Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP6L6GAAMGQELLDDDHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAF630FF3D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:23:12 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id l13sf1614341oil.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:23:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612473791; cv=pass;
        d=google.com; s=arc-20160816;
        b=AxFTvJM1SbWhz7VhaWHhojQyCRkpAlukt6A4ppIgyVfE+D/f1EmcahqToPeDhaTBBS
         T2uMnYt1l+iG54Q9WHRxVhpu/PetirZRCkk2FAXStffj7iO6DPAB9UlYlFrxt7mUKBmx
         VfANWrvK+o7Nb2ZB9jnEnAbdAsB11Jy1neCafg9RzypaHvfRgsf1HGRvQA6I2xDQmiWx
         d7L1tzKJgrNv6et1yOh3Wh0i7nFr4a/UslC2LnZJvVkrPUm7EPndkizfwRNWAOkI8vG/
         lJNZG8MYo1QHjy+msykcCHi5ze925Nw8aHYVrXsuD3ujwcXc9OnnBzH8adqpqSD5ukcp
         5fbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+4e+mLcL9rQjmJ0fk8yj/CKnTrFPCZM+EMVXgXv+BWI=;
        b=b/gUFZD3n4HBMUplI7tYNoqZl5GxCjZNj9sdRfkaCS3dz63mrkKLX1y/MlCP69a8kE
         vHRaEr1bQdcqIcqXhygLp/+qWDC4xnJ/zFNn6SFFsA12NWz2BwIdmk60VZgJQelM3TV6
         WOuP9usuOGCaJZV5axIKrBCCKGX3J1FIcC5Sq/D+ybLS9Dm2PP3I0/hAkixmK5ElJd6Q
         lSBZ15zkG0Zcvo31RQQA4jxkMLmR0or3z7/4wGZWsYad11LKW7Q6pTyEUZ+aR1r+AcPr
         bHsL2ZHYonGXCPdaC2smb3bN5rYKIqD0KIG20AJuGdLOt/2Htww2DOeY5Hqsgo+qOO3h
         NOXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A27XNu3Y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+4e+mLcL9rQjmJ0fk8yj/CKnTrFPCZM+EMVXgXv+BWI=;
        b=hKOYVgMRT7JpCLmPsiQfrQjQI9EvPemmk9vEXbW2zsLq2cL2z8HhOmYzJxF9qBZgbH
         ksAzTqPtQCO+rGrWxo9NCzKftuF5+7+C2J1XcvSF82GdnLM9+sEZMEzzptLSp/2cA4W/
         kjWrVJhexp3T/S7/2fYhO1M0+GWcp6qzUyih6FcbcodN1G190yIcuLJ39ZZEaAzwX9Q0
         jORMM+/IrL/cR/0hIMo9ACIGkDEPIl4IEULHa/rA3/S2MVk/t9S3msxhTUoMcb9QdnkT
         0j9HzNF4ft9b1qO9xAs2YC6So5AKrGK5EqbRwJ428PWF7/gEEe9WdcbQq1AYjyc5aLbT
         nNNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+4e+mLcL9rQjmJ0fk8yj/CKnTrFPCZM+EMVXgXv+BWI=;
        b=k84b5eLWOzHwZRov6Q4guHUYDD8kkLSPdXzrN/3VkFIStwZxbdEHccpTemErYEPzd2
         mgXOeTVgIM9eW4gjW6LzM6c3kdqkoTQ2b3e8mEApchHYknWMXutFfYdmoXkcDzMu5JyC
         A1PezsZg/+cwtj/hQzpF8eW7U9gX24VKbACDG6+uMY/2TJqYVm4brgZQnw1JwXmAXQe/
         wblTZCIeFPtpaP3/+QJsg1tNDTmB0PZiOxVhZjnjcJmUn9qbUujy5bdPGrZmPjOCfASU
         m7d+zbhH3EjVv1dx7XJwF6gw6OHYwUs1TraBb4BwwXktN4viEmzyHMgpQwRoqQ7mkK0Q
         f4oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UcMsakMlRB6e31MtFl2rUq/SLBNP7YePyOBDVUtMJKjHwZWRe
	4CLIpHQlQqNRDmrpKK/ogbI=
X-Google-Smtp-Source: ABdhPJw+SsBHuKqTdnnqk7PhOIDGONZiiOgmdLRcPekDQinyBAaH10W1FQ1sihT9fsfzocpAXFSNeQ==
X-Received: by 2002:aca:3906:: with SMTP id g6mr972621oia.169.1612473791173;
        Thu, 04 Feb 2021 13:23:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e31:: with SMTP id t17ls1716062otr.3.gmail; Thu,
 04 Feb 2021 13:23:10 -0800 (PST)
X-Received: by 2002:a9d:480b:: with SMTP id c11mr1001740otf.209.1612473790807;
        Thu, 04 Feb 2021 13:23:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612473790; cv=none;
        d=google.com; s=arc-20160816;
        b=r5jVqWmELhz7VaA83UxS3wR4FEJ1NuRt2uq5XAHXNJfuM282mmFZ9sQk1ANVjc5v7M
         DcJPF9Ngs+SR6uLd24u8aUyBQxuTZMBACW+E+d85fVUfShuCKsEanOyxzKOm8sic3/7l
         ie/1I/Uv/FQpYbM5L6SpFqjMWbbEHXEuV5qRYpCgN5e5+m7aCvfu1q8R2qrsrSJhpfqD
         8txIuVs98kpadi30kFtkkDgFVMxacCHdoAZFjIP69XzZSi2R+Gh1K511Ux/NVj35ELIA
         Xj+Z0PvAZJkg9gtui/dHY5/dMIDxRVjCO6jp0pRp2SlgAVtEoI9Mkcma+iprOGI5RkQ+
         bX3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qBeUq9BPT5U+D/5ogUOuanD6+6fUvCIGohL0330iqaU=;
        b=gny9826CS48w3hwJDkGFe/B5ENiQGpDPcF2AqkE2jco0r6TI7q0SszQAu/OuKh26Jl
         yDw+ZF7DcvGDQz2MxR7UgrXJcWtPPdrqmqPgfYf4lIMkNaORbm/hgJUQ5s5NaoJjMReX
         +1vazJFgcmUGUatwvzWTqIRQxUpLRVpP7m7N2DL7fUZ1jUtneUJWitDh1x2Bt90olT7E
         9QKxEMm+fr+vxyHLrTr5G9YdXyJDubfeF8W/DGDDit4EikTJNwR+t16r+T+0pYORendS
         iPhQIepHCZ6Ui+OPuo3JjBlcW0K2rYnw63YqAx0M0otif/oks59VyNs8zpdvTMOYPbMP
         LICg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A27XNu3Y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a188si670733oob.1.2021.02.04.13.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:23:10 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9873F64FA8;
	Thu,  4 Feb 2021 21:23:08 +0000 (UTC)
Date: Thu, 4 Feb 2021 14:23:06 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Yisen Zhuang <yisen.zhuang@huawei.com>,
	Salil Mehta <salil.mehta@huawei.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Guangbin Huang <huangguangbin2@huawei.com>,
	Huazhong Tan <tanhuazhong@huawei.com>,
	Arnd Bergmann <arnd@arndb.de>, Yufeng Mo <moyufeng@huawei.com>,
	Jian Shen <shenjian15@huawei.com>,
	Yonglong Liu <liuyonglong@huawei.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: hns3: avoid -Wpointer-bool-conversion warning
Message-ID: <20210204212306.GB385551@localhost>
References: <20210204153813.1520736-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210204153813.1520736-1-arnd@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=A27XNu3Y;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 04, 2021 at 04:38:06PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out a redundant sanity check:
> 
> drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c:497:28: error: address of array 'filp->f_path.dentry->d_iname' will always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
> 
> This can never fail, so just remove the check.
> 
> Fixes: 04987ca1b9b6 ("net: hns3: add debugfs support for tm nodes, priority and qset info")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c b/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c
> index 6978304f1ac5..c5958754f939 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_debugfs.c
> @@ -494,9 +494,6 @@ static ssize_t hns3_dbg_read(struct file *filp, char __user *buffer,
>  	ssize_t size = 0;
>  	int ret = 0;
>  
> -	if (!filp->f_path.dentry->d_iname)
> -		return -EINVAL;
> -
>  	read_buf = kzalloc(HNS3_DBG_READ_LEN, GFP_KERNEL);
>  	if (!read_buf)
>  		return -ENOMEM;
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204212306.GB385551%40localhost.
