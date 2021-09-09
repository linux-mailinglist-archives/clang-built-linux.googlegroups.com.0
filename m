Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBXPN46EQMGQE3LKKHNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C5C404C9F
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 13:58:22 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id k1-20020a17090a590100b001971da53970sf1249331pji.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 04:58:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631188701; cv=pass;
        d=google.com; s=arc-20160816;
        b=RdyRezT+kuZx69CsmNiuaOiRClAqqMLLIxY4n07eVl8z0nWsbOy7T4uC5UI1qB7ypw
         cErIHHjl5yaDiE0L/M1t4aQY6J0tEqPODPlA+jhHi8wz4trkAUtHehm3b8w8R04wf8Vd
         1vpZUpzTuVicJw5fmhGLLGaNw2X09GWLZSSD+xqNgh9Zj5CLNTA9cxjJn0sOvRvYBgZP
         ynGqpez4bYZ3+2fF2Fq5kmheQqqiJC/pC3eTnheZra3R7ENdJtzcmRqLn7yjqlu8Iy4h
         exUkvXhNXsDjwsM0QR4G5zxXhWzDx1DaAhyOlTA4JEUleeNxy45wZxK8ax1+jYhfDexA
         vprQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DkoDhiAweJXxUjtxwqZ6dUXcH0wJ7HoY9BlUEsmFYtg=;
        b=NqDYoWUv8Qlw/ZBgRUKAbNqLmCBxI7+nKeI4fGg+S5DmGcRPLdhPr6HzicsOuOnYrP
         tKqWWkaf3qqwXpHpq6zpgujnOAdwU4/Qy/6YB4GKddbnfAGqbV7ntmYjnOxa+//gNXBm
         2JUgV+Xb3EDHLw8cYI3pnM6NI3oKsBYqNN8Wunltzu+B/PODR0nJtXYTzVFHkHszq1Eg
         TY5V5ppCjgeITriOuGnnuO6OYVZMCDBrOYzVmhErOWF+uW7LKh+QVSBPUDEqWeUVePFJ
         r4crFiKPfNNAcZUUgx+vke7KAiXybtxmYUOzFDnPWHzActAIBDE/93RZHW5ArjbaUMQH
         lo8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yabs3BHL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DkoDhiAweJXxUjtxwqZ6dUXcH0wJ7HoY9BlUEsmFYtg=;
        b=XhUVYVB62MI1crq42Ps6dEghQjStdpPvPeMQotZTw8ut69Ap1GDIzH4Q9XWprN3AUg
         MqUuNLDwam37Pa5J4HvY+yMir8lerwc2MNEJlCZO9Zn83YRBoSwNDpqpYVe/EHKRIt4+
         lmEqSECmjWTcv7EDZk7b0fEJhTacgsz+hs8S0y0/wRyJDvk3slbFHk4E/QPzYkoTJAOl
         s7q3FH4VZYxZV4WE4Xt+WN/Fb4U03l9fqzGph7PIbRm9zzJmVzMmAXBVao7dHaOkwVYQ
         0Kp7Lt6vF8SRCQtc5PR4GquvQRD6MLm/D5Uv/KWQaJpNyW10AVXfoNJl0xm284ttzqyy
         V56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DkoDhiAweJXxUjtxwqZ6dUXcH0wJ7HoY9BlUEsmFYtg=;
        b=n64gYqxMja7KmUL5iKKWY8+4s9HSHopucXap7i90K8Om4XoLHLF0Jccsno84WtVUdT
         st2Ny25SqNKaFAtIqwvWpu3DrWMBo6UungMpVkIOg6zyZIq7c8fGWvKmNX5LBhuf+x3S
         ut5XN3HYf1kht05Uyhh1M22ZE4hIAuOjYz1FtM6f0StCkBIOee2gWSOce49hIE2faEKU
         TeyM0jf4cEIIB22dWxN+tC44vCSbZlw6+0nsWFIxl/gC2J7uRRRkgp4utb7ccL0cDROc
         C2SfwdaTKM462Zl9SOhN6h/wqNXXGiPqO35GHhBhE9uPbihhLorZtotYKCUk/te+Y1r6
         V5Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532easZ5FrJv/1hp1q2cPxK/aMVdcfRRImAtA2xcvIHreIt/Z2hz
	5gWHjNBqUcxEtkQICUNm3vc=
X-Google-Smtp-Source: ABdhPJxBqT9LwKhg6XFjqHLDIvxmzANlLxGvZGzbzSB1LvUc00eZ9mmW3h+YdTMPXQIo8tpB8PrUPg==
X-Received: by 2002:a65:5cc3:: with SMTP id b3mr2326720pgt.97.1631188701655;
        Thu, 09 Sep 2021 04:58:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:33c5:: with SMTP id lk5ls1094530pjb.0.gmail; Thu, 09
 Sep 2021 04:58:21 -0700 (PDT)
X-Received: by 2002:a17:90a:192:: with SMTP id 18mr3245453pjc.119.1631188700970;
        Thu, 09 Sep 2021 04:58:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631188700; cv=none;
        d=google.com; s=arc-20160816;
        b=F8OyYnpI/V8IqozcDLGpGYCmNvySc1LKHSADKQ714bdV0rbCCbLpDl4NoQgpkIGfBO
         KiejSBkjAUnMiKesol5pGsxbIYLFkFn5FDQ+Hu+WlCod23ctiddjxkYPXdyMB3+CB8aO
         g39+3bYumlvt2iccnI7QAQWZLlUTtGh7mCBhSGEGoJ8ue1P5QSdHNePwFBKl8ERJn1A5
         4vI8MhyfzvFcbP6Tes8JhFsW+x6BW/73642BqSTsr/xPLAApj/hI96S9Xj3y9YdAjPPF
         O0N3b0N83p2dY3rw5KnuduyvZjP9OrGblwEJnquQSE4OxpqdYFx1ISLgmk3hjlO3H7qy
         26mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tghsTLgmbaHZ0PAq9TGBCb4gOztLCGyvUujPFSUHM1A=;
        b=mrKV/R2zO7Y2p8LHAiN4ollnKvnVImw7sD8bwCh2rpvR61v0inRktnSvGwtWZnxUMh
         13XyqmSvgEtBqbmL82SMREAi5HvImVXDMjEylRBhlBiqjb3fOcK9sl0f+271vgNyfqbO
         ey+WBQB0aKiNpAhwWzMEv6WiuDLml0u9RaYwtUPyejkidKaBROYQLRLd/X+e68l1+CcV
         eyG7e7ypzUebBT3bTCvtk1ZFFl0lECQxfHUFeghKGh015ETCjTme891jZYEOmR/TuIEr
         gcNC6gNnzNcklnf4VMpe4n/NBhHs5zLdJbXZYgIbVtV63r4zA8v5qN+9/PoFjHH0M09w
         pvFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yabs3BHL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si104689pls.5.2021.09.09.04.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 04:58:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A57A6325A;
	Thu,  9 Sep 2021 11:58:19 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 43/74] net: ethernet: stmmac: Do not use unreachable() in ipq806x_gmac_probe()
Date: Thu,  9 Sep 2021 07:56:55 -0400
Message-Id: <20210909115726.149004-43-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115726.149004-1-sashal@kernel.org>
References: <20210909115726.149004-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Yabs3BHL;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210909115726.149004-43-sashal%40kernel.org.
