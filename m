Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH664DXAKGQEUYGAJ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E66D1077B4
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 19:55:29 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id h8sf3590271plr.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 10:55:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574448928; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2+omfWjIdAqsr8HtzUaatAZc9O/bjRYNoe+8RrIkUxMCJ9aaHqeppkNh7IHl1buWO
         joksWRwtTwpEO0epmNDNPQdp+r+AVb/dPYFRcooBS8X0G+xEwIovkeQW6emU360hEPRW
         yszktSg4ldy8n0Wzbsk2NnoyzzVBP54BWRnMHyXeLjL21H0IVyd5RPEnZmb4CRBnZ2kr
         MuBhY7OVnBPunfO4gGqThac4u9CFGSv0XhrLGcg0qP/k8gUURf+NywdmNRA4uwmBOHVn
         c1v9u3mjaersQ67YcyMOdugQ93Xv/vWdBDa8HToqKwkINtV//ZiBb0XgS4Y39mu7OQaU
         MtuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=qdycoHhOcndJDRjca+ESYrRrY9UZlWiTzpeSONHCnQI=;
        b=s2wgFm94dBvxMNqcpL6ZwjnMWgiHK94Q387aerEqwphSjx+WQ81yvODyK1R6Q7+zk4
         37pNHyc3S6CAC9NAoYf7mXh397GEJtHh4QDTFmNfdPMGUhB9x5iHZ5fDKo5In7QLU13m
         suITV8Jhf2a9kbz6SF6vQM0VbytGlg4MYWrHTg6/WYy4gK2FuHDuei2cdHOBOw2vH57i
         9A95GPZ8QndIekOqlQHP86G5f4ICqIRnELnC5mLeJcsET+VyzJfvlHjIHWU7Y9HNYve5
         MRq0E4new1E7gVQsWpfjTLQSVlvGScPKdzuICgQ7117jvJWzysnfzr2BLvKDN4Cgg9h/
         mxCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cpZcy7Cy;
       spf=pass (google.com: domain of 3hi_yxqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3Hi_YXQwKANEA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qdycoHhOcndJDRjca+ESYrRrY9UZlWiTzpeSONHCnQI=;
        b=eqzOgWQsKvC4lW0odKCxHSOfYrwFNp6H9QMPec+0sIWDh+F6X7HHLOx9kt53ixgJ6n
         v521ai6SJwT80c/C5jULmW1uIELRZtBPcjS+gqJotBlPlyWdTWoeCTRbfg6gVBUGDdLi
         qn3s1Mc6ayBsOPoOECcCfVKnYJSySGrzgsRkP9tJq1hbqJhJIycNaCO5KSSIQLQ/cYXT
         YuOk9Si/VH29+t0Rg8C0tg3o90Y3vVk6ZxTqHktvHMbBG6EfxulWiQ3JPRqiHXOT4huq
         i74uyc+4BAkOyy014kTaw/h2N1SkgNR+ns7BumheJcBxRjFo1ZiKEAcq4WTbWyZI0h/a
         YUsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qdycoHhOcndJDRjca+ESYrRrY9UZlWiTzpeSONHCnQI=;
        b=XlNOQ0DDUQ0NXhVniikqaVcloctDjam4AvZbZUFTXEI44iG4DHdkSxHz8Rf8QjF1pV
         jwb5s1E4Ye1bepFjS0sffGhriXtnS7aaYZ7OfxX+NJS/thHZRZ7EMrmOOwRQieJAyN+m
         5+Df5JjOhVAmtWXU3tjbJ5sfXvD3bEeMYCPlb8zvUcrBghTgGGh6dfs8zE84lA4DBJc7
         JIX0B9IULERwIozzlxqFwnaT4AbK3icdWan6xRpkmkkGO8KAV6WQrWZrzoTCas0BqOW5
         uMw9kVOrBdsBvXsx/rn+aTXKqF8fGlAxtRZckU6NzPKp+ww3HovRcAIqw+lNKEzaq4PI
         EvHg==
X-Gm-Message-State: APjAAAU+vRZYPNEwrM+nvWQXbvl2jFRpXPYa11Jer0leL6BCb/iaeY67
	rWp+2ZaFhKt3DHOjVtadyKg=
X-Google-Smtp-Source: APXvYqwXNuzt1ZRhKDy5fPe6fzrJw4zP+8ICYlJ0bl400KUyYKiy/FtQby6FD9e2TlJ3yB+F/BAMGQ==
X-Received: by 2002:a17:902:bf08:: with SMTP id bi8mr14975217plb.75.1574448927828;
        Fri, 22 Nov 2019 10:55:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:dd05:: with SMTP id t5ls2331598pgg.8.gmail; Fri, 22 Nov
 2019 10:55:27 -0800 (PST)
X-Received: by 2002:a63:1c1f:: with SMTP id c31mr17205760pgc.292.1574448927273;
        Fri, 22 Nov 2019 10:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574448927; cv=none;
        d=google.com; s=arc-20160816;
        b=rHnltuyZxu5bl4j1SAjnCeN+zL+7c/PWBoF26f+xXqd8CyjjY0SKkSmXtY4e6uZTbk
         QaJvrgYgYdEM/sZj/5IsLDjbsU6W5CjRz8GmlqSI7tuOKE1GkOQO288JSc5BshWK0nt/
         hVGZ/YRL3QW/BYlxS0JN78auhQEnqlHtx+Id6za/6PGQWBDGFzew4OV5AGZhh2OcSXgo
         V/HjJu5VC4djSo7f3OkYGCjQsUU/041h05OPj4HJXIesv+2c686z6CQxJwtTnNPLCySi
         TcveOsuus4novja/xA9nSneflIrcejVIjA53Vu3u+2zySwligXsoGA08ywzeUQhUh7mJ
         XR2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=SHVXHEGGxuqIpcBFwRHv/uk1e/S46AumK4IMAmbp/ok=;
        b=fK4D8kOnaaPIyTHqPu/7aYdT3AjE2ZU4BDTt+jmQ0+a9feoknCUvTUtf+9wzDKyU2z
         aHiYvPtrYcL1Cx6gvz05/254EjYGmaf9uh/AZRNb09WD2wGia/fV+i8e67ghVp8Zm6CY
         y40SSgexucH/28rnOralaK7KtpKeciJp/moaeEt/iJYK+E9u/oMz1OALbTMvBHlaLvge
         7AhqSdH3o8LfpL6ORToP6u6e0XtyYvCOVUz2v6qm4H65vJVOZyNjfN5CCKPgSsfmt/ey
         /NzlSCRY3eequn4ZjskF40l0guZAA6O1F91JIutbLKKw0MzUj0kmG9eB+xbLDmeqQJjZ
         FhHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cpZcy7Cy;
       spf=pass (google.com: domain of 3hi_yxqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3Hi_YXQwKANEA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id a20si394021pgw.3.2019.11.22.10.55.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2019 10:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of 3hi_yxqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id i124so3288740vkc.2
        for <clang-built-linux@googlegroups.com>; Fri, 22 Nov 2019 10:55:27 -0800 (PST)
X-Received: by 2002:a1f:e0c2:: with SMTP id x185mr10557825vkg.6.1574448926211;
 Fri, 22 Nov 2019 10:55:26 -0800 (PST)
Date: Fri, 22 Nov 2019 10:55:21 -0800
Message-Id: <20191122185522.20582-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH] arm: explicitly place .fixup in .text
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk
Cc: nico@fluxnic.net, clang-built-linux@googlegroups.com, 
	manojgupta@google.com, natechancellor@gmail.com, 
	Kees Cook <keescook@chromium.org>, stable@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cpZcy7Cy;       spf=pass
 (google.com: domain of 3hi_yxqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3Hi_YXQwKANEA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

From: Kees Cook <keescook@chromium.org>

There's an implicit dependency on the section ordering of the orphaned
section .fixup that can break arm_copy_from_user if the linker places
the .fixup section before the .text section. Since .fixup is not
explicitly placed in the existing ARM linker scripts, the linker is free
to order it anywhere with respect to the rest of the sections.

Multiple users from different distros (Raspbian, CrOS) reported kernel
panics executing seccomp() syscall with Linux kernels linked with LLD.

Documentation/x86/exception-tables.rst alludes to the ordering
dependency. The relevant quote:

```
NOTE:
Due to the way that the exception table is built and needs to be ordered,
only use exceptions for code in the .text section.  Any other section
will cause the exception table to not be sorted correctly, and the
exceptions will fail.

Things changed when 64-bit support was added to x86 Linux. Rather than
double the size of the exception table by expanding the two entries
from 32-bits to 64 bits, a clever trick was used to store addresses
as relative offsets from the table itself. The assembly code changed
from::

    .long 1b,3b
  to:
          .long (from) - .
          .long (to) - .

and the C-code that uses these values converts back to absolute addresses
like this::

        ex_insn_addr(const struct exception_table_entry *x)
        {
                return (unsigned long)&x->insn + x->insn;
        }
```

Since the addresses stored in the __ex_table are RELATIVE offsets and
not ABSOLUTE addresses, ordering the fixup anywhere that's not
immediately preceding .text causes the relative offset of the faulting
instruction to be wrong, causing the wrong (or no) address of the fixup
handler to looked up in __ex_table.

x86 and arm64 place the .fixup section near the end of the .text
section; follow their pattern.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/282
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c36
Reported-by: Manoj Gupta <manojgupta@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
Worded-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/kernel/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/kernel/vmlinux.lds.h
index 8247bc15addc..e130f7668cf0 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/kernel/vmlinux.lds.h
@@ -74,6 +74,7 @@
 		LOCK_TEXT						\
 		HYPERVISOR_TEXT						\
 		KPROBES_TEXT						\
+		*(.fixup)						\
 		*(.gnu.warning)						\
 		*(.glue_7)						\
 		*(.glue_7t)						\
-- 
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191122185522.20582-1-ndesaulniers%40google.com.
