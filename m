Return-Path: <clang-built-linux+bncBC47TRXEZUKBBKVB67ZQKGQE2RTUZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA981954D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 11:08:43 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id l3sf3340342lfe.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 03:08:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585303722; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9crVTPUGYTw1+kJXn7cRAFpfUmMcdkFOohiZhWnGTKKPRTAPjoQWg6LJ1QZSNcRHe
         VkY7fL0tWyCVxXAvASRWMWk1HLTqD/P/k9Lo6MEvspsztoujiF+8yYSxiShm3CzQGBvi
         TiEDqb4WnVf7WxpnUTb9Mv7vdfuOsU7s5wlKq69WYIesjSXW2vBg3waOA2ECzAcG+8Pf
         N74HAg5tTsYHGOiRnEcGj0xJ/pfVUFP/+s2zFwilscAw5dOBsf93sqWQFg7MJerWOOxD
         YUZkq2J1yXk93VsF/7KuHd0EIAiR7XDD7RjiP+gd0y0dGNP3w9HMVOSEH5mHJ0nbVRda
         b8ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=V7GewIOzzcvLWZvMyOZxLiVWvRUllGs28WuuDyB49ZU=;
        b=b3Spfi4qEkHPmHdEkTXBpeJNtsOLA3W0Qc4m+2gWE2gbVbBBEFUxHU/LqvpKih9wxo
         nJ8IdHnmXFNsyH4K/LzWkwjVnqY9DPUwbDyykOocGr/E4xy+intKl8K2AVmTkDwNQidv
         XxnMFWr/I/WwqmB+CPJ56fvZfTrqxgqMmtv5HkE0ELlLd9i6bRXGeSQ2o0hIRzmB5e+h
         3Iw4Mywn/ybciBiMUFcwvz+1HyHn9cHT8KeMUcLh3gZDmSobd0t5aEcw7udFrzpd1ubH
         1PNHMRKm6z1aYqGJc1RvWxN0sd1Tzaj3enIFeEdnbJhnuBrIIkh1eLAHSCLHs6UeLDaW
         k/tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FJmHc86j;
       spf=pass (google.com: domain of 3qnb9xgcketszlroybqdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3qNB9XgcKETsZlroYbqdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=V7GewIOzzcvLWZvMyOZxLiVWvRUllGs28WuuDyB49ZU=;
        b=HlHToK+QWmyU1JwcdeG+W46tgOquuUlGo1V48fKj2CvVlvHARAQOvT6Qx+bFCKvuP4
         gfXU4FvqEsNIVrjJQpcy4B+AkiTmlalq+Qh9U5azD+Rqzy6uop+TbKGP12TmgDUPnnWL
         pJPKOPX5YlnjQLo/iW2HRBykhfhM639hn51/EVJ8JC/L1BBsiqPGyL9JzEdPnMi943rt
         f3DO2F6WRNRBNUbM0/sW49E968iRfHXs//Z8mMP3Dgc6+RztYe62as2CHGSFWZQkpXwP
         lHk8VGHL2fsR0TPoVFknrIDg7Jx5DWrjgisZ78YnIPWp/DXRmcEtE22gIaQ+bNQT/WQI
         rwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V7GewIOzzcvLWZvMyOZxLiVWvRUllGs28WuuDyB49ZU=;
        b=kTiYqkx71eISpH15dlOn9nLDOhiM9qTxcHwz/tmk2UqI4TXw2oilhskAprjp5fheYg
         /lOCUh9DCYlx451k7gJP7z1MChyg5L4Wjx3FB8mr2Io8ItoydRIlD5XqG+WrKZrwozP2
         L5dWIjw/v4Vj6SH0StrHpbaG+sXINgblTUAJkwysLi1FBbQp+klaST1fq2zLhKYIuPWS
         jlIxNWcybBXuguPmKzD99/Gauy0kqwz+HfoKCcSB7xu5OpOCfvot80B9Ysjq0r/yMGoV
         xbggEQJYNnBrXw0UkYLDE78WejBocKnYCkOEX4V/zlbkNuGbvXQp8MMBpJo410rPKQk7
         Q0JA==
X-Gm-Message-State: ANhLgQ3d6bEEGN0zmi/AS1fE5tfKUP7QUC7kN+KDlXLdNVOd/eEJ7Pmv
	k/RWL0owCPsGDkC9ZFdRNoI=
X-Google-Smtp-Source: APiQypKdiKnBNLNDCVrmgp0Xv8bYnl6dInV5Bw0Ec9hQniSR/GySP1yyVwCVPJH0f25Ma8zL2kG9xw==
X-Received: by 2002:a2e:9013:: with SMTP id h19mr8038818ljg.101.1585303722487;
        Fri, 27 Mar 2020 03:08:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls2133109ljk.8.gmail; Fri, 27 Mar
 2020 03:08:41 -0700 (PDT)
X-Received: by 2002:a2e:b168:: with SMTP id a8mr7772127ljm.29.1585303721875;
        Fri, 27 Mar 2020 03:08:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585303721; cv=none;
        d=google.com; s=arc-20160816;
        b=QO6rTlT8lSD2CDUCJYeaqckYphRdKjY18HiQR/HNqmLeFIcVVjVPKxM8tZdT5Dpkqq
         xo/Ihrxk2od2rNCiQ39LtqUvzYYbDpQEs7BTh2/YTjzNKw46TILiItXjwJQaYUkYzboA
         lS5Hd84o1icSJb3N+x5MFMDPEkJacjuCDfNpEOwZ3auHfMaNSYLa6twrXqoSGWrTJHnw
         1QZcKs9BhNzxQeAyK3zn6EDrQVCWSywdqEBrCZejySCeWInBldZB6AOfCp96QyOZLedH
         1N7TEUXwnqJXTV29FAHYRAiqvX9GmNN3che8QgQkANm4Fc93jOnmbKezfMxvjrMs++le
         +tkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:dkim-signature;
        bh=a9Dk/kbnbTaFBBTCzZO5pdMTQ5WVDyWCyCYn/tuqlvo=;
        b=Blgts48DA/EUAyl9zdNh3pu6ZKHES68JxRz7a/YWWkck+HUULkEHqo4dRzYKrelAvb
         lZ6Gwg1YDxYt8/XyBsgGoedmhy229Z0Zg+DbmSOMmcKB268iLIhqOWAFjU9HAFEAQuAz
         dVH8UPaObIIkJ/xYBKjkkCpsUtpoTm0Fat3oyGnARI4l5dOlzofZ+CMvLYWW/YrrOlrw
         4gay0P/ry+3Jj95gEECIb+25H7NXwYJkE+0B1wDzJ/x7E0HMxMK5W/jmzquPh/2jx72Y
         /A5IW193/tHZYSg2upO9rH4PfSBTcrXCLI78L3KvGGpmzS5Wbys2rSSjqDwfmV/MB2j1
         0TCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FJmHc86j;
       spf=pass (google.com: domain of 3qnb9xgcketszlroybqdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3qNB9XgcKETsZlroYbqdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x44a.google.com (mail-wr1-x44a.google.com. [2a00:1450:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id b26si246937ljk.4.2020.03.27.03.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 03:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qnb9xgcketszlroybqdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--courbet.bounces.google.com designates 2a00:1450:4864:20::44a as permitted sender) client-ip=2a00:1450:4864:20::44a;
Received: by mail-wr1-x44a.google.com with SMTP id y1so3196000wrp.5
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 03:08:41 -0700 (PDT)
X-Received: by 2002:adf:9e08:: with SMTP id u8mr3411115wre.155.1585303720723;
 Fri, 27 Mar 2020 03:08:40 -0700 (PDT)
Date: Fri, 27 Mar 2020 11:07:56 +0100
Message-Id: <20200327100801.161671-1-courbet@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v1] powerpc: Make setjmp/longjump signature standard
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Clement Courbet <courbet@google.com>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FJmHc86j;       spf=pass
 (google.com: domain of 3qnb9xgcketszlroybqdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--courbet.bounces.google.com
 designates 2a00:1450:4864:20::44a as permitted sender) smtp.mailfrom=3qNB9XgcKETsZlroYbqdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--courbet.bounces.google.com;
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

Declaring setjmp()/longjmp() as taking longs makes the signature
non-standard, and makes clang complain. In the past, this has been
worked around by adding -ffreestanding to the compile flags.

The implementation looks like it only ever propagates the value
(in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
with integer parameters.

This allows removing -ffreestanding from the compilation flags.

Context:
https://lore.kernel.org/patchwork/patch/1214060
https://lore.kernel.org/patchwork/patch/1216174

Signed-off-by: Clement Courbet <courbet@google.com>
---
 arch/powerpc/include/asm/setjmp.h | 6 ++++--
 arch/powerpc/kexec/Makefile       | 3 ---
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
index e9f81bb3f83b..84bb0d140d59 100644
--- a/arch/powerpc/include/asm/setjmp.h
+++ b/arch/powerpc/include/asm/setjmp.h
@@ -7,7 +7,9 @@
 
 #define JMP_BUF_LEN    23
 
-extern long setjmp(long *) __attribute__((returns_twice));
-extern void longjmp(long *, long) __attribute__((noreturn));
+typedef long *jmp_buf;
+
+extern int setjmp(jmp_buf env) __attribute__((returns_twice));
+extern void longjmp(jmp_buf env, int val) __attribute__((noreturn));
 
 #endif /* _ASM_POWERPC_SETJMP_H */
diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
index 378f6108a414..86380c69f5ce 100644
--- a/arch/powerpc/kexec/Makefile
+++ b/arch/powerpc/kexec/Makefile
@@ -3,9 +3,6 @@
 # Makefile for the linux kernel.
 #
 
-# Avoid clang warnings around longjmp/setjmp declarations
-CFLAGS_crash.o += -ffreestanding
-
 obj-y				+= core.o crash.o core_$(BITS).o
 
 obj-$(CONFIG_PPC32)		+= relocate_32.o
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327100801.161671-1-courbet%40google.com.
