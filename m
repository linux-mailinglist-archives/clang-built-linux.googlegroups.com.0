Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX47QH5AKGQE4L2ZIMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB7A24E39D
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 00:51:12 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id h6sf2409936ilq.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 15:51:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598050271; cv=pass;
        d=google.com; s=arc-20160816;
        b=EBVToHVWNAd03T/uFq0+j/YVuZdrWCfzIDg+2et2vVDnKjIMu6oGt4zFdsmXFdKx8F
         CKSz5i7JkiFzrG9ndw/Oo509asX0rGKdIAHw96cJuBYrGML9nudCJYqgERsNBCqGPrB5
         kApDPqs0NKpxkUPkZ9Rt7B64FyaRNMamToRJNzA6Jzc2GqoHlw7118Nf6Pefw5lMt7+v
         7RdSNLXBNuaKjHNSxBr3BRqWKRIcBSeH113s62r26N/XcV59DMYuXL4YRw+cPkUSKSUu
         ZJfh8QxnRXghVr2nVSBBpVE92rRoQJgJRoTlrpxbi+3A0SIOAwvrzGlM+8UVGb/zWQqj
         Hq6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=tv5mo7Nk9zxHBwcICiR1hbN/o1dWZHpqpzVgr/583Cg=;
        b=iuQPBcghRG9LaXV2BxNQGFLfcaCSXLcbNnbZRBAzuNHQDwSAGXYikddeWxBtxBu31l
         03vXGSgCwPNj4jfpTbihn/eqDxNAeQfrGIcOFgmdhv6qh2U6HrQGYphKwaTEgpVKrPbC
         5raXVPdhOXjzMeDHXWmhJPHDktb8mD4rc2GPt99PA1U/HrBwmyl3szbMEljx7gYTDijI
         byANEdFoj/QduzOazcY9si9HPEYyvh9mAf38akJmAZ3R0OHbYdkBIOXopff/4eFDeM3V
         8qT1gxo2kLhGe/jy4WObGREplpNXuUvadMM31z5hUFDy5o6PWgElcNosB2QllBG0oDFB
         En0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dcro/mrE";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tv5mo7Nk9zxHBwcICiR1hbN/o1dWZHpqpzVgr/583Cg=;
        b=pMkymbVllKieOKB6EMR6NLDSI4BG+AqZ0v1bSUQs2CFU2SXnq2ALfy8U0QutSyONNb
         nlhOzF4LSrgPi+oFgSxDYaTNN5N/5dX1wHWMx+mMsc3XsFnmrROyhdXl3boIdWHXqFxC
         KXkcu2ucK7jbygR/E/gTAbxeOtXT6TS/74+r+uMhXPCxJp+wv3VqDWEA3pDnjhot6kI5
         7kfFYsoF0WPnFnrbXIZ3KV+XAYl40csoQtXWnrNxUefn0CWxfCGPzJOzcC72nuY//ROP
         DJJ3X1zjkU32JKhdO4qJzApBt+0ZDoA2ioPrgUkJIOLb+/yJhlToGgO7zVxx//CfF9M2
         dmyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tv5mo7Nk9zxHBwcICiR1hbN/o1dWZHpqpzVgr/583Cg=;
        b=lw3HiJEy3549FAJlj7bsCpkupjNVS8VLQuzpVAis+keWRxPVfEjXfQvo8j1OG+eC5x
         3GLXv9g6EYf5xgj3Pnih4CwSEijZ5UB5vPCM7yNxEbZZjYggmKms5U4ypDDB89nM6hiW
         xG3ge1k+4ZawTHHPqrC4KeK0iRYlEiHJsjyPXu2HyKrzObDyKXCVn4G93rASGWK7jkDI
         UcBxay6Jizdq6QXwp/rUfRarQF2bCW2oS+usXITx1EnTBOf4t1ULDe5RajjYnin1MZqU
         vlWq8l4V4P/PESQbZYRsmNZH2oY53l3yI8diMnaT2e2RXo8Yfk1iR+45nJAbRLWi4SDm
         G1+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tv5mo7Nk9zxHBwcICiR1hbN/o1dWZHpqpzVgr/583Cg=;
        b=NKvlTmWwXtyYpAtmWyj4iheuQyuWKOqPnFdtxyk+Hi/1nvGQSVkGoLAHl/MYNCSdQF
         /eEaXnYbuHoWUO/pSsduoUJb0r0QCKF7tqV7RQPt0kwBCQqwgxO2pM++TzVIEadwG8qZ
         twwwkQ1Ih86BgosisHt2CtDb8zX3rQK5ftSM48nw0J+4H0QBMpQb3gHDv+DU330uJUSh
         h9tCyCsCMp1hZkZYyMfm+xTeX8JQC0JKt0d4AjtskQhSem3HzlAiLeIotORfzOOn4Git
         uBLiBi0Gi7ADyqb/aYRAEader+7Fvt0/GtyI4BqatLo92GNVrgidT28QXhJ1h4aHJ/gc
         +APA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306gg2/FVVQPcAPPhwILrXI4GXhzJHfG95hxod6VUwlsvyM7C8q
	C7O6BrN1waRSr8Sd8MuxXm0=
X-Google-Smtp-Source: ABdhPJwwd6Ls9fxABLUfzDJQ3FNnmxBe5XpI0yBVAvE7xWyxOJ887aZyEX3OqnmR/6qospZkHN6D5w==
X-Received: by 2002:a92:9996:: with SMTP id t22mr4081373ilk.216.1598050271159;
        Fri, 21 Aug 2020 15:51:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a305:: with SMTP id a5ls18351ili.5.gmail; Fri, 21 Aug
 2020 15:51:10 -0700 (PDT)
X-Received: by 2002:a92:7d12:: with SMTP id y18mr4199546ilc.31.1598050270723;
        Fri, 21 Aug 2020 15:51:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598050270; cv=none;
        d=google.com; s=arc-20160816;
        b=KA2iAZBm8G8w6Zw3wNoaI1+GWOYmaBTcZmZmE/tfzuqmEjwlVHJ1QCDY0fJgAABDau
         fMnUfmAsjjfdjk9TZXXTz26iSnYkHEdiJnkhTWVq9apXgdW8dzlMBqt2B099uzoaP8BP
         Jk6RaKwnUJFXVWFi0cT+875hdAP3Y0SHKuZvE40lXgWSruFZMKVHRKgCLNDcgGQ7zvsb
         jKdkK0yI7d91iBXt5qgje+rgJ8df1SgYEfydueLRO3x0pOHKePJ41IhC+hgvz6FhP+R4
         2LvvQtmufViQXuMwttZr3HIFcsK1F7+QVb7w1+Bm0f62SD7G4YhVjpmBui8ZSLK8CjYU
         EROg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=m6ZztkKitApUlwV+ZX0Zt+Hf87PA0Zib6OW8N+QCBqM=;
        b=QMf2hVLnLQ6GvbI9f/N1NLOnQAUggD2WpeHpD5rmq+QHJQc3mNQZxomUjrLgnXNEvm
         YVeSu3VXqJe2etc1ojA8Rgd+0aY/Y4PY0kl8qhSLwBuxTaYsX387e7tOco4r+dyjZ5ZK
         5dvzYGdkKxvpkNhEvUjW5nHy74RTjZWYjBEEexUz+T9sbVBWpjHIfSKbnWM4dkgd2ueQ
         xTtVhg4KIFec+mDYNMeu5qu6o3Ee9EIvDcpanYZikAYKF9InUL4AN+f9PIvfK1Z+z4kC
         qg/2mOUc8kl94wOBAiZWRG2YLxl410VaKXyoSXZ7vqg3WlAfKkdl4V3jbp/2SFnktfUn
         3Rng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dcro/mrE";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id n1si157793iom.0.2020.08.21.15.51.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 15:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id 6so2399686qtt.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 15:51:10 -0700 (PDT)
X-Received: by 2002:ac8:14a:: with SMTP id f10mr4828355qtg.232.1598050270120;
        Fri, 21 Aug 2020 15:51:10 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id o17sm3367235qtr.13.2020.08.21.15.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 15:51:09 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Eli Cohen <eli@mellanox.com>
Cc: virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] vdpa/mlx5: Avoid warnings about shifts on 32-bit platforms
Date: Fri, 21 Aug 2020 15:50:19 -0700
Message-Id: <20200821225018.940798-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="dcro/mrE";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns several times when building for 32-bit ARM along the lines
of:

drivers/vdpa/mlx5/net/mlx5_vnet.c:1462:31: warning: shift count >= width
of type [-Wshift-count-overflow]
                ndev->mvdev.mlx_features |= BIT(VIRTIO_F_VERSION_1);
                                            ^~~~~~~~~~~~~~~~~~~~~~~

This is related to the BIT macro, which uses an unsigned long literal,
which is 32-bit on ARM so having a shift equal to or larger than 32 will
cause this warning, such as the above, where VIRTIO_F_VERSION_1 is 32.
To avoid this, use BIT_ULL, which will be an unsigned long long. This
matches the size of the features field throughout this driver, which is
u64 so there should be no functional change.

Fixes: 1a86b377aa21 ("vdpa/mlx5: Add VDPA driver for supported mlx5 devices")
Link: https://github.com/ClangBuiltLinux/linux/issues/1140
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/vdpa/mlx5/net/mlx5_vnet.c | 50 +++++++++++++++----------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/vdpa/mlx5/net/mlx5_vnet.c b/drivers/vdpa/mlx5/net/mlx5_vnet.c
index 9df69d5efe8c..70676a6d1691 100644
--- a/drivers/vdpa/mlx5/net/mlx5_vnet.c
+++ b/drivers/vdpa/mlx5/net/mlx5_vnet.c
@@ -16,19 +16,19 @@
 #define to_mvdev(__vdev) container_of((__vdev), struct mlx5_vdpa_dev, vdev)
 
 #define VALID_FEATURES_MASK                                                                        \
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
+	(BIT_ULL(VIRTIO_NET_F_CSUM) | BIT_ULL(VIRTIO_NET_F_GUEST_CSUM) |                                   \
+	 BIT_ULL(VIRTIO_NET_F_CTRL_GUEST_OFFLOADS) | BIT_ULL(VIRTIO_NET_F_MTU) | BIT_ULL(VIRTIO_NET_F_MAC) |   \
+	 BIT_ULL(VIRTIO_NET_F_GUEST_TSO4) | BIT_ULL(VIRTIO_NET_F_GUEST_TSO6) |                             \
+	 BIT_ULL(VIRTIO_NET_F_GUEST_ECN) | BIT_ULL(VIRTIO_NET_F_GUEST_UFO) | BIT_ULL(VIRTIO_NET_F_HOST_TSO4) | \
+	 BIT_ULL(VIRTIO_NET_F_HOST_TSO6) | BIT_ULL(VIRTIO_NET_F_HOST_ECN) | BIT_ULL(VIRTIO_NET_F_HOST_UFO) |   \
+	 BIT_ULL(VIRTIO_NET_F_MRG_RXBUF) | BIT_ULL(VIRTIO_NET_F_STATUS) | BIT_ULL(VIRTIO_NET_F_CTRL_VQ) |      \
+	 BIT_ULL(VIRTIO_NET_F_CTRL_RX) | BIT_ULL(VIRTIO_NET_F_CTRL_VLAN) |                                 \
+	 BIT_ULL(VIRTIO_NET_F_CTRL_RX_EXTRA) | BIT_ULL(VIRTIO_NET_F_GUEST_ANNOUNCE) |                      \
+	 BIT_ULL(VIRTIO_NET_F_MQ) | BIT_ULL(VIRTIO_NET_F_CTRL_MAC_ADDR) | BIT_ULL(VIRTIO_NET_F_HASH_REPORT) |  \
+	 BIT_ULL(VIRTIO_NET_F_RSS) | BIT_ULL(VIRTIO_NET_F_RSC_EXT) | BIT_ULL(VIRTIO_NET_F_STANDBY) |           \
+	 BIT_ULL(VIRTIO_NET_F_SPEED_DUPLEX) | BIT_ULL(VIRTIO_F_NOTIFY_ON_EMPTY) |                          \
+	 BIT_ULL(VIRTIO_F_ANY_LAYOUT) | BIT_ULL(VIRTIO_F_VERSION_1) | BIT_ULL(VIRTIO_F_ACCESS_PLATFORM) |      \
+	 BIT_ULL(VIRTIO_F_RING_PACKED) | BIT_ULL(VIRTIO_F_ORDER_PLATFORM) | BIT_ULL(VIRTIO_F_SR_IOV))
 
 #define VALID_STATUS_MASK                                                                          \
 	(VIRTIO_CONFIG_S_ACKNOWLEDGE | VIRTIO_CONFIG_S_DRIVER | VIRTIO_CONFIG_S_DRIVER_OK |        \
@@ -149,7 +149,7 @@ static bool mlx5_vdpa_debug;
 
 #define MLX5_LOG_VIO_FLAG(_feature)                                                                \
 	do {                                                                                       \
-		if (features & BIT(_feature))                                                      \
+		if (features & BIT_ULL(_feature))                                                  \
 			mlx5_vdpa_info(mvdev, "%s\n", #_feature);                                  \
 	} while (0)
 
@@ -750,10 +750,10 @@ static bool vq_is_tx(u16 idx)
 
 static u16 get_features_12_3(u64 features)
 {
-	return (!!(features & BIT(VIRTIO_NET_F_HOST_TSO4)) << 9) |
-	       (!!(features & BIT(VIRTIO_NET_F_HOST_TSO6)) << 8) |
-	       (!!(features & BIT(VIRTIO_NET_F_CSUM)) << 7) |
-	       (!!(features & BIT(VIRTIO_NET_F_GUEST_CSUM)) << 6);
+	return (!!(features & BIT_ULL(VIRTIO_NET_F_HOST_TSO4)) << 9) |
+	       (!!(features & BIT_ULL(VIRTIO_NET_F_HOST_TSO6)) << 8) |
+	       (!!(features & BIT_ULL(VIRTIO_NET_F_CSUM)) << 7) |
+	       (!!(features & BIT_ULL(VIRTIO_NET_F_GUEST_CSUM)) << 6);
 }
 
 static int create_virtqueue(struct mlx5_vdpa_net *ndev, struct mlx5_vdpa_virtqueue *mvq)
@@ -1439,13 +1439,13 @@ static u64 mlx_to_vritio_features(u16 dev_features)
 	u64 result = 0;
 
 	if (dev_features & MLX5_VIRTIO_NET_F_GUEST_CSUM)
-		result |= BIT(VIRTIO_NET_F_GUEST_CSUM);
+		result |= BIT_ULL(VIRTIO_NET_F_GUEST_CSUM);
 	if (dev_features & MLX5_VIRTIO_NET_F_CSUM)
-		result |= BIT(VIRTIO_NET_F_CSUM);
+		result |= BIT_ULL(VIRTIO_NET_F_CSUM);
 	if (dev_features & MLX5_VIRTIO_NET_F_HOST_TSO6)
-		result |= BIT(VIRTIO_NET_F_HOST_TSO6);
+		result |= BIT_ULL(VIRTIO_NET_F_HOST_TSO6);
 	if (dev_features & MLX5_VIRTIO_NET_F_HOST_TSO4)
-		result |= BIT(VIRTIO_NET_F_HOST_TSO4);
+		result |= BIT_ULL(VIRTIO_NET_F_HOST_TSO4);
 
 	return result;
 }
@@ -1459,15 +1459,15 @@ static u64 mlx5_vdpa_get_features(struct vdpa_device *vdev)
 	dev_features = MLX5_CAP_DEV_VDPA_EMULATION(mvdev->mdev, device_features_bits_mask);
 	ndev->mvdev.mlx_features = mlx_to_vritio_features(dev_features);
 	if (MLX5_CAP_DEV_VDPA_EMULATION(mvdev->mdev, virtio_version_1_0))
-		ndev->mvdev.mlx_features |= BIT(VIRTIO_F_VERSION_1);
-	ndev->mvdev.mlx_features |= BIT(VIRTIO_F_ACCESS_PLATFORM);
+		ndev->mvdev.mlx_features |= BIT_ULL(VIRTIO_F_VERSION_1);
+	ndev->mvdev.mlx_features |= BIT_ULL(VIRTIO_F_ACCESS_PLATFORM);
 	print_features(mvdev, ndev->mvdev.mlx_features, false);
 	return ndev->mvdev.mlx_features;
 }
 
 static int verify_min_features(struct mlx5_vdpa_dev *mvdev, u64 features)
 {
-	if (!(features & BIT(VIRTIO_F_ACCESS_PLATFORM)))
+	if (!(features & BIT_ULL(VIRTIO_F_ACCESS_PLATFORM)))
 		return -EOPNOTSUPP;
 
 	return 0;

base-commit: 8a7c3213db068135e816a6a517157de6443290d6
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821225018.940798-1-natechancellor%40gmail.com.
