Return-Path: <clang-built-linux+bncBAABBBXI6HWAKGQEAC6GCCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f56.google.com (mail-ed1-f56.google.com [209.85.208.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1D2CF84B
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 13:33:26 +0200 (CEST)
Received: by mail-ed1-f56.google.com with SMTP id c23sf11026898edb.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 04:33:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570534406; cv=pass;
        d=google.com; s=arc-20160816;
        b=uam/7/f8BDegAOYjA2AK6zgSC18Duw7V6peiJ/ARq39Sy0mnj77b8ulPdp2NeGaqP9
         XkUlWhOIbxWjunl1TIeTmzkqwIn7kWVY39sjDkX5qtvxEqf4tRsKGlG2sc9pYQTzR2HB
         uVl6BwafOZzF/w1HGIt/yEhBvoq2MxRM6WmllEILA7p0OdYXsm29iMDD4prW/wYI/GoU
         uhsewxHmkDv8r0QqvmDAuvndCdhE7jlpDgYCje3xRMz74anhYtRSFDqv6+wtaxsSyn0j
         rwdb2pvTyGD0DNMwblqtBg9ZsxG9E1m3nzWbzRWvZU9vaEeOrKV+qPs44KZV4xUTOvKB
         649A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=h42GrcHNOIURX8ikop6Juob+1IXrh2S0oXBWjtjyEks=;
        b=TCigAfAcm6JJWFjqgEwSaLFIoDAxBpX78jm0wSANrsDSPMm4oAv/XG+hWxsU9N6NL+
         JeoZE21AzuIdwTnWiosCEHmbBKLJQ3TVnuyX59ApbaivzYndK26orNO+QA70CxfJUX14
         Y8etiYB9R1MTYlBy8KlDZyhSDVr0Ch2RGdD6PiqDct3PlpR6iq0JG2XgDDcaodNJ+t/j
         w16hv+KizPh3GGbCj4UjP9vGCwP2uedZ9K2xbkS4zntg5pRlrgcx9kw2qzOP+dy4pOaQ
         9YBIV6FCM00pFjblWk46uqsX73+2IsTIvn6xBqZiHLmzzuOR/XvhlPG42xaO1dwhDKNu
         Yf+g==
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
        bh=h42GrcHNOIURX8ikop6Juob+1IXrh2S0oXBWjtjyEks=;
        b=kPZFiRPTTLPntuyv7gvOE++oBbj3As2U3hBKkp2TsdNjIqbHEEWQMkFvPrqZe/Jdt+
         vVfXcfCsuhv+sZVswU2CJoOBUkK5G6o8JO5mi3bgXVhILHF1+65HrT9R8v8kN8sHn0Zh
         gydb1n2Ld1dzVwJZatI6RcT7ZbnwbUYpZ10z8glSi85xfOk33ASUmuGsn5WxHsGxNzgF
         XPkVHfM1DzNgi0cop4Ep3a6JfIo+K4F4yrxTnLRxkMO6B2T3b5FcLeluJ+baXNQn9RfN
         OxI1+IrTKot5CkO5pFKStOg8XTBtgggYrECdWTRzEiVI/A3lwz+E7zFyClQ4DNXN4oxn
         EpFw==
X-Gm-Message-State: APjAAAXzYwFOAB+JjtMxafrPdfu6RqC5sCHO9ZUA8oeOqodbQO5xQAY3
	2PGrgM6spYQdTP5Gos/ybeU=
X-Google-Smtp-Source: APXvYqwb8CK/yOgzVAWdvT2KCxl8qLmTYUXDzvmGSzcpLbTioDdK5UfbPxAqTyHL5pP9M3sZy+AjiA==
X-Received: by 2002:aa7:df8e:: with SMTP id b14mr33766574edy.65.1570534406417;
        Tue, 08 Oct 2019 04:33:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:b02:: with SMTP id bm2ls724890edb.5.gmail; Tue, 08
 Oct 2019 04:33:26 -0700 (PDT)
X-Received: by 2002:a50:d2d4:: with SMTP id q20mr33808317edg.172.1570534406075;
        Tue, 08 Oct 2019 04:33:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570534406; cv=none;
        d=google.com; s=arc-20160816;
        b=QSYV/Q0xO7UFlzX0VDdEVFszPUFZ6TyNz2KjAO0ofurC30VdEXtt6Dzn5AVtVtAWTf
         T8W7Mi3a0TjO1/0dj88aau6O65fAaxKFZuK12u+VhFyvpFxwN1mUeDij+M+7y8KYM2qu
         lmvFTeMpsE0kpxCemQls+zCEbFlC3tBx9gZzljwmkFghaep07onyKRNbaT9vpV8L6Pud
         bJD3suHyccABW4L2cpafKkcD4CPJQh6+wjqjEJojghgRfBWsmYkOEJ6EYw3FJzVnMt4F
         +zD20I9zTAorP1mWdN0Ce7vx1zvBzIAHHQT0Evu2XE1xvpTR/q1kNh1pjmZXN46QmsBh
         pMLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=uu1l8TKnaZ5XzAfoT62FQVDOAPlsGLVocaEYLIVKRxM=;
        b=UAjjKiIap1PPkw7pawWV0HJTKun6Hy9Bbjv4gRxEHgS+DI6eXaFsnlue9wlgLqFY5c
         wcSMW7rWQwsJqnMjHKxb/xL3KY5EiybQaoKSRLa0cT70Nqp/LrknrPQk4X+85IBXnIrB
         7TPF1mHJQJnbkeB4vaN7sIn0UKi1vyLyrzGYrPBkjsG22YTByz/IiSkZol8JuD0O6uld
         CmlXhtwRcMZEv7NF0BcoaD1Vvq/9AX1PFUk7Ui6n3pPcihgnvone1gZ9ZA46zsfrx6JN
         WXX64xW00hRcu4NWsBWNonCMDE2Y/IpwhaNWzq7BYKlYg8x7ff0qx85+9wt+R8mCfRn+
         zddw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d14si1363976edb.4.2019.10.08.04.33.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 08 Oct 2019 04:33:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iHnk3-0008DS-El; Tue, 08 Oct 2019 13:33:23 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 211C31C072D;
	Tue,  8 Oct 2019 13:33:23 +0200 (CEST)
Date: Tue, 08 Oct 2019 11:33:23 -0000
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
Message-ID: <157053440307.9978.15776882111397155119.tip-bot2@tip-bot2>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157053440307.9978.15776882111397155119.tip-bot2%40tip-bot2.
