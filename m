Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB5XG46EQMGQEZT6SLTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DB24049F9
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:43:52 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id z9-20020a17090ad78900b00196680d384csf1215216pju.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:43:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631187830; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7m9yxzGRdgVz6229ObGgisDR8+RI7E+0EB9o+LIvn9lSuuu/aRd548qKX8RcZHENl
         SYeP7LYk0N8pjsuFBTis8BM7k8/Kbtee8wynEh5Xrt43sKvEnRbpqsXuU/uZ+hp5NLNZ
         e/qImCcaV2UPHLsia7BOGsKwWq7nrMZcIaGTgkGy8E/6U1shvkcr4GYyQiMhNz9TaOfh
         sAM9wCqSUaY/w3QtuAjwwFPtag5ECBL+YhxHXHO1BmdbME7cxUUzIoWrFiafq48ZKfSm
         MCcLwix+9svrKGbIj53SH7KeARdM+NwFjFE7m9aZyXyMXq7vTLZ1U4E7hB0a7LEHfB1g
         rPZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qkka7lGsB+OMCtWo5LtB32UOYr0kVQ6yhTyj3GaHCIg=;
        b=GLup1Jc20jjSHk6xyceFZlal3Ra3wVp2jlHBV5wrexiBgtVvbvH9OL2GNZN1ZBDJ0u
         4pxBNMKZU9infCKJ7vxW6K9ulLQ/o2sYpxgioExwwzzajDgIv80x9usfaR3jZpwGLYlp
         gADGmNh0Roro8mtj/8dHBsD+k/XrCln9+k0dVI3K1JnUtFjfo8SElN0K1Y2SB9NytPZM
         dxiexepvh8tQtlymI+sMrVJUgup0+hZ0644Irun4QFxe/SDwJ85UdR64KeviqO+5mbcr
         ARo6CpauBj9MZlQRYB9ztRER+dSQIlUCmn0kgmMTv8rgPZhEzxYp6P/v4Ke6tbzrVHdB
         hA9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fl14Y4YS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qkka7lGsB+OMCtWo5LtB32UOYr0kVQ6yhTyj3GaHCIg=;
        b=ExlCcSqWbdHqo59VGI7DT45FmMfeCyyfpNbmG5ThLYgdtT7LZ9JKOiGgt5OHLg72N1
         NiRsAbBaaKuIAKo5nTh00RTLA3ZHk3PtNw3gjFNG+vksPoaK8mz4gDyE/safb2NWpiCv
         XPgJiDiByj1jMi/GaanfbORwxAhZMBctRxIJlLQ8DLnBLgNiZe7P0Jsh7AszJp229cXq
         zgxaxGPox3JRGEWDGFoDnInZJw0gP1wPTQtDRPqS0P1RUMhQvcDWNw60sXwf8XHZ379l
         oU+4eAtiQemX84wuZALGfLVVy4lzwcYOvSqFBEH5YgeNpHW5rSQ3G2DewdyNh55j3tU3
         JRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qkka7lGsB+OMCtWo5LtB32UOYr0kVQ6yhTyj3GaHCIg=;
        b=PwHzk8Z5FZIvDhhinmQlpHX4XW2xfT0jjzqBZDxwnKVrpOI+uYwkVwIydkxcyzt3xR
         c7ycPRvWBXv5D+jF2uwEHEBEESBaDhWq5Mx8K41lDR+/RfpcKovSC1fP97fKfY/k8+rV
         T+UZxHk46opInY7L9mSay/JNwPJXVobGGP7g/f4IQVzY/mCu+dEu87X2Fj4xVo07xVpl
         AvuSb72tqFWY1FJJy/Z1bQ5xLgY/IajPbgcrXdc0sUkzuh8Ne5ne4MHoIR+pOGxA/6J5
         /jDcYN83efscYhqH6ScDcfmY+QbBGt72VdzFvktA1X/S5cZWM49b/fiVT0EAMBWXND7y
         BwQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530meHmsrQ9fmaMQ30E1FTrlJTlPGFJH0XuwUd4/tF9LFxuIpt8u
	PhZXUJUWexK2JqdzVvPBPGc=
X-Google-Smtp-Source: ABdhPJw7Gi71Ew0G2HL6JjNFcJd0VHtrVuqbL8KCrcDOhNOscCsLBCnUOOAIBNMO28EGux/u7/WTCA==
X-Received: by 2002:a17:90a:750:: with SMTP id s16mr3071615pje.234.1631187830742;
        Thu, 09 Sep 2021 04:43:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls1113688plb.10.gmail; Thu,
 09 Sep 2021 04:43:50 -0700 (PDT)
X-Received: by 2002:a17:90b:a06:: with SMTP id gg6mr3056285pjb.72.1631187830055;
        Thu, 09 Sep 2021 04:43:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631187830; cv=none;
        d=google.com; s=arc-20160816;
        b=c8Y69R0B3Cj4j8b7sbJNXywcZnqSUPlo1k5kHrsWi8sd6voc/3dj9lt3qFUZ8hRroc
         LCiTxdf+GRSLTKN+AKWNarp8PMTuD55QBh+/a/rtkWFfynE78z6ehPbs0Ng2lP8H5Ts5
         Tp/YUY5CBfqrZVI7q+x3Ry92Ce+iphgpgKHcB3XVNP0PJTswvIqS6wKt6b4jfG54ve+S
         D76vXYtWcs1iBUS4tFx8mSogl9QOzTib/9TB8YUudB/UqRUMiGE6lGgSGdmjgKqlVhlt
         g2aRH523sJKSsQRN6aIegvLEUUj0On50JqQuIkszYihe5HMY0Fb5bcm8FC/KppmNVNY2
         WjnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bttQex7p7TMAo0fwRqoYpI04NJBJ57+vkBopoOl7Jfo=;
        b=Ekt7+S1qR8hlBDN2+m3pT6i3EUMI15DUH+9yT/ZSlcbl54tWfuvILHzjKw5Hyz+45i
         UTR7VU7+jg9c520en7wPscFLsnW3hqqI65+xVE+v2iO7XFLCQ27iqM6T4p+URnfz/EEb
         2ru7ouXJNji3UGnbXkSOvjggFJzMwBhlPxpNewIJJ67p92caQmu6o6bo4DCx1i4fx9Pk
         LB2VngOfcZWuUUK9jghWxLna30DwJLhrKnNk/M1dyiHanTbrXm4Gy6LSTD4dEdA+alDo
         hADx7v9L/4vGd4cwZWzOugUI6t3jE9RL2o1riQ8n/8NdZ8n8TTof0RozH2zRuSwvWgWv
         wyCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fl14Y4YS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 136si146579pfz.2.2021.09.09.04.43.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:43:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B961A61213;
	Thu,  9 Sep 2021 11:43:48 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.14 126/252] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Thu,  9 Sep 2021 07:39:00 -0400
Message-Id: <20210909114106.141462-126-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909114106.141462-1-sashal@kernel.org>
References: <20210909114106.141462-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Fl14Y4YS;       spf=pass
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
index 28dd0ed85a82..f7dc8458cde8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
@@ -289,10 +289,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
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
 
@@ -309,10 +306,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
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
 
@@ -329,8 +323,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 				NSS_COMMON_CLK_GATE_GMII_TX_EN(gmac->id);
 		break;
 	default:
-		/* We don't get here; the switch above will have errored out */
-		unreachable();
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_CLK_GATE, val);
 
@@ -361,6 +354,11 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909114106.141462-126-sashal%40kernel.org.
