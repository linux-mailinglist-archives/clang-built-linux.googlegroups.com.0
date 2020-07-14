Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBI4HW74AKGQEGNBSWZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 126BD21F441
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:39:33 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id g11sf10519969ioc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:39:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737571; cv=pass;
        d=google.com; s=arc-20160816;
        b=I8cxs1PaX3i3nfKruYjoUqC1oT8j6vOVomfSM2DfTLILGkH3vUQebl05UAM25mXwMb
         EPUUivPNenKk34VVwt+fDaIt/Em6gnKXMNzdQqaRO8rGgno/5Pnrs38uc6mkJ5g+Ym2P
         ig08bt6/6AQZyg65tV6fBUlLI7680sCD7IHxDneqsyhcDaIL7ZD4CVGsXzKCnGT+yWfa
         z4zAHEXMTqOfqwEnZ37X4SNuFK6oL+zwOIhJ0vMwlzObqVLZpymvviwUc56P05tZ1XQR
         xL0p2YBWfiNceYP3iFwxWCXHtESUhHbExSsC+Qsi6j90QqhVRUbzaPy9c8nLipAxZvsq
         UBJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iFcaXKzIWFOK/du/rxnVjZrxK3Fq3nR+bVQbV6VdK0w=;
        b=d0zJLpkC2V3L2V1cFC7noIlXnBbtkAcbx1NOO9sy/IVYzn1DfAAHA4vQ9qhVfVQWmC
         PM2oBQvEmwZ1GZ0jz9wUXr/RS7wH3uxz4dY5dfKYPweNV/MtNCM0UzvGlusBJ2lMJLI1
         6lzzthszBDcmxvjekWPlWWXoDyQa2VhMhwX2u4y9rDLLDe1ZdWUAUulhkLRaQsNLhQBc
         4+aW7lYfB/wGjbY62UOPMCO7fxN1urhgGK6T4VOzDlST0S9wzT/dv0KIxiai20W5Ul/p
         2h9fwQnv3g/QylFwpdNAhPVNpgpAIo+2XBH+q/g82adPmd7QUP2aFmMVC+9aoj3grBE+
         K8Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M8tjx12G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFcaXKzIWFOK/du/rxnVjZrxK3Fq3nR+bVQbV6VdK0w=;
        b=GIcp4PSMiwFlB3YwckjhUWVchw8yCWabdVJQ+Rwt1SfN32QJ7VNQtbPkgNNdQZ3M03
         BePrNOEUVYm0MvLw2sHiiAfKTI6rkUNOnn/z5CBvuhdWXxe6Nj1IbG/7aY5Mfugwoh8/
         Hn6b17AuJk7wBgW2AUJqc8/i5JyDt/mfJcallb1XRgQE7ZKvfCchU3d1Md6DJDG5TxwV
         A01uscwY4TFlAM99PLtrC1WZtfw/h3hRFWQuAHYdI6chsNzb5zvMSbiY5QqySpHjoCdi
         c1OTU0nekfrOj9FnB7MA5MHMJzhnAnsv+lEykjVJaLmAtszaM0vP5iIHQWZaQa5AumKX
         lC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFcaXKzIWFOK/du/rxnVjZrxK3Fq3nR+bVQbV6VdK0w=;
        b=lAr4LdwWojdI6Nb/EVLgkAba3q/vRHXQrGNqAKYU9Q5i5kgErqSn11ynfvUkkhvAdA
         M1gk+LjrSDTI7qmNyt2DFn1JYG0Pz6XzY+XOUOuuzqz+P6PhOSqU1Q+FRZ1mjnULbuoG
         ZCPi3+uH/mPOK2LwE0cwah97YpU7CO1+GZtnpflyHyRAgQTVrtZWRCjpLWatLYXS/9Sp
         v4S6e7bzYOyBkmarsi8nCVZx32/nTtG+4CpRv5yM5IOXunDZDdo63oS84OKJoP8WqPYb
         R9Nq+JZyO4YBPuukTZrT9WJzPab5AMMIBPfZwzZPO6/akjAu7oHoZATNR+1nk3FCWpNZ
         aEAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+wB4R0e9s41ZFHIvPNJ6i9BRC1Lcdh6mJOq7dhrlDR5oeuZh2
	QfwDsB2PPuPf3TOIFngU28w=
X-Google-Smtp-Source: ABdhPJwEoWSygzU+jUP91r0X8/XUeIFCUjMlUIFSNO7iGjtz+oEFP81lrFVSTtbBVlcQzKQ7/sxlhg==
X-Received: by 2002:a02:c7cc:: with SMTP id s12mr6355558jao.79.1594737571718;
        Tue, 14 Jul 2020 07:39:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:87d1:: with SMTP id q17ls3652733ios.1.gmail; Tue, 14 Jul
 2020 07:39:31 -0700 (PDT)
X-Received: by 2002:a6b:7210:: with SMTP id n16mr5225872ioc.177.1594737571413;
        Tue, 14 Jul 2020 07:39:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737571; cv=none;
        d=google.com; s=arc-20160816;
        b=p/XT+m7tbrBCdN52lTPTm2YKG+rU/JrRc3yRl1Pf0uYysGo6jG0NbQHG25yRIEfW6l
         Bd/XitOEn/T8tXA0v4voq1pcGFNB84a5tkt6wbPcf+3z9qGfhxqfQNHEj2Lkk1187vCU
         6nx3HTlNvTqRtE4EMIpNkxY5x2Y4K2d0AJrHmIl385ncJm++ry3OSjbQ5assiN/01sHi
         eTEq9Qtiiqh6pCx1Qec9xmmUnqMfobXFTHE3UA9LlquBDDhTM6w7XLc4AMarAtjWXJUM
         7BneQ0M+8vY9gf6zmt20AR98oBY1ON/bEOGeG7VvTojvvpUv/x8tp6Sb9dQ+ClgzWizM
         4H6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ve9I033EQGVBGxq5f6fkat/zsBT/NQ/SfFpchVEtL9E=;
        b=AbNm0XHU8C/Inl0iF/l4Va0ESqOxHFthPnwhHsos5fTU37oRpqZ+7qlEZF64EF/Fbq
         L42BaErHzmwegMTSfY1SQU6wHBEZ/fi412/ZHlLHcwAaX0uUGvY19pGNcOREsF7iZZ8G
         +oChbGzdhnhjchl84iTAsfmCTPiclWdXlkQuhdzzlr4xHooWJLgvXPEsb/PVIT1WCqar
         mSRzYVaC2UuDBRyXYkxbxiRgtRUqwv7d330J5HmAuqOKIVXpZxrzNMowREk7/fX74HZf
         TvEVAQ8GG4lBBM2irEN8Jb9wieOY9OCsdCbFGEIrKRjfRsvijhoE41OC2+IJmLxbLYjx
         bdZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M8tjx12G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si1224000ioh.3.2020.07.14.07.39.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:39:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC3C72251E;
	Tue, 14 Jul 2020 14:39:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 13/18] net: sky2: initialize return of gm_phy_read
Date: Tue, 14 Jul 2020 10:39:09 -0400
Message-Id: <20200714143914.4035489-13-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143914.4035489-1-sashal@kernel.org>
References: <20200714143914.4035489-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=M8tjx12G;       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit 28b18e4eb515af7c6661c3995c6e3c34412c2874 ]

clang static analysis flags this garbage return

drivers/net/ethernet/marvell/sky2.c:208:2: warning: Undefined or garbage value returned to caller [core.uninitialized.UndefReturn]
        return v;
        ^~~~~~~~

static inline u16 gm_phy_read( ...
{
	u16 v;
	__gm_phy_read(hw, port, reg, &v);
	return v;
}

__gm_phy_read can return without setting v.

So handle similar to skge.c's gm_phy_read, initialize v.

Signed-off-by: Tom Rix <trix@redhat.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/marvell/sky2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/sky2.c b/drivers/net/ethernet/marvell/sky2.c
index 5f56ee83e3b10..df7c23cd33600 100644
--- a/drivers/net/ethernet/marvell/sky2.c
+++ b/drivers/net/ethernet/marvell/sky2.c
@@ -203,7 +203,7 @@ static int __gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg, u16 *val)
 
 static inline u16 gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg)
 {
-	u16 v;
+	u16 v = 0;
 	__gm_phy_read(hw, port, reg, &v);
 	return v;
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143914.4035489-13-sashal%40kernel.org.
