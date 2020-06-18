Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBT77VL3QKGQE6EGQOKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id E544E1FDBA4
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:13:52 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id 140sf3249564qko.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:13:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442832; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNFQ4lxzNsphEYQ4J0TUhoOmeUb+Wu4/LDD2Nw6SRWUwLEOw3loTqsAVBSVgg8sCHQ
         tqjrfSujWu2jkWBB3E4VkCxjg27UrCKQ6/9Oio5e5qRm7tHbpuyxAznrJAltFI+FbNZa
         QHKYTQnqdl3swqTUIQ5Eej/6sWPV+pR2ezakH4f1HElcrYOJ9zPpB1dKS9I75f2hN+Y+
         2yabSpGmVYS+qk4PHWzIIsiWrRUJ5v3b6I1I1L1mZPA2cJFheGiS8bCAmaEyUtyBs5rA
         mlYrq8CEgvAHUvf+A3nrUdl9Uz08TmL2/HCnMxcnMipOBuUXgzsi/qyMA1SlxIBz8jBt
         AXsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s6NRPvQx1/M4TmIB8tmaXnUwdh/zuzjk3Ur/OcBaiKA=;
        b=UbHTi9xmCDP6Hol4O2VAQKSztEX96rtLEAjPxpyIt2083cmfGqeJznltRq9+S2bouz
         +LdKqUpUIyMf4Zl0SWznHGvMvFc+MwF7RnVNGcLJkP2zO7cPSXB3AXc6gHm7hP6CJqZ+
         TJstX1NAt1JK9hfOmIWRw1W0IEhO3F7MKlV+s6Rm9QKy0K/0MIrJD0WrBEnKZCUcj7C6
         Ye621cLA3scawzzkrM0IJ4p6FDOiE/GXmFfvOVosYtRli+Whpbdys2H8Etk8xEqEC0Na
         463DHfV/qWlH2wSnSmQ6r+K1Q57TwWUCi2SYAXHa3yWoVha/oWGGMELZce/Mksaj0m/Y
         0rSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H2K0mmUm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s6NRPvQx1/M4TmIB8tmaXnUwdh/zuzjk3Ur/OcBaiKA=;
        b=qSwY7jJCk0wwCFDprCAhsjKkusiqtYa+GaF4sqL35aiXd5Nci7FE367OxPAD7ia2E4
         tz3ShhK3Vx7ZsG1lMvN8m2zF2itTxFln1yn4gGSbAJ2go8SdZ5E3WktGam3KS0/sUcOf
         TBoOsMeqb2TgQVg743Do04/CQa8+3Ac5LkAzcsDOc343ie7vHY3EN6KsxYaqtT9Snq4U
         fJ9ofY5t1xzELGxjL8KVa7AAGucN+61FjHtPreHcM2i5jMlH30JSS+LXTIX7CoLGhiZ9
         4gaAuqYrx5LfHP7Kd0KVA+XDPXXjiqHTTheUkb7QW1xg0IDAuxrrdq+avd4sWgZ81P5e
         ISxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s6NRPvQx1/M4TmIB8tmaXnUwdh/zuzjk3Ur/OcBaiKA=;
        b=HkdjvrgJ7TuzXsqxVUjmegAjJjLAoTDHiMchp9S1VYTSLKZne7wXvzcAIRhV1U0ubm
         6hgLxLQJyhgwGVXmj+QZquP98ehXqYq1kT6ppn6N+/5ZLKuT8tDsQ3n8d0mu6Ea7XW37
         SfK2+gTUCt/OxilEC3sHzxmYEoy1u8lkYHdSSjzkWjoaVE7PoXWj8nTW3J7v68r225XS
         x1hAxhptDLR68gWI5AXj6zHw0es1AczEG0DBThc5Qjq2zm9WEXghr+bE96T5FtfiVfBS
         tV9w21JAVkyLEmE80LH/8esc3JrGJ+GyN2wvQBGbE/CFRb+b+hA07k1LFcy/JoIaXphm
         BA8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jhniKVFXLl9yMS5ijc3X+AqIfa+yOncf88NdZY2AHbChs5kky
	EygBFdEQ2897cOaEQ3dlRaw=
X-Google-Smtp-Source: ABdhPJyq4+YrZSjPOhwBAvsaKlZrvdUylDgmv3oeaX9D1BZ32VGdx+39VWbgWZYuCpQ+0RWb1MRlmA==
X-Received: by 2002:ad4:4671:: with SMTP id z17mr1494032qvv.86.1592442831937;
        Wed, 17 Jun 2020 18:13:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f105:: with SMTP id k5ls1949328qkg.3.gmail; Wed, 17 Jun
 2020 18:13:51 -0700 (PDT)
X-Received: by 2002:ae9:df86:: with SMTP id t128mr1442011qkf.29.1592442831608;
        Wed, 17 Jun 2020 18:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442831; cv=none;
        d=google.com; s=arc-20160816;
        b=znAkuQpH8mTnqHkwJYgjGwK0nl/DpYZUG6t8XID25jQjlGxUofu2nOva5ozEGqjOPH
         DRv/uj8xBLq4NkP6YzPhYfdlTq8OfHkVBd0ZDPZq24IDPMKYVVJ+1PQOgYPU+2b9Tjwe
         SAbyJICD2gAOe0hnxUfi+JAbKA5xmnrp3QdQ4Hlovy/ZBRIOV6tD5AtHbMDNW86aSxnO
         q//YP1bSB2YGf2A/gDlnMPPF4Huz4Jdor6gCf82a90VQnJ8o27aJGoQCTlJ8ER3LRIQZ
         MecibDRTxd6hToGFZlqa7GzswFW1ueaEaPfP3Cif/hUMlGs6KiVg+j2LDtx/WIPWK4Hu
         MjmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f842nHVmvSUym+YrJDV3kwjXE6t//+12wzJw1EsSCik=;
        b=p+vfUjwvqFV5T9D+eiP6bN/fiw2w/y0JtwnyAE+WtYhbbHXkmdC2cmyic44/Kq6Dmy
         iYIf1Az4mSd7xSNu+Iezs60ubk0WfNtZ6YGEp5iBpYfOqYDhpZrJS9CD4Qw1lHyUdpk1
         Phlq3SVvjpJqe3CAeByD7kjqVr4AVuzxxLduZvj1YorSEZaJH2wz/vounHuKmnt9yfYP
         dWkF/ly41BspgyKm4iBSIuwHX33GSZeWg/dUx/l6a1of2Rhs3SYZzDPsc+yl1tremV5x
         5z0lRJUD84da/BPltWVieRFOgX5AV2hCqBU4txpjjz7IDgjx+XYZMU952idxiwxrHQYz
         njhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H2K0mmUm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b26si11009qtq.3.2020.06.17.18.13.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:13:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A02BC20EDD;
	Thu, 18 Jun 2020 01:13:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	kbuild test robot <lkp@intel.com>,
	Felipe Balbi <balbi@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 265/388] USB: gadget: udc: s3c2410_udc: Remove pointless NULL check in s3c2410_udc_nuke
Date: Wed, 17 Jun 2020 21:06:02 -0400
Message-Id: <20200618010805.600873-265-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=H2K0mmUm;       spf=pass
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

[ Upstream commit 7a0fbcf7c308920bc6116b3a5fb21c8cc5fec128 ]

Clang warns:

drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of
address of 'ep->queue' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (&ep->queue == NULL)
             ~~~~^~~~~    ~~~~
1 warning generated.

It is not wrong, queue is not a pointer so if ep is not NULL, the
address of queue cannot be NULL. No other driver does a check like this
and this check has been around since the driver was first introduced,
presumably with no issues so it does not seem like this check should be
something else. Just remove it.

Commit afe956c577b2d ("kbuild: Enable -Wtautological-compare") exposed
this but it is not the root cause of the warning.

Fixes: 3fc154b6b8134 ("USB Gadget driver for Samsung s3c2410 ARM SoC")
Link: https://github.com/ClangBuiltLinux/linux/issues/1004
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Felipe Balbi <balbi@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/gadget/udc/s3c2410_udc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/usb/gadget/udc/s3c2410_udc.c b/drivers/usb/gadget/udc/s3c2410_udc.c
index 0507a2ca0f55..80002d97b59d 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc.c
+++ b/drivers/usb/gadget/udc/s3c2410_udc.c
@@ -251,10 +251,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
 static void s3c2410_udc_nuke(struct s3c2410_udc *udc,
 		struct s3c2410_ep *ep, int status)
 {
-	/* Sanity check */
-	if (&ep->queue == NULL)
-		return;
-
 	while (!list_empty(&ep->queue)) {
 		struct s3c2410_request *req;
 		req = list_entry(ep->queue.next, struct s3c2410_request,
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618010805.600873-265-sashal%40kernel.org.
