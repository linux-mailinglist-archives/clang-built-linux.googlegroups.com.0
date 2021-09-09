Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBY7M46EQMGQEKC3M5YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D84404C84
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:56:20 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id y12-20020a92c98c000000b0022b63e8657esf1824584iln.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188579; cv=pass;
        d=google.com; s=arc-20160816;
        b=oSDv9fmLNn+OScwl1au9haQGSbzbikwM1R/7XZPhMq/fcauIyEqCZvdaDWYG1RHfXr
         J4Q8/N92rrG55VBLWBuXVeji0nYz7ePwPnchYB9XDBYPF2o8rWm0/IKZGz/xOVOorGjf
         aOUOZaVayBT5xfZk9Cz1MsW9+5iDS0G8QQjMh7ZtGyaJnRcWFAsLWvPol9C6GOEEYTsV
         0x1tc42MNf20fMZyVEXUPS1QKt5jrBtX4NERRj5qHhPKOtpSDzfZSXjAK/jEqsL0pU64
         w+0BfiqeeFpzbT5HJYOlUWYTes32AA5esydyKcGlu5cshWbITezXzJzjFOO6bRrnU3+Z
         83WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iRz1ycx0vCZAytgTAP9ON80HmzrWQjfvsgT0HRA8zPM=;
        b=LLQm9IYjsvO+mWlD46Yk2Uf0Uf5S7w/NJQpbGU8tFzg9rlBxfYxEaSjRYfSqjudluQ
         3tAm7MTzpZ4s1ZMJRPRyFwN8qb+cRzb121LKGPHouuUdWFGUxEgjO/0BVofPc1yOtV+t
         0I60ReMH8aLOVPUrT6OGXwapwLZ9RNHLjEcli7Ap/q42SsnYb1XEGza1L7qU9rDhaPT+
         nCCsdPMnpgXrNK2UmeI+RqxS7tAuSn7qNamAPq+EgGes4tAeXrQauwg/hNwFSVufVmPZ
         IY9eumDDC8oG+uJWX6daksxfMGrcD86wlM5nYeOW8m1VE13Jm2Ng4omQpnd8AqtUiNnY
         EUWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ofHCIiTj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRz1ycx0vCZAytgTAP9ON80HmzrWQjfvsgT0HRA8zPM=;
        b=Jj24ANvDiWHzpNlFxvPo8Sww5kZABRyGn1Ez/PLFPcAmrab7XSWeLk9QO1HqNfStW2
         AnGDIw2Ftud8p+nMEOmvbsFLVAMRxKzuOc8+br7fIr/DeDHMRy6RVY23bFME3bSBYmih
         WlGsxyQYhV8hCBRllXJa9AbUdptlzR8BOgPcTWSjY7prKtEyf76Jjn3wiwZMeeRmcXBI
         6AoKqNaMoTTyqRLOfTO4REJP2o+KvPeCz1BTeVFLiW2VbAqY7wvMKiboqndNMiqWnkkr
         BbFSqbfojGWBYepcXKmwtHSuHB0GsVmGoeou77PjaHmzD1GbFbAXDq5GNCIFsbyB3De4
         LdAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRz1ycx0vCZAytgTAP9ON80HmzrWQjfvsgT0HRA8zPM=;
        b=5pebm7Fwaqs58yvqYaTu3hhKg1oJi86FieC8ZXoCpybYbvSSUu9I7XLwRye7QjHUIN
         JP7FJVuw4PgGvtQB0RA7rVH7eEFL+XcwTyKPjZAPKyrQlMpHuR3ayl0gsSHZEb07Tp78
         +8WsndJu08DRk4DYRsCzmd7JUUdQngkhD8SirS7gibKaKBaJ+zD+7oBEARsh+QM2dzGJ
         5zo0gTlt15o8kQ3TcxK1x5euNv9u3fDWy2Uwj2G8T4AW+FWEJNyU9BHz6oggSMri9XDD
         HYoXF8Ewy69GdKXFu1lqeGl/a+t5KZRn0IoeE0lQuAMGhEI1jixq9vxqVOwgG7z1kZra
         fGQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bPOReFC7uOVuht9o0DKkp/rjp8sIGKpjcfy4BOi5vkrnHsSQs
	sTl7C963pJziLJ36Brg2aPc=
X-Google-Smtp-Source: ABdhPJyS46cQ9hDeXIykcBes3+mj6gnh8+lKShUnwod7f/FJY5XAMyls2pDfiNbrvqOeJhzCFqM5ow==
X-Received: by 2002:a5d:96da:: with SMTP id r26mr2336340iol.47.1631188579653;
        Thu, 09 Sep 2021 04:56:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:148b:: with SMTP id a11ls261915iow.8.gmail; Thu, 09
 Sep 2021 04:56:19 -0700 (PDT)
X-Received: by 2002:a6b:f114:: with SMTP id e20mr2297117iog.41.1631188579259;
        Thu, 09 Sep 2021 04:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188579; cv=none;
        d=google.com; s=arc-20160816;
        b=uABttaYt+64fdyEV3tXd2rjwFfIhgm6BuBKUIz2vVpWjmddpwiD0DHvBgRxVqo3aMr
         mVp7Is02/Td3PI4261vw6Eo0qlO5quVoKwZOYB23TeuUOF6Oap2xtRHPiHyrZovvXj9E
         oR2w0Vb6w/R9z3r+ot/MhmyIEgpxYiC4RYi3Lq93bgfG0HbaiMQ+FA+DcnrB+6YWINam
         dc3lce3/gzmAr1kTObFPchZ3FW2t+1ffNr1tIwb0YUXwyIRhVeOcOguzyppZQdAqUuwd
         2//ksfJ7xa6cZWcsfZbC93ObQKNabc1Wo6+kr2/6yqWTP90MLsFwBjwjlcR7ljZRFpta
         ITBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tghsTLgmbaHZ0PAq9TGBCb4gOztLCGyvUujPFSUHM1A=;
        b=v1hYL7sKxxrv5F/zRaDpcCoRv6F5a0C65sd3MIkEsj6tXlmmn8RiUv3Tn8fBea0Ukw
         arYB1M5HW58jWFVkEXrj6UaVn9pV1LbIRtj163smRMjA9xhtXEkGNxdvzR6pn7A1hT9f
         Fs92/cOgntCPtVf4GAYEYjZo4+iPXTlZqGigyhZsQ4eBXX/KtZ2V9ilROW/l6lIDiugI
         wluBXMov80Z7DaIyuB3+aARVVpbfFnmrEm0sv5eYFxwIfSU7HVo2eA9/Cm5tmNA5HD4d
         0SmfO2Abyk707jQrsbIDKGe7mgulNUwWxdDHkhdezHOOO44Kek8jOCz4CD/Mh389Uh72
         yXpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ofHCIiTj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si123290iox.0.2021.09.09.04.56.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D8EB6320E;
	Thu,  9 Sep 2021 11:56:17 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 056/109] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Thu,  9 Sep 2021 07:54:13 -0400
Message-Id: <20210909115507.147917-56-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115507.147917-1-sashal@kernel.org>
References: <20210909115507.147917-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ofHCIiTj;       spf=pass
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit 4367355dd90942a71641c98c40c74589c9bddf90 ]

When compiling with clang in certain configurations, an objtool warning
appears:

drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.o: warning: objtool:
ipq806x_gmac_probe() falls through to next function phy_modes()

This happens because the unreachable annotation in the third switch
statement is not eliminated. The compiler should know that the first
default case would prevent the second and third from being reached as
the comment notes but sanitizer options can make it harder for the
compiler to reason this out.

Help the compiler out by eliminating the unreachable() annotation and
unifying the default case error handling so that there is no objtool
warning, the meaning of the code stays the same, and there is less
duplication.

Reported-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../ethernet/stmicro/stmmac/dwmac-ipq806x.c    | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
index 0f56f8e33691..03b11f191c26 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
@@ -288,10 +288,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 		val &= ~NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL;
 		break;
 	default:
-		dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
-			phy_modes(gmac->phy_mode));
-		err = -EINVAL;
-		goto err_remove_config_dt;
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_GMAC_CTL(gmac->id), val);
 
@@ -308,10 +305,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 			NSS_COMMON_CLK_SRC_CTRL_OFFSET(gmac->id);
 		break;
 	default:
-		dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
-			phy_modes(gmac->phy_mode));
-		err = -EINVAL;
-		goto err_remove_config_dt;
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_CLK_SRC_CTRL, val);
 
@@ -328,8 +322,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 				NSS_COMMON_CLK_GATE_GMII_TX_EN(gmac->id);
 		break;
 	default:
-		/* We don't get here; the switch above will have errored out */
-		unreachable();
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_CLK_GATE, val);
 
@@ -360,6 +353,11 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_unsupported_phy:
+	dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
+		phy_modes(gmac->phy_mode));
+	err = -EINVAL;
+
 err_remove_config_dt:
 	stmmac_remove_config_dt(pdev, plat_dat);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909115507.147917-56-sashal%40kernel.org.
