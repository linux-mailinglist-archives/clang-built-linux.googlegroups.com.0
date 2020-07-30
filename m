Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM43RX4QKGQEDI4HAYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 923AD233B85
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 00:46:12 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 83sf7570454oie.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 15:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596149171; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pu5htcZqgs8m6Q4bKsd3DZNifycEAoMmhLBZB6bf50SgHA08bErK99H6E6yAV4d5Yh
         x48eijCDykGtySS3Rzs1W9xI5a/fQ6671z7WyVT8DADUE98ysJutbK+CV3NZGFWfzG2r
         /Uk3btiplX4nR2VxDJd5VSVz9HRS3KoHQCeptruc64cFIRLJquBRIDOzhp0F/JMRMBhw
         NnoBtfTn1a3nV64R/i8yLH3ORTENmAg45SLMXpRuHKpZTi0qpxVEa/5tsWIjH8snvJop
         Mb5pF5XYsw7py2QPJWQdVwWvmPRlyLnSRb85exJFjVEJO0sBkBUNAiTufUgXxPv7pDDN
         BhIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=82Jkq33QJS8joZEa0vz2C11TsQhy8lK9c5UqTxxCCeU=;
        b=C/NWOHlk1VwdWUOLfHEf6QJM5YHDpmQOd2q7p0JZ5gbGwi3DJ1s6MTBhcMN5bYAPy9
         d9r9WD7JMQex5HGjIZeVDKwSN3ouhtuStabrV0Xlx7y9FM8MhV9FfgfEnj/8hrZ0ytac
         2FwIwqSz6JBXrk+vWj+NicN47W+K6Vp4ynZBr/FWY1UXzi93PqEUtwhdxOb+oBYz8QQ7
         r5zwuZ7c9VokzprZyvJ1D+Jy5EvXwGgzAArbYEiawT187yQkoghIDeMN65LPORbRyz9V
         TAtmYIiAtwRgcCG4EHIqzUTDmREZGccwHZA+O2akpDVmInn9a9YN+4hyxQhVlA5r2Zc2
         1UkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Clq9pCyr;
       spf=pass (google.com: domain of 3sk0jxwwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3sk0jXwwKANkI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=82Jkq33QJS8joZEa0vz2C11TsQhy8lK9c5UqTxxCCeU=;
        b=L233/AlmmTLEA6aYv7QET//EGo0uC96zt+CgEpLBohTZBpapFIaHq/GaKIjpuUrZts
         c97LBOe3mI+sE+uxeD8ixzuzzuz5GtbL8NuzDhAXTACTMPglnj/3yiwjUgMEhN2n5af3
         BZphsEZePfeL7uVmCYCLAULMCXoyEYqe2H53IlqILoRarH2q4rq14ZzaNWJCztmShIuv
         hlNfAAFnqz+5eSIZCOtQKhdtOOuHJDNMbDhttkq4a7TsN1vwteOZ5pqrCk3XonL2XVMb
         4JfDpHRdhMP1Tvz65E+meGyK9ikm4cnfJWwhAKTSYEg6QEli04LK7ZOf7+Gp5sC9iBGa
         AZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=82Jkq33QJS8joZEa0vz2C11TsQhy8lK9c5UqTxxCCeU=;
        b=Em3umufXI6oLYbQn26Wv57VkBVpC0fikMia+RoiGQX/SCpIBYFHe0W3elMeV3rm0LI
         0hTHlrRvDgRwv9rAug06IGBqgQfqdDZcpepisneBgDZKGUr3+vBdq7t4p1n6HTScYdS6
         6mX6StkD5A36ZeKGZMtwA54kuhEAKz1E+A3Bg0wAxC58E+qMUxlSly9XqvUkORodGtXh
         XV7VtDxFZE090oJSjacGz7HE7SlWm2vXSxpds3sR2xRTyvhMhi2dKzWyEc3cEEX1Umnq
         OCNMV4yhAY94oNTfFeRLP1Iv0EhFdNawGiU/pSPnLghBH26HPFkTe+KYy9BlDo9agfrl
         xk1w==
X-Gm-Message-State: AOAM530NZfPKdaeMtO6BviAfROIoHuxJ5XmisQweGQQKsF8JbTS5SWTs
	ARKXwsMkAZCmfTuzI1e9PDc=
X-Google-Smtp-Source: ABdhPJzUWRlYRuo89R5Y5ZiwlG5vMXsNToeTVMbk2ds5CIWM4BMnOIn3r/k5pgxrtaQ25OTeQ+ELMQ==
X-Received: by 2002:a54:480c:: with SMTP id j12mr936089oij.85.1596149171390;
        Thu, 30 Jul 2020 15:46:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:724a:: with SMTP id r10ls422385ooe.1.gmail; Thu, 30 Jul
 2020 15:46:11 -0700 (PDT)
X-Received: by 2002:a4a:a21d:: with SMTP id m29mr837119ool.17.1596149171101;
        Thu, 30 Jul 2020 15:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596149171; cv=none;
        d=google.com; s=arc-20160816;
        b=0HedNcw7Sq6jA5SChmJyy5K0VHxhlmYTot9EbswxFRRhr3XhAPunWClYSdzzQThG0X
         OhMxd0oGT17RSe102zATWMDABKSm7QArIZq32U+4qsMXozIsNFMlhTTqNtv6GdRMV9J9
         BndwsZxE6Eeer1MQ6lo40SoY+EogfKcKL8rFXHbJqW2OyNWMTw96dVbU1LeJaG747xgP
         5A5loTkmtX3HZa3rdfsdnYbuZ3UnbfCZyl93ZLh5gDl2EF+/OAVD4vwpslYVL+2RvaqT
         uAEIfNifABj5OmdskZgFCrXX/vptFNPW+BUqD8s0jmfCohuv7xfw9HTHr08C3jzTy16N
         9Kbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=KdqtOivFw0hOYBvN6JG/eE86OTCksnrTLbBlBCKnAW0=;
        b=qe0RdxZ8Wd5waxRYMZmcnzWONcgJ+NVQ1tvj1a5gPnF2qJhISc90eFBcG9fK3qtqfL
         R1TFd8QMYlxUZRNw24FRH6KwMGBirZxYMV/r17bWsaXFFV0dSGxSNk8jLWA1hdmgwBpM
         01VDwIaE51Sgf4NzE3OFAPPxx1r+5ohgUezQTtIdWrKkkbyWyaBtot/VZ5uwIjLuDnwK
         t4EFaZCM/kEADvdjDjjS8xrLkxrkGHpCAl6SlYiDRIckPGnJr3JE1wx3sF8Ikjo7gO4k
         9nQhfWVhmp+eQQiDKM9gxgyaQYXdCTVirDu+8MJEvAETNaqhNWyjma1Vi3t1pldJj4FA
         oGYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Clq9pCyr;
       spf=pass (google.com: domain of 3sk0jxwwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3sk0jXwwKANkI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id s18si453654otp.4.2020.07.30.15.46.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 15:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sk0jxwwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id t18so19399612plo.13
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 15:46:11 -0700 (PDT)
X-Received: by 2002:a17:90a:784c:: with SMTP id y12mr1196857pjl.16.1596149170366;
 Thu, 30 Jul 2020 15:46:10 -0700 (PDT)
Date: Thu, 30 Jul 2020 15:45:53 -0700
Message-Id: <20200730224555.2142154-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH v2 0/2] tracepoint bugfix and cleanup
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Clq9pCyr;       spf=pass
 (google.com: domain of 3sk0jxwwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3sk0jXwwKANkI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

The first patch fixes a reported bug in iterating the
tracing/printk_formats sysfs node, and is tagged for stable.

The second patch is a small cleanup and is less important than the
first.

Resending since I messed up the list of cc's on the cover letter last
week; picked up Miguel's Ack on 0002.

Nick Desaulniers (2):
  tracepoint: mark __tracepoint_string's __used
  tracepoint: used attribute definitions from compiler_attributes.h

 include/linux/tracepoint.h | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730224555.2142154-1-ndesaulniers%40google.com.
