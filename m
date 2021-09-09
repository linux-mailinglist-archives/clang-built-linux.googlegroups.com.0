Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBMHO46EQMGQETXCFYGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id CB36B404CAD
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:59:45 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id u13-20020a17090a4bcd00b00198e965f8f4sf1206810pjl.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:59:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188784; cv=pass;
        d=google.com; s=arc-20160816;
        b=0wbbA16plel9GkCnHM+uiFqcpHetAsC6BgH9/W8EmQ5yn6lEwJSujg2THnM9OIZKak
         r4KKCDbn9jP6d8tOn2xxOAyZ8dcs2eUCVvydekoad4wXzQM5SYjBivEuVldpcfdVqVuB
         4d9QysdeZ4TkqkxFTRJoSNnt2o1G1RAu9J+uJF5B7/TQWzTHgSrGTKh2o5G3FlAqsze+
         cPdhk9v427PM/hD85co6c9Ut3uA9t/rNsuy+mp9oMXfp+FhiW2M0c2+iRPSeblQpYKmM
         iXUURJW2jXOfP8x2EpTU4dp0y7cPy7cRAybDgckKiqc4TRaULFR0rPty2FCp2IG3sPXR
         33FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ywhp8f09aBcYerlNIzZUmrW2eo0xr6+vCYjH9FHH9Xk=;
        b=CEakVgG0xXJOMOewhk6mZHU4X4nCa9rbYyK1V4yT7tWSMFcberDh4dCo94zI+8tm06
         wVnqb2qrmky0mTm+kqtvFT12UZUP4KuyE1ukF8EMZBaHywlqG5VuIiPuTaPi9z08iBSH
         5CuNDhLk7KBB5Qjuy4uWlySRivKZL07mqQBANxObgG3gClx3mWrEF/WZhqU2WZCUa9hT
         oWaJNKRZ0sBFkMlJyKv3bkpaKVVeTe1hmuzORuOL6ul8rcAXLbH6AGI3SVm/v1yn+v7+
         F4d9u63C2eipSt5fThalFO4sGuIUthyoAOlEPzxx0EDEfneNax41712jxpTo26vCrdi1
         IlUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bO7DIqzr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ywhp8f09aBcYerlNIzZUmrW2eo0xr6+vCYjH9FHH9Xk=;
        b=EFxzlhN+rSIKDRs5TcM4VekZxgVQTOvrwJ2kxPI7C8qAvzj/CTiEkHsln4riym0YiH
         uex2KmP+Uh7rOpOqaHpQrTvLwDdmhl1lSynApEmaJtBbwt57q5H4ExTHOWaV5mzUHuxL
         nqtHMr9teRa9WqTJhKhQAyXOqu9WZczyqLtO+q/4CIqWkQ54QVNgOrsONx6FTmcHrJBR
         UQzXJxz3WN6jw51rCt0uIZwrcu9TF734u7LWY37SEqP8ZHpoTtDhRQxZgOKQMrpCBStG
         OWtzEphki7ONG34dbplK41tI+L9HS+vbwZSEcnH5Wslif1JDNvvUeMI8w2wUJGiCSQ9m
         5eRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ywhp8f09aBcYerlNIzZUmrW2eo0xr6+vCYjH9FHH9Xk=;
        b=btJENCeCY4JTJRxOhCIpcv0xzhJWtLnGK2wCynNS4fLzSLZAOtXLHmi3QeX746bSw7
         WdvkxcE6hSC4rzzSS5sUz+ZCHThVbQoju9UFRkNCVV5aY0rrXifvixzG2RRHkprINLzJ
         4k9NLr5Cn/Jx6BKIgQNB9yVg4uh0kkATBAhnl27p94KOyJdZgsmIO1QOYQN4rfdFb0Oc
         z7rF9A+GbQpm9mwiT1r04ggIW6fVzSgZlLcN2rgw1mtfo5bqvwTYkLh3vEhC0vLT3xHC
         g+BopPkXf8V0fuooE4XuovzweWSxK2ABn4roeS5CRc5GM+OK2XF8eFKv7nU/Nw/cRp1g
         yQyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f82vq8i0curDehppDq47JlVY+1Ok0jJ7kzgl3rl6NGlnnFnfR
	oD9p+MhOR+U8L4WMl+9pDT0=
X-Google-Smtp-Source: ABdhPJyJfz8JbmuePSYCsx62bK1hUOU+R24aPzZAFCpdW+AHMxTM6D1N9ZNmvIem6Pgf/BYRL9rbag==
X-Received: by 2002:a63:cf44:: with SMTP id b4mr2354263pgj.215.1631188784574;
        Thu, 09 Sep 2021 04:59:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:41c5:: with SMTP id b5ls841990pgq.11.gmail; Thu, 09 Sep
 2021 04:59:44 -0700 (PDT)
X-Received: by 2002:a05:6a00:1705:b0:400:3a97:8ad9 with SMTP id h5-20020a056a00170500b004003a978ad9mr2867921pfc.26.1631188783991;
        Thu, 09 Sep 2021 04:59:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188783; cv=none;
        d=google.com; s=arc-20160816;
        b=vpQD26BF90DRKwwJvSv8de+4kT4g5wCTkxRGGo6tJIOKyVpR+Zgi1brwZm3m9F17Zj
         M/x/XkyvxDUrH1wyZx34V0IEnif36RiTz7Y4d7OIGAlUeDiO0HrHF3ufdMtmF0dv+Cci
         x6fm0lg3JaFBJCusvSmbdMM6ehTgU/Y+aARLjB0pk7URwS7PjHdlgp7LLNcFWpTDM4J+
         FpzfnzYuCBWUIrfCoNsbYG4iD9HdpB7Upc4vZ/vy6mlvweYPjd01c10CwpPYyIaz4YxS
         XQyHPfhJ8KvXWnaqC9XCKBr9w3BkUYpa4+vu/vnESJ43Ztoee7kYUYjO/1RC4mGNDgTV
         ZfmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d1oFTI5LrXGnZJX1ObV0KCgEPzQ2x0FEKVPhof2nzXw=;
        b=eGm0wcfhovG58btD9ifEpQIdXdBENZMuzSkYmxoz8j0rl/Cd6O9A8My0/2NPKfNq5l
         xBZndga8BikUjeyR6z3px0xYjtF6GYGvWaHpu3oJ0qCkRTWxweLJfADz84YLAIeZjWg2
         2BO2qxAuye94eky6EYROkuQB4WpTVYaHPONiOm4B59Imx5Ig2QKRl0f7MjTxdK0CKKH5
         DpJQic09rTZOfeGvDN9sKP4fmhX28po7jp0hsBSW7I//l+ldFHfEp+T6WP1wM+Sm6sfS
         rOu+B//Kkv5yABiVxVaLxiSh6KwJbdOqhOH81gQsAdd6Zq1bqoSLXwZSzfev5x6rU1s8
         IRKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bO7DIqzr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bf14si116041pjb.3.2021.09.09.04.59.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:59:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B058263283;
	Thu,  9 Sep 2021 11:59:42 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 34/59] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Thu,  9 Sep 2021 07:58:35 -0400
Message-Id: <20210909115900.149795-34-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115900.149795-1-sashal@kernel.org>
References: <20210909115900.149795-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bO7DIqzr;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909115900.149795-34-sashal%40kernel.org.
