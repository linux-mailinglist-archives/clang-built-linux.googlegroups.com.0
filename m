Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB5XO46EQMGQE22Z3KLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id D97E1404CBA
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 14:00:55 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id s66-20020acaa945000000b0026a444777bbsf886389oie.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 05:00:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188855; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/QNVUzs8H8jyWDaAJssGWRu6mRIlJhii+WVGKCS7KAE3cXoCa9kz4rh63vhS4EVDr
         9M/Rst3P0GtSKKmWziCLZi4chtcAot9FIJU+aCe3RfTDvIOZFq9wAcWA/BoLp40mFjQ7
         Fs7R/P48/5GLQxqWo0CD2EFNCHRFh1cPSpTRY22/fTqV8wBfKf3dNRYUVsFhF7bha81h
         dEeMsniheW2H5X447FJSYVYmiuhPo2uJUOI0iJEyvdilTrUhHSn4mVv6ssavfhdzJHGw
         kveCixkWKkwJdWPG6pdyFesQZew54cKvRBb9VPAibD5IJPOAWs4syoRdcDLmB+73C8Wp
         Y/WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uRWN1ovkE7espBMSJvKrhugfXAck5mrVXOdzwqDmmXA=;
        b=br1MVF+FqbuoUigzzLiaJ0LMUG4+vf7bCsSRvfJkCy838AvW3XZRL41Fj2lzaFnBaM
         cf97kcNi1GYanousrkDoob1bWzMtj7EgcPXwcsTzWr/i8m5M7T7DBOVAa1vJi8fGhLBd
         L8A54qig0KguPW+/A5GL9ZkkBt1VWuR+whBAi+IAd8Ptftxo3dt016SpT6bfaXkJH3a3
         g6rloiiwssX1wS/Go6muYuRM2dG4oT2EUIoyAI/htUUkyCUKZvrGzqMsGDsWZKWvNZab
         rWWAXKJKayGiAVZLxjg6d8X/PKvF3O5VgiQxMf1F836meVs+Q4X/Qb84xxDBXnlM9EKG
         KC0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kmUxJlQn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uRWN1ovkE7espBMSJvKrhugfXAck5mrVXOdzwqDmmXA=;
        b=M3hvAalJyMRLcxSLrN+ihrFnDdcb6EbQ9zYYiINSaTnoA/+nBHbKogzW407z7NJ+Qk
         eHeepi/aoWlKbxyk1qbZdQrOXg2h4u9eLV6V5GQCwqhh+nyHVr0mCgNswZ5NKObvOK/B
         RJJuF+nnggG/R//4DH3CN1R7z1cA3Wdv0JrMPDCmNq7h+nwlnDcIXOnPDbuUu6XhEDPF
         zbD++9dS2P9iz76dhHQUfNVbm0SxSA/PygAxl/bF723mYmwMWEmMT2afdmD48aRtd/M9
         /ai70xt4KTZHGuyGwwuYlMSBVxgPQJT84JIF7JDe/SxczkWiKviNSrsR8squ6VRVRIQz
         w5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uRWN1ovkE7espBMSJvKrhugfXAck5mrVXOdzwqDmmXA=;
        b=adR2MMKL7r7hzCgdBsj/ya/uwPWzFkUGUtNrCDQxV7IEbnS5ZlUnPgH80ZZp5SN0xE
         Sxzp21HqYsRoLnlSMkRVusa8D+IOKwvv5cOWFstPDZFCKGvRWRXvVt1/S+1yq/NEoM6L
         XUPBFMx8Jzg1J9o+5R1EZIPA5a2NG2lNY77457+Yk4AodYNmlkPBhBd2PCZXrSkIpGT7
         62XTw/TVYqbtjpp1uXV2S7xUrGtXbVyhVPevtI4XHAmABGEMIWTVWr8axrc3bT6X7s/w
         RYnJg1Rc6sNTJducCsVZWS4r74tGTWhzVLYsHR7GuZLR++AJWlaL2Ekrv2TaO+H9UG6d
         HOCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k1IvRPlyAQubfjLZ8kRqMiH3Y4+PHV1Gj3cDLVZCAgC1bKA1x
	v/e8eHoOI6SFQv4Ao45hXYE=
X-Google-Smtp-Source: ABdhPJzCH1sLNlFRTgRdDqA13QiwtHJCzCorocT9DbtKiw7dnDz+yxHgAkjFTs9TX/K6dppRL08UaQ==
X-Received: by 2002:a05:6830:2704:: with SMTP id j4mr2157410otu.299.1631188854915;
        Thu, 09 Sep 2021 05:00:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1415:: with SMTP id w21ls366066oiv.6.gmail; Thu, 09
 Sep 2021 05:00:54 -0700 (PDT)
X-Received: by 2002:aca:4589:: with SMTP id s131mr1659921oia.121.1631188854516;
        Thu, 09 Sep 2021 05:00:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188854; cv=none;
        d=google.com; s=arc-20160816;
        b=J7ubohkwoIFcnUQW0BhkP4ANFtIPx63SCRDlsEtkL/xTw9eVf9Idmzu3xdmlhfZgTU
         IxmvOjJppMsYb204OYm/30B59AsmdzHc+0LnfIZLztPxEzEgtXrZ8fhkNTTf3GZKzSmY
         qFLg7+bGM4+pdLCrDFcN+3uUSODXMxud++nhcvYXjsz2BxdEKBnjPcJGvvVFD3xXXpdh
         lC5/yLYTUA+lhv/Vz5MQT0zbqhCgOZqn/++HTCCsgjtMcFw59432ln7vyDo6PSmsexQQ
         WLZCM8Ds3oBsRJArt9fHn84M7aKCCHL9t6gPcdc1I/YRd5RWcs8tlcyZuAVtqw/Joafm
         hcFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d1oFTI5LrXGnZJX1ObV0KCgEPzQ2x0FEKVPhof2nzXw=;
        b=NGU6CbUCoDy9jA6POvoPOOJ9XBW33q209KHPfVhXK0jjcGeaBtUZ6MWilprhcyn2+l
         T9aUoycXyp3e8zjBEGZ5/w25xlPT88JUO8MNwdV3hY8z2qE4EuArDvsw1iojQIuL3Moo
         LSl3wVip9UJSL0XmnVbr6UeTGtPMkJd+PH08ueOJHrjxItn1CPiPDNwZB3hTzT5gjICb
         T9cpjWUizG12Y+XY4A7yIWFO2gBleeqmxGEEyV0OEyDaBdOrhb5EpQVzd6FxhgfRpo7A
         kHX2Tgnd4/W3qpYM+8Wl4fQuxGPK8JHHUhfpUPGsuaT+qzpT2HCiXZ3Fg5hvE9Lkk7NY
         a1Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kmUxJlQn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f21si132590oiw.2.2021.09.09.05.00.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 05:00:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BBBB2632A8;
	Thu,  9 Sep 2021 12:00:52 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 30/48] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Thu,  9 Sep 2021 07:59:57 -0400
Message-Id: <20210909120015.150411-30-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909120015.150411-1-sashal@kernel.org>
References: <20210909120015.150411-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kmUxJlQn;       spf=pass
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
index f4ff43a1b5ba..d8c40b68bc96 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c
@@ -300,10 +300,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
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
 
@@ -320,10 +317,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
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
 
@@ -340,8 +334,7 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 				NSS_COMMON_CLK_GATE_GMII_TX_EN(gmac->id);
 		break;
 	default:
-		/* We don't get here; the switch above will have errored out */
-		unreachable();
+		goto err_unsupported_phy;
 	}
 	regmap_write(gmac->nss_common, NSS_COMMON_CLK_GATE, val);
 
@@ -372,6 +365,11 @@ static int ipq806x_gmac_probe(struct platform_device *pdev)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909120015.150411-30-sashal%40kernel.org.
