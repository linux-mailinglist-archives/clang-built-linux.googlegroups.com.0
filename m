Return-Path: <clang-built-linux+bncBAABBN6V46BAMGQEEV6XH4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F41345F74
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 14:18:48 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id z5sf1962406pfz.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 06:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616505527; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQqCCcE1errJ1CXQlPj9W7xAfpZ2iK3VlNHoMwPSgnaILE/gL29edTZwfSmfTvzYJl
         u8qaJzWwWz+EGANJTPOZlk9R2hI4qjEy8J/eg3ZzQ1GvOaiL4FTHM9bqS4ffggVyL7HO
         yOF+q6H1rEl8Q/H9vfkV+qu0kBtZ/UMHtDNPTflBFusty+sue/6l2t4w6Ms6fsJ2DCzo
         RdvXom4eJ97viFmaNVrCvLnpXOLtU64szfM3TiJ8V9MzKLl4cHvzjfLnNgyNOgJSIDHv
         eGnYz6yTRXgF9u9Rwy2V7xkkGz70UlSTJ2H4ZItQKDnTL/CYrIL4l0GUexToDJspmCCy
         uxuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Lmf3AbdgyClw+kgLZBJ74egEb8YZD539gMSqyEhbZBQ=;
        b=EthLaf5GXDW2Sz9Tj1w4CrT6V65JAc05TgYoM1JPlmUVyJgaCsF3emhLaoeMS50fWx
         ChM8V6+6Sl48IdaWWoLjiqGpA0K1+v+kRDt6Apo0j7GSQqTY8EgZsZTrk2fO69Miv6fg
         aYBqHOjUcDSWGnMVF+F1eMOsCXLhqwMSK/VB5oDY/X73zsjTWV2Ksp8mhwRffNi9IIVk
         0znVyoHBj4AU3rjvgxBwEpFmq7UgtAKQ9S7CyKWZ/VUCYPoHYbuItRLG/Hdfrfuv6ApO
         idi5dPoOwB85b8L+yWSXPOB47dzo0u+imqgBwNvwGy01wVrW8047x78Sgc3YHQ5oqmGf
         cfuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FcnBPRSY;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lmf3AbdgyClw+kgLZBJ74egEb8YZD539gMSqyEhbZBQ=;
        b=BwGZBdif1ZJl2x4Ji69kH/fHSu+1IX5Mxbz3dFAqmnjiK/SiEtqaYYbJmX0It3rc7+
         6CMqhXmoGDENqoS5jri2sGYgnY7DCeXSMHEb0wf1nCbI60oW9Lak2qilHEtWVkC9o2EI
         nOfmOd9G2GaOsKaoFp8GWJkY4CBCC9h/1iX5nngEt818OjKF2OTw8p86aLdVgp01cMs6
         e2U6B9+mLpIQChoxLrxYnwaoUJblu8G9sghhHgMp0MmOniGV22xC+JQrmKNZCIYU1Rvz
         y+p/qppZ2ZOQX+rmNfL2I82z8ta9pGy3etnV4HPAXhag5w9dn/7Jb1TvH+SFFNd4R0DE
         E2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lmf3AbdgyClw+kgLZBJ74egEb8YZD539gMSqyEhbZBQ=;
        b=k7owryyfQg6/polags/0UY9cAXZ4nyBuphuwVXAs/xR1G98lxbMnYs1sjCmHg/fMPI
         e7En5weQ/rPoFWNAZBiB0ZCRr1P42leYhvqDxNq8I0fMSc6hj8Zg7NLqY2OBRIfiDIiF
         wQwBpu9/aCUTmuZcOGulOiegaxMwVEQObi5G6CXEAEh31zbycwWv4avQt1X2zSm00/TK
         QjulFT4tCN4rIH9HnSwmPp47fNijyd6uF/WzXoXtqHsBH48gqL/yei+f1J33VfeyJo5k
         d+LQrrzXIXYwuF+GB5l6e/J7/QgTG23dqBuQNZfDkuiaMiqibv2LGhI+qa9XmRfP/fbT
         wCUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fOvR+anLM5GjcP9MU1E2slGOn0VD0wieGPguX11Na3rYWHZ3R
	rED3IuTsm+U3p83bpgvMh4A=
X-Google-Smtp-Source: ABdhPJw5eRahbaOj74ACWtOShu3f1Z2tlMAsnGs2kqlWWaMODcgbNmJ2eZC69y7FTYvMt9eAIRlv5g==
X-Received: by 2002:a63:3705:: with SMTP id e5mr3916922pga.318.1616505527533;
        Tue, 23 Mar 2021 06:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1315:: with SMTP id i21ls4604086pgl.8.gmail; Tue, 23 Mar
 2021 06:18:47 -0700 (PDT)
X-Received: by 2002:a65:6107:: with SMTP id z7mr4076911pgu.435.1616505527075;
        Tue, 23 Mar 2021 06:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616505527; cv=none;
        d=google.com; s=arc-20160816;
        b=lhf6VIphf3wDpvtuJuLL1Tp4jZM4wlABiIfdp4PEmgtaAtwXjIyXYuVI/U0h9tGGD4
         ULod5/yWfmw5TpJingPY0Ex0cJ40jKMngw7/ijhsIP+ha0iySfCAUpWZ0mRoPf8Ju944
         tx1ZwKAe/yyC7qG21Ziy/DrmY5fuu3cSLW1pIiX2VXCIrnzcUvWLp9RHead/ZGx76N1U
         /O64XgN8ewl8391butUrAZ3MLw4Ep0A5Wx9U+sIGVXNoBgowsV0YfMhmcHUBQvzxlR3j
         UHFCwhiM5W99CmtqaAiZxHUMQyPejDp5bEESwkhH9sykF5H8XJIRSVzKCOS9S5vU5WkQ
         C1qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7bvKrAms48/braYGBCTetyAjqPv5/fYMGz8JBQ7PMVk=;
        b=I42S/PVeTJALbJNWkgY2W5vpCxucxIWIOBZcxkEfX4n8NY3M4gRshb/vAXoeTh5EeR
         nRE9IgnO3lF+8l4KQySw2mDAIUQHgc7QyQXaywOJbitVFoy0j3o84fczRen6/G+fkaYT
         DwZwURgJ+Qn93nXFw6myIYliD4qqVGbzLel8rrTle9FAtdQ6hqS6ZXfe8Zj/aKbNxsNK
         9DUWtl1PN8ImP07urfklHC/CT/YkDLz7gztb5NFNTMlO43JC2W3QMqnVOSna3TQ9Kkms
         1f68Ma4+f/CBSl43nxZnddWot47JRQtad6lGobt4JMrIn/Z2+fIAvbBv5DySr9pZ1zbg
         xYrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FcnBPRSY;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x1si982658plm.5.2021.03.23.06.18.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 06:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 095FE61878;
	Tue, 23 Mar 2021 13:18:44 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] irqchip/gic-v3: fix OF_BAD_ADDR error handling
Date: Tue, 23 Mar 2021 14:18:35 +0100
Message-Id: <20210323131842.2773094-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FcnBPRSY;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

When building with extra warnings enabled, clang points out a
mistake in the error handling:

drivers/irqchip/irq-gic-v3-mbi.c:306:21: error: result of comparison of constant 18446744073709551615 with expression of type 'phys_addr_t' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
                if (mbi_phys_base == OF_BAD_ADDR) {

Truncate the constant to the same type as the variable it gets compared
to, to shut make the check work and void the warning.

Fixes: 505287525c24 ("irqchip/gic-v3: Add support for Message Based Interrupts as an MSI controller")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/irqchip/irq-gic-v3-mbi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-mbi.c b/drivers/irqchip/irq-gic-v3-mbi.c
index 563a9b366294..e81e89a81cb5 100644
--- a/drivers/irqchip/irq-gic-v3-mbi.c
+++ b/drivers/irqchip/irq-gic-v3-mbi.c
@@ -303,7 +303,7 @@ int __init mbi_init(struct fwnode_handle *fwnode, struct irq_domain *parent)
 	reg = of_get_property(np, "mbi-alias", NULL);
 	if (reg) {
 		mbi_phys_base = of_translate_address(np, reg);
-		if (mbi_phys_base == OF_BAD_ADDR) {
+		if (mbi_phys_base == (phys_addr_t)OF_BAD_ADDR) {
 			ret = -ENXIO;
 			goto err_free_mbi;
 		}
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323131842.2773094-1-arnd%40kernel.org.
