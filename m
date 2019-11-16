Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWNUYDXAKGQEI4EPPTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id A83FAFEE0B
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:42 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id q14sf916873qkq.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919321; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZpOFMv0LqD7NH0d1FMl1DepMnQ8T9Rfz8w6TTo2fXc2hP61lw+WOhXPxuX2rcVtbH6
         JIzlT8P4a7TCezGQxTdGsyx6fI8JMo436xovc5e0Stx5BfGpwtZvpKhY7Z9WGggEUHU2
         evHXD+DxbWxklIrSCiGl2xMN4y9BY3YoGi/GXMJv1q9qQ9WNKumz1nhvKcq35tKwkwQo
         mJyEwVerxOg+Q+TCl2imi9owygimGnsYHbuDIqbpPUn9n3tvbGWCBTI2sHEwAUmzE2o/
         ReBXZzL06q6+AOxd1UgKrC85cxNC9PRJv9LXDfUL2q9ns3XvlTHaPK5FQsBSXqHVtTOp
         ttXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6q6Y3A8u/aFtFV1q1nuHSN7MonLv67an6Oq3UX3wHos=;
        b=OQ2K7IQVWPb5cewo9vUjyr2bX8lFi6CqdPZ7yqEDoPOzvQaugwrEdpFdorto+c7k7y
         TU7HfYhtupZvIPokr0DysVgS+Ma14TNrdp1z+DY0cKAt62h7LVwBbFJyK4mLItUARe07
         Tf9YuJeKfriD6aIipvB0ZErFkWQhP2fduzAVSpSxUHgXKMt4nRNu02cfe/EGIt3v82Xo
         oqrK323vzZpp4NlDCOC6u6XRj1kYW1tO7oCdATzfMk1JcDfComoEtWca9mM6VBWxjDPJ
         9YBt0bzrxrRK3BXv3huzONA3xcXWzR+Larbbx+5yB6EotxbXj+LMzg0nG/49oiSeuAS2
         l6xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vEzkBOgN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6q6Y3A8u/aFtFV1q1nuHSN7MonLv67an6Oq3UX3wHos=;
        b=QO1+IgEteNN8gixpEN8OGiB0IyFmNXBUhe4zYTe/xOhk9+pSaM7uMDaNJDzOM1e67/
         f1dch3CTX+nhBqC8jlzBYDHwpcbeD0rZYoHVXTOp7GpA0gAwt0M++aLX5hN8lHfPu0f4
         ku1i78eYz15wV7YM5EqSYCZm65BARauHe3Jj/FapWrPDBm9nlfpmvg2PaE79xg1FDNVg
         ozug+JpHo/M4Eog5Vmw8mPR2WTjvc65wZQuTHu5NxIR1JI2eYTrFvP6PlQX28MBJ/KZa
         uqp7SKHwgfc2PAaLca38vJn55+TP6FyquMiObMB/p/+Y0C+elnOkSWzjsTakIaok8P8F
         M6PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6q6Y3A8u/aFtFV1q1nuHSN7MonLv67an6Oq3UX3wHos=;
        b=t85Bk+OwHsiylHz5f9XdAeM489VsjPM/2WPtVb2Kfifk3JntzZNUjTMNizrKEyjDzv
         gbcmiiIkuZ5UgFSA11DwY68Gmbxlyn7VnPbmw5VKaAYSRaUVxU5NXKNDx5MJdcIxoRtG
         VMU1J/gPQzOL6FXblg5yQ515Tr3Js5OGQQIdtKNvMDU6EUsGmxBc6ZFojMa84ObEaJlm
         Z8+07Kvf/450lUbwanSkk6pGFbYeQlcHvgB5W6ZoOmi0cJjfsPyTPE3JQ0WL4NSP22jp
         oeC8fawiAg8B0/GeQUP6hpnhsvipfSYbvgtCDoLiR7VNcH0jhfzTBuja59bxk8Pc8O8O
         2hVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWCgM2BJPvafhsJIo29Flpz54XbzO7EwqcfsDXIB5NAl0XM5/uD
	p+mRbAj30QE0UtdD/Vemqzs=
X-Google-Smtp-Source: APXvYqw99rPqNNPZqnhwzkP2BzPWyEMMajBFSut5bc9HMPC2htb/J1ae4W8xU2vkQC+kPZDXvEkR2A==
X-Received: by 2002:a37:ba01:: with SMTP id k1mr17784256qkf.198.1573919321688;
        Sat, 16 Nov 2019 07:48:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:18c9:: with SMTP id o9ls3346874qtk.3.gmail; Sat, 16 Nov
 2019 07:48:41 -0800 (PST)
X-Received: by 2002:aed:241c:: with SMTP id r28mr20027322qtc.148.1573919321368;
        Sat, 16 Nov 2019 07:48:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919321; cv=none;
        d=google.com; s=arc-20160816;
        b=kka6EOuRyK/aJsEGbvEzBWuuvHpJWSAQaaPtO4tjd2gbR/+e7jcozA7wdTfIN32Gwx
         YMUinmw3FkpHAyV3lv88e3L7Dzak5pV/W9iuBqwvUhqbkYJXStztufUwJz/dGE1zYafa
         DWdQOL8zHQtE3rBb45EAKH+1gnh/lXdk09rRRY1nA0gUSxdmsLiYaOU75RgIqn4G+kkm
         +TqT/7oGspD7jF/xlRe6pEmZ64IcqrlRlCsP+/XMsp5ySmqfr3l/+eiBKS5z5T4BY+hc
         BKy+NQnHEbACjiAsmA8hPQBcKNtHI4yo2xMcZZHKQaOgW8uirzjcnMkZB8OLvhEcZ/ny
         ZdFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=s2Qr2OYyZKB1y+DHbcZfy2DuiZEX7STrPPJ8LNj3kts=;
        b=B6L6ooxSYitkdoLy4H9OYBCUg24qgLn/GhfhtKDz2G/+40AjVEE2H7ozhWIuRP0HhE
         Si3J8RImldQ3yxmftKSSdCdV7kWl/rXDi0zCEORbNj5ZRtJwMMtpyvj7airr4FA3t95l
         aX6yeT9RFmv6gvy3AnfZefRhpy1smkBN5gyK/pv4n4fJfTsQb5dNQdW3UchatdZ12fwj
         tyvKP+Z4Jas4x4rqbi5wOMwhZBAJFxXz1uKYZurG+Sk1S8dc1WS7bI7OY+8tHBkAgpHX
         AAyVgDsOAWSjBHrmmssUCgJfzqB8H5yca5BRd2ccd18vlYxxaiuocxqvjlN9GiDPXHPk
         74Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vEzkBOgN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j40si881258qtj.4.2019.11.16.07.48.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 100C820870;
	Sat, 16 Nov 2019 15:48:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rtc@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 062/150] rtc: s35390a: Change buf's type to u8 in s35390a_init
Date: Sat, 16 Nov 2019 10:46:00 -0500
Message-Id: <20191116154729.9573-62-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vEzkBOgN;       spf=pass
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
index 7067bca5c20d9..6bfff0a6d6552 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-62-sashal%40kernel.org.
