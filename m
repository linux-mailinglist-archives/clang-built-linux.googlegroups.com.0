Return-Path: <clang-built-linux+bncBC2ORX645YPRBX7L46BQMGQEHVM3UGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C4336296D
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:38:57 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id x12-20020a63f70c0000b0290202e04d4af8sf3470670pgh.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:38:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605535; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8FTdztV4QXMpMISDgDJlELjQPHOZCgS+lD1dKB/+0V3TvsgX76+fjOCjswLisRLpp
         jzHGJmOGKlVE3bZZ3uaw4lPOHdunaDxQ20rZYizIKsNqAWvytPdx8UO2KfmZ5iUUtFSf
         Ss0DyDwFAl2KE5CopgrYzglG7gW+g89toFwqQFbaeeed035RVNaRiSXTGw6ndY25iAF/
         06IpSndpcP+PYJvPKgd/FJw16mqdQo6SUekmXrrHY5/LUAEZN7XDMWjPKmR2wZ+yBkdE
         kwPFkOHV0MhWVIYR+YyVaO2/l9RO1gZhg8xac2sqxfOlzmg08tLyJLsRwd6kyzQB0VLr
         H6rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KXdGdvbkBYCmaNXwtw6SlE8ZkktCbEDBxeUVzTSmzYA=;
        b=OVXncx7rzSFsdHZ3NsaxCwuxWSaleWUBWuCLNdTJeYWpSpgRLfEG0G74+FRh6W8nF3
         q3VVDgBtk1SUUSyZhZAMpvh/NYb7hogXp8xGSHjUdCIhMLKMnqjeC5Rqt2GE+r2aGL/C
         XiVOkT8BJGlKbXcW2FICS63kF6dotWBi1/ZUV5Tu6nlS6DZl5gdSbJRbujaFEIH8yGb0
         XlEErNGJUbwHj/B/SZfAUfcGPB/Ha9Kx9u8l0zJzW1G53qfvwQRE/2zcpBGUTHPmNF5R
         MUKsQMViu8tSsr5goUnJv8wi6dmgGi8o3QXAnKjekpkAaojrTr9ziYRCMDoeUVjcms/z
         sqrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uRFE7haS;
       spf=pass (google.com: domain of 33vv5yawkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=33vV5YAwKALstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXdGdvbkBYCmaNXwtw6SlE8ZkktCbEDBxeUVzTSmzYA=;
        b=BuTKycdqc4AQv8FLWW5Rfbw4Unw6NEL4VuLLc/nCfhgw7QifwNnpNDhQgtpI/B9Cj2
         cLHxNLhcCQJSfADagE5Ts+u8bGEqQd3myN6b7VeNk4LiiwliMkZ9ymFEr/t8rctoifgm
         CwhbR1Ti8XEZsk2qpg9QP+TSN4THapQbICa6hI1B9XSzb77XFYq48xYhifCyEDIa9oeP
         22O45WSRl/c2Sjmd92FrjC7MzBgalyf7lCs017MXMAYORgQbzfvG1iaIUUU2t+sOikhm
         awi90ht8o3Aelkmv9HRIjK164ulsjYgbV+lEOlV71cCOKRMIIdF/9ZtM4bqp0d/dEYhx
         rW8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXdGdvbkBYCmaNXwtw6SlE8ZkktCbEDBxeUVzTSmzYA=;
        b=Ot+5j2sTisLtaxHgGetn2+su37kA2KWN6zd/KdeEL+aMgeloEvl8NPiOJXstFIFIcW
         OiwrwkwYgFEDubdMkKw+pt7HdT3bxmwkeEp+HtKQbxDzFj2wEdAw6e5Rk+1eco6k/OOa
         8cy2NFcxr+GEszxnEJJkC/21AeaW+pVrQJ1gJBc1JF10j8uzeKKJJe3q4/Xykj1yD8lh
         vWvE+dvuQrWDDEJj6GtuOpQDClC7yJsBuGcTIBYi/qRd76bOlQZ53buctKfoe83mb7BK
         uF3UMBkQDrkn/H7358alqU4eGQcP6ZJSeocgVxHawz4QtpmXF5HhOBLPAihAmffE0oK8
         IRRw==
X-Gm-Message-State: AOAM531VBLdUZUOpnbqDgX0PBZPQXNvpIsEoaGkeHguOupBO1n6DjFes
	ZVO8Bq0+n/U1N8BAj6qJYsA=
X-Google-Smtp-Source: ABdhPJwdLIn8YqO6upGVlKa22X7nph+6ksKB6FXIVPdSdsOrCxMY5rP4+t6V5L4lzBkBPtr6N++g4g==
X-Received: by 2002:a17:90a:3b0f:: with SMTP id d15mr5057557pjc.235.1618605535728;
        Fri, 16 Apr 2021 13:38:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fd4a:: with SMTP id m10ls2421239pgj.7.gmail; Fri, 16 Apr
 2021 13:38:55 -0700 (PDT)
X-Received: by 2002:a63:1b0a:: with SMTP id b10mr797688pgb.68.1618605535163;
        Fri, 16 Apr 2021 13:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605535; cv=none;
        d=google.com; s=arc-20160816;
        b=L20Ss34lCHNTspkHRT5pYc4T8dDWBfyucEXqVS8QPBbKGhQsJhbZMTfytwy0zTWsiK
         o3URY4bEUkO19ih7hZ+ICSooruckKAru5yWxJPh/MssMFGUy82udgdKSGLDekoVV85e5
         Er3t7xTuLEsoD6vXRy5bwtHE5yQJlFectBHPOR9fos5zBeAGkBGvqO1SCms/w+X6vCnE
         OmwfNbrod4r0R7C84KS6A7hAnHDNy148IRNkh+B+LK7zEXKsl5CwnGejeRclLnTDTzKQ
         bdxfYHJSSwxL7zZkuMNosUnViyrOIaNS43YbdtU0F68xN2QvflMJ0h5BnnsAhXe7kk46
         A82Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=pmn8+hgLRHNyGuEUjdW5q+p1kqYnyhA2JKs6WoTHh2Y=;
        b=K4I2dmMtZUKE0sLmWVojQDd/dKMATDzKLxIUwpVgWbT9C74OyPQEKJd1zfDhw5I0cu
         7Kyonm2XCHqCkjOXQi5dHsBR9nEfXjQoXomRzIolc2Yh023LnXOicyv8Z4lPUX0NyFWF
         LXyE9D5C9KT9d00smE9eCZuy8/Os3+Vj9xXArE28rgO38pQIa0/hay/ljixxfTTZOvsE
         P6djGBCE6XiPXfEThw+Vs338HmcA3iRF/ttJCpHt38Em7lky4nLAQH4k0zBqkHLUeOPf
         fVai1N6NIEU09JqFpeocqnuAzzYGntepiMLw+aICefT8O1HtrQfzgc7jMIyWctyNfx8S
         ZVog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uRFE7haS;
       spf=pass (google.com: domain of 33vv5yawkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=33vV5YAwKALstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id a8si632006plp.2.2021.04.16.13.38.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33vv5yawkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id r14so6346034ybm.18
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:38:55 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a25:b983:: with SMTP id
 r3mr1409748ybg.238.1618605534346; Fri, 16 Apr 2021 13:38:54 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:33 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 04/15] static_call: Use global functions for the self-test
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
 header.i=@google.com header.s=20161025 header.b=uRFE7haS;       spf=pass
 (google.com: domain of 33vv5yawkalstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=33vV5YAwKALstbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler renames static functions. This
breaks static_call users using static functions, because the current
implementation assumes functions have stable names by hardcoding them
in inline assembly. Make the self-test functions global to prevent the
compiler from renaming them.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/static_call.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/static_call.c b/kernel/static_call.c
index 723fcc9d20db..d09f500c2d2a 100644
--- a/kernel/static_call.c
+++ b/kernel/static_call.c
@@ -503,12 +503,12 @@ long __static_call_return0(void)
 
 #ifdef CONFIG_STATIC_CALL_SELFTEST
 
-static int func_a(int x)
+int func_a(int x)
 {
 	return x+1;
 }
 
-static int func_b(int x)
+int func_b(int x)
 {
 	return x+2;
 }
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-5-samitolvanen%40google.com.
