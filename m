Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6X6VL3QKGQEOBY7LTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 444A21FDB56
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:12:28 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id x68sf3308602qkd.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442747; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2FiMnh+8p7A+azJUUq+rwPPZtj3HwFSuH0mqLafugo0XXv8lv7DG6w/RSIT8jO5Si
         ZXGkV8NICRKZMbSeaz9aTiciJsEnRwYMGKfFb0imGaKa2kSfkBJz1VWOfFpUef/hNsF5
         y0y/rXrQPMujLnemszI8RoZWf+Qnz80KeguVxE8cGkj0wXwufXEnOdZFB91krcR9XkIm
         P8O7oUFOU7F/IyOYhVdRkcKlZr6nGLUmXWonuX0sizmAdNrCmsJTYd2v1yLcCHWmwItX
         bnBsIvOzitIpud/FO1Sw8hgPOAZSnLVgXh1mVi5kvpaIbHO6EZ+MFQco7zb9jo/aKUFG
         zZqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nHBhNKrc7z9jIESqGWAx/7EUg2VTbf86T0mXQML1uaQ=;
        b=iQo6vs6G33jbh1XIgIimPleS9/Y+mc2RFFRc8OF6zm2FmCNqPPWfozqIz4FUhfrEen
         SdV4qqdmhOt4YFY9Kyl+G3HVjlwDXD6ME42hTFJDjtMnx4MYEjbeZCdxtIwGJRe+oZQA
         +5xAWn74qQxaml6glBB28p6wxUUHBYhZAR9vpCDEXHMCIqjPFQEolgbPPRh7+/QEaTQX
         IGFyDm0icGE8m0E7kuXtcuxcG5JHvJ1A7GCaTVWUuDDdboN6xBMt/WBeK9Ow6ifEl04H
         erDUflsll3FL+g7mzWn6SvIgfstvvuALI8lA+cDANSpVWidby/wKALYvcuos+vinH8zl
         iq7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TmEpYuMv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nHBhNKrc7z9jIESqGWAx/7EUg2VTbf86T0mXQML1uaQ=;
        b=C6tjoceYHTr9lkG+hap4S9byDjgRdkzI0FBRctdOkxv+3ry9TX3bVbzntFyI1rC/eu
         T0znOrAKcsJVR9vUooJrDsAqpWyn4CO+wo9Ey3WkTXP0CccfMae1VmGfVVpnL0ZU9Y2l
         mN+8J70eJL7hY5aQch2V8J459TxZEFeRzP1WQyRBF5oa62At8W2jz/HzFa15xNmQnk0R
         mlL80g2iAtOcFk2Pt8IwynyKN/MMZMWCJK6H1RR/HCZATb1uiaptZWjOVSI+vQwtFVwS
         HdWUPafHO0mfkeySNlYJRCJ+3pwz+4x+hFXB1c7fb6goT5DGuiXLVfxLxqXiC7mhhtrh
         C36g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nHBhNKrc7z9jIESqGWAx/7EUg2VTbf86T0mXQML1uaQ=;
        b=dbFMj+euJz6F+o5qvgLhR/bVysbYtZFgS47i79r5y8+fHxIftHYsPjRT/fziMeGhJ3
         Vy2rQu7lq+01R/j6504Z8UGZRSIPFh3ri9nZdt4y7oLbCUOlIkzpklbzXZXjqgrndShN
         0RKBFOZWkSxjbguxPatqkE2hfxxV6VKs8VEc/ErXNRexxran2PPWLjAGn1X8byUv2l+a
         0f8iyURGJnP8khLUvqJBdXfM3Y415GA34Yf2uvZMQMLNgRWbZNmHWHFMPlAPqxklaeDP
         cZ3osD7hzJ8MpulQLToXKs6X/OgoIFgO+GJtB8nkOnc12TDoKTw/K5nEtsooK/mD7TaF
         Tb3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b3doCISjUDi/9ypvWOAnA8Qas5W+W+7E/d/p/0zMnWEpEs7ug
	n+M97A9d9q4C713OR6ZaOVg=
X-Google-Smtp-Source: ABdhPJyKMwAWwbEYBic8mtI+jOKruH62KhifbZ5tlj6yKD5IcpVjvPShdYNLyk6xX7zOz0JbLfsR1w==
X-Received: by 2002:ac8:3fdb:: with SMTP id v27mr2046591qtk.220.1592442746971;
        Wed, 17 Jun 2020 18:12:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:658:: with SMTP id 85ls1946321qkg.4.gmail; Wed, 17 Jun
 2020 18:12:26 -0700 (PDT)
X-Received: by 2002:a05:620a:1114:: with SMTP id o20mr1560954qkk.120.1592442746628;
        Wed, 17 Jun 2020 18:12:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442746; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8PP6aEBfB7VXAW91YdC3SzhEiF+E79W0Em2224RfCzcoKwQyzuhid0pD0D1OEsflX
         zg3/BQ9qvq2kLijIC2aPqVexnoh7FRUedx9agaboOlO1ajjiNhKmaRmIeFkKsp3ydaBQ
         OgrhAy0WWA0Pk6MfMjC7hHKQVi3ayAessRST4BMur1m1iNJPD5Z648wHTTmnTgqQdbly
         rPtSe2s2B12pf3TPIz9WpRAvrgwNIX2kxeGRM7BBxqeeg/ceYIrs6yndMCLMXq9pwqxb
         u8UX3kawVYpkd+GxP8b75nnue3pfKF/Qkr3Bj8d/N9UpIYw0zPjCI92GhKjIAkiB08CX
         kFeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=L1BBLi+PWpIPs7Y5Vp07PFj2ODQap5sw6q1eALeTQv0=;
        b=mer6wbXTSzmcxlRBKDl2x+PHjuvZ2FFR23cL6e1sW6YZ/GGVn25x6UbV1BdPcD9qal
         o91lsLmIzEbznayG76fCv4IBvBG5JTM3DNEnZ3LtQbJfUjPL9HQYRutqH0k9JA8i5wuV
         4Cfoljti0K+UDUoCKhLEl3l7kOY0uVlSWK6p/OrPDKaJn07HhtvVLydTxyIlLDgP79HA
         W5UIQFGEAZAdhylg2VY+URrYFczXM101y0Bl+DzBkt8fRbJZVsQdRaypvmGR3e2PICQz
         F4EFGoUgIQVeoSdZ6fn5MnEJ1uw/DKZqkbbtebWAIHiw5XFT/L9wJh+AZAZjGtAZRsPB
         kpkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TmEpYuMv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si102249qki.3.2020.06.17.18.12.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:12:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ADBEA221E9;
	Thu, 18 Jun 2020 01:12:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	David Teigland <teigland@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	cluster-devel@redhat.com
Subject: [PATCH AUTOSEL 5.7 198/388] dlm: remove BUG() before panic()
Date: Wed, 17 Jun 2020 21:04:55 -0400
Message-Id: <20200618010805.600873-198-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TmEpYuMv;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit fe204591cc9480347af7d2d6029b24a62e449486 ]

Building a kernel with clang sometimes fails with an objtool error in dlm:

fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc

The problem is that BUG() never returns and the compiler knows
that anything after it is unreachable, however the panic still
emits some code that does not get fully eliminated.

Having both BUG() and panic() is really pointless as the BUG()
kills the current process and the subsequent panic() never hits.
In most cases, we probably don't really want either and should
replace the DLM_ASSERT() statements with WARN_ON(), as has
been done for some of them.

Remove the BUG() here so the user at least sees the panic message
and we can reliably build randconfig kernels.

Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David Teigland <teigland@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/dlm/dlm_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
index 416d9de35679..4311d01b02a8 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -97,7 +97,6 @@ do { \
                __LINE__, __FILE__, #x, jiffies); \
     {do} \
     printk("\n"); \
-    BUG(); \
     panic("DLM:  Record message above and reboot.\n"); \
   } \
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618010805.600873-198-sashal%40kernel.org.
