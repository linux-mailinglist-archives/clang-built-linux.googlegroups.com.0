Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBR4ARGDQMGQEP7ZR3ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7CA3BB1E8
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:12:08 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id w6-20020a63a7460000b02902272a0052cdsf17054294pgo.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:12:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440327; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqVQf14lapJ6MHevIGpcrb6tHr49ObpgW7LB/5l5GZMtj25EyfuiUkEsjFxmT5o249
         jo3so4HvBiYNLvBzLrkSM3hotu/3EXz1N35dbX79LH2WuyxXb+3cIpMgWXG26vKu7kNW
         0J9C5rgiBPPqw+u94X+4yeB3GH34WsuhPlueGWYdFydMLo8qo/0/bhiHQzMUVU/sLXAO
         P3eV4Lkrf+Zg+bBxUkayIZKO3bvFOYsVmKrM5TIxM2eoS4ZURAhVWMKrwafe9d1YGIB1
         Jjgz8ul6z4Dk+kGm+ewPDV9C+GkhkZAb1fvLN6SnOpeJk2ZytluzPsbzv3CBxnVjd/le
         S5Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nXBVmPPSWU/pncRyNAHc1l1fpKR/ngH3b/XqZ02AY44=;
        b=nzU/ueDWocy69kZJKt9wYcWeJyUzu3vEpqmFtRJITE2r5DL49gGDkTWKL1rMWARG9g
         yw5HJNhC3LCz+kodGQuNMmNg3KcZnVGtBO8cdKu71jepETNsegusEywOYhdzFpT7dwzq
         fboOcJ0FB/dkxQ6H0syxOsuKzTHIaTTYNIu2Gca/2uUZ8v9FvZJtiVttZs0ZdQ4YIoSz
         rokzc2TgUKqGCOoBIo8fI0fAmVpVTI6FUQgLop8ZhiJ8MX8RRbIkGUyqhWMGbhLPoA42
         w/AYFtxX63T/c1pfvwicYM/yM2vQKW1IAsJnHuQu05sXUOXv2r5iBxwXaJ2yYh7Hsai8
         LdDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JQgXJ0mn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nXBVmPPSWU/pncRyNAHc1l1fpKR/ngH3b/XqZ02AY44=;
        b=DexRd2cu2hSZc+HV/0PkWzuNIeIPIjf6yZiv94skqCqGciwLYWy1rWidRHnKXVjwEh
         ujprznKq9dK79N1rhGfEz5TlZDEK66qBAiVMtP9KgourZpFX/SUoiiMpR6JhTWO4bZ3+
         noyhSbfbJ2MRV8S2YWlBdL6wCpXyyYn2vobaRVHJnNkR7ql+PZ3bluniPX9qCU/SQo1V
         XNtjWZLyHjAhu+Ip/bgpidO4Fu/VSludcREfQDpLMR0i0oBw/J1VSh+qU1RupQ8CpUxV
         oVAEiuvGYxuNIL1jc5HFuQ3a1/F3ijIBgEfn9k+iQ3Tw7NPkbmJDoNAB3HCi9IB7HTGx
         lCQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nXBVmPPSWU/pncRyNAHc1l1fpKR/ngH3b/XqZ02AY44=;
        b=cPNrI5Iiit0r3yNwcsNLluPfFc2cHduAWFQVdWz6v1+9EXqCihwYxVXTHddlB87YDS
         4p3/Vp/WRaAclHXMRbJLahQYfTP2e1af436ej1io+taxdb8R092q/l8Ub3RG2rrwbvDz
         +OuqtIpoU21aKYA7+upYC46+zASZLKAYDHdGrcQyOn2Ze50s4I29V8H+/9VLUfWEO+Ke
         neQq65NAuXqBnMLbIU7OxeU0od8TbPnz4dkdDLrjtv7lUEWCzDsyXm+WJQuJSjrDQrug
         0zw4Sovv4ic/euHwch5qWhvQPQHTqmzEt2QJ3DbCR07m8BF/4fVHp6pX0f4xPW/EQ9xL
         HaIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nSPYj8gQgJG3b5yXfCskipv4N8TFqx6izhtYGHKuZSQkQPtE3
	nXrkc4AgBQ8lul086x/lF4E=
X-Google-Smtp-Source: ABdhPJxW/RiMW62PdTDuIjuu1vRa+9rFlWlmLrq3cl50FULxLAqwCaks7XGoFVgfWHJkpXSIV32lWA==
X-Received: by 2002:a63:66c1:: with SMTP id a184mr12345829pgc.15.1625440327510;
        Sun, 04 Jul 2021 16:12:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:471e:: with SMTP id u30ls8015565pga.3.gmail; Sun, 04 Jul
 2021 16:12:07 -0700 (PDT)
X-Received: by 2002:a63:5610:: with SMTP id k16mr12166849pgb.439.1625440326964;
        Sun, 04 Jul 2021 16:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440326; cv=none;
        d=google.com; s=arc-20160816;
        b=igd34AlfeNzHIRcxQspONgnFrtjj/lfzjBbNm3ZCs+DFt/d20AwOwqLf30ry84XxaQ
         5OKOTuKc3bKx5l4yXea0nHV6SI+FwtgGZhtFTlKmknkZ4eQLDR82S396te8PjBzMfp1a
         2q1xjYp9XT5LKBdJOrtlvxrXaNDxg+o0GI/8M/CXpmB7PbEs4xPkJAU6AvwLMl5pXrCo
         p0u8ezOXSzAf+drPpF0cXV1Z1XW9e92xuhZcR5mPrdrnbFBldb7xXRVi4Yk1Z6UTperc
         wrv7kpQ5pKzdFqLzDW8d+VcW8TdOc3o9BIOsYAxA27J9i37GY9EwyKrLtwTACViBA371
         fmkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S8YuLQr81yP8/kep1Du8WpHCIotA43CSbe7EY/Jid8s=;
        b=z+r6WBbnS8HKyqEIyhzOGLfgNrdoUGVrnBvwhx1mZK74Dw9EUCc679ZcSF3s65bfqt
         C8zi/VN8gzzTl66WdSEfCBHjTaEvI+oAJaCmafZQwgy0eeh6mtwE7twwkXKifjXd8Z0Z
         kRQ/J4687jAq1qSYd3WhQ6P9zEoca8Cqh+39ACmmT44n+I7lhaXoO+xWTRZhSkUxAmvz
         TiXDneSCpC3j88KUZHGcP2dqrjXGa/PMhMvqhU+x8Y+zPfJwfkJ88fXitsGkp2imwd39
         pAa/f1xDlck42CmwIZQ+OU+rARVjNrt5/WS4x8wQOiqBVc5dBCrV3dDiQIkgs1mwKAmZ
         YnVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JQgXJ0mn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id br11si1509862pjb.3.2021.07.04.16.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B0A876141C;
	Sun,  4 Jul 2021 23:12:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jack Xu <jack.xu@intel.com>,
	Zhehui Xiang <zhehui.xiang@intel.com>,
	Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	qat-linux@intel.com,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 08/20] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:11:43 -0400
Message-Id: <20210704231155.1491795-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231155.1491795-1-sashal@kernel.org>
References: <20210704231155.1491795-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JQgXJ0mn;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Jack Xu <jack.xu@intel.com>

[ Upstream commit 96b57229209490c8bca4335b01a426a96173dc56 ]

Check the return code of the function qat_hal_rd_rel_reg() and return it
to the caller.

This is to fix the following warning when compiling the driver with
clang scan-build:

    drivers/crypto/qat/qat_common/qat_hal.c:1436:2: warning: 6th function call argument is an uninitialized value

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_hal.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_hal.c b/drivers/crypto/qat/qat_common/qat_hal.c
index 8c4fd255a601..cdf80c16a033 100644
--- a/drivers/crypto/qat/qat_common/qat_hal.c
+++ b/drivers/crypto/qat/qat_common/qat_hal.c
@@ -1255,7 +1255,11 @@ static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle,
 		pr_err("QAT: bad xfrAddr=0x%x\n", xfr_addr);
 		return -EINVAL;
 	}
-	qat_hal_rd_rel_reg(handle, ae, ctx, ICP_GPB_REL, gprnum, &gprval);
+	status = qat_hal_rd_rel_reg(handle, ae, ctx, ICP_GPB_REL, gprnum, &gprval);
+	if (status) {
+		pr_err("QAT: failed to read register");
+		return status;
+	}
 	gpr_addr = qat_hal_get_reg_addr(ICP_GPB_REL, gprnum);
 	data16low = 0xffff & data;
 	data16hi = 0xffff & (data >> 0x10);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231155.1491795-8-sashal%40kernel.org.
