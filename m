Return-Path: <clang-built-linux+bncBAABBVH43T6AKGQEQ6EEDAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBC92998AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:23:33 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id d1sf7024065qtq.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:23:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603747412; cv=pass;
        d=google.com; s=arc-20160816;
        b=PeR+iD2vhWFDo26YVLP8w+XzSrxhV6H7wruRsfus2zXAjoV/Y42kZsyZBkJt2aLd6L
         ob5Zbw/XprSlG0NftKHOglhdb1LnIPhFFrHFsg/VAr2py7MbXaQupMI3oZBwXjtt6cUK
         WFNxOs/UydqKPVCvzioQr5K/RtihKNlWNx02rrUallPsL3JngcrHXnp5I/5fJ4v+7vOl
         olGOm48ZVWdIehVU8NFnMr/5Ref6tICBvtkJaQfUP/uayOgMIfP/is2PMyB7J1P9a4lM
         uqLvPkRA8RmNNkeYoiB8mWAAthwYHiRqJ/SFf8WiNQ8F7z0SI2WsX5CGKPWHBZC5Rufc
         02qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gy+LuzI5KeW0jq7dZFeKZIIslvUsYqH4yb4nzEVHmQk=;
        b=F/0LV/dJV5i/B+VEXI4WKw6lrY9tEl5wuZ03yYA/l1eQIPZj7UYJVm6unTH2YV/JBj
         0QdOMRQrx9O8DyPGMg6Qptvk63WpjKEK0Yb6kH72VnKbHpYHwEdnoPWAx3akKTfXZS4m
         nu0DktY2HE2bFiObUvMVEqAI+NKJjvhdbMwv8s1m0iXAE4d5TwjtsHtechiS+8VMzDPb
         I93rfjOeLMPn/zuh2aYIV83ZhDGPBDknaMiiPy8TVIlKQVP1g/BuY/WwZldJ8/AtEoL5
         XboYrZFjjWu1HsqblwFQ2UojdPfYxagwRmQTDlPtuVRtW2UeEI8v/0vlLIpYi5pTWCP4
         /F5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fAmEUO8n;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gy+LuzI5KeW0jq7dZFeKZIIslvUsYqH4yb4nzEVHmQk=;
        b=fYoRGVBTr4/UdZ5WgVo3R6We5cqpDt9hWjlVXmzjjIJq8Hc+vCbv8MXbnSsP6vvWrO
         R7tosJzizIKd+fQ6n00Q/ZAAF/kBuzhXxg9ORGB9XYnfxhkXQug0Gbguh8/uj9WN/i6Y
         eL+8OwiAm86wYeDJvaJzlwMqWAi51ra12H13P5KWzNOFRG9b1xmdcvOrheNlvoBwfs5D
         bl2uQ/iQRwKnJ9oQuMeUsn+HwS49NkCFYZb0OnFdUM5jPFwkDK9c6xGRS5/KNrbu2Zdt
         o+96Qk+EG/NgP8BS9/zvzqVtwe5kF5GChmw/KZevNNpWATec+gzspTOy3RhJpdmQpicr
         WRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gy+LuzI5KeW0jq7dZFeKZIIslvUsYqH4yb4nzEVHmQk=;
        b=tkKWudg2JfERkvSjPGmJjyxwftu5qZA6jZtWk4gQBws2FPITXfLKg33js4WnY8gWOB
         XomqCWAfXaylIGNyLdiwvO1YdBWchhdIeG1Szjf8A8R9Jedp+MVcffsQf1e84OkgLGw2
         WNvOsI+9mnVB7JoozgvF6LjRdKcUvhYd8vnuhT7WSm2Ng2+HF0NAf/jYdHSyvhVon436
         m6e2bfBCc7tVO3IWAmCZsY9NmSbWAPO4VceMwvFILNBpQH7oLjoyIJblGITMAqjuXlJY
         TCzfSCW2HGLwESc2Fz8zD4j+8P7j/oGOH/rEzP2AY67l+I3Hxl4EAeBX7uBl/TSTounb
         3gYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PfwBYjPoOkFPwk1O4lpcm7vGwU8VpoSWb3TdoeWEALMewbafi
	ZVV8AYMA+fjHAjUzeWtQTBc=
X-Google-Smtp-Source: ABdhPJzeFh4Xkj3olKBQdzRuFhyZWs6GxPmObaub/sgyyAEeY14xI9pAnWuyoa9cQVRqab3lApctlQ==
X-Received: by 2002:a05:620a:b0b:: with SMTP id t11mr20507204qkg.369.1603747412238;
        Mon, 26 Oct 2020 14:23:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f748:: with SMTP id e8ls2617717qvo.1.gmail; Mon, 26 Oct
 2020 14:23:31 -0700 (PDT)
X-Received: by 2002:a0c:8d4a:: with SMTP id s10mr4879583qvb.30.1603747411846;
        Mon, 26 Oct 2020 14:23:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603747411; cv=none;
        d=google.com; s=arc-20160816;
        b=nVECNvTwgVt2ZXVvEqAaQqyjpyKbViqgd7D8S5/QX9dhFKbHkI8PrDctnfb1WuyxRa
         P8dY3ScSE7flulzzhoSHV5x9Nk5JmOddg+KJ6Ojp6NDKcrrNmlIVkego4NQMSaGRusbx
         DPP8tkKnI8zWffLXjForZGJQ8+a6cbiSELAa56WavKhwV0EZQDYK7XNKz23Ij8n1ohaL
         qGfKl1k5pHn6of0fni3h7BB85HUsW5OqxcZ7sgActwTrk0WuRZlzyOMV8JEn05s/kKCX
         bVWTRwX7/HIv+ssr/PznCV1v0KHWi51jJJeRJ0ISWryTBLY0Ds+BODxwSH5hW9ObElUF
         ektA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BCc/B2scFgZK5OQqqR10Q6zffv+0Olsv7xyPjm58WNs=;
        b=UJP4gm/VJD5v0/UAK/h9iepbiARPy07vgxokRlEjF+dwXay9FZS78uRrE+WEr54lPf
         JcGiO48ZsmBnd6gs815LHihlAQCM96CggUuOfV5+ZtEvo201qPuwiK2o9Um2kgUWTGpZ
         g+3TpySZN1mQ60Ccqt/vpifnJwyJS2TH9ucgf5rQKCVpGqqCpGubjrQMzd7egWIBrB+w
         0n3ISiWHTamL4drT7KLZxoArh9G46ZeJWIil3zNVDSxbpjWSouYiSABs59/9wi6IE7BU
         hWBROBG0LlfFyCd10rDfXef6S+evqcUAxw5CCVJx0m5c9DdPPLSqvJxGo6NVa5lcgDE4
         akSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fAmEUO8n;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z205si684288qkb.1.2020.10.26.14.23.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1046D207F7;
	Mon, 26 Oct 2020 21:23:26 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Yan-Hsuan Chuang <yhchuang@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tzu-En Huang <tehuang@realtek.com>,
	Ping-Ke Shih <pkshih@realtek.com>,
	Chin-Yen Lee <timlee@realtek.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH\ net] rtw88: fix fw dump support detection
Date: Mon, 26 Oct 2020 22:22:55 +0100
Message-Id: <20201026212323.3888550-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fAmEUO8n;       spf=pass
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

clang points out a useless check that was recently added:

drivers/net/wireless/realtek/rtw88/fw.c:1485:21: warning: address of array 'rtwdev->chip->fw_fifo_addr' will always evaluate to 'true' [-Wpointer-bool-conversion]
        if (!rtwdev->chip->fw_fifo_addr) {
            ~~~~~~~~~~~~~~~^~~~~~~~~~~~

Apparently this was meant to check the contents of the array
rather than the address, so check it accordingly.

Fixes: 0fbc2f0f34cc ("rtw88: add dump firmware fifo support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/realtek/rtw88/fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtw88/fw.c b/drivers/net/wireless/realtek/rtw88/fw.c
index 042015bc8055..b2fd87834f23 100644
--- a/drivers/net/wireless/realtek/rtw88/fw.c
+++ b/drivers/net/wireless/realtek/rtw88/fw.c
@@ -1482,7 +1482,7 @@ static bool rtw_fw_dump_check_size(struct rtw_dev *rtwdev,
 int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
 		     u32 *buffer)
 {
-	if (!rtwdev->chip->fw_fifo_addr) {
+	if (!rtwdev->chip->fw_fifo_addr[0]) {
 		rtw_dbg(rtwdev, RTW_DBG_FW, "chip not support dump fw fifo\n");
 		return -ENOTSUPP;
 	}
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026212323.3888550-1-arnd%40kernel.org.
