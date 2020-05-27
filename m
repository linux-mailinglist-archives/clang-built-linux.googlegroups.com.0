Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIF4XD3AKGQEMNANKTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1CD1E3B21
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 10:00:33 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id 3sf12685250oip.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:00:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590566432; cv=pass;
        d=google.com; s=arc-20160816;
        b=fUleiK253UGs55mNlUjc/4LT0K+S9xNc5aMY0S/OFMB46XUk3CS3eyag2Mh8KfJVwf
         0wfOLf/V0Ye1X3MzEZTi0LVlf2Y2flPZHmVI1QvhK0Ri2ZhuEoCbLeMLVyfZhgfQcgLl
         4KVYTRhF+cI1b1ukHYmXkUh0mrK91z9MjeA3YuhVQNaDGF3rvEIaAXbCObr9zn1WR/4I
         S9wNI3HSTBg6MoXB7JTwtFe2DNucWy06h20uPshC6EkWBMtVvtyROUZXCZO03jL4zg3+
         du54U8jCroo6TBaNRLtHUE19cp5ojSNxahNxArNb8wzbPwT+C1DmLPhqyFZ00DlfS/Zs
         XLsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=S5LEVLSRInR+7XXAvASTnC7JAvvLdVnjW7lZiNpCago=;
        b=kn3iWG6hYWVbBiizjp6px2DjRBV2lCWcYxFxV6YIzFkL/cQBpjFzjNnZkhQPcBbH8p
         NFZkks6jt2mPYjqQPrU3gYFdBd3TXotsPSmdxRYKOntVzRSQaQT4SD2ain6/PmIiSFK9
         /zhynPzWqoMHKL0QPzAedYTETdr1bkBJYtY0dOo0TWIQQbipdabsslpZNLAgQbU2MXvi
         b3DSSrwuLOPlOjWWve8tVK7nQOKtEvUDUEH7H217IEzTrzdxcewcw0H+0Ihlm5fvrfdg
         Xrf3WA5IH53/dZGsTJ5QFLWiauw11r3i9JzrcgxYSaLezDPgR0Zb4VGCsMBfc7nDqRU3
         cP4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BaXhb5mJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S5LEVLSRInR+7XXAvASTnC7JAvvLdVnjW7lZiNpCago=;
        b=EtdRhGSKNrbGuF3wzFDdF0S5dcwA/lLurmUmNRWemrA4nUumKW8EkH/7few1vijn4n
         i+dul90XzNlGIsDPS3EFZ7KESHYt2rShvYJgkhym7f60A7zbx5OfP3fRJUzSspSsXFOO
         7rqcm7gu0nHsrxnHqIjq3rEMbwC+pOMCNPjRFvEV5QoDnXfDonRmMVZifLWkq906mHRc
         mdmHxiofvbqG5EszEb2TbZfmYgX1U5FXoT9T090pIRQBJp5TdIOn8MnNRWJm4ezXXVr1
         mVcudNME9/v/3wQsueN9gdm7sQp5LAYuAEoKUaDAhqCE58d0ynT2h6r0cdySYB1k7uru
         RRfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S5LEVLSRInR+7XXAvASTnC7JAvvLdVnjW7lZiNpCago=;
        b=FSBAGclJOeh/6kgMLnuk0MeM2XUMXIMQIwNKNquQTOHSdKKCcUamnijk6/CmvbdwMh
         eq5I8yf6AvRoqDG+5WfgJ3wdYSYrm0g2mhCDexfdsJeZ5SVurYC8xODPJzywSsE4fchP
         Zl25ctvLRmIPIfCVMrGJQOgQraCLmYaHIvlc6fvjmZoH5fA/jme0b4Pid9WuLwqkGBRO
         rbUaA9xpi16mmKCUbE+jCvJJyxgouJH+UsnklIHrGVSbrXk4SosZV+XttSC96GaaxdCc
         hwc9FJ8xFeCI1mXmjvilmlkDL5kbTu7Cr+DXZfNFsRYIggtG9nStH64UNlvLZDVsN9l+
         7MTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S5LEVLSRInR+7XXAvASTnC7JAvvLdVnjW7lZiNpCago=;
        b=hEvvcZVf/cUxY3PQuhQq0QkcbJvyIjKgt7zEGsIN/xzsjCuNE+Kv5A+HYobwDNpXsy
         sOJNxIkG0gdMegN9v/+7/X2Ygd/saUs4R2qoj8r4pBKwfDE3YEw8mRW0FSC+SyibWukz
         3MaT/B/1e2z8d9HoGQHuDn+sR5dG5HlnQ9aqvffHXtMk+ORMxPqdmRBDOGvHW2/KgEl5
         suke0vOAJCI5zjrNYNffiVkbd6f5rr5OIkBfRtZ1oSDF9arFTKsAJfygQmKP9ENjwzBr
         yR1In7a1VpDzo337Uq9Qb5xEOXoxt+Y+JeMFE47wwP+ogDUGjesvV+JWTuK912S8DORl
         XoKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309T79FrLhSy3AhSB6VyM7s3MuKXoV88QoXXqYBUzxIa7qE3W3L
	yOd03p3hCg7JYVqh9wxFtDE=
X-Google-Smtp-Source: ABdhPJy/9zq7dQTLPv6Zwz4ewD+znSGUuRSegcgTAAdNipntukjgiYleNrejJ/HT09Z0smjSKMPzxA==
X-Received: by 2002:a9d:6c11:: with SMTP id f17mr3912007otq.327.1590566432062;
        Wed, 27 May 2020 01:00:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls2686184oig.0.gmail; Wed, 27 May
 2020 01:00:31 -0700 (PDT)
X-Received: by 2002:aca:170e:: with SMTP id j14mr1884827oii.91.1590566431836;
        Wed, 27 May 2020 01:00:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590566431; cv=none;
        d=google.com; s=arc-20160816;
        b=rRfdbftwK6atok5DpLWWDTMckXFWMLV7VvDtDa1u7q5URjFoVDhWbDnmvcdcSUXbGx
         +vY129Ohg/H6zOQTf9OHbWcEt9fR15jy+T5XMbntLDmT8/roHY/uV7uwNfttpT76RLMk
         lPn30H9YaxIWv4DyEFnDnELibHSWkypORZYQKBwY3sPtQuWBdiyRpSzfdQ7DzJTreGC+
         Iyw2BO++C4U6vM0HkbZ6//ZMnBzvGtGhDLvSwzc/26PWnvo1NjrngkeptkH3d8e/o2mg
         T6m/8kDhA3o9JUjSy/s1oDVqDdVD37EU6fwSmWBStZjedS08ia4vX0Qgk6JplAqnFvje
         k4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dfrIIAJU41ZKt+X45ZinqHgh7bx7zJkQ64xHPADTvf0=;
        b=pPW7en2FGSoK6hBnLA/0s+vEU4f1FIqAc7u5FdjP1obllWwGWi06AcJwjeaIj6FIOW
         XarRojJ0CwIh9JgOXR3j93MIfoLd0YemGKfWD3CwPI8IBtKcULD6rBe4DauWcHPrh4fB
         9GAU2w54NxKk+tqcI4wyMquUuXDV0RvdTZiJyzrPrNrC6dAaNS2dWXbQvFk1K24eDth4
         wSof8V2WDaHDcnAIuZ0fug9bBiHtCT5NMk1aYhytzogAe/8uHuxI/jji7g4ukmQ9omV4
         JYnj6Nk2iP9G9//zWGNzEc1QSI8kV5kyS4V4nI+7qLpl5MTYH5/nU/M68UawiyFlpezm
         o9KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BaXhb5mJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id u15si276164oth.5.2020.05.27.01.00.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 01:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t16so9837113plo.7
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 01:00:31 -0700 (PDT)
X-Received: by 2002:a17:902:d90c:: with SMTP id c12mr4730110plz.113.1590566430970;
        Wed, 27 May 2020 01:00:30 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z16sm1439038pfq.125.2020.05.27.01.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 01:00:30 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Ahern <dsahern@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Roopa Prabhu <roopa@cumulusnetworks.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH net-next] nexthop: Fix type of event_type in call_nexthop_notifiers
Date: Wed, 27 May 2020 01:00:20 -0700
Message-Id: <20200527080019.3489332-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BaXhb5mJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

net/ipv4/nexthop.c:841:30: warning: implicit conversion from enumeration
type 'enum nexthop_event_type' to different enumeration type 'enum
fib_event_type' [-Wenum-conversion]
        call_nexthop_notifiers(net, NEXTHOP_EVENT_DEL, nh);
        ~~~~~~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~
1 warning generated.

Use the right type for event_type so that clang does not warn.

Fixes: 8590ceedb701 ("nexthop: add support for notifiers")
Link: https://github.com/ClangBuiltLinux/linux/issues/1038
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 net/ipv4/nexthop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/ipv4/nexthop.c b/net/ipv4/nexthop.c
index 143011f9b580..ec1282858cb7 100644
--- a/net/ipv4/nexthop.c
+++ b/net/ipv4/nexthop.c
@@ -37,7 +37,7 @@ static const struct nla_policy rtm_nh_policy[NHA_MAX + 1] = {
 };
 
 static int call_nexthop_notifiers(struct net *net,
-				  enum fib_event_type event_type,
+				  enum nexthop_event_type event_type,
 				  struct nexthop *nh)
 {
 	int err;

base-commit: dc0f3ed1973f101508957b59e529e03da1349e09
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527080019.3489332-1-natechancellor%40gmail.com.
