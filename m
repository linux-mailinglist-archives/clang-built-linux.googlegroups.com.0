Return-Path: <clang-built-linux+bncBAABB74W2LXQKGQEM3DUV7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f55.google.com (mail-ed1-f55.google.com [209.85.208.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C221B11F0AE
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Dec 2019 08:13:03 +0100 (CET)
Received: by mail-ed1-f55.google.com with SMTP id g20sf630977edt.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 23:13:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576307583; cv=pass;
        d=google.com; s=arc-20160816;
        b=BpD+Czi0vLbGJTm71KUphmYaG4ZkwVNo4FuVi0y8nocxjfGc68nl6xatGYrEUahRtz
         t31UnjBP1g0exAC7m5UpgPpsvEo3pPuHolY884THHwsPLVZnjSmJUyfpV4DLYrCPGXST
         BdqySKkEtKimc0B8JhvvLWN1+s9yIDCzYE1jbJN5Ur8KfYa+wIr1wz7VgL1GCIMSJj/t
         EK+OFrAUCwQ/NunFB2exdfQ5PJVQvLJVMk3uduLQwNbQo0lSTwuJNBrKlfNGMh1ootwS
         4DgR0s+ZR496OovuPCG7Zvve+tcAoM30z5kwA3gZuADPbl2os7EJqt6gbgblORodghgq
         qqGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=5dIS6AvBNxgcns2TCPwFMZncScHbnGNJJxwG9IoxguM=;
        b=mwdtHc3zmson0FEuKdtrDNJ85pcnIxRqGZw8hGxHkYvqlxbfJlXzs7PPSqCc5wtraG
         FXH5//NgPseKOnDvOTby5bwTD7eFa+GvTKxJkH3aIEvP3E2DJ/3PrpgTTmusLz3k7vtl
         7dXpwGiiwwiulo4j33+zYDqVkWVzbuOytFvZ+H2NextROvLVKhUxbTWSclioYgIeqbmU
         7k3PjDnv79sxDKlDAdOlymfLwvc0te320fxylCxkSC0pwqjKnpteCCrur/vqa/aTmGBW
         dNLiGxgzL4Kuf6YZRyUHHvhDW3C8Bvg5dC6twmC5wsmQAB8PXbPZcw8yom5Tm5QtGWyr
         bzgA==
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
        bh=5dIS6AvBNxgcns2TCPwFMZncScHbnGNJJxwG9IoxguM=;
        b=n2egFz9pj3FLyxyaO2fc7wQ+ZkLYvVlrsOZ7cG2z6O2xdrkO5uhmHNuApZskBJTouP
         x0PuLmtDmgDe8UfhYA+XlL08wU0muTEUoSTXjmcd4cDMp00pw3OkTKW2owdIOPUbpAdV
         acE+gVRsaplzpQsAoz5kr7zJx9CwyrZgJnAyFy+mMKq+UPLmtpoP2EJSiOMayyGMH+WO
         4EvoEHOGaGhLK8cvad0+yROvDdq/Qqrz4DalXJG0xyw41MCSA3o3E60VjbXUP9dkskhc
         g/S50/53RL1yqxWxy0R5PM3R4KeCzRW0Yi2bAR0OL8lw3kvKPLQuTKGSvLlHnt2H4ePo
         6lbQ==
X-Gm-Message-State: APjAAAUwOc1NeuKw2tgyjBNkROFBrH1yTN6WoMiKT1bE0pNT5msIzXRo
	tb4cS9ki1+Se4dq/1mezP6A=
X-Google-Smtp-Source: APXvYqzrAPS9qMfPvg0ts8BBUWSimVBw5MLDBFvaDOwLw3NO8H9IcbGL8+TdJ+pQ7bfCFLIKSaSWfQ==
X-Received: by 2002:aa7:da84:: with SMTP id q4mr20558042eds.152.1576307583507;
        Fri, 13 Dec 2019 23:13:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:3d0:: with SMTP id t16ls2664602edw.1.gmail; Fri, 13
 Dec 2019 23:13:03 -0800 (PST)
X-Received: by 2002:a50:fb96:: with SMTP id e22mr20178567edq.18.1576307582979;
        Fri, 13 Dec 2019 23:13:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576307582; cv=none;
        d=google.com; s=arc-20160816;
        b=lmKwdVb06Ske6+mSx76Jqcuo4hdbKpa6Cq1BWCSfZkpJlTJSU3pwBHrWo999FLIyv7
         i352AH6DCzCUlWWWjX33w2Ba+crtVxqACKoQyXibIPgnUWq7V0YQTNE0mxtOmKmI88k4
         6kgDDesJLAYeifgq/S4gON3oiBj43q9YVZoT6iMXONOUysaNkliCmxrYc+vMbZoZVobo
         CXM3zbebhmHyH8hxYpCRB8N6IdNEiBy6A3LBkjF3jHeoE2mm5VfYgjjhzOlIfZaljaAw
         xOr8a64bk1eOLOH2A5MRDOUZ85IJtvzwipOucklgfpnvERPQVBKTQP2nNdNkBWgsU90+
         rCuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=/WmoL/r2ZRJfAfYtH/niJm6RNQFodUirFhpaS505jow=;
        b=CSy943EKrldeTUSBn6Nbz4HsfFMGHwxqbnUUkZ5PLz2ojmJFoAvwBfbEzNkzTkggUX
         Leb+z8VkcI2SmHq8CjfvxZwIAfe3UnT05V/yw/dXPXmxDOCAohgefDYHEeg9x5Lvu/up
         ZMqx+Fd3uT09o8LIaAKCwJOR4ZJKyH7e4D27envKcJMXgiTCd7aR3gnNninkuj0IhUon
         V142BDHO68ddBdL5JG9IFtpX6q4PWIfaC+i7LVBx61UEy5HDlcUwkkvqQBYSTERNwbHx
         0Lgv2tXA/cd0k9zgwNqcMcuGEBG9fIEygh2sg9y0bl9AuNp4wd1vgmswNlmTE3pEVie8
         OtzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id n21si488585eja.0.2019.12.13.23.13.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 13 Dec 2019 23:13:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1ig1bm-0003Fj-M6; Sat, 14 Dec 2019 08:12:58 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 1D2691C047B;
	Sat, 14 Dec 2019 08:12:56 +0100 (CET)
Date: Sat, 14 Dec 2019 07:12:55 -0000
From: "tip-bot2 for Ilie Halip" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/boot] x86/boot: Discard .eh_frame sections
Cc: Borislav Petkov <bp@alien8.de>, Ilie Halip <ilie.halip@gmail.com>,
 Borislav Petkov <bp@suse.de>, Nick Desaulniers <ndesaulniers@google.com>,
 Andy Lutomirski <luto@kernel.org>, clang-built-linux@googlegroups.com,
 "H. Peter Anvin" <hpa@zytor.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, "x86-ml" <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20191126144545.19354-1-ilie.halip@gmail.com>
References: <20191126144545.19354-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Message-ID: <157630757591.30329.774656997098904968.tip-bot2@tip-bot2>
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

Commit-ID:     163159aad74d3763b350861b879b41e8f64121fc
Gitweb:        https://git.kernel.org/tip/163159aad74d3763b350861b879b41e8f64121fc
Author:        Ilie Halip <ilie.halip@gmail.com>
AuthorDate:    Tue, 26 Nov 2019 16:45:44 +02:00
Committer:     Borislav Petkov <bp@suse.de>
CommitterDate: Fri, 13 Dec 2019 11:45:59 +01:00

x86/boot: Discard .eh_frame sections

When using GCC as compiler and LLVM's lld as linker, linking setup.elf
fails:

   LD      arch/x86/boot/setup.elf
  ld.lld: error: init sections too big!

This happens because GCC generates .eh_frame sections for most of the
files in that directory, then ld.lld places the merged section before
__end_init, triggering an assert in the linker script.

Fix this by discarding the .eh_frame sections, as suggested by Boris.
The kernel proper linker script discards them too.

 [ bp: Going back in history, 64-bit kernel proper has been discarding
   .eh_frame since 2002:

    commit acca80acefe20420e69561cf55be64f16c34ea97
    Author: Andi Kleen <ak@muc.de>
    Date:   Tue Oct 29 23:54:35 2002 -0800

      [PATCH] x86-64 updates for 2.5.44

      ...

    - Remove the .eh_frame on linking. This saves several hundred KB in the
      bzImage
 ]

Suggested-by: Borislav Petkov <bp@alien8.de>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com
Cc: Andy Lutomirski <luto@kernel.org>
Cc: clang-built-linux@googlegroups.com
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: x86-ml <x86@kernel.org>
Link: https://lore.kernel.org/lkml/20191118175223.GM6363@zn.tnic/
Link: https://github.com/ClangBuiltLinux/linux/issues/760
Link: https://lkml.kernel.org/r/20191126144545.19354-1-ilie.halip@gmail.com
---
 arch/x86/boot/setup.ld | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 0149e41..3da1c37 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -51,7 +51,10 @@ SECTIONS
 	. = ALIGN(16);
 	_end = .;
 
-	/DISCARD/ : { *(.note*) }
+	/DISCARD/	: {
+		*(.eh_frame)
+		*(.note*)
+	}
 
 	/*
 	 * The ASSERT() sink to . is intentional, for binutils 2.14 compatibility:

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157630757591.30329.774656997098904968.tip-bot2%40tip-bot2.
