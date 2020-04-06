Return-Path: <clang-built-linux+bncBC2ORX645YPRBUVXVX2AKGQEPJ2VU5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6899419FA66
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:55 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id v4sf353451qvt.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191314; cv=pass;
        d=google.com; s=arc-20160816;
        b=ooc+IaltVjHkISqEoVq3OYF5+/S1XzA0efxrJZy4JZNGWvlMDf5djhSsmKSKLPuCdJ
         whdNwLpDUyblS+5y7BbnQfkb1OOX+2H4zzchivIU5TNpNPYZv31QFiEiqOe8INtA6nBW
         Oih4mh7zViCMg84VyIxuGOM9bUuK47xLeGkvAqX8KvSlQeBOUqczFtXObtXjN/VIXGq3
         caH725MixbnycsmHGsrSaZr3tzOBZ81fsR8zFK2E+PMhmYbJ6MTsZPZWewea0/M4BsND
         1p3zdFF7Y+ELXEmnlNd8L2gg+i3ndqYuYhOt2AIkT/6DJPDSMnDyr7FqRL7MpTnOoLAI
         aBNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wsXBAD1PH+OCmoFAbGUk429UozXjFzt8wDmvcI4rZV4=;
        b=O5loUhpjQHBuEesZ4x7YG8+5QcsUpsxZvjzh29GEVr/CqQ6PZDIZVP4ElWqRidsMN+
         I/rndNy9CzY9QP09Y44Wi8NW0K0W6o3hbdNSsNfO/zZKtFzgD2oaFxhLuxnpDCHbsUyd
         I6KPJvtY+p4V2/dk3VL0kUljj92fNcFpQ3Nf1GkIy9AAk1FY1JKQXOZH1E7ENhCk+rHS
         FBTWlBTPr+wwIHZTcZpiCflTKCLLaUEdGZKYWlmZlEWpIaf/cXFD1tL3Jh0VPHouZyAw
         faA1qryCetzfkNONJqwbs0jrSrsqoZw0aatwsepFc+jwwqZdQkv0JzH2cZxdGKC1unCU
         M3jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I6aOOb4F;
       spf=pass (google.com: domain of 30vulxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=30VuLXgwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wsXBAD1PH+OCmoFAbGUk429UozXjFzt8wDmvcI4rZV4=;
        b=EZbyWxwsmhx3h8Jgo8FVgPVinvDN2ouDJae5EH9+phKwvlSBcDgT6U8XxTc/u12Sz3
         MxHkdAQWyPjkoxt2m1SvHyIMG/UCGHcej1HWqzkf5r19an5eosI4Kg6r/8HOwfA2zhPh
         CJHAAYUjFX0UHfIpj4VAw8EO3DDBp80CBmw4XaGqo359UhzREpqDWCXCW+g//9p0w+wa
         Y0Bc9Ob8uim2tUOSXb+CWtO5VdDMoC7TzhnSayCUpt/qyImqDlfsGoJ4rDHq/vBCIzcC
         HC6XKUAbGiY4xFnP9/r2xK+U/xHEGsv8NhttFSSq4RIRU+5xy1BtR4jdjBWJwUssOzU4
         qHTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wsXBAD1PH+OCmoFAbGUk429UozXjFzt8wDmvcI4rZV4=;
        b=Bq+/sKIwGt0UMRgy2B1ypXSf73PJ6uwJOQEJ6/VTTszSYM/tNevS0VsCNpTAhoAV7O
         p6aaRCgii0tdRONbK7tgb04Up42p1cgvEN6HOM6gMxLkB53bXQhTzvWyLNzD8CPjm8WS
         Gj7813h8KnPiSl7kE1QQ6o981untSjSk/8WBuOBCQFp6XSJZ6yhAOhH422xVoRJNZk7i
         gwav+QluaO7Mf7aZVKJ2sTIEo6sr1Fj300xI/Mv8+HEPku7hGmza9Mdv7xa8q3fwc+ic
         1h+6I0p6XsyWHWSjqVnQth0Ed4Fl7Ry6LfR4CWpG7xpb4cPdgDzjqDXLrn/wWTRof+QO
         zHkQ==
X-Gm-Message-State: AGi0PuZFslTGUHramI+GeKBoo52IbMAreAQvgWrn3LxtzSk8pQjxCVC5
	2nmXGWQccF56FUhLc5Xa3pQ=
X-Google-Smtp-Source: APiQypKvYnmIaAIBgSDeRxctIPRGdohcDvfmHm/S4xtOidcNHjiDEdffCq3yUHffH8puOfzH/DJKZg==
X-Received: by 2002:a05:620a:200d:: with SMTP id c13mr21232074qka.386.1586191314140;
        Mon, 06 Apr 2020 09:41:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls55235qkf.2.gmail; Mon, 06 Apr
 2020 09:41:53 -0700 (PDT)
X-Received: by 2002:a37:e318:: with SMTP id y24mr22453789qki.39.1586191313729;
        Mon, 06 Apr 2020 09:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191313; cv=none;
        d=google.com; s=arc-20160816;
        b=sPDfKaed/g2HIYCc0mEmH7OK9rIfNsAH2o2PWyqikTCd968f+qACL7IWqzhVUqiHbJ
         yjFnQlldWnPbom5WwCKR2NOxTGWEgLIkHZgkof6SPmSeyiHyPwEw35wLTT+8D4n+Eni0
         7mcrGt7rpxPneW2a8+T2yEezkfqYMNORxB9dF5SP3M+Ug1FR4Ss3EwumnWR+b05LSSPL
         5u72+0nwbfBxd0eWtl3ZTC/GaXyCJfiNV0ySDf3bWk2Hw0yUECaDfDM3zh6nP4MfGZL6
         z00lPzGEKuZDzEVB4qjjLtSi7cpnQ0qA8l6SlpdBmcMx9UTqY/pX1nNu5WIeMcALITTg
         Z9EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=P7tRJ6/bRwi2I74AEfEJ7NL6sovvq6Ksezb3luMLZ/I=;
        b=U6/we7OJWgCBcXzc1GbW8NU7s4K0JdK+aKJhR9tJpoF3w+FFIZvGa/memebMmVE5Z+
         mZupOsFprNnrlJC/NXCP5g5ztiiACZVOYlrTTRB2pO9iT1PYZikP4up721rxlorjnmHY
         cn/kFOM6AKEOzDW8Hwbk5FpSluYb4nCeUcwJZqROGrTttLyDv4EWZIGm3JosgGOd6gvI
         3YhWHugWKNl9RtVguHaVGaZas8eVMmo0VWz8tFALHxlpKiBEHgFa0e6Lib1VGvOXbTZ+
         rzMPGwwgB+Dr+0rMrypQRjy/f/9hshWFq8iK0LVp+MYAXgd78KfZvMPyI1hHMLX+IAER
         cJ8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I6aOOb4F;
       spf=pass (google.com: domain of 30vulxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=30VuLXgwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id j56si7141qta.0.2020.04.06.09.41.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30vulxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id s128so96667vkb.6
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:53 -0700 (PDT)
X-Received: by 2002:a67:fb0f:: with SMTP id d15mr471360vsr.88.1586191313260;
 Mon, 06 Apr 2020 09:41:53 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:16 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 07/12] arm64: efi: restore x18 if it was corrupted
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I6aOOb4F;       spf=pass
 (google.com: domain of 30vulxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=30VuLXgwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-8-samitolvanen%40google.com.
