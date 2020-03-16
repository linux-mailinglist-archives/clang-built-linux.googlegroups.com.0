Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQWMX7ZQKGQEW7KT2GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC5418743D
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 21:49:08 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id f14sf12923565pgj.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 13:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584391746; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7z900EilFzh6Vcf7TREmUxmGBeF/xkdE5wrjIuxdgBZ88+iwUv6mHgQfoFQdVL0fl
         bdoZjFpmxYj3o6izRl9xKNSl67GS20puePufqTuoMKMvzyMRFVI79zZhg19UBnLMnQal
         zASPWNgVg9QfQcADduFMsPZzGM7qfwns17qlzTNctxjbbG5yDaOY2xWiiEDGnN9KATWL
         u66zNyZKD55mN7MxgcYkFEzMCu4tqOfiPJioyInbhljQkuH6IInFIRsH3nQ/yxHGLzmt
         pXIBYMA/JYqByB1rTNuo2PIZIHlUvPJkeCP3V+he3wz0Nr9FQ75pGS+kgea0/WIbV5W7
         4kGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=RGIdAMdvMDOtsQ4tJlcZERmCGfPKZ3qivxIVhHljyys=;
        b=ZSbyAPSURKpWTL+iGbP2u5SfrGtGldsWP/NlD4qbkjepBil6VPp/FWQeidqkfHlAre
         s2l8pFIZ1YLPd13NH7NzyI3tcLVITQVhDvqbXYizw8f3K3egiCKxQpds0rwYFG5aF81R
         ZmQJppi9AsfZgrd0rgIUTD5XaAIEzqj/6QbMuGYZ/oIl6DuQU3fFtxWJFbdkGXQeR8W9
         5/LPWliF5sB8QkzmHdAoyLC2VUKu/8lsPaxT6TNT45Uqy9bpP0NwWh3CAuKVUr7oEHyN
         q9PfLt5xyMYemFhnPuUCyJ51kch2M/qgLbkK44XezFBnBZ/EWP5yJ1tUwVbAdwYs7ZjM
         9z6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Cb7/GBkJ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RGIdAMdvMDOtsQ4tJlcZERmCGfPKZ3qivxIVhHljyys=;
        b=VEpC9Csj12Gq9l1EJnfvaxhWb9uyTvPRTK9IbzM4R6WcDXrsukK6NGw9QJCbH98MLG
         jbLiBhH5XeEuqDRoUHxpG8/KQj39wn3lYIbMDu7lqd7hPCCpBElW1DBj58g+5PO5tVF8
         57g7GaevqdlUPQ1iDFSeh2D4iRDNkHQfUAAvj2B6AC8f+J/dj1b5eDQ91Z/0BUJbdEb4
         OT3Hupb1efjKmYaz+JE/Ay4NFo67XIXXRV3XNAryvXPDN8FaaR/kDjKNuBUVGhNVx+Z8
         1bsWWOUX9CGz6vbCv8kQzIAaxs4e7484zzp0IZY2Pn2kdJ2tMNFdr3vATEz92C2r+ehv
         eing==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RGIdAMdvMDOtsQ4tJlcZERmCGfPKZ3qivxIVhHljyys=;
        b=g+cCp4Ey3RUMQWyr6uD2TDt6GPsmVJEzUbZQsy8lnQAPujYG1ZS678TKu00uLGLnik
         QZ5mWKPy0tTdAuvjanl/2IBIe3OHFU7VJFO/oi/LKZRPxdCZTBzAoY2Jyvgewew34bjX
         lRYuL1UbISwaPdgOn9Ce1mIoUluzDsdTyISei7EQsgZWYHTQSAKIodRq5IrkK8p07twp
         +LMRwFTTpJ6o25aU1YccR6zu8UTYfkFmITUo0seJpIngII2I/IM2V4D5xHHYJR8yDWbT
         4D8N2VLDRf+u8kuEvd1H+EZ5RxJJPRhps6Dlz/fQntCCKu7B//3//h72tHpTLHmBDqYW
         n5oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RGIdAMdvMDOtsQ4tJlcZERmCGfPKZ3qivxIVhHljyys=;
        b=pLmfhPVnGNzzqotFk9dY0qbQI7Vw/q5PhAz19nrhXpk6fmuQqJuJsxPeRkX33sNCWk
         bRii4h9wwRto/bevT9DgTKJJk2GNJr8zoh5PnDn1RXkdBq6lkNWLcj9KdwV42DCh1pQk
         vkVhpNi1Rn4tGahpY9bQIRttFHqOOElZfnV1TGgMQE9QI8nuiQLp/0aLBgY54GCQNGu3
         NSgIv6b9FCpz9hN1f4fwfoIf0AuJhstYT/vgvIqfB3ZuGSaNJ0/7tCVOTy97LMPbPOxn
         WgIZ+RQblGJ4ovZ7DKxlI251zj8Z+D4vT139+gtitSHm7IYYLIki4x+sRX0+BRKVXVdF
         VUIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3LeKDaV21VU50ayNwQE9G2i4YBLB5ZgouOUAoAodEMdKOY58Au
	9vRpXqgwrLDWaeqdOPeFNYM=
X-Google-Smtp-Source: ADFU+vtrdtivU5g30p+CDje0eJqD2OvZHOk0pDnZt4A/TaVjnHRtfYwiKj+IqJzhKgO0sz4jGWJXkA==
X-Received: by 2002:a63:82c2:: with SMTP id w185mr1671733pgd.382.1584391746556;
        Mon, 16 Mar 2020 13:49:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f8b:: with SMTP id t133ls9700352pgb.1.gmail; Mon, 16
 Mar 2020 13:49:06 -0700 (PDT)
X-Received: by 2002:a63:9043:: with SMTP id a64mr1648001pge.308.1584391746125;
        Mon, 16 Mar 2020 13:49:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584391746; cv=none;
        d=google.com; s=arc-20160816;
        b=sKOc6shk1bEiatjTwSEp9QnjhvWVS+cvVjwopvBICI7sKDSVoosUHpyB0KqOzJF6Or
         yuDBoHAlUehWFfto1qLF2URJ+e6Rh/JLp4VSYdGrz+xxROIUuUbkPz0XK6FtaXlq+bOo
         y1MVNkmTl9+yDeyUP/EQfR1DSEPn6eyjwDK0ADIynW9Jzlz3QG7lZjKJAQVa8vDyYh5N
         19Ubz2w27IjZJTkaycUkVtoO20/329BvBbFKQm5ZNjPHjHQwCJzHRWrdrPABcEjj9tCo
         DUVqLeg4dZ1r3VuG4EMyxJBZaAjQ215SlIyka5Vz7UETaLhR79CxMGtBEaNTPUWfxg1f
         0hKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FwKpB9dezgsGNUxz1nNOwjc19tHL0rqvKXfkEKEGY/8=;
        b=WIeuZFDlYtp/WEV0tvxa2x8Efab9QkZ6Sz2KxeUmSi9kZtNNQPR+8r6qXYPmGvLQda
         Phvve+W1qjl0TiWGnE7R7TsRd/rAeUuQjmcz9T49wCsAW7v28/JQZXBUu9+9Ux/f1rTC
         sFK7LwdpRzUUXFmDYFrI55DerJ9BfbNKtn1InwXteIDyMALIqNNCj9QZxx9dOJFURapD
         wU7JL3MxIhEQVcRntNTbsXFV5iAGbFsDi0k3jXCKg3Ymj5jDfOZMM/VMWoBEShBZqo2E
         FYn7DBpDSxzqFEnaThnK5KBMITKZfRkJauBFBhrwmLQaGZZCP1dGa6ya0xq21p5CYjIm
         eiaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Cb7/GBkJ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id x12si95501plv.3.2020.03.16.13.49.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 13:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id w13so19394397oih.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 13:49:06 -0700 (PDT)
X-Received: by 2002:a05:6808:4e:: with SMTP id v14mr1083539oic.70.1584391745414;
        Mon, 16 Mar 2020 13:49:05 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c1sm329747oib.46.2020.03.16.13.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 13:49:04 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
	Andy Gross <agross@kernel.org>
Cc: Sibi Sankar <sibis@codeaurora.org>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] soc: qcom: pdr: Avoid uninitialized use of found in pdr_indication_cb
Date: Mon, 16 Mar 2020 13:48:55 -0700
Message-Id: <20200316204855.15611-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Cb7/GBkJ";       spf=pass
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

../drivers/soc/qcom/pdr_interface.c:316:2: warning: variable 'found' is
used uninitialized whenever 'for' loop exits because its condition is
false [-Wsometimes-uninitialized]
        list_for_each_entry(pds, &pdr->lookups, node) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../include/linux/list.h:624:7: note: expanded from macro
'list_for_each_entry'
             &pos->member != (head);
             ^~~~~~~~~~~~~~~~~~~~~~
../drivers/soc/qcom/pdr_interface.c:325:7: note: uninitialized use
occurs here
        if (!found)
             ^~~~~
../drivers/soc/qcom/pdr_interface.c:316:2: note: remove the condition if
it is always true
        list_for_each_entry(pds, &pdr->lookups, node) {
        ^
../include/linux/list.h:624:7: note: expanded from macro
'list_for_each_entry'
             &pos->member != (head);
             ^
../drivers/soc/qcom/pdr_interface.c:309:12: note: initialize the
variable 'found' to silence this warning
        bool found;
                  ^
                   = 0
1 warning generated.

Initialize found to false to fix this warning.

Fixes: fbe639b44a82 ("soc: qcom: Introduce Protection Domain Restart helpers")
Link: https://github.com/ClangBuiltLinux/linux/issues/933
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/soc/qcom/pdr_interface.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/pdr_interface.c b/drivers/soc/qcom/pdr_interface.c
index 7ee088b9cc7c..17ad3b8698e1 100644
--- a/drivers/soc/qcom/pdr_interface.c
+++ b/drivers/soc/qcom/pdr_interface.c
@@ -306,7 +306,7 @@ static void pdr_indication_cb(struct qmi_handle *qmi,
 	const struct servreg_state_updated_ind *ind_msg = data;
 	struct pdr_list_node *ind;
 	struct pdr_service *pds;
-	bool found;
+	bool found = false;
 
 	if (!ind_msg || !ind_msg->service_path[0] ||
 	    strlen(ind_msg->service_path) > SERVREG_NAME_LENGTH)
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316204855.15611-1-natechancellor%40gmail.com.
