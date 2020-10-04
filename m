Return-Path: <clang-built-linux+bncBC27X66SWQMBB34X475QKGQEPIY5SUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id B13D2282ADC
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 15:19:44 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id k3sf7163876ybk.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 06:19:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601817583; cv=pass;
        d=google.com; s=arc-20160816;
        b=uVQhplhUWkLdmd77d4FO7honi/sBqbO2cy2SZbFNk34/ng8LoNVlCAWYp/3CR4AtMs
         N9uEs0utIGOcgOref2CzWYD6YeFMO9ad7zIBRTps2vAvzsj9556BjbB7zpnPtd6taeIK
         GfASokj8OrZdLk4HKEpr6iL7amed25bCu7hzVm1crSypeblMKue0GvZZzXu1l1ouXSix
         XHP5kqgYMynutQFyj1VZzx+fjY4QoTUUexQbypiv9D78KA33MbVPVLE2Q1yEJ43rRGXf
         TjKz/kcmbOVSoWA+lqZCfglkODxhrZNMH2c39I1wD4++iun/M41lxqaQ2wCwPPOmpXof
         Ow8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wDefXM0XD00IoK4jrwW6gwT3FLhAs9lnFekkxieWegI=;
        b=DAgiGsc0IeOr0xuajhEHJoDaH1sYVBOYZuaU0cXzcXnM3DgAuOyhCo0Xs7diDuplKf
         eLLR51nqxzc4LnDNh9/k5EQjvrnhPfwjNRUmgQm9hEIj5XwBic8Ge7O2Gld9s7iQESam
         BT2j/9IfqVaduDlVyskYpXW+MAeEaDeMmFnz3b1S2qCoacnipJUUlJgLGDbfopHsLUlo
         GQS2ksKwPpp2GJy2KWmC6iOgZ+a34GlNgXhChvkdEXRkp+B228O7oscHqqUpRhseLctr
         8nWU1B7atK3kKzX0L//ZUtY2p3ewug9Y2wlioUa8XzhSakBRa2v7zJh9G6P2uxKT6Isv
         gPEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DxtVaFWd;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wDefXM0XD00IoK4jrwW6gwT3FLhAs9lnFekkxieWegI=;
        b=Ss8fyed2rXipYZd80xC4cNGQWnrH/BvyktUbIEzRs8SH6QWyYO/yLFDDyRDC0nuIb1
         rbf912YzgEuY7U8waW5bPLT50Tyva3BkzFjbM5EZqwMxMmRBOPMpYHnsKYECXDCWEhmg
         /GTSVMgb0OS9p0TQi2Vn7Brp9gh/MVvCVKY4DhxlUDoPbouLl0gt/wA9vaIeVZr59SWS
         ixuE7DDj/mhbhEseQLkoW5DtYkBjWeE4RxBs7XL+l9fDCWdI1xk6w9z9PLfA+OfIroiM
         3l6CVw6cvgJcEORns1YANrAnIETCqTMlLcLyRrwr+T5mHoKEh/m6RyQTKoD6z40wPTMJ
         naqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wDefXM0XD00IoK4jrwW6gwT3FLhAs9lnFekkxieWegI=;
        b=JzMRMnyAdS2tfIxyPGGHF3fYRKpESkIX5QF2BENEce2oUCr+r+TC6da8ujnGz4MeDY
         rYMK9os1EgKJIdnf8927DyUJ74JfKN9/GYw/J5sOTLT37Iqpm8iOzCi2QDV9VwpV5uVI
         eIY9Iln1Fu3z/8Bey0Iy7o6R1FSITDaPyyBWigBYXqB0d/06fLVa0WoFxN9sGLgChgW0
         nrSBjiRdIwnhdBH8H/f7bNl7xJUtVgSrIoMkEJq9pq6DHUx3FgdI88vwbbs6yUJri5a0
         qIU2UACCrR7gERZ1x+dfjsRoZSBCYmK+biRju8zpvPEzc5MhwRUU6+5mKh1vwkx/IaFM
         EzRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uLHlr3d2DqCUzEhtZywk83NECUbKeKySp6XF/0rZUxDhx2386
	Wwx/NOyxvzegBYf45dLgOTQ=
X-Google-Smtp-Source: ABdhPJzFO+XQZyUDAgu5TlVFaRJIlcE2OocgPWX2dlZ4u5L6UcbCbmCrEMBHD6FnOZd5y9hsGo359g==
X-Received: by 2002:a25:3dc2:: with SMTP id k185mr13444313yba.469.1601817583508;
        Sun, 04 Oct 2020 06:19:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77c3:: with SMTP id s186ls2708826ybc.0.gmail; Sun, 04
 Oct 2020 06:19:42 -0700 (PDT)
X-Received: by 2002:a25:ce81:: with SMTP id x123mr14156667ybe.445.1601817582906;
        Sun, 04 Oct 2020 06:19:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601817582; cv=none;
        d=google.com; s=arc-20160816;
        b=bjkCD2UAp4rhdrx4cq4N+6zOJ3GJAx7h5VNDAPZToA9b9RR64DeTUt8qiUVaSgTic0
         I8LB+MeoDihc4bwUNDk2AdjlcktmYst5bheNWybnX8AEFUZiFiOKgeu78DXt2fFbVx36
         DZWRjBIaBZxrYSjrDqOwU6YPx/jEMKPHMw0KjQODnNE13a0uefS6e1rX8e7fHH0n7BHk
         47tHKylRbh8mBF8EKznZDsQRhWn3Zxa2rG+fvjjhKHyScRTYsNwQ1LrxD40NReALY5s1
         I713bBDufJlX6WPOoAe25cIVDMxzbTYp8MmJ2Gri8T5YhlZgCRgDZ5CXQUiabTV+kMKQ
         KWVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=rgrRP/YTXU8zDHHZah13pYSFtC6P1oYXhuKtk3thRRw=;
        b=J7yahenbrIKhVwrlI/33P1z3JrsjKef3snUAQPEKt3BUpI9QBtG+OdcrSazeCeCLaT
         pG4uKvWzFgXQNMXzgYvlG+L1OLYdGbM700JCaFNqCEM8wXKRV1QHOFV/sAR9pfuH76hL
         H0TwQ8hqEkIP2HJpe3PD2NStVqxt1lYuWO82Kz20HgOzx5Q0dmUrwLA7uwj1gDTY8jB0
         hb9Utw52Ay7VELb9J+YBvRED1qBBHEDj5PUjIC3NxhziCKr8rFkLzUK/NiQFBadkCzsZ
         PNtQTeM51V8nbvoEVdEaE/Wvltr0jp6j+zUjspBniuv+u09iZsNFZx3Gaso14S0xDroL
         D0Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DxtVaFWd;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id l203si338498ybf.0.2020.10.04.06.19.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2020 06:19:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-ZT8zm58JPh29L4t2T7hsEw-1; Sun, 04 Oct 2020 09:19:41 -0400
X-MC-Unique: ZT8zm58JPh29L4t2T7hsEw-1
Received: by mail-qv1-f69.google.com with SMTP id w32so4060573qvw.8
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 06:19:41 -0700 (PDT)
X-Received: by 2002:ac8:4410:: with SMTP id j16mr10412017qtn.305.1601817580596;
        Sun, 04 Oct 2020 06:19:40 -0700 (PDT)
X-Received: by 2002:ac8:4410:: with SMTP id j16mr10411990qtn.305.1601817580275;
        Sun, 04 Oct 2020 06:19:40 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id w4sm2657150qtb.0.2020.10.04.06.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 06:19:39 -0700 (PDT)
From: trix@redhat.com
To: amitkarwar@gmail.com,
	ganapathi.bhat@nxp.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	davem@davemloft.net,
	kuba@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	linville@tuxdriver.com,
	nishants@marvell.com,
	rramesh@marvell.com,
	bzhao@marvell.com,
	frankh@marvell.com
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] wireless: mwifiex: fix double free
Date: Sun,  4 Oct 2020 06:19:31 -0700
Message-Id: <20201004131931.29782-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DxtVaFWd;
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

clang static analysis reports this problem:

sdio.c:2403:3: warning: Attempt to free released memory
        kfree(card->mpa_rx.buf);
        ^~~~~~~~~~~~~~~~~~~~~~~

When mwifiex_init_sdio() fails in its first call to
mwifiex_alloc_sdio_mpa_buffer, it falls back to calling it
again.  If the second alloc of mpa_tx.buf fails, the error
handler will try to free the old, previously freed mpa_rx.buf.
Reviewing the code, it looks like a second double free would
happen with mwifiex_cleanup_sdio().

So set both pointers to NULL when they are freed.

Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/wireless/marvell/mwifiex/sdio.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/marvell/mwifiex/sdio.c b/drivers/net/wireless/marvell/mwifiex/sdio.c
index 69911c728eb1..bde9e4bbfffe 100644
--- a/drivers/net/wireless/marvell/mwifiex/sdio.c
+++ b/drivers/net/wireless/marvell/mwifiex/sdio.c
@@ -2403,6 +2403,8 @@ static int mwifiex_alloc_sdio_mpa_buffers(struct mwifiex_adapter *adapter,
 		kfree(card->mpa_rx.buf);
 		card->mpa_tx.buf_size = 0;
 		card->mpa_rx.buf_size = 0;
+		card->mpa_tx.buf = NULL;
+		card->mpa_rx.buf = NULL;
 	}
 
 	return ret;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004131931.29782-1-trix%40redhat.com.
