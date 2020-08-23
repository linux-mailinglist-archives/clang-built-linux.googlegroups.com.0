Return-Path: <clang-built-linux+bncBAABBQEQRD5AKGQEHMVSQMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF424EBBF
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 08:10:10 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id d2sf3939238iok.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 23:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598163008; cv=pass;
        d=google.com; s=arc-20160816;
        b=yQeOQEWowUFQuzHtmZuxcr9J2OedSoaLjZGDM8NdMkM0nWmH6GwckDnTCdN7/R2WJU
         w4V+X5k0jcLTW9y5Ld8tQHWPuP3DtQfSPiMMmDevPRvcgstpJ0TDGM2fIKUiyVW1aK0Y
         LmPNDKM4aIg7zohcfK+gNrSrvz4u0uNXBjtM5ezJCOegK0qzvkiSBayifSOWLc2u+8LG
         SiDSxbV6pCR+oMzyti6Ljx8RN3hSxtR7ALaAs1AqjJ3Elw+sgZ8UoaQBUuPk5k13IXuF
         nWiHqED/bg2U086Y2mQn8SYutQXGK+M7fABtwJfv4Fex6rg+E69rfHt4giraF1s57GCO
         NI6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jxIw/CShi+jhGE8Y2jifeZPojnPiVFUGg1fBfGIt2Qg=;
        b=BFtCGSwI0ZsmDWIDmVigRGXKdG6aV3/vmN++jPs3vAa/4BOlK1PM1VPhtitmavtf1w
         EtYg7KijTZdPPSP1RQBPrjsu0tc+nKBS6ER8MlZiMXMpRbmaBCtotZ+W6tg5Fim94BFE
         lLpNkJpLeaXQ3g8o9doimmAiNta0lsabO+XC7HpV4udq11JNZ7NlM6X5MNKCaJPDK8Ay
         e/zN1fhvV4HuQLHF7ClaIX1tDC6mHww7Gjj6bGe4hnZ9tEJwPs2L4N+p5NaUpl6SePLN
         oMtU+f06V9dv4A7NOLM/ss7xx+j0xdHAY3Eo9zwEfXf5QoUdnDdWa1dAoy3mNzhHXQ95
         ZC6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=TZombwlk;
       spf=pass (google.com: domain of elic@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=elic@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jxIw/CShi+jhGE8Y2jifeZPojnPiVFUGg1fBfGIt2Qg=;
        b=NLHcwztNsN219Mp/ZUXkFT0EXCvSJpoOKe4ZoeD9J3jrNp3yBI96Xrxg851Dr/jGcE
         5EtrPXde+fuueO59wHgGRgQCe4dPYyQUnBKD8vY5zCiRmCdua+tgmXSz2SdUMSuHXcui
         Cq0z/yV4UqnAcvqwRnqEXxwVWlw7K+Bly+jHuElVdFS/TMPXsU0k/B1buAKKZ3ofaMRG
         fdInBs44VoBP1HG7NftFAUskH2WY49vGCp21Cpeaqmy9Ljcu3XO+kk2X5AhDC4sAOdvd
         x3DROwudwaxtL2B1vG0ATolEO6oj7YepsloU+2YxeV16WedQg+zg+AxbXmdxrL6wrteC
         3NEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jxIw/CShi+jhGE8Y2jifeZPojnPiVFUGg1fBfGIt2Qg=;
        b=hzELQOJURW3iAiLWCyGiafYwoBczK846RaVzOzuM2hs/tYxIR7Fi3LDxcLy5sU42Lc
         PwTrhfmebRkQ1Mv+qMWnum6N0NUTG9phTirZj/nHvFwBGzAcMbAWV3VMI5FTQlkr8tDR
         JnlVryWU8zGfE7KTIoZCSVALlzGntOrkDedE0rN6jbqgjBEzfv7lxPLuNh0gMmmZKvy3
         w3mWv3eTl1wravmALUXisxk/Z26Om9HFuV+ckVlXl428IAjKB5JSGZ0tH2u5ETfM/c90
         aOHh8MtwAaR+jjSZ01mgUarD+LREJCA5DKzGTROS35ZZ7lxbFZ084R62SKnpg4nRkmG4
         SvCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MWe5uJL6NMglpFQ0UUQibs7sTXN6nlsNQl6syTvlbCo5fBueN
	CUasniBZ9ibxS3KocLwVYbA=
X-Google-Smtp-Source: ABdhPJwt+LRuJzSotIpYaxOVwWRbI/Uze+9IZZ5L4AnqPhMDlSNOAIlPBTtB0ts2vmR5tyShZYFdRQ==
X-Received: by 2002:a02:bb82:: with SMTP id g2mr207681jan.54.1598163008739;
        Sat, 22 Aug 2020 23:10:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c513:: with SMTP id s19ls132991jam.5.gmail; Sat, 22 Aug
 2020 23:10:08 -0700 (PDT)
X-Received: by 2002:a02:93ca:: with SMTP id z68mr190708jah.3.1598163008376;
        Sat, 22 Aug 2020 23:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598163008; cv=none;
        d=google.com; s=arc-20160816;
        b=jARHzXm9tWzApWDuCDvZteybA81Tucq8AVxlFojBAu3JBFphV/OAcOFguBy04qMIju
         Z8FD9OA+BdNVDqD+/TlQEt1JoWYcLoEgwB+rHR7UFR3/iHvy0UiLMbIh6hdEVDntBq3g
         aPl9IHiE7ec14EbR354tVEfCaXjb8dV+B/7dMH7gx+TsQe41GOy7HaTAH469jXwmAS3S
         dv/CSltKGW6OhNy2Eq+2/fgOwAT9x/eMlkJ9ziiISgaNH0Cfdl7S9O06U3Jc/ILtJdB5
         ty2pJjlSIeJsR7VU12B7lw2zy6Uocf7kR2XpBL7wEQluQKcEnYxWbgavWVeGSQTBpLsd
         dkjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=UQi/THUnpkMQGa3pyAFcoK62NCnVMUs9jsVEsWrDdzM=;
        b=AuUejCPmekkNlzewFOg1K3th6BQG8tElLtJKiVPEKzVlNaAu7tr+vtzpJlkLMInj7F
         yQkBNaHuseFowpQx+FVnSxGasjDdFvnoH/SlQmrx4lcyTGsliUtChIyLDWJ1JIUk43ZI
         1PFB6NdI+DdmLiKcxnkV1V9PgBwFtrMc4vIu6nqirnRPR7XHykFI108oOHuljCOa5WKK
         5ILmC7SuVLLVPO/7P9CG31xkPt1qya/ZTR4nfNc395lKcPi801V4EHEVuwt920TcDLmG
         zQRUdPXQRfin/JIPUgD19oGcgpudgsS/8WWDkznIOS7Q7wVSgSD4saIjKOX6jJYU+epn
         +Dag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=TZombwlk;
       spf=pass (google.com: domain of elic@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=elic@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com. [216.228.121.143])
        by gmr-mx.google.com with ESMTPS id z7si275117ilm.3.2020.08.22.23.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Aug 2020 23:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of elic@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
	id <B5f4207c90001>; Sat, 22 Aug 2020 23:08:09 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate102.nvidia.com (PGP Universal service);
  Sat, 22 Aug 2020 23:10:06 -0700
X-PGP-Universal: processed;
	by hqpgpgate102.nvidia.com on Sat, 22 Aug 2020 23:10:06 -0700
Received: from mtl-vdi-166.wap.labs.mlnx (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sun, 23 Aug
 2020 06:09:54 +0000
Date: Sun, 23 Aug 2020 09:09:51 +0300
From: Eli Cohen <elic@nvidia.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
	Eli Cohen <eli@mellanox.com>, <virtualization@lists.linux-foundation.org>,
	<linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] vdpa/mlx5: Avoid warnings about shifts on 32-bit
 platforms
Message-ID: <20200823060951.GA147797@mtl-vdi-166.wap.labs.mlnx>
References: <20200821225018.940798-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200821225018.940798-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.5 (bf161cf53efb) (2018-04-13)
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-Original-Sender: elic@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=TZombwlk;       spf=pass
 (google.com: domain of elic@nvidia.com designates 216.228.121.143 as
 permitted sender) smtp.mailfrom=elic@nvidia.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nvidia.com
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

On Fri, Aug 21, 2020 at 03:50:19PM -0700, Nathan Chancellor wrote:
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
> ---

Acked-by: Eli Cohen <elic@nvidia.com>

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
> -- 
> 2.28.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200823060951.GA147797%40mtl-vdi-166.wap.labs.mlnx.
