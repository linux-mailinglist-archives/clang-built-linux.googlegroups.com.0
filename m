Return-Path: <clang-built-linux+bncBC2ORX645YPRBM5O7H2AKGQEBIELFGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B39431B1B9A
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:16 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id r5sf14839703ilq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435315; cv=pass;
        d=google.com; s=arc-20160816;
        b=dTtVv9Magu8t49FQVXxKwfOCS8C1Md1b1OlaenO9/uB/GndfVq5J089Yf05Zf7z6lq
         Lm7blazF97y/rvQZDChO/D7NFVx5wKdOGz6xk6HU9wotVW2IM9oNmwtsx+W1lKCGPjj3
         e1KANTWnD9gyLwXaKumrVwwAdcXqZWuFCk/uobHlUd44IRWFj8SAZ5mpenJ1nRg+vxrP
         jPlEHZMXjFPodZu0eibddLaNZjSK9yU5aCWDe05PNJwPNvqvbfyTYaUqs1nR72Dz+TNX
         51GB/rCkJwO+Z4w2+OTRfR4BJ3/vwvZyXgofvL4h8CiE2OOW+U0qZEE82QYBHmdRCQfi
         cUTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LA2BU4vomn8a59UuDuIElnP/n39EYrirUObgeEQyQAA=;
        b=O5gydti0Ogp2iI2pKDZv4s30rbWRev4CoTE5zH3VZhXdftt/JvXks1JxQ1f3bBmieY
         GW3EXEWKfL/l/duBN5qd5dq9St9KVQzHDVb2STQC0/OpbKxTg9eOFA0UaYRCm6bn9HWE
         SYKvEIcsB5dwQMrSWEsg0j86bOidSl46kT/w5hPvrZTgRsy9x+rBifhMtc549FvePC2p
         bYZ89kjYiEsAInBhybEogEwS6FmFW/D94Q9wNtfyIE9CEkFHDdWE864+OdlfSjIrCfrs
         IvYtv88aueMvMizIvgePps1NDgT6q2h5GG61y9jFrT5tMDSJzrQ8TX8ZrJrmmnsrtVsW
         qJGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QTHCdrmF;
       spf=pass (google.com: domain of 3mleexgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3MleeXgwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LA2BU4vomn8a59UuDuIElnP/n39EYrirUObgeEQyQAA=;
        b=h2Ih8N8ncQx5Odc2eviABUm77XHPgEKyrZVK8QhPr5S60pH3P3qXFaryiuAl3ZXfD5
         zSgsHbKcEbQl+0UHuz+2mGfulv8njJYzRJWTDut1tSnmIHRxST2TKIsCiTODOfKnZZG8
         lXxZlS0ncaPoqgCjpOyWJJ3lQCv/odrAesvv5LJpwarXnCv+QTwFjd0Qj7E8dU/PirrD
         1aOBJuhw73G1pvOknkrd+bLmAn90wqE3VBHLxWti9cUB/TdODMQeVecR/jaBLoV/eum5
         QC2Zexnj1QVc/eA7h3snWZ9uTfNUl13mxpHMpTdcewYgMlM9MEImLpgzNuGm9TW5bTQ+
         lleQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LA2BU4vomn8a59UuDuIElnP/n39EYrirUObgeEQyQAA=;
        b=MdnIcpuhs6bfvGTaL8QyomLNBPzbxS7IGEx5pVArr4eWSqWGZCiBcjiER/bH83CWYI
         YMUuVor8Xu/zxjgLv8MuvcJ4hX7v0NnN9dN0443bc5ogUb0lVziYYxddnnArhQT1hTiz
         25b2uXcXGTuPl6a1q/qX64eZwcaJqP7hM3dGWTrC1LgTJYk1AsEaTJh6NtGjX4WIEQ/v
         fO0wUZn+8oQx7Il8vYSNjjJfxq6vIz2nTP8PZGk0O8nvb8snygRDxVhBwRege+trEzm7
         NQF3pjEPBJYPlOhx4djZQObVV4VAjuyeO8JC8Yi5cAb9U+QG8r3hXlsHhKfgoARSZeZV
         B3bw==
X-Gm-Message-State: AGi0Pua/QQMvYUbGGE99dgwvIp6kqPc4/b8AVtdmWoViyyvg7k86YEVG
	QpWyoNnT+1lwZn7dd8tLzNY=
X-Google-Smtp-Source: APiQypIBy99WEjg/Nq09uLcGDzPByXMEiF8iUJEGjCmzOkhfqtSQC/XZkUEt4ol8avTeyvURApebZw==
X-Received: by 2002:a6b:9244:: with SMTP id u65mr17216239iod.165.1587435315424;
        Mon, 20 Apr 2020 19:15:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8b14:: with SMTP id k20ls4186275ion.11.gmail; Mon, 20
 Apr 2020 19:15:15 -0700 (PDT)
X-Received: by 2002:a05:6602:1545:: with SMTP id h5mr18623625iow.32.1587435315104;
        Mon, 20 Apr 2020 19:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435315; cv=none;
        d=google.com; s=arc-20160816;
        b=JL2YOxHJdIuclnYQElaNUGiuL8e5/ZBJVr3lypiIMJV3XrGeYqbyA72Nql6lpOOaSv
         OZq+c2to1WJ5GKs1dl/cOMjH8RXs1+x+VqlN3WcKACJXbtWRmr5uQFoAQZvVU1q4FNxD
         KXz5KHDW2JfmS8m+pbtr6bOlx4+pgN6k8OusfZuKkE78ixJ6RlxNqczjjNgX+vSBc3R0
         QPj3WrZ1yTbUnD8hJeowtb0mXzcjUt/LmUT2zpJ2DK5e/bfl0/sBhSMtwBV3uGUcxYe8
         SXGe+6fw8erKCemGv9zlnwXLoRekij/haj9UFOfZLaImGVcaD0H2M1iqVPmOFToy7CoD
         mwag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ir6AMcU/LNJfVmH7TAbfuSTmLjnaQbzCZFrLbu9sicg=;
        b=uQpdJbEyCYtSxd8wKR8gfqE8M811MJa/ZGkfoR5oxMMO3mxKn7INPQnTbAzs8fLVgP
         gJEIsVlj7nAme7NfbcBchrEkNttZODLKuJobPcxX4CCZW8slN8J4HZwdcDNqYjDdU29A
         f3NrSHqOKkn0ZJxoqoJFAF1AKpIYgtqXkarrfM/A9bW9k6PkycXajokScOxrXqS3g6P2
         6Uu0QpAaopJRwTRH7g8eTrXvjK/j2t9sWPn9hBWYJIOFjhXqdgyhWN55KSzIMj7lHVYN
         YPmEAg/Ul6kGlaIxmVUXxzdI+ZlD5GQkvEX1BvvDrD8koWo9BgJEyjLjEwmieG+oMh39
         az1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QTHCdrmF;
       spf=pass (google.com: domain of 3mleexgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3MleeXgwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id o6si121904ilo.4.2020.04.20.19.15.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mleexgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id w4so1818015pjt.2
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:15 -0700 (PDT)
X-Received: by 2002:a65:498f:: with SMTP id r15mr19453163pgs.345.1587435314416;
 Mon, 20 Apr 2020 19:15:14 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:48 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 07/12] arm64: efi: restore x18 if it was corrupted
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
 header.i=@google.com header.s=20161025 header.b=QTHCdrmF;       spf=pass
 (google.com: domain of 3mleexgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3MleeXgwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-8-samitolvanen%40google.com.
