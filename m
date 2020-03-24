Return-Path: <clang-built-linux+bncBC47TRXEZUKBBXO45DZQKGQEUHSSISY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A97191571
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 16:59:25 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id b12sf12218643edy.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 08:59:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585065565; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPTEYfcyuSvWedKKI/AeiAxynu+Az/IS8OUoXDg4sDjXa+E+cLFvcc3k2PgB3SkMjQ
         yEwjMp19XDoag5HLeAYEBir6nt1dZJQaP3QBzb1yyG7G2nHYPNhbx+/NxkqQ8kk3aSVt
         VB2uqsDp9KR8lF2JD7TT8U/NYS+MD0XgSzhZKxVFbsFuhYwSh28XcxotyMiCYxidEPAF
         6c+QHfIQoUa3M5gNe6hCKwmCGt5AczAaIfm2PJZYKI3gFzso88lND2IxRc5Ags+esND+
         sDrm1ytOHtff1YpvZbYCW2P1hhj7Q4Odm0tWtDEOHZkN076MfJAnKd4f+OGR7Ji7VFqy
         H0Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=avccO9eTDuVwkHk/2HrzgDKw+ftyBqC4L97FkZ0caTs=;
        b=x4GEravC8Ud++NcjJd1f/Ycr7qmRdJrluHcwOdDK2asI3mDvBpl/Sb/ZzbDS+FGnCr
         W6pMRCNqUxiiBOUa3YZv1ejHLoVoLlvsTNu++xDDZ/k5AW/QugcXEDOXmAiPamewpFbX
         F1sHIOdXiHfrVRJw7mhUgwT5pscyR/BjdrfLhq5InjtdifRvy+03sswhPKKive021RaU
         KEgEzskQoFsK7RF4UJx2CACTLed6zxvxZil4ISGRYdNoIUsVecxD65EWILEDojvAcSTJ
         +lEglbd5OvZLrN/lNA5fcO6CpG3so43DJxze7ufs5pRoYNOeYzmssbfFPFQdfjXncbN5
         TPMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhzSoHHg;
       spf=pass (google.com: domain of 3xc56xgckezs7jpm69objjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3XC56XgcKEZs7JPM69OBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=avccO9eTDuVwkHk/2HrzgDKw+ftyBqC4L97FkZ0caTs=;
        b=kJlVoiv6fUcVd6g6ZRa08fz0CVZbBdv6zAc81UmcVp3mSo9WY5+pww7JCqOBDCnex5
         pGgdiResPXPMor5F8Mwuan/yJkmcofBXwW2HA1l0UnUyN1AOLiqpzRF/nAvbM1fZ9Vi1
         M8hFOqQgzLZ62rPa7tfNM01uL58YxkKUtekHvB+mz8ZfN+SMODA+QtKy9MavUCScL3Q0
         27fiQdFgSMIyFYuSizZzVq+P2mTDjRFGM3/xxbYbS25MY6U2iH/T79xFApAhl/vbmciF
         habALBO8N0jpUmVRW55sD9aGQaoalPD+uJkQgqY93rTRl+VkV6t3dr1LY1qIhpI6KTp5
         HPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=avccO9eTDuVwkHk/2HrzgDKw+ftyBqC4L97FkZ0caTs=;
        b=o9ZOZoebQE+QAyJ+r7j9FNV8RoDcjbBxw2uuDTyKUVmEGB4fhzJmvrC+eVONmiO67I
         vfxn0BzmsJ9Wrg8xdlzJ/w9FyiTWUL3yB2ofHU8TkDgt8BDTSMxUTO2FnVRkfWN+mT+Y
         Acps08BKjw5nlPdQ2vXkEKvqyAwKDnwcYRdSQ2gfBbmROM3MYwcY1nKMAcvHf5X9VkIt
         8icCx9DhDWmoczBZT/O8DEfO9CBBx+30z27Tlkj3D0nJXrCLXcWy9hsk7aHO+Ef+S0Sm
         b85c72B8tek9J5BTbCjghBL3E9LGkfS9kEuz74rRXdooVeNW0FeN2cwU1LGhA2SCiT0w
         Txsw==
X-Gm-Message-State: ANhLgQ2Ecx+ieWFisYyn0LuR8I75AAKgwjqD5EJgc+votE5TSmTKfcbh
	9zXIeqsPnZLYuUTWaNBMWsM=
X-Google-Smtp-Source: ADFU+vt1JKk/W0f/YoKEC/wJTnGCslgcf/ac6WGafalrS1qeDtsT0/xr8Vd4h3n1YrdxD9Rw6bH9DA==
X-Received: by 2002:aa7:dcc5:: with SMTP id w5mr26838559edu.119.1585065565546;
        Tue, 24 Mar 2020 08:59:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:6f5:: with SMTP id yh21ls4023880ejb.11.gmail; Tue,
 24 Mar 2020 08:59:25 -0700 (PDT)
X-Received: by 2002:a17:907:1187:: with SMTP id uz7mr7306244ejb.202.1585065564977;
        Tue, 24 Mar 2020 08:59:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585065564; cv=none;
        d=google.com; s=arc-20160816;
        b=OzqW80FwtDZNqFTbR/jGfwjEtH9OZe+cXhpIEvUQpwR3OrR6Zcm05twRyxssB57e5l
         m8dPuqfKxjA0gkBw5nKWsDzHYUs8JXWvbWN6ZQndroWKRICAtYidYYLEyrFMacwJXrlQ
         P+1L2E9/cKzv9g/CExdoppS1BvxFKx5UaSCisQxpi6Jbd9LyMQWtnumNLffkaOxXu/M2
         khK8dhMAztbNFz6DQd5w860HmNZTeUvj3b5/WhE2Qme+I3KoX2ltXJ8B05MA0V0VPT4n
         0UzwR/CId/DnpvMhDZR+TPYxsbMi8LuunGqaRSjRp7QJYMJLTEj77jm6CjtCji8sdnoQ
         dTvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=6vaPWbP6ANUHUHOz8sns0zk878oxF/Up8fDXRsjlrW0=;
        b=JFLfR+9SeRYLFE00ShEsVa+1kiUlln1qo4nkDOTbjeKKX700ys8M41K8gkWJzG7i+r
         GV4XLhhvv17ITzXXMCQwZZkwBcwHCcVtcdyU8UnqiFvaMNwj6T+X43MkaN83F3nk3c1h
         WrTTpGPtCUpW+SpvW7FlE95IOed7BjTDfzN3KMxgYirQDfUC0sGLCz5IBWxNqKXRAe2v
         XfpiawfV95XiY68ygIsL8J5JOn+IPJsgxoXuTcteNwjaTZmBBNgc/Kw/O3jukA+5rUp4
         Y5x170Q+YKVXeI/IbPVcCa7BUZzxyMORX57Mw3lQ2UYYL5ptIuYYAxczdBNuyjf2NxmK
         SZkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhzSoHHg;
       spf=pass (google.com: domain of 3xc56xgckezs7jpm69objjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3XC56XgcKEZs7JPM69OBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com. [2a00:1450:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id x7si1111457ejw.0.2020.03.24.08.59.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 08:59:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xc56xgckezs7jpm69objjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) client-ip=2a00:1450:4864:20::44a;
Received: by mail-wr1-x44a.google.com with SMTP id m15so5012550wrb.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 08:59:24 -0700 (PDT)
X-Received: by 2002:a5d:69c7:: with SMTP id s7mr36849068wrw.165.1585065564454;
 Tue, 24 Mar 2020 08:59:24 -0700 (PDT)
Date: Tue, 24 Mar 2020 16:59:06 +0100
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
Message-Id: <20200324155907.97184-1-courbet@google.com>
Mime-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v3]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Clement Courbet <courbet@google.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PhzSoHHg;       spf=pass
 (google.com: domain of 3xc56xgckezs7jpm69objjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--courbet.bounces.google.com
 designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3XC56XgcKEZs7JPM69OBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--courbet.bounces.google.com;
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
---
 arch/x86/include/asm/string_64.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
index 75314c3dbe47..9cfce0a840a4 100644
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
+#define memset(s, c, count) __builtin_memset(s, c, count)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324155907.97184-1-courbet%40google.com.
