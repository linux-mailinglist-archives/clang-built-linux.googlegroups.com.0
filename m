Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCNH5OEAMGQEZAIQNTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F44C3EDF09
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 23:07:22 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id v130-20020a25c5880000b0290593c8c353ffsf18137583ybe.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 14:07:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629148041; cv=pass;
        d=google.com; s=arc-20160816;
        b=WtgA/884Cy2/zjDxPfE2w7gMsKFFIwU26XIZw+6HAvBlokX8k0uyjttihcLRHOBMVa
         SVOTEZ56ujV6z9WjGYWqDSuMByh4tE91viKtalFQulEAnjx36GhWWFsXRTanyPCfR0mh
         arGqihPrKn0Jxhp8uyShLgxqSWxipmPTX87cSt5tnDRTKFoONMwx9TFCPyb2ELxVhvXQ
         yE+cJoI8KBO8cpxiiK8tZhNQ9w2rKgumCCeypkt/ZWHNyf+hBRwwCl1RH8O2n5yrUxeL
         zWSMxNV9eXz+nTVsrVdEe+GRXkSyqyUMo8FOEdUjtWUxUlt5szzhR2Z1/9ejqs5Fo/8R
         EZZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=PrqrVYJzoD+ZCaJdHE9NoY/GonUTIZ2Ecc3UsU6skls=;
        b=011oCrEZfaRQf/z6euYugazij9eb4h+yeKo4jEHIPWZhnkTDSzIDiNgelnA6MZWd55
         QaP7aeciE1YY1i3fSDG1jWhNsPPsR77TkSiv1VHJA2RWIcNa3gtDZ7wwQo/QNwLVuMvu
         5LVXEq23aVRqZqVFaUqsNfHod4DaItltx+j7piGcGtSxjN4kLti5q21Cn20+Pq0QEIrP
         wQiMd/Npx5uYHwN4x5wHox0kqpE7tuvVpjvVc8BhHVUzEUv/gsOa7vQjUWKTUt7EkaX0
         TUFTWRzw2osSMKogsHbDGCii5tB9pUI2xIU48MD6qGvBO9qLTTkq3KSdSKb0ACkfuf6l
         BACg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rloCNbgv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PrqrVYJzoD+ZCaJdHE9NoY/GonUTIZ2Ecc3UsU6skls=;
        b=DWgcFLeAi315ufaw1+AL0Mg3shxjPg553dIlh6/VUE/T4lbaueHNpAGi5fW9tYBQfr
         ME8eMj3Y3a0dzCqg6Izal91smafk7/jGQcmU3X37nGwO8/4/13WH6ay6nfZ7nZwk1RGr
         pWeU3AmRK3l7npWdAGMjdfPwvvIFtaPVt5QPNxtfI+dxzJS0Yf7XVOVfacd34Sy9SZme
         Ql/CgJTI7wFnbDWSouLzcXNFw8WASKtx2cET36KzgWvem34grE8HvtA1TmDRQCrJk8/G
         GQkXR2HME1c8J2JZdyHZiW/tLghePAb1QYpX8gUqkzudExc4/LisKT6EZOOunHdiS+8t
         Fjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PrqrVYJzoD+ZCaJdHE9NoY/GonUTIZ2Ecc3UsU6skls=;
        b=kB4TNZQZAIAjbFAUi3aRgrQygQEDS6H6JJfD8x64ePk78DfeeiFDBQr70BZ30PtKXM
         UiqZQqYQwWC1rxdf859N385rJfjUqhzRjDeJKFjOFG7TUFQkdYwGjwin/f3Ci3TQ3YLS
         4ZEGpPvY11tbFoS/itl1bCKVD09Xbfw6eEfECkR0UcQZa3qQeovhvLtccdFgMPB2zMNJ
         TKxREbZ+kAnG6lGMjrlVbhvmtQiXiNyxeWrVD5j11D9pth4Rt/8pKIxuw2j1gPInSbza
         KoB4ZIy7qnWK60tgzUEmmDXnIWp3Q4mMGI4hXGTK0fST7hzvCubEBX76DJrlL+wP6gBt
         Dmog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533stenGDL/pz/yGLsfDn/FNQ1fFQGE227G3k3qobPPnARFCBzRz
	87LERUX7rTnNVwLoC8Zqn4I=
X-Google-Smtp-Source: ABdhPJzQ6C0XLCsth45g9U8cvHRiUEp08k25uoXfbcHQIgNsR3ewo3AlST2bKc8WUqiFQoACV8QIQA==
X-Received: by 2002:a25:e64a:: with SMTP id d71mr25605ybh.142.1629148041344;
        Mon, 16 Aug 2021 14:07:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c70c:: with SMTP id w12ls1848ybe.4.gmail; Mon, 16 Aug
 2021 14:07:21 -0700 (PDT)
X-Received: by 2002:a25:f45:: with SMTP id 66mr523392ybp.458.1629147925556;
        Mon, 16 Aug 2021 14:05:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629147925; cv=none;
        d=google.com; s=arc-20160816;
        b=s+Wr4Mj0TLGrtrblqNy0GCeEQ7I5y+X6kAKWdFEmJ2MIzDV03aAki9Ohlflm6SPMBl
         XOTe3ZuXMj5cguygncVUd9lB8gQRrdahDygapQ1PdJbq7skSRIJe2CnWCHZOxPotjzft
         MPd4QZQ9WfiAU+FZrdGG9RKytxN82p8VvsluyLqmdZdmQV7Q6d7odLwXeUgkC74Crhzs
         o3UQhjla4OK63No8uJBCBLVHjDdoVv54JvDnKH6uPb3o3u05EbqkbwTQDqY8BwwPB2O3
         JiX9bZL9yAzuIAHyiHVc+8YQFcrXqNHVQEO3C2KqwtgX65njHP/DFo9PiawbKKCYmYAG
         dJyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+IndVIyKXXET69TBwrqfFN/4x1tt1sGU/DjG1tt8/+w=;
        b=qCUkYWtS4qCz8qARU8Y+1q3IOD3tJx87vRQOctrwn4tgpoTNsgpuOVBVYyG6hFbQsA
         T0gTZUdczmVJ8JGx5jDdHMG9zk7s7P/qZ/YpOp3wmJhZ5RIFkg1zf0H9AbcKJSB7Vhuy
         dkAgFjN15vquNnCieYe4a1gPKQgOlU53XwPMvO2vJjpDBBQ5dv05hkAnKcOji3/3ALtg
         0koVgZrFL9kOp/FM3N2uihIlJkU1ISC1XscGZTOMhLJ7Ti5hG4Ocrq8sQwidG6nsNN8B
         W8UOP/QtAM6+6UcSapLMBJVpRhj31fHxMgLqi9gJlrJL9apWYuYf+NBMB4vpu+dGRiDC
         raqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rloCNbgv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d10si8023ybq.1.2021.08.16.14.05.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 14:05:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC7D560F4B;
	Mon, 16 Aug 2021 21:05:22 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Shuah Khan <shuah@kernel.org>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Peter Zijlstra <peterz@infradead.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Boqun Feng <boqun.feng@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] selftests: Use -fno-integrated-as instead of -no-integrated-as
Date: Mon, 16 Aug 2021 14:04:19 -0700
Message-Id: <20210816210418.59294-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rloCNbgv;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

-no-integrated-as is considered the legacy flag since clang 3.5 so move
-fno-integrated-as in case clang ever decides to remove the legacy flag.

Link: https://releases.llvm.org/3.5.0/tools/clang/docs/ReleaseNotes.html#new-compiler-flags
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 tools/testing/selftests/rseq/Makefile  | 2 +-
 tools/testing/selftests/sched/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/rseq/Makefile b/tools/testing/selftests/rseq/Makefile
index 2af9d39a9716..32f503c13c61 100644
--- a/tools/testing/selftests/rseq/Makefile
+++ b/tools/testing/selftests/rseq/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0+ OR MIT
 
 ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
-CLANG_FLAGS += -no-integrated-as
+CLANG_FLAGS += -fno-integrated-as
 endif
 
 CFLAGS += -O2 -Wall -g -I./ -I../../../../usr/include/ -L$(OUTPUT) -Wl,-rpath=./ \
diff --git a/tools/testing/selftests/sched/Makefile b/tools/testing/selftests/sched/Makefile
index 10c72f14fea9..d84a19363a62 100644
--- a/tools/testing/selftests/sched/Makefile
+++ b/tools/testing/selftests/sched/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0+
 
 ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
-CLANG_FLAGS += -no-integrated-as
+CLANG_FLAGS += -fno-integrated-as
 endif
 
 CFLAGS += -O2 -Wall -g -I./ -I../../../../usr/include/  -Wl,-rpath=./ \

base-commit: 7c60610d476766e128cc4284bb6349732cbd6606
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816210418.59294-1-nathan%40kernel.org.
