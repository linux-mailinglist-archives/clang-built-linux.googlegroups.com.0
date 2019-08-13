Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYVIZHVAKGQE4E5OT5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0038AF48
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 08:10:43 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id r4sf51600027wrt.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:10:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565676643; cv=pass;
        d=google.com; s=arc-20160816;
        b=H5dPVhNBq9z1becUrOts/RkPCrvqpR9pn9N059WMttXbZl6hF+r4ofhRBZgzZk4QLN
         aN/GiQfATC10uMQXDCthSUsYkc1FdoHOIFcXg0D8Ll/MMboe7Ml21XFYV83Y7klQIzjC
         e3/IVOlOHCEqj8toLOdKXeHQPtWaOMYOM0BtptnjBiJIOQ7vdnmaE2M6Ly0hPVjjB87g
         3+CdLvPxIia5f8aRppOlS0lEvOGfyQYv/LELzrZ7B7X8oYhddeexpQtAg3AuDGFF1TL6
         20sD1lsMEhQ6myXOK66+lBBT2z84DX+X2bpr9rgndSG8GNMSBR/DtTR/XfsZro6IZLfp
         OiJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=gGcVTXyMffE1vVWgGCHS+aHIFuSb6gNQKOlwimiolrk=;
        b=iVo02v7n1HA/CBy6yNCKfa4vivE5qtIxNkWTgnkSO25sXmNuViFhVSIxlKsWNDh+ow
         G9lEfW0EdWtIK1X/OIT5RonJqA5YSR81jq7hFXf4jeNCIVc3D/auI+VkOFssjk6QWavR
         607MUv6P+QTh7PU5ETDhpKVH6OSNu+q/NlrFqnondipLRn+aKkuY8ZZbyM0xEMlRs6FP
         cSU1+4cuJ2L1rvPLnKfgx+1mWGI2X6hedJ6B4k+uubAem5KnfcaDrhBJGRBtaAFmARkp
         kvlbkC9LKpd+Js7y7qW3ilKfituN6jeJVZAwzgS2ICtY2PGKLoP/yAIMfnEmp4mHyb7W
         GdRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EFNBrpf4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gGcVTXyMffE1vVWgGCHS+aHIFuSb6gNQKOlwimiolrk=;
        b=OmflIDhA0B2cD9SbRCdLZlEk139/F0jt7YoLHAKEqNopufBYZ6FUxfkIrmQyFgQZrY
         HzNlsHjUWrpVeTjV81uIhy9DWTqxMwUAblJ8j+PAtVlh4V7CB7GgHRldVo3f0AjGqQPX
         fkLkXOIq91h4rWsMaJH/IY5SYIprYj7JLmMrsv9kuH/2GCTDoVIKjhZm4FOovPZcdKj3
         9Ip3CdP2GaGgqwmwBlNmHeH9bl8XQiV478PgbKAFFEl8c90UhrE13MVGHu26mgTUfDrK
         c2Y0ce39YItQMHleeNqLLtxZoZ/8TAU76x9E3uGxFoa0sSJ4vG8HNz5xcsRfuSe1Zc7d
         zPZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gGcVTXyMffE1vVWgGCHS+aHIFuSb6gNQKOlwimiolrk=;
        b=i60ikIOS7SqKeqGjaudSxQGWb5pqI4jZ4M6kSpmjAZZQAzxhM3oj0VKUa1+l2yeCi3
         8A1R/0mFBgHSu5eZnwKcLXEfhfBufigaH7BfSjldabT1SzfU0nPGjO1jSvce+5TfnJZ+
         eNvYjIcI/6cCvYoOhzOC0f+4iAQbCXqz3hjx4w/BVpotYyW+ezycXbubjD9pbEnwcROD
         SnAnx530G9RYTMFEA5kKVD6oYAiHgTO7nwz+iLSyk7SdH1yLiepGpf6UagpeAIUVXcFq
         HhUw8eVKfUC8XTa1ATu47WOMn5GETrp5XkXz+t9kAY5dli7Xm3RcMEPVAdqs3wEj7K0C
         7BSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gGcVTXyMffE1vVWgGCHS+aHIFuSb6gNQKOlwimiolrk=;
        b=SgVe460ycw7/Thqn2EktRYEj42MIezkuADZNmXBH3sdsveP2e1MZ0/Z3ERIqds4TGN
         +xYyTPzRNoGBMp8filtGbL898lVu166xkLxEKiVbbzx40UMZVWyc9TcUs6n0myxTbb1X
         FDNtYzcC+IntrQfJyTXmIFnTxF513G2OGj3JmEIJDOACxNbZpDmUMfRXsCBfDU/8MYnY
         FwROAarz1pzx3pUmMhX8U36M6bcrWviSdAf3bxTCOXw8xINzfc0ewyNE7u+LolxmET+e
         BoBk1BEcI58dYmdcAo3kMNPiYik4mivjXX0S8mIhMzhn2vPeoir/7nEKmEQh3/EXMr/J
         MC3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXcWC4Yd2OYUvmMmhZxaf/IMJIRDTP3vzw89feD5QzGRlUrVLFt
	qpm7qM6x0CO6MUkSLcYzXKg=
X-Google-Smtp-Source: APXvYqxVQT7mLa9tY2BKooezpqnOwxbWY/StqntSSZCTOBrc15W/GSW9s2AAPJ17BWk22RxROqy9wg==
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr1083999wml.102.1565676642929;
        Mon, 12 Aug 2019 23:10:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4aca:: with SMTP id y10ls2825954wrs.10.gmail; Mon, 12
 Aug 2019 23:10:42 -0700 (PDT)
X-Received: by 2002:adf:dd88:: with SMTP id x8mr36274836wrl.331.1565676642383;
        Mon, 12 Aug 2019 23:10:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565676642; cv=none;
        d=google.com; s=arc-20160816;
        b=xzHqXDVrSQuCFz9CMkqnsFlpA4KptVKh3WnEkGPvejTrVpPAlSsi7uafx7Q5twzZOM
         Ff1NgC8jA5Yt62m1S1oTL14dBlF6tCqF3qPhL/BiA4ZK03pGaP8RacN6LUVqFVwlM+JV
         e/UGPEQeEKV6QZ6N8TekbR0GZSWjlPmA0zhe3JbYM3i2oKf7Y0p/h0ISPxLujenQnE+w
         YsOxKvynpQlLGmfZdiN/n2un30d5rHBOOufGQkruK/SjPHEYEhc3jDgM5pUGnpVsyPrL
         aKn1/GMGQseylsgI/4z8edYfO8M8POUCGrnwFrk0qe/NDJrE6ddbt2pTkva+lg8iM2xN
         uvUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kBSt0AC9Wj3a2Ydwo1maYp10w7mbRorMD87B4HpPB2I=;
        b=eTBJj6NNCizHpc1C9NpOT0v/3TwONqHMW2Z2ofR4RRylTqThv2FtttUAIMroJtdXw4
         PoXVFRHAZZ059Rg92LZoitjM37/R84j8j+8wzY8AdM7VFjtMWLaUaxZseeD7X+DRmW8W
         VKncnnchGrAG8sIxKLBvPl0Fm+yH2F4x7ru5XKU5+ihtlvdNOtYaJ3BWW6+CqaAXEFPH
         6cPm+M4z+0lBgofX+30DhVtvHaQh6tKDpRakkzsAcyiOcDXOvquiQb5ALBBRYaML+jWk
         rKpItsu3eXJB39KBHPsc4cGaM4lwiHfXfaG7nGAiL9oRghKKOLldFaXhfYgZJx4/cL8a
         SYbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EFNBrpf4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g7si31853wmk.0.2019.08.12.23.10.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 23:10:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id t16so16492237wra.6
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 23:10:42 -0700 (PDT)
X-Received: by 2002:a5d:424d:: with SMTP id s13mr25409745wrr.178.1565676641744;
        Mon, 12 Aug 2019 23:10:41 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c1sm416096wmc.40.2019.08.12.23.10.40
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 23:10:41 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Sanyog Kale <sanyog.r.kale@intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] soundwire: Don't build sound.o without CONFIG_ACPI
Date: Mon, 12 Aug 2019 23:10:14 -0700
Message-Id: <20190813061014.45015-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EFNBrpf4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang warns when CONFIG_ACPI is unset:

../drivers/soundwire/slave.c:16:12: warning: unused function
'sdw_slave_add' [-Wunused-function]
static int sdw_slave_add(struct sdw_bus *bus,
           ^
1 warning generated.

Before commit 8676b3ca4673 ("soundwire: fix regmap dependencies and
align with other serial links"), this code would only be compiled when
ACPI was set because it was only selected by SOUNDWIRE_INTEL, which
depends on ACPI.

Now, this code can be compiled without CONFIG_ACPI, which causes the
above warning. The IS_ENABLED(CONFIG_ACPI) guard could be moved to avoid
compiling the function; however, slave.c only contains three functions,
two of which are static. Only compile slave.o when CONFIG_ACPI is set,
where it will actually be used. bus.h contains a stub for
sdw_acpi_find_slaves so there will be no issues with an undefined
function.

This has been build tested with CONFIG_ACPI set and unset in combination
with CONFIG_SOUNDWIRE unset, built in, and a module.

Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
Link: https://github.com/ClangBuiltLinux/linux/issues/637
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/soundwire/Makefile | 6 +++++-
 drivers/soundwire/slave.c  | 3 ---
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
index 45b7e5001653..226090902716 100644
--- a/drivers/soundwire/Makefile
+++ b/drivers/soundwire/Makefile
@@ -4,9 +4,13 @@
 #
 
 #Bus Objs
-soundwire-bus-objs := bus_type.o bus.o slave.o mipi_disco.o stream.o
+soundwire-bus-objs := bus_type.o bus.o mipi_disco.o stream.o
 obj-$(CONFIG_SOUNDWIRE) += soundwire-bus.o
 
+ifdef CONFIG_ACPI
+soundwire-bus-objs += slave.o
+endif
+
 #Cadence Objs
 soundwire-cadence-objs := cadence_master.o
 obj-$(CONFIG_SOUNDWIRE_CADENCE) += soundwire-cadence.o
diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
index f39a5815e25d..0dc188e6873b 100644
--- a/drivers/soundwire/slave.c
+++ b/drivers/soundwire/slave.c
@@ -60,7 +60,6 @@ static int sdw_slave_add(struct sdw_bus *bus,
 	return ret;
 }
 
-#if IS_ENABLED(CONFIG_ACPI)
 /*
  * sdw_acpi_find_slaves() - Find Slave devices in Master ACPI node
  * @bus: SDW bus instance
@@ -110,5 +109,3 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
 
 	return 0;
 }
-
-#endif
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813061014.45015-1-natechancellor%40gmail.com.
