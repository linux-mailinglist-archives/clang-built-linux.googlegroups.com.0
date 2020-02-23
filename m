Return-Path: <clang-built-linux+bncBCIO53XE7YHBB4FIZPZAKGQEYD3KFZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BD31699D6
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 20:37:22 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id c24sf13320902ila.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 11:37:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582486640; cv=pass;
        d=google.com; s=arc-20160816;
        b=MRfgO60mYqCwlUfh7yKIgXPhWIFQ8XHK+D454I9RZU8dBrAS0M6wRZtY8mia8kBEv5
         QaXxG9ut7kKDAAJyrwLx4E2IGJlrNh8PZsD6Z3Dp1OD0bW4If8LvRkuZw0rpj/qUCQ2y
         nZRN+vhxPTZrOWZqJMnLOJxiBn2aalt0NB11QKfENVZ/BZHQDaLIu0ohJxStjoek2KnP
         0YMuk1PUwNh11EiL2xCae1ZwodCzofBvrj3p7FlbX6g1y3S2qj+zakMomacUEL9ik9jv
         Zvh6pK+YiwrY3Dkxie8uzw4+tV/52EmDgKK2mbv1UGOir0i70BjBx3i8I1T67TRUOL7b
         GEvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vY7Od9mOjUbftIu408HlSeKwCB3R9mPMIyq/dh3HIVM=;
        b=d8jbKKxSWCD/OOJQu2jY5/v90qfvB3DPtu2MuEVTFVzI0kOtnklwVCC2YrTSQNEChw
         C2xGjkogBXdM4r4NVPFgtGdpt/2O6YhpMP6bkIWErqeRRJkRZaCV64WvewifFEe+UuM6
         jdlz8DJhuuporLYcJX3QLKrNHQRIHa1gqSlu4ESFnhvSnG7seecAfqGYA+EWox43wCXT
         C75Xnao61dz/CSOeU3cSL7/l/kqNu1tLlIXl7rqEooi9Db899qYtsWvTne2sLYUnfsxk
         tW7LyCXXCGhGM3/+8cr2Ue7cMuuKVdmA26ylDU+1jMxcxX1k1ZzkvZ5XgDZPR3tBXKsD
         AYSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vY7Od9mOjUbftIu408HlSeKwCB3R9mPMIyq/dh3HIVM=;
        b=cjDcFZHAq+Ep25yW28SQoI8Ky17reFQ2hJfsRtFftMKDt8/LePvVWxzvJaRXncSmVv
         XpOjP4K/BWLlJmgxJTIRu6M3adNMXqL3BUz5NLh4k4mqtfLKMnc24zfGjLB0KaKerVls
         Ys3G753UBTxp5IaIzjPjFMH43NWEKY9hELH7kmVXTFWgd8DbljYrnC1mOFG1Ax7bUFA1
         6jujmuFHLna5H7sP0RYJSCGYDU7jM/OQE388PJQzAzcb2FB/9MexuCiaRcrQsDQGTu3P
         jL2tkCgURJjrKn4YNA3ijhziyFjzC7IKUUmiPYizLrGwv7Oue5C8MEPZn2/QkMj5jISf
         f6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vY7Od9mOjUbftIu408HlSeKwCB3R9mPMIyq/dh3HIVM=;
        b=cUmb4I8YLN16yMh8jmL6iUwqroTVBho4RRecEeI+daRg3hUMbc/HzYVIZrltrvfqX1
         /datcP+8dM7D9XKAa5ek308aVmMHzEKxdKJauNAPAzK/txmynRHSf01Qn4D3Gtb8Fc6X
         QKW9M054QVZp8NonUsDYLbbOixNjeL2/wobcVNlWCFf/wLtf/tkxin1oxcCfBP225Sbs
         Z+YtGNgk1uKe24C41xSCpCgebeYE9Deekf8K5NtUC6OKYeOgu5OMWiR7Xg0GpGladnOc
         5CrAQK9YFgc3F+kFAD2O7500wB4BCuxR4SB0sNnDar8Vnr5CQjHwiFcYlE31Zr0lbaYZ
         MCaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdWuQ7dHa8lrc06dJxbZ8bW5u3qH89KJPFELrqcNXnrs14S5QV
	KIxiFpb3dYXV+9+H6sN00/M=
X-Google-Smtp-Source: APXvYqyCviw23kcQZtcvoYtg2P2NJJhhdQMcn7Uo+e90uA/CaUGbwXjsNo5+Hz+tfFgfgqrrey9NMQ==
X-Received: by 2002:a05:6602:2113:: with SMTP id x19mr47844587iox.227.1582486640354;
        Sun, 23 Feb 2020 11:37:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:39c5:: with SMTP id h66ls1520735ilf.11.gmail; Sun, 23
 Feb 2020 11:37:19 -0800 (PST)
X-Received: by 2002:a92:81d9:: with SMTP id q86mr51491241ilk.67.1582486639897;
        Sun, 23 Feb 2020 11:37:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582486639; cv=none;
        d=google.com; s=arc-20160816;
        b=P2Fmj3IrXBM/h4UoLHkV0u0BPLexvtErStl8nR0X1j6OOcKto5E4a0Umv9TC3m1cVh
         sPLEn88tF47HZg/kAgksxJcMJu9Z3Rvq0z8+9Kl2dzb21m4VymnZQNe/Y4zQHvy3Vhqy
         x1iQrL3LyBVXly0y6f1h/9meiaQotzJSER1WWG1BywKX5m6lcCL26XSutI9ewPMAwObW
         E/TGbTfk9Vv01ABLSBTKs0rERIPFY+i86fWnjg4Alq/DxGeZ0FETaPnWekdNX2MlK7Tj
         iab0LfmwTRZK6r6NBL+01RJ3gWrCvVSVz02wZAI2Qh1+gE1wEWQArceUOWgBWUQBOSjm
         7ofQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=d+QmnLrRwcCe4goxaquBsikLpsyp4quOOJ9FJHZsvts=;
        b=b1/iXVX4JKZmxQEktkvkUiKaDSViry8/pNDbCuIIEmulXcE3VuyIQRQHp47kLy6yEl
         UbfvpNfGNl5npbt86/yS+w/jrSdH/gVVOUDIhGmQHFOe6gEQKnLx3lEjQMC67SqKVi8/
         v1dhOrBtzmDh/wYBQKj+CEeEwmgGMBDR1sn5kssCWKQYXEqHIE7lYCjzCERnK9TrNzHK
         QharcRoaGYQKyHeSvbCeSWSAYmkrvuLaLoF1nn8eOVuAUxw36WtCd+8FSroUZcVnsscQ
         bx2ua5QB1A3GE1AZLmqaLf/bfrWShDvqYjmq8bDyuWem0wx62LBuqYS9hGjtnfjmjb6Q
         Y/wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com. [209.85.219.67])
        by gmr-mx.google.com with ESMTPS id h4si791084ilf.3.2020.02.23.11.37.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 11:37:19 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) client-ip=209.85.219.67;
Received: by mail-qv1-f67.google.com with SMTP id ci20so1936896qvb.4
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 11:37:19 -0800 (PST)
X-Received: by 2002:ad4:5144:: with SMTP id g4mr41169931qvq.179.1582486639306;
        Sun, 23 Feb 2020 11:37:19 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 204sm4780976qkg.74.2020.02.23.11.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2020 11:37:18 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: [PATCH 2/2] arch/x86: Drop unneeded linker script discard of .eh_frame
Date: Sun, 23 Feb 2020 14:37:15 -0500
Message-Id: <20200223193715.83729-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200222235709.GA3786197@rani.riverdale.lan>
References: <20200222235709.GA3786197@rani.riverdale.lan>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

Now that we don't generate .eh_frame sections for the files in setup.elf
and realmode.elf, the linker scripts don't need the /DISCARD/ any more.

Also remove the one in the main kernel linker script, since there are no
.eh_frame sections already.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/setup.ld              | 1 -
 arch/x86/kernel/vmlinux.lds.S       | 3 ---
 arch/x86/realmode/rm/realmode.lds.S | 1 -
 3 files changed, 5 deletions(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 3da1c37c6dd5..24c95522f231 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -52,7 +52,6 @@ SECTIONS
 	_end = .;
 
 	/DISCARD/	: {
-		*(.eh_frame)
 		*(.note*)
 	}
 
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index e3296aa028fe..54f7b9f46446 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -412,9 +412,6 @@ SECTIONS
 	DWARF_DEBUG
 
 	DISCARDS
-	/DISCARD/ : {
-		*(.eh_frame)
-	}
 }
 
 
diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
index 64d135d1ee63..63aa51875ba0 100644
--- a/arch/x86/realmode/rm/realmode.lds.S
+++ b/arch/x86/realmode/rm/realmode.lds.S
@@ -71,7 +71,6 @@ SECTIONS
 	/DISCARD/ : {
 		*(.note*)
 		*(.debug*)
-		*(.eh_frame*)
 	}
 
 #include "pasyms.h"
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200223193715.83729-3-nivedita%40alum.mit.edu.
