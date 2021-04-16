Return-Path: <clang-built-linux+bncBC2ORX645YPRBZHL46BQMGQEONVH2FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B07362970
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:01 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id 1-20020a0561220801b02901c9d72f8f53sf2960099vkj.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605541; cv=pass;
        d=google.com; s=arc-20160816;
        b=n/Qhb8Y+jisxT10iFM4G5hdRPZBI5PVGlE4YGQweSs6lr6KH5TxRvbZoDO//W4ug9Q
         aHB5QWvxNjLO16EF+TISD4HRofuJLb6/DWdyepNEnXDsN+zlBtOrV6nm3xPD51Lv1611
         ocZkuJYLiafpMA/TVHIVnK3PByPdbUoZO4v5lwyOIhRGEpimrnB8fZO2de12F98TWimS
         I03CFvgeqvcvvt2DeDSWHFBoHem4IRXeaLDzbnxCAal79woKE8jLsU9JKo5RnxvvJ5bw
         w0BwOWnMC3A3mjDsKug7IkTw1aDQYUWgOx6eggy/5V11LO7h88tbM4MmnBQ07DChofmz
         JuRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=r4sClbEr/yUNWdEfhSXCWdXE3EyOdIuXQKHhulbWL18=;
        b=TTEs2T6WNUdR/bCspDj9MGMxQRKPuASTXq/y5A8kez/1oRde6o77CAOo7XnA08MK2J
         2viOD2nn6d9mPr1DdooOVxkxLVbGz6tVL2iQ6ffQyEdzuUU8ACKgxctb66Ug5NJbLgDj
         Fly2yvRlD3Siku4g97DRZEKJPeQhbOsv+ZTYPuxbY7wZvJEeEjU34UraRh8vskwnqzMh
         75T74GFyBwSRVxZGf1hkiRG0Hfi3r1+dx1iUQltqzenW/n9JOMsyNugdtDX6DJ4eln9e
         xC/+dQP78fM1yNzNSd3haxds14ycMSkHKyByOEMoA2ZU2G0KWNotpDWq+OmLyWhknt1S
         BDFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uZKwdvxX;
       spf=pass (google.com: domain of 35pv5yawkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=35PV5YAwKAMEzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r4sClbEr/yUNWdEfhSXCWdXE3EyOdIuXQKHhulbWL18=;
        b=ixSvlGGLZn0ifhY5Z3szemIKBDLZjfaiyWhlZLD3NBcoUbfqaFZAu/w/6A6x9CcP7H
         JCxwjSRYFmgNk2MB+k/Ka72T8ZmNlg2X7T0XTiuxD0+xnIzLxbJtQDwJZF7xPD4AydJB
         5vhQfpkwuPgDSFrzHz//RXMdv2KCvk+hmDp3/9j7sv9M9is/6I0ZWhbiBaxwrm9quv5m
         FPmmz1v+YVQZs3l2zvFcR9hr/3yc1lwbY0LZOku2YnsaLZ6LGSFi6r6ENS4NfOFK206S
         ln7r40ftEEudmUDlMu6h0uRjkTglF1thjr6KcZCZ42ztENIs4C4cXMOczyJhHpXzFWMO
         H/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r4sClbEr/yUNWdEfhSXCWdXE3EyOdIuXQKHhulbWL18=;
        b=YzYDBC1kXPCmtnH/EqLuVQe2srFddD1o07qfVB+cnrjyPzjzzVDXK76Pm+AAiEdrGr
         PLMMCj4LDhHtIAREozH/FPtKQng7prNyJnFcTH+PA+LeobJ1hPDLOwrz2cvxbJA0q6q5
         FxelIM0VixdQxl2omYjBezgIXtIwNzEL5EIe+gdAYhS8M9RGbbHFFozUE8C89blVN8AT
         wJAqIpyA9UebySJkugwY9HOgE1a0Z8N9hTKaNuClpvBaAL7a00eXK0jXFUG4LyG4cLvM
         WKL7dlLO5yFiHb5/ObyZ2nQRg18gnRBQR4u6uXMVr6loT3Ycx+jKuhTHtv3DFBvVjcl8
         iRBw==
X-Gm-Message-State: AOAM532htN41WpiXLyj6HJ/12qFg1feeGBOcPN/QEy6L0S4ulvOR0Pcw
	NSSD57+/Xjw3JgLV72E0Fwg=
X-Google-Smtp-Source: ABdhPJwBOA5zIQ97febo9HVsio50P7rsm5WUVEpIU3Y/aK3upchSzVZ3Cyy4+0qFLbuOa0kW8KZYyg==
X-Received: by 2002:ab0:7384:: with SMTP id l4mr1184044uap.34.1618605541086;
        Fri, 16 Apr 2021 13:39:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6146:: with SMTP id w6ls1013594uan.10.gmail; Fri, 16 Apr
 2021 13:39:00 -0700 (PDT)
X-Received: by 2002:a9f:3728:: with SMTP id z37mr1079788uad.89.1618605540605;
        Fri, 16 Apr 2021 13:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605540; cv=none;
        d=google.com; s=arc-20160816;
        b=CT13q7PAHn/FKQyNa3hXJbgJFCGNtGhhp/LxSINAzWtcna9uarR+mo8ZXY4yVT1xtP
         l8kYVX+93qZXZ8sSROKZ4sOvqB2bPeF7S37/XT947IpcJsNmteDAaCpdXX4lLEVy0HDp
         eXPjximj3Wlz0QnqB2vxBqrEl5LHF890eFyvii4rIsU1yVqT/2yW3kIfMieFhTrsM6NB
         K44xCI4gkw5nRc6dZprPKPP00d0sD7cJIKv1Xodny2/EtGyQmjdwbXntz6bAKhLMF2Dk
         f6hhtWkv6mG9Co+/Rwn6NmMLFki8K303Jh9Mp2I74Edoy1eZfL7UYrT6pt40wij8FRpG
         x25w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QGx/+5PSv4vcds8exhIxEpB6elgUIYsSVqcIzQ7CoY0=;
        b=Zft05xI/2K1kV1m4yr3vbEeA6oPV9INW7BSE9qaIZByJuQQRXlzmZtViY0zkhQlq2K
         iXndnC2gBxsYq7XsaS8Arpnp9P5lr4wkyEti2sHQp9uGslvZRHGtiPzpLqr0WBR7KsXY
         aNx6Dm9vWQmx3h/85stvDDJx8vYvXBXFHNubE6/VfWgul0zepSiRGcvJ5ckVGDpJQr84
         q2oDoYsXuXWZy3F007Xc++CVK9RJJ0EQ96WhHA2VaaI9WJxIGzIM2xP+sXagiDC9uCHF
         KngTjD/ktr6pzxD0bwReDXi2/h2kKADTXM4gEq/F10pwhYpKLgPVKZtc7+jEn/EVHGlI
         X0Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uZKwdvxX;
       spf=pass (google.com: domain of 35pv5yawkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=35PV5YAwKAMEzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id h7si634016uad.1.2021.04.16.13.39.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35pv5yawkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y17-20020ac870910000b02901a7f2d61003so6783537qto.20
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:00 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a0c:f946:: with SMTP id
 i6mr10263185qvo.42.1618605540208; Fri, 16 Apr 2021 13:39:00 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:36 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 07/15] x86/ftrace: Use function_nocfi in MCOUNT_ADDR
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
 header.i=@google.com header.s=20161025 header.b=uZKwdvxX;       spf=pass
 (google.com: domain of 35pv5yawkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=35PV5YAwKAMEzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces the __fentry__ address in
MCOUNT_ADDR with the address of a CFI jump table. Use function_nocfi()
to get the actual function address.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/include/asm/ftrace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/ftrace.h b/arch/x86/include/asm/ftrace.h
index 9f3130f40807..0b7567994f4a 100644
--- a/arch/x86/include/asm/ftrace.h
+++ b/arch/x86/include/asm/ftrace.h
@@ -6,7 +6,7 @@
 #ifndef CC_USING_FENTRY
 # error Compiler does not support fentry?
 #endif
-# define MCOUNT_ADDR		((unsigned long)(__fentry__))
+# define MCOUNT_ADDR		((unsigned long)(function_nocfi(__fentry__)))
 #define MCOUNT_INSN_SIZE	5 /* sizeof mcount call */
 
 #ifdef CONFIG_DYNAMIC_FTRACE
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-8-samitolvanen%40google.com.
