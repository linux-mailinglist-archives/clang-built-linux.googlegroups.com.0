Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3MGUDZQKGQEYECEQJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C38C9180A1F
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 22:15:26 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id f14sf3767790pgj.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 14:15:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583874925; cv=pass;
        d=google.com; s=arc-20160816;
        b=oyBm8WMTe9I1NCI8uymCIMpY/Rt25fhiv5EtYVMJ7dokhIpslcRgOZee9ZMtNqi1jp
         6uP2oSgp4degGY+zFvXRS7FUpTAwY7ObxRI4npcWR70XfAlvHC2VilQpk2RDhiwtnKtD
         pWNRLGb6Ca93yLpYwGp8+Il416OFy5u9XsUV6IQMBfJsU9sIpk6Muqr+2XzRd8WudJpY
         3dlCQ9yJWpSwAyWgvoz/mKkRbiGVVInNR5CUxlff0EkF/cI3zfevJAjgtwDZmHJfDFf5
         Z92bOOrB1G3dpO3lnrwJz3Ffs6jsdKwgfJtYflgPPIMd7dxzxTMyYhYj3iuqpV4cV2gQ
         ne/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Hs6btBEI/gS3ur6iu5RNwUZFudFbqYSJJZh2L+PvqqA=;
        b=ZpLzczsZfeI12bebx4qienzefgmKm7G4DKxRzETcrF1AYStPqD7cKV6tD9pJwYLhOP
         j4CR/78okxzyYhzQMamGUW9yyqkkD03QElvlKZ0FIqRzE3klQbOcc9E7HYA7f7l0u71s
         2wBDk2aOn3rNBHI0dS/k9+rBOflR8ZBa9F6erYjIVRnm4w3oIz3H3ayCo1G3Itn0Qe/o
         phAH43UBqosRfFV2HB9aCVt0c4Or4UCUCxOAmEH21jI90JAZed9XUyAldoJQKmb4IqJa
         imnLgDp/3y9gHZfRdYIMHlG3ZHIaIUvSiqlfqBcvXqThTjJFpT+7zTxbecL+d8u0/HPg
         a6dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dN1DJyXu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hs6btBEI/gS3ur6iu5RNwUZFudFbqYSJJZh2L+PvqqA=;
        b=GEdZPMXyW8Faryv7dbWt4Do0KSkl9NUiY4PZneH5oXvWMKBum5oKnxEsJrAfD0PlHE
         7VmxcwF15IcadPFaMhQAic0z24kN8TaD4WuCwNTGfv2srSBCWYj9Qgsh26W/oBBwl5vu
         lXkGjcnmbC2kSmGiysVjILRB/wtcIOJ4ZKQjf6/odFgpfWp9DEoMi+ynL2MQTa4pyA3J
         mxuhwmLjGcsUJlM3Fr0klzdXpEdQqZGpHCYJy9JfTaRmfLJrplFQbdAqPJ9cnAunhHHd
         idgxDJBWEZyt0oFm+c5Oq5Cyq2X3Gc5qE4qSAhIHQyvqGCWDzFYr1Mg/bB15nP9RjjCB
         UWhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hs6btBEI/gS3ur6iu5RNwUZFudFbqYSJJZh2L+PvqqA=;
        b=jWKlcbsyFXKJNR1gNiUCEjACL61qJa6t+c7fYFMbdyyNHX4WZKkguqUnTYeblekblo
         jnqBHQaDC/5IDN114UKFrFDiHZO2lQSz8tO+/b3BJdpTIciB8Y7CfbwJ8GQRB8h+Xatw
         b9j2CCbePrchnueQn81dOa4jOsim7LqLozMBL1FJstFdTiD78thrPGFcSEOyGJJMYL9v
         LoElM4MYRGGmjBoIHTcdcz1ZC127KFDzRnIcjphVrPoqGc7d5t2Mbj4xptvcNNq+sa5P
         7fKDiwq6ZUOvsqCMkfB/aacQVSCyZzjyGXga94KoR4N4NG7L3bpyYqRnyJHp4tmARa8M
         O3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hs6btBEI/gS3ur6iu5RNwUZFudFbqYSJJZh2L+PvqqA=;
        b=AzhQjuMf8uGHmv3EsfRLQuGPAVjSOmhdHGoCmTz5p37CWdoGwzTLTYNBlysLWlhKrc
         7Kb9ypCY+TvP3pK28poohmE24drHaapxJWOMbLNh5NvjBFF2LHGTDbZRnWb7xMVFLXpG
         9P2eSkKnqFnmtOtEuXSgqlxWV0t9jvwSuTb6ZNjcUr2up1ShS7G8QwVBGamVg2kLh/rc
         tZ3l/SqtrJnTgIhlXea15i8FbHnmArykoftL6IOrPEWSnaXknaWYmMLOi5o3WCoKIjM2
         ZXqaY69pMzRElVtStMfs+bVaqJ/U9f+dKo1jv3Vg8CUlFtJv1pt4kXn5QpsqGtlWRvRo
         ofjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2BuCDsLldXCTJ8uTZFqbXxN55IX49IZlJVvsH1Wb/xf5xk4dt9
	bgh1OHqxCwHi55y5LfX02OY=
X-Google-Smtp-Source: ADFU+vt6V8zgtI0WSLKBgc3Rm3lyPRkVEIokT5NLAyAMFTaGiaM71wcZUPzjqSm2VzLFhBIv6KR6vA==
X-Received: by 2002:aa7:8695:: with SMTP id d21mr23680462pfo.199.1583874925357;
        Tue, 10 Mar 2020 14:15:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls806986pjo.1.gmail; Tue, 10 Mar
 2020 14:15:24 -0700 (PDT)
X-Received: by 2002:a17:90b:1a8b:: with SMTP id ng11mr3638640pjb.194.1583874924874;
        Tue, 10 Mar 2020 14:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583874924; cv=none;
        d=google.com; s=arc-20160816;
        b=yk/YEFc5a2BYT8e0clZ0DGOIeu4p4mjLpLyLbSNiEYWoqfnAL94j2FYuJZrQ9ijEo+
         PrS1GFyGA+P1DCZ6YzLI3ixPek48qJVk7WzZld4RwzOMBmvp5pUhu0FMP4Ip1PILkPDL
         Y9WmtwmQT8WEOJ6SzXImE6tVPkVnijpurs2t6zpjjtvBbBDklx8X7xUiFRbCQw9Xq9zo
         0Q1vg/qLqX7kwIMD1Sbsg+jy+6qqNaql0esbGqAt05loPz+2hw0zA0KT6fOuV4SA89LS
         Crd2HZrXyXqegQVYZAJga/+3qPMM/d87BMAFA9L25u5QM0tBuF9YRk59552zyVmWhl32
         5M7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7hNWBofucArT17MnCRXZQMQQdTzbenzVIK3M8zSgFrs=;
        b=cXF9t9F18QrzVyqvD3rKn+Kt4pgxfrhzBdT2I+eUIVWAu5ptXzM2iuRqqu60nRuwnB
         buj6OCoPzxd212Pv/XX1fFw0eOYipmh9UNhdfhfYXDjdeb5tyI9SLDm64xtr487sq8s1
         bCIQ86glsGu+4TEZ37fBH/LVN0hLiipRwaAlwjMJISRDnv0hPDDS7xvaZIUPymoD2rvX
         rdY9J5YT42yqKsGRJEUxOvx0tG5w+oS21A2FSnVyk0HNhp9QSAQpbIrsyPBXlmZ8VngP
         cDyxbzbeRzVPz2hoQbDzb+08XJktq5yEK5Ft1nZHDDPda+oM2G9AA4HliI9RmFK7/8NH
         v1tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dN1DJyXu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id x12si904395plv.3.2020.03.10.14.15.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id g15so8566739otr.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 14:15:24 -0700 (PDT)
X-Received: by 2002:a9d:6348:: with SMTP id y8mr687408otk.347.1583874924146;
        Tue, 10 Mar 2020 14:15:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j90sm205345otc.21.2020.03.10.14.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 14:15:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ohad Ben-Cohen <ohad@wizery.com>,
	Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: linux-remoteproc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] remoteproc/mediatek: Use size_t type for len in scp_da_to_va
Date: Tue, 10 Mar 2020 14:15:14 -0700
Message-Id: <20200310211514.32288-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dN1DJyXu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang errors:

drivers/remoteproc/mtk_scp.c:364:14: error: incompatible function
pointer types initializing 'void *(*)(struct rproc *, u64, size_t)' (aka
'void *(*)(struct rproc *, unsigned long long, unsigned int)') with an
expression of type 'void *(struct rproc *, u64, int)' (aka 'void
*(struct rproc *, unsigned long long, int)')
[-Werror,-Wincompatible-function-pointer-types]
        .da_to_va       = scp_da_to_va,
                          ^~~~~~~~~~~~
1 error generated.

Make the same change as commit 0fcbb369f052 ("remoteproc: Use size_t
type for len in da_to_va"), which was not updated for the acceptance of
commit 63c13d61eafe ("remoteproc/mediatek: add SCP support for mt8183").

Fixes: 0fcbb369f052 ("remoteproc: Use size_t type for len in da_to_va")
Link: https://github.com/ClangBuiltLinux/linux/issues/927
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/remoteproc/mtk_scp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index 7ccdf64ff3ea..ea3743e7e794 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -320,7 +320,7 @@ static int scp_start(struct rproc *rproc)
 	return ret;
 }
 
-static void *scp_da_to_va(struct rproc *rproc, u64 da, int len)
+static void *scp_da_to_va(struct rproc *rproc, u64 da, size_t len)
 {
 	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
 	int offset;
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310211514.32288-1-natechancellor%40gmail.com.
