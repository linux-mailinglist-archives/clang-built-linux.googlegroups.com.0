Return-Path: <clang-built-linux+bncBC2ORX645YPRBXEYQL6AKGQECUNINGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 87069288E04
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:21 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id j5sf7120965pff.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260060; cv=pass;
        d=google.com; s=arc-20160816;
        b=miWVKnqDeBqjFq0xALfL/eaLfeAPRE9O+RWJtjlsu0HNsRpqjr/hU9bb/R+nTrQWrH
         sOAR6wb7PZihKJVYlUDWUCCcxZqgdjYPwVJjELgBS7km87mNJ8PogzLMLfeq5iL6qeIG
         ilQQLaYqFL3coJ+rgfxXXG4bjf462LT5408xr33DuT6MQGmDxrFw7o3j8BxoigtHjaHf
         eNFUlvce1GmzHJ+j2LSHLLvuPoL7fLDijXDIUu2ga3rDEwDZcVHGrOMg6BUw+DcLBN3W
         AFiWrGo7mZNc026y5sc/UE0vgk/Gri0U7eNXyMv4wT/coBhqwCsCMD0lriutFn7s5hWl
         pLdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=SDQnRFpqJntG3WGOH6Xi7XGISZ/+KpCPYM+JiVs+2+Q=;
        b=N/Xebqs5L49ym9OCcCPsXbGh240cFMcGVVxBaXnk7XrWNlIYo3AzLPVDESUkkBTgRv
         +rgt8PBtsiDQY0Ly395W05xbZu2FxcfThM0DaL+ST73DmRVomoOy6CZxemTdJhb4Y8CJ
         xyr7YrA0byqitLMa1plESk0IVnmaiizIlLpxNzvzPHo06l1F2m2uwx5/WibL0pcsfSjr
         ifuiPtLV3vjfCjYzopavW9X5dCzQ58wCLgJnxXmSr5drEmOO861pcOY02SCj+Fezbw9N
         b4lEzVQ49M4ZLd0VK25O8Cso9C63AxVCohxYj+bRCFWfbBIfywnggcFUF1pQYPG2uGgP
         vrqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T3uphKT5;
       spf=pass (google.com: domain of 3woyaxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3WoyAXwwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SDQnRFpqJntG3WGOH6Xi7XGISZ/+KpCPYM+JiVs+2+Q=;
        b=XQuT3dBnTZ/Th4a1dzSDZThval5VjHhM1hrXjL/YzD3hTAY67STQ/y+mRHNHQXKll0
         XHbMTMQ+leCsbJFRH945OwwuGDXbaEP6EgaFaHI+7m75wMR0q0Q2OLYV3K9yMnz3GWbe
         GSQ5Qa1YkkGqcN7Kvj2dZLBCesNwDdumk4a2/3aI+3Dsjy20nuWslMOLLZI524gCPykZ
         mmvvY9H8EndenpBtW8b8BsZFl8aZRo8y9rceV++vS2b78g7Uc5GsUSgK8MC8hd8EmWxm
         QIDYylciCxOt7ljid8TRcrsVyHSM7kCXCjw5+cXmJK4sRcdn0JM0i3XZXsoSiA1MzulM
         kfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SDQnRFpqJntG3WGOH6Xi7XGISZ/+KpCPYM+JiVs+2+Q=;
        b=lrHRnEgSm5bhyQCiqB8scCzN/+GBg1BAzp2Iu4IKsY7OQz5aQjhL5630GshhseIgXu
         5pGVOCrE2cjBGvim+9TRQOMLM/Mg0n+zZMIrmcnk82O0HbXTzasu1abvVRCPPmTqaZcj
         4uvBdVHu90N4tXM7aujKEtP5Gc40tmyn3i1/JyvpdE/F65myDH6YwndJXdXcKnTRpnWn
         j3rZ6BFpAh3UQSFnggJM960bGFhFHMrdlnC6OwpHA89wmARid4bpUz8TOIWxlrkWpvZL
         O6tCIthxk81T5jbqAoUhk0GElGR/KUgzpUSwnT9whA4YlsDw6+5z8HwAF7v4ld+1i4tC
         AdSQ==
X-Gm-Message-State: AOAM5322fFt9ltrd7tUlEqYZTG+0YSeacOlIiNkf+O0ChHDW1RPuTmDi
	8rV5PtPT/WjTOD+usDcjzd4=
X-Google-Smtp-Source: ABdhPJzQKGibcReApOe0ahzDxD0dPAqHatsCEITqG7bWxtzLZ/H0TruCZ5NotE6PsYB35FCwEPsJIg==
X-Received: by 2002:a17:90a:6985:: with SMTP id s5mr5323223pjj.17.1602260060291;
        Fri, 09 Oct 2020 09:14:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee4b:: with SMTP id 11ls4585452plo.8.gmail; Fri, 09
 Oct 2020 09:14:19 -0700 (PDT)
X-Received: by 2002:a17:902:ac92:b029:d3:d575:e464 with SMTP id h18-20020a170902ac92b02900d3d575e464mr12651991plr.28.1602260059644;
        Fri, 09 Oct 2020 09:14:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260059; cv=none;
        d=google.com; s=arc-20160816;
        b=BZkIyJqf8XjHNyD9ZI8tLiIv++ooGqpaR0iWvnddegP1De5mI0LdweyZny2WfSdCQF
         ILbUsntkB6ZHVsBguCD0+0EXaWHj9y2Kc7bxmR1MGZkE7TpJxhJ0j2M14LxWUn9ZCxSf
         ///CZrSah6a5CA/h9PpSy93yXyWwHAprgOya29LU9Hdg1UJPpPoMkkWgBRc5M2JIZfzv
         5ZBWJGsWui79Q3r0jQVFsHzUK0+xRpVdL6qX4sFfd8HQ1LBKwGjL7HkvwyZ0JAet/7Dr
         QfDbXvMXB4dF8IPs9bKn6o6eXK2XayN9Jk3+ZVrcnja4J9ci5akedevQHO0YwK3I/Xzb
         oTIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=KGusc3+RBCNZzwrkW+3708RrOouUa5FTnw8PnBTY3Ig=;
        b=awziIU176kBKtR0V/58VQ+dE2C3eJ/LD6M8jIZBEYXe1VHdHX671vZZ6aRf0AnNFDu
         k0jNqag6q/WytX7gry5te3Tr+5B++LGWmTxmWzts8aE23/reLdhYS8+f1V6BDQAYjlK5
         P7lK29tbcLmLEpTmPm2jkmkfhKHIR/wLkD+ZafdLC1uxJIUTM72oiZmf7ZicCOOpsml2
         qKD5F9z4ED8tFrRtlRWTRvAoJGMwMCn4no0wXp/nTHV45JzcDTcfz2Go6jcK1h0Hdb82
         ckFALrBcoVWhDQT0dI7lasK/RYxhXaoScMa52L8XQgYXNF/8QBxdXEPygAmEFO/nBrY0
         nRzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T3uphKT5;
       spf=pass (google.com: domain of 3woyaxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3WoyAXwwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id ce17si573487pjb.3.2020.10.09.09.14.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3woyaxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id a7so9344543ybq.22
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:19 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:cd05:: with SMTP id
 d5mr18037401ybf.212.1602260058814; Fri, 09 Oct 2020 09:14:18 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:28 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-20-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 19/29] scripts/mod: disable LTO for empty.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T3uphKT5;       spf=pass
 (google.com: domain of 3woyaxwwkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3WoyAXwwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-20-samitolvanen%40google.com.
