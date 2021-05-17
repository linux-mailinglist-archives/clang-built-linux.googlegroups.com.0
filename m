Return-Path: <clang-built-linux+bncBAABBHXXRCCQMGQELAFD3LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A0E3828B8
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 11:47:11 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id d30-20020ab007de0000b029020e2f98646dsf3336924uaf.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 02:47:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621244830; cv=pass;
        d=google.com; s=arc-20160816;
        b=amfQKwRZrP00iKSF1zc7tr2mgHvFQ4ken2/X0bzVPACd/6dMKyyimqd3FBQooE7p/k
         2I6S2XWnmfmJ+8MF0FcqsD325UTst2oBP0v2TWJoDlCN9PzTTqSE0I/re3xg+f82J9vd
         Iwhb87qLUEu5ZhpoQ9cDcGPRdDfJO0MJBJd5ibD9q45iPrUz5/9yVzxW73bMcK7Jr/g7
         haG4RZOxFvB66otyu5k7MOGx7PFcesVZtbQz5dsIgQnhyHkEqxg9aWXpjXdVFK839gfk
         zz/Lf8pUCDy7ZLzr9A0qjJ0Fu8vW4uhiy4SabR+snZ/SDb0MvU4R+FcDHV6kR1YHc1hD
         sKmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=rR0STHLlXiHIZd+v0Hb4dR93CClOct9ZpyTyjPwUriE=;
        b=o9AWQYMz2JZwyrFhBvnzK1QXZYey/WBtqloQxxuUJny3gwYfqQzdUR7EWEaAYLLREL
         e6ncR54tHwwZTipw8C/7Y6If+jZw+Aj8k2gQObE7C2bL3YhLj52uLRtsc4/+hmXBgs3w
         Y3hSRiTwzVOWavy7svw6Lp/HilqmsV+D4OsQ7Uy8QHMPpP8s6HsZiTKWkgteXxptXPWK
         ZS+dcIpA/jmj01r78NjSVlj3mf93eU4Q9PdbGVwsPQPR9WLzPZFigUgkL3rp32V08Cdu
         BEVRBUKijvJ7as4lvyXGcXG9GrWcnftqNEc+bkKMcPnjJdwNoRQLA+v6F/h/mXbT7sAs
         iLlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rR0STHLlXiHIZd+v0Hb4dR93CClOct9ZpyTyjPwUriE=;
        b=VSNth0um/2LimSX44YpRSD0EiGBgUOr4a4vPD+Jj2XoNJGju9qU76OArpdajAmnHGA
         BfSzejqtq3yRp+ENlMOBqQrEADLGOcosx7uVcENcRz29h38KV9WkRSvMrHbRNe0MnbBt
         rTwlV6BbGDoCaxPaJBjHgb3VZx8delW5IdEkVRAn8szUvb0WyOhaRXrHMtULrCWvHYYC
         RJjQxIoqX3Z29mCdcsb4demI25fYf6ENzZ4AIzbl5rGbeZdz73twsIpj7Kf+1f05wfvv
         eSJrPOKZYQiPNBFg9TOGr7G3xFRCF9YkEmz6zJpYhTRfpc3o3DazQUrvvazUHOkiqXdT
         iBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rR0STHLlXiHIZd+v0Hb4dR93CClOct9ZpyTyjPwUriE=;
        b=ViL+rzQ4mH+uSn7o9HPzjsqsbMn3qNoYHN0tk6TQu3qPH1Jia1czk1BUw88GQWu7qH
         Ed79UHC9EXw0DIf4xIFQU2EOFSD30s3pscqdig0Z8SYikjux9dl3Y8+XdKY01KYyoWxE
         dFxOJTBjlIIj3uPQ0fAK7dEyPIvvSxgKQCb43Xymi7q1lwkMU4r/IyEb19zghRC6/pYV
         wfl6jfzL2HDCdiYGf//gM2q8DD+NihPcmSLF6O6yUO/farLa4mjS6TgvnSy4qjVioBZb
         m8PdYwk1E75Pxcm8AMLgTwC4A7nXh6v9eeVpwQAWprkvngGr7+U2q00d9GQ+8VWtqQ/E
         EltA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oLnvJhM8j2ytjj/TFcIbO12Bo5oTc04LaduzmvG20ZnegBGSR
	KYiwHM23U8JY1dgnAh59INQ=
X-Google-Smtp-Source: ABdhPJwWMF94HEAdhq4ydhySEJ0vrT+sD9GSApiU/DzhpyNTpjzfP5L1EmlXwbOt0xgwW9P7YV7Nwg==
X-Received: by 2002:a05:6102:7d5:: with SMTP id y21mr1934130vsg.19.1621244830581;
        Mon, 17 May 2021 02:47:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f7c7:: with SMTP id a7ls3111195vsp.5.gmail; Mon, 17 May
 2021 02:47:10 -0700 (PDT)
X-Received: by 2002:a67:2c57:: with SMTP id s84mr50113609vss.32.1621244830133;
        Mon, 17 May 2021 02:47:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621244830; cv=none;
        d=google.com; s=arc-20160816;
        b=vanDpPJmA2AT8vEQhGpgbf7CMjZP1vBcFm5SLfLkC1xW9HGzykrM2rnXgsHI+lt2Py
         ni9Rc9bhLr1MkQY+1BDKmI4EasiO3vyF/eeNObPCn5JFGCoWZp26UxETPw5trDVpgp6B
         b+fKqpR8OzunBWVI/YCHk3KcWbLCzTGz0WHrIeNW+Uk9bMYVYHqPpIcWV0ezIbfEkCEL
         AcZUstFFksNqB6zjjTdQgMUk8+IjS4J/HbEbx1jGzctgPFVhxMRmt3zbER0JxLs9+1Qv
         XjsAPS3eAGYrh/0LyRixagLFeiNc0oN43h1ePZoLRGSBGbysXsjM4DC+LcVClzPeCyr/
         rjTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=KMwzMFYqK662jU+xIbhBKO27Qw6s56/sWYLIIctF/js=;
        b=bXvdVkbg8J0E+Vgf2fDPRpZHQVQff0/Fo0tcWO297iykEzKyCaFHcQZGiJsxcj/uSy
         kNQp2eCM3cb3s6p+gfbo3bMps/hJ9NZUYx86lqrGwF9CgfDEYM+SiN0E5fM9jouA6YVn
         +cOF48brvzYhrhIqMYwrassfv0ZRbJYgCNEHeiPnwF8WUIGS2Ecz1fTHiZuBcGtSUWls
         WzyYmqSleNNtKW6wYyLc1wBQQynhxutIu60elgobyBBP4WllM3g+5oOWWC/3BcAWI69J
         r5Oh6IsKOA3+AzQxdz1CuKnPRVH/9T56+IJ+a4bps/wh1KHHf0pyWDv5Wd9prHDczgBT
         qbkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id t11si1072372vsm.2.2021.05.17.02.47.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 02:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R441e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UZ7JUQq_1621244812;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UZ7JUQq_1621244812)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 17 May 2021 17:46:54 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: clm@fb.com
Cc: josef@toxicpanda.com,
	dsterba@suse.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-btrfs@vger.kernel.org,
	lukas.bulwahn@gmail.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH v2] btrfs: Remove redundant initialization of 'to_add'
Date: Mon, 17 May 2021 17:46:50 +0800
Message-Id: <1621244810-38832-1-git-send-email-yang.lee@linux.alibaba.com>
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

Variable 'to_add' is being initialized however this value is never
read as 'to_add' is assigned a new value in if statement. Remove the
redundant assignment. At the same time, move its declaration into the
if statement, because the variable is not used elsewhere.

Clean up clang warning:

fs/btrfs/extent-tree.c:2774:8: warning: Value stored to 'to_add' during
its initialization is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---

Change in v2:
--According to Lukas's suggestion, combine the declaration and assignment of 
  variable 'to_add' into one line, just as "u64 to_add = min(len, ...);"
  https://lore.kernel.org/patchwork/patch/1428697/

 fs/btrfs/extent-tree.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/btrfs/extent-tree.c b/fs/btrfs/extent-tree.c
index f1d15b6..13ac978 100644
--- a/fs/btrfs/extent-tree.c
+++ b/fs/btrfs/extent-tree.c
@@ -2774,11 +2774,9 @@ static int unpin_extent_range(struct btrfs_fs_info *fs_info,
 		spin_unlock(&cache->lock);
 		if (!readonly && return_free_space &&
 		    global_rsv->space_info == space_info) {
-			u64 to_add = len;
-
 			spin_lock(&global_rsv->lock);
 			if (!global_rsv->full) {
-				to_add = min(len, global_rsv->size -
+				u64 to_add = min(len, global_rsv->size -
 					     global_rsv->reserved);
 				global_rsv->reserved += to_add;
 				btrfs_space_info_update_bytes_may_use(fs_info,
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1621244810-38832-1-git-send-email-yang.lee%40linux.alibaba.com.
