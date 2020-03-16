Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSUZYDZQKGQEM5YXTUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A46C187638
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 00:33:34 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id 8sf12011567oiq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:33:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584401613; cv=pass;
        d=google.com; s=arc-20160816;
        b=BknqMLiZnu+Kj/zjdrwyhFig920PrIb1cZE9PVsMsfhwiZIOhADKGYdgpi9sVAWJDE
         GqMBpW+9OPnammfQGztBjb9b+yk8EdFUV4XaWeQQ6JtbCbU1tfGMxw9/r684JHxcA783
         sz8H24xVA+JSsJtVw1Vp4XFSMHXWgnPDJhhBVAU1rCUnN8Z3SoNfyGR3TjWINib/7B/U
         6qcCX3aEGqwQuu3M0TVyQ4k6z41kiQpi5vRLSWRyloRh1Y2Nh6mPmp0kUEne97vl4lSg
         79k38d/CyWForv6RAS6kmdx1B+p7k8l8ARr4zGB9nwU91FVtKjxLkYUoCFuBU0JMQAqM
         o2Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=47PwBU7Si38u9g4GpvRSEsTLwF0d2GttfsqnZiH/7Zc=;
        b=A7vA4DVlnrz57ejelJJp4vdVnPFICX+s+vzSMlTqtokpbv1L48QKtblcfrfRBgTkoJ
         P3KH9OVi+eP2yXhjK8XB/ehnlZgGo1C4IZleGROBR5zJHFRgwb41p1waSkLophGL8DSY
         cves1wZn1u/esIXXKEo75bBroAHkM4y9XHO514YKs0AQLOOqh0OcTzJ3KdMbydW3PDrk
         XhhpTn9T59MyYvB4Y2IQT3xJ030NP/xZ5prxXbIPv0YzN6A99c620VafMsrt9MMVq0b0
         2KcC6QPujjoNmczGSi65d7g+dN14XvIvZns1qL6YFDqllojbPeq2WQOdAd7mp7EcilvY
         h6Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GxKHwKF9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::92b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=47PwBU7Si38u9g4GpvRSEsTLwF0d2GttfsqnZiH/7Zc=;
        b=jO3q1RcS4ObLsift8UMLU5U8MDFgnNmXO5Gc38Al3uhvhdSdb9O+cYuCQT7Jsf+fUC
         +ooRFVJke0JDHtMYNhCJanKUWkg+YfoEu7iSe2nBKHPJwpiwUi7qtp3bEnkzoeEba8CQ
         Qij+w0cnfo3BJrUBtFYH7Dfv/bAJG7C20uN8xXPfmjEO+FrZlsfNsVCzvYr58ahAiiwd
         kd1iVwbrP7JNx/fKXTHi1DQ5ndCt+tNkdv8wucrgjq83KNOGDC6KnzVTjuhO9wrCZyTy
         n5n9JmMcRaZLdjoN4CNIZFvLzKoFi3Ztdf+WZeVQnddKyTOZx8bnSD55S3GTNjKzCbnh
         V6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=47PwBU7Si38u9g4GpvRSEsTLwF0d2GttfsqnZiH/7Zc=;
        b=nSTWWJblElP4hhNKuRN8emfSOp7DKBEpJGS1+dhQM8kmxacD2e2fCTvx+azDy8C2c/
         D0VwjYiEqs3tB1BXkUOh6/Q4VXCPmBdOcjwIil80KDLnEJtur9GaVJm0ZNYBWH9F1dmw
         yGT6pITPh5nvqWvMQFIgpQB6LXxKnESRoWXTStPopFeqDnZAOFZnv7xhs2je7xhq1QeD
         HIHeunI7ntbAf6yk2KVzzLPTuTjgPwnvl/DQ1E6Z5xmq5s2pFZKJ8KhhXSORDJ0vK5uv
         BvdkYLFyw5xv7cCFZLnOHIQi4L9sEcAnQPRPE/ufPMnnSsWqUGCtFGULMioP/XwpCrdh
         6uqA==
X-Gm-Message-State: ANhLgQ1DP2lJCP9rtgIVDsmTjGp70LxYr4ypN7jzY6c3dcGeSwtw8Nkj
	wQE63IG+YkTDBWmbEsQjbwU=
X-Google-Smtp-Source: ADFU+vvlx0d2Ez2LAR+X0/NaUK5zSC/Y4z2lFNnJCUHuem02iom9qQs5bPoyVPCkTfbbrPguhwA/ZQ==
X-Received: by 2002:a9d:53c4:: with SMTP id i4mr1536472oth.48.1584401610926;
        Mon, 16 Mar 2020 16:33:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5606:: with SMTP id k6ls1606413oib.1.gmail; Mon, 16 Mar
 2020 16:33:30 -0700 (PDT)
X-Received: by 2002:aca:bc86:: with SMTP id m128mr1497240oif.11.1584401610619;
        Mon, 16 Mar 2020 16:33:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584401610; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmTwrp7eBUe6w/woNbF6tUNzwgr2A6hyVD8buNjMZNTIxT/8L1+x7uSDwpiegijW2c
         ByheZV3lF7msHF81KWdUbvXMT3pAn/AIeJWsZLBFF2HbA7gLrKKa1D3ni4XbddKbmwdL
         tYMF4U4c3BaUHBrO5iOk2uQG/YC2rD5+XODV2k243ik9iqUqZkp12rMIKfnOendGRivP
         eCYECNYsQgyofHjCXVCda4Qb9XPvfCEuQ9KncKkCnQKdXFakXR+bHKTmLjKBS5iDdhTy
         cq2k18CUVQqmzUC14NWx7YcPgkkflWorXCkkthiLNrzWqVJad9nIp5Mj+rs/ay7f4wAp
         jrtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ka+o6EiNaC9Q528uA0ORRud07w8rLAjCcbVJYtbM7AQ=;
        b=UNsobopHI6h2s1Yix7DRZOHCY7aOJwxta/SXw1aAJhvE+shKZD+Z/ISAp9Btlt4t4N
         EswooSyOA181Uh2aK5ry6I2n3uqjnOS1Ut8ZsovDs6ZU2cNzmABwILzWJBne/sEQN2Cw
         WqJ8heXzKV3bShaxSVdbt5dIkRj6JI6CSzoOz3PTy7U3DUbF1QhErjTcpOao2NrdZm3h
         V837XLYVph9zHNamFb64UtuvWCXz9QkOhS90jLQNElCzD+/Opj4gWnHiUDf5dgtd9i0+
         +5GmvJyE0ODyhqdEvtYMR07UQ2QMks7zmp9fpDfUKVzhauSpwTxQj1gdkjfrjg/H6SK+
         0r2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GxKHwKF9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::92b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com. [2607:f8b0:4864:20::92b])
        by gmr-mx.google.com with ESMTPS id m132si137529oig.3.2020.03.16.16.33.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 16:33:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::92b as permitted sender) client-ip=2607:f8b0:4864:20::92b;
Received: by mail-ua1-x92b.google.com with SMTP id v16so6211800ual.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 16:33:30 -0700 (PDT)
X-Received: by 2002:ab0:4501:: with SMTP id r1mr1885094uar.64.1584401609978;
 Mon, 16 Mar 2020 16:33:29 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 16:33:17 -0700
Message-ID: <CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA@mail.gmail.com>
Subject: help reviewing 32b ARM VFP assembly
To: Kristof Beyls <Kristof.Beyls@arm.com>, Peter Smith <Peter.Smith@arm.com>, 
	Arnd Bergmann <arnd@arndb.de>, oliver.stannard@linaro.org
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GxKHwKF9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::92b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hello folks,
Stefan sent 3 patches to support Clang's integrated assembler for VFP
on 32b ARM.  Would you be able to help review, or help find someone to
help review these?

https://lore.kernel.org/linux-arm-kernel/cover.1583360296.git.stefan@agner.ch/
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA%40mail.gmail.com.
