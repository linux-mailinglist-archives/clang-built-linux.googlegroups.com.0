Return-Path: <clang-built-linux+bncBDTKPJW47IKRBPPRRDXAKGQEG5RMUJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F40BF0C61
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 04:06:38 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id z39sf13878303ota.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 19:06:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573009597; cv=pass;
        d=google.com; s=arc-20160816;
        b=cHLEfm+KSOten/w7cewQtlB1mPvRunFoVk9HAdOJgvJp/sDMM56HbAI45NfGveTWXG
         kY0Fp8tphd1CL+h1fu+HzfOlL551i8WB91kGhD2puOnZVx3BQ/4uRk3E2NuncNcv+CiW
         60w0nhSEzyQkcZcx3C3NEhkxFqDZJk7Azcu41W1wrwnfix0C0U6k4rSobSHRu30y8ai0
         7HDpnXBhiAwbjHfQkV/hT9JetHfBsMH1UfcE/l4sMUOdYs4Tbr+0aYLzkBI378Sg3rwY
         l2+ow4kZLKBmPacRmn0au4D9lAqaCooafxnq4M7Mw3OPKtB4Fmt2SbEtd8vUQ+SQFd0R
         aAkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ik4koOKzsOLYAVNfYNl9WGPD777h3GQmpgMC/ybfsXQ=;
        b=TmyBf3Vr3TDsLC8jm6wb3Nc62JM9LB+tWJE5//CHpKyQNkYW2cw2wOmQ6GwqMpNgY3
         WqwBwbpJSZioFaV3Uavo9PO5BraimYzh6zoHyWNd8evqlAMkKHW8sh5FkftHqVZWRHFA
         U6UPXDQjgGW1/x6x41b1LJd2hLhHfWMzysCHqldGrwECD+i8QQVtw3HWy5kG/+hLJHC4
         /G+/DoJRosSJ9OrOMoXG2/XO0uz0w8syY2lF2AjcsET8MXuNsFbFH1eVIXEscCWIc/Q8
         JxfRfPcESIqdv44zASY15jLQaPvJsf+nsAf9wsmlNgL5o5C2t4/z8OZja5ZuFMH3n03h
         RiOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=l5M21eoj;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ik4koOKzsOLYAVNfYNl9WGPD777h3GQmpgMC/ybfsXQ=;
        b=OlDl7X3l+EbY5B2XLXoRV7vcyyc3YlG/ow3GRYiN6pWRVmLOz8hEAXYFROfh5T1PQG
         Azl0JegG3QmSVTlKYKtyykSklrzscw3BbuUjIn24yki2XeeNjQQE+KgrZlkEdibU15Ti
         sEpp4PbofVlwgyM9DykkWztLSCKdyJD2vGTnADE92mn0gXdrbguweq8b1Q03oirufGNd
         pApMrjkF851ylRyXEcQfT5Pm3mTHn33MsK055EIOCqJ1VFyOiTcD1dWP4akkbxBugqcF
         GENWFdL29qfwHItw9NX0DWPxqNz40XIAeDDAQwNoNip2vbgHpz3uLXQoNpY5W9i6TgFp
         /CAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ik4koOKzsOLYAVNfYNl9WGPD777h3GQmpgMC/ybfsXQ=;
        b=Iw2W6dbV8QU8QjdSsEZfStesIBaCXK8G8PqDMobeHlQWlwKrDb1o2KjcbLBEhc3yFp
         D1mbug/ViVqP8mPy2nfRmd1L8Q5u4c/+3vDkaEx4X7TWUmXexJnek+GCRtn7cuMqXQen
         W0TIDlDnKU9UWke/PyTbLHhyasDGPtno0euHj+de4xnpteZC76c2kXwg+1lkw/vr2HGe
         llmbtNlW5V0HBHJlKDKyOWFYbqytkeMqw9M0Q0Y6cmgCfgnhfmNqpcSCBBsHRJpPSVOT
         fDIk/ZA2UMKfSxq/Cb69ggazA4nRLeL4xIbRW+DiE7JDlp+wZei/8rcXWJJ5sagxPk5a
         4scQ==
X-Gm-Message-State: APjAAAWpr8N+pBnx0z4jSCloPlmDBgcb8Wtz5Q1uKp0KgIq80h8Nc63T
	1GchM9/PToxeM7Cbfn9R+20=
X-Google-Smtp-Source: APXvYqxx47K+ntSCECY1RPOYspSLFTzJwS2EulcqxuPr6l9qdLLVfBw30csBhED5RvYU8dFdNSAvfw==
X-Received: by 2002:a05:6830:606:: with SMTP id w6mr93418oti.339.1573009597485;
        Tue, 05 Nov 2019 19:06:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7483:: with SMTP id t3ls351017otk.2.gmail; Tue, 05 Nov
 2019 19:06:37 -0800 (PST)
X-Received: by 2002:a9d:6b8a:: with SMTP id b10mr104375otq.131.1573009597173;
        Tue, 05 Nov 2019 19:06:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573009597; cv=none;
        d=google.com; s=arc-20160816;
        b=IrQzroXCUdzTseafBr9c8vaVbcXX0TXq1sPkqds5X0HL2g0vAKI3/tzY9uFPReVU0E
         qU4ALzdxXFwh2NGEEThWX45ehw8m594gD0wHK8U0pMN1OA3FGmH5KquuLmmNRJdMVGDf
         exuDHiXiPQ9o+9it10ABojhja5wLBYdrxCs/iqG2i1hvcYfw0anrDKF0Fh7Mz/u8bty6
         B4hNAZk6TGx6TiCFAoCaQchI5tZ3bg1BphhFlCFyzTOekpI6Mjju+s4XYeMMLmbxwBY+
         we8e6GydSxqhRDC3fPExBzdX89QnNTXfangUuvnXaUqilLK3YqU/W6e4qVtKPxt5sYEf
         Wq0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1eu3UPlsBV/UY26NeNGjbz4l7EAQWTc1IzyHUwCN9e8=;
        b=e1T13tlnuFtwU/gGJS9XgxqKyNEZpXKZ0TzYu6B7GHhqA5mkeX0tuQGUhKL4mXqJoP
         NbJioL8mmOE3zYBqMVnwjT08sTHOIzc6raFg8l84SNgtHA839aI/w0kxPrlJIDj24gA9
         h2q2Owsxws+gGfDkMoU0yXwmowxzn95wisSqIVRI8dPek4LYM8RYA3ImQEg6GZ3feoIA
         02KE0EKK/KWSr1/U4FCbPZSWygwX4fu5VQtOeczhWgC2Oh8bFmleK9jBNtd6gxrKxXu8
         clO1cEs7yuvWXBZAspIXAK+3Z86aBIiNohOSdoauLaxquNjisxqk18DJttBpJUn+BD1H
         bglA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=l5M21eoj;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j190si791987oib.0.2019.11.05.19.06.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 19:06:37 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x28so14512665pfo.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 19:06:37 -0800 (PST)
X-Received: by 2002:a63:541e:: with SMTP id i30mr219652pgb.130.1573009596665;
        Tue, 05 Nov 2019 19:06:36 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 19:06:35 -0800 (PST)
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
Subject: [PATCH 07/50] arm: Wire up dump_backtrace_{entry,stm}
Date: Wed,  6 Nov 2019 03:04:58 +0000
Message-Id: <20191106030542.868541-8-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=l5M21eoj;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as
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
 arch/arm/kernel/traps.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index e4f4ec8a1899..16022b75a72f 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -66,13 +66,16 @@ void dump_backtrace_entry(unsigned long where, unsigned long from,
 			  unsigned long frame, const char *loglvl)
 {
 #ifdef CONFIG_KALLSYMS
-	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
+	printk("%s[<%08lx>] (%ps) from [<%08lx>] (%pS)\n",
+		loglvl, where, (void *)where, from, (void *)from);
 #else
-	printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);
+	printk("%sFunction entered at [<%08lx>] from [<%08lx>]\n",
+		loglvl, where, from);
 #endif
 
 	if (in_entry_text(from))
-		dump_mem("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
+		dump_mem(loglvl, "Exception stack",
+			frame + 4, frame + 4 + sizeof(struct pt_regs));
 }
 
 void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
@@ -87,12 +90,12 @@ void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
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
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106030542.868541-8-dima%40arista.com.
