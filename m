Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAUVZLZQKGQEQPVGJSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id E334D18A46F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:54:27 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id c14sf112995pgw.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:54:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584564866; cv=pass;
        d=google.com; s=arc-20160816;
        b=BP2vhGwT4KNRnaYR8ph7TqFwl4uGQqB08adbf17hGRPDEhtj3rIFJGLxgColK9gnmj
         4OQvO+x9TCnZ3vBeON7Pn+OTZSaNUgJGilSY1JzedkA+HAj9fLcAsEUNKW45WXGrXhMU
         uSFHfyE7R4kshEovvEJNYnwU5CxjTlTUZOCuVObScvQ4NlwNHEVhAafuOQFmw/bUbNW9
         KmVl0dL0aA/HLt5+MJ+eLt+Wdvadpgp6qrMe3mEW3sAhH3andwatZUAMxWE09dAXg/aE
         ubOa0pTqjB0azo7HIsCSCpGtrB2wRiAUIrn9Yy4hhLxWJP1OdueZsND919HSX7z3yU/e
         Fn1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ESIvMHNV548GikTy+hhJV84U4HMt7ZgZJhVbyP9pt9M=;
        b=d1X5BcP9if5mbawv2e1q0nywFmHLP6wSorXFf6tNRkYzKI2jM0R/DApqGrMPbrU9c+
         /qsmX8g1mqF1oWwE3vNAVH2iHiJXQ6qT/oi0sv/KHEgm1Thras6FQFNwv+q4dCyinDvW
         7Fh1dgCaiXOlkprF8z/29GCJKnMQGVcGw3QYGt042HxLCLV7ktnozAUxc2NKEtigyoqO
         yJsHnWLjqDWAdVFAgg9IbuEfXq7kIwuzrHhqkSkKLW5l+ziHO69jWx7Z/J3sKTypdgoP
         SYP3tJp7/msBp+M2VXLgpemJpjEFyniC9J+1scAN8JFyGrak7CYYEQP2/kQs+I0evApS
         AHlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dSicSenb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ESIvMHNV548GikTy+hhJV84U4HMt7ZgZJhVbyP9pt9M=;
        b=DfQLPuyaegKyktcABdWvieI/lOmvIW4BvaS0VT9GYiTDdLELSKQQC1S923JNt04ssz
         u3eL6JjjpJwLOHo3qJ/gR2B2KbkHvbp2iT5y+C/j/+ZUvo9afX27nKXS6hOxT0xFe2Q9
         JZ6s7F+w9PQd+/ZWu8Xu/SeFQdCpKjBSuDccFKG9obHP2+CwJvZ8g4fnAKrjMQvDdk0A
         25vWvuiDSVlygHZ371DCVuohm+78aBlgJEVwgsILWooUnKJek0XaZFiQzVqa0EM2SOow
         nVcH4dc9twiWnFKcVJyKHZVt2JZTjKFROyNh/r1fWh0W1iH7qlqOXh/oS5dTjMK6b05W
         9g+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ESIvMHNV548GikTy+hhJV84U4HMt7ZgZJhVbyP9pt9M=;
        b=nMmtPGLsRWqNmIyLMS/cFr3shyFDKZLbDVwO8nikL1SHOOWfUw1WGK8lVsBnvCq3Be
         DvHN6K40ONnDWaOlWPIjHWgCgZ4zEIMzkaQiN1+QRaT9txVjR4pOyhhrw4nXND/WvLUe
         FLf8f/qQJpOjaz+8cWdo/TrWtI6MpwW9AIp1OQmRmgXtRIkk18gFBzHRfhX0936FiGey
         gjsPpmWfYc1GsqTcGkdtzqz8ZJ/AdlXVIRiYhmUYH7OeX5r83yRxOaRzHFtUDNP8n2DO
         0qJ8h5YN4PUzYlS5v40FxiM71aiTp9DoRHMocgDONrIh4rK8KMr4mljdL79jbC/5vid3
         1abA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Y5SwtMoAjiGyXRgO7TSXoSjKIA9gOpuQZ4tVkXF8BIabxhBMn
	WFSxVAopDBKfzdBq4pyqfqA=
X-Google-Smtp-Source: ADFU+vuS7LUDks/F4P0RSbZXYY/Z+O3p95qMs8DP2TaSLQuFH4EeOls6G3B0asxN1dB3bcXpvppEHQ==
X-Received: by 2002:a62:3786:: with SMTP id e128mr194882pfa.124.1584564866521;
        Wed, 18 Mar 2020 13:54:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls2630420pjo.1.gmail; Wed, 18
 Mar 2020 13:54:26 -0700 (PDT)
X-Received: by 2002:a17:902:8b87:: with SMTP id ay7mr99062plb.2.1584564866046;
        Wed, 18 Mar 2020 13:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584564866; cv=none;
        d=google.com; s=arc-20160816;
        b=b8kadTD3q31LUgVMKTYgX4xEwUHnC/x+zjMfnP8StOZ6SlRLrk/ImMx57XDBq6XqPX
         dsctZ4NE01wrMjcB8eI+GGy2wUVTmf05z8Klm0YwMb6CPpCAbdsMDPTZvKeNXw3KPIaZ
         IVAp/e5sZ0WbixjJjXt2G628TT1cd+TIIRuHygnEpE/3wjniOXv33waAAdmgTrY9Sa45
         fRVVIUPdqtTb4xI2otn3q4/n8LI45Lcz1XlWfqs6g0C13CP1SHjQT6/gAOxLqyWpHoQ8
         xPkU4nmETF7qGn1voZ8GZS0m6cTxBnuWMhvsY6FzFUA2R8u/oSVKkY4uRWHSzVaKlnv5
         FWyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0ko5WQxS92pAvyZoUsXIwzsFWdJOvVQxCRxUqBimYJk=;
        b=BbDmjQG7t/l2nxs82GAfHBytrTGmnr50bUdxj1jiFoejQv8ZTQ1WZJFu29VJJXNBHj
         OQbgJFQPwU+YlY7hGD5MoE/rXqulGj088Zb48RGp7VFQmHYy3UXL5trR54X3ka1ED4HM
         MI1NhagGfebYIkgL34ZUOuo3ecbf6kKgQfVKHa7IfggTFzbs3rLaSuTFfVGNsqf6IqQx
         baPNfiGBdGxqIh1+7PUsRb01Hz8JDKVsrtTBGi6wop5RlH8SENtCwWF4Cwdwf3wBxJSU
         XPAsrRxSGETFEAL/xmg7kQXpZHn6GR16W45xNHskB99qk4mQLpY/B4e+uO1JMrxfXIEw
         rEXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dSicSenb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q2si176057pjv.3.2020.03.18.13.54.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0288820BED;
	Wed, 18 Mar 2020 20:54:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Michael S . Tsirkin" <mst@redhat.com>,
	David Hildenbrand <david@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	virtualization@lists.linux-foundation.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 38/73] virtio_balloon: Adjust label in virtballoon_probe
Date: Wed, 18 Mar 2020 16:53:02 -0400
Message-Id: <20200318205337.16279-38-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205337.16279-1-sashal@kernel.org>
References: <20200318205337.16279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dSicSenb;       spf=pass
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

[ Upstream commit 6ae4edab2fbf86ec92fbf0a8f0c60b857d90d50f ]

Clang warns when CONFIG_BALLOON_COMPACTION is unset:

../drivers/virtio/virtio_balloon.c:963:1: warning: unused label
'out_del_vqs' [-Wunused-label]
out_del_vqs:
^~~~~~~~~~~~
1 warning generated.

Move the label within the preprocessor block since it is only used when
CONFIG_BALLOON_COMPACTION is set.

Fixes: 1ad6f58ea936 ("virtio_balloon: Fix memory leaks on errors in virtballoon_probe()")
Link: https://github.com/ClangBuiltLinux/linux/issues/886
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://lore.kernel.org/r/20200216004039.23464-1-natechancellor@gmail.com
Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
Reviewed-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/virtio/virtio_balloon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
index d2c4eb9efd70b..7aaf150f89ba0 100644
--- a/drivers/virtio/virtio_balloon.c
+++ b/drivers/virtio/virtio_balloon.c
@@ -958,8 +958,8 @@ static int virtballoon_probe(struct virtio_device *vdev)
 	iput(vb->vb_dev_info.inode);
 out_kern_unmount:
 	kern_unmount(balloon_mnt);
-#endif
 out_del_vqs:
+#endif
 	vdev->config->del_vqs(vdev);
 out_free_vb:
 	kfree(vb);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318205337.16279-38-sashal%40kernel.org.
