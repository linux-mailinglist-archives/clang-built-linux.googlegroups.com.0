Return-Path: <clang-built-linux+bncBAABB3F36HWAKGQEZL2KFAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f184.google.com (mail-lj1-f184.google.com [209.85.208.184])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA3ECF69C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 11:59:08 +0200 (CEST)
Received: by mail-lj1-f184.google.com with SMTP id m8sf4172540ljb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 02:59:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570528748; cv=pass;
        d=google.com; s=arc-20160816;
        b=elsg8GVW/hyDgIRZ3ON1JUlbLd1++NAILIyxDO4WKQB5Wi3nJsIrhGJ/0Avfb3yVbe
         cj+6GkuNs6euob1OsX1VqcDwLwbZvOnu1FxnR5ZGjO/DcI6N+7xVKzYpbW6msviZo+Ea
         BMkzDrbldOUV6moMslrxvmKsYCcINqqTU6Hy6mytIQ9Lh91aajnrn79NDO+iyUEfmKB9
         xgiTWBUXYqc82cW1b2Aau0KRwQhBqTw87ixXTFp0ebhL9nhg2pZrYP9kPdOw+pon8h9v
         16ZKsRP44ZcEOZUuoE+i8YvIRT1IemOQMuT7w5qQRi07dCuoVQSW3OfopwiBaY+hQwTH
         ctQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=vhByaZx2RF/vapHGTo1I32kfUfeswEN9i2YsDrKBzKM=;
        b=tcAngm5TmxL8rUURffKyWGcCejddp11tFt4UP6yPIl84pznf65N0/URt/Txfc/CF0Q
         xf8IrXUPDr6qafyn/3Qi+xbFdyR0Ax5a1yqvbl6D6gLwCm8aeHBCGCrWqrd49rgvc3oD
         WnMXRwBcfwbalKga0TzX8emKda1VbX6LAO3HO6KfhtzL0/VcmmgK/FyJwwdeJP0qVs/7
         +/NgRwpYExbQtgADMxYN64T0a7OFZ1OxSLz4xAf3SK0MPrei8DFJVmzno/XiOlU2Zwfh
         /Ge3/XaYsuEuo7JeMhCfpaeu5BBk8w+NVqhFDeKS1htXKXU5IvVd+4XRVbDVFyj5NegL
         X0vg==
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
        bh=vhByaZx2RF/vapHGTo1I32kfUfeswEN9i2YsDrKBzKM=;
        b=F4WPAHk9EKiWH6y9QtPk9mtKK7N1BYOhnb7tNdkVeVNkyydtgUSoPZHbNO0o7VEpD9
         GfQ4mjgCuEeP/wD+IAAqOYmvjk1y85eH4tmjdAoB4zBlqtfpwkkUiN0WgS0ZilMp5fqG
         L6YDgRC3ZMjmyk60131X6fKy4mqPe0knDt27YZGDw8fJmtIsHbaLAd1tfXCkeUC++GxN
         FnUlZLcR0CP5xsIL8Ehfi7IYZcUm7eIw+xRoBJIvBxHkwDSLIGKtUBxI4KKxmV8MHBx5
         7X8Q5QeqofwUxz8izzLG5cB94s/2G8WyMS1s2I7WWkBFCXchS/22H7v7j9oZu0S87oA6
         xTBw==
X-Gm-Message-State: APjAAAWfNlJoTV3Bcitlc/fWa8DCxGRefflQreHmCoM09XFS+ySxQQTA
	VkHN/cpDLUJI+ggCHC3Lqpc=
X-Google-Smtp-Source: APXvYqwsGz9OVuPgcj8XzvM2f5xqNAAG/LFhSe+KEERfF3w7KzHHieCzRDAFwaQ8wEnsujJ6DPdKoA==
X-Received: by 2002:ac2:4213:: with SMTP id y19mr19673340lfh.13.1570528748191;
        Tue, 08 Oct 2019 02:59:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:42d1:: with SMTP id n17ls237850lfl.5.gmail; Tue, 08 Oct
 2019 02:59:07 -0700 (PDT)
X-Received: by 2002:a19:3f47:: with SMTP id m68mr20043703lfa.108.1570528747727;
        Tue, 08 Oct 2019 02:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570528747; cv=none;
        d=google.com; s=arc-20160816;
        b=b2W6pCzS5olNU+6/sNlIBWUA6D6DAObjcOOwj3xELkuQJTVkFsGveMhTynmzh01Zoa
         qrsVJRaDwVFWqBqNuLt0NiB5wGgn1l8cV+actErf8prD0HcN9bbOWfxq3lKk7u63SCGf
         FEexZGGE/MdEyqq4dOY96/f08Xu07K91s1xpY+AriXDyTRC/XkoaWnEHPvtH28GuQRNm
         TBQY1HAMGYlFHk8jITKdxXr+Mr7/IXrw6M6oHsAgWNBvS4Jgb/jDhQOHYyKKjx5cvvMI
         kp9e0M39JiRiQjXgs0T5VJXBJs08lRthuxMmDoKYS5BN0g6feWV2u0u4ld4ZA8Tj4Czf
         J+Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=fVraKdeADFcECv5rc124Rr1lV/cNtGL60ThZuib371M=;
        b=fH1gAZms5JSk9V6Aypp+ixbPFGRpQ4Z8I2+ymWhbbnBnyU+nAlbsqPCuI7S9LLLti3
         mei6fCQ4+0SCTQ2uuZYkgWb/8GfOq4sACyyCs41bblkC+BHH8oynDy78Msx83WLSidJs
         ES9p95Eafqqx9Q0JpkPiVC2kHnqHTr71+Lrvvwx4Q1HuaiPdNn2FuUcZ4C9L9wsNAzuS
         H3R/UdpThV9YIhMWmLF9s5ckDOdHuz2uSpzpEoOulqEJguw2lzAR32fybL5IAOjdDk+5
         XJxUw4v5UhScFzREiS+UnttL4xKLK08WCpQnST5x/QvcARApbkPWt060q9ilUPhcqTVD
         UONQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o30si646749lfi.0.2019.10.08.02.59.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 08 Oct 2019 02:59:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iHmGl-0006Wr-If; Tue, 08 Oct 2019 11:59:03 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 0E0331C0325;
	Tue,  8 Oct 2019 11:59:03 +0200 (CEST)
Date: Tue, 08 Oct 2019 09:59:02 -0000
From: "tip-bot2 for Sami Tolvanen" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/urgent] x86/cpu/vmware: Use the full form of inl in VMWARE_PORT
Cc: Sami Tolvanen <samitolvanen@google.com>, Borislav Petkov <bp@suse.de>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Thomas Hellstrom <thellstrom@vmware.com>, clang-built-linux@googlegroups.com,
 "H. Peter Anvin" <hpa@zytor.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 "VMware, Inc." <pv-drivers@vmware.com>, "x86-ml" <x86@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20191007192129.104336-1-samitolvanen@google.com>
References: <20191007192129.104336-1-samitolvanen@google.com>
MIME-Version: 1.0
Message-ID: <157052874294.9978.13063009764324746785.tip-bot2@tip-bot2>
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

Commit-ID:     b547c1fa97b030ac50586e8b187571b4a83d154c
Gitweb:        https://git.kernel.org/tip/b547c1fa97b030ac50586e8b187571b4a83d154c
Author:        Sami Tolvanen <samitolvanen@google.com>
AuthorDate:    Mon, 07 Oct 2019 12:21:29 -07:00
Committer:     Borislav Petkov <bp@suse.de>
CommitterDate: Tue, 08 Oct 2019 11:52:35 +02:00

x86/cpu/vmware: Use the full form of inl in VMWARE_PORT

LLVM's assembler doesn't accept the short form

  inl (%%dx)

instruction, but instead insists on the output register to be explicitly
specified:

  <inline asm>:1:7: error: invalid operand for instruction
          inl (%dx)
             ^
  LLVM ERROR: Error parsing inline asm

Use the full form of the instruction to fix the build.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Thomas Hellstrom <thellstrom@vmware.com>
Cc: clang-built-linux@googlegroups.com
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: virtualization@lists.linux-foundation.org
Cc: "VMware, Inc." <pv-drivers@vmware.com>
Cc: x86-ml <x86@kernel.org>
Link: https://github.com/ClangBuiltLinux/linux/issues/734
Link: https://lkml.kernel.org/r/20191007192129.104336-1-samitolvanen@google.com
---
 arch/x86/kernel/cpu/vmware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/cpu/vmware.c b/arch/x86/kernel/cpu/vmware.c
index 9735139..46d7326 100644
--- a/arch/x86/kernel/cpu/vmware.c
+++ b/arch/x86/kernel/cpu/vmware.c
@@ -49,7 +49,7 @@
 #define VMWARE_CMD_VCPU_RESERVED 31
 
 #define VMWARE_PORT(cmd, eax, ebx, ecx, edx)				\
-	__asm__("inl (%%dx)" :						\
+	__asm__("inl (%%dx), %%eax" :					\
 		"=a"(eax), "=c"(ecx), "=d"(edx), "=b"(ebx) :		\
 		"a"(VMWARE_HYPERVISOR_MAGIC),				\
 		"c"(VMWARE_CMD_##cmd),					\

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157052874294.9978.13063009764324746785.tip-bot2%40tip-bot2.
