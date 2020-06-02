Return-Path: <clang-built-linux+bncBAABB74L3H3AKGQEX4HBJYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8E41EBBAA
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 14:28:48 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id n7sf16561075ybh.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 05:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591100927; cv=pass;
        d=google.com; s=arc-20160816;
        b=xR8rmVsMqo9h3y8lwKsnvjiTy9FK4Tmlrne4TpBZ3ODzT/SEvqLkYEBvWuY4rkzezD
         Q5kWL1jyhki7RzK5BejlnjInHmf+egMVWwH4etn4HvpKcRFhHsRHipoXFX5ZX137qD9X
         PdWNndLlbMUybYdrZ9CdL0I6WlRk884JX/K1/DIucAsL0MgTT5ZwJ/epqPGwgm9WEghr
         9Ec1VrnTp0HwDjbM+o3Euz/c5yZHA9UT0E30erhhuzkdasP3mfUKFLd7IgiWKtsFqDSl
         yO5nvdghhdZZHj1jin5ZaXGTEk0wZDUWmun6eWfnHKCimXdrSBf17rpOJlCO+9x1N9t8
         fi6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CA3P/7gqlrYGRgxy14WM3MkQqBhx58StBwZJtYm7XH0=;
        b=H62BYRWBT2aamzyo0xgx9QAPtFEqkQ/yf9ob007y6lw+/MmSRn1zLB+xQSjv4XPsup
         AoPbVxALiguqXWmSg+YU3W8zDy/yox7b4KV+Q4y3G6c0r/lRwIqY2MNRNp6pJT7Rc/kx
         r9zfTjwiMzl6oKAspcXbtB3/gLDrONefrYh2sFvvhcun2500tfxiEeoM3LecVK8JxwoG
         STKKnJpoQdHLmeVGVRzc8Ow3sHCg90HPlcaHZp7+r7IZXVPHvFo+VsadEQYFHCblxzQB
         kYmmpzf7h9WZIyKWLrXwUOQbyUs7VbU+HalubR3qJoFnxlT28xh+to94CvMcQLXPq16H
         aCbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=om9nHtQZ;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CA3P/7gqlrYGRgxy14WM3MkQqBhx58StBwZJtYm7XH0=;
        b=SEurDJJpf/kYUqy9hzaWtDbzPJ4AojFYVq7ZLaGU3ikcgxnPAlBXPvPC3iacDtMMwK
         So4A+P0/JldvIqr+0jwzRBOicofXXxMg7WDAEViVkue7pfAojdR6TwwT2wesS8mFZxVl
         f80g9mWJuefBz9AXCYS9eE2ZMKALp84ARtCSJfQoutp/3w0H1Wxe30SddUycTxCXWywC
         3MoNqcqCoRvPPHRa4n533MrANwj/Q7NSsjveyTxkoftcyVp5jTgGgpVXjrQPc5dszirr
         CaiuRMJf7W5+DVxMTXl5c/vfsdVu71nUVxX1KH1v3jmgqeEjZn3+wtCKV088AGW7eERO
         uVZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CA3P/7gqlrYGRgxy14WM3MkQqBhx58StBwZJtYm7XH0=;
        b=CMF2glmbpZh3HZrim4s6fhgjjoiTwsmSTMBvmxEn1ZU9/Ql7NRGh+xK5oms2pgSLjp
         Nhj/iqCI4zFhvap+aTHOkn30lCS67LOc9UeILSXy8VeqJx2W4oIi7ELDyAwaZwwM326Z
         lubf6PzvBOxTWuIzX2qVcCAHW+tc1Z38fUsBRIxvJ38bcJeDzx2aHnaHkZrbjHoLm70I
         EdJ6ivSzTcjeI4t1Dw5FUhwe6w4Vu1kXrD6ISGsfsG77TUZsNbO7Tv25bDYRH73JhYvW
         wvoQkUjrESfc1IcfVMzlpLjps8PlXbbOZE/+lETptAUv5+LDsnZGMgBNVYzTYnvAmBh2
         USQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iaItL2L020C941pRiLvJAIlZ3/atB95xOiEF2l+iq7CBOwz4D
	MdGoz6xak7Ovk14c6YG0w98=
X-Google-Smtp-Source: ABdhPJyd6fiOiXIr/mt35jvyz+s6x2LAc/1oWb8T+gMpEbXGE0uxnzcJFvN6EYyoQM8JGDK2JPMUQQ==
X-Received: by 2002:a25:6ad5:: with SMTP id f204mr38551640ybc.147.1591100927400;
        Tue, 02 Jun 2020 05:28:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f817:: with SMTP id u23ls1730660ybd.10.gmail; Tue, 02
 Jun 2020 05:28:47 -0700 (PDT)
X-Received: by 2002:a25:bd47:: with SMTP id p7mr31977704ybm.39.1591100927108;
        Tue, 02 Jun 2020 05:28:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591100927; cv=none;
        d=google.com; s=arc-20160816;
        b=L62MNK1+CTqx39UyIHUYFZKZW4BEc7VV9PxIByV3di2DHYCiN4bw5PMYDMoIPRO2O/
         NW2lasiVrFWAQmNCk32I39yjMJe0L0L/TnjciB5DPqXS+YgX6ph5JZvnx1cQSnHenNBc
         UKg/1O4DOH+zWaz2U9nbHpWIlcJAigIMqBQ9HEOAPb/Tgv+788dPMHjZsqP47zrjdUei
         SKIJfk/CTxwOYi7RkqwQOp6xs5fcTMYFJfPMf6YDWE0HS/UHOUP401sMZ8FkshBVyuIU
         pADjJZ0CqmNf8zi/NBAJZJ4ahlMGwAuL48u9B+nO0PBfIiAByb/N7wpWIexWzKKMM4ig
         fabg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=u8zizRHMVdFP/fUqBAqm5khZQmWWRCFffWY63+gn5Gc=;
        b=Qutm9++Q5o6eI/zaMsXw6GCcFKjtgkuWg/0XZ+OPeJ2kMXePGzvVqzCLEWHChehdHa
         i2+JVRKK+sxRCRkuW6QQuOUvBpBLjPmOW/bhesbyEsstT1QoPCejr3KWg23j1ygA3h4l
         oDola+rujaUdalWy88aeOkm/4wwdYLOozw2TJ3+zKU2smek2r3qReKgsDUVnAfa4Kbzn
         0vU0XvDUifkSX71CR8jn2PTDvo1Yo7VRq8v90ooOwDhupn9HfVaxlLhixrEI8GwBj5at
         WAP+QV9dwjurtWtGhboOky3IjFoqpkNqTkEusHK8ImkCsYRXh+z8OqpVS7PYf54MzEkh
         eFYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=om9nHtQZ;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s63si195959yba.2.2020.06.02.05.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2020 05:28:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [213.57.247.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5A97D2053B;
	Tue,  2 Jun 2020 12:28:45 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Leon Romanovsky <leonro@mellanox.com>,
	clang-built-linux@googlegroups.com,
	linux-rdma@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	netdev@vger.kernel.org,
	Saeed Mahameed <saeedm@mellanox.com>,
	Vu Pham <vuhuong@mellanox.com>
Subject: [PATCH net] net/mlx5: Don't fail driver on failure to create debugfs
Date: Tue,  2 Jun 2020 15:28:37 +0300
Message-Id: <20200602122837.161519-1-leon@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=om9nHtQZ;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Leon Romanovsky <leonro@mellanox.com>

Clang warns:

drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:6: warning: variable
'err' is used uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!priv->dbg_root) {
            ^~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/main.c:1303:9: note:
uninitialized use occurs here
        return err;
               ^~~
drivers/net/ethernet/mellanox/mlx5/core/main.c:1278:2: note: remove the
'if' if its condition is always false
        if (!priv->dbg_root) {
        ^~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/main.c:1259:9: note: initialize
the variable 'err' to silence this warning
        int err;
               ^
                = 0
1 warning generated.

The check of returned value of debugfs_create_dir() is wrong because
by the design debugfs failures should never fail the driver and the
check itself was wrong too. The kernel compiled without CONFIG_DEBUG_FS
will return ERR_PTR(-ENODEV) and not NULL as expected.

Fixes: 11f3b84d7068 ("net/mlx5: Split mdev init and pci init")
Link: https://github.com/ClangBuiltLinux/linux/issues/1042
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
Original discussion:
https://lore.kernel.org/lkml/20200530055447.1028004-1-natechancellor@gmail.com
---
 drivers/net/ethernet/mellanox/mlx5/core/main.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/main.c b/drivers/net/ethernet/mellanox/mlx5/core/main.c
index df46b1fce3a7..110e8d277d15 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/main.c
@@ -1275,11 +1275,6 @@ static int mlx5_mdev_init(struct mlx5_core_dev *dev, int profile_idx)

 	priv->dbg_root = debugfs_create_dir(dev_name(dev->device),
 					    mlx5_debugfs_root);
-	if (!priv->dbg_root) {
-		dev_err(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
-		goto err_dbg_root;
-	}
-
 	err = mlx5_health_init(dev);
 	if (err)
 		goto err_health_init;
--
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602122837.161519-1-leon%40kernel.org.
