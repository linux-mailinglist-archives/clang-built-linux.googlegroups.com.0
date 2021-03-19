Return-Path: <clang-built-linux+bncBCYNDXU6WYMRBXW62OBAMGQEK2FSGMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 686343424CF
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 19:37:19 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id e29sf18312490ljp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:37:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616179039; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q1OOe8PWhq2MBH6FxgbJPdmphhSJpoYuSJFmvAGYl/fQzaBCufJEEF9hVorQl+dOS2
         h3g7k/YKDmcHBspUGZJoaXPcTh6VSrtUaDjFQlZ9Y6MfondkfQSCo4h5NfxZWRkV39YX
         Rx2/Xp6k5LTOOcySqYFGymLl6AXfH9Eyj5OiBvWqQT2QSt/a7hVL7vzOf+1Hxqr3xr5e
         WQ5/xWXAqABVGL0JTJPN430owkLzDcdQudJrEDu21p3TyHlI8kBtqIwCSbOkmorzObcz
         AFh5vvQsX5Bhk2bDoWjZ1W+9d7lqpVn8AmyKRm9Yu/xJkmOl35Y1GokNJLRuSqEXedl0
         nphQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=3Kg/w2Vjar5BtyW92ufeq/I+Wj0CynIpj2PQcY4PwU4=;
        b=eeFz9Tes8QrlOG+s/O6a+SrHBVhAqS8W5nW+FHWnHi0jFORnV01HDFKdgC1PzjEZYv
         CdAoXvXYRIQmQGo63W0zJ5oZj5vnO2MOwFyG5ot1+jM4Oy7hdUISUfgs8kjDdoizSlIM
         1VFzU+uQBKTVQsabuuasu3/5kOCTsA2TGIsfS+lV22Ax+TOjOgeZ3mMLiUh+EzwbK9B7
         NU62JjO92tMuCm0hipvU3siy115qtzjejXcpLS5fqlDz6m8ULHgq8xXE5NbWF9NcfIqU
         61DPSPkE0zKITH+IH6MCE63dcn1vce3OuTr597McVTWh4WrIxdNAi3mITMQHzjCICCpR
         F9Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ajm14iGK;
       spf=pass (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=ansuelsmth@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Kg/w2Vjar5BtyW92ufeq/I+Wj0CynIpj2PQcY4PwU4=;
        b=BKqI3956SCeobu4FLXSiPnvwi4H6IhvO+70LzHQMGgi2TCMAPRB7pA4RQU6OA97Cmw
         plZZBEs9R77mEZ6OEsToMkT50tEEamunG7GXrNLPn8TstowDJZVCZUzXzTRKfNJEtnl6
         IVR+7rnLo7M5E4vA73anLquDZzek3qdJmpvYu4ibQjJomIywCbM+WlRx92LWSpDLCC9/
         pO0PURB2SiGDcrPF0EwrWw8wzcdWTaZT1jprl+NDudJ7A0HShPE4tG+YY4Wvz/AVdmCq
         yzW0maqnv8jZMpkDEMnC2tXiKSAnMj6vQzVG4f85FD/GkrdwjPQ4xleV6D9bWvR9tQq9
         nCRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Kg/w2Vjar5BtyW92ufeq/I+Wj0CynIpj2PQcY4PwU4=;
        b=EZF4FIYAOaNf0LudA9iwcMDt+lyGRqrvBekOZouj07db0qd6zV/FYlrH/MQVzBobpR
         uKivG/FQ+nLi8uocr1JdjPOGhdKgGtzD5skGIiwpc++h/sNvv8ZB3GwYJ4wab0HAzfJ2
         DNALxxLixOBiC9o3y8xshuTEmsSos9zAgY7SzQeEmH+D1agjZ1TEtkHhJJScoEu0QtZN
         S1UUYM6+qC4PV8/4IwXODugpVLbpiAz+LhJfmjPSNwb7mZuqS7d1uoTUwU4tAElTrNAs
         1buWJG4cHq2NAAftLnrauFlXEoE4GfZegbieJv1IX9/WQvyrhwF+nUdrtuEBe+TYtE3F
         kMNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Kg/w2Vjar5BtyW92ufeq/I+Wj0CynIpj2PQcY4PwU4=;
        b=B/d9NujPgpKw7r3YG3/4JCPhdPCZK0G261sQZJmKvMWtVPi+1IN8mX4p3yTDNcDLYh
         s1iX7EB4Litebf71yA6sRD/rVxjSFPeusG7CTOOzHrE6PRBPERuAGhdWloO8/9cx6Pnm
         bVAAdrR9aNTsi0IdG4ELvcxACuV342Gc+6VkNtGgmeDm5a9RCDLiFeSmNVSnAyWd0MPX
         HcxB2bPGJAAgiaZEIZnl9LuDGMAGpvtu10Tr4G86DUlxzWqdYFPaRA5U3EmX+W3oCRIi
         iWxScZEkNd3Qyh8I+W1MaeDXM61TY/Vv5oY/hcKi3tzNxEDnxXBdcK4VPaVFCzL7ZJ4G
         0E6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qvP6IKIJOQnQs4qk9rzU8SmyjzotCLGk3FDNWU+mQp0Xm+eQe
	+ZRJWofwqxGSmJvJhqcnkPs=
X-Google-Smtp-Source: ABdhPJz7YgcnzVW3hWD0pnZLX3A7TZpQacEkSqDdfyDg/KCaX/LFROnW9FySu4EYc0y8oAQxm497lg==
X-Received: by 2002:a2e:96c3:: with SMTP id d3mr1793908ljj.284.1616179038968;
        Fri, 19 Mar 2021 11:37:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:589:: with SMTP id 131ls1397703ljf.9.gmail; Fri, 19 Mar
 2021 11:37:18 -0700 (PDT)
X-Received: by 2002:a2e:9dc2:: with SMTP id x2mr1779381ljj.306.1616179037958;
        Fri, 19 Mar 2021 11:37:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616179037; cv=none;
        d=google.com; s=arc-20160816;
        b=ULtbsrdX7uCCTMT2+/WdAQgr/tMhI6HDTatvx2GV34jwVpUjdf2SUXImPV1vAJBgR9
         MIP6h1bkfUAYoa6NfsliFyB5UxpjC33xzCGw0ZZOtkg8CrAGYX8gltZWr0B7EMT1UDlq
         gS8GQhwGKUZoG/eJzytLDrZvp9N9ZVJMjdtVeewJHdsuHy8e3CXX32W5Vvea6gakWvxY
         8u+hTHk9X52lzM895AUjnOoh7ea4vQ3lMD6KUe8V6ufopycQw0UveYZoLBjeLTBi+89f
         ZqmLL95WFuFUx4m17TUWezWYT3Supdid06tJfvKnuS/XIXuIYlD9690ohYisg6uZA08C
         JUew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=nh2DN7/MGtRQ9k5k62aw5CPTUbN8RSadqbP5EXHWoPc=;
        b=02Kt26Sh/6Y7lQqRtcQNQTw8B2rfLntwrPe+cjbVjAwydIeTvZlBpj1L66P9w64PCA
         3LtckPMVD6vqhzvPPYX5+YYJNRj6cBafcUXCCrCoQRhgRLejqpfoeGnyV60qhYXDw45Q
         +crG8iW93TIXqjICZhbshSpCU3tZxEXrr5jFU1k1RNfqI0MRQHgxg0lCADsrXjtf3I3Y
         hC6QLoUoxXyRjD359g0AQd1UkKVSa8sv5zufESRSG+XW5Jcsc31vBSVcWNVAuP4OE3DP
         0KeOjzqfJYdRqb6m3Ous92FUMpbS95HCw6oD3/cboFCEYs1aX6M9VF8GIiFStP6J7sNf
         BWmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ajm14iGK;
       spf=pass (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=ansuelsmth@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id c17si229040ljn.7.2021.03.19.11.37.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 11:37:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id jy13so11268702ejc.2
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 11:37:17 -0700 (PDT)
X-Received: by 2002:a17:906:7384:: with SMTP id f4mr6046087ejl.196.1616179037629;
        Fri, 19 Mar 2021 11:37:17 -0700 (PDT)
Received: from Ansuel-xps.localdomain (host-79-34-220-97.business.telecomitalia.it. [79.34.220.97])
        by smtp.googlemail.com with ESMTPSA id c10sm4432936edt.64.2021.03.19.11.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 11:37:17 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: Miguel Ojeda <ojeda@kernel.org>
Cc: Ansuel Smith <ansuelsmth@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] clang-format: Update ColumnLimit
Date: Fri, 19 Mar 2021 19:37:14 +0100
Message-Id: <20210319183714.8463-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: ansuelsmth@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ajm14iGK;       spf=pass
 (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::62c
 as permitted sender) smtp.mailfrom=ansuelsmth@gmail.com;       dmarc=pass
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

Update ColumnLimit value, changed from 80 to 100.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 .clang-format | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.clang-format b/.clang-format
index c24b147cac01..3212542df113 100644
--- a/.clang-format
+++ b/.clang-format
@@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
 #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
 BreakAfterJavaFieldAnnotations: false
 BreakStringLiterals: false
-ColumnLimit: 80
+ColumnLimit: 100
 CommentPragmas: '^ IWYU pragma:'
 #CompactNamespaces: false # Unknown to clang-format-4.0
 ConstructorInitializerAllOnOneLineOrOnePerLine: false
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319183714.8463-1-ansuelsmth%40gmail.com.
