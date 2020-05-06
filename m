Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLOQZD2QKGQE7P6XWOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D47EB1C6627
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 04:59:58 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id q5sf345671ioh.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 19:59:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588733998; cv=pass;
        d=google.com; s=arc-20160816;
        b=r/BG3FwSFBpg9/77qc+t+fegm/UFcbsjQRCuXW0ramId/mpSnm+I40D6tp6emiCZdL
         foBWF6/GOBZ1yDPra174/XlJz5E7EdDWKM6mHm89KSLhT58uou+7PP0xSu1iG1LqeDng
         ldt5KNfWlKTGXfPVdBe8SfO1Z2MzzElC1cSg3+FNvHhf2Asv/49VN63/xrZSgP94EeDu
         yx3Fg3CSVVytazSzMzp7qY2tL6GxUKHDLESCGUSPVO23OHuz4uapcaCENL7XYiQ6L1lo
         e9AvyQUvpoGBKcCVX+b1MQ+kR8rZITwvj+gL+fkKpRl5tHrwaTs6Jn75ezAVd8LQszNQ
         HxlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=288huTiVlU2Szeorw1UJThFz99cYU1vMDdWeQry9XTk=;
        b=IoIAT5+DSy8sSJKMjzYWmJh3SrHmLCW6uebZBMvU91AuoH4Rtma656OSSjshGUiUoj
         borkXVVrKGwLLXocdEM7yncMV9Gt0KPWbB8kHtJ6sH8vnOcNuFNepSMX+mUDyfCMDboG
         0wXRkIpD/C6XcCuZpI/51HME0ALMr+HrLkhRMiow6YCu8ilJHsp8XJ8MNwE2BkyeIIVH
         T6ou1JVd3tco5nyQqO93mO4ig/dKBpb6bGvY0tuBZTfX7JL0ImgJiwSu5IyvKnRe8iB6
         /zG/i9uzgkYZ4VHddIGPU967KO+1u2OXE0HmIPo5PyaCduuAs/5bGXmhXsX27Hd3KDR7
         FkYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SiNzSu2X;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=288huTiVlU2Szeorw1UJThFz99cYU1vMDdWeQry9XTk=;
        b=dhQVyI4TQleIBXzuUYXvsjNsAt/HBfe77XSPW6ZsZmWM76ON5mOyIL1lUIGkXLxJ9h
         A+vGn8fceySB5DUr20rTDdiPhauDu7pxxykKTYnf1ML00DRs4/sbBlL+S2hLcCDzPo8g
         Qh1wPYuBV3RPFnJ+aLMVmuY9Y0kWYP8gr6pV+fD20Kfa+WlJh7fxbToxiKDsoHkvutVo
         wdQ4Ttczc/rHuDdhrwFTEPsPYoUCfO/5Mtv/GRBMrSfUZsKpkgXFMJ3SBYzHc/a4tADD
         Ry3LpIxzw1P2u7G0CM1ta36VooSI+gUxcTHs+F4c9LLevDfQHE7t+nU3dtC2pak49FDK
         y/ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=288huTiVlU2Szeorw1UJThFz99cYU1vMDdWeQry9XTk=;
        b=uLrsRhLJDrdT54rh1R60xYfEwfIfs8Xv03WxCZzHJ96b1PS08E3yEfwLxlszS/gIlx
         Sgw1DakrjHiCseWCT05fUu1Xu8jcHWifqA4PKJXEziraq6Pr15MXetoT7buay6s3Xo/j
         hEc+GBd91+m590pMCrHf9If1pxCrcTvIFjUrWEqXTt6sUwXKhErrcEXoo2uRYvC6RZdB
         dboSoXtaKog9ENW7mdsZX7jRR7Q8qPv2rAS6mTIe20oeNkLBnFsTFTVVtyCbhOClJd3i
         SVcgy9TlhX5GtmqgLyTeKNidR6T85AlIIqI0wFyb57w4+r9Rg4Wf5cvxiZwYSISxErR1
         oQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=288huTiVlU2Szeorw1UJThFz99cYU1vMDdWeQry9XTk=;
        b=RAKxdpB99c9TVWn6mNBGXqXbV9kvhnEG1AHVsomk8aAJcbZsaQObMLkzV1V6iWBfNq
         HpcSXK3PiDOEF807F6oSQV9mshRoMNKBtLmwv+eFl4+d+f+kc63yjErGbM0+UU7ymYKD
         TlItiSLdOQIgHLOZ4/wCOHSoXJgKNE19boSi/Dob2GFL/OpPC61CrrGNg+0RNvAtdL2K
         Eza70dgPiRcOnfBT4kX8Kpti3v++eiNajyUnL6V3yviPdDzt7tmQUL41rj7A0hY3Owz0
         QV2T4gxZtfLUtgzfa4WHFt+fhv8NnFnDZiAFhmFVrV6l5sjy1UfsL7dmkSVYZOuF2Yvh
         7MXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ9f92rKsIGckO8lUx8rafrP7N4b7X/k5NmuGTn6tcPz+iwoxBT
	jjwqG3v1839n1LfSu8+RiTA=
X-Google-Smtp-Source: APiQypLbEMxrUpedTbIwSqFhbyzgrsnwPIIewU9kmbcWK68C6Uklzs5lMk1ey6GhK0SNc0DSmtq6gg==
X-Received: by 2002:a6b:7203:: with SMTP id n3mr6720052ioc.23.1588733997897;
        Tue, 05 May 2020 19:59:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:610a:: with SMTP id v10ls117000iob.9.gmail; Tue, 05 May
 2020 19:59:57 -0700 (PDT)
X-Received: by 2002:a6b:6302:: with SMTP id p2mr6588459iog.153.1588733997570;
        Tue, 05 May 2020 19:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588733997; cv=none;
        d=google.com; s=arc-20160816;
        b=kSPv7ixpmi9KSknyQtoTkQIjMl2nwTswDICumuxZnR+re0JKcjVkzzbG0lX6pOl3sY
         NfA9L4Jkd9Hu7COiFSm2UcOqwkGld9sZx5GnBm3IbO1jVyP/6iUEw4GpskpAggkwlQZL
         /ZMn4vIzYecd9zkINJ9wgsmUAyA8jsf+XH0mkd7/0Z+KauLvzLT2u/7UXojIQIjJ7pjh
         ozprfZb8/cnaWxHqCxfXaNpoye1V59/zcf17XwfgJ50cTsNrqJCXsY5VlVmV6Tac8qPV
         QJL36gRXw6nm5EGHio2RicuvVNroNBZPqdHihxs9Yjcb5hlbDHtDAlKyX4vgyzS5vpyh
         o8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R8OfJcL03ZVKKC+qkqVrMfny/dWWpOW7UltiZCGWxj0=;
        b=eDhE7KqU9C5BL87JbuUKWTjRzSRB8NmbsaG3Ilo1X1SR3RVBokUqFZbdFEhwMjez5R
         s1shOFFQvKRvqyCP8qWn2ACrzud9CFGMyUG+99I1xB2JOoaGZsto8qDpPMP3BopwSG/m
         MPO5jxhKrCeJm4y+qx2EjblIgFenOnX8FdZyUWn7ranZ8+DLz5SV+vOJXgiGhY+JSQ0l
         3/Nk6orN5grX/8dKOQHFCBMvE0yFFkLDnxs3H6MsBlrG5xinp0iaFFFcTw9+WShYAAV7
         HGULbNKBFOZbsLapJJIqrG8NxVS3f9dH4T+1IaVomPsRt46NhseDm8+xOU8khz1z62bo
         qCog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SiNzSu2X;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v22si97239ioj.2.2020.05.05.19.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 19:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id z17so233680oto.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 19:59:57 -0700 (PDT)
X-Received: by 2002:a05:6830:1c65:: with SMTP id s5mr4901124otg.60.1588733997134;
        Tue, 05 May 2020 19:59:57 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m12sm141386oov.41.2020.05.05.19.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 19:59:56 -0700 (PDT)
Date: Tue, 5 May 2020 19:59:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Willem de Bruijn <willemb@google.com>,
	Martin Varghese <martin.varghese@nokia.com>,
	Taehee Yoo <ap420073@gmail.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: bareudp: avoid uninitialized variable warning
Message-ID: <20200506025955.GA433288@ubuntu-s3-xlarge-x86>
References: <20200505172232.1034560-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505172232.1034560-1-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SiNzSu2X;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 05, 2020 at 07:22:14PM +0200, Arnd Bergmann wrote:
> clang points out that building without IPv6 would lead to returning
> an uninitialized variable if a packet with family!=AF_INET is
> passed into bareudp_udp_encap_recv():
> 
> drivers/net/bareudp.c:139:6: error: variable 'err' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (family == AF_INET)
>             ^~~~~~~~~~~~~~~~~
> drivers/net/bareudp.c:146:15: note: uninitialized use occurs here
>         if (unlikely(err)) {
>                      ^~~
> include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>  # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                             ^
> drivers/net/bareudp.c:139:2: note: remove the 'if' if its condition is always true
>         if (family == AF_INET)
>         ^~~~~~~~~~~~~~~~~~~~~~
> 
> This cannot happen in practice, so change the condition in a way that
> gcc sees the IPv4 case as unconditionally true here.
> For consistency, change all the similar constructs in this file the
> same way, using "if(IS_ENABLED())" instead of #if IS_ENABLED()".
> 
> Fixes: 571912c69f0e ("net: UDP tunnel encapsulation module for tunnelling different protocols like MPLS, IP, NSH etc.")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/net/bareudp.c    | 18 ++++--------------
>  include/net/udp_tunnel.h |  2 --
>  2 files changed, 4 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
> index cc0703c3d57f..efd1a1d1f35e 100644
> --- a/drivers/net/bareudp.c
> +++ b/drivers/net/bareudp.c
> @@ -136,25 +136,21 @@ static int bareudp_udp_encap_recv(struct sock *sk, struct sk_buff *skb)
>  	oiph = skb_network_header(skb);
>  	skb_reset_network_header(skb);
>  
> -	if (family == AF_INET)
> +	if (!IS_ENABLED(CONFIG_IPV6) || family == AF_INET)
>  		err = IP_ECN_decapsulate(oiph, skb);
> -#if IS_ENABLED(CONFIG_IPV6)
>  	else
>  		err = IP6_ECN_decapsulate(oiph, skb);
> -#endif
>  
>  	if (unlikely(err)) {
>  		if (log_ecn_error) {
> -			if  (family == AF_INET)
> +			if  (!IS_ENABLED(CONFIG_IPV6) || family == AF_INET)
>  				net_info_ratelimited("non-ECT from %pI4 "
>  						     "with TOS=%#x\n",
>  						     &((struct iphdr *)oiph)->saddr,
>  						     ((struct iphdr *)oiph)->tos);
> -#if IS_ENABLED(CONFIG_IPV6)
>  			else
>  				net_info_ratelimited("non-ECT from %pI6\n",
>  						     &((struct ipv6hdr *)oiph)->saddr);
> -#endif
>  		}
>  		if (err > 1) {
>  			++bareudp->dev->stats.rx_frame_errors;
> @@ -350,7 +346,6 @@ static int bareudp_xmit_skb(struct sk_buff *skb, struct net_device *dev,
>  	return err;
>  }
>  
> -#if IS_ENABLED(CONFIG_IPV6)
>  static int bareudp6_xmit_skb(struct sk_buff *skb, struct net_device *dev,
>  			     struct bareudp_dev *bareudp,
>  			     const struct ip_tunnel_info *info)
> @@ -411,7 +406,6 @@ static int bareudp6_xmit_skb(struct sk_buff *skb, struct net_device *dev,
>  	dst_release(dst);
>  	return err;
>  }
> -#endif
>  
>  static netdev_tx_t bareudp_xmit(struct sk_buff *skb, struct net_device *dev)
>  {
> @@ -435,11 +429,9 @@ static netdev_tx_t bareudp_xmit(struct sk_buff *skb, struct net_device *dev)
>  	}
>  
>  	rcu_read_lock();
> -#if IS_ENABLED(CONFIG_IPV6)
> -	if (info->mode & IP_TUNNEL_INFO_IPV6)
> +	if (IS_ENABLED(CONFIG_IPV6) && info->mode & IP_TUNNEL_INFO_IPV6)
>  		err = bareudp6_xmit_skb(skb, dev, bareudp, info);
>  	else
> -#endif
>  		err = bareudp_xmit_skb(skb, dev, bareudp, info);
>  
>  	rcu_read_unlock();
> @@ -467,7 +459,7 @@ static int bareudp_fill_metadata_dst(struct net_device *dev,
>  
>  	use_cache = ip_tunnel_dst_cache_usable(skb, info);
>  
> -	if (ip_tunnel_info_af(info) == AF_INET) {
> +	if (!IS_ENABLED(CONFIG_IPV6) || ip_tunnel_info_af(info) == AF_INET) {
>  		struct rtable *rt;
>  		__be32 saddr;
>  
> @@ -478,7 +470,6 @@ static int bareudp_fill_metadata_dst(struct net_device *dev,
>  
>  		ip_rt_put(rt);
>  		info->key.u.ipv4.src = saddr;
> -#if IS_ENABLED(CONFIG_IPV6)
>  	} else if (ip_tunnel_info_af(info) == AF_INET6) {
>  		struct dst_entry *dst;
>  		struct in6_addr saddr;
> @@ -492,7 +483,6 @@ static int bareudp_fill_metadata_dst(struct net_device *dev,
>  
>  		dst_release(dst);
>  		info->key.u.ipv6.src = saddr;
> -#endif
>  	} else {
>  		return -EINVAL;
>  	}
> diff --git a/include/net/udp_tunnel.h b/include/net/udp_tunnel.h
> index 4b1f95e08307..e7312ceb2794 100644
> --- a/include/net/udp_tunnel.h
> +++ b/include/net/udp_tunnel.h
> @@ -143,14 +143,12 @@ void udp_tunnel_xmit_skb(struct rtable *rt, struct sock *sk, struct sk_buff *skb
>  			 __be16 df, __be16 src_port, __be16 dst_port,
>  			 bool xnet, bool nocheck);
>  
> -#if IS_ENABLED(CONFIG_IPV6)
>  int udp_tunnel6_xmit_skb(struct dst_entry *dst, struct sock *sk,
>  			 struct sk_buff *skb,
>  			 struct net_device *dev, struct in6_addr *saddr,
>  			 struct in6_addr *daddr,
>  			 __u8 prio, __u8 ttl, __be32 label,
>  			 __be16 src_port, __be16 dst_port, bool nocheck);
> -#endif
>  
>  void udp_tunnel_sock_release(struct socket *sock);
>  
> -- 
> 2.26.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506025955.GA433288%40ubuntu-s3-xlarge-x86.
