Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBQUSW36QKGQEVXBTBWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 200262B0D90
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 20:13:07 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id 8sf2149250wmg.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 11:13:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605208386; cv=pass;
        d=google.com; s=arc-20160816;
        b=EqlDm/swDlTjqOkx15vIwLqqgnJuKHB83NcpUqFUEP5/PXr/hT45ng/0cMp9h1XXoE
         84DbHG2s299bDSxSAZF5JO1JpuFu0PGGALJR71LXcnzvV77qTbsSXYrN+ZnT486svqn8
         l3saaghMJMLAoFvC+TiedpA0CSIrYwCxmsSTysEYaxLWOLhEMmd10Y9sonb2nhcwW19S
         ff/mxDJkrwT/DdYZoR5Vnv/VPY04364Fnxv+A8OdDgOC9c/sc5WgthzTnC6aLPyHSQEw
         DWV7x05XrSj1PN9jGafG+4VH6emzXET0QkpoNfaOAbAwaghDC5DemA8XzhmDMFLHkTtg
         fa9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ZQpRipnBo0NVNN3sYunRTiKs84LzTydSg+oEKPuVCoQ=;
        b=Ijqj9AfbwdqEbcuOTpCGlWcq/KQM4CcsUB9M1LhurnBaeg+F69YmXSNaBUlvCXl5tu
         DYi11TTQghCkwYZG0OnYanoLMb0rrzIuGDWWTX628RmtGT5Lf7TcJ3NR0SVSfVtKjAvy
         35KNijy2PDQKktlEu2tr6eRxSmYHHRlxrSGilYiBxqQDbGtFEwSCZbq6DBl20f6CL7bL
         7Fxi4+FvtM0MeaCugE0htZ+tVDxqvQMF7bMJeojJqioxly3Tsft75IkM9P8MMqEAlgly
         OX9wKG8hw/6Lq8VRboIGkufDlTrC782X+C0VwLB3qh4bQIUk45lV3Zy9KH09VIcLnD7y
         sBTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jVBu+ceL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQpRipnBo0NVNN3sYunRTiKs84LzTydSg+oEKPuVCoQ=;
        b=MeMV8l4QX0yOtofYPchTPZXpGo/AGlhqjrC+JwU1N0D8g9EZuBdVZ6BPhZvDo2FgFN
         30tsqmF+l8jfR6Xzq3g4sEiK2A+r8XzDrIIQBIql3NC5kjcoRHFVr21rhSsHTHcIMRr+
         M6I6nHp8I7FT499CY5gnTFNeV+XKwBYsqAPhflvJZatVHRTK04dvShghtJJB35fAnVJ/
         81GpcPx7OqIaPenL1/M+u9pxtj2gTAlWgtsq4HOEDMYO+gVlZf7+Q4bvNjHuZxOq2Z7x
         79P4tua+CDhw/pAepgRe5KLyEBTWq3dbL4FxGFiv4brY8W4IJAXlLEDgWW9fG/gBeIZj
         YM3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZQpRipnBo0NVNN3sYunRTiKs84LzTydSg+oEKPuVCoQ=;
        b=oalS2iPueda0Xk3AmkYxrZ2IeIiOhE4wWHISWSzsNhG2NOYj/5aP549B1VZOccwp+Z
         Tx0R5SKFLr0UKPm8IW6/CwBDM1b9S8pzTQb+Q8InYuui1bBSwDq3SKjuFI/IgzKNIu4+
         C7RoRysgblW3tRrdB7uwYOC/92ZB58X1waiZO+Go086GEhSqPzQ/bwd6bKKMJ4IBXAPd
         8AA/0z2/+yfyaBPSOHP7kYmqIPHsviV0D1qcWZY3c3YbCKFOlUqCYlUXVSRj2gG9fWYE
         wqR154DVoPhhn5K0LEoO+e7iQhr7By5eFlriDiONMAJBKwYHed2kkHapbs3Gn1Y47bYK
         0rPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZQpRipnBo0NVNN3sYunRTiKs84LzTydSg+oEKPuVCoQ=;
        b=koo4ZozVN1qLn4cg/1nP9oxDcfCWhq5fdDlJfevysS8GhuGVCr8N6kYKF2MVkv3mFU
         xIvQZFo6vF5oVHNQCFvoEfWJ5JUFUIJrkvCUJm76uODrnjFV175NHhc3ur+i2gSo1MGD
         HLOYdT5TXjSbXKQqff8lVcAN2L9Ln+aoTCW+LOSvJgkJPmDrHwRWz6e4BwdQSFfsF3DG
         bNwbEpUmBlLEOBA5M1aGW0+Rm21BXvI1lZoCtr5nYnpp9Es4eJiboz6y8ZABVWyP5q4d
         cM+chQV1Ah5FokF/eomb/rCzXv3nFbDL0hIKhgkA2qvVCaa+RP/FHeVPPtlICYUV1SFY
         GzGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330PtC1nBYFi8Z3dWtygyT1GIRZcODrlTd4wtBbESPAlLvZcSLB
	ZY2E85gEagUplY61MJ23f84=
X-Google-Smtp-Source: ABdhPJxXmpCqfhKqAQu2iyiybcz298No+2KA7HDDbt43lXA9OuaH3ji3gkMiAtT14mZXCm7kVl/kew==
X-Received: by 2002:a1c:ac03:: with SMTP id v3mr1158391wme.9.1605208386774;
        Thu, 12 Nov 2020 11:13:06 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e5c2:: with SMTP id a2ls2204932wrn.3.gmail; Thu, 12 Nov
 2020 11:13:05 -0800 (PST)
X-Received: by 2002:adf:f2c7:: with SMTP id d7mr1232186wrp.142.1605208385788;
        Thu, 12 Nov 2020 11:13:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605208385; cv=none;
        d=google.com; s=arc-20160816;
        b=d0vTUZNJl1Lel8h2FmqbQJtRpyijIQpHZfZW1pqgLdlmfVwJCj/ga2eLLXap0UQShb
         HGa6SHYWGWWtI1KI6r1HtHtFwqbqDLlQzCKGzykLOsvWzj1nG+RNX/DYCGYa7jj6gQUG
         cOOvRc39FMxy8ZEeTHXBnZz0JhkHwSGq1Xkslsu76+1+81v1BOUwnkSSGLaD6lQMRLrU
         +WDjxpmBWsFWDrNEhjh6R6qjUxhlV+Yh3R6Rg23m1A3klrBLhnNwpPIN0cImET7q9d6v
         YA4kP1sfvydafNTNXhFB4NnZYHiLpAVjqEib7ZrZKZRGqzWNA33KsOlQ0OfeR1RWnCSB
         6tug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pdSRw9mlDHitGPfQBRUv6P8lG2F84sSOXhcflYqXKJo=;
        b=oCRkPvn+RnWN6E+j3nFrLyVwlyNrMClp4lcb1CnsnVZxzAofwnyHTGbA5LETiqJKnT
         VxzG4+61qyG+FAjaUE3RHEuuRyJ9Y79cEFpVXYhz6ieRILgYs2idRHllrTejzpS92P0F
         nuynpP1o/EgkoKkAHR0sBrI9wdk9w8VQNOrSIW8Djhgm/b/wSsom4t0xt/D4DQ43mI/q
         5pnLdJGL21osYfI+2R1+5MPo3vQM3vhIMv+z4L3S4AkHEY8fGyUVeJtnD1yhvU+uR1i7
         odICGo2aDr03rCfGWRZ5uL5at5R46VT8zDuOhQkADFei9yueKZc00WcDxc8KZncsL7aW
         8Ztg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jVBu+ceL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y14si260453wrq.0.2020.11.12.11.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 11:13:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id w24so6504012wmi.0
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 11:13:05 -0800 (PST)
X-Received: by 2002:a1c:b0c4:: with SMTP id z187mr1066051wme.113.1605208385297;
        Thu, 12 Nov 2020 11:13:05 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d19:d300:649c:b988:4446:6d44])
        by smtp.gmail.com with ESMTPSA id 30sm427118wrd.88.2020.11.12.11.13.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 11:13:04 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] USB: storage: avoid use of uninitialized values in error path
Date: Thu, 12 Nov 2020 20:12:55 +0100
Message-Id: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jVBu+ceL;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it
returns without writing to its parameter *act_len.

Further, the two callers of usb_stor_bulk_transfer_sglist():

    usb_stor_bulk_srb() and
    usb_stor_bulk_transfer_sg(),

use the passed variable partial without checking the return value. Hence,
the uninitialized value of partial is then used in the further execution
of those two functions.

Clang-analyzer detects this potential control and data flow and warns:

  drivers/usb/storage/transport.c:469:40:
    warning: The right operand of '-' is a garbage value
    [clang-analyzer-core.UndefinedBinaryOperatorResult]
          scsi_set_resid(srb, scsi_bufflen(srb) - partial);
                                                ^

  drivers/usb/storage/transport.c:495:15:
    warning: Assigned value is garbage or undefined
    [clang-analyzer-core.uninitialized.Assign]
                  length_left -= partial;
                              ^

When a transfer error occurs, the *act_len value is probably ignored by the
higher layers. But it won't hurt to set it to a valid number, just in case.

For the two early-return paths in usb_stor_bulk_transfer_sglist(), the
amount of data transferred is 0.  So if act_len is not NULL, set *act_len
to 0 in those paths. That makes clang-analyzer happy.

Proposal was discussed in this mail thread:

Link: https://lore.kernel.org/linux-usb/alpine.DEB.2.21.2011112146110.13119@felia/

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201112

I did some basic compile testing...

Alan, Greg, please pick this minor non-urgent clean-up patch.

 drivers/usb/storage/transport.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 238a8088e17f..5eb895b19c55 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -416,7 +416,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 
 	/* don't submit s-g requests during abort processing */
 	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
-		return USB_STOR_XFER_ERROR;
+		goto usb_stor_xfer_error;
 
 	/* initialize the scatter-gather request block */
 	usb_stor_dbg(us, "xfer %u bytes, %d entries\n", length, num_sg);
@@ -424,7 +424,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 			sg, num_sg, length, GFP_NOIO);
 	if (result) {
 		usb_stor_dbg(us, "usb_sg_init returned %d\n", result);
-		return USB_STOR_XFER_ERROR;
+		goto usb_stor_xfer_error;
 	}
 
 	/*
@@ -452,6 +452,11 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 		*act_len = us->current_sg.bytes;
 	return interpret_urb_result(us, pipe, length, result,
 			us->current_sg.bytes);
+
+usb_stor_xfer_error:
+	if (act_len)
+		*act_len = 0;
+	return USB_STOR_XFER_ERROR;
 }
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112191255.13372-1-lukas.bulwahn%40gmail.com.
