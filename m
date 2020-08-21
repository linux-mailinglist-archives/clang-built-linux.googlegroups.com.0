Return-Path: <clang-built-linux+bncBDY3NC743AGBBFVPQH5AKGQERCJHRTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 201CF24E3DC
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:24:07 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id g4sf392171uag.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:24:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598052246; cv=pass;
        d=google.com; s=arc-20160816;
        b=wY1Pqy2Rs3HJZxjjWhxg9jfPRxWTpol8WZ0ONuCq+gg0zaVqpU22Een9ZmIBmgJoU9
         4XswuOUhpDdUDms0sHJJnSU9bq+KjKIni/td2R/rvmfwLs+rtRW2kmzpKjPZVJzzB77t
         KHUOIkZT+LTdC0ZsWi1IRRgRVJpMRm2manHnPlqJbmodZYckrg5EeGzMwe5kH0GTD49I
         7H8qQCCor8zTX/8Pocaunyx7wnjdOdguMXUzJW9P1YDORElFN2S3nfugt1kc3rK6n6dP
         G71evK9OhgRtQi5smgeBiUj7r5R+I0raDf4BH4tHKG7EkcjMj0pvh5gDHx20hStC2GPO
         1xbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=3Zz/5/VVQEzPSL7y8iOGnZKh/FJ8HLoWDIZkOgaezUk=;
        b=WnmFkUxzKDv/jT1XOAhvXvsnWcLwpotQE7rwBHPkin7ySU0+Qw6+aAfNY9WKPKJuzY
         apIKtthlwj1AY2si0hhDFZ3NUYS3SBjDzkqR8WJCRhk06rkM/Ko+W1SdfnqCdP9ixj6P
         uN0ORr0L0C49lkFwUkspMZbnDxKCypeApy8FDeqkblIBtBfabqEc7oo2Af4hzACPljdm
         FAUS2YS/mIsDpXvUnMhIpneckfZGLsuW8NWS3hbPSTF8DhMRbcezPw6CsiliaW1J6X7P
         TpUPhw228P7ET4phfYBp3MHNX0P0RaS4J5Egml1aQ8cCU5ZoDGv3Gbp81cQK/9d0Zb3G
         uwTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Zz/5/VVQEzPSL7y8iOGnZKh/FJ8HLoWDIZkOgaezUk=;
        b=SAt70rtKU4IS1iQ8njrs6AwT5H+ajcdJJp5Zsl2oFkM+e7YDm0SWqzuZJmvVU93kSU
         8i+poCRYCxYtNChSIDhOCpyBdQwi1NEMh4BdWvWQMF0WWL4QoXzVkX2OLXoSOTZKWCyd
         qtK8sM7ZfWuwFCw/JJpliOhMWr8K1vQrwMqbVG5Rmp0BtruAo5zUyle9bKSO+n6eLkVz
         vbKPGbyq6t4iOeuq2diQucpIUYZIjTuXnxrHsRAPdoKE7NAKwArX3UT1JSXiuSqTXhfM
         OC2dmCT1j+2qyy74XJRFsrIv3QuoXzeAtuxeJXWyLIuenZYLZQnkVvOZyWnJDRTZ874M
         GclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Zz/5/VVQEzPSL7y8iOGnZKh/FJ8HLoWDIZkOgaezUk=;
        b=HokWstXbX/tZvEKFWH8zQepLki+gj/12khWBIfM0kfPpsRJ/lIuTe1/4/h+8TSHwUo
         k89LEIEXSNd+ij0Zn9C80tATGHlg9tng+i+Ky9SyPZIImy5VjT1iRdaL6btXLXwk3l97
         iA5d2HS7EhkX8lJE5xKzsqTo3QbWJItBp/2g94fA91MaNRUDwyxsql0JygVQqUOColzu
         678VH1Z71dM/ULMPjov6+5CksZdhACrtfjURvWKLPzlbzmSPhsnFkfU1DWczBOfRFUT8
         nVIoaGJI1cNTie+n6bPpp79OnIwdmgHJ2E/MTxjVqzZeRY60ZurEmT+5+pJ1MWi74hgZ
         XT0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Q1oKmW2ZGFov08fvI9l9tu7esQE0zZyXKjEpE+OLNRlc6T7cf
	p0xAHupaHqyLRoDnuG2Ft3E=
X-Google-Smtp-Source: ABdhPJzXYmvg1Z0WrfiCOJPK8sZipgbrOjNY2PB91Kgeq4+7Xpgk9eWfs1NsMlsE95qxo/2koBTMQQ==
X-Received: by 2002:a67:3242:: with SMTP id y63mr3444191vsy.72.1598052246136;
        Fri, 21 Aug 2020 16:24:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dd9a:: with SMTP id i26ls459030vsk.6.gmail; Fri, 21 Aug
 2020 16:24:05 -0700 (PDT)
X-Received: by 2002:a67:ecd4:: with SMTP id i20mr3366783vsp.68.1598052245765;
        Fri, 21 Aug 2020 16:24:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598052245; cv=none;
        d=google.com; s=arc-20160816;
        b=OaON1bxdv0nPK0lRAqKbrZ0AsRld0bRAizlS+0UG7KAhYkYmTxZNdO+gtV4MruyLAZ
         FxsQRIX8/+5irSL4JyR7GouHd6KXQz3zUDBCkYXwLlOqCoWTYLE/Ecd3PsI5aOuU377w
         EvHpogX0vlx91jKC/VBMUNPxMbHwUeI+Q2Jdiy4Rho1FDdO68ZX2egaPc+2wYn8s7fAT
         JVAuaLzLfdRP0XV+Hx5y71tMciRCuL2JVaXjEIk4vYWRYlIm1d/nSoG1x3kHWSxCV5fx
         jXYvXH+E8bhAcZ7jBePGx4ivQieUnX6nLTiFwhhQvK/Zy1r1zaOZPCg32py2ziKI7w0G
         1LjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=3m01MwxgEkvFzCE4H3G3tbcwbaUpgC2P9Yb5zkOVuVU=;
        b=cMuSCjmU2HX9YJG6cUFHlb1jsIPzqFsqjL8d1IRqB1S/S9km7QhCgIB5TEp8mudjVE
         chemsHi1voyuFT2iLIoR2rUrvwiLhGc4i7D/vD87HJneprfy07NwZ00rZqpP+rMcI8Lc
         mfdONicM4UCJTPvIaOvDnvRO38DPb9ZD0oOFYxX82+yZT4BU3oHQJ89V5VihbLGwuduX
         MuL1isZa61oCv+9euhg6K0S+fl1yTZVhqkA0G989Utl3rfY6ejgVTk9Z3F+PMPDjo5lD
         XUy1LSYDPCdmn9s0yu5Zor/zbtlI9fux4LY6BveFjB66PkrjE3mcDBnLCHlIbddeWQlF
         8oRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0135.hostedemail.com. [216.40.44.135])
        by gmr-mx.google.com with ESMTPS id u18si182674vsq.0.2020.08.21.16.24.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 16:24:05 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.135;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 0766F181D341E;
	Fri, 21 Aug 2020 23:24:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1711:1730:1747:1777:1792:1801:2194:2198:2199:2200:2393:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:4250:4321:4605:5007:9149:9592:10004:10848:11026:11232:11473:11657:11658:11914:12043:12048:12291:12297:12438:12555:12683:12740:12760:12895:13161:13229:13439:14110:14659:14721:21080:21451:21627:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: game49_02002042703d
X-Filterd-Recvd-Size: 5177
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Fri, 21 Aug 2020 23:24:03 +0000 (UTC)
Message-ID: <32801506f274e046e329da069839ff75443b2b78.camel@perches.com>
Subject: Re: [PATCH] vdpa/mlx5: Avoid warnings about shifts on 32-bit
 platforms
From: Joe Perches <joe@perches.com>
To: Randy Dunlap <rdunlap@infradead.org>, Nathan Chancellor
 <natechancellor@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason
 Wang <jasowang@redhat.com>, Eli Cohen <eli@mellanox.com>
Cc: virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
  clang-built-linux@googlegroups.com
Date: Fri, 21 Aug 2020 16:24:02 -0700
In-Reply-To: <1975c0a0-c19a-c91e-dc10-2918061cc4e7@infradead.org>
References: <20200821225018.940798-1-natechancellor@gmail.com>
	 <1975c0a0-c19a-c91e-dc10-2918061cc4e7@infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.135 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2020-08-21 at 16:13 -0700, Randy Dunlap wrote:
> On 8/21/20 3:50 PM, Nathan Chancellor wrote:
> > Clang warns several times when building for 32-bit ARM along the lines
> > of:

The defines are quite horrible to read.
Maybe:
---
 drivers/vdpa/mlx5/net/mlx5_vnet.c | 61 +++++++++++++++++++++++++++-----
-------
 1 file changed, 43 insertions(+), 18 deletions(-)

diff --git a/drivers/vdpa/mlx5/net/mlx5_vnet.c b/drivers/vdpa/mlx5/net/mlx5_vnet.c
index 9df69d5efe8c..62b6eec713b2 100644
--- a/drivers/vdpa/mlx5/net/mlx5_vnet.c
+++ b/drivers/vdpa/mlx5/net/mlx5_vnet.c
@@ -15,24 +15,49 @@
 
 #define to_mvdev(__vdev) container_of((__vdev), struct mlx5_vdpa_dev, vdev)
 
-#define VALID_FEATURES_MASK                                                                        \
-	(BIT(VIRTIO_NET_F_CSUM) | BIT(VIRTIO_NET_F_GUEST_CSUM) |                                   \
-	 BIT(VIRTIO_NET_F_CTRL_GUEST_OFFLOADS) | BIT(VIRTIO_NET_F_MTU) | BIT(VIRTIO_NET_F_MAC) |   \
-	 BIT(VIRTIO_NET_F_GUEST_TSO4) | BIT(VIRTIO_NET_F_GUEST_TSO6) |                             \
-	 BIT(VIRTIO_NET_F_GUEST_ECN) | BIT(VIRTIO_NET_F_GUEST_UFO) | BIT(VIRTIO_NET_F_HOST_TSO4) | \
-	 BIT(VIRTIO_NET_F_HOST_TSO6) | BIT(VIRTIO_NET_F_HOST_ECN) | BIT(VIRTIO_NET_F_HOST_UFO) |   \
-	 BIT(VIRTIO_NET_F_MRG_RXBUF) | BIT(VIRTIO_NET_F_STATUS) | BIT(VIRTIO_NET_F_CTRL_VQ) |      \
-	 BIT(VIRTIO_NET_F_CTRL_RX) | BIT(VIRTIO_NET_F_CTRL_VLAN) |                                 \
-	 BIT(VIRTIO_NET_F_CTRL_RX_EXTRA) | BIT(VIRTIO_NET_F_GUEST_ANNOUNCE) |                      \
-	 BIT(VIRTIO_NET_F_MQ) | BIT(VIRTIO_NET_F_CTRL_MAC_ADDR) | BIT(VIRTIO_NET_F_HASH_REPORT) |  \
-	 BIT(VIRTIO_NET_F_RSS) | BIT(VIRTIO_NET_F_RSC_EXT) | BIT(VIRTIO_NET_F_STANDBY) |           \
-	 BIT(VIRTIO_NET_F_SPEED_DUPLEX) | BIT(VIRTIO_F_NOTIFY_ON_EMPTY) |                          \
-	 BIT(VIRTIO_F_ANY_LAYOUT) | BIT(VIRTIO_F_VERSION_1) | BIT(VIRTIO_F_ACCESS_PLATFORM) |      \
-	 BIT(VIRTIO_F_RING_PACKED) | BIT(VIRTIO_F_ORDER_PLATFORM) | BIT(VIRTIO_F_SR_IOV))
-
-#define VALID_STATUS_MASK                                                                          \
-	(VIRTIO_CONFIG_S_ACKNOWLEDGE | VIRTIO_CONFIG_S_DRIVER | VIRTIO_CONFIG_S_DRIVER_OK |        \
-	 VIRTIO_CONFIG_S_FEATURES_OK | VIRTIO_CONFIG_S_NEEDS_RESET | VIRTIO_CONFIG_S_FAILED)
+#define VALID_FEATURES_MASK						\
+	(BIT_ULL(VIRTIO_NET_F_CSUM) |					\
+	 BIT_ULL(VIRTIO_NET_F_GUEST_CSUM) |				\
+	 BIT_ULL(VIRTIO_NET_F_CTRL_GUEST_OFFLOADS) |			\
+	 BIT_ULL(VIRTIO_NET_F_MTU) |					\
+	 BIT_ULL(VIRTIO_NET_F_MAC) |					\
+	 BIT_ULL(VIRTIO_NET_F_GUEST_TSO4) |				\
+	 BIT_ULL(VIRTIO_NET_F_GUEST_TSO6) |				\
+	 BIT_ULL(VIRTIO_NET_F_GUEST_ECN) |				\
+	 BIT_ULL(VIRTIO_NET_F_GUEST_UFO) |				\
+	 BIT_ULL(VIRTIO_NET_F_HOST_TSO4) |				\
+	 BIT_ULL(VIRTIO_NET_F_HOST_TSO6) |				\
+	 BIT_ULL(VIRTIO_NET_F_HOST_ECN) |				\
+	 BIT_ULL(VIRTIO_NET_F_HOST_UFO) |				\
+	 BIT_ULL(VIRTIO_NET_F_MRG_RXBUF) |				\
+	 BIT_ULL(VIRTIO_NET_F_STATUS) |					\
+	 BIT_ULL(VIRTIO_NET_F_CTRL_VQ) |				\
+	 BIT_ULL(VIRTIO_NET_F_CTRL_RX) |				\
+	 BIT_ULL(VIRTIO_NET_F_CTRL_VLAN) |				\
+	 BIT_ULL(VIRTIO_NET_F_CTRL_RX_EXTRA) |				\
+	 BIT_ULL(VIRTIO_NET_F_GUEST_ANNOUNCE) |				\
+	 BIT_ULL(VIRTIO_NET_F_MQ) |					\
+	 BIT_ULL(VIRTIO_NET_F_CTRL_MAC_ADDR) |				\
+	 BIT_ULL(VIRTIO_NET_F_HASH_REPORT) |				\
+	 BIT_ULL(VIRTIO_NET_F_RSS) |					\
+	 BIT_ULL(VIRTIO_NET_F_RSC_EXT) |				\
+	 BIT_ULL(VIRTIO_NET_F_STANDBY) |				\
+	 BIT_ULL(VIRTIO_NET_F_SPEED_DUPLEX) |				\
+	 BIT_ULL(VIRTIO_F_NOTIFY_ON_EMPTY) |				\
+	 BIT_ULL(VIRTIO_F_ANY_LAYOUT) |					\
+	 BIT_ULL(VIRTIO_F_VERSION_1) |					\
+	 BIT_ULL(VIRTIO_F_ACCESS_PLATFORM) |				\
+	 BIT_ULL(VIRTIO_F_RING_PACKED) |				\
+	 BIT_ULL(VIRTIO_F_ORDER_PLATFORM) |				\
+	 BIT_ULL(VIRTIO_F_SR_IOV))
+
+#define VALID_STATUS_MASK						\
+	(VIRTIO_CONFIG_S_ACKNOWLEDGE |					\
+	 VIRTIO_CONFIG_S_DRIVER |					\
+	 VIRTIO_CONFIG_S_DRIVER_OK |					\
+	 VIRTIO_CONFIG_S_FEATURES_OK |					\
+	 VIRTIO_CONFIG_S_NEEDS_RESET |					\
+	 VIRTIO_CONFIG_S_FAILED)
 
 struct mlx5_vdpa_net_resources {
 	u32 tisn;


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/32801506f274e046e329da069839ff75443b2b78.camel%40perches.com.
