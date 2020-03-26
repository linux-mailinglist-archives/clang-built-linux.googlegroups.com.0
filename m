Return-Path: <clang-built-linux+bncBC47TRXEZUKBBXF66LZQKGQEYL3AJSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD7A193ECF
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:26:06 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 33sf4614048pgn.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 05:26:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585225565; cv=pass;
        d=google.com; s=arc-20160816;
        b=VW1kb3mrySTEsrtSHc6biBGwTFpQSljBsrBbl+/0WUhDnou7/ceR4EG9yrjus/kkzE
         GB0arc2ZPeu5k1rAzl6ZyV7MgegqAShs1odRf5sFgOhGESAYvOupxmVQbkgycgS3o/OA
         P6WPtD+tKPHuSSlzUyoBmCYLeIuThSvQgZ0a5CGgLEGDM0tsADuO7SBBx9fOgoOannB5
         rgRRCHws9a6swwJ7vrGsRTHri2KKXApYz+Lviz9xWjqqLa4QTUzsEhIhxySOpfhFBBoa
         YDIIhds9QPFz9aWjQgxuTqGzFTspzMJkZbJth1umOGnpsTUcLOLOSza56ZcgEuE2oBve
         k9BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=39YAU0DBrl/RwxlGFmEG7rwt+WnM2la2+gS28lgP5nQ=;
        b=a6ajtCI+1fUBrdBopeR4HtlQMHIfknTSP4fhYnQKnz2n589bdSCMgeiT+xdUWBJWfW
         JCf8mOcA+vREE6iQwV9CXBbLHyjyxn0GE9ZICTFwZG7nafCg50B9CQxnz8CQ/Z4gYerV
         hR5tEKvMvMZzjxlYKGbf37ZA6AFfsUd7NzE6Dlviy6uRJ2gYiIzQsMOcV+D2ESPA7JWN
         rYNSSDrTSAH8CururrdtG7j7rmLI4MzTCOcy77FWiaYGYFe0fTalFcXd31m4Mhz/EJkr
         fYmUAXnWi56tCOhf/SXmvEu352/FLwG74k8np/kVKRrsecXF1NlshWdf4l/MjAOGFMDH
         eaSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MQByxbVl;
       spf=pass (google.com: domain of 3w598xgckeyymy41lo3qyyqvo.mywmvkxq-l4sv3-vsx47qyyqvoq1y4z2.myw@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3W598XgcKEYYmy41lo3qyyqvo.mywmvkxq-l4sv3-vsx47qyyqvoq1y4z2.myw@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=39YAU0DBrl/RwxlGFmEG7rwt+WnM2la2+gS28lgP5nQ=;
        b=VJQFjv1kSmsW0sWvZ2Hj0QD3TXoayDkLMby1r3+T6Dg+biOwl0eGxNbIgvi5//szKG
         PKJaqRiHAnhUg9sNHTgfJRulOA7sokv8dutW0Q9RZ8uAs1fZRv1IR5N0XF2V+33F4LJP
         8JUzIgTEEPSsZ7dt30OsJmUIS3NgtY7328jW2QKYnE5gEj5V/7F3Jwboff4MEXiUPJxd
         ESX5CrBU0VWX1kxgkw8pnAQkYU6egAaV463JIq9DoohCl4N/13r8MchlfDQfF2LFRLHF
         nOJDt363lwDB1ljKcW6jWeT23tghprK3VDidbxDsK7TzquHNWuzJJrEuTHhrX6Z7ceUE
         +sJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=39YAU0DBrl/RwxlGFmEG7rwt+WnM2la2+gS28lgP5nQ=;
        b=Wp/uLfAzMR5UV/KhYu7oAf4HAvDGICINHwYIKe0cnP+qaxhjwW/Z8bnoVA9LVq5l+y
         fUU9Cy8BUTqF5nl3caHDr6PwWzNKT6nn3IDClGVZy5eDS9UAC6DbIX+SpFbNwAtkB0ME
         lBo44pe2IUEczoy+wAymLiNCeeknNszH/xYH2CzCYd2EsQx4b3HSLqbPDR/QCUx/HzgJ
         lahU1N3ZwBN7zzU7+dr5Far/cFKaHjE2fStRSh2WbFOVO9AmawXi5aV5UzdWfCBUSQLN
         JRZclBnwpFZTapLS6LqxARcVmJJyJeUT8dlP7Hb86QrWwNkeIeT+BS1Lt12wt1pr1TWX
         0q+w==
X-Gm-Message-State: ANhLgQ3OiKe92ALi4laZmYMml532Z9rFh92uxxZ3WGgqwWiT0SZW1nwA
	WZe7780q0Q2mLbAnkGo9hGo=
X-Google-Smtp-Source: ADFU+vtB8Jo4/5ok2m2IRsTks8GejyTJ3Dq5hx82OHK4dQG14TO9mjMZiLhySBpIXWYnYbgIY8EVag==
X-Received: by 2002:a05:6a00:41:: with SMTP id i1mr8998692pfk.275.1585225564942;
        Thu, 26 Mar 2020 05:26:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls3389436pfd.4.gmail; Thu, 26
 Mar 2020 05:26:04 -0700 (PDT)
X-Received: by 2002:a62:5213:: with SMTP id g19mr8879690pfb.28.1585225564447;
        Thu, 26 Mar 2020 05:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585225564; cv=none;
        d=google.com; s=arc-20160816;
        b=Mc1C3qaHxjCDKGSeu9Esza/Rxs+K1t5wPzWTPskHgyHf8nkIO5wV4OJVpSokYHesVj
         55REXEyAm0bP6FeW9LaKF/mIhz2JmygQ2u7O/BV1oD6fh3jOAqcejNSp0rW6N9Unlc4o
         UdL+8JN0MvCEDxQz9lYLyZCerxX3ytq8FMBO4QUohnLMPI79FFNIajly2wsrpMI5kacO
         1465WlkhsXPWFSP5HABhep+T87xWDljPaQLIZLN/HqpVkfla2N+ll4OtkzT4kuIisPqq
         /CrJUplOa0Fgbo/wIe0y6nImi426KenzbS5ZzAk7nop6XpUOu2h+Vh+JM6oWiKxWr5s3
         jEKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=O3ShDQrtiu8+pg3UlxnzbuJX0+OLY5w2L0aep49Ejc0=;
        b=Xqeoz7/8cmngYbrwl4xQYedEte2+sL4Cz5O+emFghwxj13ueleuqJLCiPLIf/2pBUm
         gk+AIqQZ8Df5lX3CXjsnL9f1V+nTHpHhJaG/3a+5QEGkV2e7XBhFyBNvPMmMYzbbPWFj
         NwlOZYQVPozTirt3JN7oWjCLbBtzYwkRvE76AEpXYxZrJPXhE81UvfRXFLZH99OdPuYJ
         2Kt4QJUFyku+QqmENsIg4dIfvGCnAD7oqZXVk5+KDfRlf9mHCuZ+rQi/2xhudl9hHPoP
         6AgtF5J9ZPol9A+prIBXPjuFv8u4T5Gfbp4RdCSxuPan9iBct7xkwyfuXMcVLoDvcr5N
         cHaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MQByxbVl;
       spf=pass (google.com: domain of 3w598xgckeyymy41lo3qyyqvo.mywmvkxq-l4sv3-vsx47qyyqvoq1y4z2.myw@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3W598XgcKEYYmy41lo3qyyqvo.mywmvkxq-l4sv3-vsx47qyyqvoq1y4z2.myw@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id x12si113317plv.3.2020.03.26.05.26.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 05:26:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w598xgckeyymy41lo3qyyqvo.mywmvkxq-l4sv3-vsx47qyyqvoq1y4z2.myw@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id w195so4581478qkb.10
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 05:26:04 -0700 (PDT)
X-Received: by 2002:ac8:6918:: with SMTP id e24mr7741961qtr.141.1585225563444;
 Thu, 26 Mar 2020 05:26:03 -0700 (PDT)
Date: Thu, 26 Mar 2020 13:25:54 +0100
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
Message-Id: <20200326122555.129831-1-courbet@google.com>
Mime-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v4]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Bernd Petrovitsch <bernd@petrovitsch.priv.at>, Clement Courbet <courbet@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MQByxbVl;       spf=pass
 (google.com: domain of 3w598xgckeyymy41lo3qyyqvo.mywmvkxq-l4sv3-vsx47qyyqvoq1y4z2.myw@flex--courbet.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3W598XgcKEYYmy41lo3qyyqvo.mywmvkxq-l4sv3-vsx47qyyqvoq1y4z2.myw@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

    Recent compilers know the meaning of builtins (`memset`,
    `memcpy`, ...) and can replace calls by inline code when
    deemed better. For example, `memset(p, 0, 4)` will be lowered
    to a four-byte zero store.

    When using -ffreestanding (this is the case e.g. building on
    clang), these optimizations are disabled. This means that **all**
    memsets, including those with small, constant sizes, will result
    in an actual call to memset.

    We have identified several spots where we have high CPU usage
    because of this. For example, a single one of these memsets is
    responsible for about 0.3% of our total CPU usage in the kernel.

    Aliasing `memset` to `__builtin_memset` allows the compiler to
    perform this optimization even when -ffreestanding is used.
    There is no change when -ffreestanding is not used.

    Below is a diff (clang) for `update_sg_lb_stats()`, which
    includes the aforementionned hot memset:
        memset(sgs, 0, sizeof(*sgs));

    Diff:
        movq %rsi, %rbx        ~~~>  movq $0x0, 0x40(%r8)
        movq %rdi, %r15        ~~~>  movq $0x0, 0x38(%r8)
        movl $0x48, %edx       ~~~>  movq $0x0, 0x30(%r8)
        movq %r8, %rdi         ~~~>  movq $0x0, 0x28(%r8)
        xorl %esi, %esi        ~~~>  movq $0x0, 0x20(%r8)
        callq <memset>         ~~~>  movq $0x0, 0x18(%r8)
                               ~~~>  movq $0x0, 0x10(%r8)
                               ~~~>  movq $0x0, 0x8(%r8)
                               ~~~>  movq $0x0, (%r8)

    In terms of code size, this shrins the clang-built kernel a
    bit (-0.022%):
    440383608 vmlinux.clang.before
    440285512 vmlinux.clang.after

Signed-off-by: Clement Courbet <courbet@google.com>

---

changes in v2:
  - Removed ifdef(GNUC >= 4).
  - Disabled change when CONFIG_FORTIFY_SOURCE is set.

changes in v3:
  - Fixed commit message: the kernel shrinks in size.

changes in v4:
  - Properly parenthesize the macro.
---
 arch/x86/include/asm/string_64.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
index 75314c3dbe47..1bfa825e9ad3 100644
--- a/arch/x86/include/asm/string_64.h
+++ b/arch/x86/include/asm/string_64.h
@@ -18,6 +18,15 @@ extern void *__memcpy(void *to, const void *from, size_t len);
 void *memset(void *s, int c, size_t n);
 void *__memset(void *s, int c, size_t n);
 
+/* Recent compilers can generate much better code for known size and/or
+ * fill values, and will fallback on `memset` if they fail.
+ * We alias `memset` to `__builtin_memset` explicitly to inform the compiler to
+ * perform this optimization even when -ffreestanding is used.
+ */
+#if !defined(CONFIG_FORTIFY_SOURCE)
+#define memset(s, c, count) __builtin_memset((s), (c), (count))
+#endif
+
 #define __HAVE_ARCH_MEMSET16
 static inline void *memset16(uint16_t *s, uint16_t v, size_t n)
 {
@@ -74,6 +83,7 @@ int strcmp(const char *cs, const char *ct);
 #undef memcpy
 #define memcpy(dst, src, len) __memcpy(dst, src, len)
 #define memmove(dst, src, len) __memmove(dst, src, len)
+#undef memset
 #define memset(s, c, n) __memset(s, c, n)
 
 #ifndef __NO_FORTIFY
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326122555.129831-1-courbet%40google.com.
