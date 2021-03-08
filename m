Return-Path: <clang-built-linux+bncBAABBRUHTGBAMGQEFLZD6DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 58459331241
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 16:33:27 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id k4sf8207354qtd.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 07:33:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615217606; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1WAEka2TVg4wSvbn9FiLsGwh3SKAGF/v2Sk3V4HwdvpKBRXdNtCiAI5hAdRNZUEl9
         ElZV9+AbUpoHz1uprXaZ2pZB58pHHxTiRhG7D9IcX0uoc0sr3GQ63KnHdzq3gs2vY8iA
         Owke3/mc2SucXhx7m5QuMyZhMdImnnMWhx4kottyEb0SYg3QSCi7DzWH27Wqzw3bVLuy
         9oeH/xR+6nWuxs+ox8YDnsemZq5jSYc5nIQsrQUAkjhfPx9WopHRE+QpNQzsBYE4FJaW
         D8MjRsezAAfUScnJNGWDLOXF4ELjB9aZ/9cEmheZGklJfNMwERixgGH2DfhaoQw+r1Y6
         VF/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=w3pE5tuTEoDXKxo67Vhtm/M/rKntF7/iLdnFNxS7UbM=;
        b=lgM8eh+jzOoHUN3ohvDz8AojdfDJEayDBne2O65GChWk+vcpUxKFRLaiBMf2Lbl77t
         LL41GpzYV1ByzNFNjKnCskeZiOPOsU+CClRKVJmi/BuULEHeiskOiYe6f2PrxQ9zov+V
         9KinU6jYNYLyCZNy+xUhqHLrTONXHRZXPa25VDrt7QGi8eKBkFaNqT50XJqfGy3hMm8V
         c1pYrDh6yN70jUJ6WO8QG3IfnAWU9jc6lUQCxXzfIJ2uL0LNOOyt7/sVp9BQ2GLF05Sq
         g7WrdHnBIV2VeC0YLnF3zDt7nAtNyCKGanY2MtW3F/38rG0zqeOM9e27PjKpnjaVMuxB
         LMuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=q7OA0wqv;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w3pE5tuTEoDXKxo67Vhtm/M/rKntF7/iLdnFNxS7UbM=;
        b=P6NZ8TBd4jfKwlcUm+uKMZMl8i8mEwb3KON4K/nXdZWIUYUsQaTRFWlooLlzLPk5Rp
         B6gSKugpkaN5pzmt0H+4D5hIEoakjzwoc920EfYhTn5XIUFErHSQ+ydajl4OwUkRjOkT
         Aocaun69KOz82JvCR0nfhOFTbhCx1vtJRzTIxziwTxo8f027ip/3UBDk+cbEXDS4GiE+
         5hHP6aU0IO2aOjrEwIYLZJY3OV5nO0a3nvwPs6odEsYeHV2LLD/KtkbXc87IlpytQClo
         saaKsRpAin75QPVC5uRZ7rNbzTWvr39ctbr4QOy4ngKj0bH+pnp8qkWDV/SDAmmW3a5P
         A6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w3pE5tuTEoDXKxo67Vhtm/M/rKntF7/iLdnFNxS7UbM=;
        b=XMyEaV6FVDkHWWsWEBIu/zUtOtOxZB6WZyWjVV7WdEoxzx+Rw/54T5GlVO1YsNN96S
         L6quJgudyoVRYgKAW0KbmKINOgIFDI9zoZ0Va3Q9KF+t582EQRYGf86rBA5NtObufTMQ
         zJipxP3ow6y55CaTmCnQmXKRmNffe9FDFcfWEZGuKIueU3Og31Er4K4kTUlPJmSZxjZv
         MzBlgPfTBaixbn981nrL/hma2ULxEu6A7jS9KAazKT0ZS9USwPRWrdHiCVpVaPx/zq0g
         4zw7KdO3cfJVHve9smkwiuSxjb8N8TZrYCwAgnVSZBDD2URIaCM9A34drdL84VL9v4FU
         UMfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530papZHMmuLp2+KziqvqjRbYivURrGPM0T04Pj6EKfht1WJ0BWu
	AxLblxOzI5jjeAyd02nTCfs=
X-Google-Smtp-Source: ABdhPJwec5d5iV6hDT5tvwZGK6NMMF0epgJQSvyPYR5YJ5HXEc3ycMho9qBqGZuvQnb/IQ0O1mEjXQ==
X-Received: by 2002:a05:622a:3ca:: with SMTP id k10mr21360312qtx.270.1615217606285;
        Mon, 08 Mar 2021 07:33:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f97:: with SMTP id b23ls8953583qkn.0.gmail; Mon, 08
 Mar 2021 07:33:25 -0800 (PST)
X-Received: by 2002:a37:9286:: with SMTP id u128mr20960317qkd.135.1615217605870;
        Mon, 08 Mar 2021 07:33:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615217605; cv=none;
        d=google.com; s=arc-20160816;
        b=RDxFOtGTz1puW/O3GR/qmNV2NJIdOl6UfsycFsYGHCrT/TRkxN02m+/QFtLBQ8ur5v
         ISzBYwGLp5IfJU93YtPWvDqMghymQanjFSCd2yRvNah3X+vNnf2xFUobeY0GG/3IJtx/
         0DV8M4tJSdO9pIARF+3DZEEpZfRG/bmzhFqVHvvNffgXaJelWrf0EHgken4X3uDpeNbq
         yv5+q9nedwNto7B6GJbErlsmBGMwdmAW9AHhRkoDpIl1r3w6YiLzbnj1bkZny+RpFVhh
         dwzP4XC63i8D4uRkBpK+RJUZYdILuj0evJFIfEWeEfeerFeomQtzVG+4hzG7v7xqR5no
         sIAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=SePTOUIaft+zg1MNYoy4Xc//qwPIW8fEP7yX5DwQZLU=;
        b=mS9wJlMch8Adoh4RxZfxEqjckaYvRDnHGTV6msSP6wQcCInm62XYu8xc54x7KE9ISp
         AfczxqhxTW0YwZa73KeEyThQzcHsfSZUAHvOOCTITA+e/VRDpFCU2SmD09DKLC2jvyy0
         g2vAUYuawW8BOJb6NlhQNiLRHogP4CgJr4RO6w4imtNi79lNB6FB7Ds6QmaFj6tbv5l3
         g9jYv7wl+x8a+8MjPtTLmv3hbrsFfv20Tk8ZItNBW4JDJ6he9V186PIoG6rRICczi/3w
         nZawkh3aokCmZTlxH7VI7cTkH/K4Wu4V6l/BXi7Gv9WEx7I9waWKAk1TK7ojUXzcg/5c
         5sgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=q7OA0wqv;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si635559qko.3.2021.03.08.07.33.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Mar 2021 07:33:25 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F28D56526A;
	Mon,  8 Mar 2021 15:33:20 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Saeed Mahameed <saeedm@nvidia.com>,
	Leon Romanovsky <leon@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Tariq Toukan <tariqt@nvidia.com>,
	Noam Stolero <noams@nvidia.com>,
	Tal Gilboa <talgi@nvidia.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Roi Dayan <roid@nvidia.com>,
	Vlad Buslov <vladbu@nvidia.com>,
	Paul Blakey <paulb@nvidia.com>,
	Oz Shlomo <ozsh@mellanox.com>,
	Eli Cohen <eli@mellanox.com>,
	Ariel Levkovich <lariel@nvidia.com>,
	Maor Dickman <maord@nvidia.com>,
	Tariq Toukan <tariqt@mellanox.com>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] net/mlx5e: allocate 'indirection_rqt' buffer dynamically
Date: Mon,  8 Mar 2021 16:32:57 +0100
Message-Id: <20210308153318.2486939-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=q7OA0wqv;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

From: Arnd Bergmann <arnd@arndb.de>

Increasing the size of the indirection_rqt array from 128 to 256 bytes
pushed the stack usage of the mlx5e_hairpin_fill_rqt_rqns() function
over the warning limit when building with clang and CONFIG_KASAN:

drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:970:1: error: stack frame size of 1180 bytes in function 'mlx5e_tc_add_nic_flow' [-Werror,-Wframe-larger-than=]

Using dynamic allocation here is safe because the caller does the
same, and it reduces the stack usage of the function to just a few
bytes.

Fixes: 1dd55ba2fb70 ("net/mlx5e: Increase indirection RQ table size to 256")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/mellanox/mlx5/core/en_tc.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
index 0da69b98f38f..66f98618dc13 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
@@ -445,12 +445,16 @@ static void mlx5e_hairpin_destroy_transport(struct mlx5e_hairpin *hp)
 	mlx5_core_dealloc_transport_domain(hp->func_mdev, hp->tdn);
 }
 
-static void mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp, void *rqtc)
+static int mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp, void *rqtc)
 {
-	u32 indirection_rqt[MLX5E_INDIR_RQT_SIZE], rqn;
+	u32 *indirection_rqt, rqn;
 	struct mlx5e_priv *priv = hp->func_priv;
 	int i, ix, sz = MLX5E_INDIR_RQT_SIZE;
 
+	indirection_rqt = kzalloc(sz, GFP_KERNEL);
+	if (!indirection_rqt)
+		return -ENOMEM;
+
 	mlx5e_build_default_indir_rqt(indirection_rqt, sz,
 				      hp->num_channels);
 
@@ -462,6 +466,9 @@ static void mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp, void *rqtc)
 		rqn = hp->pair->rqn[ix];
 		MLX5_SET(rqtc, rqtc, rq_num[i], rqn);
 	}
+
+	kfree(indirection_rqt);
+	return 0;
 }
 
 static int mlx5e_hairpin_create_indirect_rqt(struct mlx5e_hairpin *hp)
@@ -482,12 +489,15 @@ static int mlx5e_hairpin_create_indirect_rqt(struct mlx5e_hairpin *hp)
 	MLX5_SET(rqtc, rqtc, rqt_actual_size, sz);
 	MLX5_SET(rqtc, rqtc, rqt_max_size, sz);
 
-	mlx5e_hairpin_fill_rqt_rqns(hp, rqtc);
+	err = mlx5e_hairpin_fill_rqt_rqns(hp, rqtc);
+	if (err)
+		goto out;
 
 	err = mlx5_core_create_rqt(mdev, in, inlen, &hp->indir_rqt.rqtn);
 	if (!err)
 		hp->indir_rqt.enabled = true;
 
+out:
 	kvfree(in);
 	return err;
 }
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210308153318.2486939-1-arnd%40kernel.org.
