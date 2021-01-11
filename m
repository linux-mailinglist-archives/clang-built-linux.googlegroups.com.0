Return-Path: <clang-built-linux+bncBC27X66SWQMBBCUZ6P7QKGQELWW7CVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C16E2F226C
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 23:09:15 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id p185sf199479qkc.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 14:09:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610402954; cv=pass;
        d=google.com; s=arc-20160816;
        b=GhpHyh6P6kM+kvNuy/bTqC6NkPnJUUOH9U833/IrmrEpbmCDIMLh6QSiyMTXYF0ffg
         Bn5w+cYJik7PNWuDggVbA/Ea7E76czeUF1K6i1Exh4sM35L81NLTZeI086fV3uNPSJUP
         0ow5NMj5E8O71WmYWwKsn2X4h65/cNtMm/JHfMAiPuopdxEL0ZElqvML/rUrDNs+Upm0
         xCGrI7h8RE2LE+842hos7BDydy7+OMugg0m9Ox2a2ruVKHnyw1yRKheSe3wAp/6sEJwU
         Y5BitIvbAKIVNhoE3KOvLVJAMmDH2SAK4SS3k9iKbg77do1uVC+AxwRKABuMngF+DVcA
         rd3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=I4RLOw7BFvw/Ri9LAdSNTE4waZuDAd1q69bmwTfTdmc=;
        b=Ekd8U7SQpvSuztPTKp3SkeqETJhh/uzY1cAf2yQUSbllhAoq+mlstkm3CgdDYAfe+h
         YuXHjyzOC906Xb2IxN9FgoP/8CJ/5tyO81+KtzQRleUyeMOZyyIpmACKM4umIwIzPnG4
         y14ld11ah4sltWY5fNz1I7jl8ak/WO03mDJB1rEKtnuchdKtMsRCGoazvA4Gfy/nXeIb
         3gwjmbrTnBVoCbC+UcTDbyueI3lHP/49iE+eM6+6yv6CLNgFq+kD2DyzWKkmgAkxKiqA
         JYqw/p5IavW9eX48QD9ZQUdfoiAsJZ1t4b4xXop1j3J8LCmnvT+IJddph1FiGO/AYzGH
         gV6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AJ+mOjPj;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I4RLOw7BFvw/Ri9LAdSNTE4waZuDAd1q69bmwTfTdmc=;
        b=jiZz7MB8da1M8yTMozBpFw8IGdkZmcyTsc676h1w57SLRmkDEAw0CMwRmOnC891tED
         CVeI9y4WSsLI/5eGqlGemMIO46a8avejw2djmds2AGyO+ACFr4bC+cOqgpPgWV47jOuG
         ZO6T5eMXzhi78H9fSN7rxHVMc/tdzyjoAgyHBZQ8PdmiT4I4M8B93JVXZYliCSqktWdV
         kHRJHOB/3TZjoxDs2lkQP4vMA1ghwb87cuaRE0algJvNuHVz6IDtA5MdXuLFbTNYygw5
         GbluuOA25Riwc9FWFyKXBvtw3Cl+xZEhSpBRtrFTeMXBxK/mww6pfqkK5FmNW6iKcncw
         bRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I4RLOw7BFvw/Ri9LAdSNTE4waZuDAd1q69bmwTfTdmc=;
        b=rDXLSUui5SkfvtOBMubTQGSBGJOQsa+R6I/sKhvyp4lb0szANbLO9BuzyLuwklkp36
         WL97hZqM43DWmFFn9usIvwT12sCuqJ2V9mzw8Jpqd+8b4ZcIspEYM/7Ah0iFwD2+iPIM
         PQK3/PnOqYBnxYoet8F78RlfybpTlTiO65j1rMjHPSQOYy9x0wEHlA9yFQ86+NZ9oWpb
         E1Q5rC93OLs5TKcmhO35shPPQprzixcZNEHIBcHaZkRUyQ/sJmTAANUyulorCVo50H1l
         iIVMJQEwZtyngX5ErPudQSSj6oA20gMUzZ4w+NHUJzk1pmcT8hZ5MqEAyPOnkEQkFUCL
         5Nqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lSGyA1a96Ahlwo7r2fZJB3Ets+5OF9G6Ln+0kKluw2Z5fwtFv
	aHwvCI7UbEiSoJGOOSOQ5eM=
X-Google-Smtp-Source: ABdhPJzSV//bnpvJlBJa+LR29kMztbXFFVfOw5lQLV41xF8lBDldEUYSlf6Tef2ULmG+Nx45VP9s6g==
X-Received: by 2002:ac8:6f69:: with SMTP id u9mr1751654qtv.16.1610402954221;
        Mon, 11 Jan 2021 14:09:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5603:: with SMTP id k3ls621252qkb.2.gmail; Mon, 11 Jan
 2021 14:09:13 -0800 (PST)
X-Received: by 2002:a37:2dc5:: with SMTP id t188mr1544692qkh.5.1610402953862;
        Mon, 11 Jan 2021 14:09:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610402953; cv=none;
        d=google.com; s=arc-20160816;
        b=HPr591YJIRgleOhuKkq5OkudUutGuQeWcGNW3JIcOgB94+P2K42wtyRBFpwNzfUejU
         kUaETWLiFX0pt0UmVSBPg1DsIvgIPIcTqcosrAkDGZVPfg0VxeASG2fQKMGRzUQnThDK
         F5/+4ZxZyJ8mOfFOZeGUdvfSLa+g96wbNaWqtfj2xFj22ukq2u8cRKmy5ibmnT/Jer5V
         qI+xaqcGogDvVG+FNa9AnkZ/3TOpSdKxLboEsKTfIuD8l/YoDCQaXIOq82YQnI/iJWy3
         oUwosgc2P+DXhoLHqKaiUbg6EGdDmAmVXnNU7eiCRwhVKqIbpVmqrtghxOoOqOqeHb+B
         AvqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wAtnYWwrlK7tpbrs/+tnNUH4YreR07+THJRUh9/6qM8=;
        b=qv9e8sM07X9QjxgGl7W3k5qLN4y3sC7o1rak3VLA9RipLTC730Tu5hN4+OFPV3RTnK
         v841p/X6d+nOmCa0NIjGwOiQi1PvPr6QsPjbYuEAf+QZF92yKmwGwHi81cZiQCjsqgu0
         lAa/nEUMWxAYSTZowdQrDuyJNWmezpso6vB8AaIVKw1nTFzz7+wG3kfHjruUEnqh5f85
         qReEsifkeYvyTDWGE8b5o3xzPmiV7u8G+N09JFOqt+HaJJN8EqrGBiodzTVDQA8E7H7+
         QCQrz8Aog7QT/Yy/jB0M/3zNjx/zZJ6xvWBNfQTFGLF2uE4z/HYwEZeKqNRnZ5SzIwmp
         hesw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AJ+mOjPj;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id t2si111142qkg.0.2021.01.11.14.09.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 14:09:13 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-qO6YEJ20N7aUAl_coHI8_w-1; Mon, 11 Jan 2021 17:09:12 -0500
X-MC-Unique: qO6YEJ20N7aUAl_coHI8_w-1
Received: by mail-io1-f72.google.com with SMTP id a1so222853ios.2
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 14:09:11 -0800 (PST)
X-Received: by 2002:a02:bb99:: with SMTP id g25mr1555071jan.11.1610402951223;
        Mon, 11 Jan 2021 14:09:11 -0800 (PST)
X-Received: by 2002:a02:bb99:: with SMTP id g25mr1555056jan.11.1610402951001;
        Mon, 11 Jan 2021 14:09:11 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id m15sm692170ilh.6.2021.01.11.14.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 14:09:10 -0800 (PST)
From: trix@redhat.com
To: johan@kernel.org,
	gregkh@linuxfoundation.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] USB: serial: mos7720: improve handling of a kmalloc failure in read_mos_reg()
Date: Mon, 11 Jan 2021 14:09:04 -0800
Message-Id: <20210111220904.1035957-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AJ+mOjPj;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this problem

mos7720.c:352:2: warning: Undefined or garbage value returned to caller
        return d;
        ^~~~~~~~

In the parport_mos7715_read_data()'s call to read_mos_reg(), 'd' is
only set after the alloc block.

	buf = kmalloc(1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

Although the problem is reported in parport_most7715_read_data(),
none of the callee's of read_mos_reg() check the return status.

So move the clearing of data to before the malloc.

Fixes: 0d130367abf5 ("USB: serial: mos7720: fix control-message error handling")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/usb/serial/mos7720.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/serial/mos7720.c b/drivers/usb/serial/mos7720.c
index 41ee2984a0df..23e8162c768b 100644
--- a/drivers/usb/serial/mos7720.c
+++ b/drivers/usb/serial/mos7720.c
@@ -214,6 +214,7 @@ static int read_mos_reg(struct usb_serial *serial, unsigned int serial_portnum,
 	u8 *buf;
 	int status;
 
+	*data = 0;
 	buf = kmalloc(1, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
@@ -227,7 +228,6 @@ static int read_mos_reg(struct usb_serial *serial, unsigned int serial_portnum,
 			"mos7720: usb_control_msg() failed: %d\n", status);
 		if (status >= 0)
 			status = -EIO;
-		*data = 0;
 	}
 
 	kfree(buf);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111220904.1035957-1-trix%40redhat.com.
