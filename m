Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFNSYDXAKGQEOLSEAZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F105FED38
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:43:19 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id c19sf11855075ilf.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:43:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918998; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVx+BKv6FAA5fZU1eC5X9j4vsxnEaGt8wcZakFt+sT2XKOAFYAU0SIwFMjFmvD02AF
         jLFIwAWHRNKupx4APw+8HCtR3O0Ee5p+WiM5nar2QRyuQWh8Macqhb5tRTPLdRG7O2M6
         4AfvO8uAUqU0l+1drzAXC7mk43ig+tt240/hegIF1LUBFjDBgRQseWB4BB2UYwpEqh19
         OSNDOFwdbA0adU5OBomqUEFGP+ClxSGwnByXEDMp6CVFXpaHwy3Yw2S1Y+c/7IG0oA4K
         et+GXq5b557pyydqv+qPlLr4WA/wRtyEHWFSKeO3zY1s+FOxDSqQhnqY4zdnkq6nvmtu
         z3yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L7+FSnQIcvAj0Xt+B/nDcXkHQBnj2Slw4iHJ280qL30=;
        b=ijIi8+t9EGJbr+PdX5nT+o3g/91J9uDDbmOlzZLE5drBq1CJb8vWqzMGONDWvAPku5
         aHSCDREoraxRBcxPCUF5O4CdZAwb8+SDOxnoHWWW5MD522B0DQsEBisBYXr/O1wxH1bg
         KZDd3bOv/Jkn1T4pQL9fj2x6OrATk8fztcW9GIJrh88e9C+VSgLBSfgnRoooVtyjM3BM
         CQSMOQZWxw4aakg/Zj/Ov5CF+0YxVWl6WxEkzNHlb1FyYZS2HDS+CJggu1+8zSSw/OSz
         2MxQyOQvckB1Q3q3M2YwguYA/H7V98167o+dS7qlxOMA0S0cVq70ihVyQ3DTdzhkA8mk
         Aw0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QorIwn+M;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L7+FSnQIcvAj0Xt+B/nDcXkHQBnj2Slw4iHJ280qL30=;
        b=dE7eiLv+/DnVtrL00BXS7MdGl2M8LdN0s3II4yKGs8xSLhU04RCtBjXUzDLakm/9r8
         f+lz5dRaKQ4YIvTQJyqU9k0Q7BMCyawul2BJAk363m0T8YFsmP9Rlm4F/V/vc8lSW2Vt
         zx1V9IhhGkNbJb8ie5KPb5LlkDw+sqfEzGUjKXDl4T8RsAqJu1WLY9p/s5TsBougDjGx
         cwuUlJmdZuqV0AhATGjBZv6gke5CLwfTXRO/zXi+YDL2PQQr78CvHz+9PQbQCyKJmUTO
         DsGAojS+TbJtmPEYFKYNr2V4WFEvuz61wTfbQfWwP/31K9P+XAY0u1ivovlW3MqjldPL
         Xc2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L7+FSnQIcvAj0Xt+B/nDcXkHQBnj2Slw4iHJ280qL30=;
        b=bYtffUtMZshGX1KREUtOi2mN3lwPrCmYi1P7CzB80WbCWSeE+F+1n3CVQP1qFk38XH
         F64CvlNYfh54/JvDhDP3e2LxsT2aBehvK+Qqnp7B3IEYqFSbff9NF3ooVn6b94WJ5CJA
         8luqKCrQKlJd3bFkrl6dit4T+CVPITUZcgkpLrq3M059BAxJdsSHkoj4NaLuaRPdJKuK
         YQJWnZ3lV41vcHCRVhBB/IHnrTAtA7Ozp8MUwmIsvwPcfVWMwO9aHptNgqcFIuL9yLjS
         k+QgmDEe5NUNXOxosb7bFW5sWd5e2ZjgD8m4THHwsjMpbliI+MGjvVQrUOsPVHPUR28A
         73Og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjiyo52fGtOJ1WyVIG1sRQ5fKVb55J9/RhJt1gYT/5CMHajmga
	SQeUbFzi2r56GWHK6twQyBw=
X-Google-Smtp-Source: APXvYqxHnyExOvGS6XEj5IEuzXs2HrzPKcFnQG/LS23er5GGazyfbxOqsa88YlLg5L5Gxl3NipiMDw==
X-Received: by 2002:a6b:660b:: with SMTP id a11mr5591766ioc.283.1573918998048;
        Sat, 16 Nov 2019 07:43:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:8e8b:: with SMTP id q133ls2024466iod.4.gmail; Sat, 16
 Nov 2019 07:43:17 -0800 (PST)
X-Received: by 2002:a6b:e61a:: with SMTP id g26mr5944115ioh.141.1573918997657;
        Sat, 16 Nov 2019 07:43:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918997; cv=none;
        d=google.com; s=arc-20160816;
        b=qOKi2SSBEot2kws8mIdI50KGeNUL1axDf0kAf0ebdcINdEy2QxCjSH1B/2ugYZExu5
         x/GDuHqWan/e4RuyJ2YWNats3Br2db7M5HA4eIyPXAjUhxdHHXamaASRQ6/Eq1++4zgm
         w9NIKVRWmjoZt/MMWVHlwTRkXFoBSXSj8Hjg+2YIIz+TvO6fsR1AVSiQs9+9W3Mxx0XD
         UQb//cmjT7EoIQu+rf3BEpynnYgpQL13CqJCg2/s+hrOy3Puw+TfOi4ZrubFJXZvwRfL
         E28E4ey0oyz0EctwF8AE1gGtNtgQe+5tuj858BH6kHnqEwmuoMdYcFRh9cCuW8+hlqod
         LRNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9shXIkFgZ4TF6p1UqaGuQjZq8X8VDKSwdgOBbtIOLiA=;
        b=JBczDN7m10KgdDKuvmK9go+DATpYZMrvvFr7xe9vkDI6zmW4KnbH38yylpvF8Ne4+a
         25icZfolGhUJZRLzm2W2MHJhVYjwkf2Yo694Ejie6IcSpl8v6YuSvS1+jFrXXeGtLxgM
         ygIz8CQ5+Y4TWNBfC+PXeiuJVqtyUA5h0pTjbi4eDtjlvdGnuwYYIxf5Mt6Su5SQu45X
         5hfBZ1khmSVcTkXwDPFnM/nT00CfD335ZCaHqrK1WY11yH8BbQeTJo8dUBHgTf/Jk82W
         8PFtFrciGjG2nZXL8KH4NrtN9HL0eNrii3cE0ow7F23BWiBF2cb1COPduMidaDN6Dtwd
         tVtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QorIwn+M;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x8si840329ior.1.2019.11.16.07.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ABD7F207DD;
	Sat, 16 Nov 2019 15:43:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rtc@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 101/237] rtc: s35390a: Change buf's type to u8 in s35390a_init
Date: Sat, 16 Nov 2019 10:38:56 -0500
Message-Id: <20191116154113.7417-101-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QorIwn+M;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit ef0f02fd69a02b50e468a4ddbe33e3d81671e248 ]

Clang warns:

drivers/rtc/rtc-s35390a.c:124:27: warning: implicit conversion from
'int' to 'char' changes value from 192 to -64 [-Wconstant-conversion]
        buf = S35390A_FLAG_RESET | S35390A_FLAG_24H;
            ~ ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
1 warning generated.

Update buf to be an unsigned 8-bit integer, which matches the buf member
in struct i2c_msg.

https://github.com/ClangBuiltLinux/linux/issues/145
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/rtc/rtc-s35390a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-s35390a.c b/drivers/rtc/rtc-s35390a.c
index 77feb603cd4c0..3c64dbb08109a 100644
--- a/drivers/rtc/rtc-s35390a.c
+++ b/drivers/rtc/rtc-s35390a.c
@@ -108,7 +108,7 @@ static int s35390a_get_reg(struct s35390a *s35390a, int reg, char *buf, int len)
 
 static int s35390a_init(struct s35390a *s35390a)
 {
-	char buf;
+	u8 buf;
 	int ret;
 	unsigned initcount = 0;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-101-sashal%40kernel.org.
