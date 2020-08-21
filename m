Return-Path: <clang-built-linux+bncBDV2D5O34IDRBGNKQH5AKGQE5HFJ5DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 491E824E3CA
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:13:30 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id h5sf1182480ljj.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598051609; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iw2ZGsKtzhMFlwb4bdxIZpt9TeSdayC50fwZAq3hqJnWx1oF1TmaQn9+512Kd0yru+
         5hNo03G9Fg6VFr4QzeE6jW6LT1dzrCRkmrk9hVs872w0Y0OncsHu4bQ967g2ZyWlMm7R
         Rv9qStCEk2Ngu2f8XhpsLrpJ1dyEotRbq8VxUdOUjuFsI24e8Wj/MbghwwsU7hfFN5DO
         ugSuqZ61E8xJ5susVlAr6pSiVg6oUIzlNR9Yb3wJ0Fvq5M1k3/hkcGs+bX0aK4ZifMyW
         GTzxRdshiODLT/mZElCkQttfJ1c4BRFPnzb95ij299p62voOjv8L8spSErl0NseLNJ/c
         TmfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xIvU8CNszG5JfOuW0H5LmLigy1VGky0Y9xfAswB4Udg=;
        b=zTPIzVX9Fo5GGodgJojJJKv6WXsDdLCMii/STmZQvMXNNttT1/5XAkC//R2ipzPj0H
         JO9RC/KKqjbCxbzeBDY1pqR0GrD+QiHM82fnD7C0AitF3lv2qQ09CEj2EDb451EXI1Zg
         CaBnWW9tDgy+cfcq52dTF8lI7r4RMy/Fo4fi1dxFdJGDRf+sNfg9dvIMGOXXYSAzziyN
         WDyKN4UNlaN3aOtqmZNJj7gZ7BDiI77r23dq0arjHUnKCaHloj2GMZoqr7k85aKIzwCu
         OvKUO1uWqpUtmHMYZnvIufWvaFxUT/0MWlKqqevF16GfVJ/rpJa5mDGMT01Ukl9HlvVW
         Z/Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=SFkFEtDP;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xIvU8CNszG5JfOuW0H5LmLigy1VGky0Y9xfAswB4Udg=;
        b=nPNSM20NIs20Qtsrzq2DHCJf3SMEkp4zp3MstTF4AyASFSsGSO6Id+pdd87O3r7yjM
         +afaVG05Y2s4Md6gDGUnnZshmlzHpj21f+dxZylQOgnFqnX/sta02an9BsNkFUMUL6Bo
         EMXII8mtJyjni34b2MBPvp9hO0Mmc1osoa0ssf2YKruFA98duxrPVIK/3Wzjasw281tm
         oZ6Wc0Pj+eWmGQfs3j61ydbWdv/+t/JOCasT8S4si/1Wh6dp5DcZY4XirABPVSrTUoLQ
         lETz/bKFEgY2qIizqedDn39tdIO/tuFirX9+E7PEsW6pzqCTi33ocvyXYWot5spOsXxl
         IzwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xIvU8CNszG5JfOuW0H5LmLigy1VGky0Y9xfAswB4Udg=;
        b=C6h4uj24cJg78/2Qqjr/PggkYfl0Fx8RpVmW5LD5DsH2gha68bcAJs9FfjfJCfjk9J
         LGCEMaR2/0CauMp4QrpR4FQV4Xa/Fa2pIZoV/8Ef0bAlLFbeKkvFuv5IPuIs01hdydVo
         6zTOwWV9IrnohOqAXgxmFhiYfoOAVS9Cwrlvm4jg7Fr95PM6hfOokODzzQ+fdRvsrps8
         X5uGumlVMOjq8PpGgcYP6O/KDShjDqQgrp5rk1SsvjeeJBdSAq92I4h5yKhQ/b7ouehx
         Y+REFtNkmLgvBDpmhUXjOxlLpw10Om+aqLpI28KiwUGUwlywcSHqhNrJKpPgk554xafA
         spbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532j21tP6N3SGMU7gvDZGw325PYz5+8wPyX2P73fnJIlJQPoR/J8
	rc/r9rtYCSl1MsbNip5AWxk=
X-Google-Smtp-Source: ABdhPJyHTTHPmBx5TgKej+wbu2+l2glkmnJFKVfo6dTgdqxiXueE/gJtNOqFcp2NaQZUY9hawrjLcg==
X-Received: by 2002:a2e:b6cd:: with SMTP id m13mr2578259ljo.91.1598051609706;
        Fri, 21 Aug 2020 16:13:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6c18:: with SMTP id h24ls699730ljc.6.gmail; Fri, 21 Aug
 2020 16:13:29 -0700 (PDT)
X-Received: by 2002:a2e:3202:: with SMTP id y2mr2675801ljy.30.1598051608955;
        Fri, 21 Aug 2020 16:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598051608; cv=none;
        d=google.com; s=arc-20160816;
        b=oAPDElPtgwiv3EGEQ6Xv4Bp5XA154q5TQMDlevzG5+1m2pMmuWLfUSubOVF9jDKBII
         awDrZuW1H0KP0oukOEJ/J9LqahfmpWUQWOfPFFuEt3s3LlJj8FSq1Oe5kyQUOwVxMgc3
         ttkkQr55uVPMu//CIKZaHkuc4IuI68D2+GHVwl4ZTwzAfDo2sW7xN58HZCbNiW8eJjMn
         YtVNLYCuufjm0V5EouH25GSKEtIil/SFybZIdt+33kSRb3WJ+4D8mn/IPnZKD9/vuva0
         pGaVvUb2zKxek26JJYS4nrIlmu4QmER98yf0sLNhy6plynO4VejutCfVXezJggYuG1LA
         /rsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m7RfewVLa8YXRGQn+dkSgkj1/tUR4KO62lCzO2eGme0=;
        b=GfmkOcHZNHe4GICj4bTlTEKawhdb8SGGZHrLrhgcwKfGwFzbQSFQcktw90GJ2wize4
         f75+WEn7AMrBrT+HTPzWMghUA1wJaPshFCKWCo77GW1VqXhvPWz41vXGWc4gFIqR0imB
         ei6WTEJxyEMW/EjfvxUa37dLzbbniEWh0x2XP9BorbIaqYA9gnr+tefeQwcefj6jsJqi
         73Im9cLqKNleOH/D1jmguyISPwjtPY2wAXTOx3wEhA7OwseH6IL7d7hjkyV2+TSqLtlP
         H+kwI3OHI3upTj3wCyK7jLLKdlKCrgL3GQEMNFh9ZCFNA7TktjP4vB7iPd6YS6fnLofA
         axbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=SFkFEtDP;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i85si137438lfi.0.2020.08.21.16.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 16:13:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9GDr-0001Qs-1n; Fri, 21 Aug 2020 23:13:23 +0000
Subject: Re: [PATCH] vdpa/mlx5: Avoid warnings about shifts on 32-bit
 platforms
To: Nathan Chancellor <natechancellor@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Eli Cohen <eli@mellanox.com>
Cc: virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200821225018.940798-1-natechancellor@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1975c0a0-c19a-c91e-dc10-2918061cc4e7@infradead.org>
Date: Fri, 21 Aug 2020 16:13:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200821225018.940798-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=SFkFEtDP;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 8/21/20 3:50 PM, Nathan Chancellor wrote:
> Clang warns several times when building for 32-bit ARM along the lines
> of:
> 
> drivers/vdpa/mlx5/net/mlx5_vnet.c:1462:31: warning: shift count >= width
> of type [-Wshift-count-overflow]
>                 ndev->mvdev.mlx_features |= BIT(VIRTIO_F_VERSION_1);
>                                             ^~~~~~~~~~~~~~~~~~~~~~~
> 
> This is related to the BIT macro, which uses an unsigned long literal,
> which is 32-bit on ARM so having a shift equal to or larger than 32 will
> cause this warning, such as the above, where VIRTIO_F_VERSION_1 is 32.
> To avoid this, use BIT_ULL, which will be an unsigned long long. This
> matches the size of the features field throughout this driver, which is
> u64 so there should be no functional change.
> 
> Fixes: 1a86b377aa21 ("vdpa/mlx5: Add VDPA driver for supported mlx5 devices")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1140
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reported-by: Randy Dunlap <rdunlap@infradead.org>
on 2020-AUG-10 for i386:
https://lore.kernel.org/linux-next/5a7a0e6d-842a-78f6-aeac-c5b4c27b7186@infradead.org/
:(

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
>  drivers/vdpa/mlx5/net/mlx5_vnet.c | 50 +++++++++++++++----------------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/vdpa/mlx5/net/mlx5_vnet.c b/drivers/vdpa/mlx5/net/mlx5_vnet.c
> index 9df69d5efe8c..70676a6d1691 100644
> --- a/drivers/vdpa/mlx5/net/mlx5_vnet.c
> +++ b/drivers/vdpa/mlx5/net/mlx5_vnet.c
> @@ -16,19 +16,19 @@
>  #define to_mvdev(__vdev) container_of((__vdev), struct mlx5_vdpa_dev, vdev)
>  
>  #define VALID_FEATURES_MASK                                                                        \
> -	(BIT(VIRTIO_NET_F_CSUM) | BIT(VIRTIO_NET_F_GUEST_CSUM) |                                   \
> -	 BIT(VIRTIO_NET_F_CTRL_GUEST_OFFLOADS) | BIT(VIRTIO_NET_F_MTU) | BIT(VIRTIO_NET_F_MAC) |   \
> -	 BIT(VIRTIO_NET_F_GUEST_TSO4) | BIT(VIRTIO_NET_F_GUEST_TSO6) |                             \
> -	 BIT(VIRTIO_NET_F_GUEST_ECN) | BIT(VIRTIO_NET_F_GUEST_UFO) | BIT(VIRTIO_NET_F_HOST_TSO4) | \
> -	 BIT(VIRTIO_NET_F_HOST_TSO6) | BIT(VIRTIO_NET_F_HOST_ECN) | BIT(VIRTIO_NET_F_HOST_UFO) |   \
> -	 BIT(VIRTIO_NET_F_MRG_RXBUF) | BIT(VIRTIO_NET_F_STATUS) | BIT(VIRTIO_NET_F_CTRL_VQ) |      \
> -	 BIT(VIRTIO_NET_F_CTRL_RX) | BIT(VIRTIO_NET_F_CTRL_VLAN) |                                 \
> -	 BIT(VIRTIO_NET_F_CTRL_RX_EXTRA) | BIT(VIRTIO_NET_F_GUEST_ANNOUNCE) |                      \
> -	 BIT(VIRTIO_NET_F_MQ) | BIT(VIRTIO_NET_F_CTRL_MAC_ADDR) | BIT(VIRTIO_NET_F_HASH_REPORT) |  \
> -	 BIT(VIRTIO_NET_F_RSS) | BIT(VIRTIO_NET_F_RSC_EXT) | BIT(VIRTIO_NET_F_STANDBY) |           \
> -	 BIT(VIRTIO_NET_F_SPEED_DUPLEX) | BIT(VIRTIO_F_NOTIFY_ON_EMPTY) |                          \
> -	 BIT(VIRTIO_F_ANY_LAYOUT) | BIT(VIRTIO_F_VERSION_1) | BIT(VIRTIO_F_ACCESS_PLATFORM) |      \
> -	 BIT(VIRTIO_F_RING_PACKED) | BIT(VIRTIO_F_ORDER_PLATFORM) | BIT(VIRTIO_F_SR_IOV))
> +	(BIT_ULL(VIRTIO_NET_F_CSUM) | BIT_ULL(VIRTIO_NET_F_GUEST_CSUM) |                                   \
> +	 BIT_ULL(VIRTIO_NET_F_CTRL_GUEST_OFFLOADS) | BIT_ULL(VIRTIO_NET_F_MTU) | BIT_ULL(VIRTIO_NET_F_MAC) |   \
> +	 BIT_ULL(VIRTIO_NET_F_GUEST_TSO4) | BIT_ULL(VIRTIO_NET_F_GUEST_TSO6) |                             \
> +	 BIT_ULL(VIRTIO_NET_F_GUEST_ECN) | BIT_ULL(VIRTIO_NET_F_GUEST_UFO) | BIT_ULL(VIRTIO_NET_F_HOST_TSO4) | \
> +	 BIT_ULL(VIRTIO_NET_F_HOST_TSO6) | BIT_ULL(VIRTIO_NET_F_HOST_ECN) | BIT_ULL(VIRTIO_NET_F_HOST_UFO) |   \
> +	 BIT_ULL(VIRTIO_NET_F_MRG_RXBUF) | BIT_ULL(VIRTIO_NET_F_STATUS) | BIT_ULL(VIRTIO_NET_F_CTRL_VQ) |      \
> +	 BIT_ULL(VIRTIO_NET_F_CTRL_RX) | BIT_ULL(VIRTIO_NET_F_CTRL_VLAN) |                                 \
> +	 BIT_ULL(VIRTIO_NET_F_CTRL_RX_EXTRA) | BIT_ULL(VIRTIO_NET_F_GUEST_ANNOUNCE) |                      \
> +	 BIT_ULL(VIRTIO_NET_F_MQ) | BIT_ULL(VIRTIO_NET_F_CTRL_MAC_ADDR) | BIT_ULL(VIRTIO_NET_F_HASH_REPORT) |  \
> +	 BIT_ULL(VIRTIO_NET_F_RSS) | BIT_ULL(VIRTIO_NET_F_RSC_EXT) | BIT_ULL(VIRTIO_NET_F_STANDBY) |           \
> +	 BIT_ULL(VIRTIO_NET_F_SPEED_DUPLEX) | BIT_ULL(VIRTIO_F_NOTIFY_ON_EMPTY) |                          \
> +	 BIT_ULL(VIRTIO_F_ANY_LAYOUT) | BIT_ULL(VIRTIO_F_VERSION_1) | BIT_ULL(VIRTIO_F_ACCESS_PLATFORM) |      \
> +	 BIT_ULL(VIRTIO_F_RING_PACKED) | BIT_ULL(VIRTIO_F_ORDER_PLATFORM) | BIT_ULL(VIRTIO_F_SR_IOV))
>  
>  #define VALID_STATUS_MASK                                                                          \
>  	(VIRTIO_CONFIG_S_ACKNOWLEDGE | VIRTIO_CONFIG_S_DRIVER | VIRTIO_CONFIG_S_DRIVER_OK |        \
> @@ -149,7 +149,7 @@ static bool mlx5_vdpa_debug;
>  
>  #define MLX5_LOG_VIO_FLAG(_feature)                                                                \
>  	do {                                                                                       \
> -		if (features & BIT(_feature))                                                      \
> +		if (features & BIT_ULL(_feature))                                                  \
>  			mlx5_vdpa_info(mvdev, "%s\n", #_feature);                                  \
>  	} while (0)
>  
> @@ -750,10 +750,10 @@ static bool vq_is_tx(u16 idx)
>  
>  static u16 get_features_12_3(u64 features)
>  {
> -	return (!!(features & BIT(VIRTIO_NET_F_HOST_TSO4)) << 9) |
> -	       (!!(features & BIT(VIRTIO_NET_F_HOST_TSO6)) << 8) |
> -	       (!!(features & BIT(VIRTIO_NET_F_CSUM)) << 7) |
> -	       (!!(features & BIT(VIRTIO_NET_F_GUEST_CSUM)) << 6);
> +	return (!!(features & BIT_ULL(VIRTIO_NET_F_HOST_TSO4)) << 9) |
> +	       (!!(features & BIT_ULL(VIRTIO_NET_F_HOST_TSO6)) << 8) |
> +	       (!!(features & BIT_ULL(VIRTIO_NET_F_CSUM)) << 7) |
> +	       (!!(features & BIT_ULL(VIRTIO_NET_F_GUEST_CSUM)) << 6);
>  }
>  
>  static int create_virtqueue(struct mlx5_vdpa_net *ndev, struct mlx5_vdpa_virtqueue *mvq)
> @@ -1439,13 +1439,13 @@ static u64 mlx_to_vritio_features(u16 dev_features)
>  	u64 result = 0;
>  
>  	if (dev_features & MLX5_VIRTIO_NET_F_GUEST_CSUM)
> -		result |= BIT(VIRTIO_NET_F_GUEST_CSUM);
> +		result |= BIT_ULL(VIRTIO_NET_F_GUEST_CSUM);
>  	if (dev_features & MLX5_VIRTIO_NET_F_CSUM)
> -		result |= BIT(VIRTIO_NET_F_CSUM);
> +		result |= BIT_ULL(VIRTIO_NET_F_CSUM);
>  	if (dev_features & MLX5_VIRTIO_NET_F_HOST_TSO6)
> -		result |= BIT(VIRTIO_NET_F_HOST_TSO6);
> +		result |= BIT_ULL(VIRTIO_NET_F_HOST_TSO6);
>  	if (dev_features & MLX5_VIRTIO_NET_F_HOST_TSO4)
> -		result |= BIT(VIRTIO_NET_F_HOST_TSO4);
> +		result |= BIT_ULL(VIRTIO_NET_F_HOST_TSO4);
>  
>  	return result;
>  }
> @@ -1459,15 +1459,15 @@ static u64 mlx5_vdpa_get_features(struct vdpa_device *vdev)
>  	dev_features = MLX5_CAP_DEV_VDPA_EMULATION(mvdev->mdev, device_features_bits_mask);
>  	ndev->mvdev.mlx_features = mlx_to_vritio_features(dev_features);
>  	if (MLX5_CAP_DEV_VDPA_EMULATION(mvdev->mdev, virtio_version_1_0))
> -		ndev->mvdev.mlx_features |= BIT(VIRTIO_F_VERSION_1);
> -	ndev->mvdev.mlx_features |= BIT(VIRTIO_F_ACCESS_PLATFORM);
> +		ndev->mvdev.mlx_features |= BIT_ULL(VIRTIO_F_VERSION_1);
> +	ndev->mvdev.mlx_features |= BIT_ULL(VIRTIO_F_ACCESS_PLATFORM);
>  	print_features(mvdev, ndev->mvdev.mlx_features, false);
>  	return ndev->mvdev.mlx_features;
>  }
>  
>  static int verify_min_features(struct mlx5_vdpa_dev *mvdev, u64 features)
>  {
> -	if (!(features & BIT(VIRTIO_F_ACCESS_PLATFORM)))
> +	if (!(features & BIT_ULL(VIRTIO_F_ACCESS_PLATFORM)))
>  		return -EOPNOTSUPP;
>  
>  	return 0;
> 
> base-commit: 8a7c3213db068135e816a6a517157de6443290d6
> 


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1975c0a0-c19a-c91e-dc10-2918061cc4e7%40infradead.org.
