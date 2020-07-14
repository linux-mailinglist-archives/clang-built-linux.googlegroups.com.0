Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBV4HW74AKGQECGARNNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E5A21F44F
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:40:24 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id d64sf10469319iof.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:40:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737623; cv=pass;
        d=google.com; s=arc-20160816;
        b=fIutiX1P5F1m4BZEnuDxZlJqDuF9XqWAvg6mnBGvVnk7UWTpsCbdNkB1erEKoUVhVN
         Np3gNnWAgiF3mTBhi0cdcMSI6jCu5izjoTwRfdXRojy7YkAxoCjkypxDOYlPxPoqjsSR
         +3QFafqmVAs+zWwUXrhITdfZI1Neok4+kraOJ9Omt7UHuOit3XQD0x4k3Fg85RDsjxuN
         +3dlsWjW2rcM8h5/PiuoG4IFgGO9P7wfYItz4iBg8lFQHg1hnVY9odmoijAiik2jy0+i
         aDB5wFDlTbcfCICcZYfAYrdOs2uR/Z7TVZLW4azlm5Z6bP3d8/z2OTDj4aYs6ah1wPm7
         wP+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=soY3Z9h30HVP9uQb1cMoWfojq49ohEPSsaS2nUdVps8=;
        b=QbORUQNfWwqvHLLNZIo0VSaxxRXGF8IpN8Wfro3MpMlS+rl/fwrVu3tOjURKeGx+0t
         pN0tRnjZf86B5E1KLUXdfqpAmEKecZYW2TGpGwdHRw4ujwA8Hl8XMy+dWfOJeAnClkOS
         UqCBIQzyqKCTk7k5lop/GwYJVh63mU3yRoaX6DGdOaSTDfmLs6eqkKY92xPOak1mnZ0F
         x3NlAnCI0z3n94Qe2kIXZ14ENVJvzJo7kuBX48AMhXneFbJL5WzCfoQPdnldvxPAgNM4
         aiQyGcrPzUdfSmCgXSocKSwpmciBV3NeFBQzAIAjqaqxZOi6YnYwBr5EWJQG4fu9td/p
         XoLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j+JWT6FT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=soY3Z9h30HVP9uQb1cMoWfojq49ohEPSsaS2nUdVps8=;
        b=jBC+JaitzkkZHb7ukL2KKV6zSO02pJF4xGU6oX/CkgUVwHYI7Ew6DRM3R1bPi4TVJO
         0fD8J0BfK9ikCuD+9fFYzJoUqlu+JQkBbU+x75PBCRJcm4GEOtx5f+EoX7Ns6SUayCZK
         YT7Rc2dnobKFB4STj23EZvW+5jXO0FnOocaqplzVVje4n9aL/GcsUVbpp031XuluIlzs
         EtVSnN9Bmgmpz0/8y15T1Sa6hQo+luHCZdtzp7P0aP4umqHgqyvseUzlzU9fIZk13ydt
         SGqoY53J2QIsk5X60a5Q1dqEWwOuAQSh5J33l/s/15tOhJaCxGWD8bmuA00mzm+CiDX/
         a7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=soY3Z9h30HVP9uQb1cMoWfojq49ohEPSsaS2nUdVps8=;
        b=GS50dxOgiRYgarJhPd9326vprNd5aFlyxrgaSs+j7iloHcZwJSqHwD0dUuFUJe6BQt
         PB7gwctezUqHP1UVLdVq5YUVJYMBM3ILK39r0I/vcZ6kkRetmfIM3KNUsTeRNm3YH88u
         2j1aTxjx8+WzpQfXGADMe1GWefD5giNCiWl8QXIF2AJtdKMF0zy8fIYV1XpOkpBW45jQ
         hdrfrNVMK59iN1O2v01XXG3GF6KS0A1N+/+hbA15eJYotUu4Y2p/yg89bHEgZstA40U9
         +87rmvXjYvlz5FrWP52BwFTmRs8UPW4dHDdhxkzEjnLIofFZ9ZlwMRJc5bPd1qG0lgzy
         csSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/lk9b71zeZNh3DJbUeZ/wYHMOGOsDlLiC1DV0E0ExVjlU/Rrn
	tTM+HIV1UE8l7T/ukUtrSEE=
X-Google-Smtp-Source: ABdhPJzKmCk3ICruJJcwShNPOnRE4OYpiy1FbG351vBSTWv3a3Do6btO5/hEef/41tIfJ76gh44pLQ==
X-Received: by 2002:a02:6d25:: with SMTP id m37mr6509405jac.10.1594737623226;
        Tue, 14 Jul 2020 07:40:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e4c:: with SMTP id s73ls4954755ilb.3.gmail; Tue, 14 Jul
 2020 07:40:22 -0700 (PDT)
X-Received: by 2002:a92:bb55:: with SMTP id w82mr5206290ili.146.1594737622806;
        Tue, 14 Jul 2020 07:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737622; cv=none;
        d=google.com; s=arc-20160816;
        b=ZCs13GTCtjz807X6/nGluKzIVWZp1yGHl5Fc3cCzl/5YQXF0r+JFVPkWL8SXnaL/Rq
         35VC4VLUVyMb4I5FGmUg341IlwYnkhq1ymd16m2UAfdN0CTTOqQjeC3XhfRlB8XxE6G5
         p6hmZD89d69yxj8L8Jocstoe6P7LQHBbRIHG656lqOI4ay9C5+i7RbLShdX0BIN1zRo0
         /715FMP2O5zV59rrJ1UsITgaIbhupT36kcAysDia6Prk55Pwp6tbO8kXAYZvXpin2xU4
         SUKO2VDi4hZNPsw45WYBRQr/9cbFK2Q0sz8xg/L+y+N5CsX+neE5M3o22e3y2Zj8jWr2
         qbLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cYDaMf1Z9g2I/GCN2JO/0Vj9CK5A+0wGl6qXwFL95NA=;
        b=ZaC0t0qX6UTv/9hGGkf0eQZWq2fGI4jnorWDHX2+co7QirIWv4ffbo85POTa5fNXOd
         zev7Bf0TIw2NsRUfyBKKStfyzs7icJyHZTBADCjGlSzkIaZU5HEnYCwVXVgicQCH44PD
         1NG57u6SBRctURA0ncqf+PE8DazR77CLUcnWoYlLlp6RK22o38FWE3cnFJdSAfbL2O8G
         3eQKFBiz2QzZEirUhhygsdTCNq/0Sb/sg4Wyr0bw4DuQn02DRzBOHyoKdf9N2IDBoXYX
         AiGIeqpuygN/I1PDDrlCy7eYWIfjZSvetC0izCDjfddqptGgAy1j24/HGlnrKyrmnbDD
         SpeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j+JWT6FT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f15si917928ilr.0.2020.07.14.07.40.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 33B4A22203;
	Tue, 14 Jul 2020 14:40:21 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 09/10] net: sky2: initialize return of gm_phy_read
Date: Tue, 14 Jul 2020 10:40:09 -0400
Message-Id: <20200714144010.4035987-9-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714144010.4035987-1-sashal@kernel.org>
References: <20200714144010.4035987-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=j+JWT6FT;       spf=pass
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
index 49f692907a30b..c4197d0ec4d25 100644
--- a/drivers/net/ethernet/marvell/sky2.c
+++ b/drivers/net/ethernet/marvell/sky2.c
@@ -215,7 +215,7 @@ static int __gm_phy_read(struct sky2_hw *hw, unsigned port, u16 reg, u16 *val)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714144010.4035987-9-sashal%40kernel.org.
