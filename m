Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU5EWHZQKGQE5GY54VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 85952185448
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 04:41:08 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id n4sf10073678qtv.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 20:41:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584157267; cv=pass;
        d=google.com; s=arc-20160816;
        b=JV26Y3UXYNFSZz/9hssuftR2taYX6766qMcIJU/lYF+cHtQncycRnKgcIeCfSkxNV8
         tkVxKZ3k6DaNDuEb2L942xNIyuZaQxYbPRoFDvijEb6DVqD6ymhumsXmsxS7wTcN71Mf
         2wHecDxMMSAnUAh45E0wO+hN/6HO+yX0YX4RoDh+1OyHpp0KdN+hJVnLipWe3EszC2oC
         S+vX50GHBvPtjSxw4WkiV4ENHfsPw1M2LjewvJTn/OAKLoQg8k5is5SNouksxLK4z03q
         2MGd+HaVq0YvD1OQBCrycxfKnyVeqU10gyMntzk2VEEzTygV/4YQ58UJWvXZCK3ng3da
         SKYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=5PBW/obOO2QPhlkzFd60/J1R10Gk8uXLke2umiEb/PQ=;
        b=MR7KxNsCz8YTKA+9S+fhnQ3pu6I8puAQZCBHJEIHR0Ha5gf4/9YCCSR6fdbheD5Dci
         Q9IpPjRDcQ1DGZtXo3Qm27CgTrzUrC6jzw5Esq73DtGEdA37eyC0KpFcx8C+0hBZYxUa
         a/611oDXK9ATDJVv/0TkTbaw4ITej7Zh5cRNIlZ+Ktk2+a1Dl62G1bL9gSV1v7cjmCt3
         FHGME+c/Ptc2VqsnSY3QrBdlJDFp1F//+O06ykoCDYiaIMv1w6HLqIhMc/T5gOYgui4k
         IOMudpF+FdNkHqElRZin0gY/ELXPa8goGfax6fEBR4FggNCwJtcl5+qFhhUJBO0h2kqp
         sEEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YinwBM1q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5PBW/obOO2QPhlkzFd60/J1R10Gk8uXLke2umiEb/PQ=;
        b=Szo68kphPCUBRHh6iFuYEzmUVHz6v4DN1HuoERDs+/64U+6uQBvL8/axEtAmH+LLMa
         Ur5hcHU/7DE/gkpK5tU4FL/zB8TaejRZyEsjvY8uW3f/Efy4NhpzFvqKUfe0vp72NcKw
         AYUsFqre46gnRoDlorkUVUcPDuwGVFCVx0sHLM9Jofd0mBR3eq9E6o4m2HwSWHabLPZ9
         +iYBzts8PmvbvFnTJMllYpTICTsTghntumeZZtIsRVBWVeXud1kLAi5kXSMq6Wi2tBO1
         U25umopr0UCgZ7sB0jdquMhc678uH4yasytQBt7PXt5X/iQqzvJMGPpDQrcD3UD+rD68
         kQug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5PBW/obOO2QPhlkzFd60/J1R10Gk8uXLke2umiEb/PQ=;
        b=pII1x+3ItSc0TkCqjA5TqRU4u+vBqHBSH9EG6JIt/dkfgSK7E0Dv1P95BPoNNOfkMz
         mo5OjhY7ISGhRHXFpJ/7tzzbrkta8wh84WYHCoRJL4ZNQwuc+TbxcmXjWpLa8tJol99H
         CtvEt5rCMJyekIk4X6AqhIBZvxLd+R+JGYMKEtYCcTSQ/3QER9lG6mazDLXXTmrJ0hcp
         M1ikOv3ffNEdaNV58krTC9LXSbAb0Sg5GMpf17UmR7ULmH1LAYMarzQ6Nkajj7iDbvG0
         WsD6R/o9OitW8CfO5PLIOXWhmvdHdiAmZxblVvYfXjIKeRTdsgIyDlbcqjJ7Y9CTLbOv
         nVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5PBW/obOO2QPhlkzFd60/J1R10Gk8uXLke2umiEb/PQ=;
        b=bHVqEztabFcZji53IMUdr6VzDXMsk0sl6isvoZFPHLP12xhio8cptmh5laN023/eBJ
         MIfgnvJjHaDQYGGR8d6KvqZp5Ixlhn6DSZE1o9a8RbaUeku7g5USVjosrHfNUJVp0wPd
         +BcaetCTPrsiIHluTemYORXQrONyp0QWKSkwTCTKNhf/AYukCk0q7luPCwBM8zg28Xob
         d/K3VtG7bj2HclHg1qBy6dAEF3hdnXskjCWBY5wG6S6tAx3Gk9fAc1FydVSMlOZI9syg
         5GLkA9Mb40wAgLt2iN5ajxO+I33qXMHFjOwjmeAQKOOPIfwTj9qhRMy19BUagesozLd7
         B0qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3FDw7zFucv9/9uYhqnJMyK5YV7f/X33nnWiPfT6UO3ZUGsdy5M
	Zgn6q9ACEN/vJ5OCpHtwNDs=
X-Google-Smtp-Source: ADFU+vvkCEq/dADllgq0VyLY6gHhjzzdhxVcnmY4wG2VGG+XbsrqAoMnwp0btU1Yh5y0Hupg+ds5bQ==
X-Received: by 2002:a25:5556:: with SMTP id j83mr22247971ybb.348.1584157267391;
        Fri, 13 Mar 2020 20:41:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:984:: with SMTP id c4ls3841797ybq.1.gmail; Fri, 13 Mar
 2020 20:41:07 -0700 (PDT)
X-Received: by 2002:a25:b7ce:: with SMTP id u14mr21723614ybj.192.1584157266972;
        Fri, 13 Mar 2020 20:41:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584157266; cv=none;
        d=google.com; s=arc-20160816;
        b=jh+xEysnyPtJZjxNOIItwJAVvgvnNIfgTWXyvdXE1Qg/OM0ms6GOQtUxAVflWlrL+m
         HWxkQF8fRyUMD9oVUrQZq0K4jY/Sy9LPJgn3a26a+nN3TXx0uPGh2Gfg4clsyjX8yIQV
         36Cl0O+25eHmLqtZcmvsFC3KgqOJaEUSh3uBe8TbKL11PjyJhUZwx1AH0J9OjqvAAMwC
         WVK70UxWwUskmBIK2lMrGGnu/zlxOG93gjQyE0sFWogt1plmGflgebUXHPsnVQA0J2Ob
         J/PV+mlaTm4HQjo2uk5UtJkh/QKYK3o6e2m4TmMb/2GNJs9U92TAdyJg26yKXL5Gjtcd
         KGyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ODvQm7I1R8oQFiKWbyZvHkjHtUzE99mqtt7tG1Qrc4A=;
        b=cCI2KgXW85M+cag31xgPX4u6JLLZW1ummPgCo64I6If+jdymDU7b384QpCwVVfxPUQ
         GcCkRWmDiqywschuxO3OHop8KmEAxOS5Vyq3S9SKPAL81gR+W6P85U4nh9KA7ZKP5UQJ
         jHaYxSlkJgDtrX2HbRYhlurkndveijPhsq0XjuE3DV/ah2QcWk51fNFxI/lnpEKK2lci
         wAD81mOKbuF+20BSTFilfHeCCAwZ7z8i4e8hDMkAmS3lk1hnKDX72mmmVmm+Cc+TpCxK
         /TSTXWFSUrNZ9cTonrPYN3YbzSpCcr4KExOxoenL9X90HlyyQpa5I9/O9NbOmS7MJCny
         GpJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YinwBM1q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e14si279628ybp.0.2020.03.13.20.41.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 20:41:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id a6so12273180otb.10
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 20:41:06 -0700 (PDT)
X-Received: by 2002:a9d:3f4b:: with SMTP id m69mr12954778otc.146.1584157266403;
        Fri, 13 Mar 2020 20:41:06 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m21sm2138101otq.35.2020.03.13.20.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 20:41:05 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: paulb@mellanox.com
Cc: davem@davemloft.net,
	jakub.kicinski@netronome.com,
	jiri@mellanox.com,
	netdev@vger.kernel.org,
	ozsh@mellanox.com,
	roid@mellanox.com,
	saeedm@mellanox.com,
	vladbu@mellanox.com,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH -next] net/mlx5: Add missing inline to stub esw_add_restore_rule
Date: Fri, 13 Mar 2020 20:40:20 -0700
Message-Id: <20200314034019.3374-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
In-Reply-To: <1581847296-19194-8-git-send-email-paulb@mellanox.com>
References: <1581847296-19194-8-git-send-email-paulb@mellanox.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YinwBM1q;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When CONFIG_MLX5_ESWITCH is unset, clang warns:

In file included from drivers/net/ethernet/mellanox/mlx5/core/main.c:58:
drivers/net/ethernet/mellanox/mlx5/core/eswitch.h:670:1: warning: unused
function 'esw_add_restore_rule' [-Wunused-function]
esw_add_restore_rule(struct mlx5_eswitch *esw, u32 tag)
^
1 warning generated.

This stub function is missing inline; add it to suppress the warning.

Fixes: 11b717d61526 ("net/mlx5: E-Switch, Get reg_c0 value on CQE")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/eswitch.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
index 2e0417dd8ce3..470a16e63242 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
@@ -666,7 +666,7 @@ static inline const u32 *mlx5_esw_query_functions(struct mlx5_core_dev *dev)
 
 static inline void mlx5_eswitch_update_num_of_vfs(struct mlx5_eswitch *esw, const int num_vfs) {}
 
-static struct mlx5_flow_handle *
+static inline struct mlx5_flow_handle *
 esw_add_restore_rule(struct mlx5_eswitch *esw, u32 tag)
 {
 	return ERR_PTR(-EOPNOTSUPP);
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200314034019.3374-1-natechancellor%40gmail.com.
