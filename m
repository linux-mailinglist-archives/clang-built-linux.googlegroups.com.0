Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRFNQH5AKGQECCRL6JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5D524E3D5
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:20:37 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id a75sf3731655ybg.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:20:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598052037; cv=pass;
        d=google.com; s=arc-20160816;
        b=0/BgkXYwO+cmZz99Lz5Unuu0wT7iRIMOk3DNz4wmPioBBnD/2cIWRdkuxzkkpHOjqI
         x9dKpwYU+/3xqJgMPjXISnTmZZjmwfsQWTOESp35eguDhoLOXBcfVAmx5DhZjFMm+/+K
         OvHEL6USeT62LouCcaW/7M3ajk1su4iMRKJTEBuzSqy7OmpsyDYknfQoIVDPtv//Ufet
         RReXJQdlADuZsJVUwrHy7htUaPgwW9OX/dLmZFI4W3Nm+O7lGS5izpmgtxcB2HTZIJrZ
         eiyGDHnwuWmPua5qTJ5tmkUMo1nSAWOP+8iqMwblKgaavyTxwZyXb/MTa2Ii47hAPxlb
         mapA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=A+PSJxnMQHcgXWTqxR4q1PUCvOx3E4oLqfqz/aUKt5g=;
        b=zwthpyhaaaUnh+wCXNreta/vtinQu5eF5wr7ClRx0TkFDksWW8yRRsWhahe22+2bAx
         cKJ9z/c+pal86elncaVuI/GOYHkP+nDop0Mpl/Nq3xYOh/ISVWO+g9rSdYBdqawydxGY
         FAGp2j98lJT9n5khV6ZJwEFAg2cMWbO/w4CZ6wXKJnzgtDv8tz5MfYKfyvInDQcfx3W0
         a1in8RBI9PY1HPCCvWEzFxjfwSO7jvUbxTHuMlUIBVlDf1uEqweO2iKo0JSk/y7vBm6g
         vG/VwU0zsjZVUxA88YuUXnaXEeWueWrn9HF7+mXZRWdnTR/ifPfe5sASlhQ9qGPJ4EaD
         6KsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tm5kzNOT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A+PSJxnMQHcgXWTqxR4q1PUCvOx3E4oLqfqz/aUKt5g=;
        b=YORP1Oplu+AGhAsTRse49bIp8SQXDTEphmLX42F9NxUO7c6kMIQ7X6+aKkyusKMZ5n
         r70EN5VRqNOmwKOM0o1mYCO7sPl3pxgOSeuGTf/WQd/6FL3pM+8P/z87o2M4EBR8VueB
         SCv812PGd6JXibaLiCjpdvNClMiyDw8EYS4HCqQ1R1xsEB6Zb5idtP5R8tnavEQaNwTI
         8zQkKs6CEKgk2TfE6DHBzca+0msKwsv/0LNP7Ce9gDJfHIyDZ+79OcCJQ1+P1oDy3JoL
         EXo/UZsUBlTi/WCJ3Z/zqoK9WxkYir6jziU3sokfQojqi5mIfcoGg8B/CzwLvne/q8Mr
         C5Ww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A+PSJxnMQHcgXWTqxR4q1PUCvOx3E4oLqfqz/aUKt5g=;
        b=tiE8ZI6r6k/f43CIGRrwF7mo+XbIGr6uCir0UTh2JV1U6g1yoXa6mfFc6/ugUXpJ57
         O9u7ZyYwyu3kQlZOhA5sELYJFnUW5uGL8lRjaBpDM7vuQXUcCHLNOWAYcllD1mNdtvlI
         NTv6b0iesJlP0f6dTGwnTYG/pEnVz622adbRMQCGjX3u+3Cs3eqQJfK7IDivUWZ+oSlQ
         Z8k7UJsiWUlsJwBtpIBw9aV7axZt+Yoh955mN9kl309Ishv2BoC8znDUsyByh7vPVKCf
         M6SCusuXJ2W9jJEpQzDTMw/KYOZAyDiWS/zGOP2WzfXPpSpkK6WoE08BqTzqFIel7sVk
         exdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A+PSJxnMQHcgXWTqxR4q1PUCvOx3E4oLqfqz/aUKt5g=;
        b=LxIgq16bPGiY2GqDt2JZAJNqG09KYJPCR/07aH0xWBbp9nC1gL2sfOuMC5CqxBmrGs
         LAJgVwEtHvnyImgcZNoN6QKWhwWAKMysTiumk0O7f8UiiwHc7r4fE7Za64zkb1qahfmw
         utX1u2MLLAOJThh8nNKtF68CD6tgc8IUMsMvjQPnPY/+QtlTJdcqLTjaJ9QeLvcFT+oT
         Kym1ds8FjxFgHquRvfzd8OWxj7cPQWL91QDI05Q1mKiQ4ij0lXtUZ8XCBpmW6WSdBWYd
         SW1fMgqrJg07WBfQ9eXKZRdsrtN0hXDNnjrCo0qoldvqUw65WNNFfVXEf+5qdqmpVmGb
         cZYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UbDTg82vOroA+HJX4J82RsObjQzwr+qFJHtfGhisuHDMWNKz0
	DLZRXOkMkzMraSMeTksuLfY=
X-Google-Smtp-Source: ABdhPJwVlHYCyqpXPcGX6ZgKL+sdCnt0EeyxdDJS2dPKW1w6MevZf/MklLQR7Z6uzsVPGtr12ZgMDw==
X-Received: by 2002:a25:ab87:: with SMTP id v7mr6528474ybi.216.1598052036853;
        Fri, 21 Aug 2020 16:20:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cace:: with SMTP id a197ls1426371ybg.11.gmail; Fri, 21
 Aug 2020 16:20:36 -0700 (PDT)
X-Received: by 2002:a25:5556:: with SMTP id j83mr7497542ybb.385.1598052036450;
        Fri, 21 Aug 2020 16:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598052036; cv=none;
        d=google.com; s=arc-20160816;
        b=dmRMNFomOxvkKUu2T07uJq4aHzS0TOkRRQwxu1Eggv7ZoblCQfAGx+OFEKLrBuExYh
         8O7btKiqMQCLJFyjzfXPuhcRFB4V7HP/db/OT/JuTv92M3E5Jr/5E5dLiFNzZ8fKNdFX
         9yHCPYpO16mts6Y2cMGGLjfxyaMY+dgbxOvjXk02WdRnZr4Bj+lJnc4Rkw0CNHKkSEh+
         +qBrGbbb3/YIsI8/b2nYd+8/JM5al3/Q/9Jpqujlg9DXqKosUK3Xv/UFvJNnE1tHdqZp
         Ao9CxkeIlk92rNhjRzAXOkXX3VeGNdfGnRu2dQVcdGMIQcMJYGassiDoVal+7jjoW1s3
         xheA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KFJW4fwydEfmjMeeoqasxgVUbALGDw4QHt512/+zZ8Y=;
        b=vn7NbRqCiqwgv+dv3WDgQIoHsSD0ri3JeP2SbIM5ag+pHRGSf8xaEpn2w4ZekBrwix
         w3p1GYQM1t718xKy02zJunsPqEkZKY1LBrw3p19Jhajc3CiLRu8SJ3/iuhOKiCFvF2A5
         ioQ1j3DtLksRFDE/iz4j5jWrNny8Gb1WACXKr1bgfxxk5ZAA5TfSkvDFAlTu9j3Abmnr
         LEwaRvVza1hD/C3HHgYN6LDnA+s+eZm20B15jB2bnE6GWl7kPddhpDN20Cag9d3Y6AdR
         t8xk/19icI4R5gXu0NuxaWAKSq6H1yLJmbpyKHCKx8DsJYE81ChiATHYdXVqkj0OG2eO
         xd8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tm5kzNOT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id 7si237249ybc.0.2020.08.21.16.20.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 16:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 62so2846450qkj.7
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 16:20:36 -0700 (PDT)
X-Received: by 2002:a37:44b:: with SMTP id 72mr4993211qke.494.1598052036025;
        Fri, 21 Aug 2020 16:20:36 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id d196sm2964448qkg.96.2020.08.21.16.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 16:20:35 -0700 (PDT)
Date: Fri, 21 Aug 2020 16:20:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
	Eli Cohen <eli@mellanox.com>,
	virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] vdpa/mlx5: Avoid warnings about shifts on 32-bit
 platforms
Message-ID: <20200821232034.GA1472930@ubuntu-n2-xlarge-x86>
References: <20200821225018.940798-1-natechancellor@gmail.com>
 <1975c0a0-c19a-c91e-dc10-2918061cc4e7@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1975c0a0-c19a-c91e-dc10-2918061cc4e7@infradead.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Tm5kzNOT;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Aug 21, 2020 at 04:13:19PM -0700, Randy Dunlap wrote:
> On 8/21/20 3:50 PM, Nathan Chancellor wrote:
> > Clang warns several times when building for 32-bit ARM along the lines
> > of:
> > 
> > drivers/vdpa/mlx5/net/mlx5_vnet.c:1462:31: warning: shift count >= width
> > of type [-Wshift-count-overflow]
> >                 ndev->mvdev.mlx_features |= BIT(VIRTIO_F_VERSION_1);
> >                                             ^~~~~~~~~~~~~~~~~~~~~~~
> > 
> > This is related to the BIT macro, which uses an unsigned long literal,
> > which is 32-bit on ARM so having a shift equal to or larger than 32 will
> > cause this warning, such as the above, where VIRTIO_F_VERSION_1 is 32.
> > To avoid this, use BIT_ULL, which will be an unsigned long long. This
> > matches the size of the features field throughout this driver, which is
> > u64 so there should be no functional change.
> > 
> > Fixes: 1a86b377aa21 ("vdpa/mlx5: Add VDPA driver for supported mlx5 devices")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1140
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> on 2020-AUG-10 for i386:
> https://lore.kernel.org/linux-next/5a7a0e6d-842a-78f6-aeac-c5b4c27b7186@infradead.org/
> :(

Sorry, I saw this in my own build tests and was not aware of the
previous report since I have not really been paying attention to
the mailing lists as of late :(

Should I need to do a v2, I will be sure to include that tag; otherwise,
it would be great if it could be picked up along with the below.

> Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thank you for testing!

> Thanks.
> 
> > ---
> >  drivers/vdpa/mlx5/net/mlx5_vnet.c | 50 +++++++++++++++----------------
> >  1 file changed, 25 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/vdpa/mlx5/net/mlx5_vnet.c b/drivers/vdpa/mlx5/net/mlx5_vnet.c
> > index 9df69d5efe8c..70676a6d1691 100644
> > --- a/drivers/vdpa/mlx5/net/mlx5_vnet.c
> > +++ b/drivers/vdpa/mlx5/net/mlx5_vnet.c
> > @@ -16,19 +16,19 @@
> >  #define to_mvdev(__vdev) container_of((__vdev), struct mlx5_vdpa_dev, vdev)
> >  
> >  #define VALID_FEATURES_MASK                                                                        \
> > -	(BIT(VIRTIO_NET_F_CSUM) | BIT(VIRTIO_NET_F_GUEST_CSUM) |                                   \
> > -	 BIT(VIRTIO_NET_F_CTRL_GUEST_OFFLOADS) | BIT(VIRTIO_NET_F_MTU) | BIT(VIRTIO_NET_F_MAC) |   \
> > -	 BIT(VIRTIO_NET_F_GUEST_TSO4) | BIT(VIRTIO_NET_F_GUEST_TSO6) |                             \
> > -	 BIT(VIRTIO_NET_F_GUEST_ECN) | BIT(VIRTIO_NET_F_GUEST_UFO) | BIT(VIRTIO_NET_F_HOST_TSO4) | \
> > -	 BIT(VIRTIO_NET_F_HOST_TSO6) | BIT(VIRTIO_NET_F_HOST_ECN) | BIT(VIRTIO_NET_F_HOST_UFO) |   \
> > -	 BIT(VIRTIO_NET_F_MRG_RXBUF) | BIT(VIRTIO_NET_F_STATUS) | BIT(VIRTIO_NET_F_CTRL_VQ) |      \
> > -	 BIT(VIRTIO_NET_F_CTRL_RX) | BIT(VIRTIO_NET_F_CTRL_VLAN) |                                 \
> > -	 BIT(VIRTIO_NET_F_CTRL_RX_EXTRA) | BIT(VIRTIO_NET_F_GUEST_ANNOUNCE) |                      \
> > -	 BIT(VIRTIO_NET_F_MQ) | BIT(VIRTIO_NET_F_CTRL_MAC_ADDR) | BIT(VIRTIO_NET_F_HASH_REPORT) |  \
> > -	 BIT(VIRTIO_NET_F_RSS) | BIT(VIRTIO_NET_F_RSC_EXT) | BIT(VIRTIO_NET_F_STANDBY) |           \
> > -	 BIT(VIRTIO_NET_F_SPEED_DUPLEX) | BIT(VIRTIO_F_NOTIFY_ON_EMPTY) |                          \
> > -	 BIT(VIRTIO_F_ANY_LAYOUT) | BIT(VIRTIO_F_VERSION_1) | BIT(VIRTIO_F_ACCESS_PLATFORM) |      \
> > -	 BIT(VIRTIO_F_RING_PACKED) | BIT(VIRTIO_F_ORDER_PLATFORM) | BIT(VIRTIO_F_SR_IOV))
> > +	(BIT_ULL(VIRTIO_NET_F_CSUM) | BIT_ULL(VIRTIO_NET_F_GUEST_CSUM) |                                   \
> > +	 BIT_ULL(VIRTIO_NET_F_CTRL_GUEST_OFFLOADS) | BIT_ULL(VIRTIO_NET_F_MTU) | BIT_ULL(VIRTIO_NET_F_MAC) |   \
> > +	 BIT_ULL(VIRTIO_NET_F_GUEST_TSO4) | BIT_ULL(VIRTIO_NET_F_GUEST_TSO6) |                             \
> > +	 BIT_ULL(VIRTIO_NET_F_GUEST_ECN) | BIT_ULL(VIRTIO_NET_F_GUEST_UFO) | BIT_ULL(VIRTIO_NET_F_HOST_TSO4) | \
> > +	 BIT_ULL(VIRTIO_NET_F_HOST_TSO6) | BIT_ULL(VIRTIO_NET_F_HOST_ECN) | BIT_ULL(VIRTIO_NET_F_HOST_UFO) |   \
> > +	 BIT_ULL(VIRTIO_NET_F_MRG_RXBUF) | BIT_ULL(VIRTIO_NET_F_STATUS) | BIT_ULL(VIRTIO_NET_F_CTRL_VQ) |      \
> > +	 BIT_ULL(VIRTIO_NET_F_CTRL_RX) | BIT_ULL(VIRTIO_NET_F_CTRL_VLAN) |                                 \
> > +	 BIT_ULL(VIRTIO_NET_F_CTRL_RX_EXTRA) | BIT_ULL(VIRTIO_NET_F_GUEST_ANNOUNCE) |                      \
> > +	 BIT_ULL(VIRTIO_NET_F_MQ) | BIT_ULL(VIRTIO_NET_F_CTRL_MAC_ADDR) | BIT_ULL(VIRTIO_NET_F_HASH_REPORT) |  \
> > +	 BIT_ULL(VIRTIO_NET_F_RSS) | BIT_ULL(VIRTIO_NET_F_RSC_EXT) | BIT_ULL(VIRTIO_NET_F_STANDBY) |           \
> > +	 BIT_ULL(VIRTIO_NET_F_SPEED_DUPLEX) | BIT_ULL(VIRTIO_F_NOTIFY_ON_EMPTY) |                          \
> > +	 BIT_ULL(VIRTIO_F_ANY_LAYOUT) | BIT_ULL(VIRTIO_F_VERSION_1) | BIT_ULL(VIRTIO_F_ACCESS_PLATFORM) |      \
> > +	 BIT_ULL(VIRTIO_F_RING_PACKED) | BIT_ULL(VIRTIO_F_ORDER_PLATFORM) | BIT_ULL(VIRTIO_F_SR_IOV))
> >  
> >  #define VALID_STATUS_MASK                                                                          \
> >  	(VIRTIO_CONFIG_S_ACKNOWLEDGE | VIRTIO_CONFIG_S_DRIVER | VIRTIO_CONFIG_S_DRIVER_OK |        \
> > @@ -149,7 +149,7 @@ static bool mlx5_vdpa_debug;
> >  
> >  #define MLX5_LOG_VIO_FLAG(_feature)                                                                \
> >  	do {                                                                                       \
> > -		if (features & BIT(_feature))                                                      \
> > +		if (features & BIT_ULL(_feature))                                                  \
> >  			mlx5_vdpa_info(mvdev, "%s\n", #_feature);                                  \
> >  	} while (0)
> >  
> > @@ -750,10 +750,10 @@ static bool vq_is_tx(u16 idx)
> >  
> >  static u16 get_features_12_3(u64 features)
> >  {
> > -	return (!!(features & BIT(VIRTIO_NET_F_HOST_TSO4)) << 9) |
> > -	       (!!(features & BIT(VIRTIO_NET_F_HOST_TSO6)) << 8) |
> > -	       (!!(features & BIT(VIRTIO_NET_F_CSUM)) << 7) |
> > -	       (!!(features & BIT(VIRTIO_NET_F_GUEST_CSUM)) << 6);
> > +	return (!!(features & BIT_ULL(VIRTIO_NET_F_HOST_TSO4)) << 9) |
> > +	       (!!(features & BIT_ULL(VIRTIO_NET_F_HOST_TSO6)) << 8) |
> > +	       (!!(features & BIT_ULL(VIRTIO_NET_F_CSUM)) << 7) |
> > +	       (!!(features & BIT_ULL(VIRTIO_NET_F_GUEST_CSUM)) << 6);
> >  }
> >  
> >  static int create_virtqueue(struct mlx5_vdpa_net *ndev, struct mlx5_vdpa_virtqueue *mvq)
> > @@ -1439,13 +1439,13 @@ static u64 mlx_to_vritio_features(u16 dev_features)
> >  	u64 result = 0;
> >  
> >  	if (dev_features & MLX5_VIRTIO_NET_F_GUEST_CSUM)
> > -		result |= BIT(VIRTIO_NET_F_GUEST_CSUM);
> > +		result |= BIT_ULL(VIRTIO_NET_F_GUEST_CSUM);
> >  	if (dev_features & MLX5_VIRTIO_NET_F_CSUM)
> > -		result |= BIT(VIRTIO_NET_F_CSUM);
> > +		result |= BIT_ULL(VIRTIO_NET_F_CSUM);
> >  	if (dev_features & MLX5_VIRTIO_NET_F_HOST_TSO6)
> > -		result |= BIT(VIRTIO_NET_F_HOST_TSO6);
> > +		result |= BIT_ULL(VIRTIO_NET_F_HOST_TSO6);
> >  	if (dev_features & MLX5_VIRTIO_NET_F_HOST_TSO4)
> > -		result |= BIT(VIRTIO_NET_F_HOST_TSO4);
> > +		result |= BIT_ULL(VIRTIO_NET_F_HOST_TSO4);
> >  
> >  	return result;
> >  }
> > @@ -1459,15 +1459,15 @@ static u64 mlx5_vdpa_get_features(struct vdpa_device *vdev)
> >  	dev_features = MLX5_CAP_DEV_VDPA_EMULATION(mvdev->mdev, device_features_bits_mask);
> >  	ndev->mvdev.mlx_features = mlx_to_vritio_features(dev_features);
> >  	if (MLX5_CAP_DEV_VDPA_EMULATION(mvdev->mdev, virtio_version_1_0))
> > -		ndev->mvdev.mlx_features |= BIT(VIRTIO_F_VERSION_1);
> > -	ndev->mvdev.mlx_features |= BIT(VIRTIO_F_ACCESS_PLATFORM);
> > +		ndev->mvdev.mlx_features |= BIT_ULL(VIRTIO_F_VERSION_1);
> > +	ndev->mvdev.mlx_features |= BIT_ULL(VIRTIO_F_ACCESS_PLATFORM);
> >  	print_features(mvdev, ndev->mvdev.mlx_features, false);
> >  	return ndev->mvdev.mlx_features;
> >  }
> >  
> >  static int verify_min_features(struct mlx5_vdpa_dev *mvdev, u64 features)
> >  {
> > -	if (!(features & BIT(VIRTIO_F_ACCESS_PLATFORM)))
> > +	if (!(features & BIT_ULL(VIRTIO_F_ACCESS_PLATFORM)))
> >  		return -EOPNOTSUPP;
> >  
> >  	return 0;
> > 
> > base-commit: 8a7c3213db068135e816a6a517157de6443290d6
> > 
> 
> 
> -- 
> ~Randy
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1975c0a0-c19a-c91e-dc10-2918061cc4e7%40infradead.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821232034.GA1472930%40ubuntu-n2-xlarge-x86.
