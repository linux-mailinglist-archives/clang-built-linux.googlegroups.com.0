Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIEB43XQKGQEJ3IUWCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B1A123C66
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 02:28:02 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id e9sf397245otr.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 17:28:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576632481; cv=pass;
        d=google.com; s=arc-20160816;
        b=BJWRAvx4m4SD3cWL1NoeoYxPVMyV47fDvSdunSYMBZRQKVKizaUNXaPQAPXYbCVgrA
         G6/vhenC3LxmbDimZ1NhrKged8hmhgjcrpvfDR14UeJ8oI03lwnsLwpJ3HlMe2poDzG+
         SLJf+/w5zzFZ7o+PSknokwMRI5xfhYsfdiYuF1gjOVfxbW/0ij0GZK4L3PP7QzJg2l3q
         bqQ67PZ1Y2oWyD+szWQKJnjzBsCD2pHZJ9TzEWcmLm+slAGD3lC+DCEBehWKRvIZ7tkz
         wYx4ya1JaFHx6MupCXskpeWquCV0/W+k+GmCw7JGGwmNCbzoNzXLYYV3OTnHCEYg7xOK
         qHuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=9iu9hehoZV3Za0Cz1TB3AbqtFcuqu00mv/raHtyb0wc=;
        b=Lp+z5aEaATN0H/VkNFI1REVnJ+DDqEWiLLwhVJNaEseaIxUwhYV2xCeSVuPAOMPGLC
         +vgR/C6xWx4FG3cTU69EKjrMQoCsiE20wNFaCFLOW3DVyZHtpTLvtI4100IfJKP3E+Wr
         5LQPrTU2dpVstFJVwcTJypYrUAOW74fYmlCP8rDeQYIMSv+lI5dJcN/cO3p8RKlBpjno
         haZf57nNhnW4T9edE+gQvcwSXcYT96/ILGx0fCxUJKnSlor3R1DgFqONRpMjB6i/+ZJP
         BCmTRahqRdXLE8IVw5hnDFqvHwEbm/U5g5OgAtFHV1A4El+01XBEdydSDnBfDFRXzWVo
         wrow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CAiLpUlA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9iu9hehoZV3Za0Cz1TB3AbqtFcuqu00mv/raHtyb0wc=;
        b=pFb1dRoJvhyu4r7YfI6aYytJEiQrQ9J3od4hRQF3576R7tEqIHkMYW17/6Y/a92Zhj
         99rRK0QXuVqaW1uNYMfvBK1uZQlmt+NMZGKZiYJDIm/cvXiCZBimd5VrtMx1e0vWiO8Z
         o8OYSDPgwqsTOTndSAnxi073IZsDsSRqswleEOtpnQT4aMBjhTqkIJOfMcRu0hgXQV5h
         dhrRJLtfl99MBUHbffhDDsxxxyhJx/UXPZpbjN6efZuAcWamcEY9J8ATTJgBZa7wR+pH
         bdFt28t6aihTpQVfSUBsZc1++f/Vv2Tnmhv+OWpoDVQKMWQwI6bIiYr5om4CEJLk/ON8
         z/0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9iu9hehoZV3Za0Cz1TB3AbqtFcuqu00mv/raHtyb0wc=;
        b=skUDXSLMAWFga/FSEnJXLynq3LFBTWs0Db07rh2sqlSxGDB6+BbqUTunjqBaXkuv3J
         Vk3qBV4WeMsrRrYzu0d4YN8nwJv/S2Oo9l1gmCnEm71cg3tpE8Vo6/cPMobmFXMFaLJJ
         MwIIhqVxvm02Q6b/DdmAQilcqA8xuZQvwOaJuUKmPKi29HKQPZZAveG7AxXf5cqZH8n1
         huvfRnVvM1TmrbIkkpQDXWiU0BNLyNaBDhilanBSw+W9omlTsTwrMl0XS8Ir9Kl4PeIV
         hXgV1uZZzvgxg6heE8yMiOgTP6YQw/JRmqJPNO5MEy+QcEF42ON5kTmdPTtpUHU0AfX5
         MtJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9iu9hehoZV3Za0Cz1TB3AbqtFcuqu00mv/raHtyb0wc=;
        b=TjQ10cbGacE/9TP7BNlrdcEVqARxKG5Z89Dus5pNC4AqQSoDzy/02xdWqAgsnLt1W6
         ku8hwvoMspYBWaAj1a6r5PpqqELhTGdDuRKVjL7btjOg5zetOVJltnnO/kLXL7r3A4+5
         Q1QUTSSv4HmWe5DLS1s7nsoSmSCp839qxJlUs+P/C1hvOzEByEy+ivZudprjegs2F6rQ
         26xJDjRcsIs/uxmFd+MBsmRx9FVIsiPF0QUftDULQSXaSHagVZDaH/g1CJciZlZ7wA0K
         keJpyp9VV+IoYEve5tij1zVvRJ0YokTmgCZaeSdUoF73lHw/DIYSZ5qW09eqrATGQeR2
         UDJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWr6NOqUmXk5DSTlgjzgDh/WjZm8/BlPGno/aDR8A7IqfY4O7v9
	gWhJxlznednMgXCNRO/BDNM=
X-Google-Smtp-Source: APXvYqzMjpv5CS0JaMt+N4NBQ0Ac89+BxVwj9erZAyDMR+oh32qiyVA+Rt0f5WhJ4jUrYpsGoTOSng==
X-Received: by 2002:a9d:1c95:: with SMTP id l21mr173737ota.271.1576632480793;
        Tue, 17 Dec 2019 17:28:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls62538oif.6.gmail; Tue, 17 Dec
 2019 17:28:00 -0800 (PST)
X-Received: by 2002:a05:6808:8d5:: with SMTP id k21mr34718oij.121.1576632480312;
        Tue, 17 Dec 2019 17:28:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576632480; cv=none;
        d=google.com; s=arc-20160816;
        b=iuhesD+tD5Bofch5HKcVWy+A+QUdMUlvjXXd2jKg8kLPdGZ1KCgmr5CPMKJtfYATXW
         73JWOveOyq8sEhziexXnYKBe3wsYYAl4tTL6kgtZ9B0iTszEhgBvNMyo+qlRQ6bi9YRx
         ym+3NgDNdQv0XHArpLuWK2aTz3eWVsyP489Tzd+jcxSQCd0lMH2DoOxhw+FSj7iFH9ox
         aM8IcKoPUD5NyN2aEBFwusxpT9bhPYdLFeIfUMtYALV6H6NKedQbTh67VYXvNTEr2SCR
         dkm0k88oUxUs9lzdpy2mDaYjImTuNuFmqa6drJ8LSuAe6lfqAOodM8HGgnynVTNUohnS
         L71g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oac13lDHKPYhqdCSX7cOIT1M4QFi8+B0sBEHAI2Jyb0=;
        b=v3Nll4ttxGl5VtyJ2OzbktqS0zwC1Ow8vuS8oAfqdSRAM6AM7EH7KV9Tr/dYx4qgz9
         Y68iGaN9Yj8GzJdUrRt06tbmgjepJGvQnRP34BMlyLvlN9k0Spmr29Ukw/05eqfEuACz
         fLmzYFgnnmgwvdE+72rJ4i70V7jn6u+WVAcIeBiwx+7FVEnr8AD5BT+8P4L1HFqDqtjb
         CZxFaDr1vwmurJKz6WDJjL4dr8hBC/Y0s8BpwMM1gHHZGGFDwRXl5v5tNA1dgZroAThb
         j7vxcHsHz8LtBFwE2vxELQtnj1s4rW4BQbWQxwkYwJ99uyTW6BXUjiWEAyKIfk7MZCCR
         2aLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CAiLpUlA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c24si25640oto.3.2019.12.17.17.28.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:28:00 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id h19so263771oih.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 17:28:00 -0800 (PST)
X-Received: by 2002:aca:d985:: with SMTP id q127mr66396oig.132.1576632479968;
        Tue, 17 Dec 2019 17:27:59 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 91sm227827otb.7.2019.12.17.17.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:27:59 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ley Foon Tan <lftan@altera.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Andrew Murray <andrew.murray@arm.com>,
	rfi@lists.rocketboards.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] PCI: altera: Adjust indentation in altera_pcie_valid_device
Date: Tue, 17 Dec 2019 18:27:52 -0700
Message-Id: <20191218012752.47054-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CAiLpUlA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/pci/controller/pcie-altera.c:196:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
         return true;
         ^
../drivers/pci/controller/pcie-altera.c:193:2: note: previous statement
is here
        if (bus->number == pcie->root_bus_nr && dev > 0)
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: eaa6111b70a7 ("PCI: altera: Add Altera PCIe host controller driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/815
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/pci/controller/pcie-altera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index b447c3e4abad..24cb1c331058 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -193,7 +193,7 @@ static bool altera_pcie_valid_device(struct altera_pcie *pcie,
 	if (bus->number == pcie->root_bus_nr && dev > 0)
 		return false;
 
-	 return true;
+	return true;
 }
 
 static int tlp_read_packet(struct altera_pcie *pcie, u32 *value)
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218012752.47054-1-natechancellor%40gmail.com.
