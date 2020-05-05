Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBZWBY32QKGQELSQDZPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE2B1C5EB3
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 19:22:46 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id b16sf869587lfb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 10:22:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588699366; cv=pass;
        d=google.com; s=arc-20160816;
        b=eDOZDKIibpi78lbSkz5heC16cjHSVFOz16HFaa7afizSBrpqD/Quk/JoYlBKvbVI/q
         yaScohktMFTc/sVUMIWlE9LvEWFXkEKYT1DUtaeNKMqV0+hoaK63i7abr1MebuXxkHbh
         o7lF4+LpiXviDwkLxeWaKXDmLmYZXP1hkm4hGc9AAwQH3bsXV36+WVH3RLNC4o9gjsqk
         isue3FFXPKHgh3mLacUvklLtfSwFAZyOJQItzRMF7VTFjXi3ESQvW8Ue89zf4K5lUgA7
         bu5vfb5YKNv7vn8emTYhx0fZohuif0UDuV+fpOwAAT0w8TD/6nQSeyc+XkqLtALxOaT2
         U3OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=+b6xE2mBq0fFJiyPlS1BqxjZdH5ZODj45oN88OTmxJY=;
        b=ItgBsliF+XoQ8p6By2UfZDgdq//BtUoqjl2LGALDqYwl925JseArpMeHTkDvPGtnvw
         Sw1QVd7O+Uy3lzA/70vlO/9Tt08nYSibKclR46IovkKIiNjjtIjaT0FDZNoPxPC0MbCV
         69RVe389qFTT9+TmrXbSpLSGWUp5eDJxFbxYlfEutlE310OaIZnAOJmQyFvrvSlePmME
         XscQfFJU+j+zj1db6/5Kjy9CYIPWWp9agNjlAxrut+OAWCvqEZzgZBBMt8PPJf3WBgjy
         bhkq3gC/LIvvlDmGRnhhWzhNLLwVFydS76fP6nqFq7pdzZ6ZtHKKdWD2q1bztaxzVmD/
         nGig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+b6xE2mBq0fFJiyPlS1BqxjZdH5ZODj45oN88OTmxJY=;
        b=FRF4fPgc+qgnwIwSxdbTQqNS9HCmww9XL94RZbXQXCAJIAE5pjAWa51uax0C+fSjIQ
         XDYF4C1qsUE4bM50DaUiIthmpC7i4cKQ/umGT8nfufBcFowQdh4aCIRwYF86smatAd+i
         7MREfanZqrSxLG/RlWTaCpXgRDNsN19E5qgqY6+df5kkNVZUMLKHZDMr5LOEsmgnFSe0
         LC8/Fx96Yr5Vbk0QE8dqv2Nh6TMpGHNFN6kFj8Rat36GHO0e/rNLyA2zND8WFs83xvDi
         HRt/h5Vv4qJ4hUNarr+Kp2ITfm0k0twTD/66MsaHlBKVP3mSdYdpTwbmTdwnaNxGJv0H
         V29g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+b6xE2mBq0fFJiyPlS1BqxjZdH5ZODj45oN88OTmxJY=;
        b=qXCyLiDMIFNlhVG+3xKbb/k5adTWJCG3JEsSEo15vbG4hZIDkQVAksB6UFyU0wp3rv
         iyyVM6pd5khklMBABpAKDJumJ6wXKlI59uZ3/J2zaUkFQkVb0ignUbw8FV1A0ukrVArj
         vqEhaPBJd7/l+kaGDnwBGTu2X+GQxwDrTzlnoEryqKoSAqjyX74Scv2M2lX67IhkUk3a
         ufNqX1ipEs8RlHH5cQNzzV50KCwp4NI6uq4G1TIhiRuBs21mhf786GwO0OTCgp6DLDNv
         2NTeD2KRRpGvr7MaYt66BWZ6mVNvlTf0EvnmfnE1S7lwn4/ADZ89UXIFB7seY8nKJ2f+
         5ZBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZKgGfC4cpR5cHcRFVeBk8SABZFWA3ITo+DqUAHMHshG0UNlMHb
	Nfsj9LhIiLUJlI63zT3DzA4=
X-Google-Smtp-Source: APiQypLD1NDAfmRSScQUkKHyMhyOWGkNj/j6SthSPkODk9ilaryQTUtikzsTpar/GQfQu9/F1Lco/A==
X-Received: by 2002:a2e:953:: with SMTP id 80mr2488278ljj.276.1588699366125;
        Tue, 05 May 2020 10:22:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:551d:: with SMTP id j29ls646230lfk.1.gmail; Tue, 05 May
 2020 10:22:45 -0700 (PDT)
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr4901885wme.140.1588699365363;
        Tue, 05 May 2020 10:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588699365; cv=none;
        d=google.com; s=arc-20160816;
        b=KvjgN+F3L5ZUs/LQcwmG/MdZvMhFbopRFHY9tHeMDjI9YZ7KLebD8mVPm/LqoaUZeq
         nvwMlpv9ydxVi1Rj+MykVJH2WAgJzCrSt+/oW2YFrzBOK83w4U+/GPU1pM76sIFg76UE
         6OwcfewljhiQMRmPRlSrn9VWA4FbtyqqGFnGL9SJ8I3jESyMQhQ2AJcaknD0vNQ00g/M
         Uv/nNzDWk0Rs0p5/W4yyniP4wSM8vbt8xZ6XJNocgZJ+0FpFSSq7PqqierRS6FOjqbh8
         Fgt/rKcEQwPs9AkEG6PMfxulVEHjxD6DNmu4jcGZf1uamPcAfkAGFPAGON86rW3bOdEj
         uG7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=jCMhGBlNQdD7JFObXy2b5MiF8rDcFY+vaGihxT3rEsA=;
        b=xOcJikHXrhuHxn6or7iZbaSnEY32taRMCGrcWXOZccxRIJpUfS0af5VsrFmS9wJKTf
         TiWck/t0YXHeezA9xVG1QdQyS+7Tt8i5OD/Zcx1fdhi9CZHyIM+LxSo1HBhkd2dSS9JB
         fCAX/lm762Dx/7ZqGb5ddF2mT+6iRN6zPlqpbZue0OJznRTUJdUF0x5zlPcNR0uFgm9k
         FgpzrVTtVYfUCfG3Pt6dXGUNMq4tVJustJpglt2sGHdDtXD5TMo0jbxQilii/mjbLJ67
         nqx119RFbjpA3MGnq+lQ5+M4Nx9TCRlPip9COdecZCaltUwCTUY2z4mdJ/3+oNq9Jie3
         EKxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id q17si192093wmg.1.2020.05.05.10.22.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 10:22:45 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mbj3e-1j0Y4W17pW-00dJht; Tue, 05 May 2020 19:22:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Willem de Bruijn <willemb@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Martin Varghese <martin.varghese@nokia.com>,
	Taehee Yoo <ap420073@gmail.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] net: bareudp: avoid uninitialized variable warning
Date: Tue,  5 May 2020 19:22:14 +0200
Message-Id: <20200505172232.1034560-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:ScX50QBtpxPFHX9a2scBFJp+o7DWKydLzKgA2Q+e/2ogsI4SAtl
 djmLGBbV1D639qDn9G714rq7fyC/8ZEqIclZmJSc+0InIrXToStgetKi8SWqcaCJl6UgCxk
 KCKiquoiRbungr5pwrYYeZK3S+kzCczSOVZTD2dDycjCJBn3CKegMADSogr0LGqf1piMOxI
 9KtIuXpxh9hB+89TBJ9Iw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1wtMQ+rWzW8=:mcwGonjEhrQw1MIe99lyBE
 y7Vk4eNKd/OkxLAPihR3aSI6irPA6m+nAbmzjAF8KzukyUcL6/dQSyVYPjYMnSdfMzZuTYMuD
 dogqprIJM9wYZaDaeo0sBIovtgnufZUsARXBy+F0k/ItxXxyLmrd14KENnK/XqaaGAtKiG8ro
 WCtaHARroay8i0jPdMDFiGQxEuQn+HhYUZai1p3eHRrwq4CHCyuE6KnzM3fYQHRzZCVjgYtU+
 YZN2iyxRUo/09I9W8OjwTLTjoW/3M72e3vl3NmELnVH3bj29NOf152I7Z4sTPiz+Y5Qnzn0Zv
 1xBSAVN7lHzH1HoFD7YtUUhjzlCTZ5teDCVFyOKxSSwEf9r5hJWjMg8ykB9tDzxWXIVF1J6tN
 TIDmIXFjJpjFoIy1iUre65uP3SEtGE7s8g0aPsUCwdnlb03rtK/btdf/6pRvKqf+BoK4lDCVM
 NL2wR6NLPfufYROr3v0SrPpzhtd2o9JBxxMiC+VAxpjZ3opkxN4BlWecd6pNY0A1Vm0RrLfC+
 OS5Ac9EyS7lh0OZ0h3Fj14uUivWsvzn5UPFRJBZ3cB5GlZONZnXhcm5ESM0bNsqEQxd/IXeXj
 146zB4dj8K+pN4KaD9ALradcG7O6Qu6/lkHrhk9O12E0vReIYLy8WjwegmTgOJoKsIC6gmgR4
 DIu6Hm783J/VS5VaGP9v/LmhS+uIR1NwFIJAdbGivO5z7vule8RNeDfOeFgNT+O+ZUKGbGEvi
 ciM+qk7DLO4K1ZTe4us/9Ln8Fo1VqkWP/nSo82HfsqkZZ87l3MTY7XeOSRPHg02knmSVha65O
 ucJ4keWx+EJ1s1bYRQwOSm12P4rQSfoUa+AedHAoC3UxAaEvC0=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
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

clang points out that building without IPv6 would lead to returning
an uninitialized variable if a packet with family!=AF_INET is
passed into bareudp_udp_encap_recv():

drivers/net/bareudp.c:139:6: error: variable 'err' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
        if (family == AF_INET)
            ^~~~~~~~~~~~~~~~~
drivers/net/bareudp.c:146:15: note: uninitialized use occurs here
        if (unlikely(err)) {
                     ^~~
include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
 # define unlikely(x)    __builtin_expect(!!(x), 0)
                                            ^
drivers/net/bareudp.c:139:2: note: remove the 'if' if its condition is always true
        if (family == AF_INET)
        ^~~~~~~~~~~~~~~~~~~~~~

This cannot happen in practice, so change the condition in a way that
gcc sees the IPv4 case as unconditionally true here.
For consistency, change all the similar constructs in this file the
same way, using "if(IS_ENABLED())" instead of #if IS_ENABLED()".

Fixes: 571912c69f0e ("net: UDP tunnel encapsulation module for tunnelling different protocols like MPLS, IP, NSH etc.")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/bareudp.c    | 18 ++++--------------
 include/net/udp_tunnel.h |  2 --
 2 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/net/bareudp.c b/drivers/net/bareudp.c
index cc0703c3d57f..efd1a1d1f35e 100644
--- a/drivers/net/bareudp.c
+++ b/drivers/net/bareudp.c
@@ -136,25 +136,21 @@ static int bareudp_udp_encap_recv(struct sock *sk, struct sk_buff *skb)
 	oiph = skb_network_header(skb);
 	skb_reset_network_header(skb);
 
-	if (family == AF_INET)
+	if (!IS_ENABLED(CONFIG_IPV6) || family == AF_INET)
 		err = IP_ECN_decapsulate(oiph, skb);
-#if IS_ENABLED(CONFIG_IPV6)
 	else
 		err = IP6_ECN_decapsulate(oiph, skb);
-#endif
 
 	if (unlikely(err)) {
 		if (log_ecn_error) {
-			if  (family == AF_INET)
+			if  (!IS_ENABLED(CONFIG_IPV6) || family == AF_INET)
 				net_info_ratelimited("non-ECT from %pI4 "
 						     "with TOS=%#x\n",
 						     &((struct iphdr *)oiph)->saddr,
 						     ((struct iphdr *)oiph)->tos);
-#if IS_ENABLED(CONFIG_IPV6)
 			else
 				net_info_ratelimited("non-ECT from %pI6\n",
 						     &((struct ipv6hdr *)oiph)->saddr);
-#endif
 		}
 		if (err > 1) {
 			++bareudp->dev->stats.rx_frame_errors;
@@ -350,7 +346,6 @@ static int bareudp_xmit_skb(struct sk_buff *skb, struct net_device *dev,
 	return err;
 }
 
-#if IS_ENABLED(CONFIG_IPV6)
 static int bareudp6_xmit_skb(struct sk_buff *skb, struct net_device *dev,
 			     struct bareudp_dev *bareudp,
 			     const struct ip_tunnel_info *info)
@@ -411,7 +406,6 @@ static int bareudp6_xmit_skb(struct sk_buff *skb, struct net_device *dev,
 	dst_release(dst);
 	return err;
 }
-#endif
 
 static netdev_tx_t bareudp_xmit(struct sk_buff *skb, struct net_device *dev)
 {
@@ -435,11 +429,9 @@ static netdev_tx_t bareudp_xmit(struct sk_buff *skb, struct net_device *dev)
 	}
 
 	rcu_read_lock();
-#if IS_ENABLED(CONFIG_IPV6)
-	if (info->mode & IP_TUNNEL_INFO_IPV6)
+	if (IS_ENABLED(CONFIG_IPV6) && info->mode & IP_TUNNEL_INFO_IPV6)
 		err = bareudp6_xmit_skb(skb, dev, bareudp, info);
 	else
-#endif
 		err = bareudp_xmit_skb(skb, dev, bareudp, info);
 
 	rcu_read_unlock();
@@ -467,7 +459,7 @@ static int bareudp_fill_metadata_dst(struct net_device *dev,
 
 	use_cache = ip_tunnel_dst_cache_usable(skb, info);
 
-	if (ip_tunnel_info_af(info) == AF_INET) {
+	if (!IS_ENABLED(CONFIG_IPV6) || ip_tunnel_info_af(info) == AF_INET) {
 		struct rtable *rt;
 		__be32 saddr;
 
@@ -478,7 +470,6 @@ static int bareudp_fill_metadata_dst(struct net_device *dev,
 
 		ip_rt_put(rt);
 		info->key.u.ipv4.src = saddr;
-#if IS_ENABLED(CONFIG_IPV6)
 	} else if (ip_tunnel_info_af(info) == AF_INET6) {
 		struct dst_entry *dst;
 		struct in6_addr saddr;
@@ -492,7 +483,6 @@ static int bareudp_fill_metadata_dst(struct net_device *dev,
 
 		dst_release(dst);
 		info->key.u.ipv6.src = saddr;
-#endif
 	} else {
 		return -EINVAL;
 	}
diff --git a/include/net/udp_tunnel.h b/include/net/udp_tunnel.h
index 4b1f95e08307..e7312ceb2794 100644
--- a/include/net/udp_tunnel.h
+++ b/include/net/udp_tunnel.h
@@ -143,14 +143,12 @@ void udp_tunnel_xmit_skb(struct rtable *rt, struct sock *sk, struct sk_buff *skb
 			 __be16 df, __be16 src_port, __be16 dst_port,
 			 bool xnet, bool nocheck);
 
-#if IS_ENABLED(CONFIG_IPV6)
 int udp_tunnel6_xmit_skb(struct dst_entry *dst, struct sock *sk,
 			 struct sk_buff *skb,
 			 struct net_device *dev, struct in6_addr *saddr,
 			 struct in6_addr *daddr,
 			 __u8 prio, __u8 ttl, __be32 label,
 			 __be16 src_port, __be16 dst_port, bool nocheck);
-#endif
 
 void udp_tunnel_sock_release(struct socket *sock);
 
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505172232.1034560-1-arnd%40arndb.de.
