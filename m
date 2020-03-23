Return-Path: <clang-built-linux+bncBC47TRXEZUKBBSWB4LZQKGQEDDNYDAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 000E818F3DB
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:43:06 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id cq16sf1531875edb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 04:43:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584963786; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lz6mC03iKX8e9b3fC50mErGG0Y0hRIAjgOg7YIlnvNX8eOH0Pbo/U0kMgGSAxI3VmJ
         Qd78wPxwNEPg+ZGK/lIQn094FJAduE8xpavUKDXQiauPaoeSnxD2KqcRCgeC3nO+BhwZ
         T/UDyYWLceNS6yID/Q/QKRaMPH2Tugn6AXQJZzWiVBjhAsrL714bPKBe5tqf2lEwsLyG
         BR94ExHHYy3MwxkmJkaCMVMrPRlYD+vK+5qkEMH9eNb7Okm+kwvPWtAUgjGuc0+7+xda
         3Bqgoe6tdqH9DUdeK4xv5OCxqJ9s7FOuGbSCUuO0agJqu4czGAvlmJDuZ2k4ddQtNcqZ
         vBMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=wlZScAX9PCcNb5S6uU9OIdaijX3HPmKPZdO7FtNHW70=;
        b=eq0KbZva4Cl4PpwUn4lZBHZxuA2wbsxazrKMgWQRL9F4GrrfAF5Xgu8fr/kM7tSwx8
         v7j1Ly6+eEzeIh6oZtd8CnMW4BLrLdrHZfBwgsC7AKgsdvdZLN6TKrqqdpSTPX5vdIjM
         C6e4relvx0HubmYug0nCDNy2pgKMJW65pWIa7ju3l7ULrZvoWUoA59AecQ2RP5GWkVjK
         1DnWAZ+bCGXq2W5vR5D6bHJv6Ubn40WMGEfgQxSkFwWqxx4/jyaMBFC/vQUqKXZ50OV6
         rcUsAziDKpGme10RhfpFv5K3K3tpdzVYBY4W6afFIjemV1O3Z1uqIYQILTx+j8rSZhY/
         RWow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B+SMEnEm;
       spf=pass (google.com: domain of 3yab4xgckeeykwczjmbowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3yaB4XgcKEeYKWcZJMbOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wlZScAX9PCcNb5S6uU9OIdaijX3HPmKPZdO7FtNHW70=;
        b=fU1zOa7QcsLfc/k6qSM9sIMGcUuJI8yXSUQdZAinWIQmZO3Yh5n5gKrScLHu38ohbs
         /jfhDViTpTaMYpiBnWcnHO6lMSBjLkC/62Rb4cZTQTUzbLknOl0vl/ImnYfA7RgKN19u
         B4jh0NjcHWogg3w1G5mzs5pA0WfJixDPAaHp0RBqJ46TJ9BJ183OwUASP5a71ScLFM28
         AUH6l1LzWzFDGewStmAWOdn1Tad7JCQI1g9UfGYsPv9o4MY8RPC3nmukd61/DmkUVgQc
         ZBZ8jDzdiv6kHqh6JQvy1XkP0C1rsSuSczO5+TUaBSwgmJuCqlB8YLMQ7bKBjXVV07fI
         U98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wlZScAX9PCcNb5S6uU9OIdaijX3HPmKPZdO7FtNHW70=;
        b=JEwHtZJk7naddfuDpQnBxCX3BpoL9rZmFY2r1f9/j3kjBmFh5dUpF6QB8+1FCfe2tZ
         Fx/sOnmxDerTwR+tpq3h+3L45krXH80w1yH5GzjB68EyR9ohRQgQQ3xrG2m6BsrvrpAD
         tOBMgAIN5SkcuEFXVlNf6B6yDpTHpFku8XOemhOxD2AWIi3ZwTx8O3Td3vxrcBwDD3hF
         HQuMib1ESYeNReisVHBCUAdZJ708Z67FPmOVE0tmBxlwVYVZ1AOcchglCJ8RhqekOAho
         F0zK6uyaSUlMh0kKQe7pECX5W+lVLSiQyfjSR/3W4XP12mZlOWrmiNuVXCLuzOTTOqyk
         2yxg==
X-Gm-Message-State: ANhLgQ1bS0UYaWSaqs7gBhycAghA5fbt/WZq/0zwD15eiYKm/ge5MYmv
	VJfcb7g2WAqsMwsI/4eWI30=
X-Google-Smtp-Source: ADFU+vvhkR3xxrSn3qP46LM/+j4u5E3yCHYGHouYpbDxIBNR/49mn7UnttuMsml3r+LlJR0xkVOcYA==
X-Received: by 2002:a50:d90f:: with SMTP id t15mr20840398edj.209.1584963786750;
        Mon, 23 Mar 2020 04:43:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:c049:: with SMTP id u9ls7677359edd.7.gmail; Mon, 23 Mar
 2020 04:43:06 -0700 (PDT)
X-Received: by 2002:aa7:c41a:: with SMTP id j26mr20783533edq.33.1584963786221;
        Mon, 23 Mar 2020 04:43:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584963786; cv=none;
        d=google.com; s=arc-20160816;
        b=RH/ZAhS5AgiOA8XpG4hI9xPMz8/Ey2vSC8eoYgJvsypP+5FBaY669OknlIWADN0DP+
         MKCLRhEZ0ldloR07sdPRA+tBVBHg0Fs8XtfLg6QnZULlo4Y4ocM0aZCyuO3bW9OYyvUj
         FmzRX0cBhM/A/z7/NkIsNfNAPiB6O4XPk1Xw4O59IpB286dJmGRJq9tfFKXHijM8PTgl
         Mmja4yjMuPoYN6UAcTS1FzQoZdtZzWvYMyF59ZlX0xjOM+W1MLPmuALJGbo5aHXERBGl
         +ZkaMrDUDnMhrGHUodUtqa8/ShjdE8BLW0WfpQt03+Oax80jXttL8zD4dVn8OuWUrnWd
         9LSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:dkim-signature;
        bh=lSE+DSc9amXP//IBtR/r3PMKZC9AUFcm/JzIAvbwz4Y=;
        b=hnKVEFr07l3YFRJby1Yck55AQAlLv1N+VlRA9cODt2EOzZq9x+Zi6x48SNhgQnQTRo
         qae2gfd6XvQZSLD3+k4zL18ct5oKCXkhV9nx9ca0/cylKLMCtnC96AOKPRiRWmde8WWV
         F/CHHMD+0HZlBbgt9V51ZGbgXDwPimR8291o+aRt0Q9HJOPFAuMhyyCN1gsG2zFwZ3Ra
         vCWXv9CgPnLSdjOIESNr6cnYgoK4JsZm2gK48F7n+nprhcNryqW3tQbOCguW1hdJbLP8
         AM7hou6KtgCMD90vYdVsPIrbs0Gt8r+eXwYcJIf175xjFqhJKek0L9LSPlYSPeqEg1gR
         XHOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B+SMEnEm;
       spf=pass (google.com: domain of 3yab4xgckeeykwczjmbowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3yaB4XgcKEeYKWcZJMbOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com. [2a00:1450:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id ck3si669468edb.5.2020.03.23.04.43.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 04:43:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yab4xgckeeykwczjmbowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) client-ip=2a00:1450:4864:20::44a;
Received: by mail-wr1-x44a.google.com with SMTP id w11so7242132wrp.20
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 04:43:06 -0700 (PDT)
X-Received: by 2002:adf:dfce:: with SMTP id q14mr30519861wrn.326.1584963785709;
 Mon, 23 Mar 2020 04:43:05 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:42:06 +0100
Message-Id: <20200323114207.222412-1-courbet@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH]     x86: Alias memset to __builtin_memset.
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Clement Courbet <courbet@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B+SMEnEm;       spf=pass
 (google.com: domain of 3yab4xgckeeykwczjmbowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--courbet.bounces.google.com
 designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3yaB4XgcKEeYKWcZJMbOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--courbet.bounces.google.com;
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
 arch/x86/include/asm/string_64.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
index 75314c3dbe47..7073c25aa4a3 100644
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
+#if (__GNUC__ >= 4)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323114207.222412-1-courbet%40google.com.
