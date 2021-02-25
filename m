Return-Path: <clang-built-linux+bncBAABBDHX32AQMGQESPCUR4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD653251DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 16:00:29 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id h10sf3136001ooj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 07:00:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614265228; cv=pass;
        d=google.com; s=arc-20160816;
        b=zIXt1QcU8J84NhsQrbdroWy9eTq900Wr64TeJLQgWJzH8mGDRYNhoysjbDtJJeiPJS
         HD5EIdErJYm1i7YEzh/IQvjA4lqpaJskv5rWOiOR4VQcO49K0bdr9t8Z+nUCldClAsEB
         Z+Avp9Xor8SCko91yqtbUF8CtwFxGukOdnRjQpGMydIehVQbgWPkuaebQ7+Gdx4SZG5W
         2SavDdvDiYu9yjyfW8BOOcMtiDRZ0ztgK7ZehWAPNIGEIbKxtrZ4IKdqHEcJF7GrsUOv
         5sU6z990vCaWV1BHEA/CFkg3Y9aGdUfgA3sssgx06/hTpWzF3dr2vSdN4cqBnQauJ68s
         NGnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=e6m9h9nipoiH9TZI4yO3ZOeQeaSPuKWyfkKsaOWhd0Q=;
        b=PGuSXlCmr1z92ta4eeMpTCiqzn9yVa4PfK7qYLdxImFPleWdJsOYdXwzgWpxyFqr2S
         G9gV+eZ9elFKYQuUHJftwrj7Q2eeDrdGIVburJu+AXH5iXgsi8f5wsToPUvOmGjHy08X
         jZxBNvpD2sg2qCaXCSSvYPoyJm3OLMnaeicLl8hNhC8jf2pIduXkcnFjhJmt0mGg7eh8
         C0Y4wUpWVI3dREijz4nio9pqnhv7wrMiMGxSHsNNAyu1mxfEz1SuTcpXt8FRsTaaX2xN
         nq7dO2RwOnQ/MDRKAQIKG3KE3rID0tpRCjDNzdLhTSyQ8E8PcmsgIvYlQMG0iAOLenuy
         /z4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LEDUqRTC;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e6m9h9nipoiH9TZI4yO3ZOeQeaSPuKWyfkKsaOWhd0Q=;
        b=NPy+dkYuJJ60yS/NpAVm+pRYdKIMw5gCxvtfe2PPmyexjXbmGmkUIm0/4FsEd9DPP9
         LseSLWPwmIP2jPnxnGhSTSjTR80WqkOzXrIvzwKJYVCADk2Bt8Nq2ojzL0ukN7AGolWp
         iKuxRvvsZE4AoJ63zzffhy9OX+DB3PkY47mihcxTOtsgZmw4Z8oUtTpn1aCxPsdwXwmk
         66s7fROPq959/ACtnX4hN85cdYLUra/8EW13EIcEPtdeMl8hRMvMGpcjOm3M6QFHpcCN
         u6AR7FM3+K3DLl/Ue2cdKZ6JIZu7aUW7hbQ+/qpUJXDuDDlF6rcx8XLBX3rEJ0bzM+aI
         GcqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e6m9h9nipoiH9TZI4yO3ZOeQeaSPuKWyfkKsaOWhd0Q=;
        b=r70ha7ZhMXh7fR2qsAMPcFmk0qL/gn7UsNGODyh5Qtgt03CLNnysNNaMwD0Z2suYaS
         uj6FCQn+aPw98lnVQR9nWFHyN11qqZxReJz6O1uuaDYvriLgzFDBF0ApqYSoHDodzm1c
         K/HyrPPQXgDyem2LSGBzVXKKkyGJKAPOSZwiP80IXjqquUDPynsZh09/wj15p6vHoeqv
         3vh9BNAAnv6CRdO+tlDo8XifJ4GYmaIEpJErM2X8HnG4zPcMmMgj2zIqD82CzbESO1K5
         kKZEtgOWsDgc4xA3xEZgA//fV7mkrF/FrMetkKFV2EyZVgzDicEnTPEDWkl8vN6mizC0
         2ONA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ozucDHFi1vcAv2JbVRxTh1+paUFLcrxptXUQIGWudSH5M9VcX
	paLLxCpZ02t+Z+jFYaIONWM=
X-Google-Smtp-Source: ABdhPJwmeIYFE8uxFR9U/t3SsD7szlqyO0DeEgZ3i39H7glm8ZB5Af4MgSlTnSQuhxwS+vEye1N2pg==
X-Received: by 2002:aca:f457:: with SMTP id s84mr2118431oih.172.1614265228479;
        Thu, 25 Feb 2021 07:00:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69da:: with SMTP id v26ls1193416oto.9.gmail; Thu, 25 Feb
 2021 07:00:28 -0800 (PST)
X-Received: by 2002:a9d:d34:: with SMTP id 49mr2598310oti.205.1614265228068;
        Thu, 25 Feb 2021 07:00:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614265228; cv=none;
        d=google.com; s=arc-20160816;
        b=nH9RrO6d2lDd2nxrSHwv3fuAqjTypye7zrLh6GZNWhq8ZdicvCl5jxH0tpQhe51e8H
         m/Ynq12WooPyi2HPSG/EPZUWfuGrsNwabyzd878dCoeq5tXl7afeZ4AW797v5vIEl3RH
         abqSnWwK307X0KsNBmGBMO52oME6CMETkwy0mCuGht02cRWbPw6pb7GWx4PUUbL4Tiox
         SoM5W9hC4swAhfOZLcrfKn7zuhUvObuQSHE0JxWrPr3j3ognDUGEAbKv+r8iww53vlQo
         gvIZ/szpO2jP16r36hgINZFBB0FSFoc7sxnbDMe/2d99d5OwsHQdxZY4p1BglGRV7Ue/
         R9yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/Yf9wUTQ/JmrWELXaZeFXgI2z/QAkTfKMz/qKdb3N6g=;
        b=dFIAbnLqeQkKWHBCoRrmMsPJWBCpKAJ/lDgLuLsZdzYTXZ0ipjFjLpXd8XmRPQJdKI
         nKQ5Mb3eSK4FkQZ++wt8iTjwFBT+f+y3vBcn4+jiPXeIymJ/F5k+Szekl7ixlPbztANP
         tF16oj0AxXCei6lndv9SnwJZ8rM/+1j4PwPB7ADjdo+kzVbnWMBe5ePRtFP7f4tFFim0
         RK4NMDOAfWTkdB/vpLnI0W90cQv2kwwD8ppamqu4jYc/M779Qj214YHElkq7lRkhpSnh
         fXMcwNijkz5U4aMpB738J8fNK+p/n7G+eMT9IagIyMHoia4Cpz3dhoyLfSwJ28BUOUlM
         Y6KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LEDUqRTC;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f20si193239oiw.1.2021.02.25.07.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 07:00:28 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7024464F17;
	Thu, 25 Feb 2021 15:00:22 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Felix Fietkau <nbd@nbd.name>,
	Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Soul Huang <Soul.Huang@mediatek.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/2] mt76: mt7921: remove incorrect error handling
Date: Thu, 25 Feb 2021 15:59:15 +0100
Message-Id: <20210225145953.404859-2-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210225145953.404859-1-arnd@kernel.org>
References: <20210225145953.404859-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LEDUqRTC;       spf=pass
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

Clang points out a mistake in the error handling in
mt7921_mcu_tx_rate_report(), which tries to dereference a pointer that
cannot be initialized because of the error that is being handled:

drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:409:3: warning: variable 'stats' is uninitialized when used here [-Wuninitialized]
                stats->tx_rate = rate;
                ^~~~~
drivers/net/wireless/mediatek/mt76/mt7921/mcu.c:401:32: note: initialize the variable 'stats' to silence this warning
        struct mt7921_sta_stats *stats;
                                      ^
Just remove the obviously incorrect line.

Fixes: 1c099ab44727 ("mt76: mt7921: add MCU support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/mediatek/mt76/mt7921/mcu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c
index db125cd22b91..b5cc72e7e81c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7921/mcu.c
@@ -405,10 +405,8 @@ mt7921_mcu_tx_rate_report(struct mt7921_dev *dev, struct sk_buff *skb,
 	if (wlan_idx >= MT76_N_WCIDS)
 		return;
 	wcid = rcu_dereference(dev->mt76.wcid[wlan_idx]);
-	if (!wcid) {
-		stats->tx_rate = rate;
+	if (!wcid)
 		return;
-	}
 
 	msta = container_of(wcid, struct mt7921_sta, wcid);
 	stats = &msta->stats;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225145953.404859-2-arnd%40kernel.org.
