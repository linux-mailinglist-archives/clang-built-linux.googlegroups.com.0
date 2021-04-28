Return-Path: <clang-built-linux+bncBAABBFPDUSCAMGQESEWETAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C32F36D52E
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 11:57:42 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id c4-20020a3781040000b02902e46e29acf5sf8134000qkd.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 02:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619603861; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zi4AoOkCbcG8WDmJmb257/bwmsrmAcl+CKltICoCxbs75IrOS5HLj+XMzPoI3HZeFr
         l1rEpFqtucoS40GHbOp2jJqQAlAW0/UKZulMIx1Azu8FOyn17ryMp6aTMqk5CUup4qz2
         PTqB9S7r2LYFgjb2ybKfqHvlTVEZzCein8pd+OOuPVD//+wOH2cwyMZ6PRVNWs/b9+0v
         i/TMMsOWrSCMtpLGwK5L7HZ2+c1RG8vTvX1oBvPRbGPcczxNkR9MOITNE5C6JHsVyW5z
         5Y/ze47kvtfDwIXGHZsoTXo+mHoBkgavDFN/v+w2Z5ul014oHhh1PhV1YevyqsGsto0N
         /64g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=5qrSO5NPj6hJBanRelbV3uEhwv8t99zEJAXk1B3Z+fs=;
        b=VTnrv1f827XImv0pj1dECko5v5bGwHojjdtlA2t8YxefufzoaojE6vgswJjsNeJtzJ
         dMBz6I1RLho/Ea++tmDf0sVifnlt8XjsnxQEgoNdvFmglQGrxwAK3LtzpUMVLmGdq9SN
         nMAp/Ep/VZZdEksTc3rxu+hHOEANfpeivwy2qo57onAk4kFp3x7/bYa5bp2gSeOgTzWi
         YA/w/GFbqVsJ/t4l/OdYoINsSYn/Jk9FDXruYFNITC+qcBiTtPhBooX6AZLNIadi5PXj
         a23e+4hAUsKScjmsZuYwZoFWia2UWAgh7bCzJoamxAuZjIGrDGUxUc09CuF06yYGXaLm
         D2Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qrSO5NPj6hJBanRelbV3uEhwv8t99zEJAXk1B3Z+fs=;
        b=Y94CyDQy+Gs2013v4Mt2go5xyhaJgI0fWAbdzhWJRr8GfPJ4H1t9CpO4xNE72UXIew
         6BDa+joC5y5aNaIdDvd/1qZxUhriDmqF43VesASsGO/lTK48KvzqtfUK5PngZwo2vHvo
         bg/EE3hfa9vd+V2XiKkHDdCfuv4Aku0gwfskrM8FXHZqdLjbbq0RKk7//pG6WHkfNdA2
         Jo5X9pvATYcYGOkL4uXjqWVSk7ja4cuYjhEnDTRpkIJcgfHsZ7b3gz/43nydnRr1z6lw
         Y5YrKHCuWtW8a0LHrrZLUQWImGcVGr9MUTKCcQdhCWnCfwWtREWn3C9eTrgZmtLHfKzF
         zaLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5qrSO5NPj6hJBanRelbV3uEhwv8t99zEJAXk1B3Z+fs=;
        b=oaUTlpMdEahkdwXUsTqRdgzxMwvPYG46LOJkDfVzmCjJoEf7f0h9+O0azeaKuk4MAe
         y60D2pXLdwJWGrYALLfeuwD6mDSoEAZbzXTf9mZaaQKTgEtnSyGT/Wx1JDMVUhvaT32u
         LxWxPGlLBJtDEHENMQHNHY/BxWJMFnw5cpJS9QJbRhhHf6A9wIs/PxXAtm59keHwHcmd
         88i2HorBEiKKHkoy+YGfIJcc78mrmolSGheA/e5XGA78kK64VKATqvFqbuNRjo0EJk+8
         e9Gg5qpkZ3FJ79W91A9gnKZbeaJKdU4xGRL0RvcOGooRnBx3OGGWRnOAuIlGQ6Y/whbd
         XHIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p2JEmafr9EKo0MAdUBMxKd5HJCM99qYltOQw52gM2uaEPbabb
	qT4TKi8oKLKPLFlK2yXvRp4=
X-Google-Smtp-Source: ABdhPJxetlSKO3ma9JdsyFsgtjJ/r/BWd96HFjee9M75y/zfbdj4UqNIbuaE87HTlltZ/sncm4VqcA==
X-Received: by 2002:ac8:5559:: with SMTP id o25mr25881435qtr.36.1619603861306;
        Wed, 28 Apr 2021 02:57:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f84a:: with SMTP id g10ls6541229qvo.7.gmail; Wed, 28 Apr
 2021 02:57:40 -0700 (PDT)
X-Received: by 2002:a0c:a909:: with SMTP id y9mr28714424qva.20.1619603860926;
        Wed, 28 Apr 2021 02:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619603860; cv=none;
        d=google.com; s=arc-20160816;
        b=TCQo2oCxT1MMz0h2t0c1mfP/o4hAhJSWEt4nfwE3MbX+68KL25r4sxP1YN8DmAsUVR
         EGITr6nss6MVq5fVK2L31rpBKYW9+5MKJLsSC4cR0Gx7u6iZTlx/SLi/rW/GMK42qV2M
         yyI+A+2yZRtQnspEJfTxMDxH9NobyUJXpD2FeCgMJUc4jVrKoiTu6wvUa5OTj6ik6bwc
         gnToKBiB5ometwf3Jd4funK1rDmbPbXDcP2oBczG68i7LySrt0mL1HqsufWReBjZmRXo
         tz+h0j5CrUkSUlaDhHtlf049ROcLgmczFz1OXck3Wh2TdhyIX2OXpmlj+7rabcNcD1ua
         dQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=zwvHUqjKEUUpkWY7KQvU5w7pzi+Kg8wIRJ03VeZStUk=;
        b=TGrvdNIEngvx6ERXBY27X6dKnIaAPSP7Vi8047LdAdr++yUI/3TlWmHIVzhmjwUGXC
         SrfdIetW5sGy3N5ic20Y/bHsbtLiG/3fQFKGQfnMiwrl/+NGL2IT1egU7lKotw3b8DIv
         7cN9Rmla50msD4ScAFhwzdwCiWgw8pOi69o8WxYAQHsjYEQEW4SII/IrrlwqUeL8DpfU
         QCxazGgU7VF+EGiGa25K4lZX0TlqE9JSKcWunmhPTzT9kZQAgZGkw+l+mZRnP9CGJ8O7
         IrZNzZToxGlnbz/CWT5Nrbmz89riLXGpA6FtzEiVAQ4q4tvkUVZih2n6gy82eJ3f1g2J
         GDyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-43.freemail.mail.aliyun.com (out30-43.freemail.mail.aliyun.com. [115.124.30.43])
        by gmr-mx.google.com with ESMTPS id k1si2815419qtg.2.2021.04.28.02.57.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 02:57:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) client-ip=115.124.30.43;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R151e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04395;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UX3sbaj_1619603854;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UX3sbaj_1619603854)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 28 Apr 2021 17:57:35 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Cc: kuba@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] net: tun: Remove redundant assignment to ret
Date: Wed, 28 Apr 2021 17:57:32 +0800
Message-Id: <1619603852-114996-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as
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
assignment and can be removed.

Cleans up the following clang-analyzer warning:

drivers/net/tun.c:3008:2: warning: Value stored to 'ret' is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/net/tun.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/tun.c b/drivers/net/tun.c
index 4cf38be..d92c11a 100644
--- a/drivers/net/tun.c
+++ b/drivers/net/tun.c
@@ -3005,7 +3005,6 @@ static long __tun_chr_ioctl(struct file *file, unsigned int cmd,
 		return open_related_ns(&net->ns, get_net_ns);
 	}
 
-	ret = 0;
 	rtnl_lock();
 
 	tun = tun_get(tfile);
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619603852-114996-1-git-send-email-yang.lee%40linux.alibaba.com.
