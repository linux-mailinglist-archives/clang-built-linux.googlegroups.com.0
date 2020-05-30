Return-Path: <clang-built-linux+bncBAABBBEHZD3AKGQE3BLT7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-f61.google.com (mail-pj1-f61.google.com [209.85.216.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0211E8E47
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 08:56:06 +0200 (CEST)
Received: by mail-pj1-f61.google.com with SMTP id d3sf3529336pjv.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 23:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590821764; cv=pass;
        d=google.com; s=arc-20160816;
        b=TapDz+exlGiC+Jt3zi2uMgDjIZlL/S4r2x6Pt9eyo9iLkbRvgwGq2gaNQgYX8nzMd2
         O1WPGIWv+FRKWdX+dwg3vjp8z/XOLmQG7EdxBiPIWVduD3gl62WjxqimepJgRg4lIvcm
         a5o8ostTi0cLcv806t0prauDh7D1iHW23lrPwGXif6ulMr15KuntfFMPjuQ0pYkKpuA7
         V9aGdp27QAoGP8+z4LgKp1X6p318XsGUKIqjLJQdWHQWaENV9WgmL2NIwuxbESATbsoR
         bVrsDMITPGq/Bs5k7IRf+AS5ufaXoqZg+xEfDZ15WffxASCfl6Hu0vUgBC4+KL5GZJlE
         nRdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=WTLAEaHZiFpc1MOeGZiTDwPGWr9CDa0nMrXw1dQ3MKI=;
        b=osBPFlwF9rRRtBtrn8XmnY7H04F1+t3OPSGqjTF2N1EwA92IuCWgcznZ2PLc7TZ47w
         sRBTh9YFxxbb6qii3HnDYKeneD+db8J5aGPubP19B77H43m2mFkfNNbKs3+PHiG3GJYx
         TdZhrL9RGh8m2Kyld9Q8U00hCwVapysnF/lVaVpnOsBpQQfZO5QeXGiIozG/ENACuWaU
         yNqopVhkQ+2biBh6vMsNOIjOvJ39X0VpG4QaFNVwMDeOo5eB4qG5exkLkspRiJdUGKCw
         gHEcFGfIDVTOVbsXSwQsLXmPwmxBLkqXkIPi5jlzyqcNbLGlINfPY/8WndqoPe7DjZTf
         GzJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NWFDQBTw;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WTLAEaHZiFpc1MOeGZiTDwPGWr9CDa0nMrXw1dQ3MKI=;
        b=nUD4+07e1MbK4Bwzfjts7oxdeNl7klXiqr2QVnB1u21oe+1AJPJsl+cahFhbQpDMLV
         KH6707xAPNQxvjNcxzHypfPQQ8wPNiR99Kgw8k56EZ89vs49/Om919ULzLuQ+fFWlnH+
         1QWVEJXoRKp7H0+l2lwS2eiXp2/MfoUlUkpuyO9JcCQwxC7ZaYU3sPMRzoMfOI13dLC/
         v563MX4gHJ5b50fwik4IJ97Evj40tCPGvHr0yO4d/fWe+bUsRHAwYl70pnAYpGQ/pzm/
         Brt6ucMMknY8DNUwmusqNWtn8Zli6QUGr0+FTmzH2VuP+cg9NNAloGkLiVh7yRAUf3Tf
         Lx/Q==
X-Gm-Message-State: AOAM532EwS+wwLOwswYyfLiQjPuieHE23lbetnJzTasest1Cmp1Lb6tu
	IsQuPWj0adnV6iZuOIs0RrA=
X-Google-Smtp-Source: ABdhPJwxTa/pPQH3POrAmeI34dJbnAbScMLIOmcaF3xGCNC+YYgAZCNqWIPVptk8GH1+bi11PYsofA==
X-Received: by 2002:a63:e60b:: with SMTP id g11mr12133953pgh.120.1590821764486;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7697:: with SMTP id r145ls3071574pfc.1.gmail; Fri, 29
 May 2020 23:56:04 -0700 (PDT)
X-Received: by 2002:a63:de06:: with SMTP id f6mr11998775pgg.238.1590821764134;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590821764; cv=none;
        d=google.com; s=arc-20160816;
        b=YXV/+ATqUEpfXsgIbKfJNNyuOpb3hHXfgd2sl+9PZHs8fcmpmdQqiOQ8533mX5pJog
         S3GUUQaFWLdM3ID7wI08hduW7w1qCfaXUIjDTfGL8ygYZZq/abgWeERazOsQ1uc2BHkd
         3WTgyVumdN8GsOLEhe/cvQKXA3zowNwkFAIHmwUb6CLR8XDrN/q9axuDTHW/0b6Rwy78
         a7Vs9gsAp86iDxfJlqBhm1zMfvpMfjrtAV/kuNk4h9w8ACmgNizbB9qEvT5dI5kOGoPs
         zOvmR2xnmjgULORdZtRVtpOUIuhIUqnNoP8FIQUFGJaWqG6fI+F1vGH2qDJyD5V2cHik
         f3Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=k8qEf0anz9wjMOrKrHOhGHhzocRCSSLQLrk5tcThkNI=;
        b=jenmQb+q++OBgRCpOcnFqYgjTxn1NGYpPDHtiMReUjE65CIP6+JxhwMzgpGsMDoYQ6
         wFS+9AcaN5uCNtP7xVSHeWI7KfKdChqtPe3yAKo3FNIlHKco8p1H9/lJnV8IraENXCrw
         vrzpKIQ8DRkP3VEvQjslXSzlZS0ZsqqmTd20rlrXkHybWDkTQmSWMAVZwAHfQG9OqSL5
         etTfEEQePMe4lC4JYWBx4powSpJTCyPxBuEC9vAxCuqsgNcohBmgfr7v7vlB3jyCQuSz
         s4DE6P0QZcXVCOBOAOIF0T8rFT/HLGqGmxbraq5YuYnQ7d+VySQEhJVf7zLkvx1SJyhq
         JU7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NWFDQBTw;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e6si890130pgr.1.2020.05.29.23.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9628C2176B;
	Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jevPV-001hpo-FH; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v2 22/41] media: atomisp: Remove second increment of count in atomisp_subdev_probe
Date: Sat, 30 May 2020 08:55:39 +0200
Message-Id: <84be50326cb07f7329012a40bc25edf7d2bade84.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NWFDQBTw;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

../drivers/staging/media/atomisp/pci/atomisp_v4l2.c:1097:3: warning:
variable 'count' is incremented both in the loop header and in the loop
body [-Wfor-loop-analysis]
                count++;
                ^

This was probably unintentional, remove it.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index c89d477a3948..374b1bb6c339 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1098,7 +1098,6 @@ static int atomisp_subdev_probe(struct atomisp_device *isp)
 		if (camera_count)
 			break;
 		msleep(SUBDEV_WAIT_TIMEOUT);
-		count++;
 	}
 	/* Wait more time to give more time for subdev init code to finish */
 	msleep(5 * SUBDEV_WAIT_TIMEOUT);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/84be50326cb07f7329012a40bc25edf7d2bade84.1590821410.git.mchehab%2Bhuawei%40kernel.org.
