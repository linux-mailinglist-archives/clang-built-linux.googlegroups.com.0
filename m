Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO5J3WAAMGQECUJPYTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F0D309FD9
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 02:09:17 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id n2sf10273583pgj.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 17:09:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612141756; cv=pass;
        d=google.com; s=arc-20160816;
        b=oMIdvXK02HI11FCbOiRHHJw58rGSYhCCKO8mAk7k/nqawjHgvcFZYsgPIWYOYrQPkx
         +mbfmSvoOp+FICvJxap+Vs3zQFnaJrFG+ssGzv0hf9PMdjb2ZB8ZPrYWvPZCRus0VHnH
         EsaRqrFhK0pacV+9l/B9yRAWa/D7ysjPY7Dh6uxoLCK6rxAZdeETdbXjNuu1Oz0DSLXl
         BdGy3UHCZMneqHoXUEav63NYf++q9NYZbpptBmgF/qPmpUhgcBK+rT8SQ63MHBvjzz9u
         m9zz0djsHzOhVn+c7zVESxKb0+rJZBMMoQ02k8b+yE/eQ1fyxPhHTeVDJ6iUAJuDiii2
         SRPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=rCRM5HLeOHlolCchivm7nJU2B8JsaA/uwfBv3xbXF8A=;
        b=LbCAPPiLX6kMLqGfIe89tuVeS0spg08Vv2nUL4J+CPu1Z3L1vZf917IolzjC1YiVYG
         sIzyEmpah8t26gTNA9AeOEhsVJbOHXndPlUOSCwRQM/lUEUm/16+ZkM5V92qRsLxQsGs
         pJYW6D1pNZKNs4ZvcYYiPngq4hgrqyAd4Df4Ythg74AyjYYuoXU5kO1OW1EugfYtJy4r
         V1awJs9X6ofvi/Wv7fyyDn5utQmC37W42hupJ5faTYv46haXJSPCLr4a6UuLw/d4tp21
         ZUTrNsLhBW6QD1Z6ukBAirdotg8RTwMHdc7V6ykr4ooh558vxEWa25wljVcqktutZqOo
         I8Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1fsNDfi7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rCRM5HLeOHlolCchivm7nJU2B8JsaA/uwfBv3xbXF8A=;
        b=J54KLKcTsH8CRql9iySYWFdpFMbD7pYhshqmXNzcB5lLvmRDm2KDD24Yzit0ipfrON
         B/DgoXJ4yynWKiVvexxuqjafAV2SlKbVXwuG2ZzU16tMwgtklOdfxiajXo1yQx1ChW98
         NzxlYLIEz/tfSCDfBqJJeov6V/QfrXQSUiTkglDlmz14+9de6TVK97Ry5R3biniHfuQp
         l8nILIE1EHt9+gwxYWjIAgk5fBSasGhTXGBjephjkUFepxzk70T/DT3vxhs/mIjlBBId
         otP25HobSBEt4ugLezvb82N+py8VX/mriaeAm0hRtPVwLiXc3liLEmCQQ050NKy1IVdT
         6C3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rCRM5HLeOHlolCchivm7nJU2B8JsaA/uwfBv3xbXF8A=;
        b=CUAz+V+Zv/cJMTALymqTfRKFroh8tRWOozdvlZIXEmmD73puqtu5PVruBZsMyJi9IG
         phiKX1s6j8fZyhZf3mmHpeO2xmE8lH2zx+lTksZsuCRVA6tl1eYImZm9/hBZjtUZa48H
         +HnJxdC5tbWFuO8QOb1CD+GHrJhwn6yqvNqxAeHotzeq7l06BzkNgF0DTHfK7IfiRPxw
         d14W5xLVdpCKdzlwE6n3bK3V8d+WrsxoPtYBL4TUFATg7AaZswvfB5FKf5Doz/W8kzs3
         9QJyrZXLwWWmukl5lC0mseGg6mKbtaK2NDNmz43rJp/azRfWky/WQZboDfrc2bvYyJIK
         Iq0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ESxzMFI4MwNg59r7nRVtGK/s09NAvIbEZDwqkaMI1oO+Sg4h4
	R+iUdHCH9JAD1yKBGet8IDg=
X-Google-Smtp-Source: ABdhPJxEhcQIY+P1yQ9vs/klX/i/6uzVAsNe4InvvcJPvK4InPsY2hlFsGqVJvcPr9gmECM3Bhgmhg==
X-Received: by 2002:a17:902:9007:b029:df:f347:3cc3 with SMTP id a7-20020a1709029007b02900dff3473cc3mr15462583plp.41.1612141756090;
        Sun, 31 Jan 2021 17:09:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls816941plb.5.gmail; Sun, 31
 Jan 2021 17:09:15 -0800 (PST)
X-Received: by 2002:a17:90a:1542:: with SMTP id y2mr2159641pja.123.1612141755467;
        Sun, 31 Jan 2021 17:09:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612141755; cv=none;
        d=google.com; s=arc-20160816;
        b=LvexXnGHBfLjoOeGmK3HYKz3j0g7zLttaX4aetV4VGcwA8Ih3fhknc8uWAGQGdRlfo
         RLOlGGAxr70Q8MFcSIgN0yDGo/dakmED9nZLxHMuVtvAXBOzchiOtS/DxtUgEW7g01tp
         JDg6BKAGDxYDzmp39tFk0twhVTchmqJ9CwZXCDjKkI0tR4pEvBiwMvmBk56dlNGyrqLd
         Z7DL/2sSIrdfrg3i5ca9B9kGh1oIAaGMDaDAW66KzTjSdDzkmZub6pkWL5P985oFWq9f
         V627uA4hEn+ytxonWtbmqDY0ipIeWrM7TapRXwFzL7LiZoR03Jo3qd5BFGJCJ/Ec+jgq
         pqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=eXbmZVUON4I0dEihsAGwk68LJPotOUe3IiJ7+FBD0Dc=;
        b=SZFakbOLqLh2zXgtGwgo5IawCOo40XWIfOuy0D8l710QIARQ+LkfFit4FXO6wnP2sr
         lwDM/YlOVHg6kV9TH5NBytdVaeH2fk8l1HPfoVd5JIFCDfzoIO90+aROxaypGTzQrdil
         8jPqdkmeLth4oC251B4BG/3DodLO7XUel1thgcIzkmmQGYzGIPSjEWPb/nvQwSbSBUUF
         rkTYCs3cvbodaS9+BZMUPP0BCF5om5BePe7a3tw3cPbvXYEHGUZ4krHLvEer/0FEhEfj
         qdFSNwn+3EkmGQqBGWFgW/9v2jtheANL5hCtpqKKGUPlNaUb6MC2Ga8l0CGgZyjZ7ziJ
         xMxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1fsNDfi7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id c17si541583pjo.0.2021.01.31.17.09.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Jan 2021 17:09:15 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 11118Msg002624;
	Mon, 1 Feb 2021 10:08:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 11118Msg002624
X-Nifty-SrcIP: [126.26.94.251]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-doc@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        linux-spdx@vger.kernel.org
Subject: [PATCH] scripts: switch some more scripts explicitly to Python 3
Date: Mon,  1 Feb 2021 10:08:18 +0900
Message-Id: <20210201010819.655597-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1fsNDfi7;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
to Python 3"), switch some more scripts, which I tested and confirmed
working on Python 3.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/clang-tools/gen_compile_commands.py | 2 +-
 scripts/clang-tools/run-clang-tools.py      | 2 +-
 scripts/spdxcheck.py                        | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index 19963708bcf8..8ddb5d099029 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) Google LLC, 2018
diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
index fa7655c7cec0..f754415af398 100755
--- a/scripts/clang-tools/run-clang-tools.py
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 #
 # Copyright (C) Google LLC, 2020
diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
index bc87200f9c7c..cbdb5c83c08f 100755
--- a/scripts/spdxcheck.py
+++ b/scripts/spdxcheck.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 # SPDX-License-Identifier: GPL-2.0
 # Copyright Thomas Gleixner <tglx@linutronix.de>
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210201010819.655597-1-masahiroy%40kernel.org.
