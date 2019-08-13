Return-Path: <clang-built-linux+bncBDCZLNEYZALBBKULZHVAKGQEI43IYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE3D8AE8B
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 07:07:54 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id f9sf51290797wrq.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 22:07:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565672874; cv=pass;
        d=google.com; s=arc-20160816;
        b=JlQaZR7LgPn2y94rRjBOnVgzY84xOw5J943I9q4KU/3IaPY/psUEgPysrhF1ZnQGhu
         R/IbdciMvewVmbCj1xMHGElM7rsT/94MSfFwvdYD6gYSHRphLJXc0BEGd/Dodjdka/10
         3OFR1SxNjUmGsOVxdhv7IUqIPgnY+grC1d45DRQ0MpEDNnLesY0yjTWVTTPxrqy3/ptp
         h1nV4n08eLQVQ9sZonRDdyUuFpxF06Oj1wUSE5cHHnEAzeuFueScGISzQWuF1jJB5eIo
         92wTBdsEpRbPBkr6OJPO75dFo1n8gHma5hLVn7QP4SaXH6J6Akikk1Of8Qp8Qqid5loN
         l/bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8qmToWy/NH7l8xhX1V+UOwKWfLhzdR8dyQ3cYhhVL7U=;
        b=cy/2MmkIX/baHqnxqcB4nK6yJ1o7uyjFvuSB0bmBiCoEjKzrAvT0Xtc77bTGWC0F4S
         5QEFLzehJNCq4SmGMFt5ryoNEu/qRmUBqIGaUX2pUTqugOmfreAL3ewHHIYV7YxnXDVe
         OL0boo6GNiWgaH9uCxInbiK6Zr141WP7WWD9Mr+Gy7igqGjqeEVMLrO04nAHC4hSmpaS
         at+9O3UFu7trZZvWDvzrVFshhT7NzdFU0R81hQNFGfm5vMwSzLikMleNGMyORFTyn6Ko
         MCXRXxX0ADRs2rT7EMkUaonT1O4lH0uEz2nVKfJb4kaR51JFKP4HmPyMWC/fg8/HJFzq
         Xc6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of matthew@mjdsystems.ca designates 2607:5300:100:100::64 as permitted sender) smtp.mailfrom=matthew@mjdsystems.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8qmToWy/NH7l8xhX1V+UOwKWfLhzdR8dyQ3cYhhVL7U=;
        b=OO2He9TW8dhPh5vWXbCYU15DGwwROgGXvAVdJurbuBONqQwsnwPjIXgbsvzkzq/Hnq
         uJpZSQWWxcJj1berLfneDKPRnmD986EmrwrmRgo6YZH6v1t6RdsQzix4hwSGrMSZB8bE
         wpYUv4urNlFU+XDy3Tg+gAvW4oyVq/jwuzzL0j1zFLpPxerl1cnpxv4t71K03jmWKB5u
         LZAdMIZzhwBmRx1MSVSpFqccwx3dFDUGRNjq0k+74sheZ7i2yNwWqa6OcMrfhwJ8JN/2
         wiYV7dYdK7AMWe6vLLfuNKpueXC9p7Dgl8EdQTTd/Xmni9ud/yGihUjCwHQgm77R0PXC
         H0jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8qmToWy/NH7l8xhX1V+UOwKWfLhzdR8dyQ3cYhhVL7U=;
        b=oSkdLHBOW1QMjQ3Z1zbDG+sjrc6qoKG6IB/fbeLDd9b6sjIyk9gKHcMUzVlOcxkQAo
         BrGKdkSLqJ/y62Dg/YIlzFocGlLLBoZVz0k1k1XNt0TcOUp4uNNXEPE0HelM7st/6i32
         GMAdkGecVITOuXWCQLXb5rl21lCNMQNDVH2qJPe5Q1eEOypFcBSOXKF2xrpr8804Gjuv
         aSOy5A8LZ+8L7zBvnOfdK5/ENST6HlEBWgspzDiA41poaFMbqxMbfwdyqqCj8UBMr3+H
         +c+tes3jmECNcZndN4rEPzTh0NOnPPCS2W8RAyeBeRDMboGLUvNwDNYj/jE1F46KJSNc
         Pc4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWHVfJ5029Q/lAWh95WqK54/ByAvDjJsOS8asfaF65jLqSrzJOY
	neJdaC9KFwALYyYAG6xdh9I=
X-Google-Smtp-Source: APXvYqzLXvKYnkbGYpsyDN6fN5EXKpuEMD1tgQgCP3DV9e5xPhUXeH1yX5TjCNJJ8zrPEWKi06BG/A==
X-Received: by 2002:adf:f386:: with SMTP id m6mr41014209wro.313.1565672874322;
        Mon, 12 Aug 2019 22:07:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6942:: with SMTP id r2ls2062094wrw.3.gmail; Mon, 12 Aug
 2019 22:07:53 -0700 (PDT)
X-Received: by 2002:a05:6000:145:: with SMTP id r5mr19387457wrx.75.1565672873801;
        Mon, 12 Aug 2019 22:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565672873; cv=none;
        d=google.com; s=arc-20160816;
        b=RQ1isYpikpzuSkEZ2H05sff2VGM73bpnX3mNgOUblJtttXxDbwqeyDoBdGlGqjmI7S
         hxc9JtTtqdvGMXrqQxF/iS6mZREjw9deO/MNY5r+SMTrKsDQYSE7VXLa9kHWQSDpydPv
         Jtm5WitafG7b1GuTkuQ3DvpZU2i96KB6IG/CLzc4m6Firkfjp9IpBVImTHAPnTy40qY9
         839ooBaXZYS0/6F7eSZUHXQRLaGTrhTw9UfIoKszmJbv5bPnyuWayF336xt70QNBQNl6
         JPNbGhRM2KrM327Jy3aHFuF0mdCESirX4efml/gXwx/RSpRqMnrUkj5E+my4O8wLROBz
         W4Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=rAJEEX/dRGxA10QBMxSWz6TBav0KFTMIQLaZzMmiKGQ=;
        b=LTXbtstEzfiaSmBMjTp/oqk9GuT1RAMvUKvscNqs4SHqjBbfK4PIAFcow/EruzPfIB
         PtXd5awvgfsjPpGdBz9hzvNUimxHy5KFRDoIzLjhdR5NKIMaHOs4yV2bzIXJEcT5f2VK
         ebAlwArvFeXeCu1ZKZmwbtUss/54qpL9zy+EkYmYDTZkxvoM84qglfpEQYqNSQu03I5T
         VvpjkdW9PuSG2xEkhY/NGaQ+i/EbedQuSXO/iHSLpdZAk/M8tR2B92b9Jh9M0nYrk252
         s2fEGWeTgn5KEkORbuiHmxmfezIc6i50405Uerfzlubm5nhr1MNLqyNAIhDil80Z06I8
         6hZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of matthew@mjdsystems.ca designates 2607:5300:100:100::64 as permitted sender) smtp.mailfrom=matthew@mjdsystems.ca
Received: from scadrial.mjdsystems.ca (scadrial.mjdsystems.ca. [2607:5300:100:100::64])
        by gmr-mx.google.com with ESMTPS id y4si2436857wrp.0.2019.08.12.22.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 22:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of matthew@mjdsystems.ca designates 2607:5300:100:100::64 as permitted sender) client-ip=2607:5300:100:100::64;
Received: from ring00.mjdsystems.ca (unknown [IPv6:2607:f2c0:ed80:136:810f:e1f:d6d5:2f63])
	by scadrial.mjdsystems.ca (Postfix) with ESMTPSA id C381B5ADCA7C;
	Tue, 13 Aug 2019 01:07:50 -0400 (EDT)
From: Matthew Dawson <matthew@mjdsystems.ca>
To: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Matthew Dawson <matthew@mjdsystems.ca>
Subject: [PATCH] tools build: Fix clang detection with clang >= 8.0
Date: Tue, 13 Aug 2019 01:07:31 -0400
Message-Id: <20190813050731.57131-1-matthew@mjdsystems.ca>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Status: No, score=-1.5 required=7.0 tests=BAYES_00,UNPARSEABLE_RELAY
	shortcircuit=no autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	scadrial.mjdsystems.ca
X-Original-Sender: matthew@mjdsystems.ca
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of matthew@mjdsystems.ca designates 2607:5300:100:100::64
 as permitted sender) smtp.mailfrom=matthew@mjdsystems.ca
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

The 8.0 release of clang/llvm moved the VirtualFileSystem.h header
to from clang to llvm.  This change causes a compile error, causing
perf to not detect clang/llvm.

Fix by including the right header for the different versions of llvm,
using the older header for llvm < 8, and the new header for llvm >= 8.

Signed-off-by: Matthew Dawson <matthew@mjdsystems.ca>
---
 tools/build/feature/test-clang.cpp | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/tools/build/feature/test-clang.cpp b/tools/build/feature/test-clang.cpp
index a2b3f092d2f0..313ef1568880 100644
--- a/tools/build/feature/test-clang.cpp
+++ b/tools/build/feature/test-clang.cpp
@@ -1,10 +1,14 @@
 // SPDX-License-Identifier: GPL-2.0
-#include "clang/Basic/VirtualFileSystem.h"
 #include "clang/Driver/Driver.h"
 #include "clang/Frontend/TextDiagnosticPrinter.h"
 #include "llvm/ADT/IntrusiveRefCntPtr.h"
 #include "llvm/Support/ManagedStatic.h"
 #include "llvm/Support/raw_ostream.h"
+#if LLVM_VERSION_MAJOR >= 8
+#include "llvm/Support/VirtualFileSystem.h"
+#else
+#include "clang/Basic/VirtualFileSystem.h"
+#endif
 
 using namespace clang;
 using namespace clang::driver;
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813050731.57131-1-matthew%40mjdsystems.ca.
