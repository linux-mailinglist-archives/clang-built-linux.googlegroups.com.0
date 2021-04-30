Return-Path: <clang-built-linux+bncBAABBDU2V6CAMGQEK5ITGMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4F936F7DA
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 11:25:35 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id o12-20020a5b050c0000b02904f4a117bd74sf1577765ybp.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 02:25:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619774734; cv=pass;
        d=google.com; s=arc-20160816;
        b=dP9cRCgVNGIxxpQ203o4UKXpjl7GxlWw6rlX/mjqIC9UWiWCm0BVXpIebpn2QS/BYB
         cI/ov+4MC+25Z1WcKOAQCQmzt3JwIxDVO8tFam5YBBgnxJK29YQW0Q3jSDVYawXCQyVR
         d4MM5bift+/Ybks7YwVP3vCzh00jA1+g0DOFyyLkegsPUMkM6AlzFhLymm4m6tXdo5cB
         LNGxQSTp7KSc2Y+ONSWvHURbI4g3OMx2U3TS0wR3Tu5O2mTKuYbk5yz2ZNHFVaxnAyWS
         Dql0omjvIgMhWGbtrTp2ARU7ClEuQX4Kl19e2coPcRq2hzSuheLp/HSFHnB5SCjGrUdT
         ecKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=8wjx+cTLQy8pdCzQZP+gA2c+Kp5ZifOkq5QT7hafX20=;
        b=qFU2U3XNgr3HTTJhbx6IH3Dj5t+9eoqDsdX6F4VWdBz0Gg4Eo6ngTWyAhV8L6n/ZaS
         W8uc8eiXcatPrWOhpHnwmqvB+3uLE1Z7DgJu2OrPP2qLYC3RPFD5fLKBhhKFGkRQi0QZ
         VH8emHSHMHbo4jtckWE1hcKY2kzjZMQ7+RjzUkRmZyz5UL9PuRoQXSdcptqSi1rDvJNY
         Gsi5UYrMg0sa+8JG9pqZNTT9mtnkGoEaxy9t6RXOqRkLKzRND9wOt2vI2eYZvVna32G6
         14DP8Amz7e6yqbaKVZydfI/w0iD7/+uCdx45mQsMr5bxMehHgoyL2bkHecL4zdYBJIiV
         sU2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8wjx+cTLQy8pdCzQZP+gA2c+Kp5ZifOkq5QT7hafX20=;
        b=gui0JdG48Rce+ebt2RIc1xUcxTAUG8CgrMWZeEe/1aIn+LmrJoCGibTf19oM7vsbXf
         mclPldHFfjEeAKEGYNEl8zXNC0dMbpxnktCBcz7hvn5gyn2tiLDtFRY5WBnbfCORaYLn
         a8t7riM9hPjqexFNZY8/DbWyEzqWVwGGexWorsVII1xIJ54DKDNr2fpcFJf1cDAZKYrc
         jwHzE4evGJTi5TPCH6PtfrVu/gK62J2KQyj9Vw+6Q/vm4JOXM0OneoIPtmNv2xSDxgf7
         vg5tz9p2lKiO6Z/jNUooykFjlwe9QCspbyzzSii0PuKCyEFKvD35vgDKt5xiJQfSVWwF
         8MXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8wjx+cTLQy8pdCzQZP+gA2c+Kp5ZifOkq5QT7hafX20=;
        b=uJQ4mdfnYuQ2hQsEqpIsLywglRxvqCfwPGbor/bVewkczrHJRzLU8Pb5G6w6Lfaals
         meEHamhDw3GLuKAdQCBhIZ14l3ZIN4dd2Z30eYxw5HA1jmdnk6m1SH7K5lPGYHSkE7Vs
         CqwYt04QHkH12JTrrcuEk2pk7oO/hTxyHnEONnrgvUFHbb3Nhd1mpYkZS9u1H/l6NmHN
         NbdiREUfjnrnDEfUM9fMOX1pmhGPC+O9pfGh3mqzrMyryUbrppwDEcREsvvU/tAZn4Su
         8idRWhJCvGqRTAiXxHjqlKz9N1jZiZF5+EtrG+O3G8N1t7uNXuzgzXzeKQNKpUPw4Q+O
         i3EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rj1i1FEjXerqocyoMlCFv5zundstZ/LAhnmg6/33w/njY6bru
	jNV4zhDOk/0CXX7uFEMveYY=
X-Google-Smtp-Source: ABdhPJzrsIY9lHUo8Y0r2XjLrhEGFSVX8IqlQnIgVxYNhidnniTENwoa5vj/rEVTd2wJXLT1C3tiPA==
X-Received: by 2002:a25:7004:: with SMTP id l4mr6097856ybc.304.1619774734163;
        Fri, 30 Apr 2021 02:25:34 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:44c4:: with SMTP id r187ls2940776yba.5.gmail; Fri, 30
 Apr 2021 02:25:33 -0700 (PDT)
X-Received: by 2002:a25:d390:: with SMTP id e138mr5918289ybf.142.1619774733714;
        Fri, 30 Apr 2021 02:25:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619774733; cv=none;
        d=google.com; s=arc-20160816;
        b=EWM+ZvsXGwXXBNH40ROfOA3bfEJaRQysQ+UHbr+rUE0Tuhokte7ee7THGARFovdIkF
         4UJmd07jA5CCvEKL4nOGIbKEgC82MywNlzB+B0tJjhPzJG4xFlR/9Ldg64gQAh6bNCXV
         sVU0POPA9SHlqNmYCCcpXNvvcxEJ2edpE+VP0PExFQiU6auQJqS+3tmvGP7Dzz9GGVSS
         clPIlRZ3zTw8rD82euKhuTO4y7X7Cgl3iEzRCj3+iOdlyza09m2EESA0T8dHDvQjDX8S
         97eCOfoKLIKD1Eo0df6c3rRvkob6W5NdCOYEFwc8GD9FWTP1OicBIXYo+HpJfTOdFmOc
         TEFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=0/9fdRVpp2Jkvoo0cSmWthVJN9dquMr4vuo4TjGerBM=;
        b=k3cVu8aPL2rLprbz5mxlUylo/T0+eJBjSDhGMlZxddUE4tLMDzYiBvdYy/3dNbb+sQ
         xkZIOHZKejdFQZKfzjtiNuVt5vDUkjW8js/t8ZIn/F5v+k394TsLESxrMVU/1iKWmT9G
         v24W6EC+pgOmthWu0gijgIHOe8PfcH4gye4p9TGjtZ6rgxAmwC3uy3Mj1/vtOoZHQP5C
         WUbCD3wuqeb7fXLyJ9UPMh6dJU8THf0s0V+FCv8iiu5jhW0sFB8pvq8Sp/rzOPJgY4cc
         sbbGwFC+a+TzBuat9uenPwJi9MB1GLr/nFeASJLbAxbGy1QAg/PqjcW11ryfPX6uPPHH
         HTMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id l14si559562ybp.4.2021.04.30.02.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 02:25:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R191e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=13;SR=0;TI=SMTPD_---0UXFfKUo_1619774712;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXFfKUo_1619774712)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 30 Apr 2021 17:25:13 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: pablo@netfilter.org
Cc: kadlec@netfilter.org,
	fw@strlen.de,
	davem@davemloft.net,
	kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] netfilter: Remove redundant assignment to ret
Date: Fri, 30 Apr 2021 17:25:10 +0800
Message-Id: <1619774710-119962-1-git-send-email-yang.lee@linux.alibaba.com>
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

Variable 'ret' is set to zero but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed

Clean up the following clang-analyzer warning:

net/netfilter/xt_CT.c:175:2: warning: Value stored to 'ret' is never
read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 net/netfilter/xt_CT.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/netfilter/xt_CT.c b/net/netfilter/xt_CT.c
index d4deee39..12404d2 100644
--- a/net/netfilter/xt_CT.c
+++ b/net/netfilter/xt_CT.c
@@ -172,7 +172,6 @@ static int xt_ct_tg_check(const struct xt_tgchk_param *par,
 		goto err2;
 	}
 
-	ret = 0;
 	if ((info->ct_events || info->exp_events) &&
 	    !nf_ct_ecache_ext_add(ct, info->ct_events, info->exp_events,
 				  GFP_KERNEL)) {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619774710-119962-1-git-send-email-yang.lee%40linux.alibaba.com.
