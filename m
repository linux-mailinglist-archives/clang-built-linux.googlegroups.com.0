Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPOSYHVQKGQEZAODXJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 877D0A981C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 03:47:41 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id n5sf127649lfi.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 18:47:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567648061; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJ4u01hi80w4b/J9LcWFMD6HXCf8TdvLcfYtDdmdjvDpGcL0/bfpJtRbZ5pNVVZu1S
         uNh3DOIKSKSwZ609eRtzyn76hJqutxYbVdHxpDGg7DkkPBt7EnIGUyXnobIkneT8VxK2
         wUX417uQDltQq/tti9QbOCuo0UG954rfqYO/JW4teDadrUFBg+lzYywGb6UAD6pEm8JD
         UAefZa/2tHp0Sh879CO/Sc5tCwXyAxn1pT5/0QNyWOM1LSpjKjC2wldOifCdH9DzP/FR
         uSpzB03N2Oy0cGi51EGjHcG0VOjWhb9IYUOGrGmRiHm9YKTP/ywcu7PMV9QRJuv20BdR
         GOnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=umTkvXa1CB+EHsyVngNu/7Hf0A0rJUyGIPwbQNhEwMw=;
        b=gQ/Ukx5pMIxoWZNdkIG1Jmj4pxLGmWwESPhXRRHkCALq2aMNhJvbJGQGw2hc5LGUWM
         IxK35eidRvxCzZaZN1oe7xnACi8SXrt5iW6co2xG3SQ8o+zAtbp/t81IArkaRJBJXrwG
         xRcCrLYnZyMOdIcFjgQhRx10Y9pQom+s1yXpe1Rot+RjMzxLyMS+yxjHxToNj9XMPYk/
         GoHdDHHE3PtrF7bPDzSzQ7bLasUgAMrN1ZyFQJyxb3V7qnaqLddYqLZzV3dzKVgZ/AGW
         +A9ZSRGirbCqPn0ZtUwBKJgGnKQAI8pUOf0myd75tCrIhji/DILI+RMrG2SB8e+ZNKR/
         ODcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=esUmt9b0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umTkvXa1CB+EHsyVngNu/7Hf0A0rJUyGIPwbQNhEwMw=;
        b=hsBdSypPtgpzLQuQWdib7CoaF7IH2a+BsivMcGxvpFh3ZhxaQsE6C3KR4WiLeOGPwu
         38TjLZKn9hl1Fu6E0lOAjtgPj8MLpab+A2K+jV4XJQIcT897joTRo9UFq7Y1LDfzG0cD
         ukzyJpSFKzRCE6P9NiJ0zmuVJACGod/SlaUTerXeME1u5CJXV4m8yMFbCQEmNiMV9Vlo
         acy35yU11YoNwuLZyXcFtm74XCAegaa5o4t0jQdl4aK+Yh4Auzmy2GGASUrD6TWpQWCk
         410XjqZglp+ETvki0XYqw3lDzdEImdNWUl7zWUyYJouYsPQn0mL2qMMjd7jQb7Xr1drw
         LWeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=umTkvXa1CB+EHsyVngNu/7Hf0A0rJUyGIPwbQNhEwMw=;
        b=S+658UZFyR0VUnmbJ1zmhXJMn1YU5U+2oEOSsA7NtGgaotRCaFr/Wi7r0cpSXLF/37
         wShyJ64Ydz+fv6zdzZBC5RkuQjDuI26UGHXIu0Xv5TanvWU1EfM2HJaJzHSmDmctHSd3
         Bb6k802tBbd59kpvrRHhIXXL7Lf9+U3CPF5vVT0u85Rgj0mOB07Q6lYMsMM4jx/yPkfZ
         QH3XzmzQC/uPRkXlkuPoXTf9M90OvuFQRX/vcsLSZetQhnHYRVHDsnUSlaMiq+9+k5j2
         pLjSz1Wdn9yy/Qd4mBu/tukeTJDWDDKP5XChxMM8kyrjubzg2zWnZ2a3KNgnwJEBJby0
         UiLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=umTkvXa1CB+EHsyVngNu/7Hf0A0rJUyGIPwbQNhEwMw=;
        b=OOZ63zszFZHHsxz/K47seCvAIeZ/5o3KTohPMDf4zFHXk1iXoQyYPVMy5fOw1U9tF5
         JvciZfXWB9/gGgrDkhyGVyMPe2b77k5L2mPlDRwygYCFSVUQHz1mC/tnAu0qk8B2TErn
         MF/NT7rk0ESYctTEi0OxnDKA70pyqV3hDXrvlAk28Pk042xm3ndcjavTnHxR0TXppUe4
         x+L1ZUjHEGAZWTL4P9cuHUiX+F8yIrA7KzRXRu/Ek56xAHkFi7vPqguWZ8xI8UNWpHGM
         LxqtiMIYWFBAgcZWqB3ECs8fG1jDgm7oEZWtl+dw4U20BLxSzvLRXTOb3afz8zuQFr+H
         AFHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPbrn+pz2dUhkOGKU+/ngokHrBDgOCHzq6gMBKRBUsrexUHdA4
	qWsAD33PoJtjAMBKqnkT/+4=
X-Google-Smtp-Source: APXvYqzXWe9QeskIplp2DQDnZIdAB66+HzicAl4G9z71D7lq2sMnel8a23wxoF996FeWOVGHp/5NmA==
X-Received: by 2002:a2e:8814:: with SMTP id x20mr319403ljh.221.1567648061129;
        Wed, 04 Sep 2019 18:47:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:54aa:: with SMTP id w10ls66325lfk.10.gmail; Wed, 04 Sep
 2019 18:47:40 -0700 (PDT)
X-Received: by 2002:ac2:52b8:: with SMTP id r24mr622425lfm.131.1567648060713;
        Wed, 04 Sep 2019 18:47:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567648060; cv=none;
        d=google.com; s=arc-20160816;
        b=mQ5n/9XP9199y28Cb7I4m+vAgkBnt/9uwocTzE8QU0zNSvVMj2jqezGXsXQa06G2h4
         RDh6KZYkCK7+K/buKIdW6zWo/qHXtIF7KMIkp50ij93mlC5esjQpnM6OD2xfqMSVAKa8
         Z991+7v6s4A8fPwt9TrI5GYgYpgdCdQO7Rdhb5i1unmWDgUB+o9Ix9Zrz1FieVxma2kR
         e2RiCAqYHoQ+pFKRdj1lyOJhtKCEkHxFxq6Bn/sTp84LiEyFAiLo+dx9obNK/KGPgq1/
         Aje8428lnF/MJUTUgLKczmz2gyh2clV6n4b6ht1Np0ABl82lu510sgmCySyp6naaB65a
         vE6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3fEmvX2c1XkJUmAyhbV7F+bK25TJga6/ywCtOVMKmMA=;
        b=lyPrzbb9ISgs5fFBh8/yCz2E8blTrX5agIjuCzzyQx+0eGlXX1R2BE0vYYFo/D9qpi
         xck4CzBhJcV1FVhMVbe+2RDUu9vIdx9Rf1CD19YtnoyB5mr19uAFR9zW876zY1yqnkSB
         qWX5CkQqwfrvKHPaOg5ZVF27+diPFSAH71L4za5xKBkOxJEIRelrPqCLjWGM7spOP53r
         PJ6w/TTz4WoTRtosKAyHImt/wVUUR3L9lKFZhnH6Ki332XrVIyJ1y1e6QWtlRBtoiS2y
         NorbeM5tToOIY4rRFTl63TZQDQHLVd8aFFkbfOfvRzA4/gS6cQVLp1MAMUuXPELQUogP
         rKnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=esUmt9b0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d3si28725lfq.1.2019.09.04.18.47.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 18:47:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q14so721577wrm.9
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 18:47:40 -0700 (PDT)
X-Received: by 2002:adf:de8a:: with SMTP id w10mr377490wrl.276.1567648060012;
        Wed, 04 Sep 2019 18:47:40 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id v7sm507565wru.87.2019.09.04.18.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 18:47:39 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Saeed Mahameed <saeedm@mellanox.com>,
	Leon Romanovsky <leon@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] net/mlx5: Fix rt's type in dr_action_create_reformat_action
Date: Wed,  4 Sep 2019 18:47:33 -0700
Message-Id: <20190905014733.17564-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=esUmt9b0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang warns:

drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1080:9:
warning: implicit conversion from enumeration type 'enum
mlx5_reformat_ctx_type' to different enumeration type 'enum
mlx5dr_action_type' [-Wenum-conversion]
                        rt = MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL;
                           ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1082:9:
warning: implicit conversion from enumeration type 'enum
mlx5_reformat_ctx_type' to different enumeration type 'enum
mlx5dr_action_type' [-Wenum-conversion]
                        rt = MLX5_REFORMAT_TYPE_L2_TO_L3_TUNNEL;
                           ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1084:51:
warning: implicit conversion from enumeration type 'enum
mlx5dr_action_type' to different enumeration type 'enum
mlx5_reformat_ctx_type' [-Wenum-conversion]
                ret = mlx5dr_cmd_create_reformat_ctx(dmn->mdev, rt, data_sz, data,
                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~            ^~
3 warnings generated.

Use the right type for rt, which is mlx5_reformat_ctx_type so there are
no warnings about mismatched types.

Fixes: 9db810ed2d37 ("net/mlx5: DR, Expose steering action functionality")
Link: https://github.com/ClangBuiltLinux/linux/issues/652
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c b/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c
index a02f87f85c17..7d81a7735de5 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c
@@ -1074,7 +1074,7 @@ dr_action_create_reformat_action(struct mlx5dr_domain *dmn,
 	case DR_ACTION_TYP_L2_TO_TNL_L2:
 	case DR_ACTION_TYP_L2_TO_TNL_L3:
 	{
-		enum mlx5dr_action_type rt;
+		enum mlx5_reformat_ctx_type rt;
 
 		if (action->action_type == DR_ACTION_TYP_L2_TO_TNL_L2)
 			rt = MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL;
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190905014733.17564-1-natechancellor%40gmail.com.
