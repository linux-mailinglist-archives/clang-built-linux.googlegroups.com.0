Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB4ENQGAAMGQEP7MAV6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA7D2F61EB
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 14:28:17 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id m18sf1948131lfa.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 05:28:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610630897; cv=pass;
        d=google.com; s=arc-20160816;
        b=KpmsKV7izlhtRYYXw38nHzMVJNoGI9M1lkCNp1YflhbaleeP1LVUDPet8PwRqV1QPv
         UOIImsmF9jzAH+TK1vMK2RCUNGzPHTpw0iGLo28FpTj5NieadtYfXJR8EFiaDeYVMES5
         22pN4DQ0Wgfvmnw8kLPLFM0NT13Gut65UtIWxwb0pa7aL1c7aakgwW9tqnFBBYB587jm
         ma6ayqm+N3Yv+ycMchNYgYBONHIrmJ1zJjBihe3Em7Amp10KFCzXhAPnD3hEzsBO+5lz
         2CV+RZevF+rMxBcskY8kS4gX66hVUoJWUdxtquuK//eu1dByiKLZl3ZgGKvQNe9jNt2u
         dQqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AJCz+3BtgWrIx1onbcnhWIB2S/CxGI5XqXfFshJ31gw=;
        b=xfamovU0toBuk06H6FgZ1iG3PPSMtX1hGJNO4eLZO0ph3bhlFH9HdONLiij3ZTdBU7
         iKxQSwidvqVa2E2vHdqDxXi42LdFxfK23zdT50RHzU/S2oxNdoW9VjrW9OqakQuXGATa
         JA+ynMBoDYz+Yo4lBvovc0bAl6nzUxz0LJbbP9bNtEdh9eVnYYxGsITzX2zF7MJLuuRH
         NTxEz56WOBtFYE5PdiTEw1RtgKbztbK2AA0szw9+FP9L9LUYabgtdPw/K9vTd/ZPzMkF
         I0+4KFwLez+HSYzz3udIORms8lEaSSfK7WkY/MCXRb9zM5HXDY/dXbZOPMK07aboHenO
         2woA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=F4XklBpu;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AJCz+3BtgWrIx1onbcnhWIB2S/CxGI5XqXfFshJ31gw=;
        b=VbhGyHEVxkpDGphJ86y/0+D7X1Cx8FdWIc7JtoPkNEx4q+++l5bDJqUGaRZF+gwsga
         OyZfDUj/EF6iz4Q+fADV8H2jPJ3oI96gsxc1Uys8HysSztUVwdjWdDV7BQ+ddk7p7ZAG
         4ky9jeLOQ4Yv8q0QzqkZPl0eYtR79LsZsRNjKQRiSpsXWBtvta+eg+yrRspGWQWA2zEU
         a47q0qerSdRYnHgI/abdyBeEq+Pf/ht2m+F+ToRFtjUPckMT1BnE5/aFSfFD4I/EpY64
         RrMtW45f3/miEGe+bFr4le0XwiJCE/YOxBIXgdG1pv0xMg7WI1xYjJS8rF3ovdBhbAp/
         i8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AJCz+3BtgWrIx1onbcnhWIB2S/CxGI5XqXfFshJ31gw=;
        b=lzS0YoMQmLyjG1PMqoZiluVs11cRoYnVo3+Q/4v2X/a11LYwHVmZ9tvO8V09hChPNN
         lEG97Xa95yT2/uhcnE/HztMi+75XT+VBcrZXxW24oBNCVIqA8+mL8+7Pk2CE4kHznFPH
         9qvqqCRbupNp2g9Q4EdM618fxaNEKGaSmU5qLR/DESFQS9s6eunY3/NMf5d86vPjAv5R
         9lT/egOIHE1EsT7OSj3vo1htRKdUxAUXldDIrH1OfGyzGQiXEbOMBK+tOJyV1TMPZQbB
         WlDl9FuilBXMoFOYK6u4ajyVvw0k9on5f5VjppLqEhR9L44E2wb/piK7PlDJ0fE8wIIb
         u8ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oobjjApi3JRczX38OZ+oseN7FvjNFExSKK+C0ZYYebqOGCZqB
	zmrGcCgJDSeU/8XkomtOQL4=
X-Google-Smtp-Source: ABdhPJz65oCijbrhtJ1zhjva7ycnq6hnIhMJK9NmpuwmIFUU9k6UJPMpPMpjeYzbcqhm1k692RnZEA==
X-Received: by 2002:ac2:5d4f:: with SMTP id w15mr3213055lfd.321.1610630897087;
        Thu, 14 Jan 2021 05:28:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls113765lfu.3.gmail; Thu, 14
 Jan 2021 05:28:16 -0800 (PST)
X-Received: by 2002:a05:6512:2111:: with SMTP id q17mr3346551lfr.114.1610630896094;
        Thu, 14 Jan 2021 05:28:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610630896; cv=none;
        d=google.com; s=arc-20160816;
        b=xxIFC/jhFjKw07J2NYuKodhonqBOaYiJmeYlODZ7AuEAvnPhFg/BSI0FVu9yJaL+EZ
         FEmPtDGuGBIolD49/Gibt9ukFUVAlzuroLo/EG/MbbyL2aNKgD9rR3q92WBR7cYKzzv+
         ZrjqQY6Mla8RcaUCnXxb/8HWYYnigFYaVBbRHqb+Qufs6E0Vhh2JgCJKTCL1N6N1zHAf
         k43D7dQK+UtR8z086DFq8ydRjnw12efibb9FgdulOWJnsG5c8EOICLv2TDbdUHvwI5MI
         Te/OHovBM9PiUsxIxJmRvlE/JHnnRqa41qEsyNk22G8/Zy1Eqfc4GVDykiVqTqpkkiZ8
         uRiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gsx3hXRw+pWKKzqut1Ush7pyeSMmp2ZCnERRJ1prroQ=;
        b=h0qE5/sHTO8sum/zOMq7QpX4R2LgBVKuQtvyT8G7CpxzAikSHo6mY3zvjbTnQnEME7
         5RDjCqeNy/wp+83nEA+Rih8d36tPmvh61efvdwSfr4Yz26zbjNOGJ6nhySmpDt8x+hSJ
         uOAKw1cTpCTnCvpzcbLkz4ViyHpH+et2EbM2KaMmlBKXDkKNjYpPMB/z8rZV7Df5vDNs
         jIPpMjm18tYBPcw3ZEjEWjoETHqlPkz3LTtaQkIVmrCqDF8KNdrWudY0Z8fDsd2aTvSN
         hsZsIISf/WGcRXaT1uMPkBLjFpbwLtDWxEIMhmxhiUX1tf899ooyxT6v0SJrARB7ANp2
         9HGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=F4XklBpu;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id 7si226262lfp.13.2021.01.14.05.28.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 05:28:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f1aa9000d5c8ff8171504e8.dip0.t-ipconnect.de [IPv6:2003:ec:2f1a:a900:d5c:8ff8:1715:4e8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 1DA2F1EC04F3;
	Thu, 14 Jan 2021 14:28:15 +0100 (CET)
Date: Thu, 14 Jan 2021 14:28:09 +0100
From: Borislav Petkov <bp@alien8.de>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Mark Brown <broonie@kernel.org>, Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Fangrui Song <maskray@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joe Perches <joe@perches.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: [PATCH] x86/entry: Remove put_ret_addr_in_rdi THUNK macro argument
Message-ID: <20210114132809.GC12284@zn.tnic>
References: <20210112115421.GB13086@zn.tnic>
 <20210112194625.4181814-1-ndesaulniers@google.com>
 <20210112210154.GI4646@sirena.org.uk>
 <20210113165923.acvycpcu5tzksbbi@treble>
 <CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0+v=+9AyMFgNA@mail.gmail.com>
 <20210114103928.GB12284@zn.tnic>
 <YAAszZJ2GcIYZmB5@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YAAszZJ2GcIYZmB5@hirez.programming.kicks-ass.net>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=F4XklBpu;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Thu, Jan 14, 2021 at 12:36:45PM +0100, Peter Zijlstra wrote:
> And while looking, I suppose we can delete the put_ret_addr_in_rdi crud,
> but that's another patch.

---
From: Borislav Petkov <bp@suse.de>
Date: Thu, 14 Jan 2021 14:25:35 +0100
Subject: [PATCH] x86/entry: Remove put_ret_addr_in_rdi THUNK macro argument

That logic is unused since

  320100a5ffe5 ("x86/entry: Remove the TRACE_IRQS cruft")

Remove it.

Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
---
 arch/x86/entry/thunk_64.S | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/x86/entry/thunk_64.S b/arch/x86/entry/thunk_64.S
index c9a9fbf1655f..496b11ec469d 100644
--- a/arch/x86/entry/thunk_64.S
+++ b/arch/x86/entry/thunk_64.S
@@ -10,7 +10,7 @@
 #include <asm/export.h>
 
 	/* rdi:	arg1 ... normal C conventions. rax is saved/restored. */
-	.macro THUNK name, func, put_ret_addr_in_rdi=0
+	.macro THUNK name, func
 SYM_FUNC_START_NOALIGN(\name)
 	pushq %rbp
 	movq %rsp, %rbp
@@ -25,11 +25,6 @@ SYM_FUNC_START_NOALIGN(\name)
 	pushq %r10
 	pushq %r11
 
-	.if \put_ret_addr_in_rdi
-	/* 8(%rbp) is return addr on stack */
-	movq 8(%rbp), %rdi
-	.endif
-
 	call \func
 	jmp  __thunk_restore
 SYM_FUNC_END(\name)
-- 
2.29.2

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114132809.GC12284%40zn.tnic.
