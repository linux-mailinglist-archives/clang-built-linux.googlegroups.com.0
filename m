Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBENQQLYQKGQEIK74RBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FAA13E422
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:06:26 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id x8sf14021692qtq.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:06:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194385; cv=pass;
        d=google.com; s=arc-20160816;
        b=NWTajvWKSq5iyBu/IBDI8Te0c4RYGKeVwHhAu8/q4s+FnQPf2wNylK6gaKhNi6Y406
         9hrSKJI+yqzFrn4+/muc0r9TryvzjoTpvaUzuR2WJIC/JiOS+hFP0C2KQOeFQP+1gTVA
         O8wTyqsa8G/srOsWT96NWIVbShttcR5jprcDxXLEWOP2kmBgNrYZGcf3OCIGBTmdKhiF
         rW9v4cOG+1Naxtsd1D0VSVE4bCrQYwUkFEldt9RS2uHxMPbee4O26VbD+girVkt5+wMw
         iMgic9kePxlHJQXecvX+Sw1OKIy0hL2wT59koZ78tFbQLlgpmQVcDlPQAPB1CITuYEDT
         2usQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NuwETjywx5deEEubfA27SZv2FwH7U8LoS7CDSIFn4n8=;
        b=T5OQHIGFnCFLy/s1dSsa97Sc3/J/zbc7Aj3nVEylHPmtoCMggtxp8fQmEkXIv5+Yjj
         yVuSQRLQa1rCMMcAwBpAsW3kEBvV6K0/Rg6LOc5l0dfjn8Lx+7hwO4SQQNOL1U0WWn8r
         g6t07tUop3FL0/zBC3//rYwjUrcmW5fsOVmKh7IWP1TI/pXodmxXlAYNEySf/XLPDsCw
         r5lCobuiuxzb52EpGl7Fckjmr7ya9YziEjOYwmRKAgs0diQkaTN95eF8eQ1oPeU7oNaq
         LHtkRNuHxhxLvzWoVjdBFfMrpcREAQprn0SPMZHAXSP9som0fiN5yxsEsglGe74Y6ez1
         XrwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XtWKSIhU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NuwETjywx5deEEubfA27SZv2FwH7U8LoS7CDSIFn4n8=;
        b=ecCp3U3BPRJI6CJNLWWeUkShFQqgmswtj7IrVQI8mpCErq+avQKdvGd5XYADBlewXd
         P8vTharXZdAIAIAtCDm9cLmNevKTFxobHd/QyIBN3/WN07FdfYaImKTGobtGaBuVFiX7
         FMe8pCcLPtE/NNf/54qgTmtpx4PWaPXiqaMVYzBGVNc9Z2bvMzihML1v/hgXzXm5F07L
         EyhNn+5tSXDiUjxH2HzzTyBzHF2EzmvD+TJuvgtYUx36WRQwYiWzAPr8gBytjjD4KCpk
         2OQM3XV4VXwc4fUsn+lXJwLnnELoILLMB8sHP9HqRUlsETu8+AR7L9CQuTH6SDsGK5L9
         Lf0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NuwETjywx5deEEubfA27SZv2FwH7U8LoS7CDSIFn4n8=;
        b=JvhACcIpuwBg6eH6OV6l2zJfcbD80U4vBQ6iRE2K0e9cYuCT5RKbVoIBNJD5Ton7aM
         BIAbiIPnnsmIfzZkPNeedGabqk19qNyXjIYV8HfgXy/aHTVUPcWY+7M3fYivA3hh06Gh
         uT2B5oi8RghLsLniSoIrQe62z3mMPN5ox+qPMESyPmh3uxFScf30wtXvNLIfmhVMKYwL
         /CStxndr1UvQUAi4kOK9uW6MINv+Yama3XDqJZQ0dPhUAZYMeeh78CVTmoJI+hjgs8HY
         imewfGWmG8yYcTeBxJvUuu/Olzy5fPh9+BwX1gVgIjqrEW3cqLA1bcoP0Ce44ks38u0+
         kffw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUC90ot8KdhY/kF/xKV2WA8GHpwbfPc/Lr1IFoYe1JaWVjc+8RV
	1bwGifIR7SCwxn5zcolcRdM=
X-Google-Smtp-Source: APXvYqw1bYCrj8qKKngk2xT+QEohQE+llCf9eVwdJRHBMY5iodaI//3zs4zpFTRy3Ps9ZaeGDComfw==
X-Received: by 2002:a0c:cdc4:: with SMTP id a4mr3605719qvn.21.1579194385199;
        Thu, 16 Jan 2020 09:06:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e30a:: with SMTP id v10ls5671458qkf.2.gmail; Thu, 16 Jan
 2020 09:06:24 -0800 (PST)
X-Received: by 2002:a05:620a:1108:: with SMTP id o8mr31844997qkk.118.1579194384792;
        Thu, 16 Jan 2020 09:06:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194384; cv=none;
        d=google.com; s=arc-20160816;
        b=yTzlDIy2i6uYCKsUOYz5OTz+q54OUt+iUIwwRMWtZiaV+ar9TEGFmBQx9gQ3fCtQrj
         hzFwZd7AGrkAF0ioPgLFdpVEUlMfHQcgAWuyRB3mlHxtK504ILq/FOA72KzLm7mt4dky
         e1X4w4n1wak9R67L+Pxnf+YAoZWDVK2ACbUBUF15DrOmiz1eT4WBPmfXknDrHxpJVpxh
         AGZs4DuPg1WjC5oL3mdGUvrbDI7t7MY+eTOSCgCn0WMRuFwLyWWq5hle9zSJaTo+cgX/
         p3O3vStevAD8jBO2RauPEynksXczC5Qac4mSqxHTSAQPDX96HKfcG99RlBeYTIk5iNd4
         bfdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4AsLzOhSSM3tMQB2l5gx4YLPlIc4NGdj6jbR4R8c/UY=;
        b=r1bz0ppKQbHu/Y0WEabtQEFl0fT9nuGAdiANdpbLYkwAHOWJFFCYmXKolaxy6ZeGrO
         2lLEFzmW0ewplnr3gdlWNIwW/5a8XbgtQHOrdMxmQ9bR+qa/8mihf1JA2L5N8qT4n5Yj
         kE0pnIffMxSsPLoD7vmzdoFKRM1toObHNZvzzNeQjHZ9x0pxs732E/W9YwQAS+SV73NR
         qT9YQdyqMIG53da1HNK3F4YeZtUnQC3bibnd+pnTj10lODbHMYiHg2SHQOcnC41JQhVf
         N83HpUSyFZvBcj11NZXcte/OPaLmcyh9ZB9tyUHE3mo0QcNxiBF+Jgg3vAUyd7StU5k2
         LUeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XtWKSIhU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l9si1114601qkg.5.2020.01.16.09.06.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:06:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F47A20730;
	Thu, 16 Jan 2020 17:06:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 313/671] coresight: catu: fix clang build warning
Date: Thu, 16 Jan 2020 11:59:11 -0500
Message-Id: <20200116170509.12787-50-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XtWKSIhU;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 59d63de076607a9334b11628b5c3ddda1d8f56cd ]

Clang points out a syntax error, as the etr_catu_buf_ops structure is
declared 'static' before the type is known:

In file included from drivers/hwtracing/coresight/coresight-tmc-etr.c:12:
drivers/hwtracing/coresight/coresight-catu.h:116:40: warning: tentative definition of variable with internal linkage has incomplete non-array type 'const struct etr_buf_operations' [-Wtentative-definition-incomplete-type]
static const struct etr_buf_operations etr_catu_buf_ops;
                                       ^
drivers/hwtracing/coresight/coresight-catu.h:116:21: note: forward declaration of 'struct etr_buf_operations'
static const struct etr_buf_operations etr_catu_buf_ops;

This seems worth fixing in the code, so replace pointer to the empty
constant structure with a NULL pointer. We need an extra NULL pointer
check here, but the result should be better object code otherwise,
avoiding the silly empty structure.

Fixes: 434d611cddef ("coresight: catu: Plug in CATU as a backend for ETR buffer")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Fixed line over 80 characters]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/hwtracing/coresight/coresight-catu.h    | 5 -----
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 5 +++--
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.h b/drivers/hwtracing/coresight/coresight-catu.h
index 1b281f0dcccc..1d2ad183fd92 100644
--- a/drivers/hwtracing/coresight/coresight-catu.h
+++ b/drivers/hwtracing/coresight/coresight-catu.h
@@ -109,11 +109,6 @@ static inline bool coresight_is_catu_device(struct coresight_device *csdev)
 	return true;
 }
 
-#ifdef CONFIG_CORESIGHT_CATU
 extern const struct etr_buf_operations etr_catu_buf_ops;
-#else
-/* Dummy declaration for the CATU ops */
-static const struct etr_buf_operations etr_catu_buf_ops;
-#endif
 
 #endif
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 2d6f428176ff..3b684687b5a7 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -747,7 +747,8 @@ static inline void tmc_etr_disable_catu(struct tmc_drvdata *drvdata)
 static const struct etr_buf_operations *etr_buf_ops[] = {
 	[ETR_MODE_FLAT] = &etr_flat_buf_ops,
 	[ETR_MODE_ETR_SG] = &etr_sg_buf_ops,
-	[ETR_MODE_CATU] = &etr_catu_buf_ops,
+	[ETR_MODE_CATU] = IS_ENABLED(CONFIG_CORESIGHT_CATU)
+						? &etr_catu_buf_ops : NULL,
 };
 
 static inline int tmc_etr_mode_alloc_buf(int mode,
@@ -761,7 +762,7 @@ static inline int tmc_etr_mode_alloc_buf(int mode,
 	case ETR_MODE_FLAT:
 	case ETR_MODE_ETR_SG:
 	case ETR_MODE_CATU:
-		if (etr_buf_ops[mode]->alloc)
+		if (etr_buf_ops[mode] && etr_buf_ops[mode]->alloc)
 			rc = etr_buf_ops[mode]->alloc(drvdata, etr_buf,
 						      node, pages);
 		if (!rc)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-50-sashal%40kernel.org.
