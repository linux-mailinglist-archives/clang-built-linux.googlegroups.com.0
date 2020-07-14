Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSMHW74AKGQEVJBFDTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB1521F44B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:40:10 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id x1sf8838478ybg.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:40:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737610; cv=pass;
        d=google.com; s=arc-20160816;
        b=v1A9KHQhxc0pcAmy/keevZoBCnHDNf5Zghc3BQPK1R4dUsPbf7P1YxyCc+185oZfrB
         9ogTl0KkejSud7tFaVjwgKFdGAte3EoFhRBImp4UZCggiWOgyNiawPs16cXHSDQC35yD
         pXMTdMaq+0njypaKabUGAM+myfKqxz1b1SSTFCjckKqXbuQX+gWXXWgacyGLFpfZeP6J
         P0kHpiIMNBzGNLdLlMIPt2nvY8dv3LReElqZO/qNRzEsIl/FHoWlpGgLwuHyFrKYiKLk
         a5S5mNTjVpDg4NQH8aM6bwwV+EdjTBL8wNZ23vi1iaPZMr7nR+QpxW1BeVlwMFVfHU4M
         WouQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ax50YZVCu/bo6Zmb69IUTdb4xDntzdN65jELpx+sgY8=;
        b=rm5+kFJMYJm905UjI0bUxuy3B9m5JzU2aIHjfmTunUw/TJjXviHiLor8ePaKwuxypI
         AxR8fcjOeiO0mn+xcnIOvYnl3BEsIfEMaLex6+zaR6gYR6/t/2SPcuYeBCr7CTsaRYpk
         E8pOdPc1tUND76dE6WWmQWOR0D/FeSowP5AEw4I1vpl1NaBS7VF47BgWi9SO2Jtb/CS6
         n8UoEt6AHzCHqP/mhWBebYXk1jH5mF8YtgWmCERKnoJ3wF5ynG6cRSdN49cW/uhptHCq
         EH/QFxMMABJ4AffGX9cxB0ONSzxE6Qwz1IDfHSv93Z3R7Iu5VbIZMwlnoneRSvm6Kuay
         jYNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OClrmPNV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ax50YZVCu/bo6Zmb69IUTdb4xDntzdN65jELpx+sgY8=;
        b=Azk9n7pubggSd6XPR4+OjpFQDIL8Tdx5i4d0ENvNZ9vInPBl9MgMTCqqIkQ6TOparj
         LgV8ur56Uxb+9LqR+TqbgrT15Eowt3QOBXXuThpOJ6s97QK+cdA7DJa/mHkMhCwPB92X
         pG+5awhB5fxbwngz8AvV0HfREWM9hG7AyHWXX3zgM3RAjoDuRLL1Pa90s3j7PzunWIKf
         261geG8VCw2ME3/LFqGwrBY7esZKeNLbvMkhkZtiV0XFWl+jmpXj3Se3G5Qs0LmqWCGw
         xNW463T/uFLc2gGWXt/ikUHUI9wXO0bXOFxD53+EaQ4DVPSn/SrQGrQe2tJETfS2KW7l
         3VLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ax50YZVCu/bo6Zmb69IUTdb4xDntzdN65jELpx+sgY8=;
        b=QC8vhyoXmdXGFmkbmqkslAzazu8cCMS2fX01u6lQCCygd0kvvTfE0EhtV3axpvAZKF
         0GJUzQSiTqj+Lwq8lqHv7MmkDYJ80YK1rBn4PwhRY8sXplhF0w9rAcRtkOUcOStGIg7q
         ngdTUGETnP0DjHnfpHZ4Iz4SOh5xX6zAxayyHZxqW/0h5F8TifsdeCvw2NXGd0vUpAgZ
         BDfNaNO8jWW3UOnij3WhdPAHVRIE7Xk1IAEzmGzFMb24hMhKf/XjPfVegboG++rFCW4D
         QoaiBoWNAjEmXrzKTJItIUEZrYwqPOm32BxqEe9voEp5jMdZLBnnba1bv0IIYyVVtO0d
         nZZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533z2UdRfxgTX8Rm6q0lYUyE1EXzERdoBBD2VQtdX6f4vRR2UC5+
	7SVrWfQRBcAZelnrxpCprRg=
X-Google-Smtp-Source: ABdhPJzMWhZgF807wFXbCPRCo7jn9jbiKahWRcIHu+E6v7Z4IHtF2O6XtyKgQ4sHYljpnwDneZjbaQ==
X-Received: by 2002:a25:2b89:: with SMTP id r131mr8181491ybr.131.1594737609898;
        Tue, 14 Jul 2020 07:40:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6fd5:: with SMTP id k204ls7518592ybc.9.gmail; Tue, 14
 Jul 2020 07:40:09 -0700 (PDT)
X-Received: by 2002:a25:18d7:: with SMTP id 206mr8845312yby.473.1594737609514;
        Tue, 14 Jul 2020 07:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737609; cv=none;
        d=google.com; s=arc-20160816;
        b=m/pWwcr8KNgnV7Z99MY7jBvELrZYF7/WIDELjnlt/+xQ4lXv3vReEUt0d7+9nzhOJw
         ARnCOd4fCujaa20Vg6/bqd4f7q5tdBVbHUCD3Jcugw5xUvrXHnOiBGLbptcDIWasWlVF
         VQ6NPfJk2Iv8tjnkmJcpAugd6syYJ9mOOMR+GJx2TrhbAY1yF2wK3bmBchlWO/4R8wYv
         X7Ep34fobATV0ngke1zKZ3XT/Aq3GGZcT0QurEV0rN5eSWzsWIUj6vH+DqX2DXuia4qN
         3c9AoiEDE+qi3C3zUZMHWcQpXdHbwGKjEkwjYv6BZ9Mu68CsV2BNbpX+wi0Swnp85rCc
         09KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sJSOP+M0RFCHBMEjolvXPzdhICCriUYCbU5N5WCLGrw=;
        b=RI984JHFonINvdzARm0YLAAn6CdkT7vOkfgq/1v3UwZPhC+Z3w4VJRYNAWofV3ykPf
         S6bZPkX9Y/yDWNUkSYnPl5XYIlqIDhJn+nNLNIlrB0m/zmHSoMO05apdZZt8V1MMVqCn
         Coqe0L7WxOHV4GpIKQt9Y7na0MUVPMPa780Fzv+LxbYxsUM65IZdhk6k65F9fDK4e5ns
         KPpI0BJpwngF3sL5rAds2kfJqo1NUY4+2CPy9k/WNT+0kVPV/KzwgmwtPeToQW/GCkU2
         nvVaymvMNhBMFTMHnkGTHE9YVsnXsIUpagmxamxD/2rsTVZJ5q9w8STplFMbmhClYP9s
         uesA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OClrmPNV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b36si841976ybj.1.2020.07.14.07.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CE8832256F;
	Tue, 14 Jul 2020 14:40:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 11/12] net: sky2: initialize return of gm_phy_read
Date: Tue, 14 Jul 2020 10:39:53 -0400
Message-Id: <20200714143954.4035840-11-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143954.4035840-1-sashal@kernel.org>
References: <20200714143954.4035840-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OClrmPNV;       spf=pass
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
index 5046efdad5390..34ae4bf6e7162 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143954.4035840-11-sashal%40kernel.org.
