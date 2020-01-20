Return-Path: <clang-built-linux+bncBCYIFQES4IBBBT56STYQKGQEOVIHXQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C641421FF
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 04:32:33 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id d9sf11698547oij.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 19:32:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579491152; cv=pass;
        d=google.com; s=arc-20160816;
        b=RbreDc6kdgqaG1CaA2dYN6l2yxDrIrwLeNxHqf6UhtTCLX1k9b5WSn3qcnT3ew48XK
         cDzlCWrHtNkzf+rSb+jr3kj7NrJc4qmwI9JthGPXcUfAR6e43KUhYMZifuxEYQvjTc/V
         4DWcJCr1HKQ5ExJWsu3rBFjmwPu0qWet/mmjAeWGaDtQfIEjYO+63Htr5qa5AlXESV3S
         yLkPCThuTsdvVH+AFNSxggFaRAa0H1TNaG4VcsSDKxIgfQT9eitLpzZnuwP9ihuQxMYn
         gCgWm1QUAmtoyBIFyfHOJWQTm1I2w9PiXvAdGQX67fpYwoHm3jxwaLovcUJGaLK0o3uG
         B+aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=sWxu88eja/AvuSLyLkWobp6XokzXVEC/udyIb/cmeSQ=;
        b=gJd0zVk57nV1g7+iD5g9ApBq8SZDNxhHqq3PZwaoYNN1pMInb4wOaXbsEX0xhnlCw/
         QrMGxCN0F/hIUrmRqV5Vts9SDpjz7dgsJ1Mx6aUzVfETAx+UztzCZ/ChiagPIs4nVXYh
         1t1a5Pu/w8Emu5j55fzxFldd/f81mZbIpcQbdZnJlDy3m4Ij26AkM7SNn7gQBt97gxuJ
         oSyaRm0gUAcdX62ni3BN1MXfdUSLJwXB9jqO3O0qZbRwNtrhpfFrkzlWixwUaOlagYyB
         lG0AZEAi6z5txmAwVtyvJLhsVWdyw0Nv2jhhTke/4Tnhnm1W460z4LSezumpXfuPF88d
         xqGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoJD4gJL;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sWxu88eja/AvuSLyLkWobp6XokzXVEC/udyIb/cmeSQ=;
        b=JgW/J3/5qF1Axt/fYRmvB9XekQROxbAyqzPljIjbgeq8WwCcvkpoEyjGVnD8t7azdK
         eCYg6BI4UoFgtXBkVf3QStXr8eAeh2XpuIGJqCkzPyUqeoFP+YRsFO8i+Lh6v2z3oin9
         NMZ6Eqz4FlWJqoUURlNRMbSG+G6NOFQ2q6efSWB8PQHl7u4oftduCRCqo1WvrEEtshEK
         Pgfyy4q/umnsy9tCqOoKN+yS785nFqflSwglBdlcGDZKzFK+H40hyG1HT26A0GdRa1w1
         I2zXPN64nAACQvUJsA5NbAMaOaqLF/4cdNFD3/JXfdPpmRKcWCQhd0wyPZO6+bWXhYPK
         ZcQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sWxu88eja/AvuSLyLkWobp6XokzXVEC/udyIb/cmeSQ=;
        b=aJe8COkXBBT1IQt/HCiKObY7GlkGEHYRjVo0X2Z9JAoGDJq/F7LMZvAJLmhZ4ruFvz
         Nu6ja9rwxA6BhwqmDIvTfP/V4coRtcB0oq1HE/yeyDwrhaQbWRUumsWk+6rCt8T6xZBL
         FcBWq0qw5fkQ+qysc5RVgFdasbDe5cvkIzPMNU7pDmZe5zTAGnraaZ00ZFnU/WJ+REEr
         tojHXUwJcSW43r9K/IuPzs9YHUbjL/kmW1YuepfDRE2FRrL1SPk8cMupFBNVd7IFc5P2
         wiVzuwxkDaNysa6EuM0MbUSqEP4p76zhKBvsbtss/dijGjviq2tom8wEfrZ/MHfb+ntM
         E3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sWxu88eja/AvuSLyLkWobp6XokzXVEC/udyIb/cmeSQ=;
        b=jlL1Y+Yt/Ev9iyO21TogjhXsiUkJo1OEyu2cMHbeqzvRS0b1ekytWPnG4OwOvXuQN+
         9UOsFZXflH4m6SVS9jYK2D4Pgqzuahnd/3+hb2UcrEf9QoK1jNrCdRBn7oliAwiv3l2/
         nGrAS/hEh9llJflj5mztZ+NrpF6i8+ZPWe4DvJAM4s07YK1/jTrN5/HFwkRMqtBS2pKj
         J0l+acbMkJcEk4vHJA/+aIYgITLE1WeslLJzYQn0+zuJ4zuVQ7FEl4kMhX+0jMls0zxf
         2DTS89hG7WsGptTOGKfPtl8Slv8xqBvablaIctVgK33wCWGVslPyX5xWZOnbqd9CYyHG
         QEsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvmnBUC5N0+lZDnXfdKv9J+20KCP3WvowUzbDaH93n/qm9GFYa
	lqPshA4V7l+UuNtgDXmLY/A=
X-Google-Smtp-Source: APXvYqwV+cVI/nn1fRx//+VFV+W9BOwsYIFxinhxUnZ8+lYDdnLOBMcwrcJO9kv1xJVwkwHnf6OOWA==
X-Received: by 2002:a9d:1c95:: with SMTP id l21mr14374207ota.271.1579491151717;
        Sun, 19 Jan 2020 19:32:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls5564116oif.6.gmail; Sun, 19
 Jan 2020 19:32:31 -0800 (PST)
X-Received: by 2002:a05:6808:2ce:: with SMTP id a14mr11639874oid.82.1579491151334;
        Sun, 19 Jan 2020 19:32:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579491151; cv=none;
        d=google.com; s=arc-20160816;
        b=VrISYKyGu+YmnTdMi3UK+wpv498cBn3ZN6qYikTq/tOQ3fPZ+0WNue1drljWuR0Te4
         MGUw2Ro/y5fgFc+8PmK5lSj3ABp343Iiw0nahIHepRqs8UxGiy4EeMBHqyxV8zqbErdf
         7UoGmbw5RHzttfhSaf1kWNiOZTsg6tQMgkMuburhUtpL33QUUxBK5mkJoUO+aGL8qT2l
         vL8Tz75qMftpsGi5RjWkJaMS6d1f8/GFEEJr+ez25RSygSaQntaD8eGYnieCm7+FYq4Q
         ppYHN0ddHd82aoMUE2192qKxPREE8i11vyN/3ukQiQ8fMqXVp1Nsclsrc52nmig063Pc
         bvNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kaVyaqcx1+XyBwYscJJnTfM3SI5pH5G1DrO35gYdNN4=;
        b=JPuEbaY5LHYHNILr8xLgwER5Zl/sTcD0mhS1gY/CC+sKw1zNAJehruWJYE7iWlMUSL
         OpWNHDHiawVh+kvfrkjHR8ol3ak+Negz5AWckfB8QdgTt9hd2GIdw0cyaet2pYqg67sx
         qLwiyJpmXxotG+youoeqngVfgp3gx02ChboxHiFzXklIZ2DonVnDAyB4KH77qajC/nmh
         zPVEJmcyaWSTcftUZvSoEHpY957/uvSHbsMYZ+eV58z28A8TAoticSUjem1lx7JI4Cla
         wlTlU7oqEGXt/Vj1mou3NR5Zeon+Cc5Fpb8lT/r3OzarW/7z6PvbagLTWFqHzVnuXh9C
         iurw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoJD4gJL;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a21si674357oto.2.2020.01.19.19.32.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 19:32:31 -0800 (PST)
Received-SPF: pass (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x6so15099166pfo.10
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 19:32:31 -0800 (PST)
X-Received: by 2002:a63:1204:: with SMTP id h4mr56608273pgl.288.1579491150642;
        Sun, 19 Jan 2020 19:32:30 -0800 (PST)
Received: from ubt.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id d4sm14746798pjz.12.2020.01.19.19.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2020 19:32:29 -0800 (PST)
From: Chunyan Zhang <zhang.lyra@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>
Cc: Faiz Abbas <faiz_abbas@ti.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Chunyan Zhang <zhang.chunyan@linaro.org>,
	linux-mmc@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH v2] mmc: sdhci: fix an issue of mixing different types
Date: Mon, 20 Jan 2020 11:32:23 +0800
Message-Id: <20200120033223.897-1-zhang.chunyan@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200120031023.32482-1-zhang.chunyan@linaro.org>
References: <20200120031023.32482-1-zhang.chunyan@linaro.org>
MIME-Version: 1.0
X-Original-Sender: zhang.lyra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FoJD4gJL;       spf=pass
 (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Fix an issue reported by sparse, since mixed types of parameters are
used on calling dmaengine_prep_slave_sg().

Fixes: 36e1da441fec (mmc: sdhci: add support for using external DMA devices)
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Chunyan Zhang <zhang.chunyan@linaro.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
Changes from v1:
* address comments from Nathan Chancellor
- define a new variable to avoid type conversions.
---
 drivers/mmc/host/sdhci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index 30b5a624b50e..f9e0b5f2c692 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -1201,6 +1201,7 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
 				    struct mmc_command *cmd)
 {
 	int ret, i;
+	enum dma_transfer_direction dir;
 	struct dma_async_tx_descriptor *desc;
 	struct mmc_data *data = cmd->data;
 	struct dma_chan *chan;
@@ -1234,8 +1235,8 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
 	if (sg_cnt <= 0)
 		return -EINVAL;
 
-	desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len,
-				       mmc_get_dma_dir(data),
+	dir = data->flags & MMC_DATA_WRITE ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
+	desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len, dir,
 				       DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200120033223.897-1-zhang.chunyan%40linaro.org.
