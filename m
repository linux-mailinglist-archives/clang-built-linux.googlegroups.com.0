Return-Path: <clang-built-linux+bncBAABBD7I6HWAKGQETY35D3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f187.google.com (mail-lj1-f187.google.com [209.85.208.187])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F399CF84C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 13:33:36 +0200 (CEST)
Received: by mail-lj1-f187.google.com with SMTP id p14sf4220767ljh.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 04:33:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570534415; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ktflor6tNvp4eKX9wp4iP7oa57XaioiituqH3PyHn6VD1acmAY/5tfKhpajfr3gjqV
         TleOEicYVapkKFo7r22/+hYKDX1OdXMVh0NUVKkXmUch0OD+y9x+CxoX2VRPsSnD2Km4
         FxgfdWbYlS6CWZnCeMJSm4nWIbLnBgKbQyzrPHIf2apeu5WYAeHuN64ISUITEJWjMV19
         LmqYuZxNQ0QRNxAc7yegfz8UlcfFx6b1AneI9SxS5dO3arEWBXuUHBsblzPJE/IZP+po
         GUQlmfT5PIVfDapt/0aVY6hDwIdWzkNwcmkyuUQ4mlA7Ri3t7eATFa/aGhHKiT1npS90
         mmTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=+2z7h4TLBbif2HzTwAlKkevJQOnOXGfnX2JJS5NakwE=;
        b=ix48vetJU+JSodRaC67mVi5obBhn26hJbVzt08xjoVmf+qtTU1zPJvPGe+sPbuE0Dp
         1+tXXKFdfI14u8y8CPRK5JaQqtTmP94HYLQEmxv9+xjEmnn5VFTLFp5a3t49TfI/ij+n
         46pP/yuxB6BMOZQ6ROU3+Grxy3arovx+Igs13Zh8rPpbfc7xCDu+IXWjcQxyF2taXS+q
         Uv9ERsxO5hqb3770M9X2mdhPdHW3fKaROOm4+hJ0gYvss0ZdCYWSlWOcXj3jHGKo60Sf
         8HLeMtcVxnL3E2jnXhIc/NR+KjXM8pz/7yD8WojwgFjP4FHb5UtKB3UkkIJhKmRDpvJS
         cAnQ==
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
        bh=+2z7h4TLBbif2HzTwAlKkevJQOnOXGfnX2JJS5NakwE=;
        b=akWoI15vtx7L4EE8hmngDb7NMefgRQMRK4SW9vp/MtNqF0RfJLtvaaVFj4H/2Ubev8
         5LtJwmWRP11SqQvSA5SSgPRcc5dqzDmjzBRiIgM2rNYERaD7Y739FBxXvrjd8NpvnlHl
         a1m35jyi90cEkqcCmupOKLNLB8Z9VA73oNhZtzbaH5aVSCENUYWAByU9ny+/M6MZtMtL
         TZpp4LwMwy6bzuzmjTatdt2E7rI97G+lYHKpjOY6rPs6FN/QSdAspYY3rhTYwP3v0Diz
         VeHeFCd8a1rLRn5YwBGHNR7ehqnUiyWHnXsY2xOL5tO9wPC9k+qw7IGqvhMbZyzHfuYF
         F6xA==
X-Gm-Message-State: APjAAAWVi0mB7XUSf7WmOhRhSKsvQXjGd2PdXwPF4KG6FdVVbxRtnVjx
	A1UjmCFQSk7lows6T5IDQrA=
X-Google-Smtp-Source: APXvYqxvDV8MB2IrxucuK+SdSitGpMrmnL8iIgoq+pbczQCpCJaumFNV8Ws6VLD6135Vsm42xe3TjQ==
X-Received: by 2002:a2e:3902:: with SMTP id g2mr22197244lja.196.1570534415673;
        Tue, 08 Oct 2019 04:33:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9786:: with SMTP id y6ls427177lji.3.gmail; Tue, 08 Oct
 2019 04:33:35 -0700 (PDT)
X-Received: by 2002:a05:651c:1ae:: with SMTP id c14mr22111103ljn.169.1570534415157;
        Tue, 08 Oct 2019 04:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570534415; cv=none;
        d=google.com; s=arc-20160816;
        b=KdWaEi2vLlreh3mp7lKhj3tIfaLrDcvVlZ5xQn3QszrfBJpg8FA9ZzPDOxcHrR6K7O
         Cr7m3gqz9+DMGTTowFZTcIePgE9ikCtgaqma0Gj+bTAu1u+lxuxUoK8puvr275wkbQR1
         8i2Ro6L2QVhHdw23svLrY8/XX3M/rF+Vgqj0qxoiBuuQft7AroJ4M78OEn1rpzmsduXJ
         QE6Lr/D1Qwl9lGFkQqT8s4CrmmHqv26eKuzKelCzbZwWJzBwqMOgsY6e4j/zJcG7bD7B
         YMnxR7/PV3Zhb7zSXVdIQ8Kbc6vcSQq5vZignneSXPfqUOSPQEwywVwzDOdswofW6lzg
         amkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=uu1l8TKnaZ5XzAfoT62FQVDOAPlsGLVocaEYLIVKRxM=;
        b=X60jt7sZaehUZlvokKK3b6nSX34QExkuYvU1MkXkD5CXPyRUE4w8LgZlm0bAEWCrrf
         NEQ8J+WkvuKVZg6udX8l54WYbrlx393icET3giugHVSnKcdImFppymQku2fRaoNNskxb
         Np564fpPCk0NSrTt5QmtruL09UFPPFIAYqCJV0NeJp0gc8UPw9is9wBJU0aPPGoR9emX
         UjpLH4K2M7oARMRVSeLThYtrYoqbNJNTIsav3jV6ILQGy9gAU0XB0Ajrka8SGbp08Mb6
         skxPMZhUKnR3BH+K/8gmNJ+2Se+wzmJPWzdNSiY1mxhdAHvkKoT5D/Bxpy3RI412eB8b
         YHyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id a9si1216870lfk.5.2019.10.08.04.33.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 08 Oct 2019 04:33:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iHnkA-0008Fm-GL; Tue, 08 Oct 2019 13:33:30 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 26BFE1C072D;
	Tue,  8 Oct 2019 13:33:30 +0200 (CEST)
Date: Tue, 08 Oct 2019 11:33:30 -0000
From: "tip-bot2 for Sami Tolvanen" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/urgent] x86/cpu/vmware: Use the full form of INL in VMWARE_PORT
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
Message-ID: <157053441011.9978.3342288603618092810.tip-bot2@tip-bot2>
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

Commit-ID:     fbcfb8f0270bf24fe348393540b17a7f2ba577d7
Gitweb:        https://git.kernel.org/tip/fbcfb8f0270bf24fe348393540b17a7f2ba577d7
Author:        Sami Tolvanen <samitolvanen@google.com>
AuthorDate:    Mon, 07 Oct 2019 12:21:29 -07:00
Committer:     Ingo Molnar <mingo@kernel.org>
CommitterDate: Tue, 08 Oct 2019 13:26:42 +02:00

x86/cpu/vmware: Use the full form of INL in VMWARE_PORT

LLVM's assembler doesn't accept the short form INL instruction:

  inl (%%dx)

but instead insists on the output register to be explicitly specified:

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
Signed-off-by: Ingo Molnar <mingo@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157053441011.9978.3342288603618092810.tip-bot2%40tip-bot2.
