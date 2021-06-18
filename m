Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMGGV6DAMGQEYDSIHPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7185B3ABFF0
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 02:05:05 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id eb2-20020ad44e420000b029025a58adfc6bsf2660220qvb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 17:05:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623974704; cv=pass;
        d=google.com; s=arc-20160816;
        b=pe163BOqXp8xtaHdLqpKOZEaJ6ki/YM2wP0eNxWFGu5avJTGlmgFC3bzr36Z9agWZD
         tJnUDHsD2lwfOy2m0nwsUxoFFPCvli2NfvItNPjCoi7g+pWDyXbiBdhZMFu25VPLDcOa
         gPNAXqEi/e3UfcxkGT3mZIsEliHEDfrxmUH+r0RBbBdFcVyogMwE84I8lrHFc7bBxtZn
         OEWEvwH7SlFOBQiUqdjlTuS6D/WmVDxW1tZ/xZCd+tI2ayhCB03HKSuSkxLXzTP5SgLh
         tEoVqSW/mzUNe4ByeUnkzT1Pvpl7ZYHzFc+Yy2KCssWc/sVWQSSXKYVq6zlT3ZKly3VO
         Irmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=GgCahNAhdMH82Jgm5YYBGhY88RA2LcWzxmIUJ6MenNY=;
        b=fY3nyfr8z+KF7BkAQv1jUffmd1TXvO6y5XEAWBGtyZJdEZBAq4S5w5vLPhmv4ch9A+
         Sa9gfrARRRkQU0dt9GN/o52fTQHZ89JYGrJxgNoEBDPlCOaJvq+t4i0t87/BnY53oJne
         Owh9tyAVhvouyh49QB5Z6Ys0jR6kdTlTPALVIppSEzKVpTpOGSzXV6SUllgTn4vU5oy+
         K+XM3WTMv3Ev2HBke8i7C7BTt2j+jnuRQDlOTkZRctsoJItEr6HvYojskKR3AZLEOL/7
         vwlpN1eWQK+bZVjCBr6FWJk58rEHpyYZF4n1x2ZTGJTJnID/CvZ0S3KZv1phNY/rm1kA
         RoIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=grzMm7uX;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgCahNAhdMH82Jgm5YYBGhY88RA2LcWzxmIUJ6MenNY=;
        b=gOK11RmwWweSZeM2rE5IXyFT6VElRJLM5E9S7ekNezab8SExI3/jXYtpcnGMTwOyVy
         FBlI4SXDdXxvOHGetlfNMz2xjtzN+MFyj1hqWchRG9kf0L+YuAv/+IBSQxI7u+PKfKEF
         FBdSMB2WFP2MVIFSmccR8yTrEwAaS57OPqYs193E/k87fZzTc8peTTvoIf5gM62xw/V4
         +ggrvoojtnH17R1DmR+YrbU46ba3IF7OChJGxpGSwIK/o11i7Jm4D5LNFhGtcZM5WXU4
         Blpeq15Ea59Tkqv+icUXXt0DPBb7s2T5GlQHvjVBgb1hab3SkUVJwoy0v1QkDbRvmTXC
         +T/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GgCahNAhdMH82Jgm5YYBGhY88RA2LcWzxmIUJ6MenNY=;
        b=hCSwtfF1C59sp9dZvy4N970QHlNyMuqTxIFEfavCwuKYcHKIhlSjjFRIrlVFLhW6VP
         HrsSwrPtng5qjHRje3SOPrE77fz9RrOCMv2Gmzs5Xy6PqnoPam3fEUVpmxnsHuczzHSK
         eFzo5g8f99HRN3VRv5dtNLMy7A9chkBOiC5P5zt2elndpeXvdbw8kpmJM59ExU0k11qd
         kTYJNBSCB6s5y0U36sHg6YRMoO5ldGmkxDk8lhZPEdAcw1D83zTRcB/Lmk1B713v1Bjf
         VeWOP4y3zxIGbnsT5JzRtBDpBpMfpQKQF7FIIjG4SiTkDYa/PzEjtpwJqu0Kpg3P/0Yx
         cSjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mtEwgvlKqXvVTl211HVGn55BWrXXTN3Y+m17oDO334HUImCfg
	cHGOUBNK4EjGYthC9TC/woc=
X-Google-Smtp-Source: ABdhPJwJj9zidE0TdFjYNOqo5Ev1VZ6W+Kow81+Ct3VFE13jmtmnOesLz+IoGsqP9NOaGMoUQem9Iw==
X-Received: by 2002:ac8:5657:: with SMTP id 23mr7858382qtt.98.1623974704558;
        Thu, 17 Jun 2021 17:05:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea15:: with SMTP id f21ls5452075qkg.7.gmail; Thu, 17 Jun
 2021 17:05:04 -0700 (PDT)
X-Received: by 2002:a37:ad14:: with SMTP id f20mr6441433qkm.145.1623974704082;
        Thu, 17 Jun 2021 17:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623974704; cv=none;
        d=google.com; s=arc-20160816;
        b=VDcvbNcwLXXKmXxJP+1icriK+LIBy5HqM54T0IerTE58ukkbuO0cYXKlI5KiBueaop
         swizu2EN6vRqkTI+KLkOZMz/P0NgCm1V7ynv3YgurDV0WYwkDhIk3wyde2KgI40TBKXr
         4YRgO2fHvX6kmqSFe2I1hrtq0lFYAb8RTJ104v8STb2T34eujhoni/eEseEv/A85Ph0T
         L/E3NciWABrXF381Xu+ZP+KQTN15vilyeZ/QI7IrDcT0FuClYm3e8blB0ZFcDDJsLFPJ
         uv+VXlsuDwFKza7ZJYVtcmY83vGPkCZmIDZyD5uYbX3K6NUY4g43SO49FSKtUPy2VUvh
         vUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dsNOqIODOPUjjLwjJ0vOxjsYmOMKPvQ9F0DWo3clJ7k=;
        b=GELj2ghosYToKaL8SQKcrGOm9MxZ7LOOS6bZONvRHovuss4e7ey7U4YYd9apvXY/n5
         xXHy2L6BTOJLbTgaoAeQ9JVc8gyKOFmbLRiOcKVfpcsjIcRP5b2uh8uH3RPwf8c5q17J
         IwpSK9YxAXuJlH73vfslveJR40b/Vd1cGTWDUEQL9i7LnEdu/HLg447VmbNZuuRNVC4u
         PDPOcR9sIucjmQhvqv2eGuGW0Elylmcf2KAa7M5N2VgT1xCwzQn8YRo9oR+hISRblJ4y
         jKiEQYfrBjaUnX7sQToHg5k7CELwMnrZsODnKGvDz9tMezSQpAONxV2wbPpY2dxXIa8r
         l4NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=grzMm7uX;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f1si420533qko.5.2021.06.17.17.05.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 17:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0FCA061369;
	Fri, 18 Jun 2021 00:05:00 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Saeed Mahameed <saeedm@nvidia.com>,
	Leon Romanovsky <leon@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH net-next] net/mlx5: Use cpumask_available() in mlx5_eq_create_generic()
Date: Thu, 17 Jun 2021 17:03:59 -0700
Message-Id: <20210618000358.2402567-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=grzMm7uX;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

When CONFIG_CPUMASK_OFFSTACK is unset, cpumask_var_t is not a pointer
but a single element array, meaning its address in a structure cannot be
NULL as long as it is not the first element, which it is not. This
results in a clang warning:

drivers/net/ethernet/mellanox/mlx5/core/eq.c:715:14: warning: address of
array 'param->affinity' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (!param->affinity)
            ~~~~~~~~^~~~~~~~
1 warning generated.

The helper cpumask_available was added in commit f7e30f01a9e2 ("cpumask:
Add helper cpumask_available()") to handle situations like this so use
it to keep the meaning of the code the same while resolving the warning.

Fixes: e4e3f24b822f ("net/mlx5: Provide cpumask at EQ creation phase")
Link: https://github.com/ClangBuiltLinux/linux/issues/1400
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/ethernet/mellanox/mlx5/core/eq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eq.c b/drivers/net/ethernet/mellanox/mlx5/core/eq.c
index 7e5b3826eae5..d3356771e628 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/eq.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/eq.c
@@ -710,7 +710,7 @@ mlx5_eq_create_generic(struct mlx5_core_dev *dev,
 	struct mlx5_eq *eq = kvzalloc(sizeof(*eq), GFP_KERNEL);
 	int err;
 
-	if (!param->affinity)
+	if (!cpumask_available(param->affinity))
 		return ERR_PTR(-EINVAL);
 
 	if (!eq)

base-commit: 8fe088bd4fd12f4c8899b51d5bc3daad98767d49
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210618000358.2402567-1-nathan%40kernel.org.
