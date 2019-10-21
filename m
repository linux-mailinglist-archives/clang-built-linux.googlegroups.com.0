Return-Path: <clang-built-linux+bncBAABBKPPXDWQKGQEY5J63WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f63.google.com (mail-wm1-f63.google.com [209.85.128.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 04772DF84B
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 00:56:42 +0200 (CEST)
Received: by mail-wm1-f63.google.com with SMTP id l184sf4062326wmf.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571698601; cv=pass;
        d=google.com; s=arc-20160816;
        b=rv2Tgxmhbf2lJNxoHe58WnWsIODGuBcO46xPG2CcKf+8mWz6alwNgaY/E/g93UJ0iO
         sVG2SSATgojLWiISy2k1w5exNcVPh3jsvmuonf+XeZDEWv12AqlMNUBoO1vJn3faJUlo
         ZY4FI/wpoxyzE2UPEidOd9E27tvynVG2o4k0jYOSSIidItKpfT77TVyMaDHlAZ2Z8x3V
         ywr5siiAUHyIhT3az/fZRo4VWGClJjnIkAqI2fVK/m1M/zXI2dOGeO5W/Q+ow6tY7x15
         eUowOog+CJA8JBUQgWlCClIEQrvAVSTzsf2re6ZWXzd15F+NzWgztAiu3z++/t88fXro
         XMag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=FLleRxSVymWiqhlSWyJ3BzQuYdlJ9haXhGIF3WWpAdU=;
        b=t7YwxRR00uH08rjeO61FR+j8rJzQGZ6Plj9Gmv1tdFms8/GUuwL0rUDq1zcbYAOtfk
         KgXgd+vF+qHnJWlogOOOIBAWd411VlYkXzCzBMWWGA07TQXAsmGC0pFrIiamsPi06exj
         dyTP7OirKneoqJi6maHKU5xhtI+WFHPeyLshZkgPlVRamx1rssfP+mxvHxBnM06UxpYr
         Byf8CCypWWaPwJyQeDAdPPGwUR5FLBjqIcEM+pTvfPmzMhSmZ2t7iw+eg6IqF5odpBs4
         gnZe8zWQsa6xSVot1KhDGu3BUVSLQc4S4Ru2kpgTEzLcVhlK3N74DRCDA9a2mbo9hiTF
         qhUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FLleRxSVymWiqhlSWyJ3BzQuYdlJ9haXhGIF3WWpAdU=;
        b=H1KzgzJFOQ6c7Qg1ekKe1LMDW4A9od76rpGEQOmvgZ5l8kIvDBud40EnRPkdpuVFNJ
         AQzD4RkXoR4s2w5QdY0ZjVd4INWsrqhnTJs+OeIdp4lju80itW36gR561SYLlO+qmUcJ
         SpLTZRqIjl3d/GNE9FDiPXgjdWdCHh2H680Qh3HLfhNpFOESP0BNetXlp2+Yc5f6uF1b
         uIlnBmtpm5YHG3y1pJJFzkl9nG1RIOagtruh/+uIjm6zlMJXeaLuiANxouNQjpSx6Z8/
         0F1C2y9Yi7CADLTUTeuJLhwszF/muK+B+sOp74Xm2I+0Ysxd4REXnwqvaRsreiX9VY+C
         +OPA==
X-Gm-Message-State: APjAAAXmbkecSvpYH2tr70pmz4mPUWIP1kXGBvhf5L6Eb4OVoWcw/DGG
	fnjY0wHl7Zjh4RzZw2W9uwE=
X-Google-Smtp-Source: APXvYqwMDrgFwuppwmF0UEP8fbBQwx0nb2q0anoQK1yKHPpMNXz9YR2YzLg2ujnbCGUMFYHY3/SzAg==
X-Received: by 2002:adf:c641:: with SMTP id u1mr486479wrg.361.1571698601711;
        Mon, 21 Oct 2019 15:56:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b7cd:: with SMTP id t13ls8113731wre.5.gmail; Mon, 21 Oct
 2019 15:56:41 -0700 (PDT)
X-Received: by 2002:adf:978a:: with SMTP id s10mr545886wrb.264.1571698601382;
        Mon, 21 Oct 2019 15:56:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571698601; cv=none;
        d=google.com; s=arc-20160816;
        b=FHYlbFZij0Hx81zYg6yPmqf4eL9s4kNIm39us6osec27fns52FBOOot7nDVV0UFcWA
         UQubibAkP6j7Qf1tGJAw+UZZI4ovJKw1F3Klkm+e20EhmC6DUHVTonf3Y8KWl1hgZ05u
         5xleSTnoiza70WbKWUwmsbXRoFP057kjXFh5UMy64rwG7/hGzAi8yj40b6kovsUVuQfV
         dgCevH1dwbHcFBhtTLkMkeb6wmmMNXDX5U1f3NTCE9OSCf8jjFSBDJpwgMxYuY8zo+Kh
         g9Av1JICtUfwmKcADUkga4hAah6n8/COJfwxVLrPMHsQEjAzhqIkj/+EI6gx6qNdTnUW
         Gf4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=GouS7NGoHggBG3cnq+3rc/UFefDdE7kEgoeYqMo7tHA=;
        b=geWokbhUow/yS7QHczpMgZUQII8CP0OIpFst/0AQMPIdkn3HddphcOFmtfHIHYMbdo
         VJOZnve/2uxKJKkgaNu23sPOy+65puzbfDf8GFX+RBPiFnSpGICVpcu6mNjMMK8XR4pw
         9NkxPFtWTZ0TnhXnVrxCb78wW+1/QLzC+s0XoI91GZ7BztCz6Keu3ixUpqfKtAeXh/Wx
         1Yc1l8gaUZdi7aAfQQqOZ2dVVAQsUBkF8PhI6XqNjV1AXTCDB6vbPqE9O46q56atPOkh
         zJHJvZdBGxDVj41olJtBzNQRYB0Atl/k0QMFKCjjr0xsB/4LboEDlgxS7a6+pnvhLJQA
         4zZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id 5si1501497wmf.1.2019.10.21.15.56.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 21 Oct 2019 15:56:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iMgbE-0003So-06; Tue, 22 Oct 2019 00:56:29 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 721F61C03AB;
	Tue, 22 Oct 2019 00:56:27 +0200 (CEST)
Date: Mon, 21 Oct 2019 22:56:27 -0000
From: "tip-bot2 for Thomas Hellstrom" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/urgent] x86/cpu/vmware: Use the full form of INL in
 VMWARE_HYPERCALL, for clang/llvm
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Thomas Hellstrom <thellstrom@vmware.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@suse.de>,
 "H. Peter Anvin" <hpa@zytor.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20191021172403.3085-2-thomas_os@shipmail.org>
References: <20191021172403.3085-2-thomas_os@shipmail.org>
MIME-Version: 1.0
Message-ID: <157169858708.29376.13468044937611817754.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the x86/urgent branch of tip:

Commit-ID:     db633a4e0e6eda69b6065e3e106f9ea13a0676c3
Gitweb:        https://git.kernel.org/tip/db633a4e0e6eda69b6065e3e106f9ea13a0676c3
Author:        Thomas Hellstrom <thellstrom@vmware.com>
AuthorDate:    Mon, 21 Oct 2019 19:24:02 +02:00
Committer:     Ingo Molnar <mingo@kernel.org>
CommitterDate: Tue, 22 Oct 2019 00:51:44 +02:00

x86/cpu/vmware: Use the full form of INL in VMWARE_HYPERCALL, for clang/llvm

LLVM's assembler doesn't accept the short form INL instruction:

  inl (%%dx)

but instead insists on the output register to be explicitly specified.

This was previously fixed for the VMWARE_PORT macro. Fix it also for
the VMWARE_HYPERCALL macro.

Suggested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@suse.de>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Sean Christopherson <sean.j.christopherson@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: clang-built-linux@googlegroups.com
Fixes: b4dd4f6e3648 ("Add a header file for hypercall definitions")
Link: https://lkml.kernel.org/r/20191021172403.3085-2-thomas_os@shipmail.org
Signed-off-by: Ingo Molnar <mingo@kernel.org>
---
 arch/x86/include/asm/vmware.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/vmware.h b/arch/x86/include/asm/vmware.h
index e00c9e8..3caac90 100644
--- a/arch/x86/include/asm/vmware.h
+++ b/arch/x86/include/asm/vmware.h
@@ -29,7 +29,8 @@
 
 /* The low bandwidth call. The low word of edx is presumed clear. */
 #define VMWARE_HYPERCALL						\
-	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; inl (%%dx)", \
+	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; "	\
+		      "inl (%%dx), %%eax",				\
 		      "vmcall", X86_FEATURE_VMCALL,			\
 		      "vmmcall", X86_FEATURE_VMW_VMMCALL)
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157169858708.29376.13468044937611817754.tip-bot2%40tip-bot2.
