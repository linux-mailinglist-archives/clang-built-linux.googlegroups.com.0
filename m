Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBUFMVDXAKGQEPYAGAAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F52F86D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:17:53 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id m36sf13065321ywh.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 18:17:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573525072; cv=pass;
        d=google.com; s=arc-20160816;
        b=0LH2QxadW11nbYrnbnF4jsJgfbps+pyBOSmZ8tihKAAPMGykTp0sUU1oSQT0JHA8Nh
         275ltVsSm0Q61sA+W5eU50FdtZ6rmT11cmWFz/6oeOwMAy7800SDSwTGWDMBXTDicrgp
         IKIA5NPgSCeDNLnFLWz0Ipp2GdD6QnSJL+fDRlQ8BOvQiDSBcR2mKvPeLZYtOQCcFVlI
         cwqMapnbB06CG0eyZj8sSNiHc1q5fwEeFbTGHPfvXW1nZ3erK8XcqKz9FJ2SJMPinXQM
         wHU8Ee8BLrA1X+JbF6el7ZeHVrmQXV+irTNDm/wKqN7Jiu2ZzbrvAIo7wG5yea2B/W0r
         XDjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Ax3bBOnJnr8zmSqPRb//FGmRUxefvHwOYVJUZYtuWyA=;
        b=0ELhwwkLR8bFSJgabTU796mxQy7GWBdp95XaLowNqUmU+/FIk549MubqG0eOX/VZNE
         FBTieJjxK/vQt471f03k7dtu+/whL9jBSrms7KUYie/BpVQ6ZPnJPmyxllJfRWENHmH7
         5zqpmXYccmPsTzbT3+4QEeARDNE7v4CKkcAd1DhjkipReHCJkjX68wHnhTndllDzGQZo
         Oz1R3FdbRzvoTbXD9ejtkuirPrFP8bQWMYbuaZEUY1WG8IgMTdyYEDHtGCxf9OIxJWs1
         63tsJQjyHxGNZ3GOsHUem7StffRHBvX5UUyrK4EERM1ymIavz+tg4s6v0m9YFswEk7fp
         nwJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vjlm6KDB;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ax3bBOnJnr8zmSqPRb//FGmRUxefvHwOYVJUZYtuWyA=;
        b=B5UeQCVNwrqhkIZSjROZzXG6Tsf9Ackqve0ZV6yEh1i9Rr4waUyY9T6pF8oXu56/Py
         cGv7RZuF+VJYr056ENZPb3tnLkcNC0F10vdGbrLatAajO+7xDCA5YP7oDp6CTxK0EZYI
         dNYusVN9wGNIGMgoaA9m3CgNjcbCG1WBQahJfErf2l40ER3zimz7+JAQBjbZ2baxRQo6
         O6c6L3iv2GBad6gkeWLFS3XTX7IUSWX/eCSPtikOB0WOLY71SpBw9iC3xwJph5PvZWiq
         Zv3HmXDDf8jeuXAUaMbUByYkN2VFVl6NchiIA0P7MPQbaDAbn3EC+23t5XWFVnNzmcS7
         0hHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ax3bBOnJnr8zmSqPRb//FGmRUxefvHwOYVJUZYtuWyA=;
        b=JyooIqb1okes4YepeQOh8ZYr3Je1c0mAF+xTid68nyCyP2QsM5Piaf6+36aoa6Dc00
         2Mn6C5Zw1tZ+qq8f+AtIs2BOTcQYSo1fDHjl7/OC4MQQqRAO13X7/0T9hEbRgMLaz7FW
         nXJETt8iBxDwla7KZvvgkQzf3ATgFQfCqpFb0Fq9FwNUv9wkBnCNxrDHIDnWG4/VvFAb
         3IYx3RAibReVKAABdyFG42u42wBy4/KDJGOqkTNgi7WFCvg8uD/M9qWv/xky5IPBs8VC
         xUiJH2cC1WdQJafUFEPB3f31QimfYwgKtd5keu4Us+vCYDhtHaYE1A36KqXKT4ToI13S
         HuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ax3bBOnJnr8zmSqPRb//FGmRUxefvHwOYVJUZYtuWyA=;
        b=b55taXKF0Bg1+aT9rEJkf4Ny/URUouau4Hqh0aUU4ZhdmKc83d17hd2s6543RPHjap
         hCYk29ZTtKKg5ZQVV2TnlNOcIs8lefuXViYLdvx7+S2srh+Gh3tEKVuMzQskPZNROqg1
         ZWaghDbHFgx9CQ2n6Gl6dD2IZ5AKsmsigc8CO7614RQzn+0ESOU2NxU9jiD/bSDLto/P
         hCnWMrJp9QxryP04LHPHB3wrhWMoDTM8z2vG1D9kZXM8QirUZrDemgtSV63UTxS87KNq
         wCP8xSuvkKeFL3bhju9JzccBd/8d4hMr+1D29Tx9HDQsw5sd+NNRZh+G9rMAa7Ts4BJv
         0yKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXINlrTEsoiubF5hx2pmAyL4Ds9AelhT7d6x/EuoeWqdZCS6x4B
	Ni9d8miKLzO6TYl8Hfo8Kxk=
X-Google-Smtp-Source: APXvYqxR2RaxcMuylVMfzDE7PFzncbEZ0/+/ujT/RsV1DmIssdn1nDNlxRH1n31macJQyJacF1pjwQ==
X-Received: by 2002:a81:4e02:: with SMTP id c2mr17512257ywb.441.1573525072695;
        Mon, 11 Nov 2019 18:17:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls200970ywc.14.gmail; Mon, 11 Nov
 2019 18:17:52 -0800 (PST)
X-Received: by 2002:a0d:d48f:: with SMTP id w137mr4171733ywd.178.1573525072216;
        Mon, 11 Nov 2019 18:17:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573525072; cv=none;
        d=google.com; s=arc-20160816;
        b=VmdoKcocq/I0RQieIjtozA0e1EczwEyYXGEgwYCxMYZ4lgyrGiI1Zgb2jBiN6pgZCi
         70pDLwokR7SzvHbjL2jfUOdxnmqRDtfVT4TamEPkhZMNRcGoPUmSfXrNIvU84Qdwvsbp
         JlXQ/Yy1/Jb0zA8O8nk7mKT8/B48oUC0KqSGZ/uoRkwmiWLME7wCCt5HlXLuVdIjEDk9
         vRhlMGE9iw6zrPh6Sj4EyJ/ZZboTRIzRBm108Q3juE9CgK/KaXBKVxFjmTW2mW3OkqES
         mxE87E/nys6D4MC8kjODwM4Ca97RoE5Pjn/k4XQbYm9jTQQDr3tRmym4a8jRt/zv/hHP
         h8sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IS2Rt6ZY2kbQpUl893KQNxQCDA75x7+my/1Tf7NswKk=;
        b=FZjv4MpmgMAzWhzdqHUuqYXsnC+X5pqyPuTIEUeBuoeJ39fc2NvX0KC2kmMZs5kj3p
         +DGUAvRqpSgyn+HmBU9sBJUL+8MRgcMdh+qWhXS6VXgBzMltnlsFQv5o25cQbE4rPb0f
         7huoR3TdjQTTQLoY5gkXyUUMDNwleDZ8Waede1aU/LbTXvgv64mzd7/P5IMdx4aTvq1e
         3SlJxXMc3TS3auKIj7cUXoyjcucS901SuE4QryFuZ+RvsR+WrqA0dIUWshiMiQCR+HqU
         xJ6L2Gxkis5Ft2E6nprQVxd89WLfUBFrxp3jQW8OyrFBQvK5txW238WiLt0lQXcHYFXv
         IGOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vjlm6KDB;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c5si953533ywn.5.2019.11.11.18.17.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 18:17:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id p24so12200721pfn.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 18:17:52 -0800 (PST)
X-Received: by 2002:a65:6119:: with SMTP id z25mr32726962pgu.332.1573525071244;
        Mon, 11 Nov 2019 18:17:51 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id k103sm739924pje.16.2019.11.11.18.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2019 18:17:50 -0800 (PST)
Date: Tue, 12 Nov 2019 11:17:47 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Dmitry Safonov <dima@arista.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Petr Mladek <pmladek@suse.com>, linux-kernel@vger.kernel.org,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Albert Ou <aou@eecs.berkeley.edu>, Ben Segall <bsegall@google.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Greentime Hu <green.hu@gmail.com>, Ingo Molnar <mingo@redhat.com>,
	James Hogan <jhogan@kernel.org>, Juri Lelli <juri.lelli@redhat.com>,
	Mel Gorman <mgorman@suse.de>, Michal Simek <monstr@monstr.eu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Burton <paulburton@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ralf Baechle <ralf@linux-mips.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vincent Chen <deanbo422@gmail.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Will Deacon <will@kernel.org>, linux-mips@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Richard Henderson <rth@twiddle.net>, linux-alpha@vger.kernel.org,
	Vineet Gupta <vgupta@synopsys.com>,
	linux-snps-arc@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
	Mark Salter <msalter@redhat.com>, linux-c6x-dev@linux-c6x.org,
	Guo Ren <guoren@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	uclinux-h8-devel@lists.sourceforge.jp,
	Brian Cain <bcain@codeaurora.org>, linux-hexagon@vger.kernel.org,
	Fenghua Yu <fenghua.yu@intel.com>, Tony Luck <tony.luck@intel.com>,
	linux-ia64@vger.kernel.org,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-m68k@lists.linux-m68k.org, Ley Foon Tan <lftan@altera.com>,
	nios2-dev@lists.rocketboards.org, Jonas Bonn <jonas@southpole.se>,
	Stafford Horne <shorne@gmail.com>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	openrisc@lists.librecores.org, Helge Deller <deller@gmx.de>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	linux-parisc@vger.kernel.org,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
	Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>, sparclinux@vger.kernel.org,
	Anton Ivanov <anton.ivanov@cambridgegreys.com>,
	Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
	linux-um@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Chris Zankel <chris@zankel.net>,
	Max Filippov <jcmvbkbc@gmail.com>, linux-xtensa@linux-xtensa.org,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-pm@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Jason Wessel <jason.wessel@windriver.com>,
	kgdb-bugreport@lists.sourceforge.net
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191112021747.GA68506@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vjlm6KDB;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On (19/11/11 19:47), Dmitry Safonov wrote:
[..]
> I don't see how bits on task_struct or in per-cpu are easier than
> supplying a log level parameter down the stack.
> How would it work if sysrq_handle_crash() called by key-press?
> How would that interact with deferred printing?
> How would it make visible prints from current context, but not from
> something that preempted it?

[..]

per-context log_level works pretty much the same way as per-message
log_level.

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
static DEFINE_PER_CPU(int, cpu_loglevels[4]); // @INITME.. LOGLEVEL_DEBUG + 1?

static int __printing_context(void)
{
	unsigned int preempt = preempt_count();

	if (!(preempt & (NMI_MASK | HARDIRQ_MASK | SOFITRQ_OFFSET)))
		return 0;
	if (preempt & SOFITRQ_OFFSET)
		return 1;
	if (preempt & HARDIRQ_MASK)
		return 2;
	return 3;
}

static int adj_context_loglevel(int level)
{
	int ctx = __printing_context();
	int cpu_level = this_cpu_read(cpu_loglevels[ctx]);

	// this one is important
	if (level == LOGLEVEL_SCHED)
		return level;
	// we are not in emergency context
	if (cpu_level == LOGLEVEL_DEBUG + 1)
		return level;
	// we better not override these
	if (LOGLEVEL_EMERG <= level && level <= LOGLEVEL_ERR)
		return level;
	return cpu_level;
}

void printk_emergency_enter(int log_level)
{
	int ctx;

	preempt_disable();
	ctx = __printing_context();
	this_cpu_write(cpu_loglevels[ctx], log_level);
}

void printk_emergency_exit(void)
{
	int ctx = __printing_context();

	this_cpu_write(cpu_loglevels[ctx], LOGLEVEL_DEBUG + 1);
	preempt_enable();
}

void vprintk_emit(...)
{
	level = adj_context_loglevel(level);
}
//
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
//
static void __show_stack(struct task_struct *task, unsigned long *sp)
{
	printk();
	...
	printk();
}

void show_stack(struct task_struct *task, unsigned long *sp, int log_level)
{
	printk_emergency_enter(log_level);
	__show_stack(task, sp);
	printk_emergency_exit();
}
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //

show_stack() never schedules, disabling preemption around it should
not change anything. Should it be interrupted, we will handle it via
preempt count.

printk_emergency_enter(log_level) handles every printk() that
__show_stack() and friends do. Not worse than printk("%s Stack", lvl);
all over the place.

> What I'm going to do - is to fix all build and reported issues, I'll
> send v2 this week and feel free to NAK it, I will forget about those
> patches and won't be offended.

Lovely.
And - no, I'm not going to NAK platform specific changes. Just so you know.

*All* I'm talking about is an alternative, less "go and touch a ton of
platform code" approach. The argument "I patched so many files that I'm
not even going to discuss anything now" is not productive, to say the
least. Hope this clarifies.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112021747.GA68506%40google.com.
