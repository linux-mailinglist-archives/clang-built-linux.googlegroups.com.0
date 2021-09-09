Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBLHJ46EQMGQENDNWO5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E603404AE7
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:49:01 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id w2-20020a63fb42000000b00255da18df0csf1069442pgj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:49:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188140; cv=pass;
        d=google.com; s=arc-20160816;
        b=yUN0y03izJ8s05iiS48pigyiHTZDMDZ2dTEG994mtg+lHxEGbILfqGFsW1cxhrJ5wK
         Q/ey4xn/kZYoDzC0KfKRwQy7GHuOY+XgJpdIsWE9xEYNrK/8TYgE38ksc3BUcppoLOzv
         KphjlpAv2q/vEp8C7SscuzFVBbtXFNupZ4lcRsnbp025ISgbUKRrtzyz+LWJDD+quJxC
         zSUW32DJv3SL96bQNVp5SK7B2c9CoqE9UY88O/XBmApbxSGY9CuHZr12tPJAeWdF7Oyg
         n0PMTqsipsjpxpfnEdQeGx+VHDzDVe2OqSO/gjeXzucvTzaZhxY9sj/vTp12q3z1L+PL
         FhdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Pf7bWZ5uPbG8pEa7hUm9n8sbSo04fglgm6IL54gGwe8=;
        b=pd0bqeXEkcYYqhY82knllwwZwyNTRIkBGMDLuvfWTYM9bMOLhE88y3uYNpPrnWgmhu
         UEWWpFlayxqTDYgGZKYiQ4cKWbYiMwNyn2RezixqPFDVZ82d8IfikyuRSRGumbRJvaob
         iXtRyBC4LMzYJixnKykxo1nlstH9AGJm9hIXxS8C5Wdc/GOJFq3UaW3qPkfvvVTOnnUO
         IdGYXq952dyGh0fjPvegQ6N//fWSiE58t7wCtJHjCwRNiO4QavU0KxLd3UfAU6U+S4ev
         AcKOQFdiD1Z5LZ+57jA0AVfnVhOk/KDc76mv8cVPyTFCM3Ua0S6bdS0hh334F+m5goEC
         qhcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qIpsI+Kw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pf7bWZ5uPbG8pEa7hUm9n8sbSo04fglgm6IL54gGwe8=;
        b=or23BMDHN5H/PQR38KcVdq35pTjFyefcLZeTQK5bC1m5nIvlObANQvyky71NMbmM3H
         MHJpcT5BYVTlHBInydHXODZYibIcsVhnmqdwqpxX+GADQYP6UwS7i2edB3jvxLArWHRt
         Mk2r8fHHmZYHG27ZDIZ093gcenwCTW8dV39zdhaCX0Q4U5F0DNFaZ22tuL8k+WGf3ouA
         J/HZ8RsbLt3J8MUSCkRTUtYInZQJ2E9CdxIISVn9zOuLpayYmuE709cX0PBhD8bjwmlP
         5d+YOQSfJ/yUuhU/oQhR333ES0BKMqVH5m+vQYYi7hG4Na6phJo6PmaVqk8sgHO9lMX4
         7wFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pf7bWZ5uPbG8pEa7hUm9n8sbSo04fglgm6IL54gGwe8=;
        b=XB1SiixVu4+BXAbIYVxVtx5dkeigafYrnaAzz3vU9OuTXXy8fMws0lqgQGQOL0tdAl
         E2d3VkHZU87bG3HHOpm7QxJiWe2yTc0NGareu3+GPN25N7HhrfwSAonaWsLL2Tq9hElR
         3m0OdnU8wwc22P0946BdY4mjklp3Epg3acR3kX16bbA7nXl3MeyfRtSoBXIjpEYuQOvX
         vAqOF1XE94CCzK3C6dd0ekouL1J7w58UcoSTlCXD6qJ/F9g0sOycJSI7CqK3urU1Ogs9
         eXK+dY0Pozi0d3pi1IxelsSOKM8bJqL1NvNqCRQ5nNbbMbvQDJcQaZnaytmvF7KKcrfZ
         HGBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e8/xGBJq/jUj+9qWn4dx70Xr50W0TfxZ7bIx9Yr6h71OUKOIQ
	DYEx5fRZMTEfBENHL6mH5vo=
X-Google-Smtp-Source: ABdhPJyvMBK5puza8nO8C/IXWGtk95FWToV5VsDZynnYrFRRrMz/0HxSBWEtv8/opdjx4R2EtGTuPQ==
X-Received: by 2002:a17:902:b598:b0:13a:148d:2d2c with SMTP id a24-20020a170902b59800b0013a148d2d2cmr2373688pls.50.1631188140249;
        Thu, 09 Sep 2021 04:49:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed83:: with SMTP id e3ls1133923plj.2.gmail; Thu, 09
 Sep 2021 04:48:59 -0700 (PDT)
X-Received: by 2002:a17:90a:4681:: with SMTP id z1mr3096037pjf.113.1631188139618;
        Thu, 09 Sep 2021 04:48:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188139; cv=none;
        d=google.com; s=arc-20160816;
        b=m02358FqEVSZenuEzIprMpZwJTH2yh/LThE4b9uREIDA5L+3zTy1PCIAgtUF6UFP1z
         JSFjyBTeIBDyZe5yodW0zw/27AL/MtnOi+B2rORwj5QL/7oePPM3IIHv7uG715+A7y9w
         J9OSvnjnh00R2PSPvYYCFhKgL/rexgeYss+xgX7eRaH4cdcfVLMb5Z36bpFzBFO3jvX2
         HhNE5lBBl9RyLVEX9uNDpc/UT4LbETdvJ6LUOt+6iYyRF/pcJXu+jGFn/3TQFMsZyGld
         6ZnYXdi9A6SbDETdLyPWR/U56Q3QKfyqYpVpkox70t4NMJVxkYUb/vTmB1o+u+J8kV4P
         J4eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bttQex7p7TMAo0fwRqoYpI04NJBJ57+vkBopoOl7Jfo=;
        b=vbsipDz4FuCeuLT1K1oFSTltjLr43NsZSB5ajgRyK0y6DrtjLhhlKQkOkU92uEEBKM
         CoF6SSgPDiiYVocSI33bnu10bzcYy2eE1WwYvaotBFNUetvmDeenucb0mBSXuQQ0exoN
         lH77EWsAed1x/vtAJiq+Yq3yYho7gbA2EzCoLTN0qy81WjT1iu/OlQlXWL+mcD+sWoly
         UC38nPKUgadkdI+o/J/ywC+2xKWFZJ2KkkrLOVgHLoS8wUjYWU0SQ9+mCuQfXLMKmoY1
         faMtgXMz4iH+ifiPEEkCslYJ2CGedjKXPhCxkmVre4xl/OHtWMdyXlDb0zncZ+N1fwwE
         6kCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qIpsI+Kw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 136si147412pfz.2.2021.09.09.04.48.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:48:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 51C5D61A53;
	Thu,  9 Sep 2021 11:48:58 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.13 111/219] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Thu,  9 Sep 2021 07:44:47 -0400
Message-Id: <20210909114635.143983-111-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909114635.143983-1-sashal@kernel.org>
References: <20210909114635.143983-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qIpsI+Kw;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909114635.143983-111-sashal%40kernel.org.
