Return-Path: <clang-built-linux+bncBCUYFO7N5UDRBOVBTGBAMGQES2WAUMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F37433135F
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 17:28:43 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id u1sf5274691edt.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 08:28:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615220923; cv=pass;
        d=google.com; s=arc-20160816;
        b=DZ1wxKcedUa07EPuYon+dohkO4v6wSm5bAPscJreSEhxKQsK16sFX3bsSF9CC/LZMB
         eMK6+swXCrGzZ+US18JYgyQ9en6wsk8iAdkGZiKBJL0+KJJOu62+QrCpf0hDJoYBdT5a
         HysNNIaHj2fnB0jZsZ3y8b3CCRDNt3l6u/62elCF81Pf5dUJvmFJTlexKgpOmgGOZB0B
         v6AHzK+YRA9iND+clph7pkIo35X/rkv9iMFE9wxl6iaSoLz1TFbXF68GX7rp79ga7VSu
         fk6qYVP+p8I0sZcs58tU+TEViJdDfXuUEaz0TylwhiMVBz5fsQjwOAB9IgSWtokdPZkL
         Yp5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=D2hUK3n0IeNf3W5uAJwWMCrjc7IXvBrOPTwLVI5EN90=;
        b=oVAPFl0uVIpzMVOYDI0U4i79GfL7gKCrVlqP/9W6otgH1qbiQ4KXqdv8pOpbR8HXAA
         Gngnuht3S5C+Ii6wGpuzyzi5KmVUNgL5Dszh1rq4CMRvPXNwBthgt1hXE0hJ7Q6q6BXB
         5Z3chXGTB/AStdq6knui4GGAtnMBEYb9768Uolb5Z+CO8pb68inFmSuzPIkDSg14k+x1
         OfIJINEZgVcRWTJ/TIy1gRxWeorapB7suLQGsju3iqnI5jvgnGRNH8o3QaJ9tIuB1NBQ
         cSw6ZCn2COhljuiYWqz6sEkFFLUZ41AcPGtNI1l7POie3cVnwizrFYEZdIMOtPPW5usP
         Ysnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D5xNvUgC;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D2hUK3n0IeNf3W5uAJwWMCrjc7IXvBrOPTwLVI5EN90=;
        b=s78iwF+6Er1skvmvQuGv1OWKLm0HKj5igyKvTqiH20Cx76i1gl8BwPYlmN8BrZBryb
         tu3Yg+1kIxgEN4xLLnR0mxnlTVr2z98znVmJbIkKsha0utIJZgfB7PO9GmoqnrRC3RiF
         5msYeRPcro2244R3dKYY406mg5DMX79UcHM8/+BhKm1Pys9c7oc23bqBbywxGN9hFHk5
         8+HXbPRp+Ic69DBEsD1p66ODaVh/zxNjPjiEeCOqbXbG0WbdmNdy3JCY0Y4nPhvncxih
         0RI56DA8xgSRNPUiCLxcXZxMaZ1vsENCPbUltIJGofGWbieQKVxqmmiCLhIMKXBCKqaZ
         fMLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D2hUK3n0IeNf3W5uAJwWMCrjc7IXvBrOPTwLVI5EN90=;
        b=ugZr8lFg9Vxvrm9HpuHXPKbHqIFuV8JXjThP83cuKZPGNiM+M5Qcgx44x997FZ+den
         OjDxvvayfbvhRfQ24fTbHVVjoEPsGT61XBgOQ+VJWBWCyBs/7itcJrFtk0taRE0g8kom
         DiLa0hsJXYCNninIeMmYByO+zPnzMK2FxZHfFemfH3jE/4yUey9dl8xV4w+tNUJPsty/
         WoO5Ys7ixxEN2orovJYxIYZojbBtxK073i7GKsAAXt/sTF2Orpr3I4vl4tneTpCvPcHZ
         m9ZyVlusLN4KWcO/TaYjmj1tNQnbflLew1dckrQfM7/EJ1DcXbX639khCp9NYJdUPIOD
         oHFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D2hUK3n0IeNf3W5uAJwWMCrjc7IXvBrOPTwLVI5EN90=;
        b=TPpU652lupfPTlWkjvv+EOghvnqCOVgmX0Umram3vfvcYIzBtK3dk6+i5O3f0iSZ86
         fqhhA6rDQndmknnYaB9ejBQlqzT/FWpKskZVZ3ikB1SjwCNFvorCs2hvIibMrGte6qn+
         eX8P2mDJqFjTaA9BoKxF2fSRMrkCsuK8Aa9W+H/4ixKcqX0vgFJHkiZTW+rcGlasEK4H
         a0UxAVRfQTb3Y1MNDdJ8LR5tqY1s1akidxGSccVCkCUrhqu4cCBrbWOP13E12PzKvvH0
         CXCMQFUpkDN92Se0pFuXg/E53LbKzHUmK8pRzlRLxyPsz6WYcFHS4yzaNz2FLugJ/vsc
         UPgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bCivBAPj25ViMjup4v5pn4MplfqT9TmkR/whj8XCgjLt6fR+z
	2KEGAEtu5uyrXMdLXgNPirQ=
X-Google-Smtp-Source: ABdhPJzV6u9PdJBuFjWKZNa/bqm/Ym1DY25/GjIu+mq8ibp6hyD4RKfxGxwRy/3HH/82Mvchopo/bA==
X-Received: by 2002:a17:907:9870:: with SMTP id ko16mr15833497ejc.227.1615220923118;
        Mon, 08 Mar 2021 08:28:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:eb82:: with SMTP id mh2ls8188349ejb.6.gmail; Mon, 08
 Mar 2021 08:28:42 -0800 (PST)
X-Received: by 2002:a17:907:1b06:: with SMTP id mp6mr15866757ejc.408.1615220922145;
        Mon, 08 Mar 2021 08:28:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615220922; cv=none;
        d=google.com; s=arc-20160816;
        b=g0VeF56cUicrf3SpI+Flls5VUTwbVi8aJ9fvZ24bslmhH8w27Ay1/3TaVFLKtGbCmo
         7UtBr7Wc1+KC6ub5BY0bCMAmBzzreYIEBY73FswF1o7JXUfEtYT/iDmJY1YubN2dxd2o
         +NduBBnS9eXNRryzoZK+rcBTxrhkBYw7DJ0+ZpiNnDF4IU7Z1KWTxOWFgRliHE5hku5M
         PXQgPqXC2pUkZdEQu/WLxaKA8wQe4MNBoLe3c4zAWB5jFy/xqR8fZozodg7fkDYKNXd6
         BgHJOB4aFTX7+asCzONgI9WIRDqMwnMgWTWK+smUL+i/AdCR8SbsVw35WFeGyBAXPCjS
         uNCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tiGJV2RhXExYKDWyCVs2qAl+gBXWf404MXhwFnRFKfg=;
        b=Vo1bVSYpvGIvAU57Gh/QhVPt/wT6gBi8XfsGpAuwhzhyFKpFaptmqTtrZ5lRUrmGQu
         Zi+g1CuMphepQzVLhsk9q9vSdrIK+nDfYE+lpUxFTOsGhK/5rR8XaDVlcRG54zJ8rZpC
         9T082LkU1uqZtZBEix/hT/HM8I4QPMAaAbFIndPNj1glbKcn1UwJ57f1Fs0PMSDZ84lD
         CiH/TS9Ch7H1z2RfOQuXiiFxtt4Cqm8CM9Q2LRERv9iPgGCq+RF91HPsMH175rVdkvDL
         +WTGyMh/KlIpSQv4vfQgzfncpY5eRLq2/9yBwCzuOPMqvtw+fLmOd5PUzZ57/lhUHDTq
         5dTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D5xNvUgC;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id t7si519333edr.0.2021.03.08.08.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 08:28:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Received: by mail-ej1-x634.google.com with SMTP id hs11so21600669ejc.1
        for <clang-built-linux@googlegroups.com>; Mon, 08 Mar 2021 08:28:42 -0800 (PST)
X-Received: by 2002:a17:907:76b3:: with SMTP id jw19mr15583419ejc.202.1615220921770;
        Mon, 08 Mar 2021 08:28:41 -0800 (PST)
Received: from [192.168.1.110] ([77.124.67.117])
        by smtp.gmail.com with ESMTPSA id v1sm6767875ejd.3.2021.03.08.08.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 08:28:41 -0800 (PST)
Subject: Re: [PATCH] net/mlx5e: allocate 'indirection_rqt' buffer dynamically
To: Arnd Bergmann <arnd@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Noam Stolero <noams@nvidia.com>, Tal Gilboa <talgi@nvidia.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Roi Dayan <roid@nvidia.com>,
 Vlad Buslov <vladbu@nvidia.com>, Paul Blakey <paulb@nvidia.com>,
 Oz Shlomo <ozsh@mellanox.com>, Eli Cohen <eli@mellanox.com>,
 Ariel Levkovich <lariel@nvidia.com>, Maor Dickman <maord@nvidia.com>,
 Tariq Toukan <tariqt@mellanox.com>, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210308153318.2486939-1-arnd@kernel.org>
From: Tariq Toukan <ttoukan.linux@gmail.com>
Message-ID: <31a031b3-e44e-66cb-a713-627be1f64ff6@gmail.com>
Date: Mon, 8 Mar 2021 18:28:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210308153318.2486939-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ttoukan.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D5xNvUgC;       spf=pass
 (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::634
 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On 3/8/2021 5:32 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Increasing the size of the indirection_rqt array from 128 to 256 bytes
> pushed the stack usage of the mlx5e_hairpin_fill_rqt_rqns() function
> over the warning limit when building with clang and CONFIG_KASAN:
> 
> drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:970:1: error: stack frame size of 1180 bytes in function 'mlx5e_tc_add_nic_flow' [-Werror,-Wframe-larger-than=]
> 
> Using dynamic allocation here is safe because the caller does the
> same, and it reduces the stack usage of the function to just a few
> bytes.
> 
> Fixes: 1dd55ba2fb70 ("net/mlx5e: Increase indirection RQ table size to 256")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/net/ethernet/mellanox/mlx5/core/en_tc.c | 16 +++++++++++++---
>   1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
> index 0da69b98f38f..66f98618dc13 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
> @@ -445,12 +445,16 @@ static void mlx5e_hairpin_destroy_transport(struct mlx5e_hairpin *hp)
>   	mlx5_core_dealloc_transport_domain(hp->func_mdev, hp->tdn);
>   }
>   
> -static void mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp, void *rqtc)
> +static int mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp, void *rqtc)
>   {
> -	u32 indirection_rqt[MLX5E_INDIR_RQT_SIZE], rqn;
> +	u32 *indirection_rqt, rqn;
>   	struct mlx5e_priv *priv = hp->func_priv;
>   	int i, ix, sz = MLX5E_INDIR_RQT_SIZE;
>   
> +	indirection_rqt = kzalloc(sz, GFP_KERNEL);
> +	if (!indirection_rqt)
> +		return -ENOMEM;
> +
>   	mlx5e_build_default_indir_rqt(indirection_rqt, sz,
>   				      hp->num_channels);
>   
> @@ -462,6 +466,9 @@ static void mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp, void *rqtc)
>   		rqn = hp->pair->rqn[ix];
>   		MLX5_SET(rqtc, rqtc, rq_num[i], rqn);
>   	}
> +
> +	kfree(indirection_rqt);
> +	return 0;
>   }
>   
>   static int mlx5e_hairpin_create_indirect_rqt(struct mlx5e_hairpin *hp)
> @@ -482,12 +489,15 @@ static int mlx5e_hairpin_create_indirect_rqt(struct mlx5e_hairpin *hp)
>   	MLX5_SET(rqtc, rqtc, rqt_actual_size, sz);
>   	MLX5_SET(rqtc, rqtc, rqt_max_size, sz);
>   
> -	mlx5e_hairpin_fill_rqt_rqns(hp, rqtc);
> +	err = mlx5e_hairpin_fill_rqt_rqns(hp, rqtc);
> +	if (err)
> +		goto out;
>   
>   	err = mlx5_core_create_rqt(mdev, in, inlen, &hp->indir_rqt.rqtn);
>   	if (!err)
>   		hp->indir_rqt.enabled = true;
>   
> +out:
>   	kvfree(in);
>   	return err;
>   }
> 

Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
Thanks for your patch.

Tariq

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/31a031b3-e44e-66cb-a713-627be1f64ff6%40gmail.com.
