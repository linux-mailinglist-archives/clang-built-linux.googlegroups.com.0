Return-Path: <clang-built-linux+bncBCG4HBHYYQKRBUUFXGEQMGQEWIO6ICY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C253FCA6A
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:55:16 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id t10-20020a63eb0a000000b0025243699e3csf4296632pgh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:55:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630421715; cv=pass;
        d=google.com; s=arc-20160816;
        b=sagWPIS9dPVsyQ5vSY76XEZ6Vv903fJdSxVu9jRDL3cewZhPa81RpAAofZr3puc2VO
         n/G3JANWkB3zrvzFgaNdrb4FkvkPc7MExOT0iynbfNbOk50GQ4qrlolw553jWOlEKFwM
         oqAcgyC2woTtsBvohms997aggepcBgTc1j425BktvIdoZ/OnTsR1etusGCOe6gnJopIr
         /6D9AFWBeQ3VWMfqUqYL4a4JKQ/YYgl0fxc0EXFx5fh/g1vUOwVqtwlYjP6tbPZecKae
         EL5hfpIu9sUR9h4e5Px4fPh64EkY9hBXX3Nbd/hn9uAy45Txcs0e7audtEbziIk5p9pT
         3AuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b28dVh2T1r8/QxBsgMNMwjkDjOEGdPrtrYl1soFN1VI=;
        b=KMGhn0kH24+LeobvlWMJHxjudZa4bWcPdBmblfZPgsPqJdDkqq72xNPRjgK/37SHlE
         HxsSZ4TXUZUNnQZ1bZqxBmItCJnhE/7rphX2jjYKNKD8u8VhHfpV3HEE9bX3ZBPhVNMM
         7IwOF0hxEwuVqhQ/ynK1W/EqGeEXLwW9D+0c3j1aA611qYQ1po6kLvG0xpHMvIP2C9H6
         WL5GRHXiGC3NVv+VqMm16z8GOcojCi0NLhVK+zLx3ZszJwpRP7puseLJPr0IrWfsYsgW
         2WYKZKDX0GrsLb2h29oh46q4DPhAYcEa2jZViQC9b8/AaYxUOHYr7iUi7Y3y/+YDq+ZA
         R5Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b28dVh2T1r8/QxBsgMNMwjkDjOEGdPrtrYl1soFN1VI=;
        b=tqxI5tYlHaHA39UwmoZIZnA7bxCY6DYP9bQ9q+BTMvW5rFHL0gBSuR6GqPSxePdPkE
         Lt3gctXM6Jx02MuV7vZIMzzGplROYmPYW5MiBGqdNI+/MsJjg9fJkwRGt9fdqYIho10B
         noRtFyh/wbMzSsMSLE4zpAWJPl3kKLlcnWGwO+gSXJf0GG9s3+TTAXdL3BjLelg86Wpo
         6ehB9uaN08nStj85kBrfDXb9ScVOvgAUM4YE0u6E0acLN4CXS28kxVCAdJsDX5tfYFfX
         hv6AiZPsWLDv0751L0Yw7CzYBRor8gct5NxPITLMCYJDQmhgRkRs76XklVVEjZ7x6WOR
         cwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b28dVh2T1r8/QxBsgMNMwjkDjOEGdPrtrYl1soFN1VI=;
        b=lv/vauyRqBq/GVdqdoLeI9TVCxjnxyxKScMGBefcxhH73+adsQi1wo0hT4TRrM7CvJ
         +tYmn0CF5s1waYboh6hCYE0p2wNgAhHsEfZXG6tvoQMM/4QZUjJ9JDHHbUdj5RGB6zmU
         nYd0i9DRuzUjd2jdUOlHTc97JERv6Vu5XBzRZEavCIAL7BlweOQ7kShybdxGQzEj0NO7
         gl1bINSUPdQ0YMK+qQMDZEdqIuIT2SRDb1aOmr3g4Ju/A3S0QhRXKPgDJbwN2t6Il9Zb
         9KWAac1UGvhJDuVOiYlsdQn3JTa1UIjCjED1gtNIb+4LVOXymKfCRDDv99+wObq9GLT6
         vnXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QUdJIB+om0g2Sy7mpR2h5apo0kDhF5RKZaKOTUCfQWRjr6umO
	q5igwRju53SrMbuQcJw90Cc=
X-Google-Smtp-Source: ABdhPJxRGFMHk4PUTl+1xxghtY7WEA1rDmJcl8cDMXjHT7c1hwt3mR5x0EoMkQiCFa1MF43qXLI3XA==
X-Received: by 2002:a17:90a:eb0d:: with SMTP id j13mr5927042pjz.163.1630421714923;
        Tue, 31 Aug 2021 07:55:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6643:: with SMTP id z3ls8423001pgv.3.gmail; Tue, 31 Aug
 2021 07:55:14 -0700 (PDT)
X-Received: by 2002:aa7:8b0a:0:b0:3e1:2df9:d827 with SMTP id f10-20020aa78b0a000000b003e12df9d827mr28390077pfd.67.1630421714470;
        Tue, 31 Aug 2021 07:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630421714; cv=none;
        d=google.com; s=arc-20160816;
        b=v1nyzV7zXIqWd+euRUGEwxyPnchjeYG+7ZhE4r58j/huc4f1aZhw9qCdBDC/gJQUAy
         dqva4H3h1C0pDoxYMoFX9wClwOZgT83bMkiniD5WaLljBYOjuOYT4PHwU7kPP4ymI9AZ
         KuDvFUxhvtGHhGe8g+i+P3b1NYVd2ESM0wmOwg4LhAztGTWAqoLjD6fain1GCvCrq3Y+
         9mzylX4NLGWJPMFmC0W9bE44BOrYUehSAcmU1eHSWe0KvBwXvq9aoyedMsUQYw3fn8qo
         dqwz5j/gONdh+ypu2x9GQWtXEvsvWaWRv695IbBHzFqEkx/tAc/+/IBtEeEsA6+Ul6qB
         dMpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Bt0u6F/raglHfC+toSGGxgnsM2ItvVju+2IchQnL3wU=;
        b=jL9zYd6JAVzLqkcxkK8VNU893FT7aQID46F/q6PUfpRtonKu8S+t26gzXCE3c1imWi
         H5x+f+po8Gyu4gJb67e47herA9j1+SSpVaIT6XvXIX+7oHL8xa76DxAt9jQp7tj7TOnm
         314Q4h/HNGwhCHLOgs+GSb1EBpoyW9bVuh3foLhOi8r327YDfFXrbVGtV9KP9EJoJ9P6
         n6sJOuupiGGGO1k/r3igOX8vIjeJBxHu35NAN6W2EpXrHfVeOHQOGr0Yg19KV8eDhIaf
         Z7AqqMq0/Hak2WkdD6x6206bfvvdw3PSQhL1feSQk1TxvK2Gnu+SsqPICIb2LnVPRxRO
         5TNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id c186si974865pfc.5.2021.08.31.07.55.14
        for <clang-built-linux@googlegroups.com>;
        Tue, 31 Aug 2021 07:55:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF6C9106F;
	Tue, 31 Aug 2021 07:55:13 -0700 (PDT)
Received: from e121896.arm.com (unknown [10.57.42.234])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 703863F5A1;
	Tue, 31 Aug 2021 07:55:12 -0700 (PDT)
From: James Clark <james.clark@arm.com>
To: acme@kernel.org,
	linux-perf-users@vger.kernel.org
Cc: James Clark <james.clark@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 3/3] perf tools: Fix LLVM download hint link
Date: Tue, 31 Aug 2021 15:55:01 +0100
Message-Id: <20210831145501.2135754-3-james.clark@arm.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210831145501.2135754-1-james.clark@arm.com>
References: <20210831145501.2135754-1-james.clark@arm.com>
MIME-Version: 1.0
X-Original-Sender: james.clark@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.clark@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.clark@arm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

http://llvm.org/apt returns 404, it has moved to https://apt.llvm.org/

Signed-off-by: James Clark <james.clark@arm.com>
---
 tools/perf/util/llvm-utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
index d95c56d175bc..96c8ef60f4f8 100644
--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -234,7 +234,7 @@ version_notice(void)
 "     \t\tgit clone http://llvm.org/git/clang.git\n\n"
 "     \tOr fetch the latest clang/llvm 3.7 from pre-built llvm packages for\n"
 "     \tdebian/ubuntu:\n"
-"     \t\thttp://llvm.org/apt\n\n"
+"     \t\thttps://apt.llvm.org/\n\n"
 "     \tIf you are using old version of clang, change 'clang-bpf-cmd-template'\n"
 "     \toption in [llvm] section of ~/.perfconfig to:\n\n"
 "     \t  \"$CLANG_EXEC $CLANG_OPTIONS $KERNEL_INC_OPTIONS $PERF_BPF_INC_OPTIONS \\\n"
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831145501.2135754-3-james.clark%40arm.com.
