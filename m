Return-Path: <clang-built-linux+bncBC2ORX645YPRBSPHQOFAMGQEX3HCPGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5820640B78A
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:06 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id w21-20020a4ae9f5000000b0029116e62638sf6919ooc.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646665; cv=pass;
        d=google.com; s=arc-20160816;
        b=iYjqKBb9HU/fmWHrl30Tf4oMw4vEoCIpE7YdguayK6A7a+6yYWU4HSM0oj0XmAHaKe
         tXKkfabDVCVYXGrRhxwRJsFNbMyfJbaSCaapvTBMJ6d5mwvDnf79RtGgiRu5c3Cqd2fc
         YDazLRQVNPZJzyPICceUhDflLfG5pgDHmGMCkiJMX1M6HA+9fqtK2BFXqq9YbMhbeBHX
         U2LlUFnSJ/Wd6bA2M54r6tjKotQFOus8qMDGTktxrBErZHuQG1X4ERlMA51qzloxyXWU
         gxFuxdiCWP0S93so2gzbnVJ2GIih15gJf9zjbBfoDwG5q89wF+YpNADylKf6TuiJVtjq
         Irrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nwWrQIJcmJK+zOi9exk0qfjHwv0K2+mby85h51nWuiY=;
        b=E0o1o7GoSZsMOejts8YnncFtOYFTjIURklXYmvr9XhskW3z3LopSFT47kkB0l5b9yB
         VP4VI4Sf79glgpwjEsNnn+fJrA621TxR9k9oJf0ZVvUHI05mKywYj0204SO/lQEs3Es2
         eL0Hr01Em34noR7nTvlHKQNYfHyKOBVxWpQhKvbPc/j9BU6LIkLyyA2JnveBfDBD3NPt
         WYTpjKc/ikOybDrsVANFyzDLPRSY0uopVdYA3PyGiwtx0iH5onADrcXFOnWn3mqqxGI6
         /70yygkSeFvwqaPt4Q7RAzpJNN6IX8IZIhQfDITCv+BhrsTG5V9Zec3eNqx/yeQt+xGL
         A0Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=J1J4RNJC;
       spf=pass (google.com: domain of 3ypnayqwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3yPNAYQwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nwWrQIJcmJK+zOi9exk0qfjHwv0K2+mby85h51nWuiY=;
        b=tlhaxjFTCXGwgDXf7RpKOTQrit0e4x8aAwu4Mao45jx0GXYNwQIv1F8soeQek0v0hd
         9wuKbxEXQQhRS71XAN4lckvun1G31N7SYoFofQpp1TyndvlGoFCFy6KFwhd9qhafBfoB
         aWz8+0Iqs2G7rry7dxIu9aH/gcCvnkXaRSH9idzQvLwzhCzcUZFpJpARP6guniGz4/02
         HJeEYGT6eEngsd14DZhfBKBvNn3/1qViCwpJwAs4Xa81nnycabizdyBvZqo6Z3lK42Ce
         ywJ3CFQbS0aUnKRhzzWIhKXDxehzpYKoqlEpoU4+fQ7rL8iB4HMMfYI7o6LNNAZZzk3s
         Uh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nwWrQIJcmJK+zOi9exk0qfjHwv0K2+mby85h51nWuiY=;
        b=IgZ6wvcbkkM7XD2Te9llMDP2nFq8yjbO1VFa4sWiFcIvTMUNaNoWRFI1UOimzDAmHG
         /3GKFqciBD62CXs4/RJfg21bmzOCGKMuGd/mSw9UdO4BglUVjNmd7UklwPfFDdyI4xN+
         7XbarfrYW8aYO4nVWOhw0FkW542i6g8jDP5o1PdxoM6nBoIkS0Qlv1WpN6pcFCTKQ6O5
         ZGHqY0mUt532BtUid6Gg+U6FVb1aWtSkpC/fi41h3zI8+6fnbn1aWaII5deXefMVFH3p
         Whq+yaIrtMK2pxYMww/EiqGYvQqzoXvGaJ++VdEZW3liVs9La9h0V+/UvzbnblBV6poZ
         MTPg==
X-Gm-Message-State: AOAM531BKi5rwJMPjfoIei2D0mwjb7Movu5xyRBheshTEGupZ7FZAZao
	45Dx+RUqMDJ0JnSS6cCLtvw=
X-Google-Smtp-Source: ABdhPJxs/S+QmMRqTH5D0TASH0safffyX042T0RzBGUbTzN06tmLMGRb0BalB4emQBnEAOWlQNgJvQ==
X-Received: by 2002:a4a:d088:: with SMTP id i8mr15593736oor.68.1631646665312;
        Tue, 14 Sep 2021 12:11:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3c86:: with SMTP id j128ls2312101oia.7.gmail; Tue, 14
 Sep 2021 12:11:04 -0700 (PDT)
X-Received: by 2002:aca:6747:: with SMTP id b7mr2539246oiy.134.1631646664927;
        Tue, 14 Sep 2021 12:11:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646664; cv=none;
        d=google.com; s=arc-20160816;
        b=BZ5Q4cepcjiNZe1ORT0AFPSmAKdzBwegGl7StDFzz4sLl6NLt4FpGunSJZ4fpIRMfQ
         pVlBZazepUUqTI9TqZMsa8X61KFrFz1aKB1+0xgrJRDVjeo9GijVaR/u5V8ARNPhBysX
         v/++IovPOwUQls+ZFpoIEjekzDkJNP+g2/QQUf50Ji79F2dHlRr1CpiljhOHpaCH8xGA
         3QIYwa9iK97ZihuGS+/2SdFcX/pZ61G/d+iAeX6JdQUBSwoKucPvNkVbioGltfOtRKp3
         HbOhhPuINo2IVojwj95Pr53HwiP1oHxXw64hE+qsqucXLpqlyrZtfA/8pEFg2e0sbo/J
         NuzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=o9zlvChvYLfCJPEAl+GNaYLnnN7AesCgwEyyTetB+tE=;
        b=jagRKsPbz2na+O/Mgt0r9C/0cDc1N6cCH0jpumQ3nCWXiAp0TPIgGk+UVlDkgjKuC2
         mvFdzWoXS/ACyuoIJW0Ptli83JHnGnnh8D5tyUqFLOXqvqiUhkheltkwpdSfeFx55RYx
         mlqkg0VnxSrLIIaFiVA4CKZtj11KW1iZ3LbgkdU4R5r+wkNsrXeUn3s0YkXJGf5QKvsu
         rpRsT7oz+t/XYxW4VDafe6Droys5wzvEwHcg9OeMWGyIT9O3gzGzRUK/ZthbvMeUtM7z
         SCTEmIr+O6sHr0Uw13tiWZkMHmJZooyoYMZvjh3G7AnAQZ8F66wNbmEaWUnIMUCFh0Js
         NVWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=J1J4RNJC;
       spf=pass (google.com: domain of 3ypnayqwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3yPNAYQwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h24si1018229otk.1.2021.09.14.12.11.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ypnayqwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l11-20020a056902072b00b005a776eefb28so217415ybt.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:04 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a25:1d86:: with SMTP id
 d128mr995357ybd.406.1631646664490; Tue, 14 Sep 2021 12:11:04 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:36 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 07/16] lkdtm: Disable UNSET_SMEP with CFI
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
 header.i=@google.com header.s=20210112 header.b=J1J4RNJC;       spf=pass
 (google.com: domain of 3ypnayqwkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3yPNAYQwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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

Disable the UNSET_SMEP test when CONFIG_CFI_CLANG is enabled as
jumping to a call gadget would always trip CFI instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/misc/lkdtm/bugs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index 4282b625200f..6e8677852262 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
@@ -367,7 +367,7 @@ void lkdtm_STACK_GUARD_PAGE_TRAILING(void)
 
 void lkdtm_UNSET_SMEP(void)
 {
-#if IS_ENABLED(CONFIG_X86_64) && !IS_ENABLED(CONFIG_UML)
+#if IS_ENABLED(CONFIG_X86_64) && !IS_ENABLED(CONFIG_UML) && !IS_ENABLED(CONFIG_CFI_CLANG)
 #define MOV_CR4_DEPTH	64
 	void (*direct_write_cr4)(unsigned long val);
 	unsigned char *insn;
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-8-samitolvanen%40google.com.
