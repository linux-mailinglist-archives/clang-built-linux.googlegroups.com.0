Return-Path: <clang-built-linux+bncBC2ORX645YPRBS7HQOFAMGQEMYW67RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4A540B78B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:08 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id v1-20020a0cc1c1000000b0037c671dbf1csf749757qvh.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646667; cv=pass;
        d=google.com; s=arc-20160816;
        b=KnxNOOS3h2gbZxcIXBiWX4wEEq1kDQPYoyVhHSciRLi9pMuZtoEgx2A9UaD8YodFP7
         HoT/jQ4I6nfOHGbK/KN5Q7DQCl3BlW507FRnxq9PINBFGlASOStxrUH77q0GCRiX8C0u
         cJlZOI6Mx/iSKApW+RAx4K/2UlbrlphrfgzL6CZvmmqt9K2hUDBrBVLdzF7yK0yh3q6i
         pdq52XKVIlj05cGXSUiqttpC6ML4a2KjhygIR3KQf9xa17894Au/o9GOwCPOxGKh12JS
         GbTRVTyDdTIf2t+/oQxN/dQQEowCs3L1qQ76le4EXB8IxOxdViBkQp0Gxul8hiX8qG7V
         ei5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6UvS8vxsjsorF3q9jQ7LUypicAku7g6kvaUtumI4X+I=;
        b=x0iQPp+yDPxsgAHp+uePdraI4AYeIoPOwBCGJbBKWCZ8gKB+eONVK4JsMaJkTmeMK7
         xC9TU0ptiHU7OZg+eKsdv+3Kh7pXyUUEW8KqFPWlriFJlCEtZh+vb3SUeCzIZfAp9Iv1
         In7GvnBKdP1n7U32rBD7q8+/okR4rqXGddBzkfLWTH8qkG7G9RpQYKSty9rCfvK/0WaY
         n38m1hGVcC4dSPHvkN1peHRH+eBSgO7nxXo8gy9VDuJf38gubnjzzz+kWWv6XcSjCrqM
         TX5SBZHcWUVZ20CO/9aHHk05H44qYkLbEQ9ak21fa0l0ocRuMxj83T/zdc29zZJWVyZU
         qdSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=IZtUF5oS;
       spf=pass (google.com: domain of 3yvnayqwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yvNAYQwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UvS8vxsjsorF3q9jQ7LUypicAku7g6kvaUtumI4X+I=;
        b=W0zcSrnRe9yENl4xV/hZDJtjBYZSr859xMjHRkMUQxQj9X3CaNZa+jpeNiSgeZ7BK7
         L11FlEOojDhHEH0iVCGdNZcwGJvTIUVG7zrHg6JYnRaaFKfFQfsWgzN0PTie4rJrM/nq
         hE/p7HJT8fA8CbGVR06F9WLqYZqJIvllh24BEfbU2lWPzzCc8e0ejwu6soaBV/ufGXxS
         MeVYcCKPA1VoQd3qM8cg5fz+6BKJx2q+1ovbryd2kqvBJxFkoHTMxckRdedD/dUioOv7
         KKiQLh3rLe5Nw0M/Qn1ruYLMsIDRg264n/fRGnnMYnl37C+xntqefXx9QEa0SKOb9BdR
         QJOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UvS8vxsjsorF3q9jQ7LUypicAku7g6kvaUtumI4X+I=;
        b=ONDA0P77Aq/WOErSfjwZ8KfN43UcgVcZuWBeHaO36gP2c9kkpLppIduAJVGAh7nDFg
         bGCtHapTHA2XDo44jRo2hgnljdPOy+OG58x1IplN2nfaZU8zEPZpLtjojRp+K/xWrqeQ
         Y1u5Ltx80qGvq5sMtuK6Yq5d1qP3D4Vxm50N8W8+4GQk+foADx0kSXJmh55YL2BmQHMI
         XieGx9XN/im/8vw05tlk3Bfo9FKeiRsFMzR6N0HepAn2Gr3Gczgt+X8V0+vAPSnJIFih
         Qs3KSWdN0ZQY2I1BR+UXlVTurulVaEXhW2CCBaDrGzKixZZt+Jm48RXeZKPJRvB+E35p
         GSWw==
X-Gm-Message-State: AOAM533vkuu3AfYXHdxC5b5IzosX4DnG9T/AS0ERqpKJo5YtoZQoDfpR
	nOCoLe/N07SCZ3QedH+eyBE=
X-Google-Smtp-Source: ABdhPJwrSOFWLTt9ezVxVsHIECszVa5eYAFL2nVWmvoLm5QBRb86vDhQZtlqQzutaquRYO60s687Bg==
X-Received: by 2002:a05:622a:3d4:: with SMTP id k20mr6237247qtx.417.1631646667752;
        Tue, 14 Sep 2021 12:11:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4590:: with SMTP id l16ls25163qtn.3.gmail; Tue, 14 Sep
 2021 12:11:07 -0700 (PDT)
X-Received: by 2002:ac8:4558:: with SMTP id z24mr6331430qtn.338.1631646667287;
        Tue, 14 Sep 2021 12:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646667; cv=none;
        d=google.com; s=arc-20160816;
        b=Tz1vsP2XyaucYbynbLzY1As2rtnxrSKo6VfOBCutOute7MgZyrljHJGrF7e02jJkto
         LPCsi66MERFgo4ABknbLH0Zl8DMhViz5J9OXNv7CaKILi5bSOvSNIpXSuIAAlSSdA0bu
         nKz5NsxNHCaF3Jc7fU0hJHLA7nGiVKtoRNxNtmSWD+Yo0yn+te5qeEZhybDjA3sCbNWR
         kESjz7ZUkNqXF3HKPrVx26hedA2u7MLNz+4afQRvzJzQQYJOB2V+4YYc77DXcQGTa6w3
         MN3ZR5g79qt6edzsVXpp6IllM0EwQzCxkB4uvaRM6gw5fJdkxBkaMNkK+VBL98eYIwoO
         vY8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=q7aDL29AYbdCfi0R0OI5kCSu1GKWHq3p/kh3PEFNLGc=;
        b=uquaESTjLD1/PT4uiNl9gD6iHyCclo4YblERjtvu+nYL0wcd/2S2p/4KO3yul3Tl0r
         7VIZwCLCl8s1Vg+vSZKEZcS1MqvY+RBKrPMn7NF0bQAgKKGcbN2xbRVyONzAtsik1aZw
         eGYC4349oIFoEKm6gq/eOpip1+AlqX5k7K46V0niJ8GyGjmukPkvOsJLnOTmHscKiBoH
         06BKpL/bwxDM7y4t1Hu9e9vJweEn6A2hXb24rLbtyvqwvJlXgl5UsV8Ejxelt4Z2QNVo
         I2yVd+4t4bnZUSLN7gU4pvJUIX/HoXW8pfENOehLkCgfK94lHCnFA6Cmw6SRf8fziX/6
         HJUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=IZtUF5oS;
       spf=pass (google.com: domain of 3yvnayqwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yvNAYQwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id t12si1001229qtn.4.2021.09.14.12.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yvnayqwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 63-20020a250d42000000b0059dc43162c9so108724ybn.23
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:07 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a25:15c7:: with SMTP id
 190mr883313ybv.185.1631646666932; Tue, 14 Sep 2021 12:11:06 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:37 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 08/16] lkdtm: Use an opaque type for lkdtm_rodata_do_nothing
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
 header.i=@google.com header.s=20210112 header.b=IZtUF5oS;       spf=pass
 (google.com: domain of 3yvnayqwkamu3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yvNAYQwKAMU3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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
index c212a253edde..2da74236c005 100644
--- a/drivers/misc/lkdtm/lkdtm.h
+++ b/drivers/misc/lkdtm/lkdtm.h
@@ -137,7 +137,7 @@ void lkdtm_REFCOUNT_TIMING(void);
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
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-9-samitolvanen%40google.com.
