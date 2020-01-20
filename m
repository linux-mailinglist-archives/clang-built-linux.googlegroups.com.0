Return-Path: <clang-built-linux+bncBCYIFQES4IBBBOVUSTYQKGQERPLSWLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 352D01421E3
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 04:10:52 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id y188sf31017702ywa.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 19:10:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579489851; cv=pass;
        d=google.com; s=arc-20160816;
        b=iy0Nz5vC4MwoHX7BFMVslD8uVhpPOHaE4Z7YTvfKrhiVdBhi/TypwTNN7GCIARsdFq
         OMYSRqFTwTxt8PxoTvJK+x8uODTegYMSc22jgyXbsd7IbWEKf/tGfSUUJR66pl5W402k
         uoyFUCUwLRspKVdWUAFYn5hGqTWOG4ICaCWY79xWJirfkHqJfXP+qs+g2x2o2+j9+hae
         DhtCPy4mnQ9CQXpDBxoZAis7X1q7ybdhV+dfqxHcSvLKryq/reYTTPnoNawZirzZqJcK
         umiVqC7uInX9GOl8Xxkq40i3OA3BPICbss+d2i8FjgFeyPbZjyhAlRWhjqsDMjnLlTYs
         mqQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=va9PC5BmvdPijIz+pjwMnjp3Vl2oDbD5fDMr93RPdWk=;
        b=oD1AU/YubIVXKvLH1Y+Q3FsybphFjxrtMIAvDyZwhrc6hnRsWn1fo40ao/TdKEvOU7
         E1cwLoTyu9C0r+qLHNl5sXqJa1/hGb4xvRCbkp30S1JEM0BdYxuWEBMlR1fmyTWN6PF6
         59MqxnLeKIxQSPHMv/VF05kZyFa9KhTvNCkdgDniANM8IyDbpnmLvNez8KARQrL1vNIu
         Bhow8cLJHIVKNFxMbh4gOrYiSr7siC1cLZVcDSfdcsyk7ygo8B4HFz0zU3qiYUo6MG/x
         YZcDL+AOOBRAc3905EgpV0YLzPr7ozzNM26uPjGDn5Wjv9qOjeUEjTQ+QYq6wPwab6ti
         oQHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GuVns5CM;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=va9PC5BmvdPijIz+pjwMnjp3Vl2oDbD5fDMr93RPdWk=;
        b=GqdIU7nt2vzbNBkpfkgDZFm3O6xexsObGLU5DLaSZIhQpx8WNjjm+/NbqitgCXqWzb
         yzJFHwWd+Hcv4oH07X0whhclPYFJSscv4ovKSBePHEIPgUxcnlmQscOTnORaEUTDFWlx
         hiKi4+CRpFMMExN1iPv00iWmktpduymhM/DaoFqo4Q8HIX6uyXDcORXtBDjvYGjIp/Il
         3SDBRk1H/Bpb7zQa4qEJJCg8e8CEaCJBac/Yk8A5v5UA+2gmkqmxz2WdlXOsyvQ5QAGi
         VDIukuci7dhk1FwUi/Xcnx2FhAbUdnaoVPZ3kg2ekVqfPYyms5gpt7QeFa5RhW6uof1l
         3hhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=va9PC5BmvdPijIz+pjwMnjp3Vl2oDbD5fDMr93RPdWk=;
        b=i1gK3mL2bNfrP7C6jasqzjABcBUjQ6YkMm7ss4LVebbdhl65AejvJUYyd9fWLs9PFj
         3GFA7C8hRTzCJrqeXyU7D7cUeBt3Z+Zx7DCDOtPzvlT4Xrv0U0qiuWD4N/P9rCs9Nmr9
         UsxdJwV0yV7fLlas+rWbqMdzCHU0fUCTJVzHZ4iO6ONiKww9yi8icxUOGVBg7CEzrALy
         Uv3QMnd4dezpnTiDylH/KSR2UK6WkTCNGQGdX/00gPP7YdSKg6Ag/61wMJX4lypRNpVY
         psqHGXrue3J/1IwIZMKsHkesIgRBsTBvMj7/aFgcZEJWLddKzFd9YtiYh59j1GBVms5H
         9lJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=va9PC5BmvdPijIz+pjwMnjp3Vl2oDbD5fDMr93RPdWk=;
        b=KHHcO1DVH/DuoJGZw618NQOu/5oa2o+OwUBkDVcfQmzYZy3v0x+flgrUrLJDsd4pZd
         pbYG9iNQCfuLXNk0NCLjFwK3x34Pi8Py7OldfjsCr9R8R3OT//JXhIEjFXRxY6htG/1U
         fIWnjgBxkARIEctS75sJHtwjO9UFkNWuUSOg/VSyv2kDSJ4L6SQlfU2uplrcmmafsIYX
         HMgaj0kh+thhmn/IZqAEtKykkBWCrmNNRDwAFEntN5Wp9AJpD6g+rsvIBDIz5ggHQUAW
         4rv2NajdpKp6wby2H5rQeznMN+yxjOzRU4txSi4EsDRwZIp4VWxeXpexzIz6o/ngme81
         qJOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXX0hanker3rxA996n2nbn+EMAIet10VUjUTB5xxdBCDbOsgy+X
	05Kf2DTaRD2B8T6v78e3jug=
X-Google-Smtp-Source: APXvYqyg08XzNqq8ofV+qLUjCeYJUlvWNMbpxxxpvsTPvJz0Ppq3MN+V7pQ7UIZiAXeHZTzTWrSzrQ==
X-Received: by 2002:a5b:70c:: with SMTP id g12mr36483059ybq.360.1579489850800;
        Sun, 19 Jan 2020 19:10:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:845:: with SMTP id v5ls3930741ybq.13.gmail; Sun, 19 Jan
 2020 19:10:50 -0800 (PST)
X-Received: by 2002:a25:dc0e:: with SMTP id y14mr29779426ybe.455.1579489850278;
        Sun, 19 Jan 2020 19:10:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579489850; cv=none;
        d=google.com; s=arc-20160816;
        b=E0sCo53pYxshNIckoUvvgZFC2tiTIF5maP86IFzkrhIeD95GytUYWVqSblVaU1ldNq
         H0PPtDy5MMbMKGqu4HCnDmR98sxH3h66KP9V9iyWRfJHPgm8F9yYrDGZ4bOOaMomFqDo
         WK9sULY9IoIj9Y1MtRCHmK+iKODYd4l2TIEpS+3nNFWgrB8TRkRdNx7TMzmN5SQU5XQM
         4MU8fmjhXXi98SBEmS+nBa2mrV331CpYk3FAPj2rwJGOiNLMPL3dUKbFuejr2fPteaxn
         p5eIK0RWN3LBiKk2ETn1nYId/pr1cAggx08ZJCXa93L5VvFSgXW80fDIUircSC5T+w3V
         8/ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fKCZr7SPbdkR0t4be+CXKygxBqoOpm4Q6ztu7jbGjlc=;
        b=BCszQv7gNGyqIk0wV9/+7e6yl2q8MZmpLth4eryt8QT7VnWAHC5yMkr/jDqvcBtvAp
         U9fIKF3JGgAWbL0/ya+lOhENFrC35GQvAtRX08HLNGMObjZm0HYRwiimYWbFJ71ayKDZ
         ACelN6u0hPRrrhTAIFVgQ0scqWjfoK38hKm54Vdf9l51Nq+51+hZXVdb3xUpUzBBYc0T
         MK898UizhbCsv+E0eVlMX0nfrV0HN/wH4jRLoM0T+aCmC1RietVJsXZ1Zu6HSaxUcMqo
         v67d9LBgnYK8Dn8GtmdqPLVhScXE/E3qQTSuL3XE1gz1KJRXGd86Y4MUriGzaHiuJkWf
         Wpsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GuVns5CM;
       spf=pass (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=zhang.lyra@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p15si1546612ybl.5.2020.01.19.19.10.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 19:10:50 -0800 (PST)
Received-SPF: pass (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id q127so14788643pga.4
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 19:10:50 -0800 (PST)
X-Received: by 2002:aa7:8687:: with SMTP id d7mr15122349pfo.164.1579489849577;
        Sun, 19 Jan 2020 19:10:49 -0800 (PST)
Received: from ubt.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id v10sm35462899pgk.24.2020.01.19.19.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2020 19:10:48 -0800 (PST)
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
Date: Mon, 20 Jan 2020 11:10:23 +0800
Message-Id: <20200120031023.32482-1-zhang.chunyan@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: zhang.lyra@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GuVns5CM;       spf=pass
 (google.com: domain of zhang.lyra@gmail.com designates 2607:f8b0:4864:20::544
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

Fixes: f9a7c2112165 (mmc: sdhci: Add using external dma)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200120031023.32482-1-zhang.chunyan%40linaro.org.
