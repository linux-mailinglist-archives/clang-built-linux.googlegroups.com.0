Return-Path: <clang-built-linux+bncBAABB5O6XCAAMGQEYHTB2CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9BC30207F
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 03:39:51 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id m21sf6371471qtp.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 Jan 2021 18:39:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611542390; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+MyNCgV5+NhpEVyp5b6ba42CqXF/+nNSqXqPI9Q/huq8kKICM5wtg0pNCkgT79CCA
         1a9JeH0GlvW46+kWd4CfUeryRpb08gcXC7RlxBT8pEWSK9DmVRLdoqJEJ/SQfAqQqBqE
         Cjgglmyy4paMC7Ohcu4i+U5wHb7S8Ij0kLm2xePb5bM8siWkft5YS9+k1SM9mx1CeZoV
         Y9vLyC8HWybdU/nhfO1GBjhgiCHbh1ex5rlWtOOuQBqn6ekyktqK9rC+Olc5HuNjahdv
         UcY0GSEo17+5CMoQChgUcWWpXnYmWzOtkVf2SKf53L5RPA5gH62dZgKG8IWTILpuRSAJ
         LU7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=8EX/FqkE/S8w1pfy7TiB3KFZ2hwISRvKsZ2FFiRC4AE=;
        b=viKMx/N7bqJtXDWxEw4N7gfWqx2e01qvTwUmXoOmQrSqfL6N4JJHDNj1tWEh3pKmlA
         60v5rDmisHfm/hoAQq7FJRkME1vCBun956AMYTArSs4JuntnW/JYD50jgg5UmI4vpVj8
         Skj2paIbEv6KTGXtmxx96fB+o2s6/UI0kdX3tA+X6v3YTbeG8qyrP5z8uYaRLbmBdVAI
         N4zVBJIT7dGlkQSiy7ZjAbY3W1A3TNQDGPd2JPhFc0xW5ktZQ0T6OdEJPQ+T0i63gSo9
         BnQLeq9ixvVSiixD/UqOjd3RNEtuxd0SmnSgvv4W80iwtbLP38Wr/ywi4Z5UE4RWVfWW
         QxBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8EX/FqkE/S8w1pfy7TiB3KFZ2hwISRvKsZ2FFiRC4AE=;
        b=Gh5Xw1J5AOoqpmeLusn6JxpfdHnlQ7ehZji5JetnUskKTXpay7FtJdPQs3vi0eUdfU
         fhYfOpb1w/CYSriT8YUzE5OuBx37mlQ9P5FcAsLAztWQ+uU9MPSS4FdabqnE1I0UwTle
         xb0cP9BkRuHZsJ86rSwyUamxrYnPnhbri/MY86MlugJb7VhN7otFmuRU9GmvkKKz0NAp
         JS1Jt5mZvBnuydQEEOPdN2+bQPhhBo9fxBdTbuv2A4AQSf2df5iICx9InzQAG282zWHR
         JzKjVzH/DSjsVeA22/uhOonMcG+oroVNtT4WDay0T4PEtI7fdgVMKpqKY/PaoMY21WRD
         0Uyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8EX/FqkE/S8w1pfy7TiB3KFZ2hwISRvKsZ2FFiRC4AE=;
        b=QgGCL5mOkdWjQb8Nq6bYmBDbWrH6yMtttBfBLzW3uBG47maGRkg4eqDLRq0kziazXf
         EzDaXyblbSMnIc+k8dLVabFcyPY/RH5+YizQCxgyI6JjbtEd6xCbPcRu80ULc4iIiRfy
         zRtf+3GpSoSUsdH+jFym/V89kB4xF9RKOO7wj+QFXOm/dosFsfI63Yn+zV+2Ykr0XuVR
         i/HRRoOL6sH/p4byryPACL2xYt6Pg28lMCvQKLOuM27ZYH3mVL4f5wqKGrJmyr4v7a48
         x6+RV5MPV4FOqymTOpBaLuEjUeV8HHpSHxopvDI//MgJxXsi4kZFkHIEdGn4bham3mtr
         5YPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kZ73UrHck7dEzmpSnwHIUvnuRAwpZjEAvMwI0Oa4helLdNyg5
	6qzA9CvKPc8sSGESuW3/TJI=
X-Google-Smtp-Source: ABdhPJzB94S8eTfYK0ACkerrWqwRqMjGAqx4BvdDFB5Ku3H02OiAGCgnrjH1U7xuqJxXrHqThtRIQw==
X-Received: by 2002:ac8:1009:: with SMTP id z9mr192492qti.347.1611542389885;
        Sun, 24 Jan 2021 18:39:49 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c001:: with SMTP id u1ls6044850qkk.1.gmail; Sun, 24 Jan
 2021 18:39:49 -0800 (PST)
X-Received: by 2002:a05:620a:530:: with SMTP id h16mr52648qkh.136.1611542389567;
        Sun, 24 Jan 2021 18:39:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611542389; cv=none;
        d=google.com; s=arc-20160816;
        b=euuq1baYeUVVHou33LQuwhDqHAmWew7cqrSoeulda/hzB2txK1g/kJGB03XmuRX8Va
         hWB8X631LqXzaotCF9iWS7I2YXKGetCx9HHzywWkI3/WOVXQnfkHHn9+LwjX5QUVAiYw
         pi7EsVxJTQYKPVFbiiH1Sa8ZojUhJ9YbGnit8EKJr8n7FbU6LcGXPpzduteTZe3RWHYX
         5j43gsev00rmXSRLjEEUJyYSDmQd2n3KZLiHKKt6DHI4/ZsfrUMnwtboF8DGGsRDCBCu
         OMRyK9cZfD9qQ/3NKv4Ngexk8Uu56H7DcGS5cJ3uyphwximvwTDGCSz217HmGJwVrwtx
         xAAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=saUZwi5UE0cvmE2w5FcMdr/GabhV3XAPlTb6nzYYMnI=;
        b=o7VsBmbEMG11cN9kpNgNSaoXuVwThjKxReeTLFbSWnqocpXlHvO5JxeMFq7dGUanA3
         QD1xo3byEkb3DuoVBEA83LpsSxNHLW2IB5HxbRCDk3OQ6ft0mOy6BHhQv6LuO3VkRiYw
         tO7u4zqb7QzIaDu/7tkYlH3L2+0ZQ96QGVhjji8RTD3VwoOMDzY7Yh87fOQe1qUHg8+O
         fE+2dli5ecfKqnt7n7nttKQk6hcK3+/Kc0xVTQYRgM94J9JIe7eTwHkhCgWwh8ttP+iB
         nE7ql5BS5GC2Mj9FV6HQuLDg8uxv/6bwjR0PfhcqyBG27e7winftH/hZ+zkOm8hC1B/x
         w/uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-57.freemail.mail.aliyun.com (out30-57.freemail.mail.aliyun.com. [115.124.30.57])
        by gmr-mx.google.com with ESMTPS id j40si456243qtk.2.2021.01.24.18.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Jan 2021 18:39:49 -0800 (PST)
Received-SPF: pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 115.124.30.57 as permitted sender) client-ip=115.124.30.57;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R201e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=abaci-bugfix@linux.alibaba.com;NM=1;PH=DS;RN=11;SR=0;TI=SMTPD_---0UMkOXxA_1611542382;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com fp:SMTPD_---0UMkOXxA_1611542382)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 25 Jan 2021 10:39:46 +0800
From: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
To: roopa@nvidia.com
Cc: nikolay@nvidia.com,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	bridge@lists.linux-foundation.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Subject: [PATCH] bridge: Use PTR_ERR_OR_ZERO instead if(IS_ERR(...)) + PTR_ERR
Date: Mon, 25 Jan 2021 10:39:41 +0800
Message-Id: <1611542381-91178-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: abaci-bugfix@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of abaci-bugfix@linux.alibaba.com designates
 115.124.30.57 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

coccicheck suggested using PTR_ERR_OR_ZERO() and looking at the code.

Fix the following coccicheck warnings:

./net/bridge/br_multicast.c:1295:7-13: WARNING: PTR_ERR_OR_ZERO can be
used.

Reported-by: Abaci <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
---
 net/bridge/br_multicast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 257ac4e..2229d10 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1292,7 +1292,7 @@ static int br_multicast_add_group(struct net_bridge *br,
 	pg = __br_multicast_add_group(br, port, group, src, filter_mode,
 				      igmpv2_mldv1, false);
 	/* NULL is considered valid for host joined groups */
-	err = IS_ERR(pg) ? PTR_ERR(pg) : 0;
+	err = PTR_ERR_OR_ZERO(pg);
 	spin_unlock(&br->multicast_lock);
 
 	return err;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611542381-91178-1-git-send-email-abaci-bugfix%40linux.alibaba.com.
