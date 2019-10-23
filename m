Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH52X3WQKGQEO7WQTXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1D2E0F1F
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:21:53 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id p66sf14784786yba.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:21:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571790112; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPml+yLC7o98qFGGL7jOy33POfTRA8YKzshDmtw0YhYoIQeMSZJHtyyNkJc9ec8LLB
         WGjMiyQPfgSkdkbAB29HKa4L1LMxaks9DjSuLAFv4fk7QxnIcfKsVC7+MEuoz7rvOYYN
         FtPSycgFbb8iLG+MjCUTyRtFNYkjjffYGgrno2LhnnxHgj20IbbCJ/ACKBrxhh7bJKUy
         zS3CWoPkCRIDOZxOl4RqTW5P1FIsE2wbhCCnC2Lg/sKi1A1dkj3S0QYLZ5I1rA+KjhKo
         QPKpLsedjdBRKFHf+rpC3g4FT+wVP9OL++gii48wlueLcyd3XZ7HUjCI+fimJ/m/49P5
         I6Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=9Q6y5KT5S6r2WWLblcSdUtZ/8zEAotD+e9oemELvlj4=;
        b=HFkcwX8VXruBWYGQG+gMy/zLhIQ6o5+K5Xj9TF9hLgA04bwYBhN5q1BJYqWDvKf++9
         BQXPqrCC+yxojxambO4wvCXOCftAb8HIQNDvUmVJnehOC38o0kFV2i/E4S7Dwe/KUBRT
         GenvUr1zyUKsApH9tXDJxDWGEyu7iFrTX6WxPlOWx6E8xTkdLJ660iNiiDogu8STXQ49
         xaO3OuS0hquo6V0kha79t22SuaPWKSM8iuT8T0WcTx+fAGHWe5NfxSmxVgCqdCfrN+sn
         LYknVCHklJSYMEipr2C+tkR4dD0gIq1IXfzwXQ+CVVHPJeMbHmPQzIGm4j0p3H/oa0sR
         ImGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ME8AeDt8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Q6y5KT5S6r2WWLblcSdUtZ/8zEAotD+e9oemELvlj4=;
        b=oBj1DPaASYWSa0krQjIVHtF8gNkdn+w8N8fYPTTz+jJhI67cpkq5OimxWgZThjpSNf
         CN7cxd9tZg70ciW4pC2TlCYs/OJ+zmYoiRwwxZT8ACmnNeREuR0t8grPRl+t7IAMjSFa
         wZKnnjGu6fD3L7EyJBTiLv5hqp3F2hBI4TdxUdHrtB+e6cEW451teyrhC7chDt4b4X2D
         PMBGiEVDWLBCF5eGIT3bSSUh6lK3VZjnpvwMPo4N/sEcDzjFihjjvPxPkVUAX07rOsdK
         5w4m8Vo0oNetOijdwC1FTHH9hlpuzh5pTROe6K0kkbWSkEiYb0+B2Bq23tsN0O+XZD+f
         FVbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Q6y5KT5S6r2WWLblcSdUtZ/8zEAotD+e9oemELvlj4=;
        b=np6pWMI58Rglz1u91GAFjFwMNCw0OmAHAQFKJJY16Zf/Lv9uxBu1ykTRrPEnja/aKE
         fglMgW0AMDi9JC+qrquyz239FIi6ari0Z6wxAe0xAFErjtcKD/se2v5ceqJfTL5Re4uZ
         /PcimGUzOsur5Iu7mUurJQMqsfISMqhNyBSRq2zRcPf2se8dxyaec3QzuVZE7kJQUVz5
         5jARj37ymsRjtq8yDSWRA7ONjnRLfdmglIeUFdMwALVBgxBH0e09pKlvrP5TV5aa9FE0
         b3hz3HsfKM4xbRcNm+UP59bvEwtdmBP5TOVzd8PqiCgiTk02S7DIcwj5G8ohxN+1HGMu
         cdug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Q6y5KT5S6r2WWLblcSdUtZ/8zEAotD+e9oemELvlj4=;
        b=paTtHwycYnu15OxZb1QIyQJCcIOAu/MA/QvKF4mv7XK6ZwsHsDbaLIQ7EfjIN4eXmE
         x8t1oIAzzbxf+ygx4UffaIxFb1kO1Fn2Asl4zfNCuxs62OO2aZ1Y52MAI7fJIw+VucQv
         rdkpqnjm2UdhN3YIe225AoQGYRD3IllxJLe2/fv3OE/9uD9PxwJ2+sKWhSVdARBSF5ol
         lHRRwqz4STeXQIC4VKSSNQzxBMA9MxK4PkDAlfZ5glLSImC/4yJzE+9WMXK8CjoMDiSS
         Z92OWiRANAO7Nl4ayt0UKjp8Pwefhp0lah9XDi/81xNvLWTjS0BpIbp+XQaLo+0IgVkU
         YZfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW2EyNZ3ike+tbTq5qw/M7CIAJt64PVFE5Y3GeFsr4n4e4T27TT
	4wsZRe8E7gsqMVoz20fRngI=
X-Google-Smtp-Source: APXvYqyv5QiQmWIOBAzOX7hENoWKtRqzNkjbTAFVB9gdySnErWoXejDbcM64ocMzM99pWPUS84xwTQ==
X-Received: by 2002:a25:9b82:: with SMTP id v2mr4164307ybo.366.1571790112024;
        Tue, 22 Oct 2019 17:21:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5283:: with SMTP id g125ls84764ywb.14.gmail; Tue, 22 Oct
 2019 17:21:51 -0700 (PDT)
X-Received: by 2002:a0d:c041:: with SMTP id b62mr946420ywd.378.1571790111591;
        Tue, 22 Oct 2019 17:21:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571790111; cv=none;
        d=google.com; s=arc-20160816;
        b=TY3Fj252vAfwWE2fvtcGSSaMeGWtM5tLYr9I6z8u0DO+HUBMp9fJ82HN+B0oWgHguT
         ZzmN+gHLLTUK+Y6CTBYx15gtNoev7uSpW21+JNTvooKymnb67ZnVzI8zcUcAiGcZGo2h
         6odGFRi7ZRx/V1/7C0hGpf3eSKL0iYt+w5wTB2O+UVNzfXCmxjGNsqJ2CrfFBpt423Mw
         V+8HEDF9Suu1UhMA+K3U1xOHrV4acm9ktMJf1Tbgfg02bwspCuYToYjjax/Uo9b1Glf8
         thTI3SKuPy8HVtxfDfUpR0K0btTVCpbkXcs5J3jAZT4NMzGHZdM+Uf/NCuDoVn+Uw6tA
         7KlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qkST9yhwhwu10AHBsdYDPDVaDucJkRuGL9XsMxO/Jus=;
        b=wr7gBfFx7a0lLUzj2jE+05NkSbTsMkq9h8iuYwrUuzfjBCzjB12bk3a2iKnSO/j1/i
         e8vvt+ycJ/IgBRQ0m9GfwzH0RbVmR0/P0zr16cX50O3U+8jMgZjCmwMfwva0xt+HzRhq
         1w9fPrxQDCAVahzcc4bg8in5UIMhLk2EsGPUA0qPC0C1HvWry3I8FEYLmm97OwOf0dhI
         awij9ZgeMTofwSRNjaKUx7yZPg285vtniUB472QNHckAMvQKQzfG1FXr6R4h82RMaDHo
         I/32Re7jWyq1cBxChLJf3XrWWmcUIj1Oqauh5oxBx1I/uzNKnq3vCWWYPjy3sZEahYY6
         X5Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ME8AeDt8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id r16si1276770ybk.1.2019.10.22.17.21.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:21:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id x3so15862966oig.2
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:21:51 -0700 (PDT)
X-Received: by 2002:aca:3b84:: with SMTP id i126mr3720122oia.28.1571790110917;
        Tue, 22 Oct 2019 17:21:50 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n4sm901229oic.2.2019.10.22.17.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 17:21:50 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felipe Balbi <balbi@kernel.org>,
	Ashwini Pahuja <ashwini.linux@gmail.com>,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] usb: gadget: udc: bdc: Remove unnecessary NULL checks in bdc_req_complete
Date: Tue, 22 Oct 2019 17:20:15 -0700
Message-Id: <20191023002014.22571-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ME8AeDt8;       spf=pass
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

When building with Clang + -Wtautological-pointer-compare:

drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
address of 'req->queue' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
                             ~~~~~^~~~~    ~~~~
drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
address of 'req->usb_req' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
                                                    ~~~~~^~~~~~~    ~~~~
2 warnings generated.

As it notes, these statements will always evaluate to false so remove
them.

Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
Link: https://github.com/ClangBuiltLinux/linux/issues/749
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Note: I am not sure if these checks were intended to check if the
contents of these arrays were NULL or if there should be some other
checks in lieu of these; I am not familiar with the USB subsystem to
answer this but I will happily respin the patch if this is not correct.

 drivers/usb/gadget/udc/bdc/bdc_ep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/bdc/bdc_ep.c b/drivers/usb/gadget/udc/bdc/bdc_ep.c
index a4d9b5e1e50e..d49c6dc1082d 100644
--- a/drivers/usb/gadget/udc/bdc/bdc_ep.c
+++ b/drivers/usb/gadget/udc/bdc/bdc_ep.c
@@ -540,7 +540,7 @@ static void bdc_req_complete(struct bdc_ep *ep, struct bdc_req *req,
 {
 	struct bdc *bdc = ep->bdc;
 
-	if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
+	if (req == NULL)
 		return;
 
 	dev_dbg(bdc->dev, "%s ep:%s status:%d\n", __func__, ep->name, status);
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023002014.22571-1-natechancellor%40gmail.com.
