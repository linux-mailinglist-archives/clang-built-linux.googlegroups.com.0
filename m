Return-Path: <clang-built-linux+bncBDTKPJW47IKRBT47X3ZQKGQENHVQVEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D0E186D51
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:40:17 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id z17sf1811760qki.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 07:40:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584369616; cv=pass;
        d=google.com; s=arc-20160816;
        b=VnzSlU2hW3TStQ0Em35HC0vy5ii1WYmwEvgAyvEQmRvkrzjwFJDbjUmaWeO+3znPOU
         aK10VrzAIIIt06Q4MZ1nxS0kwXAuWvP445GdoqC90AtwYst88sMdt6g0lvV5jYxARCTV
         xtcus4L7aoC1tvyRPNrVZ294s7ZqhJTrTVNUx9RtFxtZ3RuTGGlUxFfWUsNggvTIiPD3
         u6SuXUSVmgH5+7NeS0WA39dX5myIQsX/2YDCWgKM1qNYtQ1lWNknUsjDeWukYH1++R5C
         irJnQrcE9q7/RVy+U0/emjn41tlFdnSPCkU3JIw6ktjx1rEe3Lj1Nx/jQNiFPDGVz4h8
         xxzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=XSRh0dHnOGkoduZ2ludYLSozPSmXbQ7QRSYPnV+1xsw=;
        b=Xb86vyg5gB1wS5EvVaYHIYMHdIitsEahzIZNajYPHETtEi8GPeS4LySxEjDewSOF7R
         62/kk1k65n+9vXFUH6BS5j99atP1kx10GukRrEGlLyO9wmWCUCsApGqy/0Nd49QHjDcC
         yVTTuRD99KNynYERshEP3LyQBCu2xma87TyBSXUNTGews4C9UJDo7YbKyZDXPLe2F7Kz
         veODU+fg9vtyNkcbal7kdHx3smxK8wMuBafhv7b3yoYGeZXmymmkU1/3NDgMoi1rrHA4
         goOF7OWpBcb8PKbKdHquZWBPd5QaURt2GBRnOoeoMKstcgezKi8CJvTki6NLhA6kZYpb
         /vfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=UffnQYQr;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XSRh0dHnOGkoduZ2ludYLSozPSmXbQ7QRSYPnV+1xsw=;
        b=HplD6wnXkvS17S9VI0X1AL3pWtij45AqacYCQTKDfkjTXw/DuRAV5QYISO2VW6p/ll
         +qCPDk7A/ii1u++DlVfD5rW2ZVVtsVz/DYHHePxmZ5QAj15BXWikj3ADJL50nbwwTady
         CTer5lfDc1tTTvSOkqFtjAf+/oy1Cw9oHpmiy8bCrcmbN66jr3FRUlsOnFyZ7kCDyt/4
         xCdMc1vtm89ZCK+Q/xR3QdJU0718mx9C0bKA0R0s9cg1wk2ObvANUN6baQKan/2y1h2t
         c2u24L6tutR0SyFaPsncwz9JFNxHTxiHKINdQe+RrY7PMi291sc12ugZK7baUq7WgHZt
         4TAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XSRh0dHnOGkoduZ2ludYLSozPSmXbQ7QRSYPnV+1xsw=;
        b=oMgo4C3K8TD4dfeOpfAYpR8WNicQ4caPjAb+J2uz1mWHOR5MVKgLyTWByKoB90Q2lF
         UirM/LcDEW9coGlbTKwmm50H2jL3ArAikWR7xBsBXOlDe4Qr+wPNOqrm3RId8wdRUKnq
         8qW5J2V6eOBtq/qnlk4auPlrTX9URGa4p0T3n9nyBdeNYwcKZyWDjBU2Y+17OrbDmc2B
         N4HGw7bCPS9/5YPVT+2wxVwMcDCU94seC9uEbCvJBK+E10UgVtol/8YWnW09RuDD13NW
         pO2ZaDw63veOnStkf0BBOUEtSpwaX0ERWYdMYvQjf3Ih7IMX7hv35yH9wsIqE1OTQoak
         chBg==
X-Gm-Message-State: ANhLgQ3tGOiwmVk4YZS2sc2jSRdV9e0oFn0p9g+KS/1kzdKUXOTB+FHw
	u6NIj0lG9ClRAKwU1Ef3F94=
X-Google-Smtp-Source: ADFU+vt090Hh+EOh59P8K9Vz83LoUdGi07i0WHUTButdq7LoXSdpYsO8LYMaLdhmMFlA1I8/MhJpCQ==
X-Received: by 2002:a37:4a41:: with SMTP id x62mr3069qka.178.1584369615943;
        Mon, 16 Mar 2020 07:40:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls6963676qtd.1.gmail; Mon, 16 Mar
 2020 07:40:15 -0700 (PDT)
X-Received: by 2002:ac8:6709:: with SMTP id e9mr410772qtp.16.1584369615266;
        Mon, 16 Mar 2020 07:40:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369615; cv=none;
        d=google.com; s=arc-20160816;
        b=r6jRd5tDmDt1fcu47kFqYqusfAb8bEzloLRGL28dsRylNpbNmm+xczfz35cqX1C5Xu
         HYXq+MHvGX8/vKttB5/MtZWELXMOfHTxOUVOKRLUxNIhx5dG4FzcbqOgNUy1XfURl05i
         S+G8soeqaGZYyhqvAoMIA3wp0OMWxcDNE0jLuVvcO8KKchG6VgmUt3dbFJjJ5b88T3VQ
         XhIun62lxCzbDeShiZ85vJowHGqgVrrv0NAfLOs9YO3WaAboicVGTp4GY8aK1lAuHKIk
         TsbYbBVWJNnySuAwMMRRHZ6DxmdqiJ/mtAkRvk0AZTOL6O6Z5GzZKhGr1VfxTH3M0g7s
         geJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=x/gCbAp+H9Fc7JriqMdSSF6E8ktWavqK5+A0swN3ZDc=;
        b=OGwBPOgETlV/lUTD1Wo/YE7GgkSMIGx7YCGqory9+raSDENToNyIh0crtKoKKP8n1b
         Bur3JbASLiTLkzzoFiiOLtUTvspovfa/Fm2aE3TU9gCsVjur51SHCqH4ZM2obISbvRy1
         1DtfVEGobH51tVtmBQ7rvaqMrKgoicNaW21JxQn85qT3mdebTzVAdZlOvL0fcz16treT
         xcrnnnlP5OHQ6kNBA8IV9tNt3sEYYBqYzuKaOy4iWJahA0UaL75gWYOREi9bKvxLd7bc
         1pSyXgUZW318iv9rSA7NnO1aTu4XFYBmWOgHqit3wN7pqTtVEZigv/JWiaHowWXpAUmQ
         z1Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=UffnQYQr;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v85si4279qka.6.2020.03.16.07.40.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t3so8094697plz.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 07:40:15 -0700 (PDT)
X-Received: by 2002:a17:90a:36c7:: with SMTP id t65mr25183358pjb.182.1584369614252;
        Mon, 16 Mar 2020 07:40:14 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 07:40:13 -0700 (PDT)
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
Subject: [PATCHv2 07/50] arm: Wire up dump_backtrace_{entry,stm}
Date: Mon, 16 Mar 2020 14:38:33 +0000
Message-Id: <20200316143916.195608-8-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=UffnQYQr;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::642 as
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316143916.195608-8-dima%40arista.com.
