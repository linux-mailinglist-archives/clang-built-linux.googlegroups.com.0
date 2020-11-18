Return-Path: <clang-built-linux+bncBC2ORX645YPRBPVW236QKGQE4GAKRTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E15D92B872F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:59 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id a6sf4602483ybi.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737279; cv=pass;
        d=google.com; s=arc-20160816;
        b=OJiyshnFw8Xgu3TZ5M2x8g9wMTaEu6izZbtDTFoZOmiBjPHJbJbKTag0cxuxuUvu7P
         JKnQiphmJ//uPgUZ8oNGsKTNueSk1F3z4gVoZyOm7w9ef/ZoVUPhSu9TF8MSvj1Ks2vj
         1utaASk91bVPBclP9WQKA3FCw1gB7QVk4t8ee48LSPVTMAyYsQzeaL9eAkcTAnYkwfiB
         P25v9bZdZmYuY82J66KZ6lTq/9ULU78Jj3vl703UL9LJbao56Nhmqlnyx7Rfmawyx+He
         trtehCP9eXxgqJYIyL5QOnerIVp3DQjj7DlESAaD5HFmE73aHzNaToDbGU1qeuKr+1tl
         +7/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=RCOmoXJXp0d4jFug2YXImYq6e1YIJ5lhiGbKn3Rk4lw=;
        b=ZuDC0FL6+srDxnNJKKZACq5iKvozBYoEEedQWgZQMITd0PvBPOq8m2EKUwCbJtDP/E
         LU/43EKvMYfDHdDADp2vJ69sLCU0fQ0DHjM0G47dumk9AVfoMPYXmeFHoLW7IIJjYbE5
         ArivjrisJOs47kqQE60vmwnWMPQ87xijWLoZuAbNswUFAn0kmTAY7fSqgOHxBduCWnzl
         7Ya+voNBNhEbltYaT/OLGpKbEAJyWWLIA0bwBxeGrYWQbC1Yrq3LCWlhJLQxMlrXi9C8
         0op0I7kHcYRns9q/dLvE5Fd5vqCNYKVtJA6veU5WQgVyk3ODKcb+it/nwE56oNK+2UIH
         hZmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hIIcn4Bp;
       spf=pass (google.com: domain of 3pzu1xwwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PZu1XwwKAE48q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RCOmoXJXp0d4jFug2YXImYq6e1YIJ5lhiGbKn3Rk4lw=;
        b=IplKoXKVLn5izEblFy4YXNKXxhWhj1qVN4CHsJy64wpCz+xf1bISEbcGxpHw+v67ph
         NDJ6yXJs266tiVMgxyz53ga3fEnstq/8Y+uwO3hxpuHTr2reReEdc2zAbw5UBdChkKtI
         uosbb8afwy/hbDfLTpZVtJS+2ReWVE0KNpy8RKj28lpGIuu5Hvr0c3NkmbsgHpAT4xaP
         XHwQnco4xPf9k3hHtv13bL28cHEm/zp0dZMe4qy/IM0R4IsSMzLEHfVb47Y2K+40AkDw
         KGdskKGvNd7x17wrC1ujFkL95Auw5hj8voUo9YZFXyS71TxMLv4qz7flfklx+wSP5EWN
         f85w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RCOmoXJXp0d4jFug2YXImYq6e1YIJ5lhiGbKn3Rk4lw=;
        b=ROuuB1wrzRTmwIP2miRx5jDLBqDOyhYoHIvDgB2AfTxj3Cf3rxXL7oEOCunCOobMPE
         2bmwOQSzNC6RVTVfyKIQedYUnRXw28GnjWZ+I7T+R42HPjUbKOJxgJ8CcbHxQ8R8F0KL
         LDGW1BYFTlHcQApA9Nw7p1Ht+5mBPbAMolu3TQYdp1ciSH9/o/1vm/Hd4QSJNaaUnbdU
         s9j6wHvTUzn9RTYm0ZYe678d8ewrar3KDyQ8lGm96zpOwuN1byQLxALgZUKVEEDLhQ6l
         HjBw5A90BzMfdEvFo7V3ikm2I2ozEDTgyCj10VVjAUqrstSbM19Pyfgbo0fVCGPk1GwY
         xHmQ==
X-Gm-Message-State: AOAM531NBgyE39f4QFSna8xbIjRC/puDNdouUtwacWOuAjJ//wNWIlz1
	XRSY80HcSmA0R1OASygzzGQ=
X-Google-Smtp-Source: ABdhPJzQ9KOzvN760s1BuPAfXxPva393micsRhWvNP3QUWImJU3f2j7rVboWRPZoEqvar2LecNApeA==
X-Received: by 2002:a5b:c0e:: with SMTP id f14mr12959912ybq.83.1605737278949;
        Wed, 18 Nov 2020 14:07:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c553:: with SMTP id v80ls626948ybe.2.gmail; Wed, 18 Nov
 2020 14:07:58 -0800 (PST)
X-Received: by 2002:a05:6902:102a:: with SMTP id x10mr7948834ybt.130.1605737278329;
        Wed, 18 Nov 2020 14:07:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737278; cv=none;
        d=google.com; s=arc-20160816;
        b=KkHXbzPHKSAKac3hY1Oo5icyA+fXpMyQcUPy+zk7QE0l+p2IGPBVWS4izEpVfRVhMx
         6zllQVPH0VEyBqRKID7jJgtsNsZWvyAXfsOq4fzR5Q8P1St+4RqN+siY3ZlPFrKiDQJs
         RQdaW5711cIK/2TOUOlLQKTbZKfTRTW/yyjPXh2+FHpVT1EXzLJ7oPiOKPe2Cri2yQT2
         2SEDMHcvVwsx4Gu02mE0KHpAATCKB/4Bx07AMw69Y/92+5HZkUJC840y+g36m8F1y46S
         4rU4kl6Jy8yoSceO3UoJv38W9RD/yRbdEWyOpZxYfuyMfwcWqMrClkm3KW1FyCbw3CpN
         OtnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ybG+vgy2nM0cZESjHkdkrOB9uboR6Bigv/FKTPhrj4k=;
        b=lbds5Ip5n2kiaRjdovcPiRo9SQKWLY20OGjTlX6Rv7tIucuKph8pYAJEqxLBbPmb6h
         Kw4pxqmi7/N7HEl9mbKPaSi7Pb91MuaRZdNEEEIOgEjpBM7tAkxXAeS7SBBaLjhw1/jQ
         g1RC88jpMZBz5V8EXXp/7wfNLg3IlG0NCqr4A5qARKjSSUR1r/BxLG3n4QkcW9BDcTDC
         27AvCXMeDpi28p40XO7Vlror9kFuNFI2t9yxtPsb6mqkzUp9tvK+7OVpRPMQyz5cGkJ7
         rkyc1lLKLn5xCIKrAzqEbtOV4Dxth01jVB1Oz8NPxq0nL7AvVQ7KwcsXZ9ioX2cSANLD
         PC2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hIIcn4Bp;
       spf=pass (google.com: domain of 3pzu1xwwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PZu1XwwKAE48q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id m3si906549ybf.1.2020.11.18.14.07.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3pzu1xwwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id i39so2676227qtb.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:58 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:32f:: with SMTP id
 j15mr7580348qvu.35.1605737277806; Wed, 18 Nov 2020 14:07:57 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:25 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 11/17] scripts/mod: disable LTO for empty.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hIIcn4Bp;       spf=pass
 (google.com: domain of 3pzu1xwwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PZu1XwwKAE48q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
files. As empty.o is used for probing target properties, disable LTO
for it to produce an object file instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/mod/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 78071681d924..c9e38ad937fd 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 OBJECT_FILES_NON_STANDARD := y
+CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
 
 hostprogs-always-y	+= modpost mk_elfconfig
 always-y		+= empty.o
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-12-samitolvanen%40google.com.
