Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBQ7RVDXAKGQE66YL54Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D85AF878E
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 05:44:53 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id j14sf12789096oie.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 20:44:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573533892; cv=pass;
        d=google.com; s=arc-20160816;
        b=RI6KLcz/gyapJ5cdzbs1SR1WIB8rtzXZfdgcsbo1swdO5au2b3c5E370uGKYUiB1Tf
         +U3Y0yiFnl7PgCdpl4g9knGUUMqQR8IZl1JV1cxwwzv0gKku5qLHDiiq74KpmyRQAHIB
         NvC7N1YzT5OG1BmyKMxVTC7DS6Ib0Qd/wLv0RXbYZUDE7Lx8fT/sl3d+Q7ijiHW5014B
         LkmYa+cO9kbfp0Q+9oWsY8YDe1fW3uG89eNJ6dv8l+4EQ4FuBFdVDsQnvm2GDlMdFi52
         ef7C6Thqfj4swrrO5K96XKROmihLy+9S8TPsDA5Nbdkm3w+lYuu30lvyNqeg4VRY1eeu
         kccg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jLyyx8VPxaaAnbgx1EuUzljmetU5M3oJ+bZlzmaZzDs=;
        b=RfmCdm8GPq8fMr0p4KXks+RnQdgHZoKVVkwgjum7+Jv1o+AOfZxgG/AI6RxUNSKN3H
         IRTWAFjwkM5P16VCl/P0qnuIAy3fO5oAR/nw4Y1YhIBsCBc+eR7w1qwek8Vr6wq/eT7b
         YiXmIpT5+iez510FY6PmrdKzDf2SrSHs6JcirKTAaBzGqx6B/17zS2Tp6bSPRrboUQRW
         +6BrXztEfqgDBcaQcoYEmntplFPMZ6iiFT/o8txkNgOQSQ30WlGZs9mdyoeYnw26lCTC
         69HnulEvoyjHPmU3qfdrsJbrwDZjd5vBhSSjwudqdVjdYn4+fQgwbFc94xkikHPnA/bM
         nMgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D8FdqJ91;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jLyyx8VPxaaAnbgx1EuUzljmetU5M3oJ+bZlzmaZzDs=;
        b=M2qBHyoM4bRF6QLIbw4/N5a4lgMcegCDIawTd4y2MmWg4VJwROMXPccgSRX/MO+dpL
         Rbh7P5nRAKd9PGTBO9l29ECtcFKoy8TvPJGNYJB6VmZVxykDh9B61P8xptAo3Lb6L1SN
         dYBUow0N+Ewl5Ub6XFWnMdJjrJHwSa2igPuQTLwMkz3QXSYv2UD6q6zKd9jWYf1L1xKk
         hzfeej+54KoueLGgv2WeVxEEQ4qWqxyn91si2b4MmDKQwLTPTlj9W0myVek84yz0V9Xl
         o06OHXFmkl3cWKNt735zwrk/XfmW6KVnDu8B6WAUnTzpMTx+vJJqz8OSq/RnEw53dFfA
         7WGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jLyyx8VPxaaAnbgx1EuUzljmetU5M3oJ+bZlzmaZzDs=;
        b=vYNzaj8oeGTNGMc4QD612jwe3QHZEMTwCDzZvKRMce4N0vvnNTsiDLR3D3XO4Yj7Cd
         bHZb3WBjg+IG2Mrnq45xYjzrHIEWpJjfkttHAv5/I/MsuWaA/fRl2YS+vjwOplXYzFzT
         2XrZrYyyxwwAw1PHwUrLbAUI2u7EebaATOcrvwfWYpNjlrkci11aGcooVPmF8ZIuA1QI
         0bh5SQO2x/6weamjwblI+VjTaNiG6CxTFg5xAtK1H55ffKlHx5tY6Rp2GeiYqK5JlZqL
         j/Knf5CsqkwNivx/sN2fcngj1qI4HQOWyTzu+YUz3L9QFf5RYJpLoOXlRSkb3luCcG31
         1QyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jLyyx8VPxaaAnbgx1EuUzljmetU5M3oJ+bZlzmaZzDs=;
        b=d8yIzV4ECSvg7sRgqm687zKnXgY1R5xnOQ9eZDXed5OhIV6SbpNtPVdyXFGgspqp23
         Vhej12e1gWnCoS2EtnFIsz7nTZON2pvnS+NsAK9KMukRss5zoneBuaPqmmpV5NrQ0qAm
         K5M43dV5eTZbbXkXkLA25WsdXdgVifb9MoUR4tblRS/lfbFnz/f4oT6oTmaD7BPeawxp
         FkudLN4z9geRliHQeiEuvhDnW5NBKBE8ERK7LCCEoilynUZrZ9R3jqOASIZXTpxJ4aPo
         KpeUXpBZmK0krIYbTBPfujwWosmyZ0sNKoNLeS7wnnyFxO2zi12oDc+Wy+naqwupwvxP
         RkcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVpSKpZF+9ZIutT51iksThVQTOffSfHzDnz2dCx6QWA6X7wqD2n
	SVDB/L/mg+ZuvXbOe3BPjQE=
X-Google-Smtp-Source: APXvYqycj+/hBUtyEuEboF+1t8WABExUJ8QnRh4gcg+aJ0bb/Vs31qj95MfgVM2YyfuO8LzraD2JmA==
X-Received: by 2002:aca:eb57:: with SMTP id j84mr215242oih.0.1573533891865;
        Mon, 11 Nov 2019 20:44:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e94:: with SMTP id n20ls2632404otr.12.gmail; Mon,
 11 Nov 2019 20:44:51 -0800 (PST)
X-Received: by 2002:a9d:66d9:: with SMTP id t25mr13077362otm.30.1573533891511;
        Mon, 11 Nov 2019 20:44:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573533891; cv=none;
        d=google.com; s=arc-20160816;
        b=aoCCQgDDqyNNT4BQe3tXK+dV7zLqk+BRUz3i4BQj+7WXbWPeeAs5F8EWYwYsS1Y/M+
         j7bWdlm9L6C4cHoWe9o/e5vA+mw5CxyeTIGTrZjRoCRISZZRoiimh/p2Lp2VPyK6A57K
         wa5qHbNKbQCp32RuWMwTkGGL2clH/r3Ppqi4aJJpuIA0u/zVsYqCeNCD7IjRfx22oFrs
         pnrAWwzOf67WD7dkaYEqNkaea6j2v5cP5VYw1Kni3ep8GtxtZe6qkxsqAdmPh+b4tz8Q
         bZtrbYTvvDVnjeApmpNOtJjP3hsRVAS9VTqV2uQS//2e5J5vz9vE5maWeJhfI51yNLPb
         jPkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=z6L3+hI6K7wkMCOOKfC6B5htW9e/NujoD4rmfI82OVU=;
        b=O4ioZRy9NoUTsCgLvSWmZXPHpSLeUEXtnIAIclbBFAUWKcyU/7CnJ2+ke2GcdL+ru7
         hOsoWAN2eHukFkdoALr65pBdAHby7db60t01QaZJmSCnVXMYmKEIkM6vhrDezljmnGxy
         4Hc7sZoeuHc0XmwqHAfD5UfV16Cpk8wfW//WK6ZqQtn28NAIIc2LbfNXZHLApjw04Ywz
         oxXXfDFXy9DRwzu3sM6kgvFYYUN/T6nZp59n+1iOC6QWMLLPWq6wq7XtGNosg7CDvSYn
         v3WiSRmJA0kipoDf1mZ5vdQON9rWQ4zdZZKlN4BzRfu4aH+qEacmwRFZxsNoJpM/2Awy
         5Low==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D8FdqJ91;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i23si224777oie.1.2019.11.11.20.44.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 20:44:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id p26so12425053pfq.8
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 20:44:51 -0800 (PST)
X-Received: by 2002:a63:d802:: with SMTP id b2mr32909872pgh.414.1573533890747;
        Mon, 11 Nov 2019 20:44:50 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id l62sm18583061pgl.24.2019.11.11.20.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2019 20:44:49 -0800 (PST)
Date: Tue, 12 Nov 2019 13:44:47 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org,
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
Message-ID: <20191112044447.GA121272@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D8FdqJ91;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (19/11/11 10:12), Petr Mladek wrote:
[..]
> > I do recall that we talked about per-CPU printk state bit which would
> > start/end "just print it" section. We probably can extend it to "just
> > log_store" type of functionality. Doesn't look like a very bad idea.
> 
> The problem with per-CPU printk is that we would need to disable
> interrupts.

Or disable preemption and have loglevel per-CPU and per-context.
preempt_count can navigate us to the right context loglevel on
particular CPU. I'm talking here only about backtrace (error)
reporting contexts. Those can be atomic perfectly fine.

I posted a silly code snippet.

[..]
> But yes, this per-code-section loglevel is problematic. The feedback
> against the patchset shows that people want it also the other way.
> I mean to keep pr_debug() as pr_debug().

Hmm. Right.

> A solution might be to use the per-code-section loglevel only instead
> of some special loglevel.

So maybe we can "overwrite" only KERN_DEFAULT loglevels?
We certainly should not mess with SCHED or with anything in between
EMERG and ERR.

> The explicitly passed loglevel makes me feel more confident that
> all needed printk() calls were updated. But it might be a false
> feeling. I do not really have any strong preference.

I'm not like really objecting, just trying to explore some other
options.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112044447.GA121272%40google.com.
