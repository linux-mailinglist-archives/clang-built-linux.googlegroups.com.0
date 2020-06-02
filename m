Return-Path: <clang-built-linux+bncBC6LFE5SYELBBCOS3L3AKGQERXPQ3OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 680841EC2C1
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:31:22 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id d64sf1787302vkh.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:31:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591126281; cv=pass;
        d=google.com; s=arc-20160816;
        b=oQiLwAZN9+QvTl0SY1wBV09RvYueFLBMcso8fyo5LDLirxccCQ0pdegHm8CXPtXD8C
         UxkVNJwCVVpgvdxEWhjR4JR/8+Gwwutgs9rG2jda9xumalFRDTGqcfLxLeymokU6slHT
         QUBT5BFdMncFXZA8OphDr3Ki7T1HHQgLXusFIY0l1Vlo5IExuyR8iyRk0749A0PmOKun
         KP8O1EUZtgUGYsyWbTQIwOadMZnlGsEyraIy7sddHFDVf9kVYodiQJ/UgLvqLTP6oVtA
         67cEfPawCJkat5DVh4oIIeMTR11fyXdaFORkwubVd+Onkgphj8NIsO5/YvznbXOb7Yn5
         n/qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qRbm7k9cD56dy8PleRplHUv3floZVtzYs4q8HJRCDiE=;
        b=tPHa6Lw2axfqMTTa0GLnr/qhC6VRm0WR4yTcwy/iCZYoCEyARY44/tU43cZZ3l6vQw
         FSdpeFZVbjAghugZounbh4iS2EsEBj+fV+JoqcKKg6Y3rDqVsg5P5XuecOdy63GGnTtd
         l+megYhsQIwIN45dEAFz6I89/qATStLPl2/uL8epzOkTk3/OGsPERsTDS5KX4G2MVg8v
         gcXF/uULSzWUujs2a4RmFRvlwg9uWjq8FF2zqhMAIoHAN7EZZqI3aSAiPmytSPL8x2D8
         Z/yA+TG7Mc9NlDAPGXqwB8+l/Hr0gYeWAAMa5mRLfGKYam1u9J6YAGD7BRtXBoz40Non
         mOeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lKTcFEgW;
       spf=pass (google.com: domain of 3cknwxgkkalezexcfizfexffxcv.tfd@flex--inglorion.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CKnWXgkKALEZeXcfiZfeXffXcV.Tfd@flex--inglorion.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qRbm7k9cD56dy8PleRplHUv3floZVtzYs4q8HJRCDiE=;
        b=gMzl5NNQuIedcN/SzsFL77+xyN7wtLlPyM3bEbyXNTanE2aPXPOCEmKJwh1tB1ZR4d
         IuQhdgfRTvEHUbaFae5zuaKmfjFwQ42Gpm5VTN11bW0O35yPHMvEYWnKBnz2wLnvRC80
         IQU9vzczcHIlgYx9Z1ZE/sDvehKxAGo6Kb5juG9sjW5Pipl/t4xIpDIVpE7mrTDCywLT
         A2Qny0eQLf2Xcm/bfm+a/oRC8rihDVxyKZ4bmdVIg+m0RdZ9Bajd4hnMmukXd9+zAzq8
         oQE8/SfdveQmjru+v+qFTAflob4h3DbFeUcZ4wEuTZprAFnvsOS+XjeVP6xsW7FI0XkW
         xm7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qRbm7k9cD56dy8PleRplHUv3floZVtzYs4q8HJRCDiE=;
        b=bR4+Gt0JB0172ti3BUxRn/LouevwjJP6LXOHbKJydUWvYo54f91ZxFaqv5rGMoJW0g
         2NJ5CbTR7euwlfaVxQh2FVwWLTKLYscDv1GMm1UltW8tmX9nT5r01S1RJgC6jOIgns0f
         PkXApvnNCYkWSMAD35J/llhb1N+lre0XYubNQop0404sKqrNpIc2Cite+iTkBkYlP0fj
         TapO4Xtr4dMHD0mAGBhVdtyJ09ENyQjIEndArHDxCZkpoXVlakdO8BMPyqly16PXHRoL
         zBv93FQjbeSeIBjwOa/RgPzF07WMSt/f3tZRYnIPvY386qMAUIizlc2+axOWZi7Tk3wE
         JsHQ==
X-Gm-Message-State: AOAM5333/Yr3OsTFRkLn0Bar2DoJ9sB5i1zZVty4KLicFx2JHPhc5GkF
	VTMk4aDIHbpdvE+0cUTNGy4=
X-Google-Smtp-Source: ABdhPJwA6SF6d0FAlfwlfobSTBXeJ9NFdJTs0v4Nr8ZS/KDWK4oFcq38JIXw8w9Ila8xJ3wV7NYaRA==
X-Received: by 2002:a67:77cd:: with SMTP id s196mr10442749vsc.111.1591126281472;
        Tue, 02 Jun 2020 12:31:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc16:: with SMTP id o22ls898vsq.3.gmail; Tue, 02 Jun
 2020 12:31:21 -0700 (PDT)
X-Received: by 2002:a67:79ce:: with SMTP id u197mr11174817vsc.17.1591126281059;
        Tue, 02 Jun 2020 12:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591126281; cv=none;
        d=google.com; s=arc-20160816;
        b=n92GjVVxUi4V6H4sR2zPdUhZEZ68bMaFFj1oiNPGZpUdc4yMly6jJ6/cr9ybdWpsq8
         mde18v3zrY6CJNDhQY4oaXjvf1ycyL9Tt83NgkSviV1Y6dmoMgcmL363yFAo3AIldJEG
         6iHYPD4CAAFJYl7Cxgfrupg+Igko0R9gIW1zgUN2mPU2zSjgDy60zSEaJSUI54CHxesD
         tXq6l1mUAKxy8YCD+QLN6R+CztFUW30h7DAS5Z6FvNI9p+zMvEaeQHmou1Mp+GTMZlpb
         U+pX1EMJZc4PdxU7FbH8XLgjs+rEpIEzl0HxLgsR5jtEJ5eLgs71JAEMlswnNp/cx4N+
         KekA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=rclZP01j1InoS/3XtOg/bC1dGPlx80uQ6aMTFnGzZ2w=;
        b=x2louv3AkJkgpPjzgNfpZfpeNlG+C0QqSD/ioyXj0e1yhRUswoXSzihlxzFEEvc32E
         sN4co7HBUkpgs0FGFivZkMkqbHx3PNkvPAFT57Eir0BUvgXEPnHSeO2M38P7Y/BgsUil
         mhZHlwYpRFvWfVDytU1i5EGB9gx5WwiWDuduudKRn3VaLoE2q/IKUCpKFvxomFLjcZpZ
         mgzACjGrzRlcYQHlP40POWcIXcdSfSmeF4CxxTmHxABqrsXulRYxSYGgzG4iP+YNW5aE
         /hhN5mjntq+dm1xP0+HEySRcdKdrzJjxmLTlX/eOJhf7LWuMf5QKLCut+gXgeX6PA6gV
         hmFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lKTcFEgW;
       spf=pass (google.com: domain of 3cknwxgkkalezexcfizfexffxcv.tfd@flex--inglorion.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CKnWXgkKALEZeXcfiZfeXffXcV.Tfd@flex--inglorion.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id a126si193144vsd.2.2020.06.02.12.31.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:31:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cknwxgkkalezexcfizfexffxcv.tfd@flex--inglorion.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u6so6395ybo.18
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:31:21 -0700 (PDT)
X-Received: by 2002:a25:c186:: with SMTP id r128mr46983177ybf.92.1591126280496;
 Tue, 02 Jun 2020 12:31:20 -0700 (PDT)
Date: Tue,  2 Jun 2020 12:30:59 -0700
In-Reply-To: <20200602132702.y3tjwvqdbww7oy5i@treble>
Message-Id: <20200602193100.229287-1-inglorion@google.com>
Mime-Version: 1.0
References: <20200602132702.y3tjwvqdbww7oy5i@treble>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH v2] x86_64: fix jiffies ODR violation
From: "'Bob Haarman' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Bob Haarman <inglorion@google.com>, stable@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Alistair Delva <adelva@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Andi Kleen <ak@linux.intel.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, afzal mohammed <afzal.mohd.ma@gmail.com>, 
	Kyung Min Park <kyung.min.park@intel.com>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, Heiko Carstens <heiko.carstens@de.ibm.com>, 
	Baoquan He <bhe@redhat.com>, Thomas Lendacky <Thomas.Lendacky@amd.com>, 
	"H.J. Lu" <hjl.tools@gmail.com>, Ross Zwisler <zwisler@chromium.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: inglorion@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lKTcFEgW;       spf=pass
 (google.com: domain of 3cknwxgkkalezexcfizfexffxcv.tfd@flex--inglorion.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CKnWXgkKALEZeXcfiZfeXffXcV.Tfd@flex--inglorion.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bob Haarman <inglorion@google.com>
Reply-To: Bob Haarman <inglorion@google.com>
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

'jiffies' and 'jiffies_64' are meant to alias (two different symbols
that share the same address).  Most architectures make the symbols alias
to the same address via linker script assignment in their
arch/<arch>/kernel/vmlinux.lds.S:

jiffies = jiffies_64;

which is effectively a definition of jiffies.

jiffies and jiffies_64 are both forward declared for all arch's in:
include/linux/jiffies.h.

jiffies_64 is defined in kernel/time/timer.c for all arch's.

x86_64 was peculiar in that it wasn't doing the above linker script
assignment, but rather was:
1. defining jiffies in arch/x86/kernel/time.c instead via linker script.
2. overriding the symbol jiffies_64 from kernel/time/timer.c in
arch/x86/kernel/vmlinux.lds.s via 'jiffies_64 = jiffies;'.

As Fangrui notes:

  In LLD, symbol assignments in linker scripts override definitions in
  object files. GNU ld appears to have the same behavior. It would
  probably make sense for LLD to error "duplicate symbol" but GNU ld
  is unlikely to adopt for compatibility reasons.

So we have an ODR violation (UB), which we seem to have gotten away
with thus far. Where it becomes harmful is when we:

1. Use -fno-semantic-interposition.

As Fangrui notes:

  Clang after LLVM commit 5b22bcc2b70d
  ("[X86][ELF] Prefer to lower MC_GlobalAddress operands to .Lfoo$local")
  defaults to -fno-semantic-interposition similar semantics which help
  -fpic/-fPIC code avoid GOT/PLT when the referenced symbol is defined
  within the same translation unit. Unlike GCC
  -fno-semantic-interposition, Clang emits such relocations referencing
  local symbols for non-pic code as well.

This causes references to jiffies to refer to '.Ljiffies$local' when
jiffies is defined in the same translation unit. Likewise, references
to jiffies_64 become references to '.Ljiffies_64$local' in translation
units that define jiffies_64.  Because these differ from the names
used in the linker script, they will not be rewritten to alias one
another.

Combined with ...

2. Full LTO effectively treats all source files as one translation
unit, causing these local references to be produced everywhere.  When
the linker processes the linker script, there are no longer any
references to jiffies_64' anywhere to replace with 'jiffies'.  And
thus '.Ljiffies$local' and '.Ljiffies_64$local' no longer alias
at all.

In the process of porting patches enabling Full LTO from arm64 to
x86_64, we observe spooky bugs where the kernel appeared to boot, but
init doesn't get scheduled.

Instead, we can avoid the ODR violation by matching other arch's by
defining jiffies only by linker script.  For -fno-semantic-interposition
+ Full LTO, there is no longer a global definition of jiffies for the
compiler to produce a local symbol which the linker script won't ensure
aliases to jiffies_64.

Link: https://github.com/ClangBuiltLinux/linux/issues/852
Fixes: 40747ffa5aa8 ("asmlinkage: Make jiffies visible")
Cc: stable@vger.kernel.org
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Alistair Delva <adelva@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
Debugged-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Bob Haarman <inglorion@google.com>
Reviewed-by: Andi Kleen <ak@linux.intel.com>
Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
v2:
* Changed commit message as requested by Josh Poimboeuf
  (no code change)

---
 arch/x86/kernel/time.c        | 4 ----
 arch/x86/kernel/vmlinux.lds.S | 4 ++--
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/x86/kernel/time.c b/arch/x86/kernel/time.c
index 371a6b348e44..e42faa792c07 100644
--- a/arch/x86/kernel/time.c
+++ b/arch/x86/kernel/time.c
@@ -25,10 +25,6 @@
 #include <asm/hpet.h>
 #include <asm/time.h>
 
-#ifdef CONFIG_X86_64
-__visible volatile unsigned long jiffies __cacheline_aligned_in_smp = INITIAL_JIFFIES;
-#endif
-
 unsigned long profile_pc(struct pt_regs *regs)
 {
 	unsigned long pc = instruction_pointer(regs);
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 1bf7e312361f..7c35556c7827 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -40,13 +40,13 @@ OUTPUT_FORMAT(CONFIG_OUTPUT_FORMAT)
 #ifdef CONFIG_X86_32
 OUTPUT_ARCH(i386)
 ENTRY(phys_startup_32)
-jiffies = jiffies_64;
 #else
 OUTPUT_ARCH(i386:x86-64)
 ENTRY(phys_startup_64)
-jiffies_64 = jiffies;
 #endif
 
+jiffies = jiffies_64;
+
 #if defined(CONFIG_X86_64)
 /*
  * On 64-bit, align RODATA to 2MB so we retain large page mappings for
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602193100.229287-1-inglorion%40google.com.
