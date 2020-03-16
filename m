Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA6GX7ZQKGQEDKN5DEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id E148418741C
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 21:35:16 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id n9sf11081360qkh.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 13:35:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584390916; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8C87A96VZSE/BLaWUMhWMMXtfqKExn9olVFSejMKLPg0SCAvA2su7NDvpbxAHxfmU
         auNXogKvJccPMrN8qpnaJSzAI4sLS85fLV0fEZjfaZl+NFEHXRvnE60Djd+d0yMy4lEa
         NGA6gWjg/Cu8tDcM9mJtNQy/P6Lz76P/Bdw8BlNTZA5qD2MRx1L9Y0NGi7kK7qCCeQv+
         zcGlwmvRuWNFn2HySLGoO38uecpnepxBdmAhMnqwoHzgQaO+FxrnzYrwVvMHdoXdZQy1
         LZLoS6L1Ysm7rfG73PRwTuN85VkaUFR6Np2oRENdPKbaRW0dvipNP0F8W8kkvt603P2v
         OhLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=mpLB39w3arwSWfef4qFZwuQE2sO9TF/A/nRVUtnS0Xw=;
        b=MeO0h7RX0A4UXbjyujgJtmiM1hrtJ2Xku54PvhvpObsHs6paxWyx16bSncb6U4NARv
         EvV2bWbQTKnYAAtHym5XD0klxwHu8m7ANLjgEFkpC5IiSyeq7Vs0OQG+xbIglNEGd87N
         PI+54rabbAGJslvxKxL9UjPWFzGvpxN3A9XfOwUyNCQOVaGyYWjdwGJu8htu8Swf7KHd
         HHoYhCOQDCLGFYn9zlezAyq/0Ey1cyR+XZVXMbbEGxI02f6WltfohA69UWCIhbtHHx0l
         FoMGji8j7XKbcHUTTxFUaJS09jZpYfUUpFnHRcSAcmTrUpDwu8D0TdEWYC8p/fAjZXMJ
         jYQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VdQPD2e+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mpLB39w3arwSWfef4qFZwuQE2sO9TF/A/nRVUtnS0Xw=;
        b=iXOdBK7bGCn1smn1S/TcGL8at8G9PqGxe1P7jdSx9EkpsEAZulBSas94PvIMGUis23
         On9cgnWdvPWWtSBD+A0sHKSq6SOYbQ2o9zo9g65f9NA5k9DMEDbAOIeBP4ZXZ9q29sk9
         PhFn0IXI/vZck9jumOxQasIP7YBRPxS1E5ZB+k2HmtKMSUmLan0IyRhNV5d5bOdTBs5v
         XgP5PHf8eCLYx4j8KK5ifPCUnxpA3BQg9NsPs1UlXcVKHtDOisxnCGjKXbrAKC7gmnjq
         +EP7flG2sMfqxwdPPfw+ONMtwTRadKZQ3JdBEEXfH+rHt8bJtG85KFINErWVlWtTXcVi
         aIdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mpLB39w3arwSWfef4qFZwuQE2sO9TF/A/nRVUtnS0Xw=;
        b=pbjhDcILdPoLRy5vY9g9DQbOFmPn5ytOTES/oLybTnSQOlwxkzbrtZaJ7v9sXVAMbz
         Dpz8wQQbG8dfuA+0+or7yxs4eDhOdTIhPMZGwQXOoGhUUOwzWYu3pfDYwju4mPjZkqPP
         PksjW9J0mKauzsELqT1J/vzHJG3fjGUUcpB1o9/CzGblwZ5ORlhTERnsxTp4OeO8S6Cn
         8dKflEUIuTNUYr/SbA57qQ8CK/+wBlnjEkVM3PINb9k+0HloXIn2C9LeAhthYN0tzaYj
         TzX8t8hPC8rcCe8ANx2ee/9ZkSHmJMwif/395VxcN8n1pjOtB2HdQJVH1T01KcX5lp9h
         frKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mpLB39w3arwSWfef4qFZwuQE2sO9TF/A/nRVUtnS0Xw=;
        b=Au+FRBFMYb2U5hOWC6+BVDszffahuuWW4gVF/ORKDZm3au079CE6kG61O5MocM+hNM
         oR4P0J+/a9BkqSd1z60dE+0ilItV4YGGsYs3fV9B1RqbpX5eutb2nErXBQvboMouIUVz
         kSI3X6JxGO7nMN393PFmr/ISHRNHZBZIBKRcwof0cU5jcDb0hoct1eiUODhiY9pHjpVO
         21Ve7I2eKdIWPk6Jw5wlktMPce/rgdYZ6+A/Wwt9bm/3mYlTrpfkCeuHwzVEp5Msj8/4
         V/05m4/97cXnXGl7be3iKbICZPANyiODRmuzrSb0nhbbDAbrYLvmmv4pfEEHl44vvWic
         cmOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Wg+12WGOEBjBCHUrHESws+NaP04cMbfJGNshwKLqXWRkQCqeW
	dar1BNoN9s1BLD3LY0gCmxA=
X-Google-Smtp-Source: ADFU+vuXSLgHjwhCPmlhf+AatS4VJnhN9iDiTU/3J46EgAX+SJP7avWqo99mDPLf4E4+94Vs5klj/g==
X-Received: by 2002:a25:4f89:: with SMTP id d131mr950060ybb.119.1584390915916;
        Mon, 16 Mar 2020 13:35:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:84d2:: with SMTP id x18ls889595ybm.7.gmail; Mon, 16 Mar
 2020 13:35:15 -0700 (PDT)
X-Received: by 2002:a25:13c5:: with SMTP id 188mr2354559ybt.18.1584390915597;
        Mon, 16 Mar 2020 13:35:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584390915; cv=none;
        d=google.com; s=arc-20160816;
        b=JFQpdDc8OPo5Pn7s4yhGOdt1IFBWo0C8RuUJ5GdBLwzFaK4Y0sMPRZszUhNTCv8MGJ
         aJ0fuOWlIhPehpDx+tWEj+kQgbsR8rs6/lj8DSJmHjJNtv7Ds3oiVw0Fhux5BfNET4gs
         jEKozMvB/em/jRZCOyX1QFOLHfjqxtG4Ng6QvgJBjzBH6PAvTGD28ng28QalTk7n+8D/
         KXv53lCVWdns8Cm9Er0O2ceICZGhSxUJVvAjEuiS6lvBnYCql+M/kB57V39YhRVyBGWn
         Uss7oYoekrL3jcXcDcBXEPPTT/uBnO62Hsk/phRrXbCNyxauOstkHY/8E0eAL4wP6XuS
         wKUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2WeeeQuIf6X+Fgo34LchZIqqcKLKtS9v2wrYypr8QcQ=;
        b=pwt3EjDnX6xW3QucnkjVZZ9sDJl0cCoUpvLcZF6z8e3pLrErAr7HHNBLdyhKNKEJj1
         s3yHoKhbQ7bg7hpWesk1DguaT3c4TNs+mSNPRzCIjyCZak0xyZhEUrvt7KcuHatqXCHh
         4ZBhWO1PmsAfaLodzBT1NOxeU6FXP/nL/vSY6ngFeJM9uOby9Dudu9H3sg1y5It4EzLh
         3f31JU4GOPVhWs1xOoS098f0xAO7pAzn35Ol6+or71FMvM3mhtaVAhtT96Ljs6m7NMET
         Ai7S+3rcNuYSnYpzYmBwUtAUWgzLNhsbb4xpmzFaPFoVSvPLw4Pr6XEBwyBvyVh4u0ZQ
         +6WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VdQPD2e+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id l1si83320ybt.2.2020.03.16.13.35.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 13:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id d63so19321359oig.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 13:35:15 -0700 (PDT)
X-Received: by 2002:a05:6808:b17:: with SMTP id s23mr1049303oij.166.1584390914991;
        Mon, 16 Mar 2020 13:35:14 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o6sm307086oti.65.2020.03.16.13.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 13:35:14 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Saeed Mahameed <saeedm@mellanox.com>,
	Leon Romanovsky <leon@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] mlx5: Remove uninitialized use of key in mlx5_core_create_mkey
Date: Mon, 16 Mar 2020 13:34:52 -0700
Message-Id: <20200316203452.32998-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VdQPD2e+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

../drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable
'key' is uninitialized when used here [-Wuninitialized]
                      mkey_index, key, mkey->key);
                                  ^~~
../drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h:54:6: note:
expanded from macro 'mlx5_core_dbg'
                 ##__VA_ARGS__)
                   ^~~~~~~~~~~
../include/linux/dev_printk.h:114:39: note: expanded from macro
'dev_dbg'
        dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                             ^~~~~~~~~~~
../include/linux/dynamic_debug.h:158:19: note: expanded from macro
'dynamic_dev_dbg'
                           dev, fmt, ##__VA_ARGS__)
                                       ^~~~~~~~~~~
../include/linux/dynamic_debug.h:143:56: note: expanded from macro
'_dynamic_func_call'
        __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
                                                              ^~~~~~~~~~~
../include/linux/dynamic_debug.h:125:15: note: expanded from macro
'__dynamic_func_call'
                func(&id, ##__VA_ARGS__);               \
                            ^~~~~~~~~~~
../drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize
the variable 'key' to silence this warning
        u8 key;
              ^
               = '\0'
1 warning generated.

key's initialization was removed in commit fc6a9f86f08a ("{IB,net}/mlx5:
Assign mkey variant in mlx5_ib only") but its use was not fully removed.
Remove it now so that there is no more warning.

Fixes: fc6a9f86f08a ("{IB,net}/mlx5: Assign mkey variant in mlx5_ib only")
Link: https://github.com/ClangBuiltLinux/linux/issues/932
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/mr.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/mr.c b/drivers/net/ethernet/mellanox/mlx5/core/mr.c
index fd3e6d217c3b..366f2cbfc6db 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/mr.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/mr.c
@@ -44,7 +44,6 @@ int mlx5_core_create_mkey(struct mlx5_core_dev *dev,
 	u32 mkey_index;
 	void *mkc;
 	int err;
-	u8 key;
 
 	MLX5_SET(create_mkey_in, in, opcode, MLX5_CMD_OP_CREATE_MKEY);
 
@@ -59,8 +58,7 @@ int mlx5_core_create_mkey(struct mlx5_core_dev *dev,
 	mkey->key |= mlx5_idx_to_mkey(mkey_index);
 	mkey->pd = MLX5_GET(mkc, mkc, pd);
 
-	mlx5_core_dbg(dev, "out 0x%x, key 0x%x, mkey 0x%x\n",
-		      mkey_index, key, mkey->key);
+	mlx5_core_dbg(dev, "out 0x%x, mkey 0x%x\n", mkey_index, mkey->key);
 	return 0;
 }
 EXPORT_SYMBOL(mlx5_core_create_mkey);
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316203452.32998-1-natechancellor%40gmail.com.
