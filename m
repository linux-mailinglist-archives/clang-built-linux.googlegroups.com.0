Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUWTVH2QKGQELGEDITA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0128B1BEFF7
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 08:01:55 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id h129sf6500600ybc.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 23:01:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588226514; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgXiL+uTxB4RDVg83u+4a3YeptBBLAD8Aby5n3hzqtkD5NFvsRo/IHu3zQb7Ggz1IN
         qKDN75p8PeqwxiBUVhJtow9jGkBCXfN+9gMgcV6UK0X+k2VQcxkY+PhmlnfrcX8Zi+BP
         xTXQyRYW+IyoIzmpsFGysBm+eWblLBtSsmTAo2Btuc113HOrwfC3zBZTnN8pwZ89nNXJ
         LbdXVXZPq4Qmj0iZUtmdpKLpzw7CIVPxL/9I7LyAAsrvGNhS2QC9XHecwWUkX13lvUae
         4aXt9CyYv4+8zCsd980vg5B7fbMyHgegFwUBV/gkgKC9JpK/tNgWElOYpWff2NcxS28n
         JtEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=PNLqYNychvqI9Dmt73AFty6uZH3XANcUZr+m3RUETQ4=;
        b=dyhO4q3/JN2GQlCakDCoWFu2CSpnec/CSjoVflroOR0o+MbtFbWguQlkEaX7tDBSw4
         AjnlWKVE+YppJD84bR8vNUGP1idbwdqRxMpo1IXhPQW88RV3BbeXXZTj/OhyCQHN/SoD
         YTdm9QWODApn1J1cJUnz7EiV8W61Pric8rRh9FuY7CKfXdInYtFBSxn4n+osgg0DMZp1
         oyFFS6TeLZyOhfhEnHCviKG6WzrUmEmJzMN43E58ee9Gb+9R0Veg/M0ER2BDFzodNDVu
         T7VRV/yVcZ3FGOErn2AonrALOTZwJfwNZbxwgCkXYW+CRpSRqBiGM+M+2L7q4z1QwR2j
         Lw1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kZgnKrad;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PNLqYNychvqI9Dmt73AFty6uZH3XANcUZr+m3RUETQ4=;
        b=CUsJUepp5eps3lTB10De6Osxpy9igTlyuv6Tbrv//EInaQGRXaHPS39dsqvFfHM/ka
         n7gD6NwfvQmNj00JAVssUUlfZvFuu5sfpIBMRiXMd5+meJL49bcl6DMOjPu2Z3bF6K8K
         WwnSxwr6/Sgojw0njFySPFrmGSf9Ad94z7I1At8Hje2DUofhm8P0P/kELgls+qvTpbo3
         a8KfpV0x3qUO0aHw6UavITkirUm/ZcnFNYZTuLLehb3DVFQfrAIAwjqnFhaz7kE4vMNH
         Gso3lLkprxfOMIAKiyOhSRTk7znl1oFHv07ghmMKo/VyK7repwwo0SU08WWHqJQiTaZs
         ZtBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PNLqYNychvqI9Dmt73AFty6uZH3XANcUZr+m3RUETQ4=;
        b=pWapToKfs4PF/YXGqAtZXGK7wY8T2ozVZlms6oV3uu6pj262xtx4/vj6bupP+vi9iH
         tkgsr3SMdDpoV4WYiA8Xti9w9THtaNsF9nh1/5+JUJAXyo6bjBE19gEMBJrBT5b3rFWi
         YuiOFS0GpoXsqH7jcKniIS0g5vT3PbheVANzQ6JJ2tVQyrlLzDlL9EdBiAo2SFmzNnoU
         3nPkcYHCQ+utWc92xsn8akM7wjT+6SghsWm/xTOoxOc63opKOqVa+iBUxUCJTcDBYvia
         l6sr6H5B9kcJ7s9pY4PkqimAOktrC2H64KdDcX+iDOXCXeO3XNmVUl0aupnx9diTvvR6
         puCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PNLqYNychvqI9Dmt73AFty6uZH3XANcUZr+m3RUETQ4=;
        b=fGZ5YDKYy5KnAALJxTyQD5cFrVEsKvxRh6DnMtfFacQs5b1/B8qZK5rdPtrIsa5eyg
         Ea6whwBmcgN1YdqqBsZ94UJEEbbDR+lg5xSGFqYagPVXwg3G1uwjPhQ9E9XCoNYXeD+d
         4cR9aLkk5oJm4VrHdEEfUonfi13NLbH2KlgxrfpBQ8BeOuDZMt7PK45/4KdUJr1yYxe+
         lhaOkByuOdJZYcEr7mctRmak/QZAleY3b7jYymIo75kVe5ov9p4wQhmFdeanwQOMynFw
         DOjijegQXlPYxGlqm8gdzBzjooX5EHyeKibEAp8C+0BMDbjvweNAM784Lyl7Wg7A9ej+
         qePA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubo4AqL4SyWyuRXoDwnAMsZaxpu9XdqvEhe8PJlR64U4ylOVsJZ
	QvQKqSIGipVKDsMtCGmXsoU=
X-Google-Smtp-Source: APiQypIAsuuywva7lfqOHxBCN2CxLkYdnFPVhyHoKHtxMHfhDnNMyXqRdPYTE5fp/FjJtLH15znr/Q==
X-Received: by 2002:a25:80d0:: with SMTP id c16mr3210533ybm.98.1588226514663;
        Wed, 29 Apr 2020 23:01:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3897:: with SMTP id f145ls536351yba.9.gmail; Wed, 29 Apr
 2020 23:01:54 -0700 (PDT)
X-Received: by 2002:a25:8045:: with SMTP id a5mr3312357ybn.518.1588226514292;
        Wed, 29 Apr 2020 23:01:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588226514; cv=none;
        d=google.com; s=arc-20160816;
        b=Z7Y9Utlo2RP8J+ZlfdZkFYawfX760ia1dsirNnd5HbpdukBrRvQ260UtWYQaGCJsw2
         Jx2/f3O75ndMv0/ZzMa3b3NrZlWKHwXOoGRhUdz5lmdrdJeH1aDBf/a2+A+5GWpCxi9C
         M6+Y6FN4lHJEdJBQbSCAcOxnfo7YJn1s74BqTIrhaq9MwxrFfNJjMESIbx3S8fbjA7y5
         mbdbi7k33TT7dorZGFBGn1QdI5UPQqdbgc2OgBZU8XissZ8mkB6TTtvvAUpH2TM8sRnG
         jT0KZtlWegYxswV5n6Cz29A0torPrVNwqU6e9Wq7ZZs0OKmC8CQZoONRYcvqZLhu+JUC
         oa4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Aa3UitXCFbuTJBux4KS46nQWRa1PCa2MQgyHix6wDug=;
        b=GWgd87uvR1Z6zRxQoEHrt7rRJMfW3gQZcIREeIP7PH+HCwbiSl1A8A5XA16PUAH17h
         t8ya/dE1WmBt6xmLM71NiqQlK6DkIkY6in1gmbEjMuKfe3bpW8fQMkB0npReI/IB02Jo
         bavez5VhXW7GIAMlpdFiGGa8qdqNqYzUAqCUVQPmNkekkRKH0f0rAhpL+g3KsKpDAtDT
         0LGY6NQmbDvu6LfYfjv6KFytH6rxA9+ie2KETkQDN9lHXCCiDAUZD/z/jwS9zvQc0/5N
         2AWh+EYsXZmR8XDfG4nQEwH6T3ls9o6C/FJ5faO4pMtLGfRm4HsRPYikBYAcpDqENaz/
         s9KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kZgnKrad;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id o65si76212yba.5.2020.04.29.23.01.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 23:01:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id m13so3973975otf.6
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 23:01:54 -0700 (PDT)
X-Received: by 2002:a9d:6391:: with SMTP id w17mr1276881otk.325.1588226513591;
        Wed, 29 Apr 2020 23:01:53 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm993958oto.80.2020.04.29.23.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 23:01:53 -0700 (PDT)
Date: Wed, 29 Apr 2020 23:01:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Kelley <mikelley@microsoft.com>
Cc: KY Srinivasan <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>,
	"linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
Message-ID: <20200430060151.GA3548130@ubuntu-s3-xlarge-x86>
References: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
 <20200428175455.2109973-1-natechancellor@gmail.com>
 <MW2PR2101MB10522D4D5EBAB469FE5B4D8BD7AA0@MW2PR2101MB1052.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <MW2PR2101MB10522D4D5EBAB469FE5B4D8BD7AA0@MW2PR2101MB1052.namprd21.prod.outlook.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kZgnKrad;       spf=pass
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

Hi Michael,

On Thu, Apr 30, 2020 at 12:06:09AM +0000, Michael Kelley wrote:
> From: Nathan Chancellor <natechancellor@gmail.com> Sent: Tuesday, April 28, 2020 10:55 AM
> > 
> > Do note that netvsc_xmit still returns int because netvsc_xmit has a
> > potential return from netvsc_vf_xmit, which does not return netdev_tx_t
> > because of the call to dev_queue_xmit.
> > 
> > I am not sure if that is an oversight that was introduced by
> > commit 0c195567a8f6e ("netvsc: transparent VF management") or if
> > everything works properly as it is now.
> > 
> > My patch is purely concerned with making the definition match the
> > prototype so it should be NFC aside from avoiding the CFI panic.
> > 
> 
> While it probably works correctly now, I'm not too keen on just
> changing the return type for netvsc_start_xmit() and assuming the
> 'int' that is returned from netvsc_xmit() will be correctly mapped to
> the netdev_tx_t enum type.  While that mapping probably happens
> correctly at the moment, this really should have a more holistic fix.

While it might work correctly, I am not sure that the mapping is
correct, hence that comment.

netdev_tx_t is an enum with two acceptable types, 0x00 and 0x10. Up
until commit 0c195567a8f6e ("netvsc: transparent VF management"),
netvsc_xmit was guaranteed to return something of type netdev_tx_t.

However, after said commit, we could return anything from
netvsc_vf_xmit, which in turn calls dev_queue_xmit then
__dev_queue_xmit which will return either an error code (-ENOMEM or
-ENETDOWN) or something from __dev_xmit_skb, which appears to be
NET_XMIT_SUCCESS, NET_XMIT_DROP, or NET_XMIT_CN.

It does not look like netvsc_xmit or netvsc_vf_xmit try to convert those
returns to netdev_tx_t in some way; netvsc_vf_xmit just passes the
return value up to netvsc_xmit, which is the part that I am unsure
about...

> Nathan -- are you willing to look at doing the more holistic fix?  Or
> should we see about asking Haiyang Zhang to do it?

I would be fine trying to look at a more holistic fix but I know
basically nothing about this subsystem. I am unsure if something like
this would be acceptable or if something else needs to happen.
Otherwise, I'd be fine with you guys taking a look and just giving me
reported-by credit.

Cheers,
Nathan

diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index d8e86bdbfba1e..a39480cfb8fa7 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -520,7 +520,8 @@ static int netvsc_vf_xmit(struct net_device *net, struct net_device *vf_netdev,
 	return rc;
 }
 
-static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
+static netdev_tx_t netvsc_xmit(struct sk_buff *skb, struct net_device *net,
+			       bool xdp_tx)
 {
 	struct net_device_context *net_device_ctx = netdev_priv(net);
 	struct hv_netvsc_packet *packet = NULL;
@@ -537,8 +538,11 @@ static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
 	 */
 	vf_netdev = rcu_dereference_bh(net_device_ctx->vf_netdev);
 	if (vf_netdev && netif_running(vf_netdev) &&
-	    !netpoll_tx_running(net))
-		return netvsc_vf_xmit(net, vf_netdev, skb);
+	    !netpoll_tx_running(net)) {
+		if (!netvsc_vf_xmit(net, vf_netdev, skb))
+			return NETDEV_TX_OK;
+		goto drop;
+	}
 
 	/* We will atmost need two pages to describe the rndis
 	 * header. We can only transmit MAX_PAGE_BUFFER_COUNT number
@@ -707,7 +711,8 @@ static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
 	goto drop;
 }
 
-static int netvsc_start_xmit(struct sk_buff *skb, struct net_device *ndev)
+static netdev_tx_t netvsc_start_xmit(struct sk_buff *skb,
+				     struct net_device *ndev)
 {
 	return netvsc_xmit(skb, ndev, false);
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200430060151.GA3548130%40ubuntu-s3-xlarge-x86.
