Return-Path: <clang-built-linux+bncBC2ORX645YPRBP5OR6EQMGQEJC6XJII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAEE3F4F10
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:36 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id u8-20020a0cec880000b029035825559ec4sf12793631qvo.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738816; cv=pass;
        d=google.com; s=arc-20160816;
        b=fZyEiZK2g9nUkvOVi7u8oiFmeJUhrRwpzpqSpWf5rgcgICXkFtiqoF91wuq2sSmUkR
         Q/Ub8D+sRa84Nk/rKGyNHPNipFrDvyv0stmlxUSbn4Eb/v3cj/olkYNtflDfYWKkY/vQ
         89a08O5nQEpiuq0c0h0YoXEx7qbwHSgVQxOrytQXaaIAYqe2/sQDE9n4hZvpjoJ5fPTT
         x1Gg+rEXYw7NhFDETXzrIE6BbiWlxPHxUzjp2k+AsPRqIBwMGN9nMNFnJRm6Wtb1TTCd
         gabW4xghCRFjuRxPfDMV9mqv1Z0MonPf7MNdqcVUn1RI3ALJOaPGl+HTx/nxC9zittAo
         oV4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CW8U+UxJ3NUL6Gg3qCNWW0C7xqll8dVuGSc0PSVHj9I=;
        b=jVg/YvdltSYt80VB1i6jafm+UBlu64hncv+jNjK6oryP/2hcdXZe1WORckvIYSHZDQ
         BiqYMY9mvnnvw/Lchh0E7Botz1X8quy4eqHskJwPVRO4IjhPm6WyTxyXkIk4Pnhh7Fio
         JbsT0U6c9sbqmNYasuzLRO2UBE2sWDj+ay07Kyu4aOen553GBIe1SZZGAkDOVD9DO3l5
         5v/Q6YiNyl8/ORsxiXzQ3FuSiX9sjy/PnoSiXsGeSjbXlXg0ikD+D6KUgS45PvhnKmuB
         aS613Id8eqTYjcO1KMKOAYdseMWK59qY6YVGWBQMaKAd/6KM3v6LmC9o5XvTbW8+RmDy
         YHFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dna0EQXk;
       spf=pass (google.com: domain of 3p9cjyqwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3P9cjYQwKAIw8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CW8U+UxJ3NUL6Gg3qCNWW0C7xqll8dVuGSc0PSVHj9I=;
        b=SLgzfnmSDx4Qdstw91JQddEfS+rK1tc1apQanF89VwiP62cfFOCJdS0gvKdKH/ucBE
         ONdtkY1rD8PdwoBjG8F60fDsKFoFw9eZzSfD8RK2LWqu/scPxBVK3KyTsETxsdjxm6Sv
         0/m3pWl0zMZszLobPeSkm3E0w/FN6CoVVyLKpZhh7I6FIL/4YtsnSZVrX9F4EwmJen6F
         oi++c4nQypUlYZOudm7Zu3WqiELsBieOQPLwqMXCe6siS0NtYwfKcrFW7fO8c65hq84A
         SC0upYao7BXVRvlSdvKKzlJOYOaxmWvj96q+7ay/hTkhELfL5mgdeQiVHHm9lVopIZsN
         IT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CW8U+UxJ3NUL6Gg3qCNWW0C7xqll8dVuGSc0PSVHj9I=;
        b=fBQdpeqTecndJejZSJZyeNXnW93Jm0J11jw4cPdlMFoFMrJhLLlQ61f1cVVm3Hzphv
         +o25eDLIxDS9oiBQtFByuZKJbX5juP2/3eMmdcl8iRQ0FS2koCgt6kpyp80OPnO2osAT
         n0K517cmiOv/xGwS75EE+4uUzxTX+zwAGvddIAOqUikY3oHfbf/Q95nDDDIbcmHkD6vH
         d1VgTrTRpTWxa3XByLCo85Fv96n+DPQnolmDKsh8kN3QhsHU8qsY/Gn8KnuICpvImnHQ
         UUwz6pvRplqKLH0yrLBD/jIfb18YriaL68Znv6YRXDX7oumlbAdrkNkQ2IzUbhtveSNc
         qCKQ==
X-Gm-Message-State: AOAM531Ft49OH8aeZaYwP/iZt2hY3cIVn45bUnkj7GCsE82Di9LvbSJ/
	kI7X80DV4TIjH+tZeEvoBwQ=
X-Google-Smtp-Source: ABdhPJxPOOcl/xtiNTlEyuU9U9am2Ygh2NGdkVXMmxs52G1HMuAFObYVIeN/OuLg8qwOZ47iF+vJSw==
X-Received: by 2002:ac8:5f52:: with SMTP id y18mr19707498qta.379.1629738815933;
        Mon, 23 Aug 2021 10:13:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4590:: with SMTP id l16ls6140743qtn.3.gmail; Mon, 23 Aug
 2021 10:13:35 -0700 (PDT)
X-Received: by 2002:a05:622a:290:: with SMTP id z16mr23786670qtw.123.1629738815449;
        Mon, 23 Aug 2021 10:13:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738815; cv=none;
        d=google.com; s=arc-20160816;
        b=VjPiZOR1VUR+CprKpt6phcC4G1ht+QBzmtCZiojK3EVqI5ax9Jl0MhprIZOHpkV045
         lOvajQIu0a2vJQ6VQG16MKJLcHd+o/+10Je0387SjelDPchhJNI4CdZD9UDkiCYzC5pn
         +1txVlYl9tZJgmxcyc8goyF/04kouQhxgTnS0bFNDsYLq2mUZ0FmQ9FgzkcDSjqsbHMU
         ph7XopJFDTchUw/eJfllhWNbuj8mVgzQXMyWt1jpfxqd3vC39Erl/Ln8l5622GfUWCTD
         xTSbycRGdPOarx+5TdSmQk+I0MuCVB1QlvMUndFYfPoFwgG3eWGY5j1mCPSgLDQSoB5A
         jlZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=OjHgDJUvJmMOnMd0mi83Z9bddC5eVI/HUOS0aA/fCjo=;
        b=KvjDkJonUL/238PIDJYb8aLjGPu9Z0FXNnqgBRGGf7LbgrlR8HOMzm9yrwMMSNYj5V
         YGrDXzFjg1KKQOPbot4MFOmODTFk4Udmv7IKgCd5MV0uOpVcVamb8NqYIA/v5gcYKcc7
         waOrazr0xnb1ljeNpbsnsbnmlSA1+jvVLFh/juzTF3/WqFV4lhINP0UqlKzIpNsAjzlX
         KvgXVGRePYp2Z/7BjnvnAHQzJB6w+lxXUTiSrZw13n/db2/WqN7qKNm7IgssK+WEoN6+
         DOwk/yeSLmvxgFE5Uoib+ecHV/jDV7K7WXyKIvy++Hifs1opgYcWkHM7c+je1UlAIY+8
         qgmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dna0EQXk;
       spf=pass (google.com: domain of 3p9cjyqwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3P9cjYQwKAIw8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id d7si428504qki.4.2021.08.23.10.13.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3p9cjyqwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id e17-20020a0562141511b029034f8146604fso12856813qvy.12
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:35 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:1142:: with SMTP id
 b2mr34567008qvt.0.1629738815199; Mon, 23 Aug 2021 10:13:35 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:10 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 06/14] lkdtm: Use an opaque type for lkdtm_rodata_do_nothing
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dna0EQXk;       spf=pass
 (google.com: domain of 3p9cjyqwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3P9cjYQwKAIw8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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

Use an opaque type for lkdtm_rodata_do_nothing to stop the compiler
from generating a CFI jump table entry that jumps to .rodata.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/misc/lkdtm/lkdtm.h  | 2 +-
 drivers/misc/lkdtm/perms.c  | 2 +-
 drivers/misc/lkdtm/rodata.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/lkdtm/lkdtm.h b/drivers/misc/lkdtm/lkdtm.h
index 6a30b60519f3..90d92eb92c16 100644
--- a/drivers/misc/lkdtm/lkdtm.h
+++ b/drivers/misc/lkdtm/lkdtm.h
@@ -129,7 +129,7 @@ void lkdtm_REFCOUNT_TIMING(void);
 void lkdtm_ATOMIC_TIMING(void);
 
 /* rodata.c */
-void lkdtm_rodata_do_nothing(void);
+DECLARE_ASM_FUNC_SYMBOL(lkdtm_rodata_do_nothing);
 
 /* usercopy.c */
 void __init lkdtm_usercopy_init(void);
diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
index 2dede2ef658f..fa2bd90bd8ee 100644
--- a/drivers/misc/lkdtm/perms.c
+++ b/drivers/misc/lkdtm/perms.c
@@ -151,7 +151,7 @@ void lkdtm_EXEC_VMALLOC(void)
 
 void lkdtm_EXEC_RODATA(void)
 {
-	execute_location(lkdtm_rodata_do_nothing, CODE_AS_IS);
+	execute_location((void *)lkdtm_rodata_do_nothing, CODE_AS_IS);
 }
 
 void lkdtm_EXEC_USERSPACE(void)
diff --git a/drivers/misc/lkdtm/rodata.c b/drivers/misc/lkdtm/rodata.c
index baacb876d1d9..17ed0ad4e6ae 100644
--- a/drivers/misc/lkdtm/rodata.c
+++ b/drivers/misc/lkdtm/rodata.c
@@ -3,7 +3,7 @@
  * This includes functions that are meant to live entirely in .rodata
  * (via objcopy tricks), to validate the non-executability of .rodata.
  */
-#include "lkdtm.h"
+void lkdtm_rodata_do_nothing(void);
 
 void noinstr lkdtm_rodata_do_nothing(void)
 {
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-7-samitolvanen%40google.com.
