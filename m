Return-Path: <clang-built-linux+bncBAABBCN3Q6DAMGQEEDKNY6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8348E3A287E
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:38:18 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id h10-20020a0cab0a0000b029020282c64ecfsf19930276qvb.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 02:38:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623317897; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVa8GbDebZEuG/4YK+Qb5fJmBEMeFO4oKrXwKn1hMKKgetoa5jNKcCKFbTRANdZuFe
         bdLNMgcHCHLWpjIBZUJKMnlRmB7rfeCUjC3B7UlI6X0RQe6vMN6hZmlO7hCZWozjVpZs
         ajKETmvXaTqsEI/+dUbIAKM2wQettybPEcstcX+TNRNXha1BZ+DgN4vW9IKFs5myYIkc
         YLIIQLJL3MsjJgCQprHPsFwsCHH5WgM/fyONt2EWc7KQMSIrKg2T/zjkmpU/XvcZt3kV
         jQbCKxZCM3uiS5nGuzHMYEC/s02eA/sgSkkoAKcpbcugmX1+nTgo4amiKsDRjnkMrFHa
         UwpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=B5jbXOOzW1cIjwOg+wof40b42GiUlZSc76+3SHk+5rc=;
        b=HeDSL4ijwuvc6AXuHCL87XP5OGyF9DGHmcQqC95Uc/NtrB9n4PHHh+G1z962h+agdf
         hozELbk1r54Djb+vSHQvyn8LFrdt+G63jW0TjAypzG58WfWCFdXAz8jM7BlRWMW7q+kZ
         yDj+rO+xNHw6K3plEpg2ZZ6CXSnQ4b0g3UwpH8G+JFndLMYEozqMaS2Y8Hzk4xlT98YZ
         JenJD2Yu2XUBK//Ix+sZHH1Ua7+V+Bzr2mGZAzCdNdMkHl4rYfUGOkUHTUzfh11SXGRt
         FfeNb3mUB2WFpmtkv2iMkQ3BaGcskOwcwfuMAcbXYsqjPn00oXV8KblwTg3OlzJK63So
         RT+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B5jbXOOzW1cIjwOg+wof40b42GiUlZSc76+3SHk+5rc=;
        b=V/TquJgGWJyPuGVzweI2egqudGHw3WvqqdTFn03Dl5ZMZY+6+EJVLp81ooMHMoG0YA
         0/Dgh3Zn0RTIYn7EcHrn6qHwJVNHA3+6sW/gjw4Cbmyw7OCZCMsjGqu34mlBSFBxfprw
         zAeb3KvkoU8BB2OZZlJRbCv1e/sy5d/B1JE3oZHdT1uFX2eP+C+T6O2DgS+GOB4xr6A2
         bqr00VfHEOpQkvpAKfgE6Lctr5RiJhWSqm6mlKscqAfir3iKwt0cCUzU0uk2DvFMLi82
         RWzZpDfwZ/zEhj+XYD9C0MMm4T5uJNYPZi8BB8wNeL1A032aFv9mFGif3MixuqtbPeMM
         0Swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5jbXOOzW1cIjwOg+wof40b42GiUlZSc76+3SHk+5rc=;
        b=nBY1dFd9BkfSNELBLRpR1o/5t1jR+sGOPB5AmmofvkLfI21wGQGBkbUkVQXBE922sM
         Gz1ZLffJbh701CQCKhVYyp0frpJsuf/ST3YvWcLBnMzkwMbgDq+M2TR6SKd8vMlLsLVG
         hO7xhOnu+bpBCV8ERkktufApK8zbXVp0rwBAmo0R+0UDDcbyt0BFIBGgQDTfcgWsu5n3
         xguhSdKfzW6YAWERcuMBWcvLVtK8XdBpnGuAdKin0+942SLONqm8UhzzC9ILMxzNqJH5
         LqF0v+vQhGarKrNiXnfPo5D8qTL3kLu34ra49Wko/DBdaJ5kSbNdWHthhOjt39NQjqsl
         dnEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533E9vrkMsIRqTigjSG4q7KIGohAHaWn506bvZTfmVxa2cfcKl1u
	Xlq40W+hnjNv2VaN1N+C7KU=
X-Google-Smtp-Source: ABdhPJy+5wBsdgvsRMTyoL0Tn8oy/qL4fNm6X22295OviA7/hmT7ks+o+LuPskP1PD+gXfwQD3Mchw==
X-Received: by 2002:a37:9ed4:: with SMTP id h203mr3654129qke.347.1623317897329;
        Thu, 10 Jun 2021 02:38:17 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1341:: with SMTP id f1ls2521056qtj.0.gmail; Thu, 10 Jun
 2021 02:38:17 -0700 (PDT)
X-Received: by 2002:ac8:5c11:: with SMTP id i17mr4327722qti.64.1623317896957;
        Thu, 10 Jun 2021 02:38:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623317896; cv=none;
        d=google.com; s=arc-20160816;
        b=zKI0aqvJymtBj4UzAKexK7NHk8yhYThbZsswrLvzxXJBq7q22Jyo9IxxHN37B85Z4i
         jFL7TWTPnpWtSdMWRa0N7J+jdeK1AJUr87WUmfQVXK41y0wMRtYHG6+0E7n0Ji9d2bmv
         9clSsMFcGPri2HYpy1Ls0j0BBHXLITqPbFwC1CWGR8es9be5URbcouBU88DmW8F4JJIk
         6M9akod62WMohRZLcZw80GsBzbXbMdYRsej0JjYbTjPtU5P617AKPCFqvmD7R7kqr96v
         cJZGv3PwlIVTV1/SVA+wlu14uGqwBqSYiWZdtoY04kEDQl9KFUAnazbKaABQNKE7gaCM
         4aLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=Z9lD2mK1fxOHxYn43EI3fKXDClJ+ha97vM4JlKQwbDc=;
        b=ArDs2BYv2aPfXwd9kO5rjj8HJWTDJoZLNPFmYlgIRJ4Mo3Zz0g8/yZLWith11sHVLs
         HpHh8dHJrNvZ4Th43OExTO/epD2Gj5aKyTkjSF/tbEJ+lOYhFoPEEZPzDtf2hKMVPUpu
         fR3VBSPjSjm3uILi8qsR2HWKNGUhY9SDCRMm7F21r8hERKGpFAoOmIvMmbUKrL5aYZd3
         6QxID4Boz/UNGKiISEzYWj8NXi9vR9BMdhgN36+qjNqhD4Ih0KuHSpVVOdyAXUVbdNlX
         /PmSXazZ3MyjR7QW6+pyJQddooTaqiGZmGd9W9cLKkal3+8UDOVrLPzKKLvlLelZF508
         t2sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-57.freemail.mail.aliyun.com (out30-57.freemail.mail.aliyun.com. [115.124.30.57])
        by gmr-mx.google.com with ESMTPS id v64si335406qkc.1.2021.06.10.02.38.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 02:38:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as permitted sender) client-ip=115.124.30.57;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R141e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=9;SR=0;TI=SMTPD_---0Uby7ylP_1623317889;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0Uby7ylP_1623317889)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 10 Jun 2021 17:38:10 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: paul@paul-moore.com
Cc: stephen.smalley.work@gmail.com,
	eparis@parisplace.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	selinux@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next] selinux: Fix kernel-doc
Date: Thu, 10 Jun 2021 17:38:03 +0800
Message-Id: <1623317883-54209-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.57 as
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

Fix function name in ss/services.c kernel-doc comment
to remove a warning found by running make W=1 LLVM=1.

security/selinux/ss/services.c:2437: warning: expecting prototype for
security_pkey_sid(). Prototype was for security_ib_pkey_sid() instead.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 security/selinux/ss/services.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/security/selinux/ss/services.c b/security/selinux/ss/services.c
index 3658488..bb043bf 100644
--- a/security/selinux/ss/services.c
+++ b/security/selinux/ss/services.c
@@ -2423,7 +2423,7 @@ int security_port_sid(struct selinux_state *state,
 }
 
 /**
- * security_pkey_sid - Obtain the SID for a pkey.
+ * security_ib_pkey_sid - Obtain the SID for a pkey.
  * @subnet_prefix: Subnet Prefix
  * @pkey_num: pkey number
  * @out_sid: security identifier
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1623317883-54209-1-git-send-email-yang.lee%40linux.alibaba.com.
