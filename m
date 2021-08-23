Return-Path: <clang-built-linux+bncBC2ORX645YPRBR5OR6EQMGQEMHJSM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 400923F4F17
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:44 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id x20-20020a9d6294000000b00519008d828esf10439400otk.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738823; cv=pass;
        d=google.com; s=arc-20160816;
        b=UCbCrT0RIC7X8J+Lt2tAzt1gieql910nG+qIpb74P3w0d90M3nCkXoQM4V80TMLL41
         OmL9SQ1t6WZURwdbV40IR2noUjQzfVCw9l63vNpfXWfxh37+dI4rG4+7k8yLV2Vh8crf
         PmkDiUHZiWk0vo0+2yShqG15Khiv28z3WJGZLIVBcoUhSG1DF5R982Se2vwTnlZfmGst
         eNxGQEBHgmbW6FeaKjc8k3mMnzrM6xI5UiTqWCEKgLCWv79mSeK0EqjwtB5e+CbAh04k
         05YYKPgD9Ynb56A/XH/SZpIGVPlxuOcGVrKBnF552CobqtHTUl148Wo5qK2mA37TySOf
         ZcJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nVEEIYlRiN5MervQRp0WUej2f4X2piDZ2ccgOnKV3mQ=;
        b=UTaC1k4KyYATbsfZILhu2ZsgM4b0iME8tJ2siNCEQH5v4QBI6Xe3fvoeQ+BG6TZOkp
         NWEYvcjM0LTbbc1jSKyBtZ3iTpy55B9F2mjBWe8DFEt0C9wIqF6BX16kdJgdHiZjAjaU
         cTg/O2r5l7BxCjY/oxZq1HwFHYloZTaXGJ1yyHzSywWym5//215i1FZ2O6zpDiWq1haG
         Dr5vHpRfFk393yGVQVptSbNvi163sWqDMrLgyBWF6eWTPN9ygnTJYclL8fb/zzIalxh2
         UP1KSp9to7VxNnBh+hBO/ggnlPMsqGsbX+dQm2Fllhip996YThzgA7mBtOdqNvtm98vx
         cOqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pRDBRM0Z;
       spf=pass (google.com: domain of 3rtcjyqwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3RtcjYQwKAJMFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nVEEIYlRiN5MervQRp0WUej2f4X2piDZ2ccgOnKV3mQ=;
        b=S0/KzlFrN66OGsvmUr3ha7FhVdpQgTImf2tc2jCJZizZEfcFhW/HmVwOddLSxSwCLa
         ukLvi/MqAcfWCzlJ8F40kpgUiEbJnYAHWvSRyeDh/f6jSeY5cJNf7lLkmzuJ3fZv8MKP
         WK3tDTt/ply1EbtROkhkPssVVqFrHTh4SYS5q8x1f4FTjSZy1QYPebDXBHr/THesxRIK
         CISqCAqkiJ/5Kb2m1D9MIOfqHaApo/RxW9RpNrwdzwvVxVYq0jT48nFaSQUUBe3NbGTW
         lsF7MIIs3N8U6bsudJlm5Eh4z3ZHUeBEjSNimKJyUWiboSSdDroGa1PUo82rA9QCzOQ1
         NeTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nVEEIYlRiN5MervQRp0WUej2f4X2piDZ2ccgOnKV3mQ=;
        b=e/DLw+RXuiMpBpKkdzSxlOkijqCgMu6fn2EKVLJxm5dhaRvYgGtfoGThu+J2R98M4V
         vi0BcLXt0bOkiankGnb3jO33lNW4d/QgwdiULmau1/3JYnJNER+5aT8eibOPczUTYF7L
         FDpYLo3XCsaIVxbbW8cxYiyXl7ykdljpKpEGx3kwkKs+SrR8asBEZJtXBMn5OWluXq3t
         oJ3rfbI94Vlk3C0rXmMu3aHm89hraWDAK5TbCMpSmMnpHS6+SqMTVPeIB4CF7ZAIOSy3
         O0IQYu+5E/vXNkCIJfWW6KYeVL14oMtKGO5ob3rHvXRxQZSJFiLqyUB8BGmp+9dNLxLP
         g3Tw==
X-Gm-Message-State: AOAM531etr3yJ7GCTJTFZSEoxfYeUYx/11Q4cIBjRSFfDL3V3bf8Fls4
	1X8NtF5JQuLjlQ2sh5D7rBE=
X-Google-Smtp-Source: ABdhPJxC5ROGLVFwzGnhwogSJsDC50Yo0u1H9LsHIpY09JNGmdbW7ga8MidQtzvQAjKddoSwX2ZYFA==
X-Received: by 2002:a9d:70cc:: with SMTP id w12mr25171244otj.306.1629738823251;
        Mon, 23 Aug 2021 10:13:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d1c1:: with SMTP id a1ls933079oos.4.gmail; Mon, 23 Aug
 2021 10:13:42 -0700 (PDT)
X-Received: by 2002:a4a:bd17:: with SMTP id n23mr4917925oop.54.1629738822859;
        Mon, 23 Aug 2021 10:13:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738822; cv=none;
        d=google.com; s=arc-20160816;
        b=HmCIaTFXjs6797skvVXs6NHe6w9vpLu1bS7bKt9bVfCkVAvVZtCQKx90G65QPXCFaP
         v4T7vJgvCDj/Jp1x8/GC7D5lh+/b6/xGRpwuoTjK5flMVPRtX/cZuVRwY7cl/hO6Ed2N
         QultZ6Z1lbwj10pQq1QJDJWvlGP+4uiDucTiZM0z9iiLRCmcV60i/IoHAssxMjNOi2Lu
         SWbYDh66k0yBnZ/gFEspyNYC2ADeDPAiu9OxbkxBW9YTqz75+ggMA7FUNPbDOQpT6tec
         AeDnbI1wC6Kl7GKlAVqKyNRiW1HjFicGcOFqqS3T2ZtVKrZnDcO4g5JpDlMsS9NHOkYI
         II5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mey0v7exe5c+yBAN3SU9wb93KZCOv1Lxd2KHYNUz0Mk=;
        b=Fo/GTZ6KIsEjplmNmu+PlLijS783jIwMl4SoyeIgW0LeWJ3HpcZUWGhpPpSebvocqI
         S6tYQ4k9QkXoTAxsPeRhk32jGzTb6iUIQnQzbmyr3xuOjX4ncGy0+PUdeXsDvKYPLUzr
         4CFberjZMbswxtE0AZC1qYfGTSHco1xLRG99RnIJq4tHGCp6LW2mL4ac6FAbZi6tkFU2
         sGvbg3pn7/FPCyBiS+Ixc1JRGryX0YB7khbS77ATBkN7VHluV2aL4IKn5LdwyZehpcY6
         upXddFK42HM4m83QgIU+CXYd5Vmqr3REFuvhci2QvXovM6lwd2lKrwhHGhNBFpo3G8g+
         gT1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pRDBRM0Z;
       spf=pass (google.com: domain of 3rtcjyqwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3RtcjYQwKAJMFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id a9si572832oiw.5.2021.08.23.10.13.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rtcjyqwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id w6-20020a0cfc46000000b00370b0997afeso1802208qvp.15
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:42 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:e4e:: with SMTP id
 o14mr33977238qvc.46.1629738822531; Mon, 23 Aug 2021 10:13:42 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:13 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 09/14] x86/purgatory: Disable CFI
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
 header.i=@google.com header.s=20161025 header.b=pRDBRM0Z;       spf=pass
 (google.com: domain of 3rtcjyqwkajmfx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3RtcjYQwKAJMFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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

Disable CONFIG_CFI_CLANG for the stand-alone purgatory.ro.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/purgatory/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 95ea17a9d20c..ed46ad780130 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -31,7 +31,7 @@ KCOV_INSTRUMENT := n
 # These are adjustments to the compiler flags used for objects that
 # make up the standalone purgatory.ro
 
-PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
+PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel $(CC_FLAGS_CFI)
 PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss -g0
 PURGATORY_CFLAGS += $(DISABLE_STACKLEAK_PLUGIN) -DDISABLE_BRANCH_PROFILING
 PURGATORY_CFLAGS += -fno-stack-protector
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-10-samitolvanen%40google.com.
