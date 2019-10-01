Return-Path: <clang-built-linux+bncBAABBLXJZ3WAKGQEQPDJNWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f56.google.com (mail-wr1-f56.google.com [209.85.221.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7A9C41AB
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 22:18:55 +0200 (CEST)
Received: by mail-wr1-f56.google.com with SMTP id b6sf6510681wrx.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 13:18:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569961135; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSlj+jTgKeAKc25ruj64ElKp4p10ivYPIdvgPpQV35LOkRb4H5M1RCbJLxvsZyqALL
         GL0XZamuYodHoM2cAmvr/hbyHNYTvwyR6sFQHEjqyMsZy26pzFrNBXVoi/GiOX17UwDl
         zyqtOa+91FV7USgoKQ0dVWL0yGuC40O5xMxSwMGuNRPYPFnvk+hhzPIMDE2jpDtIClY7
         CBr4rixKqqlobiDyJ5ZONb346iVpfA4IM0IhY/sLudihp+xME4PxI2FYKwvDZsUTuwAt
         mtvtCeC9l2wYNzCVjkN+8IWXZUNeuiLwA4VCRwRoYJFOHOk/BFyn/+PZVLto/0VMIcuH
         OVIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=3StrzonnHa9L27P6lIIbEchOmXRfSP91N0OMXFpCrNI=;
        b=eybv4m31cW55l0jMBhIIH636FOWG1aOpPMpF7gYUFr0CA6uc+EPnnUnQTIkVsGdRUN
         vHW4GeWeA8WoHPX3rgNHUoBaktW0UQaONj48WHvFgl5wZY6l8O9Qm5neVd8PZDfXztVl
         l73ME4ld9pmDLXF2SI7gnNTlg96XFfqguS7b91U3pU2bU6MV4EyI/1/O0yl0vTw6Uvpl
         VvLZztzQLvFwAWdE/CZyeFFDqdheDeYPU0Throh8a0A9rk3jtyApfevlykwWhs7zMUfL
         fCYgdiHzNxCyTm7xPxBCLlxrI4n56ugg1HiGgQENvAPfSWn99rndeLiGqS79zoRO/roh
         AKRw==
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
        bh=3StrzonnHa9L27P6lIIbEchOmXRfSP91N0OMXFpCrNI=;
        b=Pq+vKMJGI/vNTAKvQ4z4E1+1BvYex5rspgaNot6vcuQUt7BhkXarAguNE/6ALvb9vY
         tbb8yB4ASEW1wmETNZlpPbVFbduAGbNJFX4oUDJ26psJM+O/TFPctrb3HERsnM6pUF8p
         x3d4iuEKpAeCogH4CGmc4VOyl9rrTo3udZe3TZE6R5kIjZSKym23soI7pONhoJRUacQZ
         B6A1wM71nvRu6dxs1NJxwDK8WvqUcKTPIptCbBkXgrpRkAtCJKXHgI0wjqqCCFmTUIPC
         NLUqx/83GbMly2Mc6Og6/bQPvj/fqJeghnGfeEzgZm2noSRtFGYgNyGDkt+NywhWyT3G
         DqLA==
X-Gm-Message-State: APjAAAVkdlb0vqTYZGKF/4QObmPEhPPHmDlE4mlGu95tl+JcD7YlGrIr
	VUdkGtNPf25zpCGC7z9Gu9w=
X-Google-Smtp-Source: APXvYqwJHZhAPygMXukpCMBXnCJYIFBWAIFVgRe4qBG7Br+XcfrzcoEyelWFZSkucLu25+BBEO8eIg==
X-Received: by 2002:a05:6000:82:: with SMTP id m2mr10423683wrx.241.1569961134922;
        Tue, 01 Oct 2019 13:18:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls25582wme.2.gmail; Tue, 01 Oct
 2019 13:18:54 -0700 (PDT)
X-Received: by 2002:a7b:caaa:: with SMTP id r10mr1668542wml.100.1569961134504;
        Tue, 01 Oct 2019 13:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569961134; cv=none;
        d=google.com; s=arc-20160816;
        b=nP3mV71O9YN4xBRn/EnpGctBGkghqySdIYC5MxMnQehvOLLoKLh1DMYeX9muf4xrRi
         UCAyb7bJcKxvXMz1ukDO2qypvd17DwVUCJpUS2h7ats8L7wcMAOLapJP3HPM0ldT1Md9
         Z/gwR52h29vkD19mifpZBlpp74PIy9d6hwvj7U65rYQwjtCqMvcvpIHQ9u91P4MSPGbV
         g1WXj/wioqqPY/pAaIjJujCuAzOfTbtweLrg3g1kSTXRsKrCHlzVOuqAt4r90q72ePeg
         9odgNrDr7axbhKXlO+YUXpPJx2sJ+KS/m4z9EYhZEgvHBDWPiQN2LvHh7jliTVlz9uFv
         cqUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=kK/AEtFe0ccqyvier8efLmgu/I4+wIDSE1PcLnoxAvI=;
        b=Rl6F9fA7B4+lWosFZHuVSaTIJDv5+Bb3eAyMY18zYNdPNlVBuI+ONwgj/G7/viGdQJ
         EgL6n0AZ5ektXW5dHnqqF2+79jEfqTfuw5LnwYh+2JnIwCzEdORgA0kelSDtrVaK5BSP
         KOgxNj7AR+rmGJyYDwTvlmFbGxKC+ZGxZx2XemqRoy8VInbQ7mwxBUGPGUHiCXVLKWML
         3kfn1TYBPfHkCWiusGih1K9P+MBrs5sRc12qz12PMqbM36//ESiJFW/kdCWft81nUAW9
         mQ+SFonRibbS6en/n/HOEIOQB7jz2uUYageTHcNReA/WMJUZJtvMkZPVS2+VKYE868lh
         5lbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i7si1077298wrs.1.2019.10.01.13.18.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 01 Oct 2019 13:18:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iFObe-0004Og-KL; Tue, 01 Oct 2019 22:18:46 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 328C41C03AB;
	Tue,  1 Oct 2019 22:18:46 +0200 (CEST)
Date: Tue, 01 Oct 2019 20:18:45 -0000
From: "tip-bot2 for Nick Desaulniers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/boot] x86/realmode: Explicitly set entry point via ENTRY in
 linker script
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Borislav Petkov <bp@alien8.de>,
 Peter Smith <Peter.Smith@arm.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Borislav Petkov <bp@suse.de>, "H. Peter Anvin" <hpa@zytor.com>,
 clang-built-linux@googlegroups.com, grimar@accesssoftek.com,
 Ingo Molnar <mingo@redhat.com>, maskray@google.com, ruiu@google.com,
 Thomas Gleixner <tglx@linutronix.de>, "x86-ml" <x86@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-kernel@vger.kernel.org
In-Reply-To: <20190925180908.54260-1-ndesaulniers@google.com>
References: <20190925180908.54260-1-ndesaulniers@google.com>
MIME-Version: 1.0
Message-ID: <156996112595.9978.10016104223665574360.tip-bot2@tip-bot2>
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

The following commit has been merged into the x86/boot branch of tip:

Commit-ID:     6a181e333954a26f46596b36f82abd14743570fd
Gitweb:        https://git.kernel.org/tip/6a181e333954a26f46596b36f82abd14743570fd
Author:        Nick Desaulniers <ndesaulniers@google.com>
AuthorDate:    Wed, 25 Sep 2019 11:09:06 -07:00
Committer:     Borislav Petkov <bp@suse.de>
CommitterDate: Tue, 01 Oct 2019 22:13:17 +02:00

x86/realmode: Explicitly set entry point via ENTRY in linker script

Linking with ld.lld via

$ make LD=ld.lld

produces the warning:

  ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000

Linking with ld.bfd shows the default entry is 0x1000:

$ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
  Entry point address:               0x1000

While ld.lld is being pedantic, just set the entry point explicitly,
instead of depending on the implicit default. The symbol pa_text_start
refers to the start of the .text section, which may not be at 0x1000 if
the preceding sections listed in arch/x86/realmode/rm/realmode.lds.S
were large enough. This matches behavior in arch/x86/boot/setup.ld.

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Borislav Petkov <bp@alien8.de>
Suggested-by: Peter Smith <Peter.Smith@arm.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: clang-built-linux@googlegroups.com
Cc: grimar@accesssoftek.com
Cc: Ingo Molnar <mingo@redhat.com>
Cc: maskray@google.com
Cc: ruiu@google.com
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: x86-ml <x86@kernel.org>
Link: https://lkml.kernel.org/r/20190925180908.54260-1-ndesaulniers@google.com
Link: https://github.com/ClangBuiltLinux/linux/issues/216
---
 arch/x86/realmode/rm/realmode.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
index 3bb9808..64d135d 100644
--- a/arch/x86/realmode/rm/realmode.lds.S
+++ b/arch/x86/realmode/rm/realmode.lds.S
@@ -11,6 +11,7 @@
 
 OUTPUT_FORMAT("elf32-i386")
 OUTPUT_ARCH(i386)
+ENTRY(pa_text_start)
 
 SECTIONS
 {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156996112595.9978.10016104223665574360.tip-bot2%40tip-bot2.
