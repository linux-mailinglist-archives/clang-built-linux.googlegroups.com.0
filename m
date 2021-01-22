Return-Path: <clang-built-linux+bncBAABBMVXVKAAMGQEZU45WEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDC32FFF31
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 10:32:36 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id r7sf3241359pjq.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 01:32:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611307954; cv=pass;
        d=google.com; s=arc-20160816;
        b=AB4mWjj8TNYGHDTZ4xVvajeGQE2twIhGesvIL/b/ndWZ/azgp0Vqst/9hlLa59rRXn
         if8VegNrB+PbouqF/wQSY03qQKxY5Ki+/3/qWnU6++dJ6+9DAO3f00g3+4IeVz8ULmri
         n0lX/Uy+SnHNB7s2bSKQhH/C+DJKbbiWrbmsX7HSm0aoKmUSVhEzo4ow9GjT+lt7TIN2
         k9cqLGnTvDyMPV0flGqmG7eYkda51K99AMu/f1+RH+dfJwuyAou6u5saX7Oodq4Yb9b0
         V8g3XDTh8yfi0vru+Lvo+hLQGUDpoSr6U30JnSuxzMZ8fqUkwbV49vhzSQP5UuOSK1su
         2X2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=MMe/iL5BoUH3juyCeguk0MXurjYsJGotI/FzEmaUW/Y=;
        b=heJjr/QvDJblPVOwIjhQsJrc8Kw6fPS4NCwc6rpioxus+zEMHBnR631UCplidRpMLl
         /mJTR1ZFWnz9ydwxeaK51XWmW2N0KFsEQsMJWyiwUwzvS5jfHMKy6rkdQ7PM1PEVh47q
         H3Oyj0ywvAXmLBIQxDKdBexLHBpJlmfMn8o3x2x1yBO08uIw8qslEIK09n8soYRZRVWa
         8rN90sQNdeyg+5i3Hnus2OIwBU9Iv01g6LW2XkEIrUXTe9E4sZ85JU0DEXvrFK2o7uey
         aFCxyaazYbClMYN/m1On9YY5f9JK3VzgQE0Px1izW8cw3WmTNAC1v+63RIE6ajwCKRkn
         FEpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MMe/iL5BoUH3juyCeguk0MXurjYsJGotI/FzEmaUW/Y=;
        b=oz6Ch5GavOHGpwmfLvLQ362yIOnFVzQ6qx3SNMNTS+7sQLQYeftAfYa5sx75XC8v4Z
         8KrCc6sMF91rDkMaN/KVu0Y+5dXsXw+thcBUqZ797MxX923ozQtK7qAoY2ayUAor+AMN
         e/pfJQ0DXJHl2zp9YkmKljvV29WL5O6HFVOYwfBEDZwDMihdna50dGX/5zhUPiW2r3vj
         E7JpPMiWkTsPSyEojz1stIpwoBS4NoijkUovIpR7VExRK0OZo9x2Obs9EF6YJ7beOytv
         U1tw0RdNaQndCw0MHnGcxHvheWjZvPRflxpQmurnf0HRVJvQpcCnnxSVrUkActlFLc6z
         FKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MMe/iL5BoUH3juyCeguk0MXurjYsJGotI/FzEmaUW/Y=;
        b=Mcq/GLdjiumzqiUQBM6pucpHhbeKWKJQTYu52wzuwoJFBwAuSWMuVVKn8TRkPee+2+
         ZNGZ4Vu0TBe2IwTQzdXotIczqd28//MXnDfdVtP5AFQCf0jvXDr+JKer+IjnR2c6Bdre
         aO+ONhsU8fr2ZR4eQPDozUvHYwg/iSwptG4ph/mYiJbHYZTdgq4r52OItYSAnJ2BL83y
         5hbXTOhbk5+g321ORsZrMAOeVs8MB3dXmN9/8mTgfm0Zc4S2gQFpfx+R3OO7Ac0EAiBH
         c7alYJT9w8osE3trLfIBZq80wyKFklz+qmwg2NrUbFsqcXtWB0FvYTNd+R6oWcqsaHAH
         wfJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JdaZ4pmuJ8BuwE6Ma/E8Pw6ix1mjaSrZtu13jGKvN0S4wVU0b
	cbBVmCvBAb4kvPB7bCHlzq8=
X-Google-Smtp-Source: ABdhPJwGGTvvH5sQ2Qzw9tNxX14eqX4ibOxZhtWn2xgZqPAEyb1TYC4+ogJL52d6xp5AtvDWcRSWdA==
X-Received: by 2002:a17:90b:b07:: with SMTP id bf7mr4338678pjb.195.1611307954673;
        Fri, 22 Jan 2021 01:32:34 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7047:: with SMTP id h7ls257973plt.8.gmail; Fri, 22
 Jan 2021 01:32:34 -0800 (PST)
X-Received: by 2002:a17:902:834a:b029:de:343e:adb0 with SMTP id z10-20020a170902834ab02900de343eadb0mr3858412pln.28.1611307954025;
        Fri, 22 Jan 2021 01:32:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611307954; cv=none;
        d=google.com; s=arc-20160816;
        b=cS29/eCaOKubxBeZua6b3VThXxPHuSsfdpgzyssArLhWIOg9I/EuBX3DuhaKBay7Mv
         VRT4C8Gu86LGiNv7rT9coJdWpPMg+AUj+HpZjyNhSVR/FX6hcO4UAhaJ5DjJ7/pyzjTi
         f/8DVIUwuw9XCuHW5HILPIKEgHpLBG10dBNqrg2Yxa0lRtIuLoQQQ9u00GW38V5fbZqX
         qyPY5j6b0gv3e2aiOgTv0O9spCX4CpwpU5BoYCkAuPvbAEUW7BZ2rkXH+sWpZurfGQ21
         dlkWy5doT+0heaKVOSmQcrzh0EDy/OJJDRTcpYapViBEHMMzsXX/McFqnVydd1UNijVT
         GTyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=saUZwi5UE0cvmE2w5FcMdr/GabhV3XAPlTb6nzYYMnI=;
        b=GGMNL1IfCtQ4V5y5APUCazOyO3ejWQcDOG7WM/eatwf51XELp/FMNV31XVcvlodg7j
         +40QNDd0TWShO+oZz2XoDW1InLRzUxh73gbdXSufg/6iM7/gfwcATvG1Sn7irVKK6s7r
         HBhCl/RHhUZYS+zPBToAIgOt1fpzkZPSTHqJpQo/2S4AKjLaqXutx/4lcgHurTS0F6gQ
         8MxpgtDvZKOXzzL6MSbT2KzVJXaYcxdxt3t0PdreFXaSO7IIH1B/oyxnMogZRowGJ4J5
         BSsu1Mjbyom+XZ10rq5ebgMoFuVuUKXiCVqeNjlmEigraoFD/pUtOVp8dDUKQa0ZjyRe
         ueyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id i12si384904plt.3.2021.01.22.01.32.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 01:32:33 -0800 (PST)
Received-SPF: pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R181e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=abaci-bugfix@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UMVZgVS_1611307935;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com fp:SMTPD_---0UMVZgVS_1611307935)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 22 Jan 2021 17:32:19 +0800
From: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
To: roopa@nvidia.com
Cc: nikolay@nvidia.com,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Subject: [PATCH] bridge: Use PTR_ERR_OR_ZERO instead if(IS_ERR(...)) + PTR_ERR
Date: Fri, 22 Jan 2021 17:32:13 +0800
Message-Id: <1611307933-115887-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: abaci-bugfix@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of abaci-bugfix@linux.alibaba.com designates 47.88.44.36
 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611307933-115887-1-git-send-email-abaci-bugfix%40linux.alibaba.com.
