Return-Path: <clang-built-linux+bncBCSPV64IYUKBB2E5RLXAKGQE2CPLUEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f61.google.com (mail-wr1-f61.google.com [209.85.221.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB4DF11E2
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 10:14:17 +0100 (CET)
Received: by mail-wr1-f61.google.com with SMTP id y3sf6864787wrm.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 01:14:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573031656; cv=pass;
        d=google.com; s=arc-20160816;
        b=HeO7m9qK8E+7CgMO7tHcP3cIeVeEUy5wcuM5UfjqdsoWh76gaFgoIs0l5RrKYe7/OM
         uvLV/mRGzj6e9+4tKcACe6/VY+zZX7Vlj4ZI7AGeEFKwrMp70GhWXBAq1xYdLlIkBUll
         wbiojRbc4dAy87uOXRT0dxsjrzaaso79Rk0p3M0jX/fJp6mURJFRk2VIdE4eCyuNjGRN
         NhC+ltN/eEeMc0x0LEv6CsxXMXpqRWd9w9K+q4JwYY/GFtJq6iCdHk9dTxkMHLVAljNp
         locckmIxUPjF+vHiN1APH3F1ltysh13aaVXNo9mxd2cxdN9oK+j8Ro591q035VZD7WUX
         yYdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=LixoQ9JyxaFbLL82pgWe2nHYLf4Fn14xqjARgu3BpmM=;
        b=DxJCb7vpUERnHuXU/LaD1VYHdYyK8MqK4QU2+Fp5MIGnBclhNCmlgXDe5/QrnywZBs
         isAZgwFCm3lEjTLjHNYCmAnzf2XdK12U76rvi8pSLa2oHqBkSCBXfaO1SlusWrwtw0C9
         rETQyrjmWBFiuWekpmPhYLjQ+9ws1dIUy18wi7tMV2BkLtylgfbb8RyhYCCBVd/BaNeo
         X+yxJ/TaqKxEA3qbyygy/tmnsA7/Qnno88tc+dxFGpD2Z2hpcHyELBD0FfvWS0KMKkfu
         XKdUo3D/5D7jN1yNtFGWYoMPnJ9LxtPthz4RSWcZBOHWlNqAew3RO3nK3RduNPQYIqBt
         NCpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=PGPKVKzC;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LixoQ9JyxaFbLL82pgWe2nHYLf4Fn14xqjARgu3BpmM=;
        b=M3nHGW2Cj/XuKrxuhU3sJ2gJ7ZfA7i7dpQbdRuV0ebmjJYRLpRqreEh18zvo8ihAt3
         xQ6plOIkgQSsq+tGq5Wju9i1gNu25L/GBHX7A+3COV7Ma4gGbAyCm15Toy7//fKWYaCB
         bCR43Osvbe/RKBE4RHWVSysY2v5xX37anzSeBdBHwV8mle/tuAwjKPJJEzihpgcHHxiL
         ycjEWPF4k7eboWelRaEMULEQpVlWDg0J1YB8u2/bD+gzjp6NjnAdWlAuYpDsG1v6fOTl
         sqxBgm6kKQ/kZBB/yG3U33e55hQiQzfxzHvAXdyAiglSOawZrBQRwkRuiTn8MylwUoUV
         2jww==
X-Gm-Message-State: APjAAAXSbwRFriQF1AdKXGxVSXaj6TXWrdoLf+4NbUXFrDGRCdhMTPGM
	KAYqg5rM+r/clnpkmrw2XfQ=
X-Google-Smtp-Source: APXvYqxACw19C01u6635ckwuC/aXs+PKPtOIzjOBGNSE+ugPJtno0TFA5Xl9VkTPsUAx4Sctj0EpAg==
X-Received: by 2002:a1c:814b:: with SMTP id c72mr1496477wmd.167.1573031656765;
        Wed, 06 Nov 2019 01:14:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9125:: with SMTP id j34ls952013wrj.2.gmail; Wed, 06 Nov
 2019 01:14:16 -0800 (PST)
X-Received: by 2002:adf:dc44:: with SMTP id m4mr1705348wrj.203.1573031656290;
        Wed, 06 Nov 2019 01:14:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573031656; cv=none;
        d=google.com; s=arc-20160816;
        b=cV/YRwDTq+u6SSLIY63TEC7I9rV74mgNyzVFVri2ve1JBrebXiRvC1j/ADav2HOWHZ
         fMCp0GzaHHR8Bzk43oOr9O2m3KMaKq59JjDRzzpnYEuUE4XPqTjIXGc2zbc+mbDpkfL4
         SA8dPmPJ2wOLVorVJIoCQkrEy1DUkF1GZd2iokGHCDDOGhNSBDIuJ5QNBWukrR0jnZiD
         7m1LYmfCncoPFU9XWPLhnq1NYZluaZmeVEyXkcA4n3QX1Xt4nm3c6gZ4McaZCeCx2QOV
         86GsBNTIYvNE7cZA3TrFe5PO52u2eeavGBMARMoHklNDWhGYxYP1/LdpVpfkt01uvD42
         1Zwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=TOdQALz0m5WieFGaUz1ns1b04RuCs9AC7LJ76ZAlU8g=;
        b=S5Dcj22/5kaS5JgIDDapETiqt77HkB4SioDp+/gppYDNG0+du1fiFrhcr69LCLk2uh
         4OtAtk6aoSBRx321j+ZoqL/qLy6hGdiFVMHtY200X4kQHuqMoJEIIzvE2YaOZO61aq3W
         pHUdV/FSFhx80NrsCF5Otxdq19CBjgG7Or7wjzCQboiC+WHv+dNO711XQC8sNkiHR8+m
         pe1HWuzaG6dGFUf/bfjhQSjALZq/BysMfPifK5im1xfyhhA3+vLcUbsLH2QLRM0ueDou
         Bs967aQ9K91difTKQqisTT3aX0rTKx0/G3FdBrEKxHue3nNlxQ5jeExmD6echc+1+Th+
         UALQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=PGPKVKzC;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id w6si174296wmk.3.2019.11.06.01.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 01:14:16 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:52522)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iSHNB-0003vt-DG; Wed, 06 Nov 2019 09:13:05 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iSHN5-0003wB-1z; Wed, 06 Nov 2019 09:12:59 +0000
Date: Wed, 6 Nov 2019 09:12:59 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dmitry Safonov <dima@arista.com>
Cc: linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
	Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 05/50] arm: Add loglvl to unwind_backtrace()
Message-ID: <20191106091258.GS25745@shell.armlinux.org.uk>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-6-dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106030542.868541-6-dima@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=PGPKVKzC;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Wed, Nov 06, 2019 at 03:04:56AM +0000, Dmitry Safonov wrote:
> Currently, the log-level of show_stack() depends on a platform
> realization. It creates situations where the headers are printed with
> lower log level or higher than the stacktrace (depending on
> a platform or user).
> 
> Furthermore, it forces the logic decision from user to an architecture
> side. In result, some users as sysrq/kdb/etc are doing tricks with
> temporary rising console_loglevel while printing their messages.
> And in result it not only may print unwanted messages from other CPUs,
> but also omit printing at all in the unlucky case where the printk()
> was deferred.
> 
> Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
> an easier approach than introducing more printk buffers.
> Also, it will consolidate printings with headers.
> 
> Add log level argument to unwind_backtrace() as a preparation for
> introducing show_stack_loglvl().
> 
> As a good side-effect arm_syscall() is now printing errors with the same
> log level as the backtrace.
> 
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: clang-built-linux@googlegroups.com
> [1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
> Signed-off-by: Dmitry Safonov <dima@arista.com>
> ---
>  arch/arm/include/asm/unwind.h | 3 ++-
>  arch/arm/kernel/traps.c       | 6 +++---
>  arch/arm/kernel/unwind.c      | 7 ++++---
>  3 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/include/asm/unwind.h b/arch/arm/include/asm/unwind.h
> index 6e282c33126b..0f8a3439902d 100644
> --- a/arch/arm/include/asm/unwind.h
> +++ b/arch/arm/include/asm/unwind.h
> @@ -36,7 +36,8 @@ extern struct unwind_table *unwind_table_add(unsigned long start,
>  					     unsigned long text_addr,
>  					     unsigned long text_size);
>  extern void unwind_table_del(struct unwind_table *tab);
> -extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk);
> +extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
> +			     const char *loglvl);
>  
>  #endif	/* !__ASSEMBLY__ */
>  
> diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
> index 7c3f32b26585..69e35462c9e9 100644
> --- a/arch/arm/kernel/traps.c
> +++ b/arch/arm/kernel/traps.c
> @@ -202,7 +202,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
>  #ifdef CONFIG_ARM_UNWIND
>  static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>  {
> -	unwind_backtrace(regs, tsk);
> +	unwind_backtrace(regs, tsk, KERN_DEBUG);

Why demote this to debug level?  This is used as part of the kernel
panic message, surely we don't want this at debug level?  What about
the non-unwind version?

>  }
>  #else
>  static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
> @@ -660,10 +660,10 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
>  	if (user_debug & UDBG_SYSCALL) {
>  		pr_err("[%d] %s: arm syscall %d\n",
>  		       task_pid_nr(current), current->comm, no);
> -		dump_instr("", regs);
> +		dump_instr(KERN_ERR, regs);
>  		if (user_mode(regs)) {
>  			__show_regs(regs);
> -			c_backtrace(frame_pointer(regs), processor_mode(regs), NULL);
> +			c_backtrace(frame_pointer(regs), processor_mode(regs), KERN_ERR);
>  		}
>  	}
>  #endif
> diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
> index 0a65005e10f0..caaae1b6f721 100644
> --- a/arch/arm/kernel/unwind.c
> +++ b/arch/arm/kernel/unwind.c
> @@ -455,11 +455,12 @@ int unwind_frame(struct stackframe *frame)
>  	return URC_OK;
>  }
>  
> -void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
> +void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
> +		      const char *loglvl)
>  {
>  	struct stackframe frame;
>  
> -	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
> +	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);

Clearly, this isn't supposed to be part of the normal backtrace output...

Overall impression at this point is really not good.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106091258.GS25745%40shell.armlinux.org.uk.
