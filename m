Return-Path: <clang-built-linux+bncBAABBI4B3X6AKGQE5II3N7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D78EA2998D6
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:33:24 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id e5sf2283804otp.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:33:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603748004; cv=pass;
        d=google.com; s=arc-20160816;
        b=RQwNkBYjb6qppmMsCvNSLwHAJmDA7GvTSE/AKyECQxeTzPWajq6ib4i8r04z2vBVnn
         wiNPZJpz+b/+oEGJH9cs7yf/qqPoH8aeESH4+ydJ9wvkgEHyz2lHWDe8mgQBhn+YUy6P
         2AmJ+zdsJVIboxb7cu8ruBRv2qh0oOiLYohMHUDfVOT78pf2B1O6Wt7Ekq8cGT4VocY3
         QWlFOjkx7oGS4HgHD1nao7gz0DZyN5WE/KfWteKhBFPSqLc3XvlA1Cd/rO4uLjmge4jg
         xnwA/9S3g4Y7F7znaC0nnZ62WWNOu0QLZjGziUH++TPxWAkYFbXxn+BI9xAhqaa6BPuV
         5FMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9y8H0pQVmCuYwKBAW0wNHVt0gxAhz6C9zUB83N6QSqo=;
        b=a7vmgPbdOzdRe6gx5cu+MbY+4PBvxeqUyudtOHoFHbxFcbXpcKUVQ55/5J/NSd2mAg
         ayb1J6BGuinmtW8OLdytFpIgMewCmUbfe7nce1CjeaaqF8ZaS3QXmunHEOlhU25bQRQk
         tNTEt+L+xjXpP28SQau4CQroy4LDed2AKCPZzcK3F9fvFDeEVV2EUl19uUz0fyoNCkly
         SPPGXS7MQ2QgRsfrEzzVwIGNTlZK/NsLqOUQiRwXKkHgrwUp7bFj/r5D+hzgecFmHEpV
         tg6J1Hl+AHH4djkIrzxcGAHf8qbWhq4petrAT/M9Tca5Wwdz9dOG6EdJVieJY4ZKtcei
         FHOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="03uQ+/v4";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9y8H0pQVmCuYwKBAW0wNHVt0gxAhz6C9zUB83N6QSqo=;
        b=YiJiBr3uSfRS5X+GtqpYyypBUB/aZiYa+Kow/ipuj87Sp70DZZDCNyuG6vPIAXie+l
         YoOcfeD08rninGm12hZI/PPfsFdudvY+OOODTu1IQcu09WLdoYjBf2XM5FCWF1tZRtf+
         UDej8McsrdGC+M97o1s7WR2H9QCIgwAxvthq9V4nc/l2GPVpe6OJHu6pHnAmPyixrTBw
         U08VQlzRtSCvv3S0LPA2Fn8xHBpbig8pgnGDnZilkplubKdf7w4tRgnTAKJpv6kWs0Aq
         pMynA2m9RXk5PLcR8Y+ehsqnDsGWkThBi82tP+2eguoRovhDdkPnkwCqNodf1IYrtUQJ
         HDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9y8H0pQVmCuYwKBAW0wNHVt0gxAhz6C9zUB83N6QSqo=;
        b=qZ3vZpASqU7og8KUfZK9ooOLUEdvDux3bX7Osc4cbtc3+1QVnghMyQXsn3AInmRZ+R
         b8KqTycw4Iy3iaeOfhdd+LUDzttuulTHc9R4vz2AT/Ne9O/FJuKVnXAof0lEG9KGoHQR
         1cOo94JTqER2hD6i+uzFDwU6iLPbCRcr16eApmJlTEHiQHweEuOs6e/KfAbHRkcQLVkw
         7MrposxzIXZ3lzP/BYYjym1t+IJMiWTge0y6rtauNKCsHgXHZQ20J1EH8KzV/t0ZAjCH
         L4SOtgGNwdEm2kjBPNHYjJ5+rflRpw9fTGSkO96J3dvnO6v3Q/1MI8tnWa/+palY+xdh
         c1hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530poTOf/oz0pa3LoqnDB0b0fD9EYxqroUse4oLm6dCMPjqjJsXw
	hVPWNZjZy5Wb1roIUAplqoA=
X-Google-Smtp-Source: ABdhPJwZedZDTYEndg2Pp0AmZ5puQ/+2UWFVSUH2ncQ8NSHri949NBl3Oo6Q6Vg2rDrVL+lJoqjFfw==
X-Received: by 2002:a9d:6d19:: with SMTP id o25mr15389732otp.85.1603748003716;
        Mon, 26 Oct 2020 14:33:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls27515oob.4.gmail; Mon, 26 Oct
 2020 14:33:23 -0700 (PDT)
X-Received: by 2002:a4a:c193:: with SMTP id w19mr3024198oop.68.1603748003292;
        Mon, 26 Oct 2020 14:33:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603748003; cv=none;
        d=google.com; s=arc-20160816;
        b=pHXKaAwzFnF2B6jOBZfkKZuvct5FgHPEtYwyzG6IgLl9hoQ/2SsG25y2PG3L1ec9HW
         U2DUqEeW1ki7LvC/w6qEwIDMRrjORK4IHTUTMOcjaeyI0tGoeEjNCTfbv3LmQZwWY/lp
         A5IrAiGFJtbY5ZEtLsV9VVhFz4p8e+hJD/y4iPFvda9ONi9ON+e+4Q9DQBZqSWTFMkHp
         kzCJbAEcInwO2mPdnTLhQ1USI4orxuRcS9ZmtwhUYASLqvZk4Y7OHor68ybUN6ZItyL8
         bU/b95TtoWv0UQcz+3RB7kvm9hurd+roquisym6SBv/Ip3gHbN1wn7O3Xn2d2noOkN/4
         9JLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KU/q2YiRp/PNWpbTTsAxZnIXYQw54E6axf8D4YEIL4Y=;
        b=OSHVedoxfVYUt3dFinC5IvTiIB1XE+4WMFXo69G112YpBRuZDVeON6FHgIHmBjvxT8
         ZxUg+2MpuASIBg+NKfp4fJ9wJ+9pCOtZtSJSkUlACaojWZsti7lRwMsRQhWDHpbUHkmw
         U3Ij9it61Cz3+Y0mOdc+ItR5TySex/fiYiTgDcQEAG3ielEBXUKwyhCl5hgQmjyIMkR6
         DhMig7VC6vsGEA3a114rMNXKOh7AnT/RPqa4mxzEJcnVpfzGpL9mBgTOUoGgxmB1IefP
         2d4JOlpnMv5fA6BxGjCUrnLv8ohw+cw8W42zENuF8+fR78sCNneOlXtmjWOC6dXQ6AAk
         NwOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="03uQ+/v4";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o22si931741otk.2.2020.10.26.14.33.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:33:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D6EBA207C4;
	Mon, 26 Oct 2020 21:33:18 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Yan-Hsuan Chuang <yhchuang@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ping-Ke Shih <pkshih@realtek.com>,
	Chris Chiu <chiu@endlessm.com>,
	Zong-Zhe Yang <kevin_yang@realtek.com>,
	Tzu-En Huang <tehuang@realtek.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next 07/11] rtw88: remove extraneous 'const' qualifier
Date: Mon, 26 Oct 2020 22:29:54 +0100
Message-Id: <20201026213040.3889546-7-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201026213040.3889546-1-arnd@kernel.org>
References: <20201026213040.3889546-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="03uQ+/v4";       spf=pass
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

clang -Wextra warns about functions returning a 'const' integer:

drivers/net/wireless/realtek/rtw88/rtw8822b.c:90:8: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
static const u8 rtw8822b_get_swing_index(struct rtw_dev *rtwdev)

Remove the extra qualifier here.

Fixes: c97ee3e0bea2 ("rtw88: add power tracking support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/realtek/rtw88/rtw8822b.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822b.c b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
index 22d0dd640ac9..b420eb914879 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8822b.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
@@ -87,7 +87,7 @@ static const u32 rtw8822b_txscale_tbl[RTW_TXSCALE_SIZE] = {
 	0x2d3, 0x2fe, 0x32b, 0x35c, 0x38e, 0x3c4, 0x3fe
 };
 
-static const u8 rtw8822b_get_swing_index(struct rtw_dev *rtwdev)
+static u8 rtw8822b_get_swing_index(struct rtw_dev *rtwdev)
 {
 	u8 i = 0;
 	u32 swing, table_value;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026213040.3889546-7-arnd%40kernel.org.
