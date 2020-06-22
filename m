Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRU6YX3QKGQEOHV2ZYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1902045CE
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 02:39:36 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id 31sf13009989plc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 17:39:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592872775; cv=pass;
        d=google.com; s=arc-20160816;
        b=INsYgasxZ+IDCRMeGaAt9fkVuWzIydgC74O3TuPs59guq3VKuwZQmJeu6QRSxFhAqO
         yak3iFy/U1I7qUgruUYBfw6/QKx7ym7kxizClgniaHJMR9jFJpeP3u0HNUb2z50D0IIW
         ZNsRklA+tEWfjURaOxo8xQBivcXhHnHiIR2qsRh9070shjXO/v3trFRgIwugQeVNWgH7
         rnr9iNvIb/XsLBTBH9q1lS0sONiM1/AffAVQklWJgwGwqSsk65nGOSAG4PyGEwcqvkEB
         6vX6Pe7La4q1bWIM9F3T8FzIw+ZC1PtbpDqS7QgorzjqPr6hKI5DlGBQfKzOch95RUH4
         ZVoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=98VHO6deFOZ/PtuurT8llniuNYRAeOTfymdXAjuAmXU=;
        b=vsscFmuFpNChM+sfxx7rPjrqhl4YD5GXOshvQGx9j6HO13g49HPCHPr6yjnWj2MGLD
         yPAKmAXxN6+DlH6Zc9+FI2O42tK8+oJ0T3i4Qirj/1mL0UXlUNW1mgIc8me+MbNUxbKZ
         ZlqLjmIdl2L7Ey/LA7hisIvvmHo+hQm5Pkxbgdm9KDoVq5POmfAXCiE7nUwfS7QJbUgh
         gRk2StyR9SBI34bd27CZi9iDnQvCzyFNYs/9ywtRMA33FhnUiTem6IA1ydQrpGWrju3/
         C6HyztpLFRLIH6/zmPqkW1ghTeaJtlZs3J8MSxn8/2EkhHIXKQd66fN4Wa6IyYgcFQCL
         ahVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gmta/vZG";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98VHO6deFOZ/PtuurT8llniuNYRAeOTfymdXAjuAmXU=;
        b=e5yX34fH8S4HRYeiAVKRbDFJeEQWpzJHsdXwjb8/r44jbs2uUgmV7Hkw5bJs9mKao6
         WEMwgv194COnL7Df/CD2mkH7oRRAZlONTz2vnximle6183iwQvDf0j6O6z4eOGBFCt2x
         tXt6Eyl9fB7cDW96vQaVmLy4SZvmnwfdfbn+LxyQL255vnvwFgExgeNj1ylwUnEGQwtY
         aHkkt+poQ3/PZyHfYS+AM7y/tB3wepb7FkyS+kdn9g4gtICTK0uFuzfwSktAY4hfVSiN
         wk54wt67cdvZ4x4Tt7TTv70YBkKM+kVpL5hY+24LKkY2lhRLlByjA9HNVJ/jCTT3tGo7
         gE9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98VHO6deFOZ/PtuurT8llniuNYRAeOTfymdXAjuAmXU=;
        b=Hd/Mju07F7AhUy/eSx/2+b6e6nqHtmQgclzWLwRY+aNCnUsMdPglEyXjR7ir0NT6mi
         C2bmZ4KgJDyBdiu3dVwzzNMHueB/GjPhVRdltgbl6l5ITrn+jcQqTUyHZbHyBqaparAd
         a6BSC6QwSoSSeGbW1iF597U72pdm/jPtuFDuXnDEsG6DHoLWeBi5dZjxaLvOR1SgxDfD
         FREW73/YQ5bwlSWwllDE6wpSmIhu53Ek2Vj+d1KwwtNdG3Y8ntjS3AwiYoa2BNsjkgXL
         E/lphYVbuO9N4VjoDQP9UDF+aW9Mzqe5PpFSujQ6rPXliVmomGcU1IlvGUWSSBHf4FDg
         ubSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98VHO6deFOZ/PtuurT8llniuNYRAeOTfymdXAjuAmXU=;
        b=Ty2p5ASPieemUq7HapSMQWuBZ3AIq/IS4IleUzkcswjNukq6wT1LlwoIMMdogH0pRz
         HoNRfPyG31oMgMl2LJ3oi4NhWhXYiMCJq/a15qlX8bNTMNMQTqU/1cM9os7jA051VtIZ
         HXwsPJHT+lxst3uUwDaa9VyX/JQrpz6GtlxTlsZpGueyJHuXR0nLhN2SGNzK6LjsgqcQ
         +h3gvMvPpOkh5s9vPmklfgJrOoeXGyr/VcED6EPPncPVUP9YAGXc6huhK4yJVG3k9En5
         yoRa2nvGlCXgzYSwBH8wj6BArzOn7HRUxqYdTm/MLBGDvQzByv6IOjnQ8IpZW+2Ed/yM
         HBkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wb49yI6IjiCWCpcqG7eaELMSZsBiNA+Hc4OTJ1gBC+vYmxJRC
	ZrmBo2+1L1unORn5btYuth4=
X-Google-Smtp-Source: ABdhPJxsPSoWA+riISGIc56HcHJyhSCI3Ax7bF6vQxFJrqDxaYyQX2L05mjddyEHCddu2OUhBEyrDg==
X-Received: by 2002:a17:90a:d487:: with SMTP id s7mr20546177pju.37.1592872774780;
        Mon, 22 Jun 2020 17:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fcd6:: with SMTP id e205ls6014545pfh.10.gmail; Mon, 22
 Jun 2020 17:39:34 -0700 (PDT)
X-Received: by 2002:a62:3c3:: with SMTP id 186mr22132408pfd.119.1592872774394;
        Mon, 22 Jun 2020 17:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592872774; cv=none;
        d=google.com; s=arc-20160816;
        b=NfQstsLDhpeez14iao5/tef4LXoBKpKC/pqWt2d6wKXYAf/QA8BO5StbrLKkQ4bhMe
         fJ574waucqWJobY4q3BN5aqw6Jdvk0+wSfkc3Tr+n1TLi05KCzbE1YdXH0DR5DRVIZZU
         1DgZ08seTHQYclKeTwh2f7uSZYZLdonkcl8tyHHS5fzNZaTiQlNnPyHD6NzkhFVIMNMl
         93MKCtOOUhw/5EBmD58SJUH3YDwV5ghFLuQdSf9SwivFvN7QtbKMaqfcizQjIXb4y2gf
         2UC2hUTBcrHvJVBAO5OCL+P5qx+8kNtWUAhccRnFm3bEkyyqLIndkXnX8gktWmu+m/5D
         ozbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=68GP117GFRUsx6QpEeOc82reTKVBWwmz16vEIsvU5G4=;
        b=LG8kUpuoJn3HnigAoSyUz/A8Nf7Ecs90R3l1sq10r1vCcOvvk5OOyAYvQiCkjualxb
         DtbNLjeWE3r7U/tPcGnQMKenSnSv1QrmZp8lWgQY1Gca9qtglCvmnPfdyPmJ6tQn1L4o
         YrU8q1ru9DMo4+dFPtFs8EwKX3P0AWzo6z+R+FDGgQihUiRey/SiyZcJwlAMxh5eTAkl
         AtbW3qgHKL5AUnnGc2kcJgVesYkZPnt5vWNC3++YgQuSaJtye+VV72TWaEG8lhq+th5a
         S4cnUqTEHSJjF9zwxpJIqO+FeCo0AcPqu929e+6d2ks4nJB8fBNGXwxa6Z2cDQtQ9ypv
         zFzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gmta/vZG";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id t72si1014316pfc.5.2020.06.22.17.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 17:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id x202so17407587oix.11
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 17:39:34 -0700 (PDT)
X-Received: by 2002:aca:5c1:: with SMTP id 184mr13713429oif.119.1592872773768;
        Mon, 22 Jun 2020 17:39:33 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id y31sm3677828otb.41.2020.06.22.17.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 17:39:32 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Christoph Hellwig <hch@lst.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 1/2] media: omap3isp: Remove cacheflush.h
Date: Mon, 22 Jun 2020 16:47:39 -0700
Message-Id: <20200622234740.72825-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200622234740.72825-1-natechancellor@gmail.com>
References: <20200622234740.72825-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="gmta/vZG";       spf=pass
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

After mm.h was removed from the asm-generic version of cacheflush.h,
s390 allyesconfig shows several warnings of the following nature:

In file included from ./arch/s390/include/generated/asm/cacheflush.h:1,
                 from drivers/media/platform/omap3isp/isp.c:42:
./include/asm-generic/cacheflush.h:16:42: warning: 'struct mm_struct'
declared inside parameter list will not be visible outside of this
definition or declaration

As Geert and Laurent point out, this driver does not need this header in
the two files that include it. Remove it so there are no warnings.

Fixes: e0cf615d725c ("asm-generic: don't include <linux/mm.h> in cacheflush.h")
Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/media/platform/omap3isp/isp.c      | 2 --
 drivers/media/platform/omap3isp/ispvideo.c | 1 -
 2 files changed, 3 deletions(-)

diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
index a4ee6b86663e..b91e472ee764 100644
--- a/drivers/media/platform/omap3isp/isp.c
+++ b/drivers/media/platform/omap3isp/isp.c
@@ -39,8 +39,6 @@
  *	Troy Laramy <t-laramy@ti.com>
  */
 
-#include <asm/cacheflush.h>
-
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <linux/delay.h>
diff --git a/drivers/media/platform/omap3isp/ispvideo.c b/drivers/media/platform/omap3isp/ispvideo.c
index 10c214bd0903..1ac9aef70dff 100644
--- a/drivers/media/platform/omap3isp/ispvideo.c
+++ b/drivers/media/platform/omap3isp/ispvideo.c
@@ -18,7 +18,6 @@
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
-#include <asm/cacheflush.h>
 
 #include <media/v4l2-dev.h>
 #include <media/v4l2-ioctl.h>

base-commit: 27f11fea33608cbd321a97cbecfa2ef97dcc1821
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622234740.72825-2-natechancellor%40gmail.com.
