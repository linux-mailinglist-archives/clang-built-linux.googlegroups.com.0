Return-Path: <clang-built-linux+bncBAABBUH64OAQMGQEYFTK2RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CFD32639D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 15:01:55 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id n185sf804075vsd.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 06:01:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614348114; cv=pass;
        d=google.com; s=arc-20160816;
        b=EW6H3wf3tQbUrGqpO+hDSMJO9obKNumEIq6jFtJW9yPvBckPKSpIukeYDKyHpSMpdx
         neQhK60VtLOEv7f7GbsVKOvfrtA6N2S6jaPaYI48u3MIiqLLEdLro2TO/OB7+r3O7dSU
         Fi9VbpYd4mhxAGWbCGdbCZg4gKO1EOB6giXhDRHuCwXqc0V4NBl2rM70HYtyeiTDcWfb
         lBbPLmKLbCKzdnisFnfjgr6lbOu5YSDRVyVU7SDwhlN8ryDEElmuGGnaTD6R3V0L0sem
         iD0vZB+G5J5TuZTEe6dy78ncq9bB2baeDn6HIjlW/T/TvrJ4HjSQcHEqyWX5gjOpo+a2
         1ERQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=WuMxxaxwHGE0d02Yyh4I3jmFOKV2DGKSyiUYKeolTcU=;
        b=PTc6Su5L336PaGYlFqFzn5YCgd56ARxjXym1XHWyg2c/qVyNRwE7SZKpv18vjauWBe
         m31eEebJTpVm5Vikz6Wmx5eWHsIXSRZcivU9U//EyVCTSTUUyZS6BQvo0vbFNF+6XrlY
         HfZ7FeLR2P6SIyUNVQWEoR5ZkuTF4ZbwCp+OarE5TzDelJVnP920tb2D7ep9ZVgDkgpB
         foygJusi12zWgvm5E42RSOV8emJErcS+PteGzStHWFYlFSdTNt5WnUVQXQ8rkIb6VM9u
         UY6iCFrVjWjzqvtdKXyYDAlFPhkMOgzyEUOMVzHCu+qK3CpClsTHN4zG2x71lOuV1N6S
         INtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Y/RQ4yiS";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WuMxxaxwHGE0d02Yyh4I3jmFOKV2DGKSyiUYKeolTcU=;
        b=JQXZE1achYAz2UM+8vk4+LZnRSvKWKzvGCYiE4Kpon5KNC3dbANDYdhWaRo0XaT0FK
         6A3I7Hm5nQPN89RM5fIqXu8AQzfu5hWlqAhp1rwPO8w46hda6c59/7dc9u/9ig1Pr1Jb
         UjdvUq8FYUmKKJi/gJj00lAstVDA6LPjX9szAlM1Dnu/mN+gvUegZHLsbgYsNzqpuqIk
         qAGAcAatc2s6Tc9sN2KhJLUc95hoE2s2LyIp5RnAjPrXpSONOylj2tktA5Sk4J2jhab0
         2Pf0xWLHQDWQb4OE9nmb1gxL0L9epEh6hB0QkOEuewJZlFsU2g1wWjNXZCdCfaIpdGZZ
         yvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WuMxxaxwHGE0d02Yyh4I3jmFOKV2DGKSyiUYKeolTcU=;
        b=ZY+iIviDBo4siTPyuow24enO16ltu+j3JoR+wM8cHUxMUbgDHgmyen5JPpT6SHk+Y5
         68+VGFngFrnd1gY5F1pvumDP+UJkuN+oI0SpwwQh3gN0wcG3ufbtrJN/FzFQrlFEN0Wk
         5W/CCPVA6Aw87mX6CJ8tsscmBYwQSl/pSpJtzBXi66XlIhScg1a28/F2B2MlQ1PIYcze
         /ZzwwxM5moNtEpNJK/m2QPnzfO+8ZY/Ui91frMwmmbdL4gjr2b65sC/bSnHdHk0fNjrK
         MWh6JE0RvYCAmDW5Y8sXoA5HBQfV/deWQP2iJ/MSRPlCeOVwTEJs5Hbz1yu1Tv7H0Xqy
         0N1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533985y8+Ql1c/yJkSseCkql52yis/Cgd9DPD5Bnaau2bv1w/EAq
	NHTCS8OTr2GkffUZBLOsaDM=
X-Google-Smtp-Source: ABdhPJyFpDKAWBlhSrJLQPWYMVeo98W/RvsVrD4CMrNYpPAUuxcAdY7/7/AUm/m/k4GNt+fP8+T3vA==
X-Received: by 2002:a1f:9f4e:: with SMTP id i75mr1437247vke.22.1614348112311;
        Fri, 26 Feb 2021 06:01:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e295:: with SMTP id g21ls503388vsf.10.gmail; Fri, 26 Feb
 2021 06:01:51 -0800 (PST)
X-Received: by 2002:a67:2245:: with SMTP id i66mr1558298vsi.18.1614348111382;
        Fri, 26 Feb 2021 06:01:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614348111; cv=none;
        d=google.com; s=arc-20160816;
        b=mjCPZ0/tZFw2px3T6n6KfQVV5BgLBKPXt7uv92w7LU1KjOQ1eALqfYlEf8ScQV+fMV
         J0Py5v/C0/X2hx/ePW0/HEFbcWxZnUpuKSLM5/Wsaka+k5PwKwuX+oJKGYpsm4ifiJi5
         W52DLpAQdl4Waf4Mx8P6y4ZqXlRdwMhKu/T6JDMNE7Ty/cEwMV96/unfqJADtwsouEO1
         lbvx1Dj+HW0cO1/bUD53xWS+hKXRH+V/9Md1e0X3mco25UZRVHBqb+GXqS4qOdpiw9PK
         8cXN79ULKlqgqbkvBTRiMLD5DHhI3bwANgfvN6M2PvPwzuJVYPF5uzoh6lnIX12l5sCp
         nL5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=35iLr8UiZIo3uKL/2s/6fJ6d4oUX3UptE50Nn546Z6U=;
        b=Zlks6J4Kl/vURk/v0YE8xE+L/XQHJiZ6ZiJVaD+M2UyvcSFz1aZ5jjTuSDrSN5zUcE
         p2mIncKrY6imtct0BXNJ/ZUIf236WnX8fr6sNpawi/bRaxTDFU3E1R+H+XlbIz3my53l
         O5ToLTNayHRBGRXohH9N5IUzOU6WhXdUynzJp/LJ4ohR69owmnq9U+bq0XHgCUPYe4Au
         nN4ybI8T2Dwfp0ppMGqlFB+myq7dUpniZOR+1K36IcvUmL7t/JsdSoLvjpBS4SdjKRXO
         gHXhmdHphu0vuqNkC2nVTdk5TV0ZvX/a+K7q8uxVnmHDYrZp4o6rhhjdjLtM4sn2WXta
         u9XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Y/RQ4yiS";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a136si306414vki.0.2021.02.26.06.01.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 06:01:51 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7876F64EC4;
	Fri, 26 Feb 2021 14:01:46 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Pratyush Yadav <p.yadav@ti.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Jon Lin <jon.lin@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] spi: rockchip: avoid objtool warning
Date: Fri, 26 Feb 2021 15:00:48 +0100
Message-Id: <20210226140109.3477093-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Y/RQ4yiS";       spf=pass
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

Building this file with clang leads to a an unreachable code path
causing a warning from objtool:

drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame

Change the unreachable() into an error return that can be
handled if it ever happens, rather than silently crashing
the kernel.

Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: use 'return' instead of 'BUG()'
---
 drivers/spi/spi-rockchip.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 936ef54e0903..0d75080da648 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -476,7 +476,7 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 	return 1;
 }
 
-static void rockchip_spi_config(struct rockchip_spi *rs,
+static int rockchip_spi_config(struct rockchip_spi *rs,
 		struct spi_device *spi, struct spi_transfer *xfer,
 		bool use_dma, bool slave_mode)
 {
@@ -521,7 +521,9 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 		 * ctlr->bits_per_word_mask, so this shouldn't
 		 * happen
 		 */
-		unreachable();
+		dev_err(rs->dev, "unknown bits per word: %d\n",
+			xfer->bits_per_word);
+		return -EINVAL;
 	}
 
 	if (use_dma) {
@@ -554,6 +556,8 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 	 */
 	writel_relaxed(2 * DIV_ROUND_UP(rs->freq, 2 * xfer->speed_hz),
 			rs->regs + ROCKCHIP_SPI_BAUDR);
+
+	return 0;
 }
 
 static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
@@ -577,6 +581,7 @@ static int rockchip_spi_transfer_one(
 		struct spi_transfer *xfer)
 {
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
+	int ret;
 	bool use_dma;
 
 	WARN_ON(readl_relaxed(rs->regs + ROCKCHIP_SPI_SSIENR) &&
@@ -596,7 +601,9 @@ static int rockchip_spi_transfer_one(
 
 	use_dma = ctlr->can_dma ? ctlr->can_dma(ctlr, spi, xfer) : false;
 
-	rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
+	ret = rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
+	if (ret)
+		return ret;
 
 	if (use_dma)
 		return rockchip_spi_prepare_dma(rs, ctlr, xfer);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226140109.3477093-1-arnd%40kernel.org.
