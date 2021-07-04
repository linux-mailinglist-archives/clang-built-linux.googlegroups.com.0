Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBYMARGDQMGQEXIYI4VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF2B3BB1EC
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:12:35 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id t11-20020a056902124bb029055a821867basf57811888ybu.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:12:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440354; cv=pass;
        d=google.com; s=arc-20160816;
        b=l1BsDB6NFp6cD58Og3JGAJIoHGD9AijslJyWsStSHtwTlGgAM9fX0iaMRFawPpXsM5
         QhNM7H6GOfBDZVY0dloBPgv0CQ326O+6QCdvzh5W6H2Whs/5zhUFIT/TcLbb2tqswrwZ
         Y4er4FxnIYo3ZOyR+qakz47LCN1u434wS5y8SMHlZbZKAyyvAdYQoDoQukXHR2X/m11e
         KebkL5mZ/mp/08SRhACY8OKv9f7E1p8QsQcpPiERIRHGnAQ4yYvC7nnK2BMsytO/B+hT
         Ni8MNhzB2UNYVsMHIyYijfRDUeR2JANihXb9xjph0uOmrfztNBb4Cxxg6YmJUCSIS0xp
         ZXBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6F47CRpmEpHQzOur0EFGvpEKn3SJcdEy1vMBbjXxNHE=;
        b=Cv75ciMECpONxrGK7rKN1T6AwNkfqbd932hj4sotIRxzSLvCM5975g5Mryu8v+K33m
         vrIbZCovMpI5ZbZaNQvq2wgZ7RfYGe+bto6eHReBhLToKLSYJs+4JuT64l7Agk49vxsu
         adyn3rwToXmiG8vJo1RkWYf4TekDl60oeVc9tZr+hU0dRIvs2C1cNs6Yr1jCRZOhGJOC
         koUmwt2xZbP+pYGuRSgql/gvy8gLJnKqIsGe0LbaIYPofAoDeEfBeY951bwDqARMsSDP
         0bILYgR6YmfcnYGwtY0vuQPyhjyi3rzw1uUJWyQhph9slZGU+BUQOIRAblkRE+7IRCnz
         MScw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kITmCfJ6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6F47CRpmEpHQzOur0EFGvpEKn3SJcdEy1vMBbjXxNHE=;
        b=M5fimoN39e0QnEf+RTis79E/q7j8Rv4XW7+vfhIoGASt/3g/CsEYBIEiN6Y9Afm8Wn
         HWmQdvkgfmYZjOgz+LG+ra5BOIPL9KzVu7JOvgT0YRCbA1EE+si8BqO+S989Lx/3x7T1
         1KKFOSLD/so2wDgvnvebV6V5nfpL2K9tKGYucHbXsmx3A/82rL5ADCI7f1gel3zpDinV
         qe0hRUthqi/kt1URldHyIt6MRu6Tsp+LxG7eV7z5RMi//gVYLbVTWVIt4qD6WFKJHQbS
         pqroHo6elVkdFKQmOB4Uzrrb/ZcpzNTengBZ53B0LK79eTZEfXrfv2tmA0qtYsCerlHI
         uvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6F47CRpmEpHQzOur0EFGvpEKn3SJcdEy1vMBbjXxNHE=;
        b=ouk3JbUULTjnMEKzYvahZkmXtUXNE98m+wrgMGwqxUgvgdlGQqnfXdjG9NHETyPJZo
         0dFigJ3//7thq9/t7HI8PWydPmeLu5oUZGrgYaA0mvSxmz7UETr28KV3br8b777r83vN
         pXwpLAJ48UvP8ZY+kiI0fg4g0rMMImjAcucAjmyz9hZeYZ4lco3T0G5uQwbcKtaqW5mD
         Ne4MBkjMmC2UsLrl9eKWsKkAEMDDX6tRu9iOB4p9BNJ2VwCZtTdOlNPL29C7z+LRXcds
         4Kdjj4JXaxKTlifglBVadV/89xk6Q5PcdjzkXq8P4u39rDjol4vOCswvChuQYUjPfN9S
         yV6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Mn0BExlSwAAOKRg1KKq+/bAUkYn+c//1znadpRqdoTwaSeBr5
	hAnze8/XasEqj9QtQEtIhfw=
X-Google-Smtp-Source: ABdhPJw8rcZAbBA4KLR8F/O5xoCyzzKqJfCjKKJPsgLg9LLr5FQuo9cYuG0M8zq8+0U4aRMSQ7bWjw==
X-Received: by 2002:a25:b04a:: with SMTP id e10mr14731214ybj.328.1625440354028;
        Sun, 04 Jul 2021 16:12:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls2171415ybc.2.gmail; Sun, 04
 Jul 2021 16:12:33 -0700 (PDT)
X-Received: by 2002:a25:1988:: with SMTP id 130mr14719458ybz.458.1625440353503;
        Sun, 04 Jul 2021 16:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440353; cv=none;
        d=google.com; s=arc-20160816;
        b=ODyDJ8nUpgM0QlkvuI9j+tXzFT7+VLo/aNpf1DretuhVkuwrdErnp9ARPjbS+XX9ii
         v2auCo6TxSUoPDUw1OytnIn8BdEHwo1Yqj710Gi/UOhNpUqqDkysIB/iW4/2Lu5afhta
         FB3/jsB34InbC1/0Gx1sVfkSYxEl+0ULOPXKkJJWhBJGHnOVTtMxlY+LZ2D6vgPy3qCA
         VIn+kGo56j4hX69iYjAzPpmNgQPhe1VQHzvcptzgr6s65CNNPlTupiBSKAaiSaySGrUY
         oT23QomkCeOLjXfe8AC7UzajzBNcUxFA/g2U7a94j3s3oxVGtfAlefZHgXK0WdExupP/
         Db3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Di0JPKhmGRoLfFKfprqnbpwTRgivgDKT+SaqWq5aN/M=;
        b=g4+Hc/eY3JpOadWN1T9COeMO3cnFvuM4seiDvfMs5PUPM7Qtj1OLlnf6SEu79f/Mgc
         1X41xafvhhegEjQn6YOUpNuRLZqCSmH7nouWe4nrPumiRYtWbJ2/sKnnyWBq6x5hYHMP
         yIkDPByTFSFN3PFhU4uKV+mwCgYVu46eavpVLbNy2QTt6XY+bIWuEnqNHU0FatkFVxXu
         iFtugqyidNvmtESCYwDL49cYXKHxsfxvCEazi7JB/zbNZA6e6MTCKQKDAEJqOhP8/IyI
         zbk3zLQ2Hgc4EcXzaCMpQ/KGHyiDQDRm0QxS0jBQLiSyO/T+jDyY/dhn0z1WfDSTDxWN
         rFTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kITmCfJ6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r3si352997ybc.1.2021.07.04.16.12.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 518D0613D2;
	Sun,  4 Jul 2021 23:12:31 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 07/15] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:12:13 -0400
Message-Id: <20210704231222.1492037-7-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231222.1492037-1-sashal@kernel.org>
References: <20210704231222.1492037-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kITmCfJ6;       spf=pass
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

[ Upstream commit 9afe77cf25d9670e61b489fd52cc6f75fd7f6803 ]

Remove the unused macro ICP_DH895XCC_PESRAM_BAR_SIZE in the firmware
loader.

This is to fix the following warning when compiling the driver using the
clang compiler with CC=clang W=2:

    drivers/crypto/qat/qat_common/qat_uclo.c:345:9: warning: macro is not used [-Wunused-macros]

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_uclo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_uclo.c b/drivers/crypto/qat/qat_common/qat_uclo.c
index 923bb1988973..28e642959a9a 100644
--- a/drivers/crypto/qat/qat_common/qat_uclo.c
+++ b/drivers/crypto/qat/qat_common/qat_uclo.c
@@ -360,7 +360,6 @@ static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle,
 	return 0;
 }
 
-#define ICP_DH895XCC_PESRAM_BAR_SIZE 0x80000
 static int qat_uclo_init_ae_memory(struct icp_qat_fw_loader_handle *handle,
 				   struct icp_qat_uof_initmem *init_mem)
 {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231222.1492037-7-sashal%40kernel.org.
