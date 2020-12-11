Return-Path: <clang-built-linux+bncBC2ORX645YPRBKH5Z37AKGQEW7R35PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BA92D7E5F
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:47:05 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id z24sf1884563uao.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:47:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712424; cv=pass;
        d=google.com; s=arc-20160816;
        b=cdq79wCl8OjoujJGbp35D3nw7jxlFrFd/6IC4a2D0/8dmMXYvrALz+17/8rOc5/wnu
         WJMjY+BmABXw5WaCA6eVCTg15RVIUzncxoQKu/qexe58a4YgHeqRUtX7cDfTGDx/mQ2T
         GR68BVu80elzYVxr3rLRDHRW/4odooXdZdqLxstxJpXFv0EHIAYabY7azQxnUyQZonfC
         QFKXu78d7oIdXOn1lhkOG279Pjgu1dy2plHSDU/OCezpXfnoibLhBsR9BpODbMm7Kn2Z
         xQvz7uoj9F0tR9I8ILy9r5tvyfApGxmstUnMqgMiYlf/w4tgnyxVmFBhokQLirGghj7o
         JXpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=QO1m635Byizxysal0rnQ8nSoxbfxXjosPgJkRkT6xfM=;
        b=xKlVvFpmoqpU3TuMZszLPy8ucJFNe/HukVF0vi42n17CGcF36lKYXp+WV2tbAZQ2Sh
         /sOyg4payNoHWH/OFDOp3ktoL7sDWCaoIqfp/VuLeiQiuaDjQLnzkqnZFATQj9Vnrr+5
         AnofD8P6o/RyAHOheITybJr/wGP+nHjHtlzJR8b9bdhIou35ORRn09c8z6ZOAMIij3NF
         z4HRw1N7MSN0x0JvQcjE6U3GM5Ohtk4/NvCRkhMrxCipGJCpNWLU/jwdxsjIDadUUdsf
         Ni66vxvhzKPY1R9ggsQSsBrUbFJS+fd0xwy2jIvV4/qQxA58Ekbd9vsfN+E7hLrx9UdT
         Bxbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o9YQ2WaC;
       spf=pass (google.com: domain of 3p77txwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3p77TXwwKAHgoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QO1m635Byizxysal0rnQ8nSoxbfxXjosPgJkRkT6xfM=;
        b=p6THk+GZ+IqVnDJyhMo4Y0cuRHndD7DlD/K3GHixmvbDjqQWSeSs/2mgDashDwV+9E
         VBgqhLeEkh4UkabQw2KlPhuImCaQodELqJu/Wt3xm6xQf9VfXPogbLOHnL1X8vdDqX0s
         INNt0kGKB+TSFIE074PJE9NNEHRdPUwdQYpH6Md6nYQYbKhPmQ7Z51D0hik0IctigbUc
         jpDVOTOlspoKGVS54ElTENlrSImjRjIBQ2MqLYup3m1shPzlvfmmCBFvHTsmCnyQaB0n
         zkmYFuSJT8TYeK1LeTCqJWX/m/sSIQIw8TjgjZMQDihYozXxOu7XNOQZsWyF5br8iEDJ
         yXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QO1m635Byizxysal0rnQ8nSoxbfxXjosPgJkRkT6xfM=;
        b=sZwr/xiBqnsdHhuBM1Cr1PgponGstm7MVNFhS/C9iUwzGfb8IZ0y1TaUob0QZnVi5G
         frk76770gfMrrhwjonBlNeBqcQh+eOeqCyOZ+kEr0n6EqcbBb9gDqL57/2fI3rGdhE52
         KXXauHEYv3ERl8Wxg1CEWKARxDjDOpsZCCaZ60UQhbkcSqPNCiQpDx8k6Z0azD0z2jkG
         HR3k3hkmrpxymFGAlbHkGhazpM/MPmDqctpYFdjAnzhXeg+grjHySAuJl+ab1OZ9qYB+
         IDu+SJ+nhlGo5F+fP5UWpv2npGwNEb+JN6VOi5H86pnS0Mi5nZd3+LTqUHJfJ441Ci6R
         MJAw==
X-Gm-Message-State: AOAM533afkEZ7ltYHOY2x5X1bo4mdHI3BzNaQMA+IB15lDkix0MhHhAA
	DYbv7UORJNJF8qbPuTHeCYs=
X-Google-Smtp-Source: ABdhPJzyjozxgKzCZpofYJstbHB1pb7sIvsuTC8zMPzEEzvdOmRSUmCEuGdArvVFjhJHA84n7HRydQ==
X-Received: by 2002:a67:ea4b:: with SMTP id r11mr14372012vso.32.1607712424315;
        Fri, 11 Dec 2020 10:47:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7843:: with SMTP id y3ls304427uaq.5.gmail; Fri, 11 Dec
 2020 10:47:03 -0800 (PST)
X-Received: by 2002:ab0:542:: with SMTP id 60mr14194102uax.29.1607712423904;
        Fri, 11 Dec 2020 10:47:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712423; cv=none;
        d=google.com; s=arc-20160816;
        b=szS1xVyeqVj8j+tVLM2Xaq3XSVt2juNDyvKkCpsVTtFp2Wqf3FLXXX83Gmminvtmho
         Kk302gGLZc1XLTPIIhLB3DFFz/j2VeCVylBIwDcpzPEJt/jCCjg/npGMfZnHu0U1VfcJ
         ypnNmdBFuWHDYjTJ9saqc+t6KO2yMTAWmjN+HRPYNii+HG3PrKg62FenyYzX9NqwrYIo
         mnPTiz69X44pJm3W1FWwxWLwEjkGaAC4o5U/JRrkw4CLWsggNF/R9dzdXLf1vmVu4bS1
         x6YNr7GlqKT0Zv3SSwCtWY9ivSPBS4xcpZsUtT64P7YVkXzDv/UBI/8fQ7Cevm4iihS4
         JTTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=D9wH7plBpsyKB7z0MJo6lESfcO9at50jK7OVp+0NdAo=;
        b=uXNLRvc1Cq3/eC5mZ5MR4nExiCnvLpiZhLGN26nGuet72AdhdcMGWYLG957bS8VZNW
         b5Xc7SNaEgwt8k1kAJCFy3rHKKLRf/S0CkR3iwtuHuuzl6eXvW3c6CSLA+vla42K11lf
         C+oE8EF0pOAt9jvl6iTGvsSdA4ZupQDe3bBjGFzSBGnuRxh0sqzen3IYvkwllgj5dBzm
         w4Uy9FHMk42Qb+t5QIDXFnF+UMC2itae5csXRVyD9ruzrduX9QDFXTS7UPOUi1KJ0Qz5
         sUGdNHefnJYCajvXktZydZCxvHmwKIwz3ehPr0mJWGmG7IekO0znNrHwWrTJpEnvmLMe
         Y3PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o9YQ2WaC;
       spf=pass (google.com: domain of 3p77txwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3p77TXwwKAHgoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id m19si254292vkm.5.2020.12.11.10.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:47:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 3p77txwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id z83so11826408ybz.2
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:47:03 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:6405:: with SMTP id
 y5mr12176868ybb.328.1607712423523; Fri, 11 Dec 2020 10:47:03 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:31 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 14/16] arm64: vdso: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=o9YQ2WaC;       spf=pass
 (google.com: domain of 3p77txwwkahgowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3p77TXwwKAHgoWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
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

Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
point in using link-time optimization for the small amount of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index d65f52264aba..50fe49fb4d95 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -30,7 +30,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv	\
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS)
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS) \
+				$(CC_FLAGS_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-15-samitolvanen%40google.com.
