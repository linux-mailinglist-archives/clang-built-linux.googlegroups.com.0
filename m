Return-Path: <clang-built-linux+bncBC2ORX645YPRBEHPTL7AKGQE43D67QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 446262CAE85
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:22 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id i6sf1778356pgg.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858641; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3gyy1ggwBmObuOmi3XiRIDzsy4hgg3C/TvLnF56jy9i+6mcg0beftsPnaXQdO2BIA
         I88eIw4qm4449xR8Hbkw5rlQOjp8WHMFbtnK50Kx+hpQroEfTfZSRv3girm1gmdSeP/N
         v7nKxrr4AoFP27VgIl4ECNR/qmh+TBkB24Xt1r+Xk0YpK2qqSp+8gUQyL98BnOgCJlcA
         NcXy3kz2c8E2AMqBELSwaQxUv+X+f/5jFuM7DVoRZMPWYDwazyatODrKFEDDfLxWNmqW
         Gj4RfuOFWzVaQU8h7AToaD5zxH51EegDg8/+B7I0nOhIRQmXOCfnrVYRHKamU/Ugt37K
         ARxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=gFlep3OBhWHpREVJzzkvfSVNWGTPcGZrDYIPYPaHmJU=;
        b=RawTmpFoTpbqFAa2HcMSfAh/mu01EeVCrfhmZFG83ni/xlzBsF4jj83rOCqjLFxbag
         QyllwRlvq04XyXQxEc8hbx8BBm8qyBYZGyWTsZN+MFQ86YQcJPfwh2FNO9sGwuXdNdEp
         Po0j7Lacu436Jwy7FH0VxPMj4hz3ZIXIO541Fu3B2Y9SlW8c3DdXoUB7jhZtiticNszq
         XdX1FXhQcPBYaOdJkK/xjbcc29ZTjuw6fFKrG2cOUXzqN9VuGT3HvbYq9PFNxjcwkQ5x
         Dq57aHjKx3TqY0P0BuhBRNCIo9rV5TEoQvjjmJgNJ1t18L91KiwBx0H1G3stLVvo2DN9
         wt+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WQCyqpyw;
       spf=pass (google.com: domain of 3j7fgxwwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3j7fGXwwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gFlep3OBhWHpREVJzzkvfSVNWGTPcGZrDYIPYPaHmJU=;
        b=GoLlGVVQ9rR0qJEaY/mRlg+4Az1Yf0ptFy9cER+Djl9eeXaEIUQ4UPvmUq3HjCzz3u
         vLnqBJhxxOH4zQ4g6VwyQtcR8YReDjbQhuY2EHvwAcXxl6lodh2ebjFZIA5btyv72668
         HaWGsWP9OLGLvuuNZLObK62tat74hp8Th6bm/kXpSRN0yoR3Kgsce7sgCM+yM/m+PEbx
         ZHZoqfej7oVVcDUaHF8W/be6MmjKBs07sVPX+5y02ylbwRR5BgjRQJ2G/buLt9d/Xt5x
         aGZAneEFRAR+gwiMbe7jEHAhRe+QjjljQ1P6Oe4CSSlviCFmbx/XfBD8m430XHjmeyX+
         KbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFlep3OBhWHpREVJzzkvfSVNWGTPcGZrDYIPYPaHmJU=;
        b=lhFRCoco4ZSRtC4FYWhTReZjck3L12ahsYXWJbZD08NmbCUdF/s7xOO2TyCcqphhXR
         y909jEURcWqnDXFbgp3Qx2uoyhBUEZyb3TcRWKhiR/a3FrHuTZBtvm6ZIdkAZgbXdqqb
         bwY/KIJcrvma6hdSEy0tvMsbqUv2pl9E4k6d3ABZBOhxrzyxqHPrVoqeYXkIz/3pIhTp
         9GgkJxMxfm972z1s7gPr3IjxXRPBnSOmwJ9XF5ECUwQEex50HzSUfycZKMzBp0dzft1h
         CWmKE3v9TMkQ6RYmrLHgDJbjl3lauVwCmlu9U13kY0PvtYNI2Pzupb6Ln6deISfSh9vS
         3QXw==
X-Gm-Message-State: AOAM533CawRC9mK1VFF9H+1FDmbC+B27kbiJBJTJRwWjyMJIBpltgZZM
	h/jHVccrwfSJ2sweMD1b0hs=
X-Google-Smtp-Source: ABdhPJz92WI1I5OKADKk3/wHLYWRthtHDIiReAA9kuk8SlDRAa0CfFb6PrkI4JulhEjzgBM2JAYRxA==
X-Received: by 2002:a17:902:a9cb:b029:d8:fae5:9e9a with SMTP id b11-20020a170902a9cbb02900d8fae59e9amr4658017plr.32.1606858641020;
        Tue, 01 Dec 2020 13:37:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2c94:: with SMTP id s142ls693689pgs.0.gmail; Tue, 01 Dec
 2020 13:37:20 -0800 (PST)
X-Received: by 2002:a63:f60e:: with SMTP id m14mr3827647pgh.148.1606858640338;
        Tue, 01 Dec 2020 13:37:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858640; cv=none;
        d=google.com; s=arc-20160816;
        b=0EDuxXx6W30kETtipaly/MgTolJul2AsTxV0Fn6ouWxdt89es7npUjdyHNvCAethgG
         0pGQANMme1UHg4uGyLEDNgWghax5JYcyjiJWD8S1hPX3MtMCW4WYXD/YP1p9GQpdeots
         tucvMZ3unenTFbkembV0iMKUlNP899GS/tL/H5z2oyNB4g8mnYI0vrYuXdyC3blcGe7S
         RW5bpsuVwv3fxEszLlIkW5tAJUi2xek+ovIqRegWEET+QihikRZVB27kOBJfu934uhOh
         RP8AhBKcPq2q9RCIV7clcZ6mrUIdcU4PBbKzEViX7K67wUJAhVIRfbrFmAZ0j5rc+uCw
         6ONQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=vhe2fhhubG0SMFTgpBNX4/KlbzQ2mtF+9llrSjbBo08=;
        b=QeXFk2xizG5iX/hTECh1DilEpY7wgbIrK0ZU3hLVBdtKAb8Shp8bQ3fH0VmtkCIaS4
         J5GRPk5E9dhWVnha4mrcOiek9iRWNfQH4b4IF7Aj5ZNtnZ1jUQ7SshzOdmWVhydWhDEB
         sgIBtrEknl0PEuHZgAJ+5zDLKWP4iUH8CtBOcwThRq11yjd7TtUfzhnT/ZxKSk+xaLxp
         V6iZtjubbL14HTixKgU+irPmIznI9QXXRdHPQNv7BAhXp4fEGqV6MlDjrlGghVZ+D9kf
         AxWZ8UZwaXpRAZmfoDDJVELbBo1J6e48G/w4LfcDJ8LK95kj3WN9qK1SDV2j0bN1eD7k
         UVKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WQCyqpyw;
       spf=pass (google.com: domain of 3j7fgxwwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3j7fGXwwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id x24si55053pll.5.2020.12.01.13.37.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of 3j7fgxwwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n62so3987233ybf.19
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:20 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:468a:: with SMTP id
 t132mr5364497yba.312.1606858639932; Tue, 01 Dec 2020 13:37:19 -0800 (PST)
Date: Tue,  1 Dec 2020 13:36:55 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 04/16] kbuild: lto: limit inlining
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
 header.i=@google.com header.s=20161025 header.b=WQCyqpyw;       spf=pass
 (google.com: domain of 3j7fgxwwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3j7fGXwwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit boundaries
in order to reduce the binary size with LTO. The -import-instr-limit
flag defines a size limit, as the number of LLVM IR instructions, for
importing functions from other TUs, defaulting to 100.

Based on testing with arm64 defconfig, we found that a limit of 5 is a
reasonable compromise between performance and binary size, reducing the
size of a stripped vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 222ae96d179d..ac836907d8b1 100644
--- a/Makefile
+++ b/Makefile
@@ -899,6 +899,9 @@ else
 CC_FLAGS_LTO	+= -flto
 endif
 CC_FLAGS_LTO	+= -fvisibility=default
+
+# Limit inlining across translation units to reduce binary size
+KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
 endif
 
 ifdef CONFIG_LTO
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-5-samitolvanen%40google.com.
