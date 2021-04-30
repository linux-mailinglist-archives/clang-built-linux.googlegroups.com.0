Return-Path: <clang-built-linux+bncBAABBNUYV6CAMGQEGW5NG2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6F236F7B8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 11:21:59 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id 3-20020a6717030000b029016d08542c7dsf16500998vsx.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 02:21:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619774518; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ydnf+yFRq9oh6aVswB7ND1LepX3yMRfkxpAVuQygUDP/WJjoaOgFMencjkZDcVEmoG
         09laJ0EVdEl537thJ5DmhG/GReHw6NbWX6yEIYSEUSaYdkGefkTvHxo6TnUHOX8IIYOj
         nfQ7HjYb/621dOQvtY4m4xFKAkvabpcSFG29+RyVpFqDDXXI9Rk1Dq2KZMeHWvPwF3pq
         5/yBs8ErOI1Vcuc6WAfpTedfngI63wwp7tBGwj1CjZM5qlNDibza3s/hJ2yMd01+P9vx
         e3OydBKuT2NB/fVq2dlgsbu6hyFpbIHgNWnM2Tmh9CcGrppmnlR0j+yJCcoJU/bi8ZgF
         w68g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=hOzzg6mw+3t9Za3EiJG3FW/DtcJXcFe3pFdNr/cywo0=;
        b=bomRdi4guSo/kewRTp+50IkQ5u8+DfhO6V0p4Of43SrHz+IW19QWJF6ICj8QN+c96G
         A8+4dcsMzfNDBv8Kl2ClFVV3N/ylC8ollfVlL9V7XWo0+ZUxLux0kUab3amjDB4yQ80y
         c+fpVhHiZDoMqKlXbIOCY3QVUhpR7S+VaSB/frTpTr+UFyk8jbAVqUcMC71HgWgfI/lR
         J7Wm+rlen2ygVo9XOGQ9cd/1198qERgNtSAJiWwdJh+ccRCFVrnWm/Ptl5iiqGyZ5x+L
         sRMmC1fS20nBCql5JDEeGMcb/z1wmzO4vPQKuHXMJn7BVIkfY4bX46/iVZmITlNOoslR
         blmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hOzzg6mw+3t9Za3EiJG3FW/DtcJXcFe3pFdNr/cywo0=;
        b=cF55lsMeSwAvOoCJcefyYEAMGigY7uvn21w6488fHyYLp25UR5EM0PibJ1oYnLscK7
         dUUx9MSc0Dy03VKzAua8Km0vYXccWHGEj2QGCNdwCeoKcFp0Pg5Kl45GCVsi/0tv+Dbw
         xucT0C+OFs/4xNGhHgYcJBMmFV5KloiY/iCWiX65VgCbF2L+AGzWk8uYYay3C+wt41/e
         9uHv1+6rOH84fn80cmy4v8sHZ6DdH4E/Nq+53mbzs+o7r0XnR7KZRF308SD6h4EVOfr2
         x45JMMxmsLveYW3hTQZCff6J+hoa2DQMUYPNEQTid7mzjZ5qY/88CDDGC955chgzqYK6
         Vx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hOzzg6mw+3t9Za3EiJG3FW/DtcJXcFe3pFdNr/cywo0=;
        b=lyDbxgZ5j3WpnjFGOFvJoJe2A2rcSMZce5B8YhfEzXTICpP9qxF1DY3xV4KGZ4QjAx
         NYTmcvCObOkfc7j2ZB6zLAEZhgfrHyRdIlA7+rXKCvFPYT/t9C2vcpBqfwpVjz3ieAe0
         HcxiutIvPu+mdGWsFcVaiHW2XdcSYLqYm3/wrboYVw+SmwF5ZcRPdJaVcm57pipNTT1B
         K/Z2WA+esKPFzDDrr+d7TJq8QPlYoftuEiQCWQHqi+s30CnwX0VqG09Wu4D2fzDqpp9T
         RoEkCW2CL8w3GCgxygeZX0e2icHTcpTTXa3NYQueyn3zbXezofRuJQMP2JX6x2sJn5qg
         M7IA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531G2bO+EWMvfhtRYnVVRkbxvc1K1eBLGhyBuex6JIW8aBww8piZ
	e22TYQlOmIRowVVr/WWva2Y=
X-Google-Smtp-Source: ABdhPJy06Bu/3c2zNVf8ga4uRzT/414Aj3VCIWOFrfQIlisgmvbcCulOXJCAzliqNf4y1Qe0GQAZ0w==
X-Received: by 2002:a1f:aac2:: with SMTP id t185mr4304794vke.1.1619774518794;
        Fri, 30 Apr 2021 02:21:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f301:: with SMTP id p1ls1092537vsf.10.gmail; Fri, 30 Apr
 2021 02:21:58 -0700 (PDT)
X-Received: by 2002:a67:2fc8:: with SMTP id v191mr4702427vsv.54.1619774518340;
        Fri, 30 Apr 2021 02:21:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619774518; cv=none;
        d=google.com; s=arc-20160816;
        b=KK+BErKXB9T+SZeErRRjSZVkhqhswwp/GLcwyESsO/uBiu/Us/ZQYUQY0dph+m6zhC
         emU5ayoFQti3eI8ijHK6g/8NRkXNSdP9I1jUiSLOyPc5TIPLariwEo13/sreQIp+Sh9x
         4gtytrC6y1sKOJCCunZIPx5Il99HkbrUeEc7zJI2DSbzvIbujHOr3i2iRlE4Mq4WIZkz
         mmffiep88osBnhJHQXc8VgEtVg1eVRkbZgNjFP310xBOK2srZw6DfWTtPwA9yuZ4QDdt
         ShTWE2TbtrfH1NFoPkCIy5SOM08DQd/KZpfAyiue1PuxTZRlXoyC1qjRwO5n9htJQXZj
         tepA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=rMnvzFIQ1wCnBlbWJ9OfICxlXORds/XQNyZcZxZHW3A=;
        b=rZihxJnP+FLPvJSNSXPFQcv9ZJdgEMaAPILlu01SLUo/NQ/q64PYnLw0wnJ8EJRH+g
         sIl68TdclQO5LxXglvalgyXhNOkRIvKDZG/uKC4+yP+mS2Ko6st8Yag6FB4yVc3U6JAF
         FOcQHhHfPB2nL2tMvIvzzTuFzrbZHwLaS2qprtOAXPKmfJPhLGYVtCJZAn/lun2GGE7N
         fDCYsgNdvm+GspFChy2uO9t+ZyW1Hw5Cy+v79Ax/q2watmyXVsTITjl839lCJfai/9FP
         kQM7tlVsJItiDdSr6jd8ql6QDHtfD+LP7HQ4HzCtrkl3yf4uFe4+WLf+n7SfUyoCGSvk
         Zl0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id h7si422759uad.1.2021.04.30.02.21.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 02:21:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R491e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UXFfJog_1619774485;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXFfJog_1619774485)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 30 Apr 2021 17:21:26 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: johannes@sipsolutions.net
Cc: davem@davemloft.net,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] mac80211: Remove redundant assignment to ret
Date: Fri, 30 Apr 2021 17:21:23 +0800
Message-Id: <1619774483-116805-1-git-send-email-yang.lee@linux.alibaba.com>
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

Variable 'ret' is set to -ENODEV but this value is never read as it
is overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Clean up the following clang-analyzer warning:

net/mac80211/debugfs_netdev.c:60:2: warning: Value stored to 'ret' is
never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/mac80211/debugfs_netdev.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/mac80211/debugfs_netdev.c b/net/mac80211/debugfs_netdev.c
index 0ad3860..f7aac89 100644
--- a/net/mac80211/debugfs_netdev.c
+++ b/net/mac80211/debugfs_netdev.c
@@ -57,7 +57,6 @@ static ssize_t ieee80211_if_write(
 		return -EFAULT;
 	buf[count] = '\0';
 
-	ret = -ENODEV;
 	rtnl_lock();
 	ret = (*write)(sdata, buf, count);
 	rtnl_unlock();
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619774483-116805-1-git-send-email-yang.lee%40linux.alibaba.com.
