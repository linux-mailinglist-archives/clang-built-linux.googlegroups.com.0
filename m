Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLVXYDXAKGQESL7TXMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 97956FEECB
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:54:23 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id p1sf9882431ybg.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:54:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919662; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sqlzm+2U5ooJT2jCu5aDITapMtKj0YIT6TOo51hZRyYSGFSUr7y3dIBx5wgWUETXhV
         bVyvqZZMaqvdX5K9s3XvrZXYatv8VFTm4ZMdfROBSfP6B65wVEmYdhaxORUUdEwIPIfk
         IQ5OTn7X6q0iCRLoM22RZPBPbk66QF2WGAVVhygU2kp8D1zZbnIeyNF7eT3Ms8hEpqiR
         5X0DTyOO0uDeMzNNeK9InrqHhK9iN4+v7TEXsVG4qjueDlhNFM41lCXMGk3djTCGokfX
         hUavX6HWzCyaDTyGDvoQ43IAHbbfQxlLGced3J78utth9XGWXMtofdN/4RwJaY6G1tWT
         3HWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YsaR8wC8jYkcj6OYPRuIjXdXgjchsF+X0hhhHOTfaxE=;
        b=ZyUfDtKecwS4E6hNuFDCHJxIYZlQc7KKk5CmQrrJ6ixd3f2bDhLr+8Wemo1yog9K1D
         L2cr35Pr2dOXkoqYxog6qq9zWx7pi9PaHIQ+LwlAjCbEGqFbxlKci0AdIyeQlJeovznM
         n62QueBmQOF4TMlOUlbVRPpVrjXh2VBlN9cHRnQtsbf0GIAZHCWMqk5NUsQPwr7lRBqY
         f10oQmNspzjY1M8iv17Mme99aoN8F/qeyu+zt1XY7HD/edf/V2+B7xVViNdGxGyXFA+X
         hge25w7MmkC5FUyFVi1PCy+4Mj4rdEdcbqUuQ19Uf1zhsbOlW1VKRg5d6XfFHSz7zIGY
         NOKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wM+TqGrC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YsaR8wC8jYkcj6OYPRuIjXdXgjchsF+X0hhhHOTfaxE=;
        b=Z8ICvjlOKTpO92S1lwrhY8HOaxTeffF47AKqHhs81q6XYBr9Ebbwm1osc7I/lvURbF
         ACgRTpvL4ef7ma8mBH9JBDCjyZbhHkp+jfrZDXLwU0av590LrnbTXpnPbonziv0Xb876
         pZjDJStC/6xjqZme/B3dxh+VsoDiOEQuBuin5VnEs/QDibddMQT2SwrYMS7OKivYM2ZY
         UTAIWV+CM7IW27DVZnRBAPRRfzQ91wsDz+szjaK9X4Lyo8u+4fiGUMEpfuzKDHsPY5AR
         O6wCD76fMuMfkY5IHEVEUvTSrNAXcz7JFYJjyddPbU3uv1dZIsJHLNgJNua1bEXRxteX
         eSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YsaR8wC8jYkcj6OYPRuIjXdXgjchsF+X0hhhHOTfaxE=;
        b=p6PwPNExeTkqU//BdoUYPRwLUiN0bERh4GjoZzLEoVoe1Za22e2ZZSUCP/amUzF4Y5
         BlsMZhph8k5pDp3451bGZlVxNeGatHjYtVlbcDasmxCV6a5ti5OK20A9A3HsVyKjn4l5
         M7DMcFgLXB72c68y9BFl36q2gTIF26iL9yH1geQKOJoTmt1CTKRJJFyxUbJ7+CNNMY6I
         jMSzGXYNmb9Lt/7C/JUFm5FoskFTgGSL5WbTu8ZOPSRWgLFPuP5Ly+YVfPfA1g3I5/ka
         fo+2PxXqb/l6jFWGRWns+HZgLHvO7Jh8R3K51Oj0XcYF7Vi/MD+N4x+j0D5hR09MclYt
         OuyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX2eSpdh5/7p8sSbdw7mrlEPjtEpKs8H0VgGCCT/xvwnYg6VyJo
	AgNa2rXMgNBg+8bJqWb/XQo=
X-Google-Smtp-Source: APXvYqx8JIb0jn2C3JizOR5ePU+zHhraS+7AHxnPRAVVaqz4ZVH3OzPibMF5ICgXvhbgKSZbmhKwKw==
X-Received: by 2002:a25:cf92:: with SMTP id f140mr15750582ybg.454.1573919662563;
        Sat, 16 Nov 2019 07:54:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:adcd:: with SMTP id d13ls1546032ybe.10.gmail; Sat, 16
 Nov 2019 07:54:22 -0800 (PST)
X-Received: by 2002:a25:7614:: with SMTP id r20mr17222428ybc.23.1573919662208;
        Sat, 16 Nov 2019 07:54:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919662; cv=none;
        d=google.com; s=arc-20160816;
        b=czqNv7pSao/pqTtu/sTMreNoIVtvqAIuv386n5ybJbs58OAVUTNh1rBMbErhkSIVCs
         OdKt9G/9KEqDW0gk11+JapnL7xxQlYbjqwQf0Afme5L5DMKSgKtNIGUABFAJMtYjxqE2
         nMflaui2J9r7tsCpNfps0CCosF0e+w29dnOwfYuV0Xmee3cJb2LsZpYNp/9fRnc6XMg7
         NO17SUPL2PhGV4BrutRd1f9NobdyUwQRxig0f62CXilrW8gBqv6pcnRoTvnO7k7Xmd8p
         dsA/25P+eez9lvJq6Q0whOWzhbxDTnS34T4LoOrgm9UYdnW7X24rGJRZ5oTX2CqkgKQe
         4yFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jiexZHiTC0mZsdDbWPRZpMqCUtZ+aEmV581Dr6Z1eDo=;
        b=DbXqbwNeMLG5nsZ1e5nvL70bEzV/R2jtq602EB5D+7KFRgvPkHn2Oz1AIrvWgZdi5l
         zX9/aBZxDvEirQMgrT1bkMSOve0ZUpGqasIJqYytIMtzdTEQHXXG+/sWmp2qzLAfp1DX
         8QAtyjUPPOMvdWfFpc76mtKXoc8B9G7VhqiqdnF00dPJeBL4lM2hD4FCD/9P21PFsb7V
         96tnwv5mVO2g5qm0m/FIde7yWRw3IufFCcoWKHs0kFMVyOL83JXLS9fcamvvZT5Y4stm
         CGCGuOcpZqJYHS7rQW1fN2aQfDDasX6fIK5HPmJMzTvIWA1JDrnMe/GRE1G10WNJ6RBm
         OEFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wM+TqGrC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r185si678486ywe.2.2019.11.16.07.54.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:54:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 01FF021845;
	Sat, 16 Nov 2019 15:54:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 34/77] mISDN: Fix type of switch control variable in ctrl_teimanager
Date: Sat, 16 Nov 2019 10:52:56 -0500
Message-Id: <20191116155339.11909-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wM+TqGrC;       spf=pass
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

[ Upstream commit aeb5e02aca91522733eb1db595ac607d30c87767 ]

Clang warns (trimmed for brevity):

drivers/isdn/mISDN/tei.c:1193:7: warning: overflow converting case value
to switch condition type (2147764552 to 18446744071562348872) [-Wswitch]
        case IMHOLD_L1:
             ^
drivers/isdn/mISDN/tei.c:1187:7: warning: overflow converting case value
to switch condition type (2147764550 to 18446744071562348870) [-Wswitch]
        case IMCLEAR_L2:
             ^
2 warnings generated.

The root cause is that the _IOC macro can generate really large numbers,
which don't find into type int. My research into how GCC and Clang are
handling this at a low level didn't prove fruitful and surveying the
kernel tree shows that aside from here and a few places in the scsi
subsystem, everything that uses _IOC is at least of type 'unsigned int'.
Make that change here because as nothing in this function cares about
the signedness of the variable and it removes ambiguity, which is never
good when dealing with compilers.

While we're here, remove the unnecessary local variable ret (just return
-EINVAL and 0 directly).

Link: https://github.com/ClangBuiltLinux/linux/issues/67
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/isdn/mISDN/tei.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/isdn/mISDN/tei.c b/drivers/isdn/mISDN/tei.c
index 592f597d89518..8261afbbafb05 100644
--- a/drivers/isdn/mISDN/tei.c
+++ b/drivers/isdn/mISDN/tei.c
@@ -1180,8 +1180,7 @@ static int
 ctrl_teimanager(struct manager *mgr, void *arg)
 {
 	/* currently we only have one option */
-	int	*val = (int *)arg;
-	int	ret = 0;
+	unsigned int *val = (unsigned int *)arg;
 
 	switch (val[0]) {
 	case IMCLEAR_L2:
@@ -1197,9 +1196,9 @@ ctrl_teimanager(struct manager *mgr, void *arg)
 			test_and_clear_bit(OPTION_L1_HOLD, &mgr->options);
 		break;
 	default:
-		ret = -EINVAL;
+		return -EINVAL;
 	}
-	return ret;
+	return 0;
 }
 
 /* This function does create a L2 for fixed TEI in NT Mode */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-34-sashal%40kernel.org.
