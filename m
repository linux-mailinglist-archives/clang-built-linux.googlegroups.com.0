Return-Path: <clang-built-linux+bncBC2ORX645YPRBMEDTT2QKGQESQ3SXPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3588A1BA983
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:50 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id f142sf9248015vke.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003249; cv=pass;
        d=google.com; s=arc-20160816;
        b=ezaDFa7m409mtYSOrqg3D2eouYodV1JJWAqc2DnooXnxWBqFLLaTOmh5bHmFuQMBBW
         JuG8+Jo5PRhrC39iHNwesdX5XOs8wdLeObbxXh0Q7XyF+s5Pweoyw7yJ/hTF2V8RKTSm
         uKp20KaFovNtNW+cN9X19Ba5fvocmLQPmT6ZRLZJ7lh0BcEn3B6jUco922doEJ+7hWuo
         tAFYqXIhlbhcZ0Rzjct7yRXUlXipyGzDXdsS/jDK7dGnC1CiUb6HzKBr7/MCOBTJofuh
         ZrRslOJXabmtIJfQZtHON4eS0hnYMMS85L4CfuFxRceeVWx3Cl2GkTZNKp4x34ftfkX+
         cxPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NN+jf9IF7p8j3MsIhOlqXArZfjVDmL8XRXkd4M2MsZc=;
        b=0z4E0KB78b5JoCmTqjq7TG6dAIcnuqTQ2c2pxzWDmJDijUS9Ko31LXa8OF9GRXK+t4
         iZlh2t4hgFiUv+5gH6u3LyHVhKS98VYm/RqUR3N08DHOkfqG8/7QUcVyzdLkYnp24zMr
         o8MTHgR6M8NVk62blyA7YblTp8nC8svd8rxQH3X3zBrkK3t+78eYYZnWoCKru33KI92J
         EJ2tl34MaqMCJOmaKQQsFVtVti3FYTyUsBJgZaYXGRvSbfTGZUl8s515Id/lsr4hsyx4
         xQTmbznSlXNhgqz+057U52iEpkiatImHZdcLAJ6celZiVeZyhSwb08WOeqU3UERFbhyJ
         Qj3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z0D9RdpH;
       spf=pass (google.com: domain of 3sagnxgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3sAGnXgwKAEs5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NN+jf9IF7p8j3MsIhOlqXArZfjVDmL8XRXkd4M2MsZc=;
        b=PEktl/AyWWoAKy6Ixym5hHCmGKBo9kUvIAftqEfLo9sUkkOPpLk2fCDQiHLhvotYrQ
         lmFLNfcAPhrJtv4LxLKa1qk91BQ+5Q/3I+EVnU8EJTS2pWVZ+Hvpe0vaDB3n+cV1M8ra
         4koT1C4Gk8LAej44k0kYwn9idIQUfoXO0YyQUMl8hw9Z+9b13UZ4MHaEoGdAbuNXPpPq
         kNNTuMLoaAIPsrVVReg8fZpUP/yDlKlutwTkN3+u1nh7PiG9+apUw84dhvtRExf87LAq
         Kszn2J1WeYwAHF5QsBPXPtlmLzqBk9BBoyNsJE8WVsJ7PpD2CQ7Vndt/YsZVN5DQaKHs
         VKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NN+jf9IF7p8j3MsIhOlqXArZfjVDmL8XRXkd4M2MsZc=;
        b=Qkwdeik07iGXdL7E9M0duTZqeeENRRVdFS5SLLYovIVO1Z/LU3MNY6uzxf5XrAH7tL
         c86aUCWDBdQIQ/L+5BEfvxHO2O0lhO9yl2i2xqUOxIfJXyuC+YWuLEVfukltowAeMB/v
         Q2dpNb46FnWQq7u95I4l983a9Uf+JGH+oYCh+MUIoYDl29LukoEPDsHe2w3r6qecPn10
         uuotvwWuBthkyF02tFJWfTfjaKHdY1TI3pQ8G3fn3yf6XFNZSH3MkGSDBkRqwMRgFjKH
         YCPgcN3gUlxN6Qj7oSKam4VDPuhrkzRckH1474dxEp96IiUQ2ESCYELr3VK7UaDmLMis
         cqlw==
X-Gm-Message-State: AGi0Pua+TQXaf859i+Rf1siC5gXv1D90hTqT0bUq88EcKp8SPYHD0SNI
	AMCCWqiAek7TYrxggleGvms=
X-Google-Smtp-Source: APiQypKrIYhCvtmv4wIhyLCb/1srf4LYVEEVYcsrjbkLSNmyWfdhSzwc7q8XpRZfUGjqtuQqyNQP6Q==
X-Received: by 2002:a05:6102:14f:: with SMTP id a15mr17357546vsr.229.1588003249064;
        Mon, 27 Apr 2020 09:00:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b14c:: with SMTP id z12ls2442902vsl.0.gmail; Mon, 27 Apr
 2020 09:00:48 -0700 (PDT)
X-Received: by 2002:a05:6102:2156:: with SMTP id h22mr17899167vsg.28.1588003248547;
        Mon, 27 Apr 2020 09:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003248; cv=none;
        d=google.com; s=arc-20160816;
        b=ki/floziZy5e4cpMUylKr5WNh9o/ATvSjjnADCsFQSmOAjHFqyoSbt653fTUu+aWiW
         EY8aZ00/0mTVngpX0Sx/W2DznTcCXHysY9qbiKFSiU+OsbuGpg5J31732h6ss5aam9Dh
         Vboe6HZKjGDz7EKiylETOCn8i0mRw1jKoebIFLKOTnbVpnCA7I1toxz9PI77Yb73FlbZ
         W0UN7Hk3nYBBa0u75uUy8i1/OUiUvXDUFN3YdtsXafK9uZlncYYLiCHbpnmOrqAci9Tc
         nW6WUhjEIiX4X+j+ND2bFf21+bY8X51/005CUTbFd/j6Rte4stdaR1Z3Re675EC+iI8X
         oGfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5K2KfWGbdPDvciUxJWKmXs8jymeyhVJTI52mBn5Jn2U=;
        b=kLz1YG1PEnkXLerLqPYjLODAvg6c07xNV1bXpP762NoRvGn6996FGWiOl7Cx/dg/9d
         hx/BIwTg9aLS0WY+hIkXd6h2kaa7isAQI2ndkLP4pbJqQRbXX0vKWIY5HX7dd8l30+lh
         I1YkBaRT2llqlq5FvGcucsEXAOM8i6qZEE9mGEy1sbS3RP8N0vRerEwSyOCF2lLBsR2b
         q3PNXB6LsYKSRSQF90XF64cJ8/pQ34+ehRXkDo+7JXdgonu4GmxtK1jSWNmpyxsZhKfv
         8UNpE8BzDAkwm9+/h650zxwtjDzylgIhA5JYorxiWlmLeMCHaD/kxFiWqzeAcdrKkwdr
         LLbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z0D9RdpH;
       spf=pass (google.com: domain of 3sagnxgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3sAGnXgwKAEs5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id l3si1101158uap.0.2020.04.27.09.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sagnxgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id h186so19879014qkc.22
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:48 -0700 (PDT)
X-Received: by 2002:a0c:bec4:: with SMTP id f4mr23363061qvj.26.1588003248063;
 Mon, 27 Apr 2020 09:00:48 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:13 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 07/12] arm64: efi: restore x18 if it was corrupted
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z0D9RdpH;       spf=pass
 (google.com: domain of 3sagnxgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3sAGnXgwKAEs5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
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

If we detect a corrupted x18, restore the register before jumping back
to potentially SCS instrumented code. This is safe, because the wrapper
is called with preemption disabled and a separate shadow stack is used
for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..6ca6c0dc11a1 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+	/*
+	 * With CONFIG_SHADOW_CALL_STACK, the kernel uses x18 to store a
+	 * shadow stack pointer, which we need to restore before returning to
+	 * potentially instrumented code. This is safe because the wrapper is
+	 * called with preemption disabled and a separate shadow stack is used
+	 * for interrupts.
+	 */
+	mov	x18, x2
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-8-samitolvanen%40google.com.
