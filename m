Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWXEZDYQKGQE7B5MJ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FD214D4FC
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 02:33:16 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id p19sf930822plr.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 17:33:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580347995; cv=pass;
        d=google.com; s=arc-20160816;
        b=HbWfs0Dp2FhAvUloHZzehiaPrg+Puwe4GumjrVHD8l+mA7i9cATNM9gJ/t42D4frkz
         8rtjyHPFgDcc2yBno7IOJoaBOL0NU+xiB++xdyFNN1tZtI9YPn8XhIu7hi/tIhY9RRP2
         bndYG1kCSg1N1gEEd0Cz0MEdBfQNRM9UKiGwQyHO5USXs3LXCURlK5yHu958TFrbsv1L
         a1KcG6zKFsrCcoEyGQFIoEDhqc+A3J0mfmO6ED/5rkX5RZ41hInEznnL+MwKA6HXfurt
         pRQTDfoyoJk6oMaAZtYTZ82+VhV3uLIAbGkQshk8bQn152UFcKn4ehK1zyNoZX607ubu
         erog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=zuAjvx3CjjINRmTXmE20v0auGp+qyh9PgstKpwartlE=;
        b=ZXAj1DWfkaBq+Ino3pZZ7Cfy5eq7jaC9VKaznfj0eIBjKstnQz8z2CSlKcKrFd9oUz
         +ES34adSmlXRdBCxALmgKu8VqMGkhsD303jlbpe0jqn4LG24v7txUDA1bfCa3lUjY4Jv
         yTTHjw3AUd2UGkCTbufZy+PM5P9q8rglkluU0sfYjhWXcLyj7NBK4NYWAkZNjr8Zip6C
         JRo/h74od7Zi2LsZu5iXpqE23JfKdnjgIMfUh14dz0L6XiodOxnQ6trR0lhw8pZm5R+O
         IJsZywiNgQghl8+9Z5Hjvh9lM1q/th7aAm1SqymfmlLYofPlkVdt41kzbwyVT7ydUMJ1
         P4UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FfWX/ESk";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zuAjvx3CjjINRmTXmE20v0auGp+qyh9PgstKpwartlE=;
        b=AHHy/C9orWzzsiIx4TMfIc3YWbY/yXfjYCH3I6y+73DVvaz0UUaiAXWf081+2Odmg5
         ixoJ3LiiLri4/bUVPNIoOiWk67QFodCuG1dDtq72ocIRRk268OAdGK4Hnmm6cbTZ0P99
         4Ruxcx5PEf7tmU5whU0WruVrI/5wy7B2EvHvHzPoNuh0X3XS0okeCEfWOs/oNneOdP6A
         VmrD28xqfTYF+KQr7cKXlCrBK3A4KTdBUbhLh07BQaRaqzixALzGKb41rfKCtQnoi+2W
         C1veAn5gpS4F0HvxIpt/RprrRSvxEdnJyvj0GuEFIcSvCAVfB8rxAlSxxZXcjinHg9+R
         nfQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zuAjvx3CjjINRmTXmE20v0auGp+qyh9PgstKpwartlE=;
        b=XlPFhJJaVb6D+he9h3ZoaZIvzCWKTgJFzH+frYlPZAGzUSy6zGB1Z9rST5VHRSrhcH
         UKWnaPDWX9VV35iXGsS6f3DhjW/ngpIiPjgMTSTwc2ApI+ixS3vEOlU9dkLAs50SosNL
         wBF75dWZ5H0cGC8RwMtvg7Rs3SMZPQwTw2Db1Wg+ExWT2w0n+Cj/k+HArhHjbKMMNOYL
         AY4M9Wt1yhg6GBHau2KRVKIaT13QpAyrB+QwWW2EoBM1TDYizHF0/JKeJTSbZHxrqFVU
         UtB7btUWrII4uVt1NWf242EAu8FUBwr5DF6Q//m+Z6fZkx4Q9xty/YAV02yVnZMEYLiH
         y7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zuAjvx3CjjINRmTXmE20v0auGp+qyh9PgstKpwartlE=;
        b=dm2Ul6BJcE6hNH84V084RvqF2G4hEmkW8nVSjzjhPhFwIRBAv6irq6nJcHJzXy0Vlr
         tdGm0seDP0Qcqy2DU7ZxDjQvY+RZiHiajKQlFCSIV2zofLOkotPbqmCMMw+DbBFPriRY
         KQVqvojF/bgu5Q55DHaGClhXQyWX1rlMHmFmqFzua4OrRMkgrx/b0+o54g0WMJjTPsbt
         Wnj55MIVpsTovF8bR44CP8c+uASIQ9W1JJebITmRY++alCzj0iefEOZEl0w9M5bf53uu
         Ocq3OglkCgi8/L/puOu7iev+1FJTxos+Xz6rBNbfYxRG6I402F8cnm9u83JdP++7Cq0R
         rZUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOOqVZ76+kJyTFvRWa9uO9GM7ixihe7jnCyIcPBaqgJ/NFcwWy
	a8urq0YDhd0l54fp6hMBtrA=
X-Google-Smtp-Source: APXvYqzbZJvg5Px79B4LY3rbI6Z6JOZOMrZ+NT+S1YcdJsO2YHPOD6ZV7ESl8jIPnWmnChDCCpCZnA==
X-Received: by 2002:a63:1853:: with SMTP id 19mr2025261pgy.170.1580347995001;
        Wed, 29 Jan 2020 17:33:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6389:: with SMTP id h9ls578927pgv.10.gmail; Wed, 29 Jan
 2020 17:33:14 -0800 (PST)
X-Received: by 2002:a63:3089:: with SMTP id w131mr2125412pgw.453.1580347994142;
        Wed, 29 Jan 2020 17:33:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580347994; cv=none;
        d=google.com; s=arc-20160816;
        b=m0C9mbehfS+LPCvUkZ9NvfBZTGPoxS1ZcTrRuVLKXzFEQONtbOzWBNP6pllDTSuAXa
         Me/0YbsO2gXJ1nz9BM2Q7C7iUsD2k1FjIekiKgOddfKvGLUDmVKudY7ncL+Od5axuw2o
         cBLN9j/0ElXQrUj8bPsp8cfnQrjmTlWkaXqBsyRWSFdkTsoKXhYyXcEcBXkSTxlG0ivb
         +HL2oGox93tHuG3EXp0Z1Z6CHo1z2Pd/aPiq/xK0DEtwRT+HP6xVuvVVJj3AGbYSY4vz
         PaIld535M8YJNYmJRjop/0N8O4jTTl735tf6IK77LG4EpMcI4mdyhPClHCxLd+8CVP17
         2FCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5ZdzI82fvwujvYsag8I7TqJgzKEukKEgmUxw93uz7R0=;
        b=x6CpkG2npH+I/d/A82vYTYLpq0sgSqmRModpN87bLyAsm6ATvtzmahd9S1j/1RLR1x
         ThtWatcIBV3YX74uxJAl3X10MEjlbC1VDm70pxyzgjGNlj05u8ZV+lMcEe8xuq4EIQ2D
         wocsD8NRUhosor9le5NtTbUcqNqwZXZa+UP+ieMjeiLOawUNsKqOqdLcVnk8lQj0m0A1
         TTRbs3JAa3SurFN79r4gosIa/nPhDRJY5wO0GJbKSzDlnhqIPxareRd7MysHxHws5Pzr
         gFAiGAoJ22oa7e0LWG9SwgLslBz42JUIvJiDDHgIFJ5ty9fYz4byCVAyK9QHt98BYypK
         VkKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FfWX/ESk";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m11si214439pjb.0.2020.01.29.17.33.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 17:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id i1so1874324oie.8
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 17:33:14 -0800 (PST)
X-Received: by 2002:aca:d483:: with SMTP id l125mr1277102oig.124.1580347993400;
        Wed, 29 Jan 2020 17:33:13 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i12sm1336938otk.11.2020.01.29.17.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 17:33:12 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Yan-Hsuan Chuang <yhchuang@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] rtw88: Initialize ret in rtw_wow_check_fw_status
Date: Wed, 29 Jan 2020 18:33:08 -0700
Message-Id: <20200130013308.16395-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="FfWX/ESk";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns a few times (trimmed for brevity):

../drivers/net/wireless/realtek/rtw88/wow.c:295:7: warning: variable
'ret' is used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]

Initialize ret to true and change the other assignments to false because
it is a boolean value.

Fixes: 44bc17f7f5b3 ("rtw88: support wowlan feature for 8822c")
Link: https://github.com/ClangBuiltLinux/linux/issues/850
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/wireless/realtek/rtw88/wow.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtw88/wow.c b/drivers/net/wireless/realtek/rtw88/wow.c
index af5c27e1bb07..5db49802c72c 100644
--- a/drivers/net/wireless/realtek/rtw88/wow.c
+++ b/drivers/net/wireless/realtek/rtw88/wow.c
@@ -283,18 +283,18 @@ static void rtw_wow_rx_dma_start(struct rtw_dev *rtwdev)
 
 static bool rtw_wow_check_fw_status(struct rtw_dev *rtwdev, bool wow_enable)
 {
-	bool ret;
+	bool ret = true;
 
 	/* wait 100ms for wow firmware to finish work */
 	msleep(100);
 
 	if (wow_enable) {
 		if (!rtw_read8(rtwdev, REG_WOWLAN_WAKE_REASON))
-			ret = 0;
+			ret = false;
 	} else {
 		if (rtw_read32_mask(rtwdev, REG_FE1IMR, BIT_FS_RXDONE) == 0 &&
 		    rtw_read32_mask(rtwdev, REG_RXPKT_NUM, BIT_RW_RELEASE) == 0)
-			ret = 0;
+			ret = false;
 	}
 
 	if (ret)
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130013308.16395-1-natechancellor%40gmail.com.
