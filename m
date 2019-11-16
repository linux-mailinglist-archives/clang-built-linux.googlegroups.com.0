Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLNXYDXAKGQEQ5LH4CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id A6273FEECA
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:54:22 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id l6sf8306022plt.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:54:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919661; cv=pass;
        d=google.com; s=arc-20160816;
        b=NHf/NovHs3iKrZvCRyWudyj111Xdloov9D3b6UFkg9WcLJCsFQkx2DHuBUMExyf7o8
         s4T/WzxorZNvWw3M8+0Vn/M45cT3adFdTHxYoXU/hExmr8WDWC/uCDsfuxs1CK3WBUSj
         01VDzeNv0aq8O5pHZ7AsorwewDEDw0/EAs2uIAFOllQbDFAoaJfNM3J3g5Aa/7qbNoHq
         jA9KImMAMyeJ8bF9BoQB+EuwEYtQrB8c+vNdoTsGm5U91I0TVv5003N7bcJ3whLvkIWY
         8N4sH66NRz6QPUjZNYH9NngQL6xA9L0ucyZKbDCgy/+ul/KKcC/GF7OaFdQCLofloGHm
         Bj6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IAveDgynpYPcFcPLYqUa323JgUouU8ECClw+7XsI/gA=;
        b=tRzRLAoFFLqP+BgyLGBv+bT8JCR80YDXOokMV1388y62fCY63KHMzRZggn20vnyi4K
         IUv5L6+jsWABBDqbUO+Vj1H3kTtZGFqJT491h1TkcyWIh4OT5eCnzFFHP04FQ+6Vqxst
         tEsIj0zUUZ0DAY+fplkku8Q2zjiUIElQqWBod9ecnp3IwTVNbKysm8/AECKEV165s91M
         rssDWj7WJ9/0uyLFcSK+ReQkRVrYYATittn9ZnzbOa7jDdtuXjQA/atJ2m5XGJiSlTju
         llnre5AcQBCEQXeNHBAlL+RADCD4PlELX2AMgQ0yYJytdobr7YRSDaYaUeJR/27j+ii9
         QpzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="m//isy9l";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IAveDgynpYPcFcPLYqUa323JgUouU8ECClw+7XsI/gA=;
        b=ZNB8t7hUSsVilDDi97QlQKiMe6jcY4hGaH1ff1+znuX7+6uYSxzdtVdPXXFq9u8ud8
         6wRUTwrXBMJJrCeEtSMvD7KkAnHoVuvgqb5vniLVJIoboWVxBJnVDF2P4CTQ02JDlB5x
         lvhOm7jCgYatogPqX55P3NKH7ir36YnYHApEuaEHngZ5aT7ZhY8ZtrzqzFDthC1UTffj
         Sah76CiZunii9beaCZHB2dTRPUVMNr3Oys7MmRw7HR72qFqZ5NCnhXVskQpL6IKk35KB
         CBlbYIBNsw1NEGGW63LsxUGG+rSofw//G305mr/6Nxn9UqULRLqRcbbud1wTlVaFvcJ7
         +KvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IAveDgynpYPcFcPLYqUa323JgUouU8ECClw+7XsI/gA=;
        b=ayBQebsleDysXo9H4R70Owx0XTDQIbHVL3FtMJJ1lS7rQSyZGBl0KYR1j9SddW6jRb
         HqWuvDmPkwDYegcmY+Jxj+nYdfNpOtfNApanBqKz5dL4m1HYNMqrV3R/XgwCNQfbfgbt
         4OESFNljaSd39UVQ/iC8odFFz0xTfDHCyM0TXMVWQ6qIr5oq6eDdvwFxslHUVp3tQ9bX
         RSEsS2Lp+DdZ1xJ1ZlaDs0bADImbVkWg91BSCOqT5czMHvcw3a5beB3cMMJ5bgt/YDOz
         DlJVvJLjBmsJ5SLyB5S5x86Hc+yQVM3rnc9jAlzfkS6driNWh/IIDRXhiZzAvOdO714S
         76iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXNoYemAHbwvvERr1+XnAGLHVM55ztREImM3bNFMDXJ5wxgWLJd
	aZEtz5jfvbOoNQhF3coZMR4=
X-Google-Smtp-Source: APXvYqyUoFBT/jadfShWMQWj6IcTT3n5mmFiWWs/5SlbNILZnU+WBilpurtfqM4S7hiATOwds9uVow==
X-Received: by 2002:a63:c805:: with SMTP id z5mr23252112pgg.14.1573919661227;
        Sat, 16 Nov 2019 07:54:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6848:: with SMTP id f8ls2839062pln.5.gmail; Sat, 16
 Nov 2019 07:54:20 -0800 (PST)
X-Received: by 2002:a17:90b:3015:: with SMTP id hg21mr27361563pjb.96.1573919660899;
        Sat, 16 Nov 2019 07:54:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919660; cv=none;
        d=google.com; s=arc-20160816;
        b=uZnlwA1+v6b/aMv2b+gXKjQHTAZukBjweyMvQ3/uZTMdA4ccOzH1ocIE+xJquuc9Bi
         sLHnpxjy1h0y9Bw4CsKeCFlvdcE26dD9YXSyQxyvO+e/jAEhdY1VLl22X4my+BylUrOb
         3ECauJZFesWTKzs6YkdRSuJcZWd91E+DggnYYkr8dEKrVHiU8f58fuSeT/sji9ftAAME
         YSVTY83Ac2T55DYgM0jHKd//xjUGL5N+/t83nPENFR18XEi4T1Fp7zpd6wyNORRiqFx1
         q2P1AGXPhnXS+Qs3LT9VFTm3wWlTSKsyTJhrvECwV76xlJd4qtdvQVsUiAIiFJXky4Kb
         H4Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mxNaFPky5BRNOco/AToRGESCrvJUg5koHwRVLJtHmc4=;
        b=F/PG5unXWxxi+rciLKsbUE7CyxRE7erevg6FiAQXhF6tMY/BbzU02VGUNsAfkUiuEy
         jbwOb45ENKg3yvMQ5eg9uRG9MEj5Z4qGoxHWW83+0lNB6Ab1uQA7pBmjQnZs3ahxItz+
         7Z3uDbXm9T76A1yCHc8smFZnnUoVDVbjkpDrt4DobJQ/gmUNk62Rk91RECulFydRs4oU
         iOTxzd3ZZFLceJ2Wuy+6wIkhbUBR6AqWJ8HmNvshGR1TnE0wNR05ul2FKj3SE5a0it9G
         8S9sPlgXxHXSB8pAdOaze0TH1eG46rgIaH3Jy+Uf3G3Uwcn0ep0JQatogj9q1DtchlSF
         lzxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="m//isy9l";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ba9si428909plb.5.2019.11.16.07.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:54:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F84221882;
	Sat, 16 Nov 2019 15:54:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rtc@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 33/77] rtc: s35390a: Change buf's type to u8 in s35390a_init
Date: Sat, 16 Nov 2019 10:52:55 -0500
Message-Id: <20191116155339.11909-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="m//isy9l";       spf=pass
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
index 00662dd28d66a..9a931efd50d36 100644
--- a/drivers/rtc/rtc-s35390a.c
+++ b/drivers/rtc/rtc-s35390a.c
@@ -106,7 +106,7 @@ static int s35390a_get_reg(struct s35390a *s35390a, int reg, char *buf, int len)
  */
 static int s35390a_reset(struct s35390a *s35390a, char *status1)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-33-sashal%40kernel.org.
