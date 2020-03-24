Return-Path: <clang-built-linux+bncBC47TRXEZUKBBN5I5DZQKGQEBEWSIXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BDD191273
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 15:07:52 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id e203sf13209298oif.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 07:07:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585058871; cv=pass;
        d=google.com; s=arc-20160816;
        b=sKz6sFMXWrM+cir/w2gQvImnJitpTgXoJhPz8erAiHoJ6HtVOZR5hf3uSmzabhZ7LE
         0D62poVwdz6FNovTV+QcCJkO9fX/sQdMU3xLeTMmdlQGCsvV8U9/miJDsJHkuOl8i+bq
         arjbv1Ki9TsiI6FnmOLJgIeiDgKDtiIUXC5oFSHah3D9N/rV6+Lr96HFrBb+lNuDUgzR
         2r4Ad9e0iGlvfUSZ2jYTASorZUCbsRjvpUAX4irQIq1KhAmUngfn/yIy2uu/l+c+Lxht
         c/6BG4M4dEq8p9Z3MuFSSv9qVehUEHYbxhemLR9yNoxKnfqCjs9X8z08p+LL1tJom23E
         9xeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+8f/FFO5UoRytfqSIyL1eD7d0zqlGLrIb86POHEoqDk=;
        b=YtELcFaujxDhKfjl6mW4HAoHc+JEpdT+rNotPrr7UuFDzaqwy3QhXsMYC3r7TTCiG9
         t7Xn/22MXHpYHTwQmtdDJG4ite68F9TUGnOWUHLy/3ptboYzp6ur0WWLWgYsqPyUIY1p
         OTK5blXpjjN5vriSJ6aZQVUyj8roeiUX5kX5RSfxfgPiTlui8k4bDoeBhYywzDZlPL/v
         QLN5nCdz6/an4Dn699BxYvk1B5r7Vjd1UtwRqTnXeJWGK2ik7Qh1QgGLEqp+PhG4HKt5
         4K8ONdSkUbtC6HtqBKM1B6S4d7Dqf88lNRvnyXcBd3TlLEQEfElNlDLZQlm0eGmong6i
         IfGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sr2qjPRl;
       spf=pass (google.com: domain of 3nhr6xgckeuefrxuehwjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3NhR6XgcKEUEfrxuehwjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+8f/FFO5UoRytfqSIyL1eD7d0zqlGLrIb86POHEoqDk=;
        b=kiHQj6WSVTlR/IqiFmbRK+V99tPgXZOfnjTxbw3CjUj3J7Pt6RdYo5vz/Bt/cUIWr6
         vCuLch/LzPdVZHgDcw9WQr8FY4xEnzbo7e1BXks++4G6mJrjGz8vjGoLrH9kql1EomIe
         bir0TdutCR8T/EHCOEmtEytpShFlsykjCfaXRn2WL7EdiN8sWjrurAHFSXSfbSq2UXVF
         pdCQHsQdHUTWvMtIFTitzpK4zyeBTEeBak7xpmGDdhpshWGIZCkYe12+torpAfwTE9ls
         fElBTPdBNElAtb4x5d1+BW+DAV4NBwG/phvKng754bgv+i1Cc6U/ZFCcd3X+7L7UDtrd
         epww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+8f/FFO5UoRytfqSIyL1eD7d0zqlGLrIb86POHEoqDk=;
        b=QQRj1n+Zi+LY+pxSO2D+jt8ymxA/BVBiK/rFcuCvQa//Kdw741nesegB2n6jqvFFLU
         k9WR1YRTvjXO6neCFSVU3J4UC2y/aUlX4DdztNwZeiS086e1lSJ9AkAytgrFghwymrnJ
         XaBN2xTwhXI3UsGIrkPVSNInHeA60zIy5QEKEQLKBWHj9cZcCX5IL0ACtjAF5npmThFL
         wTSVO45xMLiEXPBjvME6L/MprSOj0r/SzWiIRQllvMRJKD6P1K9K0zvCAWA5MZoIX41A
         zsfhmuWJq7M3w+uwx5sVOsAPOD8x3f5UZkLaXUYOWU9PBHgbYeTEHUGpct5FuT/M8BC9
         DrUg==
X-Gm-Message-State: ANhLgQ3dt9CeU5UQUMZGkYk4SUtveDEP5iHR3KKit15MKkx+jDacVH8G
	0TZn7G/Y5QQdH5lTCThKing=
X-Google-Smtp-Source: ADFU+vsi6oRLYy9n7EJEYZyESTHQsTUNypJW81hECNp6G4UD/iGBTAfFA3/hlp28VwbB0HeJrwEydQ==
X-Received: by 2002:a05:6830:19ce:: with SMTP id p14mr21348195otp.362.1585058871524;
        Tue, 24 Mar 2020 07:07:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls7565194otb.7.gmail; Tue, 24 Mar
 2020 07:07:51 -0700 (PDT)
X-Received: by 2002:a9d:6457:: with SMTP id m23mr22517347otl.162.1585058871150;
        Tue, 24 Mar 2020 07:07:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585058871; cv=none;
        d=google.com; s=arc-20160816;
        b=0jJ42j/yPgKBOUnWmXVLe7JAZ6T8Ri1BfXkumJlx/Xgd8YCftLZP2TtDuj/KKevxLU
         6zHVOIOQmw/jIdNXlak7YGQPkFhSzz4IzwE6ssnZKfgInnyiiewsTesIK7vM/5UC+C4Q
         pWd9Xa4v4+ytANqMRe+d2jvlx6zf+/earducxtpmNhFsPjOR3TYVOs6LJqAswEKpuU9u
         Jzt7bU8KbKtDc63a/X03MCykrUL2JisZNlq19I5xTn6vhpvSmhnlsdws4KIcX0jvld5t
         vyaw0pPP3mN0vUbkOS9r56X4daz+/1Kk2Kv95H0z6Jfe7KJbtegEpnrzwyMro0je2AjI
         qn1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=/WDuZWap/v8Iy/M+2OXxOt9NiRFVqlUjqdsfClorLXo=;
        b=RhWITx414/IqYF2a1pzrGLhdbn7JpOCkAyLt9ZcyhG0vLmYIARE9Nau3u2u1uVGvIm
         F72HMXMRjlHkCn1JG9UaJzCqmkLKwHwFsHL5uWQW0dR4HIb5K9erJIopW04nGaPF0Htw
         Sqw7yZ3U3s3Ypc2djaA8wrZ1m+CwOSaxgpZFNJGTcUMerDaOZmFOIJIZZGRzTONkgSA1
         ptFuhrQVZ5S0MYv/iPem1LygfC+acGNrshbckaCoMcMSiw7AS8cWi0dfBTabwPz6dSR3
         OAbnC5of2y2JCvq72L7kI8adJXUgHJz+MczLFFcteRop3YXQYjrxIAXuZvFR/T7yv3V/
         7U/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sr2qjPRl;
       spf=pass (google.com: domain of 3nhr6xgckeuefrxuehwjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3NhR6XgcKEUEfrxuehwjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe49.google.com (mail-vs1-xe49.google.com. [2607:f8b0:4864:20::e49])
        by gmr-mx.google.com with ESMTPS id a63si1215488oib.4.2020.03.24.07.07.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 07:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nhr6xgckeuefrxuehwjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::e49 as permitted sender) client-ip=2607:f8b0:4864:20::e49;
Received: by mail-vs1-xe49.google.com with SMTP id 184so2225654vsm.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 07:07:51 -0700 (PDT)
X-Received: by 2002:a1f:3fc8:: with SMTP id m191mr16816183vka.71.1585058870481;
 Tue, 24 Mar 2020 07:07:50 -0700 (PDT)
Date: Tue, 24 Mar 2020 15:07:41 +0100
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
Message-Id: <20200324140742.71850-1-courbet@google.com>
Mime-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v2]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Clement Courbet <courbet@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sr2qjPRl;       spf=pass
 (google.com: domain of 3nhr6xgckeuefrxuehwjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--courbet.bounces.google.com
 designates 2607:f8b0:4864:20::e49 as permitted sender) smtp.mailfrom=3NhR6XgcKEUEfrxuehwjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--courbet.bounces.google.com;
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

    In terms of code size, this grows the clang-built kernel a
    bit (+0.022%):
    440285512 vmlinux.clang.after
    440383608 vmlinux.clang.before

Signed-off-by: Clement Courbet <courbet@google.com>

---

changes in v2:
  - Removed ifdef(GNUC >= 4).
  - Disabled change when CONFIG_FORTIFY_SOURCE is set.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324140742.71850-1-courbet%40google.com.
