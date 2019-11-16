Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIFWYDXAKGQEKO2W5JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F1EFEE7E
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:52:02 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id b17sf6008618pfb.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:52:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919520; cv=pass;
        d=google.com; s=arc-20160816;
        b=WnxxxaQYn7MwtDgbDe3P5GWIuF1qNwTx1CX2GoMiusKeL8gc2P9c32bOISTuoerp5B
         VtLGjXS58DtTrb7c/v+rLGkusxuwe3gLlJTWIQ2QlM22UKa2J7bM2gNWitNl1XAiJ1lL
         wHGFD3yzEGJEb0vBxKyuueIEYIgjFqInDCUgU6YyGuURgXkXS0/qmFJ0hQxxQQrDgNO/
         0zY6Q4H3dr+di5Seohys/CB5XuLE8ChDNB4uv2cNiNWRLizMYZwyKrZHLDkIGDMZuyDa
         deCkkq9b2MivBiD5uj1IUilGFY683KD7BZL4tD7R4FWEDCk1mOYXKMmpqbnX6gZjO9bT
         /XNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qV7i8UfLAcXGxdtZ6v40UUbl0EVysgwHJnrG7W8BfWg=;
        b=kUbrUybUfGeIosUKQopI7z+fkzOolhg6/EjM14jTlL3oGvnDA4TA/sbYmI/3c9AOIb
         D0e6nHxbmqkFJtbAYhM4BzBDF+bthLX0pYOZqQpHwcRtp3xywiUG5nrlXphSOOGytsWW
         QVpghQRc7X3xjICl6Et2Q4J/Xa8/fz5+B4tZHmkpkLRpPSLvf5M2e3mPYfBxy2D3Ysm0
         UrX0sa+7nIZjnh4Nv1+zNxZB/d3m665lkTeb8Qd94/5hS09dVHFQvH01n5FdZSKoV885
         5w6XIuAw0MkvVn/OT3fxnsUijBz0YuNSKHQ4iYAV9jiCjVYJ9SbzKJX0yMJBlYW8oRKA
         FHfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zsw5+hD2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qV7i8UfLAcXGxdtZ6v40UUbl0EVysgwHJnrG7W8BfWg=;
        b=nCKikRKEEH6eAXVy4XJ0T71tLAQfX3Xbn9EjijwVxOQaMdATE43JyHtfx372X2QlGu
         COySSh4JOYe9lF4rUerv/owCuwDZDC4Qw2s8eWwUniaxfA7SOEhlVVMudy+WLCfPFtBq
         c3jrM/BStp3ScyieCMqWxs+Q2+qHEq1VPSk6x67gJnr8h4UzgL8787N5LG4so8vSl6rD
         zVNxNpVH/aDUyPRhaVyI9i/RxNYuHCUfV6pxjjzeWV1VqbiXCVQULy3sRh2xLmtfix63
         Iczt1yFN0sfayqUlnJcYNIvz2qcRsf5x/g0s7xuZby4PcKBYOZa/BnGf9qVx7m9dKaWj
         8BfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qV7i8UfLAcXGxdtZ6v40UUbl0EVysgwHJnrG7W8BfWg=;
        b=cfDx+4sQz+dSgzq5csmPYyVbR2e59SP5q+uPWNKHD/KCkvUCYKQt2IfFe7Dt78szWA
         UT9ZlvICtk9v+/pUT6LctUZfZHjnH6M0oPKnC8DgGEdAho2P1NVly7pqcJsJDtEkmibO
         4YgZ3CZNm6ClhoO8LWl99k8Qb7+KuWRSkbe+cTo2O1dBgsy/alQ/GF73l+5/a8Sr2qgG
         bWcHmnroE+Vf9wq2zWdjNaSCbnOsmMX/23ZQYOebDrW3UewwICmd/fFmewalKnsVaz/E
         rNvWqO1Wr+3fAd8xbFOhGotqyPyu92DPGmWpOnZo/fYYrKPEJb3KZEEUPdkNtW++1bSx
         VEwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWOsFT0H87BWFC86Iq3AT0Mj3GXRWs6xSprQgtFJSPJC3cOPP0q
	M42DxsEGPnV0jXOJMvhc5rE=
X-Google-Smtp-Source: APXvYqw0uVhV3h3EDEzksxmCK9PcDgncHEoklopCB5VFdRWyx3S6Jm/iorW755NHdHC2TwMLDXBmiA==
X-Received: by 2002:a62:447:: with SMTP id 68mr24122216pfe.70.1573919520696;
        Sat, 16 Nov 2019 07:52:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b8a:: with SMTP id y10ls2826726plp.12.gmail; Sat,
 16 Nov 2019 07:52:00 -0800 (PST)
X-Received: by 2002:a17:90a:850c:: with SMTP id l12mr28177839pjn.16.1573919520341;
        Sat, 16 Nov 2019 07:52:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919520; cv=none;
        d=google.com; s=arc-20160816;
        b=QbDuZmQwd2RsyCd9aLRJF7qntTJl3Y4Hf74qGrXylWnjb1Au+IsBrar7M/lQZHfyW7
         BJ8sNKS4bP0z8QsTDsMpoDXctTUwzmU1oqtc+ewqhjBaI+JktvUBSlZAODStgKg8FbBt
         8yTfcdhodPyWR63/e0wK2LiyKDkQZQqlzoZPK5jU7hcMPufCnfQQdt0NQZkU1G5SdgX/
         o+ADgp9VaZTHEkuFZUxIgcH6UciaC5WPWcmE0oICDB0p3zhtOpbCnlIvqnk1fJ9AIwQ5
         9q22ylmUxTzjIbDLDFEa+jYFQeKm6JbFJdWbLC6KhWmCHoi/T6rljJq4u6cEw/ucoLtX
         NObA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jiexZHiTC0mZsdDbWPRZpMqCUtZ+aEmV581Dr6Z1eDo=;
        b=xK3UVlYQNlnPFTQ4l3LuLjqBW8pADk1w4Su0kkzUNUy7V4MKGoLlMGy4OTr5Vgjfqq
         IgA0M5cz/kdHf8utYows4hW8J7lvQTbQuaxKO1OSg/l1BetuaWRxM7qM4QCmfPPJQxHD
         3CGs78Yiv9RRYPXxQR9IhqP4adj+KiRbEY36s4g8ovLoqoPinXb1+2xcIndjGDxLsNeS
         SJ1xtZ0/7OhpldzBVjn+ezritb2h7HnHx5pVxNezyp+mUvXTma4lQCmK3DbRv611ue3X
         lA0lflv1w1gTxErpHKR9BucJDtyUJ26Dk/JbfjVpxHDkK0LGYMn2F1gSlRiaUUjk54R3
         DoKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zsw5+hD2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id az8si763978pjb.3.2019.11.16.07.52.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:52:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B844A2168B;
	Sat, 16 Nov 2019 15:51:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 42/99] mISDN: Fix type of switch control variable in ctrl_teimanager
Date: Sat, 16 Nov 2019 10:50:05 -0500
Message-Id: <20191116155103.10971-42-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zsw5+hD2;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-42-sashal%40kernel.org.
