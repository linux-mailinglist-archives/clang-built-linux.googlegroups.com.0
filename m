Return-Path: <clang-built-linux+bncBC2ORX645YPRBLWIU7WQKGQEPKMDLBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E46DCA75
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:27 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id t65sf4961023pfd.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415086; cv=pass;
        d=google.com; s=arc-20160816;
        b=qs+l73PouF0vFcdC4XS+m4+7LodWAcSL9R3av2kfZPQ87Rb/tVuOUflIrJZukD92Qp
         kdDqwUiJ7pyUo4wkr0rPoohFRx69ijRvXSqexYUBRgfdRmCeHFw044EYhxY5ARi2qiXT
         B2SfRteLoVnoyg3/86FxzfqAsZVac6WQ4BX1ovmZhEc9tDgZ9lMP0S24UjYoCH3vEOr6
         MpJkYRnk8B9b9YP7FVJMvkbT2y8tQYJ/Q5QRATrWB4OXriR4ghQDRDhpiCYVwbnA/hce
         0jrTW9cvQuHwRfWeTMZSGH2RT5qS8fwkxFrU7ML2IMiTl3hcy1JwV0nCHlq5V1SfQHND
         nwog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wT+tM5W8AOXB4vsyv4ZPjZdoZYne2my1LSalcWC6lWg=;
        b=melqV5tDW41yh7Xi9qah/P86Wpo5XjGKJoOqVjxQVOAPiUXdQsRa2pe5htTFRQqs6N
         p6EWhAAO3E2ekPLJ/h91IfedWiHjGoLmA25bR/xKfd2RJcTjxG0x4WSHSZPjEFY3tvTf
         OneZ/bi+JVai0a2Can89IzPbmnqWoUTO5ZivHs9OrskDeUbK9CnGTcIUbsxDWl3GtveN
         3k93kTNP9opL9lUowp24BoCZ63RP9Tqz18tLsTz2yplJnOfu9zc640Ij82hVn/kPw9ge
         cs6Fwy4Cj0CMvHAAwjxy3ec1GPKg2aWQ598Qrl0O/5bC/hoc/RuNti2TO5dGMTww8UjG
         i0+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FGaZKiG+;
       spf=pass (google.com: domain of 3lespxqwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3LeSpXQwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wT+tM5W8AOXB4vsyv4ZPjZdoZYne2my1LSalcWC6lWg=;
        b=p+JXgdOtUIxX9h5DXx63+CqBhABUt+tv3mpC36gxPkw/F2IhdqyOux1Cyqef4TDa4s
         1ITq33zHTJb5vnYyg1PhYOU7KwJQ3S2Fhnuci/WCnrCDk5eu1r+8niWN4PAF6jI1lYe9
         2MWQOS0RWzL8v7IJMkVaoxtw+ZOeK+vh+JFqBWHqlYz/LReHGzlkBWYkLEmZUOwi72eU
         cFVOG5diWU39G1SuhcbI7f1LlLRn++aaykiH0UPb6gAZLq7ogNYX/LEHQvFXQFRZ4c2I
         4OwahvPOvNGjlXCjBNxPD2K5gAQTuiVuY8wXsJGXaneRUnY/IEpRzXSfsh/AKCHLWTRF
         vUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wT+tM5W8AOXB4vsyv4ZPjZdoZYne2my1LSalcWC6lWg=;
        b=P/ybFD3M3JV6NBQ6HEGbzuwU8uXkIfmZK6J9e4DNuca9tx1UhzA+v/S6Xb/yLKbFAx
         0jFQpkEvnxvPzptZ/8JBjpe1tPL+420Ft/XrONRfWczaloXvd8gNRhR7quXu41U7bRqh
         5/t6/tOkAN8jlKBJ1UfDmQZf2pQQy/MDCmnEFbOkCTtPWBwwv/80UoCVENEVSqC6I0qo
         xsM69dGUTb2mEYE9utsCWjLdI+nc45IFr7AH8v613R5Dobpepxr6XvwiYhuG3TGn/Iww
         YWVD/AjxoCg4EBE87pQ3EioG1Yc8zXmUwImzOhj6p2Q+0MlyMotZK1k/my1EFf+OkIuk
         KYXQ==
X-Gm-Message-State: APjAAAVQp0LEejXRufHusRwha1g+5f4xJ6prj69ogEn7w2xZ5LxDQECz
	75F1H5+zxyp8F+prXS9CTO0=
X-Google-Smtp-Source: APXvYqxiZ4iyCa9zYXgMAVIxY7mOvfhW5hMI7SV6THuKrQYoYtG8pc3ZqhjXH0Se29+RbRhwGNra8Q==
X-Received: by 2002:a17:90a:b285:: with SMTP id c5mr11962594pjr.123.1571415086351;
        Fri, 18 Oct 2019 09:11:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6947:: with SMTP id e68ls1932562pgc.6.gmail; Fri, 18 Oct
 2019 09:11:26 -0700 (PDT)
X-Received: by 2002:a63:155e:: with SMTP id 30mr11482992pgv.204.1571415085915;
        Fri, 18 Oct 2019 09:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415085; cv=none;
        d=google.com; s=arc-20160816;
        b=1JLufqiTFk5euB261MvCUXFD2NzUWfWEOIAX+GZFpt0baEnR3ElMOHoZl6GKfW+1ff
         iTdzsDgMw908TT7ztgN5UTCG3nZiyWRvEi3LqynCHCCL9hP9WDiJFdPqyIg8HACSm39f
         TmGcjAZ36ZueWab6K6w1zRmp4FIoA4wX8iFTMC5rwgaNzO2R17bx4HFlMzKCThOgVvff
         K5UUOwvDFVS77aoCo6InA2fovl9rk+5uS42lRfPc+Ar1R64teeJXRAdB2rRlA8RH/biG
         5S4w+5NsKF5yN5iUTXaEr0Tcx7VEJCUps6eGmeDCWEa4f7gYvcvmyHvUvo4tF+D/qzyv
         RyjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=OMV7GU+CS755gzThihulnjNw1pxqVtHrVsdKKTavPQY=;
        b=bFQRxKz0/1scivxE90xzgO8ZyEAP1hNcwmozlDhTi+QIf+uQOrwK800KUV7YKYa8Tb
         CUpbbVIio8RZS9fuLZcWdDEdXO8m2latxbTg8s3VFrbu0+PYe/qwGzUqcHXxGfgJpbnE
         lu9BwseqQBfqKbUJ95fjkAto8Trg6SaFvLi14eFHk0F2zsdvPF+EWY0RMRo0r1zYbctM
         zXkUJ4Fd2kDtwX16e3U5aXE3hlA62JNmYgFyeXUQ1cnqifnliwqIAYTPiiO7ACExbWxR
         5goRrutumXyNMeIJ254JhLc7OJ7tc1GgZJrHHP6A8HCBTZNkejHn9k8naaSqtH0i0tMf
         2xYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FGaZKiG+;
       spf=pass (google.com: domain of 3lespxqwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3LeSpXQwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id b64si277487pfg.0.2019.10.18.09.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lespxqwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id b10so4033387pls.8
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:25 -0700 (PDT)
X-Received: by 2002:a63:1904:: with SMTP id z4mr11066720pgl.413.1571415085386;
 Fri, 18 Oct 2019 09:11:25 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:29 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FGaZKiG+;       spf=pass
 (google.com: domain of 3lespxqwkajacu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3LeSpXQwKAJACu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..945744f16086 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Restore x18 before returning to instrumented code. */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-15-samitolvanen%40google.com.
