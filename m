Return-Path: <clang-built-linux+bncBAABB3536HWAKGQEZPI5M5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f56.google.com (mail-ed1-f56.google.com [209.85.208.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 086C1CF69D
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 11:59:12 +0200 (CEST)
Received: by mail-ed1-f56.google.com with SMTP id o92sf10863792edb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 02:59:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570528751; cv=pass;
        d=google.com; s=arc-20160816;
        b=V6CR1mB08j90POJDHiU/v5tt3lMDEyFCEMyfElJDO2FP4/UveTNimdHGsyac7TY1uj
         SVylub8R19M2IEv3mM5kEr2+RwqBNX9JBc6XJfojdf9YyMeB6rub0MJoyouDmRUwTu4N
         Ys7CcoDCwwNQ+TAce7NanYvK9nsALJ03mDbXMr32XK5WCGGDPS06GxFrsA2yJo9rYA5X
         u/LSXz88ragxHtrSxg/Rl7K/STk8yPUD9tA0H/o+GzJjI3Kbp7J5cGW0oa79cZxkgI5W
         KUDep8ceJBq9W/zSnEh8p5lFhkLz77jbLfx/xrpGEnj9Dnlx7c1RJ5aB6k8nFUfEGyNm
         r4Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=SJjn4k9CstL+Upiv9tlWECxwzwSFnDC6LTEqoP0RJCE=;
        b=uhtDaeK++VhhTS0R//OuhhpqbZaEhyfOO82IbyzDSJ0aKMkS9ECWCeYJvb8RZD3Yoc
         K/H3q0n9FEaZhw4m9of+Zf+vnDNbm96n4Jiu8k5Vu1zZhh98hcC8P4LlvoVvYlqw4DfY
         oZW44siQIuA34TWkZiVItL2kbLWn+dPmqklxJfPmcfcvKZBKpVjANtC652XOz+1cuEop
         SmFJIt1HY86oQAv+iHINpta+yivlOerqI+8qK3bKJgzlL17ZJosEVTugbdZuFWJI+8FA
         kzRscQocbif/QvdxFbUmiyXV5ZX/QpSeH3z42FfTDJ6iRGfJL083lgn6FoJTf3lNSQam
         o4VQ==
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
        bh=SJjn4k9CstL+Upiv9tlWECxwzwSFnDC6LTEqoP0RJCE=;
        b=T9yYQGmmU9hMWVt2lD0KEVwy44PUPu0nI0E5ajuLj6XlsUZ//ov9zXBcm5K+kTkayR
         AhlvZftXCNDZMOl7N2jDUKpaBaNrkaPavRFxoD09ggrOkdxx0zoFJiipThEfx4XIxkng
         dWSNWv81ZQKSCH7JPqFHB3H3Gjk8bkAkNCFU8/hbwlONiFHiwziVPlquZLwmbCEnFbPG
         J4/VrQr1jez+OUdbcLDQBgOWlE5ncsr4s0XrcKjOGv+TzYnYrx1vAo+m7L9fg009cVN7
         6nlslCNpl2I2v9GHkiMohNKE/w1oWMakN7hO9lYxLACbm1FWmJmddaB2IKHv/5rOPrjh
         ka0g==
X-Gm-Message-State: APjAAAWKbjSG575QPuDg2xDFvUgeqS+uz4ODB6lW1MG51tC75KKv0iGR
	SIRga09BwOtPN6q3neoqSLw=
X-Google-Smtp-Source: APXvYqzrkspSJ7YW0+Ee4e6kNTSrfnmNEyA8rwb39d++PZMajG+PmnM9QPrBnOGTPn7cE47UaWJ/Rw==
X-Received: by 2002:a17:906:b84d:: with SMTP id ga13mr28034317ejb.236.1570528751815;
        Tue, 08 Oct 2019 02:59:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2507:: with SMTP id i7ls715725ejb.13.gmail; Tue, 08
 Oct 2019 02:59:11 -0700 (PDT)
X-Received: by 2002:a17:906:409b:: with SMTP id u27mr5396797ejj.295.1570528751459;
        Tue, 08 Oct 2019 02:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570528751; cv=none;
        d=google.com; s=arc-20160816;
        b=botASQ2/31qKWsBQx7PoMOZMC3hcnFK+UBw4f+if0MM/TdsXzL521J25rWa00PQad/
         mP5jbOaNIieRZHRiE6YcB9FWzKDUIlWGlgW8dnhdIbg3PFP4E2wActiUoBwvhfJnElDV
         50N8rmr+/fklPTaP1t0sgeh+myNpToSlwFSU8GuCeh2wYC7sgMTSsh0iNvi2wIFEr9E3
         JCMxfNKJY1c+mrYTizbpfdwg6gFZEtKY9vt4KK9ig3Net48Z7CmC+PxTJoP6lXrkjX/3
         BNqrqxhIXeilWm0vgDD+5NvmQcQlvGRV4lPeTdISAjkMndTXt+nyPJOhDFico+3HniFk
         HoCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=fVraKdeADFcECv5rc124Rr1lV/cNtGL60ThZuib371M=;
        b=uinY0AisJhYdQvZlfXrlsQpFMMiQ7ze/yJ2tfoL++cMKv0/BIVfE0MZ7vQm6qT+wCS
         ZEsAd3QP78L43KM4oXBKE+eghYakXNub59kE0LHpMPm+d/EyPd4F4DjClpeHhdLOYnPN
         JLIsccVeiaEKhrDuKwnu6n1mJdjhMTR77c+DyhwKqsTOsIPf7Rt11+no0NyNnWU/0pl8
         duqRLhrEZzD10cVN5fkPju1FAuIe9UjbDlPyxPihsR+Wai+kEf+NfV1R9k/kB3hPKkzc
         HXl0kQoGUpxprzh4OElR2GULxJuDop6cXtrhsF6JhdDEWeWZzg5tWWwkazgjIvdGW3Ah
         EhZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id r3si1112819eds.2.2019.10.08.02.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 08 Oct 2019 02:59:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iHmGr-0006Xg-UC; Tue, 08 Oct 2019 11:59:10 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id A47851C0325;
	Tue,  8 Oct 2019 11:59:09 +0200 (CEST)
Date: Tue, 08 Oct 2019 09:59:09 -0000
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
Message-ID: <157052874959.9978.17301270713258372970.tip-bot2@tip-bot2>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157052874959.9978.17301270713258372970.tip-bot2%40tip-bot2.
