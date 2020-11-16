Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBPVGZD6QKGQESLDBCHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7242B3CB0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 06:50:55 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id z13sf10651129wrm.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 21:50:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605505855; cv=pass;
        d=google.com; s=arc-20160816;
        b=vLR9LsKWfrWVnPv7MyM9KTZCZS4XgPs/ku2mnFUwiZXMRCwvR5Sz8Ow5HwZvmqv748
         cJFja5g5vyYZCBKDtfLPOKSLSh7uzY0WWUAZoIxzq7zRmpO3AT6/gNHcpXyJ//ZmiSa2
         ZDX6sRSQW34aqJTNx17Mm4ATMGDQY3ZaGDBzcLIdm4VvC+60hu/tZnfqyVUMMK2TCdUT
         gh6q+kqSwNXT5InATuxArgLHloH6NyWoP2VLUfUAYjEf0FWt5GO+bqZArAPc6Ca8Hrb3
         3AgWckyi46hG5x1gbQ5GZAoWNG7pTMjMkEav+cegAFR9VpAl0KKzcjCJDEdjyBBIoJ9M
         Y3HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=6Z0O5G5zpT2AX7V4Yclx97Jzszlmy8n1EVigZbxz5Gk=;
        b=vr345ekEcluTR97Q8kxG3ueJVKkrQT41581LT4WSRTaurtnVBeQl0GaZ1p+4+MmBXI
         AtqE+LCzE4QNnMgCVN3m0I9JJzfKLuSdO3VEQza51OFTg59KVuHBhFTn+IIeqH78Jo+u
         AXTmQ3IznYbRG6NdQlALPvsmAxXDclnwW25xXnLFf/65/UkEH2bYG6FxNT/1OKgLTkzA
         NSAlccQ7JBTmcUKVqVDLhv8O/mkxDTT/HcS+iReMg4PjheI97dIPg654QAPrCH1+A8e/
         bF19AO0UZBhCZ+uvcoGEYmzWSplCinHNwujfZZsECKoiZ1yjgwtHSffAUY0wY9RfeN0h
         RcIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l2N6UPXz;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Z0O5G5zpT2AX7V4Yclx97Jzszlmy8n1EVigZbxz5Gk=;
        b=h9aR42jylW1YlLhy8AlCSnHOcZk08Eu2f3vDsrAod1N/IgLZ4aweXSyxgtZMmfjRAg
         nkVBYd8yd12VBUvjvIsHHjUSALrvofvDxAhdd6f3KxTUOMFMWQWDchQgVeTrlq6phzH4
         0olFtPZLKWjN8P+6Aee4CEA1Wu/S/9s66yqBk6kzBJxVn16Uk2fxs0odXBuzETTIJBgi
         7TXPVVvwqNwgzVcl3z+9htf7nLrqEy4Wxp/CqbW5L+CvdCvuv1kvxH53d5MW/LxmuTRu
         p+xObt+MPzu5520AiVz7C6cD19OM3Qyw1H3BRUxEJ3V9JLVCooSk37Bq+DS59O9Tq+bX
         ONDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Z0O5G5zpT2AX7V4Yclx97Jzszlmy8n1EVigZbxz5Gk=;
        b=no1w24wGc/CkjizGZvvvgaOHbckN3f4fI+ANAM+R3DqFAxC/hMrdTWJJrzc8xftgkO
         vzat2eB/4RW5iuTfjI0+33g+YFbFh6qd3AMYQ94ItHObLS97yixfOrf4eH7jndGYmyzs
         DpJYtKSIDDaZ4MHu6q9TUCKWWqlfIye6HXhwpeJRbBsBQ2MCIKjlR+AjPPTxnnQHAPtO
         RJqOyLXYmhkTBJFu1O0H4kE1KZx2qW+wYdvR+TVX/wXko6sVKO+daZKxPvXSd9hv67f/
         tVVfU/Z+bp9+5Go0T462Nykv0ExZfegnVQxYoBXTn4sGepZQkfnfOHxAHlYvo4Pgtle4
         qOQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Z0O5G5zpT2AX7V4Yclx97Jzszlmy8n1EVigZbxz5Gk=;
        b=eMo4XueOOaTLKVCyjU4KXpMIHr2qVR/YvFYNBv1Jg5VF9E1c3DTd2Aycs92s5Gy3Xw
         +9h5S1rdzQGtv4LS9zE+hZutDcknSsdg2UZhvzDb4taGse5EVvztk3K1tGCWklHS2QhR
         4PmOdsfMjDb3HK+BhIuYNtVSB6f+AsgVOlPwd6ZaufGU1k3PGFIJdJTz4F3wSEk+CzUG
         xmbI5www98oTbdD5atXIM8DZgwOYQ1UM0kYjMwYomJcVRoHsmQO3+vxljTIc8JWlVEnQ
         zR1qcppSs0dfvBtBZuz3oAHMVnEFk0tbrYSGWf4L7rkkePumxtnJVG/mXNGVMf2TE6iP
         z6+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531A6NhqETkJo6arUqBlm87xAH5v2BiKyaAFIotVMKtY13C7TeO9
	/faBhRjsoTCZStTYgNZvJhQ=
X-Google-Smtp-Source: ABdhPJzudzMjzeri4fAvfD1DzmqeeMCBWSLCvVqYVoyCjqXzR1zbUjTd+cV77e/WCDzCgdEVfjzWMg==
X-Received: by 2002:adf:de85:: with SMTP id w5mr17680227wrl.90.1605505855186;
        Sun, 15 Nov 2020 21:50:55 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cf33:: with SMTP id m19ls6010160wmg.1.gmail; Sun, 15 Nov
 2020 21:50:54 -0800 (PST)
X-Received: by 2002:a1c:3c84:: with SMTP id j126mr13985775wma.151.1605505854221;
        Sun, 15 Nov 2020 21:50:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605505854; cv=none;
        d=google.com; s=arc-20160816;
        b=0P5qzZGB5MdwaTZbF87uyxP2qwVC4KFXbobIUI7zGLBWF5a3A6n8i6TeROgJAAMtur
         H3KDPXK/rm2Y3ebOAIZJHV7kbjsBR2DQnHkmKE7oNH9QQ8nKEH70IhAE7MPE6Rb/l2DA
         WNMemFNFp3CWtEDOGx1wUof0zYQa7dGyL2lSHs7D+T5PT11gGUk4bGHqQTYTsyn9k5a2
         aJzPS1kKEj8+9sNSgm+tlGPVWX8InOhrtY1a49phD2SMIYSgsL3fSQnefJssJBVKh+XT
         WTVu/4BuaSKk6+3F0LMQrZbYCt+BrjYyt/WFBBeirv8D/uDYVx+GIycyu4eDXa1hZ27H
         96uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bMCt60rqT+zbnmmu8mIiXqNzcowO0BqJlZFilJ3Doeo=;
        b=iqzhrjvQTvZI0NmqzMegZ2cJ7DOwB3diH45EpfOLNweJs6AglCtXDbW/83Dj3vFefN
         4rIOkew++0GXAmJ5uof6LcZ6xuKLHe/Wzo+Qtnh2Nvs0ve4F18qKkUX5I1q+Mbb5ceVz
         tsOwxN8RbdGj20ITgEZ0SouNhNAT3XpCUpVezM4tBsc+vLGsMusArgiRThSG6xQcBEsp
         4jMZ6DvhoFemm6nzeUpAtnR5Uj8u1haRlnBVWbG2w5BbMIQotMKlxV7VsTzHT0rG7mP1
         hjVFcVq1QE6FQz/I1bRploR6J4yS1Pk9parkE9W62BXIZ0t/qzf39ZBHCFWLJ6c8369d
         v8tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l2N6UPXz;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id f18si459995wme.2.2020.11.15.21.50.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 21:50:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id f20so22703305ejz.4
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 21:50:54 -0800 (PST)
X-Received: by 2002:a17:906:3294:: with SMTP id 20mr13143545ejw.239.1605505853911;
        Sun, 15 Nov 2020 21:50:53 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de6:ad00:939:47a9:70b9:fe5b])
        by smtp.gmail.com with ESMTPSA id h24sm9907059ejg.15.2020.11.15.21.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 21:50:53 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Roman Gushchin <guro@fb.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	cgroups@vger.kernel.org,
	linux-mm@kvack.org
Cc: Michal Hocko <mhocko@kernel.org>,
	Vladimir Davydov <vdavydov.dev@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] mm: memcg: remove obsolete memcg_has_children()
Date: Mon, 16 Nov 2020 06:50:43 +0100
Message-Id: <20201116055043.20886-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l2N6UPXz;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit 2ef1bf118c40 ("mm: memcg: deprecate the non-hierarchical mode")
removed the only use of memcg_has_children() in
mem_cgroup_hierarchy_write() as part of the feature deprecation.

Hence, since then, make CC=clang W=1 warns:

  mm/memcontrol.c:3421:20:
    warning: unused function 'memcg_has_children' [-Wunused-function]

Simply remove this obsolete unused function.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20201113, not on current master

Roman, please ack.

Andrew, please pick this minor non-urgent patch into your -next tree.

 mm/memcontrol.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/mm/memcontrol.c b/mm/memcontrol.c
index f95ddb3e9898..d49d7c507284 100644
--- a/mm/memcontrol.c
+++ b/mm/memcontrol.c
@@ -3415,19 +3415,6 @@ unsigned long mem_cgroup_soft_limit_reclaim(pg_data_t *pgdat, int order,
 	return nr_reclaimed;
 }
 
-/*
- * Test whether @memcg has children, dead or alive.
- */
-static inline bool memcg_has_children(struct mem_cgroup *memcg)
-{
-	bool ret;
-
-	rcu_read_lock();
-	ret = css_next_child(NULL, &memcg->css);
-	rcu_read_unlock();
-	return ret;
-}
-
 /*
  * Reclaims as many pages from the given memcg as possible.
  *
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116055043.20886-1-lukas.bulwahn%40gmail.com.
