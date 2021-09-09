Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBLHL46EQMGQEAFZOPJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 07587404BAB
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:53:18 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id bc36-20020a05682016a400b0028c8e8a2746sf781593oob.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:53:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188397; cv=pass;
        d=google.com; s=arc-20160816;
        b=VU6xlUIOjvfWX3/05th7XwV4ssn97g8pd/rsIWoAkCEc07qe3ca7F4WAe4vGEJOYff
         X/38AklMmEMNmAxgZxrKE4TI5BwfV0janGe0osctwRsq1e/R/mvrPwN6I+xHTKTB3vZK
         7JmDrjeSBjdwXUxAPRJw5yJaGw1Dj/VZCksBowNAtzfOaurEw5yBgBIoulA1ypPWoO2M
         od/LyJwU3YhIordcQv4VHP6oeQRUNtyWt/siaLJPs3aOXqXPCgHiNBOWGiNxGQPNIN21
         I1WoY3Q3vW++9JMpwvOJlwXRyaCf+c4rIjnOktNMfeYXEd+oxKdi8tyeFEDfXI0UBBWe
         iYgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FzooI1NUPX2gG3SfXEALqTzjujxGZ8wvhIFBWbylfKU=;
        b=NlReFMZj3UK1VzZF04Gc/ry2h7fM1/FIE7otyMNCYf5a79Te84CGmTQc1DnAAqyg05
         gcZTYGgVRBMd9Ay4LHMTxuIebSwGdJ+aZg6zm4hoWg0YPUTHPvOdX7vFa+02aV3k0iSQ
         l20P8YJ+XCAV1FCFx+PDDjGn591bRobXXlTcYLxiSts5z1KLccwzJPIhWkynAJD3WFzp
         Og7nrij/e57cc8r7nX/xjgwnRTjRup6fxTaWbyj9BxGod2+YMyzq/952PPNHiiQi16mo
         k9sUJ/49zhd23j2dNvHtjolUpAIjbcEJ20PeHSlWoI+/ezJrxfXCwAxzS6/deefApP2N
         Gnig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pBG1QKnY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FzooI1NUPX2gG3SfXEALqTzjujxGZ8wvhIFBWbylfKU=;
        b=bKnXmsMoJVONiUDvswUdSbJeJSbB23iER+LD2Ti1zn7f0aZmKi1B4IKbaRXXvTBtJe
         HyHi/PiBDEdDJ9LVRNvdi6Qdmlu2TB3w9R7oQwvovKyqzP/FELFcwxCnwv1d5uRYq9S4
         qZJeK9L5rCKkeYsg8xPP1k27NtSTHUBJj3WL3DiYeY8YWvnQjHLxWODKu99y14q1+ZsJ
         CdkJPIWyH1Ho5pCImhg+gvHvKhfGtWbawtsuqO8Py+sLXXAxQ11++IH42lIUMPefVmaw
         pdI7ulh0TnWnBgiNHpjk2zcuKwHnkg6cjRGT3fGepUEFCAfn/c/3WFotmgyVD4Cv7gxD
         nRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FzooI1NUPX2gG3SfXEALqTzjujxGZ8wvhIFBWbylfKU=;
        b=taPOptmWUdHzalB06gI7sn63yHTnTVvpPjk+aJUKaApWkIG2E0OSuhl3/S7WW+vDBo
         RbUFs1JGrOUMTBj3nzle03CVpEla7ZdSinGBX9czldPWZWDGFDz1purFHzia0Bfkd5fj
         koDY4vnEJ5ioM7Zsgh4knTCt48xdrRUt2M4CFjIG+RvC2F690WzqN/iNW+TKSmaHi9BF
         8AT+UXN5IqX7RgS1WeVVBfiR7bbk4UVma+GyIO/ebn3qOHVqnohdgaZ8wDL+2aNYNto7
         p35/DBEM+G3OmE93xwRNXtJ0XVOaQoyLZYpTpU6tObRhmPXh9UPQjNYeaIxn6D4telUO
         g4PQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rTg1oGnS5ehYddPvnf2+DBwAQJUEIuLOKPIk6HpV2UT1KtrjZ
	eWesFKEFtk1kOeCDSsV0EMI=
X-Google-Smtp-Source: ABdhPJxeAb1arx/VPuH93nv2MDREyItCNXwl/k4SYZjMEdSxQKSTjvcLo885eVkQEn0XyLdvdQ5wCg==
X-Received: by 2002:a05:6820:613:: with SMTP id e19mr2134750oow.67.1631188396835;
        Thu, 09 Sep 2021 04:53:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e5ca:: with SMTP id r10ls106160oov.1.gmail; Thu, 09 Sep
 2021 04:53:16 -0700 (PDT)
X-Received: by 2002:a4a:3b0e:: with SMTP id s14mr2110518oos.40.1631188396442;
        Thu, 09 Sep 2021 04:53:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188396; cv=none;
        d=google.com; s=arc-20160816;
        b=ltvj+yAXTzzEme4dP5VVeg1rjs+8/Om1h8HoIqakrh2t4crK5SXbF9jfvEobbzBZ/h
         JxcGr90vYfFXK5PSZXguvixuyUQ8okWF2FjaycSoFNmNBCxOgjdJAsazLsKuKZrxNIaC
         aEcRfF+dKR1GCOYHN9DVAqCV4+Fq/X00h7u6KFwvW88Rw9tlVEbRUTtqZwfyp1p8OObH
         TdpRiahJWZEV5+LLRbAnRW1tpPgRM9E0xtMJ0elhwtCsoUffNVVZYFwZWJj83UJFLv5J
         CUoljUCo9IupBnTQZVhHwNYIzk+Xy2EwQJZ/vTpABQwC3GIZVRZwNHq3yf2s9DkHoV7G
         45Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sXttDLYExOVod4lWL0jONiG0qnbjs2udVDB0wYX+Dc8=;
        b=sh+eBs3JYl+LPD3ArgUFgAosUugI2n/skNWt502k1S6MKAzixp7o8S7tAHZA34yn8n
         mjOfIvVHXfdY7kfQXGFTG2gydJon6PvceQhMjcEeEDZUYLX2jvMnJJ00LT8D1U8+xc8s
         iumRpC4+vq0IAOba8QuyMZ64i67h5Lo5DY/6KJUNmhM+eMOuHnCI0rctLovhXyC4WKCB
         JSwYlYOWcKKgpPL/zzrlkrGPBv1JUT4MA2Y4/gDGlhtpO0VEJlJU33aJL+TOCH3ueQXZ
         g5fZrLtw9JfsgUsRV7RGfC12nudeNF7peKFrrIkoWi8mZjWeBf4mvR9xtFlBmdllHCUk
         I+hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pBG1QKnY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si86823oti.5.2021.09.09.04.53.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9931961B48;
	Thu,  9 Sep 2021 11:53:14 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 091/176] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Thu,  9 Sep 2021 07:49:53 -0400
Message-Id: <20210909115118.146181-91-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115118.146181-1-sashal@kernel.org>
References: <20210909115118.146181-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pBG1QKnY;       spf=pass
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
index 749585fe6fc9..90f69f43770a 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909115118.146181-91-sashal%40kernel.org.
