Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBPP2XSDQMGQE6BAF4VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0BB3C8C20
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 21:38:38 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id x5-20020a0569021025b029055b9b68cd3esf4213808ybt.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 12:38:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626291517; cv=pass;
        d=google.com; s=arc-20160816;
        b=iuwTmWfVDYBcwmW7Sqv480tCpTwGdwWoKzkr/KTN5DMv8CgX8r6oVKp2ochaQ2sFln
         18GIii0YYlFXeRqr53QIEpH64+lITSymdWt3qRbSKZpPhzFk9RWCO9sMovLfz1VOHBy7
         8uq69YbbPmPwBZlSMB+M8G5OKC8ANKtFWLUl9d6Yn9mkWdMX0RXB/CPRhl8ouG2CxQvR
         PspANsRJM/hkS5yDAR1rWAc43nOGLSCSycryaAutjhn+n1qB7W4Dg2RkDWnCF4fsU7R2
         hEndksWY5K+tysc3B1MhpLRhZJBMmJ8dwj1sHBT51sQt0ljJfHLvje/Fwn9s+GNnZioO
         bH5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X5iO5oXjgduLqwCmo8LatEwrnoLRzJJtluBM0yOu8AY=;
        b=DCYMLWy3FZuzWqjlAZ9QANp673+Wqor1W5sRn7kKFGgzqLR+GEPx8fzpzqbctmIaUt
         k67ig4zf+X8GuiIJcKzquoNFPmrhKhzyMflpZAoEl/r4dysHR8JYxvilfLaczfo8V3Sf
         mK5zGc7iFQWL1oIJcSqnsf75c652eiDgJQKPnLGJDnJFRhCarG9cEhguvnjkTToYkgB4
         sFjf3WTamFYDysxnuATzGGflYkNPNW3MBjm7LWqrl1/zaQzi2ER7UFcPHA1Wv0BOlEXD
         +Pto53xDDG2q+5WpjMopuBqNpwvlXllcoL1n0rilEuaLCT1uK4KBFGxkR0lHXR+fv1ro
         bIdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=juDD9xBS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X5iO5oXjgduLqwCmo8LatEwrnoLRzJJtluBM0yOu8AY=;
        b=iex7Pw23zNOuouoScJ3AIJ3eUgbhfywGx24f/MPcJQc7/auNK7K4pVUtTLNISVKq/g
         WN5AcPwreMA7dxwsQ2gjwpYsG86hgT0J/2wT8ZT0SXkdmcIdP9rzocFlZjmuuWslFBWu
         4yD24gp/vsWz9stIW2BarhkhUozTNqxS8R23xX15e30DRdmrEWTCFXj4lpGxMAhhOuW8
         HnmLGOo3mzevl9e+91OCA2+fUl5Cox8YfuiHyXVv63leVa/oBBluAptFuYry5FUbpzku
         FJ2WOIxNHK3FHs02T/wTP+a1UoPWw8PWzvqbrHRZt+8D2k8cKcx52szqzlnU3r+Pj2+j
         60jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X5iO5oXjgduLqwCmo8LatEwrnoLRzJJtluBM0yOu8AY=;
        b=norv4AiiHyt/rr0eNXoj9WTeKAAUcTvUg2CdzBvXkWzbsJS9XlwqdnCyp3AS2t03Ym
         7tN6efo7B7hkZVn0qX104qxu3eRBwwM2mvuMMYJP8b6ySyfxStahs32vSH4Cf/Xnc777
         ia6MlFUdDN3nHhe+Ped9/P8hLakDzZkZFG0yCBglCDTR40DpVNN028uM6nTPzj+7l0Ng
         AlsQsBDcx7tbLDIRuFEXq3oUpr2C1/gE3fnbPLo5yUOWm6iOtl8r5dHsQbpDRsKWFoEa
         mxd2LXJhCUCBx5mGVK17VUHLVN4ven/fYYs5E0F9slzYANoOmrrWqQriy/61IutsG7zm
         4ckQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kmX1s6ocb0ebcpkUVSMWVZyO9rxhKqnO5bu2Lg07QdOz99IPb
	nRIaZPUrXx5Q8hcIHK33M4o=
X-Google-Smtp-Source: ABdhPJwidXPm/cqxjOJoUNW0Zh0Y2OpQzoDlMRzVUyIL83XRoPLG8XGt2J7thOwocRMVmnFkZ/UPlA==
X-Received: by 2002:a25:7647:: with SMTP id r68mr15199004ybc.432.1626291517175;
        Wed, 14 Jul 2021 12:38:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls2160228ybo.10.gmail; Wed, 14 Jul
 2021 12:38:36 -0700 (PDT)
X-Received: by 2002:a25:f603:: with SMTP id t3mr16474009ybd.203.1626291516688;
        Wed, 14 Jul 2021 12:38:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626291516; cv=none;
        d=google.com; s=arc-20160816;
        b=PlNmqitvRC6rGrfceBnjlCYA5M750HQW7F0Q8DxaxFWPvTAY7pP33ocQajI6l8x+BW
         Ry4aX2rl6nRXfW3M24K23Z9DClX3aXtsFUoJLsnrSAcosZEA0FJX7rgKWbbXTUmtKZCC
         lCqzR0T6ThLABhxShqNBOCW9sWAAXZdLV3CAdlCPoOkfP85TpCTpy0hWhuXT+wOCwA3H
         lL14zJ2EKgDDODuzLnSOBhnV76kHEygu/K/ohOq+gEw5EpmQw7L8bT2n2SSNvtA9Zo+w
         pycix/fN1nVurA9QmCKxzAi44wcw8MdlPenw8NSFZkEjxg30ZmJ8rrM1Jad5TRiaP6Ld
         2j+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zWDKTYI+jzGplWUlOoZM6/xWzbBK2f8XiizahMFlrEM=;
        b=SyDhSuhUKd7FWbzYpyS9SRAAxtaFsvS4qJPqyQ3vInhqcw9V0139NRkgjBhY1TMC5f
         wp7Zp2DsJmL4kTDIlEIJDq0gao+3jx8AQdTzJnpSTLbmc13eToGGl4k4b9kXNJYrUlXq
         mJD2YHajPHTFx9k/fFAWkKa/Lf7t0fYnD8K199gHIRlh8xEu9VLLqIELNG+XoKf11r4m
         tBHOhyC0WMSf/JztKlsVMAWGYY6m7CalKzRgVZ5XG429JzyTnbXhEjPGksTrSKvgOlN4
         LHSauZdsa7sbsQjCga3itCfgRaHoBBVf2Q8eedj6SmmMiZdNOR6DdPp3MKSpqpV+0LZu
         /New==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=juDD9xBS;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f138si413120yba.5.2021.07.14.12.38.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 12:38:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B48B4613DC;
	Wed, 14 Jul 2021 19:38:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.13 023/108] soc: bcm: brcmstb: remove unused variable 'brcmstb_machine_match'
Date: Wed, 14 Jul 2021 15:36:35 -0400
Message-Id: <20210714193800.52097-23-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714193800.52097-1-sashal@kernel.org>
References: <20210714193800.52097-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=juDD9xBS;       spf=pass
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

From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

[ Upstream commit c1f512182c54dc87efd2f7ac19f16a49ff8bb19e ]

Fix the following clang warning:

drivers/soc/bcm/brcmstb/common.c:17:34: warning: unused variable
'brcmstb_machine_match' [-Wunused-const-variable].

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/bcm/brcmstb/common.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/soc/bcm/brcmstb/common.c b/drivers/soc/bcm/brcmstb/common.c
index e87dfc6660f3..2a010881f4b6 100644
--- a/drivers/soc/bcm/brcmstb/common.c
+++ b/drivers/soc/bcm/brcmstb/common.c
@@ -14,11 +14,6 @@
 static u32 family_id;
 static u32 product_id;
 
-static const struct of_device_id brcmstb_machine_match[] = {
-	{ .compatible = "brcm,brcmstb", },
-	{ }
-};
-
 u32 brcmstb_get_family_id(void)
 {
 	return family_id;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210714193800.52097-23-sashal%40kernel.org.
