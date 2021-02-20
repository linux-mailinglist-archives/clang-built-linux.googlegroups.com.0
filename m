Return-Path: <clang-built-linux+bncBAABBJFEYOAQMGQEZ2P65FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D05CE32049A
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 10:11:01 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id w200sf3493377pfc.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 01:11:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613812260; cv=pass;
        d=google.com; s=arc-20160816;
        b=yu3u4n1YmfQETGgL8Bzh8Nm4+2nfuuff71YfiJvy+N3ZckwO43A9YzsL79CsrapOv0
         gW3h+056WHdGOgp9ABmiQphMsPqY1kaa0GdwZyQuz7C4z5HfNHs6AB71XsNQo88KGYN1
         d3+J+9aEYmN4pIco28L7grMO5Qh1zx9vVTq0UW9s6i8f8nDhwMNaZXvMyRnPGTp0pZF2
         PWGmIylQGEL6/M6N7GDd0HQboNblpPLKMX7kn62PD4ydaEYetwjHqhoCp0eNO9sqYgCS
         yQymL99VX2mEA1FaEAqLgPU7NaoZwfFaFloOl2880S5zrJWuHAtAZ7osaB0gkckvC7Bk
         PWVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=k1ZDaMOYDENujg4VOAffKuDLIAAdOa1GiB9vReYbAms=;
        b=fyvDoC23/oL78YPnmLQj5gzg3hjqQg99hzqMm+2UV9UGYTUR5Mu09JlBGtMe0s6DZv
         yDXWwN5JIPxzAm5G/LHcSfOiZoNfPm9qFB51oXQrmR0VokyKdp2qkdimkXQiOkDiQwUH
         fO4FWL9jgtvoxwAlZDH8RuoOgbOGGrudH0fzpcG8UpziCcKgWLVewXEZNJNX8lJS0wxk
         Hdt8fIUKohXQFG9xBbsS+oaMbauR2LzoQdLxE4DnEI60cblPirDgJIV3Oq5rpfuIFt2y
         9fcEgj/z3j/MbthRMbMNVNS727KLTh99QTDFKbw8kpNAuqcA45FfKclRDyr2XwljM7TG
         cLFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1ZDaMOYDENujg4VOAffKuDLIAAdOa1GiB9vReYbAms=;
        b=lFI4bosbD2l0Wg31/+hVyJCxvhojgdGoLzlra3LaXtZqXGu72hBZJMN0B1Hs9Gna+/
         32OgUwDAzdadTYmAfG7QOTIlVv0wXNhdwAuh9HVDb0o5n91TTX5BudBdZxPe0eyUEF+G
         UbHlln4mUUaWQyRyvR90WeJ+Rn4oDG7jgNCfN0vEhGw9hejV+uIVE/dlcKhctOVH96wm
         yLVqtz3mcU6Kc9z7Z3KUtW0uhd7bp2JblGQL+6k+uqLedWV0N7VJo8swQLtupXHfjPae
         crffT4+qikkg8lCw3sDlx6D1OW26QpjdFl368ivgn6vybNCrzk2OExwN9aLZVqFoPhd8
         lnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k1ZDaMOYDENujg4VOAffKuDLIAAdOa1GiB9vReYbAms=;
        b=gyYh7TyQNBXko8Mydt0Ma5YACG/iETo2M5auox852kWYd1dN7FR00667Y9LRdPBuaV
         F9kmYLRj8iB8un6EeZdNwaMpCrb5i0Eb0T6DPVr1KFJXyIDu59y27IO3/cRH6Yrs7GJI
         ltyYGxZ8sC5WHDYuhuYeNjmkPE04M1/wCB1kmROcg49FA7FiAynyc64s/MvoL6sSBS1L
         zk6gBN3ykZXI8ME/5mSsc9XpUVeLz1wHk47icToxfuhpML4WvZQMpig6vRrxXeznUmwD
         YOzzgRQHVo8Hp8dpbog/dHVlozJaVzdIhnq/cXHrGxndjUYgm/bT7etb725hejMD/oMo
         dong==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sS6wj4JMbCRAQ5j5AWYXhhxywYopFwPsyCcxW39LWmuaC0dKb
	Vxm23jBPOXSnZ3MGPfdHB54=
X-Google-Smtp-Source: ABdhPJwtX/K2Gwi5aGSEXWp9IBFNuZaIemSpiW0i4+fhOb0/kdqjDCmJPU05ugYUUf4xwwFuIMi5hg==
X-Received: by 2002:a62:f942:0:b029:1c0:aed6:fd57 with SMTP id g2-20020a62f9420000b02901c0aed6fd57mr13673574pfm.70.1613812260312;
        Sat, 20 Feb 2021 01:11:00 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0d:: with SMTP id u13ls4799120pfh.3.gmail; Sat, 20 Feb
 2021 01:10:59 -0800 (PST)
X-Received: by 2002:a65:6243:: with SMTP id q3mr11904612pgv.246.1613812259784;
        Sat, 20 Feb 2021 01:10:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613812259; cv=none;
        d=google.com; s=arc-20160816;
        b=M2oU+z7jc0i49o/Rki48iJ9XNwB2AMJ0bvPyFRidJomD5QrWCO36Zk9t7krdzQs7t2
         2iLiyIF6H/S0eskvv6VFEstJaM7fgpK7s4p9BkyI/L1hFV1qljetSKOU6qd7jFe9UJdh
         jWstAcOnSl+WpdmP6V+orEcvEetdOUKFzm+YiOP9TfJepKziTe62yS1jSjOV57nbdY5L
         M+kPNlSwTUDDQj9UZRxvpu8QUh3Zz3HMNDwdLn/4CWLGzBstzKXOkF0MDg/x+QDOSFi5
         sdQOqqGIgG5ftGpbMzAZS9d1n6lu7/nrn/cRt1v0DdemuJYzvj4GSB5j1YsnQ2YGTD7Q
         hAwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=PqJoNjcNwRX3u0+kM4Kn2OU0eyEqrGmxP7gb4rjvd7Y=;
        b=xtqOuQgnKJQZm9/nZdqr2JeXoDyt9SETa4a1NCgq2Y+niKLP/Z4/5QcvjGl4nzVqGC
         FRrNmOA/sWeQjtwntb/J9eokBetxglMt9224qOoJDbGXGootm87+UXKQK9Y7zEVPtWnd
         F/6YmT8hZifW+MKWa39EWP+JJ13OhiYveSHKPDKT3nDrt4ZEOnRx5bXW+Uso22n7IWKx
         13bja1WQBvnN5PSzIRzaMXE9cIcl16bN076IeuocRxB7fG2rC16nVwRWbgWZG3zaPUeA
         dWRMh1FQEcGYPup0AczjFO6T7aT6ZQjBnKJzZnJuCafBFJpKUvZIUYvxasbpZ/P0Ev76
         57Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id d6si562386plo.3.2021.02.20.01.10.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2021 01:10:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R521e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=18;SR=0;TI=SMTPD_---0UP0VSH5_1613812248;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0UP0VSH5_1613812248)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 20 Feb 2021 17:10:53 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: ast@kernel.org
Cc: daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	davem@davemloft.net,
	kuba@kernel.org,
	hawk@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: [PATCH] libbpf: Remove unnecessary conversion to bool
Date: Sat, 20 Feb 2021 17:10:47 +0800
Message-Id: <1613812247-17924-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: jiapeng.chong@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jiapeng.chong@linux.alibaba.com designates
 115.124.30.56 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Fix the following coccicheck warnings:

./tools/lib/bpf/libbpf.c:1487:43-48: WARNING: conversion to bool not
needed here.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 tools/lib/bpf/libbpf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/lib/bpf/libbpf.c b/tools/lib/bpf/libbpf.c
index 6ae748f..5dfdbf3 100644
--- a/tools/lib/bpf/libbpf.c
+++ b/tools/lib/bpf/libbpf.c
@@ -1484,7 +1484,7 @@ static int set_kcfg_value_tri(struct extern_desc *ext, void *ext_val,
 				ext->name, value);
 			return -EINVAL;
 		}
-		*(bool *)ext_val = value == 'y' ? true : false;
+		*(bool *)ext_val = value == 'y';
 		break;
 	case KCFG_TRISTATE:
 		if (value == 'y')
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1613812247-17924-1-git-send-email-jiapeng.chong%40linux.alibaba.com.
