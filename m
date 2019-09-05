Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBG7YHVQKGQEUUWQNPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D01A983E
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 04:14:28 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id r187sf1423669wme.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 19:14:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567649668; cv=pass;
        d=google.com; s=arc-20160816;
        b=GtJpFRTnjWjU4xSqggrhmu2p13wtZzuD8YjaV989LHt9hx2u0ERRiF/JOhreGW+fC5
         1NMYVYLe7LlgxrLd4F8kiogRlMx+ndL4aT6ytLDrNQ6kM7H/KygNFZ7Ym+13bqAa4Hd2
         yxm3OQQurWKumUXoU8Z6W74YQiQA6kbB1JAnKQO0+rCJkE2+krSb45KJggZRIzN+1U74
         6+7CSWy69uLMKPO1aQZDsHKG0B5L9M+znkggMJ5wmUUV/pyGcbbft3NGBxhmtLxk+we+
         fYNYrOjYFBF/XCmzs5h5T62aWxUmaicStNndlQhuTD0qGlD0yiFI4mc9DIF/NLFG1+Ab
         0zcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=bJG+SS/jMe1D5vNyIsEhnzvNHMHGmDUg7iffLzfWQSM=;
        b=SNOo4QKRPMCAbrZpef9L2ylDruGQNcf/Mmc4zPOh9ctkuqlBJavvpsMWHuY8TplXvM
         GD5VyQWSIjozaigAyU9PiDSCVZ2nwnYA0oJKJ4B69ntU8SotW3XPLu7ofQk5sU4znwpg
         ARXf71yoxRjM6Qj63fKu05vnX318+wy1VifRS3QQJ6wK1PQRU4CmynIZmFXa/5DQ2JDm
         WHctQ0Qq2PX07PkxV0a7u3hUXcaRAZWad3wLUpVchrCIbGRd3bRdi5U/LtZgoeyEwHcf
         0LtFj9WrwC33uryPB9LAo8YDN4NjXSYdNybC+1QWFX82AimEEnDsjtWZbZRso6hhsbww
         rqaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TXmzWHfn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bJG+SS/jMe1D5vNyIsEhnzvNHMHGmDUg7iffLzfWQSM=;
        b=ECI15cfohxnBMKlGn8v3Kejnka4l/bAStdaelDRXieKd+vAJFhRlSTqe1FH1yJ2Gbj
         KtOPCx8CbVRXIjN0aj922QtVmMKmwc6CKdX6FlDL0KDdL0L2WhWpkshniqmFgCyRYxj/
         oaiv5aOCZV6EfGkNJfB8l88buvHknE5s5zyAQGmBZYUOBJnpacUoDaCEZuvaJd1bRY1g
         uLgDg8O5jrXBZwbu+4Bt2XGzPX0L9pu/fCa/CAo4YX5DomEjHMsumcOenlbBZ1kjSiLD
         PdXxIx3ds1iNG+WBrlU7jklGqGmv0SJnDRRGJ96VignHI+7jBFhwW0OtgX2evjOJnYYX
         sQZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bJG+SS/jMe1D5vNyIsEhnzvNHMHGmDUg7iffLzfWQSM=;
        b=bm7bTT3QRlhBQ+7+tsalK7VuWFMu+C7J5i4Yh2AZIDRZtFNX9F5fOkphqM+LT2wzpq
         2pZcOp3kKs5NZYl5NiisxE9UrUSV+UbpOzwiInFu9yeJeuJ3CnC/A2ncVxQkcU7JdIUj
         iThIpiHYRSSUNZetSalCyT+yoq2QA350mfJFJlibae9mcxhK8YT2FgeKdi+pX8nLMx+i
         85t2EuodQrf3CqHNEPYoB/in3OzD1iPokyc44zZWlIN/ILaRLvXpgaYQQG3uq8h1x8fF
         kVlHR0GTTsSyTdK8nfa3EZrA6rAYgQ4/ojVxnzYGVwi0xnTelWARvODGQGANrzTQjn7e
         y4Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bJG+SS/jMe1D5vNyIsEhnzvNHMHGmDUg7iffLzfWQSM=;
        b=qQFuxQfVrV/hO+bxw7tORVysEgRMSuReGa0cKijEdHDXtY7QckW1EsxDHU462iqRPy
         lSzaR0Ta4vZXQVok/81tbnzxTCV8LKsiempqeAqKNRIirTYrN+zVvxI99X1LEXNvIem5
         jz0cgzC3wbCySpo9Elp1LjybmDJuBIzjWcAme6vRfmHAlLPaz9f5Z+GxTmHGO0Cw/wh5
         G4hBOUZQuW9zaukow8B4SVxteQ6GVzPrdNkS7KpSyGJGm5P+sz0IxvA1Wr3nIO2U2lkP
         ewuH0cq3JNG/qV/HjK4ciWsiTY8D1M5zbApEh5pkACTMWsOksb6Bl44egqabaAbGZ/Z+
         9a5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGIbWjr7xfBLHk1JIwQojiAbr4WZflfdy7QNRnf2U+0hN6MZDU
	S+Kc/X/kfRe2vlldPs1dgDk=
X-Google-Smtp-Source: APXvYqwBGBHGHac3rvHJDATxwmqhK2JUVXq2X4cksv7I9Wgl0FtmxVgbbHicDmxCQ8kk0DXVFqoTfg==
X-Received: by 2002:a5d:4382:: with SMTP id i2mr468602wrq.297.1567649668162;
        Wed, 04 Sep 2019 19:14:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:63d0:: with SMTP id c16ls113919wrw.3.gmail; Wed, 04 Sep
 2019 19:14:27 -0700 (PDT)
X-Received: by 2002:a5d:4081:: with SMTP id o1mr486996wrp.41.1567649667762;
        Wed, 04 Sep 2019 19:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567649667; cv=none;
        d=google.com; s=arc-20160816;
        b=VevGU5aVo/OAdxisGWi+d7Vr/P6h7tiRuOsU542vlRty5lOfFZomoWnSd5xFAW+SA2
         K5FLLhJ2Lqk2ch6mB03ZTqaEF9hTMtObuysAUCP/1IZ0YQOqXdLn7BxOtTfkXhXR2FAG
         +UqpAK+J3YdLQk2WkgPIo2Aq0ipPqWqpyCBO5+j0SvXakzC9OYEg8FM4A4fNaxU2tqRx
         rwQ4c4UlJRzYw2SV9Gxp/KwUivBkCQFHuY8LOqxH3Yik6a2pzDR9B3cqOoEZgiCpiSrj
         XB4fGFo7zegpyWgTE2KqqkmrcPhYXUUSAJNtp7cKt4xWqoNnleSrI3FUCff3a1ijoCj9
         HQUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=X5134pBIdnytA6ZzcOXQhnJlea3uuUXNY6SHx+YSKfA=;
        b=PWd1x1sIk4y/UVqtRGVGdM742DPjcCPnia4UGXN8BPlIc2/iEpdDQI9UHzTjwbxS4K
         aWjyAx0sBjpPwXsOSj9n6j6tHyEkchMxdvf5ICBL948IMbCM3QhtvILUP1T+nYcTzYzO
         otOEMZc74Ctx6OlV9BSiC4DZToEYNRoANH5IzA7gd2iXADKx1NWsqaPhSn5gq/OrE10p
         PfuzyING4H3WjzG/JQyUqL8WvGAXx6AYZYhPZKVy/9uXQYrmwhHlzZP+LkuJjTv9lCOr
         Sid01nP9KVn7EIEZnjZsXOrF+rG5+aucPaDy6Y8XEkvh1kT9Zpj5vxyxbXRkhIkgPhqW
         35+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TXmzWHfn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x13si298446wmk.0.2019.09.04.19.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 19:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id t16so774107wra.6
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 19:14:27 -0700 (PDT)
X-Received: by 2002:a5d:574c:: with SMTP id q12mr455847wrw.69.1567649667300;
        Wed, 04 Sep 2019 19:14:27 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r18sm674127wmh.6.2019.09.04.19.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 19:14:26 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Saeed Mahameed <saeedm@mellanox.com>,
	Leon Romanovsky <leon@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] net/mlx5: Fix addr's type in mlx5dr_icm_dm
Date: Wed,  4 Sep 2019 19:14:15 -0700
Message-Id: <20190905021415.8936-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TXmzWHfn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang errors when CONFIG_PHYS_ADDR_T_64BIT is not set:

drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c:121:8:
error: incompatible pointer types passing 'u64 *' (aka 'unsigned long
long *') to parameter of type 'phys_addr_t *' (aka 'unsigned int *')
[-Werror,-Wincompatible-pointer-types]
                                   &icm_mr->dm.addr, &icm_mr->dm.obj_id);
                                   ^~~~~~~~~~~~~~~~
include/linux/mlx5/driver.h:1092:39: note: passing argument to parameter
'addr' here
                         u64 length, u16 uid, phys_addr_t *addr, u32 *obj_id);
                                                           ^
1 error generated.

Use phys_addr_t for addr's type in mlx5dr_icm_dm, which won't change
anything with 64-bit builds because phys_addr_t is u64 when
CONFIG_PHYS_ADDR_T_64BIT is set, which is always when CONFIG_64BIT is
set.

Fixes: 29cf8febd185 ("net/mlx5: DR, ICM pool memory allocator")
Link: https://github.com/ClangBuiltLinux/linux/issues/653
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c b/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c
index e76f61e7555e..913f1e5aaaf2 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c
@@ -53,7 +53,7 @@ struct mlx5dr_icm_pool {
 struct mlx5dr_icm_dm {
 	u32 obj_id;
 	enum mlx5_sw_icm_type type;
-	u64 addr;
+	phys_addr_t addr;
 	size_t length;
 };
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190905021415.8936-1-natechancellor%40gmail.com.
