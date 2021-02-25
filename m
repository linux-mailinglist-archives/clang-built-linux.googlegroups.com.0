Return-Path: <clang-built-linux+bncBAABB47W32AQMGQEB5K5IBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F51F3251D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 16:00:05 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 33sf4043679pgv.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 07:00:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614265204; cv=pass;
        d=google.com; s=arc-20160816;
        b=ixRwMxbQF8QAXBN+9zfjzHKcaCqx8tRrfSnFtqtGXtU67GCWXYMZDWN264dywwiYbr
         SGlOqbqqirzAtUgtdR9uW3WPNuMRilXJysipO3ZGPcGOqiNUN1V9p0wegvCIs1Yp+qu6
         lvHrEmk2qdsuhdOWjTET3uX8vfs9GzT2otRmVQILB5bhmX5WDFa6LvLwH5q059UNjpZQ
         u2mDBgub2Zje3sLP6fP+jWKjbjlZsQXfy9tOx5YIZ9zT3QpcQuCS/Lvt3/jGN4R8fEME
         Gl/HeIUrOiv5d3OHMQZKnLIT+r/1seTTwSxVwJ9g3N3LLSehEjxbUsgVHORQmaGlW8dh
         19WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=vcFiug5Na074/6wdi0BCgyDUylQuq/oLpTKRObDzWTE=;
        b=zxnp1oXR7OCaZlnYzhygiYtyt3b/8lDErfuAKZngBtg/QnKJFpkdRq4KUSsme/fK58
         ka5f7YoD3xVF4Af/DXQ7EeAKDU6EL7225dTEddirjIDXtWC6Xe4FLDNCbv3ePB6xs+sD
         E0/R10+U1zZi7sSrIiIa8LAiUT9cw4xuTO9kpTWZqWbBqiOUF6nfCzj702cgyGUJwOKt
         bkTJVE19UMIjBWp3h/Z4cu7Mfwt768DYUTZXqA2Q1HdTZFWNgFL14biUfrIDWGAWkTL3
         KTEHfupdf2Dkgx37EF4qavNbv2fvFRq69XUlvGWEi5vyRA/XSRdQs0I4e/4yh7vEQgs6
         7LLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G1oBjB6u;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vcFiug5Na074/6wdi0BCgyDUylQuq/oLpTKRObDzWTE=;
        b=OwrmCvYYc3L4PwTxkX42/0EelY49dtvt8/o1wI9QxF4yGSnmwMSHw9cszTkiniNkHY
         JkcsRSVyo4C7Lby6rX+TWeaUUCEYVG1ku0flBFDhnBYqmoUNHchM2erQFLpua+kR+hUp
         HuhVTUPZxIL9pzgtkJbZfBXfS/bAvOGfEgpLtCsZ2ELWm7EMVzNFADOozGLjPYHkbcHk
         MK7TtnxBao/8DNJUJ2tQrKSLRGV6ZmO7dWgHmW+/lUHZGQhMnz4BJ2Ah/4mo4zK4IBcX
         KR6uq3ZqRUKdpVI1Kz+FzidpU+TNuBbFs0q6iZ0dn6IXsZRxtpHw1kozNltHPX3z0kpN
         tBWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vcFiug5Na074/6wdi0BCgyDUylQuq/oLpTKRObDzWTE=;
        b=EbjIPu817Qtu+XPZDUxDo+x8vMbW7sq+kV0UM9RXK0s+gFMLlFZSMkkAnCObast+RI
         LWBetmh1ehG5I/Th8V1zl35b7uGJxC1b8HNkAQh4A3oZrJ0JwuQx7l3DZ6Zu5imgdOk0
         vr0h1vrnK5towKO4b1rHp6E2q7kkPmxf9Zd4Q7QGlWbYzARKZMm3ee+XP0h5RSgIbtGi
         65ukgwueroa+neRPSYyDivisnq4PrFywToM8EjomjFgr47n3oOHiNeUQgL6XrLRadZ+K
         1TKXcA3bI0ymmTqdq94HDSLQz/reBHiifQCTnd0Um096ShKpvBFmRQljkPc3UxgZYl+M
         melg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ni543LtfNHPfBCKEAoJQsw1A2qW2AEdMKi3KnE8dFaKDW6qll
	DWNWx+gul9L/NVyO3d8xrME=
X-Google-Smtp-Source: ABdhPJwjge1ic6mwG097+PaLnqDCZZuMlghrtVcP5xjHR5bV8V4Tfp2U5FA0nBYbJoC9leGvCUO8RA==
X-Received: by 2002:a17:90a:4dc4:: with SMTP id r4mr3861433pjl.38.1614265203908;
        Thu, 25 Feb 2021 07:00:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6102:: with SMTP id v2ls2619159pfb.1.gmail; Thu, 25 Feb
 2021 07:00:03 -0800 (PST)
X-Received: by 2002:a63:d24e:: with SMTP id t14mr3290278pgi.348.1614265203317;
        Thu, 25 Feb 2021 07:00:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614265203; cv=none;
        d=google.com; s=arc-20160816;
        b=0rzEBTysNI1V1wMo4NibrzeqZLloPUg4WJZ7PucxcRiYgZr1DIaZHYl+WPsURo+ir7
         12XCT3/2i6T5OSqbtrio7KWhuxBkyspxQaA16hsS+dQ71SypqsAmI8SBTsKnzGHN6cfc
         +0a5WR9S3vpbWAvfExUQpKwyd1aDo9wSHBmpFQn6rDv5M26cENglX9RxkXBWdVFrC05r
         57ty09G27q4fvpZlIMs8iJZGsNSkukDJhmylxUcMV0BanPSMPYDyVGpFSgpmr9PA3qDr
         o/8CqOncEfl4ZEEqydFuTrLxf0MBSMzJLp+H1Od4lqVu3glxasAtdoZjXMLiSOwssXUT
         CCSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=df33HWbn+fxg2DNdIFy9+ptcH+KE6zR/8BKqLJi6bC0=;
        b=r45m4GbI+W1lYy/GlBPh2n5msaecdq4Z2ZXEimNXJ9IAdBYlSTK7xcb2SPJVVhkVh+
         Zo71Ba8R/7eb7rIF5I6HWlMkWe581sZiZaeYPblYfbx/bQpjgvXpnWS5n/16Icm0gmKJ
         dd3wUKMQgwErRixucrOGtkYQ4uPkqldZMHYDzng9TVn/WgRwixV67PTBtYSLXRpenugL
         TfpcBPEk2jzbFmKoKy10mLwtmHuJiC/h2SBd9nOeG8DWl0oeTyHn0ybDRrPjbTWbwear
         j92DJN5AOkOXafbkD0njCdurdi0VzQjWw3UbDO8NQpqRGLZk0ghAqq+BS48AhLD2uU1v
         gaLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G1oBjB6u;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cm11si410173pjb.0.2021.02.25.07.00.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 07:00:03 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 383B864E83;
	Thu, 25 Feb 2021 14:59:57 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Felix Fietkau <nbd@nbd.name>,
	Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Shayne Chen <shayne.chen@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/2] mt76: mt7915: fix unused 'mode' variable
Date: Thu, 25 Feb 2021 15:59:14 +0100
Message-Id: <20210225145953.404859-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=G1oBjB6u;       spf=pass
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

clang points out a possible corner case in the mt7915_tm_set_tx_cont()
function if called with invalid arguments:

drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: variable 'mode' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
        default:
        ^~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:597:13: note: uninitialized use occurs here
        rateval =  mode << 6 | rate_idx;
                   ^~~~
drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: initialize the variable 'mode' to silence this warning
        u8 rate_idx = td->tx_rate_idx, mode;
                                           ^

Change it to return an error instead of continuing with invalid data
here.

Fixes: 3f0caa3cbf94 ("mt76: mt7915: add support for continuous tx in testmode")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/mediatek/mt76/mt7915/testmode.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c b/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
index 7fb2170a9561..aa629e1fb420 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/testmode.c
@@ -543,6 +543,7 @@ mt7915_tm_set_tx_cont(struct mt7915_phy *phy, bool en)
 		tx_cont->bw = CMD_CBW_20MHZ;
 		break;
 	default:
+		return -EINVAL;
 		break;
 	}
 
@@ -591,6 +592,7 @@ mt7915_tm_set_tx_cont(struct mt7915_phy *phy, bool en)
 		mode = MT_PHY_TYPE_HE_MU;
 		break;
 	default:
+		return -EINVAL;
 		break;
 	}
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225145953.404859-1-arnd%40kernel.org.
