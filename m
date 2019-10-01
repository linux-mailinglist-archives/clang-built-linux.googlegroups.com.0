Return-Path: <clang-built-linux+bncBAABBWOYZTWAKGQEYTHEPPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f185.google.com (mail-lj1-f185.google.com [209.85.208.185])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F46C3194
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 12:37:14 +0200 (CEST)
Received: by mail-lj1-f185.google.com with SMTP id 205sf3944986ljf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 03:37:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569926233; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMGh5PqMGmUTHbNTIOlywrMOQApZl8lEznMXHCx7ZHBNHK6PptxslYaZt5ScXGAr49
         Cpn5gF8cGHdp6zH6QyRpWRE/NqZ1U2xbY5r/D8XdVmhOwa14VRRA0d/nVeDaFLLU38bU
         zRnqxMqdz1TPnPyEWogtIsSpIkO1Eq2PJ0UNvck0hASmkYR9G5aRD2agZAfEoZHOZSB7
         5WxF0eGsQtsk686dibuwhK89qxOHCjG9u7RmC8Jm65R9V1qNPSUAG+eDVGrzSIUTzD3P
         TRQBGlVYgiFIdble5+JSqdRAxos2cFD7VAhWtj1eX9SwXc+Vq/z/K6w4t8XXVFHX8E2G
         wjVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=SsSTTbqxXh/Rkhyy18+G1qNr0Z4W1cy9z2M1Z+iju9w=;
        b=Gark8mE40Yz6rZ3/CPVcJR/wq9V+de0svJy75NRd03yXRngocVuHMD3KCSx5Oa/wAH
         gWBS9GlkCos/z8WvtApqpIjaeUzX5jOEa96kjTgH2bmkwTIlYNJKK0OQg09QZCnk/pet
         8AP00Avky0TbpOdR9PNaVEqct8F2HmJJIB3RVeW6lFa2EQDqQV0W2MDz0g1U+3hu47jG
         XmJoscwn90mugO6wE8/ChTUMV07G4eB0z2w2Z2AJ7o6svm2RP0Wh5Obr8nWJXKnw2uj9
         EI9dRALxsZdRohOZPUQVLPe0pnCrF3G4cTyV/K3pzJX0nR0sYyUJRhfUqlyD240Y3z0x
         WBew==
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
        bh=SsSTTbqxXh/Rkhyy18+G1qNr0Z4W1cy9z2M1Z+iju9w=;
        b=rUCVnRwhgzvS/Ih8/ZF0khylNKWrjZl1oFfNY8nQt+ext1657AWS1IEETJL4VimDF8
         aNnWJUDfN6wmnEIsbwOaOofRbJtjZrhd4rAClJyCOk2XDNDS849VW6eFd6US5n7FQrKF
         +SOroXXOPAj6NsnEKs5aBP6f18Eoon1DHzP4VktQj5P5YOyPpuNYXLnCPL3gggnciab5
         YMVxEuqlJOOx4ZW7GWwA1OXh8G2Q1zAM5GgdsA95wB0s0jBM3nh5rfy+V5sc28oK46+T
         co2mzcX/iAvVKx4acUL3Un989m+ikrH81tZxrq3CSShshtXeXFIreNuLd8rZhvoQ6qG1
         stlw==
X-Gm-Message-State: APjAAAUXqR5avF1VFVY8ummGFBu7Uca7nijAKWO63b9db8djQVtuVt5F
	WcAhna74X79AQFBd1hVvkTo=
X-Google-Smtp-Source: APXvYqzW7DSgr7lINxDGX2tCEuwH5GVOoYXRx6XPi3uXgrLGpmcCIGIpFnP8EimKE7wrRHjMfX/HcQ==
X-Received: by 2002:a2e:85d2:: with SMTP id h18mr14504319ljj.18.1569926233745;
        Tue, 01 Oct 2019 03:37:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9bd0:: with SMTP id w16ls1947381ljj.13.gmail; Tue, 01
 Oct 2019 03:37:13 -0700 (PDT)
X-Received: by 2002:a05:651c:22a:: with SMTP id z10mr15124596ljn.103.1569926233418;
        Tue, 01 Oct 2019 03:37:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569926233; cv=none;
        d=google.com; s=arc-20160816;
        b=AtvHEX/liuxAHB0EjMDZcnGjIQmnwlHJ0F4baI2k1xKMsFHbAPWwCfaoCdEzBDB6uS
         Wc0MojFK2a7k4SRaZPicSjSO0qWDSB6+jtDatwcD1xVO1Tu4DblKgmDJGEh3dBKM5FgO
         kNyZtnVokETkH+Y2HLWvrhe2lu6BQJYoMeEmF4it4oTrQmmPKvaVhmlUbmnLGFWGIGKU
         OH9+D0scHmqLVcUw9igiJ5fckM+xwEbpmQwfstfvnjhTIFYt90hsffj3XPFedKSew7a6
         7jgC2rTplutJzKnOaT3dA2TEpjCHvciyWxXLkbua4LHSZV9lWk3D6NL9KMfbelce7zfV
         a2LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=aDLnpwJqNZJs23mw/aLamr6ZX+tcSufg6rpe9IwMe0E=;
        b=DmS/tiZ6HXaVVdzZXrad/dKlN7V78xDVZ0BwDkK4EO32QUqg3c2gYuXCuv1mytuomP
         TybZc520FtZ30LyN60gj5dJtWAOjthSnXlMp/ZiYpU2XPPbTQYFEKq/U5vCTonGjaYQP
         ZhwsHAw8ddx6puDlh/H5kyQznU4Xe1QUVNFKjYuahNTkX5ljUiaPmfyGwisBRrLou4mV
         JEx0RLWAiX++EiKa6Ct9OcGAd7JqjcPGilkVlL6+RlyZcISQfz2705FZ4bkJtZzS3h/n
         W4HVgQ55Vy0FWNjKkXiJ+m/bG1y67GpU8vj53NR8sDO3aGZYYY/mhFXcjiegdaMkhu6p
         a+9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d3si798933lfq.1.2019.10.01.03.37.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 01 Oct 2019 03:37:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iFFWe-00088X-QK; Tue, 01 Oct 2019 12:37:00 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 4AAE01C03AB;
	Tue,  1 Oct 2019 12:37:00 +0200 (CEST)
Date: Tue, 01 Oct 2019 10:37:00 -0000
From: "tip-bot2 for Nick Desaulniers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/boot] x86/realmode: Explicitly set entry point via ENTRY in
 linker script
Cc: Borislav Petkov <bp@alien8.de>, Peter Smith <Peter.Smith@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@suse.de>,
 "H. Peter Anvin" <hpa@zytor.com>, clang-built-linux@googlegroups.com,
 grimar@accesssoftek.com, Ingo Molnar <mingo@redhat.com>, maskray@google.com,
 ruiu@google.com, Thomas Gleixner <tglx@linutronix.de>,
 "x86-ml" <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20190925180908.54260-1-ndesaulniers@google.com>
References: <20190925180908.54260-1-ndesaulniers@google.com>
MIME-Version: 1.0
Message-ID: <156992622015.9978.3158653614859964805.tip-bot2@tip-bot2>
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

Commit-ID:     3f5f909bc331a7ff9120b11c8e0e320d60b01c89
Gitweb:        https://git.kernel.org/tip/3f5f909bc331a7ff9120b11c8e0e320d60b01c89
Author:        Nick Desaulniers <ndesaulniers@google.com>
AuthorDate:    Wed, 25 Sep 2019 11:09:06 -07:00
Committer:     Borislav Petkov <bp@suse.de>
CommitterDate: Tue, 01 Oct 2019 12:17:58 +02:00

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156992622015.9978.3158653614859964805.tip-bot2%40tip-bot2.
