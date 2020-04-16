Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVWF4L2AKGQEOHBBKKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B7A1ACF93
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 20:24:24 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id i9sf127075pjs.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 11:24:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587061463; cv=pass;
        d=google.com; s=arc-20160816;
        b=qcfOS2isMa9/tFAiIEvq+5TZXPZyJJXeKzq2kwxTNCSu3NHBewrdFRdWVbOSDxP6+T
         LWMfkuBt+dyLZCwxN9zpx+j6UKOML3fazbSTOWE3DSaN1KWf6SoXD3H/7H7tRbgKHGWk
         0VQlQfhHtKE/Yu5JvQlGcKqXMzNYT77SoCpILQe1SbmM2o2g6CXtRh4CW5sRl/ZaGt6I
         FMOjWOZWYdQCemmNG8znGuCHe36MOedc1sh6jOIyUE750guhjdQV/RuB6hNlgZyT99ke
         PsRVeXmLHHywiKmVMKT4Q6K4t4ViT/drdw3Yl6pu6xoXIdnfLXcTpRfapK1Z6Byjlz1D
         JWYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=kvMaLDZBlWc/s5LSp1Bm9S5Pn7v2oB5MUTk/H9dCR50=;
        b=blOuoomWKAP0YDng0aUuRL9DnlhSYTXAxzmiTrOE/oL2dwp5T8MGWtW+XLWeRiAqv+
         CcZkAdUR79eoDUm3fMEdFVxs5KX8QCErThaoKhqWnumW9BcAoU5FiV6V9FkhLdo5xe4J
         gyHBTDeNtcevCmi5DvAaUSNMbB5oxaBZgCQDjepJZdNyNXrocGNX8aVEkCMcm6djBFjv
         OjBnG/Jg+P09qwZ+d4NRSQAaVWO6bshCWW9fR66M4c2UpIsGlCjV2aDBQfQXgS8x26jx
         BIGklIBfRVGDjGbY3Jmx84QYIBXjArNjs5ot/+IoXscYDvkigZLMxFyYEWMb0JR2sMua
         Cn+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tU5V57h/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kvMaLDZBlWc/s5LSp1Bm9S5Pn7v2oB5MUTk/H9dCR50=;
        b=iDjL/8u0Tzk+tJG/0zjLcRPVf+h9MUnDkW0ZLHvArW7DhhR5rmzpJb5rd6dG8BkQCl
         gh7SpSWMf7+XL0m3MzQoJZrurFi+dP8PboWIbPM5y6kQ0iJPWR6TW/juPk2PHLDEj3bP
         qwTOYmaysE5UcnXJKDGHNAz+JJyO895lypT5QmCodXXSA1b+1eYcaigqUZg4g+Vr9tJn
         /AoMloF6ltj/aFBCraUdjUcogUera4+H585V/BkGK7mbquYiTRAGiW/dXVJeK8HYtRjo
         mpuXsah3T36+6hMLXfm30wR2NG9dTeLNn/DIiDAaJO0bltq39VBIrIj80cTg8TtCEnbM
         lQWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kvMaLDZBlWc/s5LSp1Bm9S5Pn7v2oB5MUTk/H9dCR50=;
        b=I6483p359womEijdWyTXc7/sa49hdQ8bCb96e1w+51mCFBGLx2Xej3clF98DS0le4E
         uzJ8uNnHvAh8NwihXzpb65aID14zHyJWQSkOxX3RwGwza9Dk7kiyo70g5XQfuqwIiEQe
         qibXxuZPXO/1lW/ZCM0MkVHjNaXhAfVNHnWxB0h77MxB5MMt7oKGPyxdUXgXf28MaSFv
         NwVFPBIcMJbOTS1uyRFXa2T1X8ObR3a/GQlgS8P7UuCJmGATy+y3Gh+zpAvq9z2pEsY3
         VPWKFWlUs5ZQpHX0ZjbRRfTo0TnlpYG1p9xlgpTAYzNm3nOM5PfThsANBZKlPcfUiJ+F
         ouVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kvMaLDZBlWc/s5LSp1Bm9S5Pn7v2oB5MUTk/H9dCR50=;
        b=sDZymmN3UkY/uLimFlULzg6ISFdML+/RFOuxVJOeli2K5c7HcB25mca/5LHj/AEAGx
         mwS4FNizXyi0i7PFfuG+Q2ZoN9qwa39LXimqqBmNJ1mt0g7t+okKqWbBLDOxAzcB7PSl
         13d2swMZdi7ERb8cqopo+QcrsYbVkqnV4nBLkFeavb3wSpEDu327N1d9ZHdvLI8WYFSq
         8dM+qZ1nSHE33iMk93ezrggPQ/iFQG2DorO08/7v4eQh/0pRjNc5bdKZCYxezCr8rRYg
         cyks6ysJqNHeOBRoXZaBeIQtAf3j6QLdpSp1RynVCKhG5IZbweApX6gTpYZFeRcFtcIi
         OH9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY0WcZ8zuUc4JrLtxPKf3OT25pnI3e5GiVPkRGUCg+yvtMofK4q
	Vig/1YtLom2yAYS2OBwIx4E=
X-Google-Smtp-Source: APiQypLn9FMYumKSflCHo3KO1cMi/ZYJq1/dsvKqmA1mxR28msLE5Vw+oreaVGSa1CCDxAMV9rDCLQ==
X-Received: by 2002:a17:90a:210b:: with SMTP id a11mr6992709pje.31.1587061462845;
        Thu, 16 Apr 2020 11:24:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5d97:: with SMTP id t23ls3521538pji.0.canary-gmail;
 Thu, 16 Apr 2020 11:24:22 -0700 (PDT)
X-Received: by 2002:a17:902:d88c:: with SMTP id b12mr10493885plz.142.1587061462450;
        Thu, 16 Apr 2020 11:24:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587061462; cv=none;
        d=google.com; s=arc-20160816;
        b=Em9hlGSTiLC+mWrutSczdJPUSwVpdMGGEbd2lyr2iDFQ2HTQhRQl8bFhesV5VXevjE
         IoZCZW8MdRTT278J+6pRe0aWZxhriKtMfQvI/dO2SMD1BxmcSsNk5HKI0xtjIZLLTdsc
         iRsJqnIb19SF5gXoKO/Ie9Bj8khXvOpoLrL31bNSsltzD5xMn9q6C36j67BbYj0BvRPG
         ttIO2OQ55Bbs9nTRU6GmUIz19rB33V66MDPxgBpoSmWajs+eFqh7hvZp/SxvKmdUM+pb
         dYhzwKh2H2hG/GxpsxguRJo7kvpv+p6aNIMwZsm8n+H1QqL3sWCgVOHYdgQg+OAaNAYb
         QZ9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2E+VoUpcxjbQphezSMSElLeeuveF/zt0QguBrsX5PCw=;
        b=e9Lqh8e1iHnnpNTwZO3l1geshUye9Ez9Ka2HFTZTgoy+/io3JMHK5qlXuRRBjVsib2
         dhmUKnJeUJtswTi8m8PdWZs3IIRvdsLW5rJgki45V8NIZkCicpeXV1FxwtcggE4q92ix
         bjv72ZZRV97gzNL/3rFCyxhXfJ2FZ3BMLFtYUD98a+g3vtHCuISBnWp05V7YiMQTW9O3
         iKRCvqPLVkNNI5XhzFFw/SNeDLw8Kds0cqdZq9POpX+gS7jsaz65RHyvvD4GC+yppuI4
         cWu7arqHjWwB4bQVA5MsEsJn28g3vwSX/nS8yAcNWQJbVf40WStmjFaq3nsYOIi2Pq0Y
         v0LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tU5V57h/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id g23si1753486pgi.5.2020.04.16.11.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 11:24:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id o25so17350924oic.11
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 11:24:22 -0700 (PDT)
X-Received: by 2002:aca:d705:: with SMTP id o5mr3958283oig.67.1587061461676;
        Thu, 16 Apr 2020 11:24:21 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id f45sm7307785otf.30.2020.04.16.11.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2020 11:24:20 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Michal Simek <michal.simek@xilinx.com>,
	Manish Narani <manish.narani@xilinx.com>,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	"kernelci . org bot" <bot@kernelci.org>
Subject: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
Date: Thu, 16 Apr 2020 11:24:02 -0700
Message-Id: <20200416182402.16858-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="tU5V57h/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
uninitialized when used here [-Wuninitialized]
        return ret;
               ^~~
drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
'ret' to silence this warning
        int ret;
               ^
                = 0
drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
uninitialized when used here [-Wuninitialized]
        return ret;
               ^~~
drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
'ret' to silence this warning
        int ret;
               ^
                = 0
2 warnings generated.

This looks like a copy paste error. Neither function has handling that
needs ret so just remove it and return 0 directly.

Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
Link: https://github.com/ClangBuiltLinux/linux/issues/996
Reported-by: kernelci.org bot <bot@kernelci.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 16e26c217a77..18bf0e76b1eb 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -735,7 +735,6 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
 	u8 tap_delay, tap_max = 0;
-	int ret;
 
 	/*
 	 * This is applicable for SDHCI_SPEC_300 and above
@@ -781,7 +780,7 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
 	}
 
-	return ret;
+	return 0;
 }
 
 static const struct clk_ops versal_sdcardclk_ops = {
@@ -807,7 +806,6 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
 	u8 tap_delay, tap_max = 0;
-	int ret;
 
 	/*
 	 * This is applicable for SDHCI_SPEC_300 and above
@@ -857,7 +855,7 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
 	}
 
-	return ret;
+	return 0;
 }
 
 static const struct clk_ops versal_sampleclk_ops = {

base-commit: a3ca59b9af21e68069555ffff1ad89bd2a7c40fc
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416182402.16858-1-natechancellor%40gmail.com.
