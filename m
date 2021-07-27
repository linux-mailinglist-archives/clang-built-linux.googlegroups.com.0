Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3HKQGEAMGQE3F32CEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AC33D807B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:54 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id o1-20020a17090aac01b029017730151351sf422851pjq.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420012; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqswuL3QuvcMFbidJG7xhkyrx9p2miuTnaT+lJCTnABFeu1MKLquCDnqNjDd+gPxEp
         d9APg+t3o2DFMvjJAimQlQKyCOsAcb1+/WAUWPnAtE6O8Ujh9bGBeDvZPH00JP4O4NPn
         e+s6Uz04n50FBtjpVzCp2WiuKyKkugyxrwMTOWNaZdottZ9t6r+7jrZP55psBmDhR6+V
         Jd+WtT7Ib9XpB1grvMyz2XrOCz7iwqxsddYvvg2ZMtjEcZ16G04yxNScAsv502SlIDSE
         hOlL3OBr/E2cRhfqoIqThyDt8jnx61qnmr8RYFhyu7nMXeG9ThlVfJIbPnBOKb69Ccgz
         i9eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Vm7n/aJFLBi9pjbOz1DcnJbnwGom9FmXQqBkmXlohPw=;
        b=g14+UaAM+HDVrNbOnr5+7dLDy+8qe9cmXg1ZHOy8zTLrBRvybgMfFCVGMi8p8s+QEa
         yd53HeMPyYap0TS+7EYmdtnJjTaD034UTAoOCb5lUqqfM3aTDYWarYJFeQ6rAnzG4J2I
         RMapDE6rhPOIu0OCcS7RcGWv9AyfUyWyNp7OvHribPVoOyDBqVHGCod7qq61EtBE5rz9
         1AEB0pHrJj/eJlJOr9H+wk14ghUu6YSi2DnsbBXafE4pLAwlH6GUFCjW/fqTMYdH/fst
         v8w5SmGSTnqig7DX6XB3IIiAvChFBCSzl53WGkECdbGIUPPj4WaocWOZ6O6l9TRVcsEY
         /pyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jd9XYMPn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vm7n/aJFLBi9pjbOz1DcnJbnwGom9FmXQqBkmXlohPw=;
        b=iGVHt8etCfDqWtuu9r+FfN4/bJyoqUptx4euLEXd2RWyk9iHKLzxMv3NUIlaNwnONp
         NQBOzlZvK0XPe4QJX0zdPXniLo/tLUKzV4hrz65MlAxn9414C+MUrZcU05Jkprme75f2
         tB5d98OgLlo5KUBw/8FzPpc2quaErgZy+Vld+ejxNBAG96FvMDy7xdBtaPH+lXt67nCr
         wbhp/z/EtPL03Mo70XxI4JH7Sx45doBFzuyqdGtkY8AGF9oOaDzoJi9ThvLXHUlajaIv
         0sYwYDPpiva+9KDLihezrI7BWhhlJEjD3XkTMdNbQcBv/7xGZZSA6oPJet5Vr/4xFTcl
         AvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vm7n/aJFLBi9pjbOz1DcnJbnwGom9FmXQqBkmXlohPw=;
        b=QcbMBQlqtylpTGELRg+eYGopbHU2QwCoyuG1e//U6rFqURu6d7ILTJKKbcwZ4trt59
         m1GJAsgcVeoqi1YaRYbBRlNBbC9J2naKQEzxUw6h06frwj9Qxk+7Qjz+E4yLkI1zNfkT
         CLJvmMH0TJ38a7X5b/GG7XI8UwzfQbjXQ35bRyZHmuxNXDOoigYRnFdGqVPH1ix6fMoF
         TyD3+NyXCBrzIEafYE8kh84kx5GPwDB6anJn13HYjUCDreeJUPvXh6kQifOPu1Q9HMh8
         s+3dUd32VIXPlWqRjf+waYdaLmXz3I8SSjXbooZU00+f/P19DqKuSIFHsSwvwNgjuAaR
         a52A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jVLpmECJLcWqflpTm1hKEbf2pe4D441tPS2KZHl1J7UfmjJwD
	tyR8aXKcFhC7Mm+ISy0eq8k=
X-Google-Smtp-Source: ABdhPJyL3VeR7D4lQl2QfVoTP7p2JDEQnu8iT6JAZ9l8MKn9cSG20hbnnP54KfI8m+ZIUIltjcEzCw==
X-Received: by 2002:a05:6a00:14c4:b029:331:7474:cb4b with SMTP id w4-20020a056a0014c4b02903317474cb4bmr25576343pfu.30.1627420012686;
        Tue, 27 Jul 2021 14:06:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8741:: with SMTP id g1ls9942678pfo.11.gmail; Tue, 27 Jul
 2021 14:06:52 -0700 (PDT)
X-Received: by 2002:a62:e704:0:b029:32b:545c:b58 with SMTP id s4-20020a62e7040000b029032b545c0b58mr24685412pfh.53.1627420012072;
        Tue, 27 Jul 2021 14:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420012; cv=none;
        d=google.com; s=arc-20160816;
        b=cM/meq6UaDOELNaiL4eFDjmegNF7PprMQRacIeV17zUnlglWNvJ0uRJRrdcM2U/4j0
         Jo6+6b/cz5r+cptDV49Z1l4eYZrTGYfPzQYImhGmSMVU7qzgFzAipwOzqGCjkIHVGHHd
         aBVe/TD3yiWxAEipwivrhUkMPr8OE3ueU0KLuSlaUAtTIRZSwTUK+DUmm5QJuQSjPyaT
         6ZwIPnLe/JBVnKW6qBk5O0awThS/Fa3G3v4s9vhk5Ojqdp+jEuGPjEqqUfCgggELBE8c
         YBFJkOASPOF/wfENvB6dD8b+suyNt51PegLKG49aI+hS9fXMsNvdLEJIhKfIEVoFH8dS
         ycuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=leSZ4+6fTtz64GnNlapLSf4V7UaFGM0yCohcXILoKXc=;
        b=n39cm6e2mkzDQEjOOEj5y+QxXclhm08vz5VSoVrx402JhKXcKoPJ5uNtSfwS0Sl2jP
         NCxj6pX4PWYXgXpNqeUxmPO5mm9XP3rXEVAsTjhj8Nu4xCXZf02G4pbklJOzu7jc4ppj
         PuLpCW0hmmKdlRx5HDlQeNp/aNxhLn3egqrJli1zQFFyrAg54zVQ6R5gU35by3ttGtJg
         yhsFMwon5/2fXnXWzaXmBP67danjYoBtcS420LMbAX5p11HSwuxqWlK9iSeOXDvrAR6+
         q+sBxJlQxlRBTmxUHE7kYMwKQb3RnvRnvgPmFMjVTvBK6zNmnOpO9HE3HS10eTydRYon
         8qmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jd9XYMPn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id b15si276663pfl.6.2021.07.27.14.06.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id mt6so1867287pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:52 -0700 (PDT)
X-Received: by 2002:a17:90a:4417:: with SMTP id s23mr6057606pjg.228.1627420011821;
        Tue, 27 Jul 2021 14:06:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y23sm4655958pgf.38.2021.07.27.14.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
Date: Tue, 27 Jul 2021 13:58:10 -0700
Message-Id: <20210727205855.411487-20-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5544; h=from:subject; bh=EW2OlP80ZbFYA2et85VLFWinFxHDZ/JfYcx96uwve2A=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOE1QionXEAsnSiPxVw5wfkIt8+He7UKLQGrMmI c3kN8gqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhAAKCRCJcvTf3G3AJgwWD/ sH6JiJOlqMdZB/DaJUVswYUCsszxQOHKvFJps95qmqpJBMRDsH2lLBKm2a6gmCHlmLHrpZE35CObwM nj+RWt9ixoNH4L81O+98xW2w1VPy57Ri6Pf6Yvn44gHEPmKAxV7pdf/rNyEVZZ+t4EbwjFrLIOF9Cu cXpnowGMFNqPdKCrUf/0aeZoSOJ/IGRJtmxUClP9U/1zfg/R1in74Yi149wzVruBUBUSTvsQc4SA0s QQYq5W7ixXMQ8l0YTWGa8ymTzcKK7P60aP4vm7HBJJCHyQR/BwdRDvijeZ1qYLlddgvFs0UULN0oQe vVd8qbWGt4gKDPylfKfgz6uaNSz+jJ43ZF5fCDL1Jt0BrSc+Cx63VBDSBSytHoarJkaqTtC3GRNWES xTVy3dTnpag/Lj92bhpS2+EWrLsiDNWEeuOb1Er5+25XBNHz+Y8frHGoRemgsL3Qs1EVYOTdxlFHG3 V6rjjqoRPfWMWpN0e7jogaTYc3cRUXBSen9HIsPGXHu3xrGH+bvNJ3uQ1VOdugyYnP+7PFkJ7FwuPS RBc5nf5hj3ojUnMeyIYKt1IK14Do/EQKUtgRpkmkN7YhsN1/yquUdxgGZ8x/Zi1LZI/UZ6FLaxcXVK Fc7a3ewBBcn4SXZY0R5FI5JHXF0Ahz8hNwHzp01WiTwpznvQKOKE/eRBuuoQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jd9XYMPn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct flowi4, struct ipv4hdr, and struct ipv6hdr
around members saddr and daddr, so they can be referenced together. This
will allow memcpy() and sizeof() to more easily reason about sizes,
improve readability, and avoid future warnings about writing beyond the
end of saddr.

"pahole" shows no size nor member offset changes to struct flowi4.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences.)

Note that since this is a UAPI header, struct_group() has been open
coded.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/net/flow.h            |  6 ++++--
 include/uapi/linux/if_ether.h | 12 ++++++++++--
 include/uapi/linux/ip.h       | 12 ++++++++++--
 include/uapi/linux/ipv6.h     | 12 ++++++++++--
 net/core/flow_dissector.c     | 10 ++++++----
 net/ipv4/ip_output.c          |  6 ++----
 6 files changed, 42 insertions(+), 16 deletions(-)

diff --git a/include/net/flow.h b/include/net/flow.h
index 6f5e70240071..f1a3b6c8eae2 100644
--- a/include/net/flow.h
+++ b/include/net/flow.h
@@ -81,8 +81,10 @@ struct flowi4 {
 #define flowi4_multipath_hash	__fl_common.flowic_multipath_hash
 
 	/* (saddr,daddr) must be grouped, same order as in IP header */
-	__be32			saddr;
-	__be32			daddr;
+	struct_group(addrs,
+		__be32			saddr;
+		__be32			daddr;
+	);
 
 	union flowi_uli		uli;
 #define fl4_sport		uli.ports.sport
diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
index a0b637911d3c..8f5667b2ea92 100644
--- a/include/uapi/linux/if_ether.h
+++ b/include/uapi/linux/if_ether.h
@@ -163,8 +163,16 @@
 
 #if __UAPI_DEF_ETHHDR
 struct ethhdr {
-	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
-	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
+	union {
+		struct {
+			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
+			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
+		};
+		struct {
+			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
+			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
+		} addrs;
+	};
 	__be16		h_proto;		/* packet type ID field	*/
 } __attribute__((packed));
 #endif
diff --git a/include/uapi/linux/ip.h b/include/uapi/linux/ip.h
index e42d13b55cf3..33647a37e56b 100644
--- a/include/uapi/linux/ip.h
+++ b/include/uapi/linux/ip.h
@@ -100,8 +100,16 @@ struct iphdr {
 	__u8	ttl;
 	__u8	protocol;
 	__sum16	check;
-	__be32	saddr;
-	__be32	daddr;
+	union {
+		struct {
+			__be32	saddr;
+			__be32	daddr;
+		} addrs;
+		struct {
+			__be32	saddr;
+			__be32	daddr;
+		};
+	};
 	/*The options start here. */
 };
 
diff --git a/include/uapi/linux/ipv6.h b/include/uapi/linux/ipv6.h
index b243a53fa985..1c26d32e733b 100644
--- a/include/uapi/linux/ipv6.h
+++ b/include/uapi/linux/ipv6.h
@@ -130,8 +130,16 @@ struct ipv6hdr {
 	__u8			nexthdr;
 	__u8			hop_limit;
 
-	struct	in6_addr	saddr;
-	struct	in6_addr	daddr;
+	union {
+		struct {
+			struct	in6_addr	saddr;
+			struct	in6_addr	daddr;
+		} addrs;
+		struct {
+			struct	in6_addr	saddr;
+			struct	in6_addr	daddr;
+		};
+	};
 };
 
 
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 2aadbfc5193b..87655a2ac200 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -1029,7 +1029,8 @@ bool __skb_flow_dissect(const struct net *net,
 		key_eth_addrs = skb_flow_dissector_target(flow_dissector,
 							  FLOW_DISSECTOR_KEY_ETH_ADDRS,
 							  target_container);
-		memcpy(key_eth_addrs, &eth->h_dest, sizeof(*key_eth_addrs));
+		BUILD_BUG_ON(sizeof(*key_eth_addrs) != sizeof(eth->addrs));
+		memcpy(key_eth_addrs, &eth->addrs, sizeof(*key_eth_addrs));
 	}
 
 proto_again:
@@ -1056,8 +1057,8 @@ bool __skb_flow_dissect(const struct net *net,
 							      FLOW_DISSECTOR_KEY_IPV4_ADDRS,
 							      target_container);
 
-			memcpy(&key_addrs->v4addrs, &iph->saddr,
-			       sizeof(key_addrs->v4addrs));
+			BUILD_BUG_ON(sizeof(key_addrs->v4addrs) != sizeof(iph->addrs));
+			memcpy(&key_addrs->v4addrs, &iph->addrs, sizeof(iph->addrs));
 			key_control->addr_type = FLOW_DISSECTOR_KEY_IPV4_ADDRS;
 		}
 
@@ -1101,7 +1102,8 @@ bool __skb_flow_dissect(const struct net *net,
 							      FLOW_DISSECTOR_KEY_IPV6_ADDRS,
 							      target_container);
 
-			memcpy(&key_addrs->v6addrs, &iph->saddr,
+			BUILD_BUG_ON(sizeof(iph->addrs) != sizeof(key_addrs->v6addrs));
+			memcpy(&key_addrs->v6addrs, &iph->addrs,
 			       sizeof(key_addrs->v6addrs));
 			key_control->addr_type = FLOW_DISSECTOR_KEY_IPV6_ADDRS;
 		}
diff --git a/net/ipv4/ip_output.c b/net/ipv4/ip_output.c
index 8d8a8da3ae7e..58603995d889 100644
--- a/net/ipv4/ip_output.c
+++ b/net/ipv4/ip_output.c
@@ -444,10 +444,8 @@ EXPORT_SYMBOL(ip_output);
  */
 static void ip_copy_addrs(struct iphdr *iph, const struct flowi4 *fl4)
 {
-	BUILD_BUG_ON(offsetof(typeof(*fl4), daddr) !=
-		     offsetof(typeof(*fl4), saddr) + sizeof(fl4->saddr));
-	memcpy(&iph->saddr, &fl4->saddr,
-	       sizeof(fl4->saddr) + sizeof(fl4->daddr));
+	BUILD_BUG_ON(sizeof(iph->addrs) != sizeof(fl4->addrs));
+	memcpy(&iph->addrs, &fl4->addrs, sizeof(fl4->addrs));
 }
 
 /* Note: skb->sk can be different from sk, in case of tunnels */
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-20-keescook%40chromium.org.
