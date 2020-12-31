Return-Path: <clang-built-linux+bncBAABBROGW37QKGQE4UHKOLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0BE2E7F36
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 11:09:10 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id b62sf8381492vkh.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 02:09:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609409349; cv=pass;
        d=google.com; s=arc-20160816;
        b=YuRJf5X4XF2QHJtm9E2Mxkz3moDoZsjN+2muP7KVygIiUCxEPYTE/EfqI0f5RnWx5c
         29f3lP7TyhafUEnlwuRUb1S9rB9rQVJIKfZH1u0wVJKcKedDTYzlZv3z8ESF5FLvr4Nx
         Y8h3uS8H6aCVlqpqXfXpvJEvR5+9zBpmMTwJLRs5KPG5lzyc/QuaJZ88Q4mPSEtJvPxM
         g8Ox99QqLH+QnT++lXnSlCwOKPwZqSyOUjrWajSyfk2jLXNUPRmSYKazfkzSW6BHKHkh
         p70jzkTRMSmfEGYrAKDk68tcZNmI1Lzp5atuFGqKKTFOtCZeO1/zno53qUnzKtunL6Cf
         aUnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZzB21HLLIuisupQSgfCFxvXn0JQ0iYaEcDYOjopTNq0=;
        b=ENjcfsuwkHW8KGuTgFcIk+bc1b+7TfXCPwBrizA80TVVTEogeTNtpHfyUEdg8lGq47
         GY3rTUhxRVj1wIi/fwy4zWmgXMkp4j+X0+PJTYuCJHrWQ1ClupwObgC9qQijL5P8Bl4Q
         oJDlQP5KkocL0JZ1hdi+QY6clGcaxQiWJzPCdHPNXkoyDhoHdNkGsUehULvRtLeD/R7o
         rUvc3CM25c9TdihKjA/ibClEWqQmsnxvENKcfy/Xez8teyEwIXu9XrgExgluaHtFVJI+
         2RMb+AK12R9+5uw8Jh2yypi8RrgwZuk9kxZsXPCsE14jtVn6c/VJ+aDOZmNty3fU3IXM
         taog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q5lnce7m;
       spf=pass (google.com: domain of lorenzo@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=lorenzo@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZzB21HLLIuisupQSgfCFxvXn0JQ0iYaEcDYOjopTNq0=;
        b=HyfKSNMj4XcfyCl0XPMIRYwRM3KU3YU4OCv+A9ymsGoBuVqxYGD7FFGubE/mBURw1o
         cyNPCMhETCojF2fRg5aZoOOv+Ar9qWXp6ejhlAWTw+HJHWz1UoDOY7yyyqPuPg7oU4jM
         yEdkr3LfKea5nFzlXSbKOv+nlgaia0p4K8tQWZ6s9zvcTYvvb5BXtubyKmYSWxLi5lm7
         MjNqFOlU8k9rro9OPxFD2x1PXZEdu4l5cOCE9H+UQbmUGfEyaREC59VHbaKl286LsQu8
         BVna4w9AHLWDWEhyPHpxojWf1i+K0JVCOKVwr0yKtw7uj6R1OYFUnQBAFpWCJvz1EyzE
         56Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZzB21HLLIuisupQSgfCFxvXn0JQ0iYaEcDYOjopTNq0=;
        b=f80N/eu467iqRTd9QbxkMie/fPjSyPSZX5GPrwyBz6soj8po7LmfDzjnMRTObi5V7P
         wMmb3eLEB4QNoVJvzAVdk+ATKvPc8ZY6Ue1nwxTdtaTbBGZvOqhERGNrREazU3p+UsFO
         +QyoNF7HglqMual/LpyK3AjLrx2CRS4blCN0M8Z0T+M6NxmDoh41Pc1EK2OuqHMyqcQr
         DIMou3FSfMnrbryVkP8emOyZL7e6xye3gvysDNMiFWU5cOhIv/O/CDoZqKHUQ4PZTvUY
         Fe/E85g4TKHUEZSWJ0wLrXXcxLxFk9jrZW7wU8pC/xWaSbergmZC3XZsTGWu3LuzQkUC
         4NKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zp9PKISSd5nPm8/D1yYIWh5NZqrOZl7YnXnIArh5hAQJgij0k
	drk5Z6rx6Cyndn4Gn88jl2Q=
X-Google-Smtp-Source: ABdhPJyG6TDEYDdo8gCnZtjpLPc+4W+WYL/XSOttboGhxnL9UGcIIGtC3zpUsOsRJsKHLrGmhDDkrg==
X-Received: by 2002:a9f:2f0f:: with SMTP id x15mr35041421uaj.70.1609409349264;
        Thu, 31 Dec 2020 02:09:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c902:: with SMTP id t2ls764463vkl.11.gmail; Thu, 31 Dec
 2020 02:09:08 -0800 (PST)
X-Received: by 2002:a1f:1c83:: with SMTP id c125mr26194814vkc.0.1609409348896;
        Thu, 31 Dec 2020 02:09:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609409348; cv=none;
        d=google.com; s=arc-20160816;
        b=eQpVmi/AV4nXzT11/Tb+fimyROt9ycrFW/RRaITp+EskiCJbpez5ckUYM9FLI9/fYq
         eq2d9MpYZeas1rn1QMA9ZJPJNBIoLt6nq6m7SKwUvXxyvlhblMZDmdfCft6AwNs9Ebla
         FSmJwd2Qdq+cAEcU9K8GIXdsG7EUrmNS2bmKXrekTgLhY8AQO0hbMfMBMowWhsxXz60J
         zEfmMJq8JW1fK8dG8QIuV7cYS4KyX7xvxCghoKpNZdtXKJNFzo0NE1JWysJzCS7vGuzd
         8FJ677iyyEiiP4KsNxDbYtzbOLxVMJOf5F6jbvg8cxOLg2Bf3KNZVWYDIvXgkWJy5tdx
         sDww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5IwzY276K/POOLZMPtA6hrqmpFB5TE1bTu5L30wvSrQ=;
        b=cHW/pie/K/v7gX5UyKjAUdRXKzJH46ZoqpxbVPGwNL6cF5oV96D/dlu9CDLCCStGiR
         URyS9TzfOKnygVxHovri766h41wgsyvj1SJKRawfJFrMzWi1eohkyUsp9vEvJMHOkfO6
         6vv4kpucc0OMrjfhfDWjHcaFlhZ3NY4UsslIAWFSlqZbTh6ra6hlZSmfNntOWHPUUesD
         Q/lJCKaOQO6gq20c/E/jrqr3NPwB6vGHelGMXDn9A/Sfw0khQALHUHxL8uSTjIXcpfl3
         XRb4J6b4DTjIB7+GnFB1CyAV1CwbIHR2opOMcRmlQ3/900wfJEmrS4PFWV3n8ET2/VJS
         4Xxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Q5lnce7m;
       spf=pass (google.com: domain of lorenzo@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=lorenzo@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si2730906vsc.0.2020.12.31.02.09.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Dec 2020 02:09:08 -0800 (PST)
Received-SPF: pass (google.com: domain of lorenzo@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 58F4A207A3;
	Thu, 31 Dec 2020 10:09:07 +0000 (UTC)
Date: Thu, 31 Dec 2020 11:09:18 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Felix Fietkau <nbd@nbd.name>,
	Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mt76: Fix queue ID variable types after mcu queue split
Message-ID: <20201231100918.GA1819773@computer-5.station>
References: <20201229211548.1348077-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
In-Reply-To: <20201229211548.1348077-1-natechancellor@gmail.com>
X-Original-Sender: lorenzo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Q5lnce7m;       spf=pass
 (google.com: domain of lorenzo@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=lorenzo@kernel.org;       dmarc=pass (p=NONE
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


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

> Clang warns in both mt7615 and mt7915:
> 
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 txq = MT_MCUQ_FWDL;
>                     ~ ^~~~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 txq = MT_MCUQ_WA;
>                     ~ ^~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 txq = MT_MCUQ_WM;
>                     ~ ^~~~~~~~~~
> 3 warnings generated.
> 
> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 qid = MT_MCUQ_WM;
>                     ~ ^~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 qid = MT_MCUQ_FWDL;
>                     ~ ^~~~~~~~~~~~
> 2 warnings generated.
> 
> Use the proper type for the queue ID variables to fix these warnings.
> Additionally, rename the txq variable in mt7915_mcu_send_message to be
> more neutral like mt7615_mcu_send_message.
> 
> Fixes: e637763b606b ("mt76: move mcu queues to mt76_dev q_mcu array")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1229
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>

> ---
>  drivers/net/wireless/mediatek/mt76/mt7615/mcu.c |  2 +-
>  drivers/net/wireless/mediatek/mt76/mt7915/mcu.c | 10 +++++-----
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> index a44b7766dec6..c13547841a4e 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> @@ -231,7 +231,7 @@ mt7615_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
>  			int cmd, int *seq)
>  {
>  	struct mt7615_dev *dev = container_of(mdev, struct mt7615_dev, mt76);
> -	enum mt76_txq_id qid;
> +	enum mt76_mcuq_id qid;
>  
>  	mt7615_mcu_fill_msg(dev, skb, cmd, seq);
>  	if (test_bit(MT76_STATE_MCU_RUNNING, &dev->mphy.state))
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> index 5fdd1a6d32ee..e211a2bd4d3c 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> @@ -256,7 +256,7 @@ mt7915_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
>  	struct mt7915_dev *dev = container_of(mdev, struct mt7915_dev, mt76);
>  	struct mt7915_mcu_txd *mcu_txd;
>  	u8 seq, pkt_fmt, qidx;
> -	enum mt76_txq_id txq;
> +	enum mt76_mcuq_id qid;
>  	__le32 *txd;
>  	u32 val;
>  
> @@ -268,18 +268,18 @@ mt7915_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
>  		seq = ++dev->mt76.mcu.msg_seq & 0xf;
>  
>  	if (cmd == -MCU_CMD_FW_SCATTER) {
> -		txq = MT_MCUQ_FWDL;
> +		qid = MT_MCUQ_FWDL;
>  		goto exit;
>  	}
>  
>  	mcu_txd = (struct mt7915_mcu_txd *)skb_push(skb, sizeof(*mcu_txd));
>  
>  	if (test_bit(MT76_STATE_MCU_RUNNING, &dev->mphy.state)) {
> -		txq = MT_MCUQ_WA;
> +		qid = MT_MCUQ_WA;
>  		qidx = MT_TX_MCU_PORT_RX_Q0;
>  		pkt_fmt = MT_TX_TYPE_CMD;
>  	} else {
> -		txq = MT_MCUQ_WM;
> +		qid = MT_MCUQ_WM;
>  		qidx = MT_TX_MCU_PORT_RX_Q0;
>  		pkt_fmt = MT_TX_TYPE_CMD;
>  	}
> @@ -326,7 +326,7 @@ mt7915_mcu_send_message(struct mt76_dev *mdev, struct sk_buff *skb,
>  	if (wait_seq)
>  		*wait_seq = seq;
>  
> -	return mt76_tx_queue_skb_raw(dev, mdev->q_mcu[txq], skb, 0);
> +	return mt76_tx_queue_skb_raw(dev, mdev->q_mcu[qid], skb, 0);
>  }
>  
>  static void
> 
> base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
> -- 
> 2.30.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201231100918.GA1819773%40computer-5.station.

--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCX+2jTAAKCRA6cBh0uS2t
rAxYAP0f0XgVE5eJY2f4tP7MT5fX7WJ8MmFaiXKtkd+0UVZsLQD+JJVnlAsbv2g0
9j+j5nl0uK4wtbnOauzQykFDergmVAY=
=7ZmF
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--
