Return-Path: <clang-built-linux+bncBDTKPJW47IKRB4OB5X2AKGQEZV7DEWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE921AF497
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 22:20:01 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id r17sf3164218wrg.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 13:20:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587241201; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgMcI7lrqaIcGXFoJsSVwh2Q09CPX0oufa+TdZARma48hVf+TkEaM/y1eDOrNzPlQz
         RmpFvpjkUSeg+vkLgGebVBF24/dBwdbDAj9V45XjL3iqXo9orGfEOf0NBQKu6esG6pos
         Ps360ea4KOwvZkc6XnZ+z/B1XhjJelu81l6duuTuZnxbpy2D1cbOwheurAtpx2qbxDK2
         bG5Og+ZMq+3p1zSf6b4cinhISImyOEzP825zQHkyZOxeMcqyEWo/ufIkbVLBYrdThsCf
         Rjc2Jsp/dZ1yBMQp6u4Em+SA9VZwja5dtI9mwyftBVNRbde+bdj27LzsM/ib/UVoSfRA
         qRYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=L1mVjC9CM0RLlQavmsC+uCZWMVOjg988LcXZ0Eke7ag=;
        b=UgunZUj74LihROJgzvbW6UvwjUAXamnnGbcr+EJMN5BDsxndtsf+wLy3LAxikyGJAS
         MVcMXhf5JmZr+3GhZT6r4fDfUCzOiLdpUYANWQtk/JiMUtNbFXjECiG7VhBUA7gjFW3l
         iNnUQt9MpZ7rQWTS6cgmKxyRIA3aehb1JyjjJrWhyGp/Q1kTwpGphXyWip/aWE4+vaSo
         Vl26NtefBisnFss9KfpUI8MzIFMIJIxj8IG3zqJJT+zwtiA7rvJxuy+/8mQM5auvcePf
         dFolwUyegkdJH/BTgxkS8W/2h7cXtQMXlYNXwR12U4z6YKr578mjIuxsdMkUZwnOcPES
         bg8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=CpqLi0Td;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L1mVjC9CM0RLlQavmsC+uCZWMVOjg988LcXZ0Eke7ag=;
        b=Aa0+q6gUf9qyTScLPify0v8soGbZ5Ba0oio9XuMjmhfmn0HK2y7pbJ3FVVqw2eKLg9
         rMIzRwSdy729FaWm5QcDzc64WRbjZgmNi8BdmS6J7clVJndWfaOVC3YlYODPr1h6Pa1k
         JWQ4V2booZLzNqlsekbf8UQGJpxjwXL6l3NTkA67fGNDqwbSFbp+DeLUWNRxIXkm2C0w
         Hljk3TesQwv3hILL0AJ6uCzx81JOC3a39XOTAehWpbBB7jY1XN81XKKgS7ceT/XXEiro
         f1/QsZSfMJobavqwWFEJKqiaqDUwbZCCQYXFKuw02qRJ3L0CahpTXSay5Q9P7EIkn0WV
         l5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1mVjC9CM0RLlQavmsC+uCZWMVOjg988LcXZ0Eke7ag=;
        b=pzMGKFiYlvKFiK7jVViRtM8kPhRlvvYrYbmEk2Vitr2zcCW/n46WrcMUNCmqATYhik
         5nZfO5kf7kNTcE6A7ylhwklm0V1c/+0x2txqmEVFiv+cfc3WApWYP7JqNtEE69qdJj7M
         iHcFxA4TlIn9Or74ehVZkVfbbSlimnBKlFB+6LYp4jw1U6oPtd940RowGKzQKz3TOhJx
         ecjevPlqI6iEw+qUTmxIqv6H3Z7lOk5dePJG/T7DKiaFdTe04zCItHnuWBuR2nrrSfff
         lHEhwDsq+bu0bGCojptrgdRWX9Kj0ko96csYxQTzX9KjfgAF1z83flRzqTSGnFehJnCV
         Jpag==
X-Gm-Message-State: AGi0PuaGFlEqcqeY6XwTg/K5Jj7IaHb8hpqr1R8+NbucbIvU2vopGz8E
	C1zFTM4TuXhM4ly+J4OapJ4=
X-Google-Smtp-Source: APiQypJh6H+DYCCwqE88wqx0FBKuHY1LnVEYE0tKLs8G4eev1PODO/HORXvHn0ybYMVlo9pZBMkYVQ==
X-Received: by 2002:a5d:4ecf:: with SMTP id s15mr11201278wrv.226.1587241201421;
        Sat, 18 Apr 2020 13:20:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls7865337wmm.3.gmail; Sat,
 18 Apr 2020 13:20:00 -0700 (PDT)
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr9506175wmj.130.1587241200920;
        Sat, 18 Apr 2020 13:20:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587241200; cv=none;
        d=google.com; s=arc-20160816;
        b=Bhg76wd0O1sl11/n2Tqo7oPUTv2CaUp+6/l6nf55gFGQABfDwMG3P4EeA+PIE4ovJU
         fzA4+7R6ICCNm8FSWnSHjjNz0ls8B0AbzOLnu1r2vDoFxpeY7xDdG8IHWdV79uvGEA/d
         FhoDY38yuGF2g4BJQWnRJkG8jsC6AtWV+8/4E592zwDY5kabFn8/Wlx6+ZqHAAhpIDb2
         aIc+Z+X0RBZ95ERRfvBveyjgxz8X8H/yjn7gWcWeAT7CUFKajkKo7P3nwDFB/r5ZldLH
         Bh1j/NzY4CAZ/PSkV4f4lsJKRAWiAiISs1/VgB1WkMSU5MKnJQ06vVZvRv41989c4fNa
         45Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+30pBdntWlJcgkbolNjxFd/p/YpKCMUbtsGUF0cke54=;
        b=n6WlXrHhdz9fv12PJ7AdtoYFzJH4Kn7TPKzHbVypXxMBwfCj+Pj6Q3xyFAJAdCG6od
         BCXnGHmvRJxLj98znCzPGnvEb9WZgS+hFwgjbuTkigpvvu3iq3sbd8bKsqK6knqtwi0u
         CNdoR2fuiAEeawPx/LXhdYXyW4bHCBAPPIt9h7ogDdBOWvDmh5Fd7Q8vMSsPABjSC1/o
         tb2PKQ/baUoHQWnngvmcdCo613ffm7rVtBXw/sLZFtppuJgdkdLYulBAkeOCY1WTGxB5
         Y/F8GH4NLLpb8mUi6StAxn3oODPP1i3FnFQlPGkcFYU8NTYsbWGQ5tDFe+9+Cur030ci
         CGbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=CpqLi0Td;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a5si486724wrg.4.2020.04.18.13.20.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Apr 2020 13:20:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id t14so7124867wrw.12
        for <clang-built-linux@googlegroups.com>; Sat, 18 Apr 2020 13:20:00 -0700 (PDT)
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr11297074wrn.390.1587241200532;
        Sat, 18 Apr 2020 13:20:00 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id m1sm31735255wro.64.2020.04.18.13.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2020 13:19:59 -0700 (PDT)
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org
Cc: Dmitry Safonov <0x7f454c46@gmail.com>,
	Dmitry Safonov <dima@arista.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	Jiri Slaby <jslaby@suse.com>,
	Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Russell King <linux@armlinux.org.uk>,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCHv3 07/50] arm: Wire up dump_backtrace_{entry,stm}
Date: Sat, 18 Apr 2020 21:19:01 +0100
Message-Id: <20200418201944.482088-8-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=CpqLi0Td;       spf=pass
 (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::442 as
 permitted sender) smtp.mailfrom=dima@arista.com;       dmarc=pass
 (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
X-Original-From: Dmitry Safonov <dima@arista.com>
Reply-To: Dmitry Safonov <dima@arista.com>
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

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Now that c_backtrace() always emits correct loglvl, use it for printing.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 0f09ace18e6c..e1be6c85327c 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -68,13 +68,15 @@ void dump_backtrace_entry(unsigned long where, unsigned long from,
 	unsigned long end = frame + 4 + sizeof(struct pt_regs);
 
 #ifdef CONFIG_KALLSYMS
-	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+	printk("%s[<%08lx>] (%ps) from [<%08lx>] (%pS)\n",
+		loglvl, where, (void *)where, from, (void *)from);
 #else
-	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+	printk("%sFunction entered at [<%08lx>] from [<%08lx>]\n",
+		loglvl, where, from);
 #endif
 
 	if (in_entry_text(from) && end <= ALIGN(frame, THREAD_SIZE))
-		dump_mem("", "Exception stack", frame + 4, end);
+		dump_mem(loglvl, "Exception stack", frame + 4, end);
 }
 
 void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
@@ -89,12 +91,12 @@ void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
 			if (++x == 6) {
 				x = 0;
 				p = str;
-				printk("%s\n", str);
+				printk("%s%s\n", loglvl, str);
 			}
 		}
 	}
 	if (p != str)
-		printk("%s\n", str);
+		printk("%s%s\n", loglvl, str);
 }
 
 #ifndef CONFIG_ARM_UNWIND
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200418201944.482088-8-dima%40arista.com.
