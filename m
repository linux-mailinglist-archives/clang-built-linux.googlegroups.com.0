Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB6F4QKAAMGQE4BAGECA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 357382F6B51
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:45 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id l10sf612361ybt.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653304; cv=pass;
        d=google.com; s=arc-20160816;
        b=zItjt4ymfIl1PL/lXEcsP/E3FHWvm+mbPGwR0blS0+R7rxzUqEcTfk8DNIOxZC/B+d
         +TZlC1N2NoRLXHxWEcOIh9mh15LzKkHLrEVZlJkVeJm6gMmlBASxmp71PDun5e5t3KAR
         YrSGIAANtNCDPeI/BzZTfgJgpt0a3R9vILtxxlqwOkWWoZsNbKnsDhGMHJlPU/xtwOeo
         aGgJf95n7Wce0PADmDUIbZnaOhvnuvj6/F5yIvw+9PT6Z+GYIAKDlELZHQU1Y7PK1p9p
         dd+MmJAbXpMgcy3qTneGAKL+0rEK8805jwwX9lPApB+5TzRBwV/WnIC/zgJ42JClvxEw
         laEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hFcepjo3M5gsI0e8PTdrH+2Py+laZJIiTNYFqMRt/9U=;
        b=ZSZ4dPOP9PHSfmQlL4uhengi9YGf7ggpcMcd4i6TSvxJQJan3Kw9O+7ToktwBcH+P1
         FLFmKxoSFFXmS0bX/KLQffwTtRjTv5HlQmH1YQI8gF7ILED5N1UPP2zs2La3js4xaQ7n
         m0tcZSYEDTGBvNHQ+Ki8X3FDMlS/4LTT9fgAgNbsb2ilaow+7/A71JgXqNuMfTNfTZKV
         kV7Mdu4nSI8+dOFGNSgttu2T8KGEShAW8GRMtnprxC0MBqtxx4bylUt+KYZvnfg2kgtn
         bjxsWxWAMgWUXq0rnxarx4nO/5aHmzcCIAjnEVI0RE1pdNRfAGk4BcQq8IxM9axzDs1x
         Xkng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jIkIC3ai;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFcepjo3M5gsI0e8PTdrH+2Py+laZJIiTNYFqMRt/9U=;
        b=bUQQgeW9mM+HcpRF5y6GX0iuew66MUxKXiih/Wa/jSRjRWgyTUWXH+tyZUmbVmYve5
         /gnTdnzQZv7yo7QFydncIX1ujk97g/gp726874Ca/9FNTqdwWNHgeBjPGqXfajr3VKb9
         w0lp2Wogt3qGwtNNSCKeqAkYd5cKNLrdqHRGVpavwMu/hKH23APJRRqhgFOcaRm21AtE
         UW0nAQ25FPkSgT4Dna9qeprC425ctHjyEeVjBUoa3MFPvwG/zrj3uB+wxlzDYVIIG/b6
         YLwX+xpbYJWTIX5SzcFJprPkI6ov1DlSezi1PEn/qm1tFNwDeuzQX4c7yGHsfu4xpOtO
         s3OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFcepjo3M5gsI0e8PTdrH+2Py+laZJIiTNYFqMRt/9U=;
        b=Lmj3vPYrWHtH3EWB17EVsDptt2/6jNim12wGow74iuKIJr9LUg273Aj9mWLcq9NH1h
         jcud92POrbEteCJV4ngb5A2NhXvoLDzwnlTYZXJbvDAr3mZrnCzhaaVW/FrR4pEAzl1Q
         agS8DrXjCCba0HmZzore1jlFKMsDzmvsTTzL4JAL/zDaNIUa6pIAOaQv0Hsg9vS4BLIh
         2yDBfOjjQKKFP6eIAU12Zsl6TIyKLohHWq7V81+K6u6VzasNqE6by0r07vyNljaZ8Xy3
         O7goYw0QZz+y1h34EH4nJ9K1fpJKXvUwBljYtxGQjYwXAMs3eU4XE7FM2GCTLPV0VcQG
         t6zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iQcFb436o4ELmBz7WsdmyGtas7rgL+luiJlCHwpOAtNeGvWVh
	xLNM1pYdevzH+buZHNJZrSw=
X-Google-Smtp-Source: ABdhPJwbQo5c++T7it89rTtJZlo+oHLEqCnm/Q5YfGE2TtGBT4TivxotxkdINakdHp3oAC7s612v5g==
X-Received: by 2002:a25:bdc6:: with SMTP id g6mr5397958ybk.337.1610653304287;
        Thu, 14 Jan 2021 11:41:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23d1:: with SMTP id j200ls3215618ybj.11.gmail; Thu, 14
 Jan 2021 11:41:43 -0800 (PST)
X-Received: by 2002:a25:bd83:: with SMTP id f3mr12356983ybh.240.1610653303643;
        Thu, 14 Jan 2021 11:41:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653303; cv=none;
        d=google.com; s=arc-20160816;
        b=NPwrQyrrUsR4QhfnlN6MaebbKYmSi8uaEQMXRdojhNe6FV6b1RVFCmuNyAeyxKoNVQ
         46s+VguqAfQH6OYdC4tTRJNCF+Htmd06s4JAPWIdFKckYaAhXwkxgdHahXNVWWiNGgpZ
         8dImNprdyjVfRrql4QZZFtIc3UwaaiALR3AKtqvVVaHbFSSj6/LDMCYC3L5lCfM5+V+s
         6jnfm7AfZM/WssBkHzdTj8gzLVco7qlfenZ3mJEAKVqNLOH+aR0sUCk+C+AEFkrgJ8T9
         41B+8Y38Jlb6YT5kSgX0T1yaU4jknmlfhA0Iw+bmiBUJcoCiPMIteUrAngq2xGsu+uzh
         p39A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d6BZQZJds4Kl3QHpC0L2Ocs8hxf8xnbObAlf4Gg3jik=;
        b=mwiIx8rPfQelO0AV86iBpI2t96DFVaHjU0IdU9kdcV5c5Ic8daECdBW20J1g04Tnzn
         Nx37NkR0g4uAGfgJmIL4xLaB+TvCEo0iYLezlCi1kE927HLPlCgadO3oNlWE5oj5G8DP
         DM3yRSavVy5i3hqSx+CCowQUhHil8bQzds9t4AEEFIjNccrMSCAql/wIIWJ4I3AZrFjs
         FF4r8OvX2NzSJVECF7Y9k6T/o16MlmK6PCpYdn6YDykIeachMrePmVemkgPQ7Ok0cVMm
         WmfTl7FXoqBptTPZCW4ueq7hSUG9rZuQzg6d/CMGzlt8wVe2AW2FueWoa8Vp0BhVPvVn
         X2fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jIkIC3ai;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r12si506661ybc.3.2021.01.14.11.41.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:43 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-jf2G6mSgOW6Y1NLqGDfYdg-1; Thu, 14 Jan 2021 14:41:39 -0500
X-MC-Unique: jf2G6mSgOW6Y1NLqGDfYdg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44C4710766BD;
	Thu, 14 Jan 2021 19:41:37 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E1A75100AE40;
	Thu, 14 Jan 2021 19:41:31 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <len.brown@intel.com>,
	Pavel Machek <pavel@ucw.cz>
Subject: [PATCH 17/21] x86/acpi: Convert indirect jump to retpoline
Date: Thu, 14 Jan 2021 13:40:13 -0600
Message-Id: <a1e4f5620deb81fc644b436eca5f51ec3a694459.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jIkIC3ai;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Content-Type: text/plain; charset="UTF-8"
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

It's kernel policy to not have (unannotated) indirect jumps because of
Spectre v2.  This one's probably harmless, but better safe than sorry.
Convert it to a retpoline.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Len Brown <len.brown@intel.com>
Cc: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/kernel/acpi/wakeup_64.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
index 5d3a0b8fd379..0b371580e620 100644
--- a/arch/x86/kernel/acpi/wakeup_64.S
+++ b/arch/x86/kernel/acpi/wakeup_64.S
@@ -7,6 +7,7 @@
 #include <asm/msr.h>
 #include <asm/asm-offsets.h>
 #include <asm/frame.h>
+#include <asm/nospec-branch.h>
 
 # Copyright 2003 Pavel Machek <pavel@suse.cz
 
@@ -39,7 +40,7 @@ SYM_FUNC_START(wakeup_long64)
 	movq	saved_rbp, %rbp
 
 	movq	saved_rip, %rax
-	jmp	*%rax
+	JMP_NOSPEC rax
 SYM_FUNC_END(wakeup_long64)
 
 SYM_FUNC_START(do_suspend_lowlevel)
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a1e4f5620deb81fc644b436eca5f51ec3a694459.1610652862.git.jpoimboe%40redhat.com.
