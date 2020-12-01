Return-Path: <clang-built-linux+bncBC2ORX645YPRBJPPTL7AKGQE7YCIFHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 207202CAE95
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:43 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id gv14sf1785214pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858662; cv=pass;
        d=google.com; s=arc-20160816;
        b=j3faKY0IRZhYviqtxMUifhk2I5biUCOAaVOiywUYox8ViAniVqnMNKsJ4aVdEBWOZA
         timIL6I6z29pmPHLv5IMWsCu3Rb82prCGYit9KtAHhxIbf70L79a62F/P3t2OBfrQDMf
         1Zpot9KT1nXaaJzXan2pWfHDZF0VU5GXxKalGe/cMj85luv8VY9V3ihanK0sxg1d/JoU
         OOs9WUtCwTkFGHE1YYTfYS+IPcNaNl9+L7sYQB2w6NFqMCAg2r7D+d1lxkuSMBcMztxO
         iA7dnN+jXyg01eYDNLeplA7MjbIEKja8HBNzvUuXymEtjyX1sWp8yupZl2tb9fvgKito
         2Zrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=WR1jVC8YK5PEIzBwWDD+NrrqY98Svpp2/ERSsIex31I=;
        b=y1JXARyhwSfgh2y2O20iOrpd2W8W5Ozob+XnGdfOJIbpIdCjSxsYj7wN7uJf0O0TK9
         yxNAGZvFxBxF5wPsrbcQlKqQYgz9jbxxpQ70Tt9YSVJYXUQ9ixPx9gQBx4u1g/nFm0mS
         jtgxlXuGJtCKF0bGEHWCp7CCk/LYShjfd15ZHjWcVg10c+0YXMnGXGR0NAYKd2/NLwsl
         rHsmoiHvdtwpgLGh7wO8vKxGbmLM0TkouT83KRQ5LjOgCGcHDiLb28C47JmjwM10BljO
         y0P0M9XFwEDAuzTUhE8Hfkry1QXna0e8tdsV7wJHELjAS18nXvG8EcgLdynd05BKzb3b
         XArg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N2hjZ+w1;
       spf=pass (google.com: domain of 3plfgxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3pLfGXwwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WR1jVC8YK5PEIzBwWDD+NrrqY98Svpp2/ERSsIex31I=;
        b=KWeNEo9xpX7qnYNjiQqKkSgPzMWhhxnbJIjpIOB0mM5pILGqvYtrdY008gVYoRE19P
         UdbZU1zsq6CA1XZF27a5brka+O/kJ1SYaGgi4sHTp71czQnCHAv2tODaIy96KB6MAhUk
         797Ocv7cCehtll44dTC8axfHZOTZn/aJygxlN5bTtVY4IrdyNegvVFfiwpgPVkWC4dJj
         e2upltAq8zp3tMQAt+tGULFx/RwuLm0JhDHpxGWiutTMuaeaON9NfY94MxOfohtNt30K
         B6yJwJv8DbBNRt3ofp3LeqoVipZtQdGXPpC8kQep5Igq7UZ5RibkJF+DekFRmaMFWEWq
         UB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WR1jVC8YK5PEIzBwWDD+NrrqY98Svpp2/ERSsIex31I=;
        b=Y41WIU/1DVEgYWnPXfqnvae/o1RCQbXAUHnrqGwXmTvJb2ZgN4OyVbqKAoWzAPfvcC
         4vycJxoUTH37lyHpmVEi4YUlutr1qlKN2ry4ZRqvUXWuSQzYJHNZKJaRDAI71hesxGvV
         jezi6pA/uzUxBmbXo80ntSFGrYCugdh7SZET6R8MSnOGsfQZyNLXsk8WllMrd/y1ERSq
         3LYQucvKK/pCHExdYHq44bysTNHMdr/1k8TWIUm0veUITNZI2rXxDDpwrjdjAKYb/QpO
         a01CE0A++NmcreEhRrZ82SZxM5N2b/au+AwAKkYAcOX+bpU56CeREebkVvn2Cx82tVVE
         1HAg==
X-Gm-Message-State: AOAM532/Vu1ZH1r6RmQiTJJ/24l0X/BhDBw3ihxQYRDytf2Nd6hFJqgK
	UiUI/M8GzKVDoJm/pja/5nQ=
X-Google-Smtp-Source: ABdhPJzkUZxcowSkjVKF4QaNef5ikG4LwpOncXE9ulTsl+fOn72fZm/WEGzC8PVJix/WRWmT0rKHMA==
X-Received: by 2002:aa7:9490:0:b029:197:cb4b:b678 with SMTP id z16-20020aa794900000b0290197cb4bb678mr4274173pfk.59.1606858661733;
        Tue, 01 Dec 2020 13:37:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c142:: with SMTP id p2ls1184508pgi.1.gmail; Tue, 01 Dec
 2020 13:37:41 -0800 (PST)
X-Received: by 2002:a63:749:: with SMTP id 70mr3947175pgh.296.1606858661070;
        Tue, 01 Dec 2020 13:37:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858661; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlIQYttUzZIYqYqHxghMVps1tImGoMJhCdgLCSMZxkUvLswcOJOwt2ZhM9yc5tw+VT
         l0AwO1nMoVWv9ppPEO9XhxT3jCEhd4UJf9lVpP8FCSuWpN8H+fbFKaKPfHQg1RFBfCnp
         ASpR9gZNjoKBgJddicImx6NvsjOqgcea+/amZ7xpMDgucZOOAXszvnzzwNT52UcDQyoi
         pAYHN+tOpcd4RKA++oD7xtw9vYy8FGGjrfzyKAx7NESlQLvnEP4H4wSHDhXcYjo5y8sc
         TwBgCBnA+SXgim0U9aynsXUgtRU5c4FAthVsV5b9D5vq6jrEvZrZFbpj3PZnUUd/rFh0
         nSNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=2x/zjVn7tqzzMwlgW94lOF/53GHge2qEfxVssZKSVKU=;
        b=WmexyWsiQwpKsZIWZsnpSLWeIdA5X/oujVnIPUDB89S+MfeV4RBMOh9hzrBkwmNfgA
         vUIyjP0nCchHqsr1MYBEc+eaUqpt0IS7V0WN6JQz4qdKP1qUhvUucjmo0n9iptK9G5kX
         mL90kSP6hPOR8KvEIfACdRLGW0U2GrYIJ+vZFco356eDkx2NH5t+AZ+l7u0vhR26lkJp
         0H/9zT/Km1ZsXcvyEonzUym5CfDe3PDccK7do2b0U951IwUQPK30SouCd/2upoOKEo4S
         iRWxVW12T9onXB6Y4SG6K+AWQGXI7nfQ/XGkBDizU8guP0BJdaJcpwd29vN0T1lEYiF4
         /3DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N2hjZ+w1;
       spf=pass (google.com: domain of 3plfgxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3pLfGXwwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id r127si98472pfc.5.2020.12.01.13.37.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 3plfgxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k196so4028532ybf.9
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:41 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:c106:: with SMTP id
 r6mr7621086ybf.519.1606858660290; Tue, 01 Dec 2020 13:37:40 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:03 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 12/16] efi/libstub: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=N2hjZ+w1;       spf=pass
 (google.com: domain of 3plfgxwwkadmhpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3pLfGXwwKADMhPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 8a94388e38b3..c23466e05e60 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -38,6 +38,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-13-samitolvanen%40google.com.
