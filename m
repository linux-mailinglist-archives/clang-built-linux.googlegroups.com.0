Return-Path: <clang-built-linux+bncBAABBGMBSWCAMGQEEBAO35Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C0736A673
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Apr 2021 12:12:42 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id k25-20020a9d4b990000b029029b46dd5af9sf12563152otf.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Apr 2021 03:12:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619345561; cv=pass;
        d=google.com; s=arc-20160816;
        b=HAjPNHxusvWzHz66hhiu4uh6i4uDhdNNaqNOV0Fa9arK/Q4+6c547/CklgnEAaVrXk
         GVqxvWbZohoMcYLMOujOiwX+2Hui28tt2pFOBECGjBWSB/RvQ8OH9JEf/ZkHY/Qg1jjV
         22jp70fJad0DyNpks7003WMaW175IaCIFjg684OnmVpPQcIbYw3eDGXIq4Rs9RunG3Y1
         8ZEa9H9enDhGUbNMqNGu9Zsb7Jf99TPxSFpXCuVQfISga7pbM3jPRqTaj5HhyEpQ6/gE
         M11QAQ6/aIA8xm7GUws99KX0yg2Ap5fhrEGjX01Pkfkv6+gfF5YGLIQeDcPRnY8M/YWt
         PMog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=hHcZ0HibjBhiltqCREWSDLRIWUte7V3/Ff+XYpxEIMk=;
        b=ONee3mFyPsddig01qd3qaFBFdnVw2Wxjv9gQPu0LPmGFCkzEtFMJgckKHjkZNh5Qzn
         Wu75l0NrFcqVdd/rDVZ9Rzk1bdfKXivu2iwoYPwHx5qsvpifyqpSbsvB8iQZDBWvsUtl
         x+OQQYc5+NRYGVFiZaToZLJVEmOGzMK0YfbBN71SWD8hP5hvCBoaeCcdMC72sqKZ+uIQ
         GGQ6zPUbZ+ple5su5EwxzrG6E9zlUL9uXEtXLWtZK/fcIHENniAwC6x9kqdPr+Bs4qzr
         Hj78dixnnPXSZCJ1XS2dr9KKk59zoxPmPAD/XGldExLGXukLvC6uzZ32+PC9VyYXtWsZ
         tM+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hHcZ0HibjBhiltqCREWSDLRIWUte7V3/Ff+XYpxEIMk=;
        b=TnD0LqsvV19hV4qIscUzZfnlsRVoCp2d/iHDyabb0gUCzFLIHj2E4zcKOxt9tNYl5A
         hAo2KSocWAS0om2SctQatedoVPNNFICEM/B40rKTmRoEOCLSqZO1zMRZ1r4+2wGEV+yt
         oJFM4HYxrwIx5OwoezSGMRwO1EdEdHbdFw1c0vuc20tihyi/S5eQqyqeBrt97IyHhr2a
         Fa8uvRcJY3XxXnXKFIhfSKTkLxgHpLvZKjZnC9uB3W7yYWoQqD93FmDZBwGtpxRSM43P
         ADvGc7FiuiwtwEvAzrzHCwUBb+n8BBK5egnzU35KUoHCXHMmI7/1pd1nUuJDKk1jpE50
         u+YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hHcZ0HibjBhiltqCREWSDLRIWUte7V3/Ff+XYpxEIMk=;
        b=PO9vh2VC/3JdEzungHTrll+bi099Zh+hUz/BCGqGZCRi5Lem4bOdMoaLrcuZDncICA
         seiqkFQLVVn7pr8NWQ34sPNSjWk2Ji+ITnHNSXUupfM0R1exe5YsYaa/I4FbhMd/iRa/
         w6Rb+TBq78gsw58yDPD45KWWksxua08oldZ2TgBV0noxsi3hSwxR66x3B3oStgQ0Luxx
         eXT4cAlNx/QnuCHjV4ojy2Yy1WLmszgcHvIIIodaJLQnh4IZ0bpArcuLiyV/RJl7Sxhi
         flI54sj2xhAz/mp1cgRIIvt1+8T28f1VeiRdEi2JOc/oUhwKthSgbqGCVTXk3hMJmECD
         +fcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ze6b09Cs37kjXAU8RDxRZT3krw95qfn4oIaBZSIpw9GHCyNQh
	2028WvdTbHnWO7s5JSM1jU0=
X-Google-Smtp-Source: ABdhPJzckE3Oqova12YEXlBeXCA11Tj7T9Q3fNL0u4nH5i7iFMAwcLGD44Kx9vT5h7S9IU2rP3qSGg==
X-Received: by 2002:aca:4fc8:: with SMTP id d191mr8712324oib.139.1619345561382;
        Sun, 25 Apr 2021 03:12:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c4f:: with SMTP id z76ls3609776oia.1.gmail; Sun, 25 Apr
 2021 03:12:41 -0700 (PDT)
X-Received: by 2002:aca:ea8b:: with SMTP id i133mr8549558oih.37.1619345561035;
        Sun, 25 Apr 2021 03:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619345561; cv=none;
        d=google.com; s=arc-20160816;
        b=bM8z2JWi+ttUxFJuAqZTHTT+vYcvEDCqyDqYZ2OVm812ncxtPOsozb+mmUv6QgPdNX
         FxURxOvIrlWtUdn+IySO0HC0UxCF4rJKShMLRrIJtaYelzYKDbBY0n4cYQ2nsvTxT8se
         gbx/bU6lZjJn58p7WNYN3sziVN64XYV3H5vxEybXNnjwmSWy/iw8fUlMIkIygz3MC+WR
         q7u+8DjQ5bo66E3yMhLKcsaXFhVkKO55FUcd6xXndTQlmaz+oErLlOMIjQ9XIXHdVl4l
         nhh7SLTLyJ7nuhqccX1vx8e6+8E2adgBDYbDT5wL+/dcUbTgJtbU0xLQ5TwCH1ifUtr1
         67ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=nGMTlOkhTKF1MntNjtto7WH1VbiGB8nVrjGVQwkdSM4=;
        b=DjsY/buy3Hx0WEgxSI9C5VqLk+QXEUEXKz3v4K4yxM86vdPb6penxkE6cvuUbxRFGz
         wntyhc/HbnFT0WIJWApK2sPw6Hj0TXBr7Nv4vixQNuwAeRJCW0iLWVdOcHbJU8mZ1gUo
         /bo8OU+2MGzVXDY/+ECz16YfMpPtvGW0wi2i1v3d4T8hejjJ/94BXwZF4sBXLiwq++or
         X8oF88zLki0KdRdEP23ZG/hKmFzrlOZOuB6B6M11cP634BisGppk0MK/rJui63Ibfjon
         xtuyZi/1mwQsupThBstR96bZFfLZKiIcXPhRFSuIM9NLowT1dVykljCxSJp/DPDm6pWI
         tsYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-45.freemail.mail.aliyun.com (out30-45.freemail.mail.aliyun.com. [115.124.30.45])
        by gmr-mx.google.com with ESMTPS id b17si1213529ooq.2.2021.04.25.03.12.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Apr 2021 03:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as permitted sender) client-ip=115.124.30.45;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R431e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=12;SR=0;TI=SMTPD_---0UWg2GZT_1619345556;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UWg2GZT_1619345556)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sun, 25 Apr 2021 18:12:37 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: perex@perex.cz
Cc: srinivas.kandagatla@linaro.org,
	bgoswami@codeaurora.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	tiwai@suse.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] ASoC: q6dsp: q6afe: remove unneeded dead-store initialization
Date: Sun, 25 Apr 2021 18:12:33 +0800
Message-Id: <1619345553-29781-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.45 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variables 'wait' and 'port_id' are being initialized, however the
values are never read and updated later on, hence the redundant
initializations can be removed.

Cleans up clang warnings:
sound/soc/qcom/qdsp6/q6afe.c:933:21: warning: Value stored to 'wait'
during its initialization is never read
sound/soc/qcom/qdsp6/q6afe.c:1186:6: warning: Value stored to 'port_id'
during its initialization is never read

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 sound/soc/qcom/qdsp6/q6afe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
index cad1cd1..442bf27 100644
--- a/sound/soc/qcom/qdsp6/q6afe.c
+++ b/sound/soc/qcom/qdsp6/q6afe.c
@@ -930,7 +930,7 @@ int q6afe_get_port_id(int index)
 static int afe_apr_send_pkt(struct q6afe *afe, struct apr_pkt *pkt,
 			    struct q6afe_port *port, uint32_t rsp_opcode)
 {
-	wait_queue_head_t *wait = &port->wait;
+	wait_queue_head_t *wait;
 	struct aprv2_ibasic_rsp_result_t *result;
 	int ret;
 
@@ -1183,7 +1183,7 @@ int q6afe_port_stop(struct q6afe_port *port)
 	struct afe_port_cmd_device_stop *stop;
 	struct q6afe *afe = port->afe;
 	struct apr_pkt *pkt;
-	int port_id = port->id;
+	int port_id;
 	int ret = 0;
 	int index, pkt_size;
 	void *p;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619345553-29781-1-git-send-email-yang.lee%40linux.alibaba.com.
