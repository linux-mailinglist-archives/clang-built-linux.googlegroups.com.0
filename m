Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5PM77ZQKGQEOSTDVOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DEE196A7F
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 03:14:31 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id go23sf11427891pjb.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 18:14:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585444469; cv=pass;
        d=google.com; s=arc-20160816;
        b=V+b4BIJ6na3lUOswGlwy9tU4QBOThMqKplWvlqaTmfNparNguTv9cgFZfifhmt22Kk
         C2Lj/zo/JnsO2mAcmdSpKP6I7I9VyOoEql/Lmc2b/CfseZdWjt3CX7Aw2M6tvC6y9F8L
         YiqF2QbjtSorINzuISmR+ERctjoKr7lGzzhp5G07PWamC0c1l3miAU+o2CPrAVFQHjt+
         LoEbNmjJPRFAOoVY3EP8a0ivti68unPFHvUiM77wIy5PFfVSUClykGSmMU72Z/z6rgKq
         B0wFlcYapduQ4X86ROC93ZLh9Yn8rletePlb4QVOc9i/cpvFJKMXzLId8SCDz/dp9Ji0
         wvoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=LxSQdNh3FSSE5HQLPeZWTTOUQtyw+JbrlCVuhOGjbLg=;
        b=WVDy6FeXRdX6RS+85FfZCnyyXhWfNNNJ9u7DbS55hIeFEBH78oESDMjBV2IEDXizvF
         Yuv5l24tQTkoUR6tSSAFVOhUm9CBpxtro20Zr596/x2IlXjISikrBPGG9MfNPgUA96gk
         9bV5bRv8MVl9qUMSpusMpdTcrZHT6gbP1IY6Q8pLBwnMGaou+zTLN0k6OkkCHRGiq5KI
         ehW6wvKpJ2vIOHu+ad/qlZZq6IQEPGwO4TP3ux60YbKOZH13h60mYy2o9VUyj2FvrzAH
         tEiOJTzhsGfmx1YSSboYYfqDUl2lP21PxAMo8YEsKEnq3PsQTZ2DLQJz5UBYHbofYwuJ
         FfdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eclFyjgK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxSQdNh3FSSE5HQLPeZWTTOUQtyw+JbrlCVuhOGjbLg=;
        b=JHnLql6u3da+WBoNqZiz4dvtggc3oVn4a33Go0SbV/5dxMfD/s55RJEdZ6DIHyWO+n
         0rx7y7a9C40NDSKL1oKwEyrCf8O5cremx398903Te6uELzwDJECJwExSlh11Jss/2VGL
         5KLo9qxGBQtmsL4VFfA06s46EwewPaAuaMqmPO7FVEzL0Ib94fiwdAR9U7vfOnqnQVQ4
         wijkwZ6hPjQZi6hAQxOXUTWsvLyaX98g1zRRA6T5KjRk12D2sojKSCum3SbTGPrqWMqW
         3DSZ2T/aiJSPFacJXHyhM6WPLQyfXcfSyJflafB34iq5nIPYKJ66SXJpHfX4TQqbemgT
         uXqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxSQdNh3FSSE5HQLPeZWTTOUQtyw+JbrlCVuhOGjbLg=;
        b=mGVNY/BIUGcco/J2Y9PVNiqiQlJZhUXxzz/G2fUotDYEyWrSvZwiBE80elycooedCs
         xGNvE+EdSqhwSBMcffAYYj7iOXv+p9Z9gVIdec86lrLQehRWl45CtkuarWL7niXcfsPQ
         Z1xrWvZ6Cb74p2OOf4cfN3O57G2RBEM/yy1UUWJCOZiV7GjRM6xdBqGAJR/cngho1zsv
         dBImZh971hekRD4+4SJ+rEOVkUKGGgq/b+Cpwe1ntZ0f99Qf3qEDbvfB7hhe4MNtPYYf
         Z1a2QhOtfKzHz4Q7/cbuZrQe+fdZlPUT61xfKgBP+N5jVg2g2dUhlmr7ion0IF47XNXS
         xdRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxSQdNh3FSSE5HQLPeZWTTOUQtyw+JbrlCVuhOGjbLg=;
        b=LRgCDJXCUIBrn5YnIsrMsJ6FQJ48no8VGp4O9LzmEEqT/VkJ2r1WTj5CY+QilLO2NH
         rQzjbsvJBjQzr2mSd9tYM1IZ/BLBbQJqYv1yaLZ0AFvN04w6zqutNbz8LW3cGYXVONgC
         QLTFX3WyoPN9DQbGDU9Cc9WwTUXqrdE9IjbcWhJAYUOFbYwxSV0+3IVnFnUzLDt5K9B2
         nqf/zIT/W8FFr1jOWrJfJrpdJ8ukI9ONFSlJ/NWiTM5XsXMssZvOuuYH2Q/P3bEVGbqo
         ERpGbfGYF/QDSArhObFkJ7QORS8OFtdkI79OvpTu9dHGrpKq+LP5wdZNPWKqudzM9TPN
         75eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2tm37GE0LLfvf9RJU1rhNUe6FjmAoJiDWZPyW8CDVhsWEdZkj1
	wn6LdedPQORUh6a/LOEP0IE=
X-Google-Smtp-Source: ADFU+vtVlJmPvx4Aan/mXKztghWC/r4HpZHqs3FfagCA/ASOgohoLR2pZC1kZuC1FSgAColDollSZw==
X-Received: by 2002:a63:844a:: with SMTP id k71mr6562167pgd.79.1585444469291;
        Sat, 28 Mar 2020 18:14:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls9626492pgn.6.gmail; Sat, 28 Mar
 2020 18:14:28 -0700 (PDT)
X-Received: by 2002:a65:5a8a:: with SMTP id c10mr6829118pgt.315.1585444468848;
        Sat, 28 Mar 2020 18:14:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585444468; cv=none;
        d=google.com; s=arc-20160816;
        b=xSHF9uF33VifBBvbMx2CHjH/UVjYUMnyn4BQzwUWIz7GfZyxrAH+ibWF7xpTYL/sbi
         8BZvAzsoQC15M+y1CE+V0c8Pj05XXIsUR9cezboDK3XbCjV7mOjchvxr1fnHwsa81suR
         a6KnB9ior5cHA4CvMVi7mqGthfwKDfYr93LoZ4h2emaTUV6Dltdm5WiBHT/s/nqHWY+4
         kWHO8BAGQdVH1qOUN/gby43YKh9DtLWVmKq3mLFF+hTTPmKiPCC+PWRri9d03NI6ayrM
         DxEJ70Dau7h2JjViMrMZQ4+Z8BILGFRfJIOYUoviziEyAYlCVS/8KaZtQOaiYsLUXcvW
         dHYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QO4jy+klBUwzUYl7hy/fcRwlFawrR1Dtlwk3BYQW9wo=;
        b=sx5+d94nAZauU1ZI0V0X6Gttl0cD/P2kz/KghavrVod489ZVyteTbL9oAm5MfZcAdZ
         5P53PFhM7bGpmdzteHV2Q4pPqqkjm6HjGRPA3nDLTynmKeC6xef6zKvh8ODkK0du4zEz
         +r0qmTTNUBwa9Rw176vVyvp9+GjGVt2Ay9dSHku9j8hbUP/nr8Dm0FlohO5DsnccC0wD
         swdY4BsmGivZbxSWAywsf6bqiCPVJTogHENoblgNAJM8JqlJOXLV3UvP9tAZfgNw8W1v
         cizBP+hbm+XBQJzIl7B6ThjNfl4IH3BDb8w4L8Nz4bN6gtcNb61nspOmHODIIm8QhIqH
         4GJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eclFyjgK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id ne6si783123pjb.1.2020.03.28.18.14.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Received: by mail-ot1-x332.google.com with SMTP id 22so14194492otf.0
        for <clang-built-linux@googlegroups.com>; Sat, 28 Mar 2020 18:14:28 -0700 (PDT)
X-Received: by 2002:a9d:75d0:: with SMTP id c16mr4454889otl.8.1585444468074;
        Sat, 28 Mar 2020 18:14:28 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l188sm3150905oib.44.2020.03.28.18.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 18:14:27 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Cc: Ashwini Pahuja <ashwini.linux@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH RESEND] usb: gadget: udc: bdc: Remove unnecessary NULL checks in bdc_req_complete
Date: Sat, 28 Mar 2020 18:12:46 -0700
Message-Id: <20200329011246.27599-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <87zhc0j2qi.fsf@kernel.org>
References: <87zhc0j2qi.fsf@kernel.org>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eclFyjgK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200329011246.27599-1-natechancellor%40gmail.com.
