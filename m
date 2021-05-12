Return-Path: <clang-built-linux+bncBAABBVFT52CAMGQE42IXSCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4424237B8C8
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:03:17 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id e28-20020ac84b5c0000b02901cd9b2b2170sf15273972qts.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 02:03:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620810196; cv=pass;
        d=google.com; s=arc-20160816;
        b=akAgg/wxaO6LuZ4fXPtmf0rsDhmRTPT2ZyOkR93Zvfon1xwIQayosSrZ1Z3k4iTViT
         iWdw+zmZ/zM43P6XD8N7yztHrfY3WRjjLGY2Uu3ax9RVe63nuicfM8bYKqX6JxUob7gM
         WXGPUEmLCCeXt7OeZFRqZBDBI86r4kuDvcIQRTKFf2PDfbBY1+hFWBoaILIVhBUHbCX/
         7aJh+vU+/Ic7S8NoIJYfhBkqtSoD4LXVEhEPxQK2s2kW7wkIAJ/APjpKhrbowJ3uHrug
         NvvhFvaUXq2k4VIxGp0F1oTpqj0C1BafG5oXhkezeGxd4TPPahd0eByMYp/QbCrKtxs8
         ufHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=P3ESj1QfaVIhYcmuV3GR85Ft6Pt+VeQ9isu31UWtXMY=;
        b=Hc+IRDCaEWkRtMlGoXotemJh8fqoe9Itpq3FJMoA8Y8SIK/u/fIGigwW3TVg//jF6K
         MzEZ7vxbBpmjrMw4RhJbHNCqkZXOwV2ZNTeGJ8m96GmibPjgrEOUxs3wTfdi8pGwKVDR
         jUO389J5yO2kJMLTgtF+gphYGVB2070XuMlhZqTvckB+/u67aerIuCWCDfhYz0XBhQU5
         jehHQsvuQ8dAsligqFTcMLRSmGp0SDJiMZlf76iLrXwDd7+XPlI5Rh/O320vlSsdt8EE
         UCQawyYWTl99MGUIMXCfDD6EI0w7EgQqt5HKpfRSI5c45/GS2mXj29IQ2MXkB6uACv7f
         69Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P3ESj1QfaVIhYcmuV3GR85Ft6Pt+VeQ9isu31UWtXMY=;
        b=ENDE8Pnqb5izVELe4bsKCKjbQG11+Palhy9affAOYdSkci09/rOG74tMnG+UWftfCd
         cvaatsvuEe7GHnQKayJ/aOoYf2YWEcrioYtlTKrQO/YqTUXvKfXgxGoIFP7tp/V0Esnz
         YsFTEr+Fu2vff1zLD5m5w8aCxKciuZG54rDvDChRK/ujRg59N1mQF6nrmUnthFQE7pb2
         DLjfcwiUu/n5oS5TGD4bwdGMicTQjgjcVlygBPe6tZJjSxlP6TJ1ppzs1Ji8sQSJOfnO
         OBrU9nOoqZhA1uLmJ5R/Y2iORKbPvng2O1Fi59KeudKeSgmeElF6M/GQHIDsQnNAoORV
         q29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P3ESj1QfaVIhYcmuV3GR85Ft6Pt+VeQ9isu31UWtXMY=;
        b=XW/l3LnXLlxzOiFtq9Z64NpGv86JIPxSKDNypRV7e8++F3cNQEmbSHO0iHnynik/xA
         YYm29aBHt9eiBdcSEK+/WfXkataSGT3nNaAxRbG0q3kMjHKYpJcm+PX6rYwmIxAx1xrS
         Q5oyHBgpnUvTws5/5ot7+Mmz062mXyc5H1FyX669P2hPYv15bnNjXP/shSi0nkF5N9es
         6eJBdb+Naj31gA+XOQ/2WZMJkYzkg17j5hwuiZ4xn5o89svuTbKkw2HGIyCZNvrBOVv/
         A9tthUJtWF1jfQlxmC9sj1PrjhqeT9EpfHAtKCDtu7ENWfm4Zj1+pqwGNwncLy0ZIQWP
         T2YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Hnc6aOUnX7HXqXTHhZFcpugrK/BP/pRrm+ljyAnNq13J+L3rQ
	BeJ7gxIPklH5qmZ/eon+Gg0=
X-Google-Smtp-Source: ABdhPJzcbd0v4GD478IxQzRakFZB7BIHMonBT+nlCWSRkSdbqxPiBPT4Kiv2p7o6KIFLM5hKPKyE9w==
X-Received: by 2002:a37:a1c4:: with SMTP id k187mr23480192qke.26.1620810196144;
        Wed, 12 May 2021 02:03:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1c3:: with SMTP id c3ls607429qvt.6.gmail; Wed, 12
 May 2021 02:03:15 -0700 (PDT)
X-Received: by 2002:a05:6214:a43:: with SMTP id ee3mr34075087qvb.61.1620810195816;
        Wed, 12 May 2021 02:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620810195; cv=none;
        d=google.com; s=arc-20160816;
        b=YnJALLIwsapz71ztL4JfxrIBML4vHvB1dZ5SMNfmhwOzHO/4oc3KadN744/QQC42Uv
         y8oWxVMHp+soNh83TkQH4cVfdSJW0uFg8L7PzO2LXzVA8YTnZVQf+8ztQ1NGe66g5EXr
         7sgAjTyuTRQU7FqykjVtNbbmVLqBwoJ3hsd8neRn+x3Xanax3GVZ/3uoFVo599CPgPGW
         m1GeZ1+2EoEOdhQ/ettCXd5bipEKNhhqe9ALW8UZWYxaOfZ9ndTwemUTvYpsiD8QSAF7
         dq39njpTq/6uC+vl+fWZrpOVhFfBabWhxuXYKqYGDLEF1eGL1M3rC4zqqeHoGW22ZwY8
         M3UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Hs8vPH6t9fHfq4ROhm/RZkNd7uMJTjr/shLTYuUJnas=;
        b=jH+8pGE8zL9oWu6l2vBnNZxylDNWx/Fzr/n1HCaE7U2PQ9ayyHFVipYkemdhSgDMRN
         VVv0CpeGHdoOUnIeD/xmfgB1GLz7h59kECAC6STdIuzYzIhrfqbhl/yqLmbD1Qrv16HL
         iAeAQAlJS47KkZS1e940JwuKuhcLMxdr7dKomrUov0OA5hAbkujQ6mApYYrrKddf4zjW
         9cMN/Lz1P/pxR/RxDRd1vyl79jxZ0mbl5vtmqcLfgLkrnHaTFsvulfvPho83VfnUA7mM
         H//jDviLlWq87PBFrzGme0L3b+BNPo+2NjdaxJXPVJ3pWJaYbAAyeiXDB93u2QI4Vdt1
         pFaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id t65si2130421qke.7.2021.05.12.02.03.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R591e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UYdpVrJ_1620810169;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UYdpVrJ_1620810169)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 12 May 2021 17:02:50 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: bernie@plugable.com
Cc: nathan@kernel.org,
	ndesaulniers@google.com,
	linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] video: fbdev: udlfb: Remove redundant initialization of
Date: Wed, 12 May 2021 17:02:47 +0800
Message-Id: <1620810167-89132-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Integer variable 'identical' is being initialized however
this value is never read as 'identical' is assigned the result
of 'start + (width - end)'. Remove the redundant assignment.
At the same time, adjust the declarations order of variables
to keep the "upside-down x-mas tree" look of them.

Clean up clang warning:

drivers/video/fbdev/udlfb.c:370:6: warning: Value stored to 'identical'
during its initialization is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/video/fbdev/udlfb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/video/fbdev/udlfb.c b/drivers/video/fbdev/udlfb.c
index b9cdd02..f40dd6d8 100644
--- a/drivers/video/fbdev/udlfb.c
+++ b/drivers/video/fbdev/udlfb.c
@@ -363,13 +363,13 @@ static int dlfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
  */
 static int dlfb_trim_hline(const u8 *bback, const u8 **bfront, int *width_bytes)
 {
-	int j, k;
-	const unsigned long *back = (const unsigned long *) bback;
 	const unsigned long *front = (const unsigned long *) *bfront;
+	const unsigned long *back = (const unsigned long *) bback;
 	const int width = *width_bytes / sizeof(unsigned long);
-	int identical = width;
 	int start = width;
 	int end = width;
+	int identical;
+	int j, k;
 
 	for (j = 0; j < width; j++) {
 		if (back[j] != front[j]) {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620810167-89132-1-git-send-email-yang.lee%40linux.alibaba.com.
