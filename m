Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4MEYXUQKGQEU4DAMYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEBA6DB6E
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:09:22 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id y1sf12045818oih.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:09:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509361; cv=pass;
        d=google.com; s=arc-20160816;
        b=nQD/W1MWAEoMTeA5u9MOBQjKV8v3byajG3SYtPOL9y53EG0rki+0i6z4Nl82ofSJCS
         uEjbG/LxkSEPux/RqGfcJqui1+VkMzBfVJoms8Gq74Uz5LfEXDxaQfFFivh2JwPPhdAy
         iAyuDhCAPKNoJX0tJxrfeJhp9rmAvF+IHMZPBnZm4rwJ86tqyzezOZDngte/1f9nO9Ie
         s/wpFuN3FUijFnNlo9R8aay3bCMaTueczHr7nAwpkitN9zh5GDBTAthZuo4QZyj1ptVD
         sAnNeO8ElOuwLuE9rlE5mMSqM1NBsSic7wUI/xvUpBhzD2ZuGomyFcEa5G4SY9L5Jnjl
         M0bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CVg8WAca2Hc4r7fHhPGtnS6+725+KQ1hmZ8NMTP1zAM=;
        b=E6dUk4O0tz7hG6csjY3DO0c4JyFtqw2t3t7yxZJp7p8JglRjoO2TBPc0mRp6hH4XGR
         LMh9HHPgqZxAHtb/u69491SYdd3hRpXQ7Z7cWpWpv/KVtE/oJ6bep6PUYkxBnTL/UBPY
         ydgtwdZZRID32NaNES7BajTOHDisqugogzeJr142g3d3RRcCTomNe3xdj2UUr0ap+p8S
         +xb31iUHFF9YXwiuIMHOmg9hIs8PO+pYxM/iY2sOF8XAt0tpyyxMk19rLWVPp4ZCHn42
         eVD780fqdRUYbpBHoS2rvszn9YzgKJES7mt8n0vvDr+moNoQs5XWqnNJy7R9GM2pfV4d
         HqIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rbLgRTbT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CVg8WAca2Hc4r7fHhPGtnS6+725+KQ1hmZ8NMTP1zAM=;
        b=Y29nNVoTsbK0L43GfP0HeoUy8NUrrIrifCiSliL+qTawZtPvlnHjJWLhM5gnGox8BG
         cPbs7KOe5z+WsgTTg/Kq3o1TGwPDTMGa2sK8vtniUb2YYrDvJxpINEimGotoVkPWcNxF
         NHHlM31lWndxfbKZfdW9prV8BeOSD8MZrfXqoiqGiGO46o+k3WqYxvpTnFBfcQHNPjt0
         b0YAo1+71iAXVrLXid+OBupPp0OGIj7Qz6OsCWM4Udbg4eHZfQdgelVRsCMXoYzYN2+C
         mjJ4YCw4DvHKQ2Z3EQSa1qWLsyDlC1PKCFMaDA1OVkEfM6Ajac+3pfdtBIqXMH0SVsq0
         9niA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CVg8WAca2Hc4r7fHhPGtnS6+725+KQ1hmZ8NMTP1zAM=;
        b=BqVv65+nf+hF5zsEj4g5WwN/s2lb1lpBP9Fn3QrjNuY2sSq5F5wnWiVzStA6lyHUZA
         0+xWofcIuxQv5Girvb2XMQ64FXPMRSktfK879CIag+uQI97BFn0WSIzD6oKlLtLItgp4
         e5W9sDAeqlU4gzgMd/o5KyTuA5wFxsvF2tBjFP2JVczFTmM42OSdSwX8xfpec2GZe/b6
         WhJ6HdfL3QZ+1cCIkaHrilATXkvEZ5olPbwoCGvWgBQbiCBzRVDpMjAkp2M02DV8/c/x
         32EfLxax52cpCH46X8K5ZkzUnJbwDah52rxtopoaWGoxSz+Ld8D6DfumHVuVpTxtpAq+
         BUjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDgm5xURcT1Rvp4MH0cp821h+T/vETZvGybTO7fRMh18tt2e9a
	yUHDq8+3G1XbT0s6xR9lzvY=
X-Google-Smtp-Source: APXvYqwyuYXvpfBx0OlMPnmfbtGDL4Vgs9KhU3oCTdd1muePx/LzJJGlgpwuvOPu/Cb0cuUoVz9XTg==
X-Received: by 2002:a05:6830:211a:: with SMTP id i26mr3498533otc.15.1563509361511;
        Thu, 18 Jul 2019 21:09:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:afd2:: with SMTP id y201ls3958930oie.7.gmail; Thu, 18
 Jul 2019 21:09:21 -0700 (PDT)
X-Received: by 2002:aca:af55:: with SMTP id y82mr24402080oie.172.1563509361210;
        Thu, 18 Jul 2019 21:09:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509361; cv=none;
        d=google.com; s=arc-20160816;
        b=QpNOH16+uczaoWqw+/nhREyl0jlZoKzdK5pjTJPUc5jZC1Pxm79H45nen2DOPzCd/9
         Wkz5ZbKom2niKpd2sn7nMPradLZmMrZjqAj19DnHAdIW+OS5mNF9qHlkfu9czTNd+pFt
         H9rGLYmUibIu5LKPh06y2FuzaymyuuzUo/Lx0ZB2xM2YRloNqZ004kUvl2da/jMWCZqG
         J8Ps9eTIm2SkNTiY5uFHnxxa+Q3gkVHks3gxJu/t5/oi2MfYt6ph0V8iFyY5pmB3dNrq
         Zm06PNtDvdeMQv7V7ZHsb+eSjTaut7uIDMUO8q9MzpjU0Lf8TIH16WKSPmsJ5ed3KNjz
         wUbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JbGkPvYIncX9EqLi/vhZ4Wms9i5JcbyNXsFDrA3qsOo=;
        b=LriCdqUS+E72OHemvUSJgSt995WwikJtWaOEIxVoTdWKumzZrYq6oCJm59dEptGEhY
         KYp+w4h8cHaFc4nqxl1rp/hXpARxhlg0acxLvyOmjKOimv2eO7K9wXN7HIVejxlW1SnO
         ctZni+k2OUk1rNJ/VWT2wKJNVtjDZqgsAf2jX53Y24I6C7s64i1g7GGTc0Qn0utNfE5j
         mwHKYIEPYpJk302qxKIYI+Rc3XvET8eEEw5SEoeLNwGAiJ/VZCrvjqQPfZ2OO9HLqBRy
         0bjQdty/B3gxyGMMdW6Vk0JV4vBOLEEuadYVepsqxHTJg2cWAbds+GwKRePjFZIYzWnM
         e95Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rbLgRTbT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 21si1495956oip.2.2019.07.18.21.09.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:09:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 832F3218BB;
	Fri, 19 Jul 2019 04:09:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	patches@opensource.cirrus.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 053/101] mfd: arizona: Fix undefined behavior
Date: Fri, 19 Jul 2019 00:06:44 -0400
Message-Id: <20190719040732.17285-53-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040732.17285-1-sashal@kernel.org>
References: <20190719040732.17285-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rbLgRTbT;       spf=pass
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

[ Upstream commit 5da6cbcd2f395981aa9bfc571ace99f1c786c985 ]

When the driver is used with a subdevice that is disabled in the
kernel configuration, clang gets a little confused about the
control flow and fails to notice that n_subdevs is only
uninitialized when subdevs is NULL, and we check for that,
leading to a false-positive warning:

drivers/mfd/arizona-core.c:1423:19: error: variable 'n_subdevs' is uninitialized when used here
      [-Werror,-Wuninitialized]
                              subdevs, n_subdevs, NULL, 0, NULL);
                                       ^~~~~~~~~
drivers/mfd/arizona-core.c:999:15: note: initialize the variable 'n_subdevs' to silence this warning
        int n_subdevs, ret, i;
                     ^
                      = 0

Ideally, we would rearrange the code to avoid all those early
initializations and have an explicit exit in each disabled case,
but it's much easier to chicken out and add one more initialization
here to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/arizona-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/arizona-core.c b/drivers/mfd/arizona-core.c
index 5f1e37d23943..47d6d40f41cd 100644
--- a/drivers/mfd/arizona-core.c
+++ b/drivers/mfd/arizona-core.c
@@ -996,7 +996,7 @@ int arizona_dev_init(struct arizona *arizona)
 	unsigned int reg, val;
 	int (*apply_patch)(struct arizona *) = NULL;
 	const struct mfd_cell *subdevs = NULL;
-	int n_subdevs, ret, i;
+	int n_subdevs = 0, ret, i;
 
 	dev_set_drvdata(arizona->dev, arizona);
 	mutex_init(&arizona->clk_lock);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719040732.17285-53-sashal%40kernel.org.
