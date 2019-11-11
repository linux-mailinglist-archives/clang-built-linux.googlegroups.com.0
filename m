Return-Path: <clang-built-linux+bncBDZKHAFW3AGBB4WLUTXAKGQEUVLFUPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D43F7033
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 10:12:19 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id 70sf2606006ljf.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 01:12:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573463538; cv=pass;
        d=google.com; s=arc-20160816;
        b=1IDF7J0eDBhI2Tfp80F1c+yjulV4tilbLJcTGq2Vaed+Vk+Cjj7jqRUEdhwDcmTpFe
         I3Z9MvMI7cT92O1obZ91Lx3pj4FKlNUrzIcll796In4JCPVJez6MkzBFGZNbv4P0ossF
         MMYvN0KdLHm+00bi5cY1GdvWhZRXxh+Sc9W6ffe3Bbm37LdlTCif4O989CMnGiQJjFDo
         IRyK/zUDwr29S5EyQMbSNzP7K5PCVrsibATVMl0l9ohFiVSzxBLc67Br1iVN2A9r6noY
         48NBZ9SP4bTi9QhZq4BN9wTMS6q/JTCANSB1FmQQmsYk57r3MfbscLIsA9fxc55fYZP4
         +o2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=HA5d6MjZjoPw2UNNoan2W1vOVH3wC2cNkgXLaZ5OYQE=;
        b=AC1npDbwiM4igOmNKywmuH4HA2Z20FqK5wB0nNazFMtYbsueO+qEA1J6u5lsgI0xu8
         4ezHBVUlY8EwxGedutHsuvqZmFNzJFp8xRgCtx5fn0Ur6OJ3jvF9ujuGbyQ4VTgBFxUR
         JA0XVTpDS8jwz2PORpSVGs+rsuR+8FMdVPgXXe56IMYdknuaJ822Kx+FMVyMKqHYqkWq
         0ORT9IHIFsnRF25XxGbZYMB4THSJZgH864nbKI7yjSgMqsCeUxexu0p1GGWHQ2DqgoiG
         ecsp0j3E++aAdlHgP19081p6GOesGKKvetvBaXkzjy/QxC/D6ZGFKWnnPhbhzzhVBQaP
         IeVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HA5d6MjZjoPw2UNNoan2W1vOVH3wC2cNkgXLaZ5OYQE=;
        b=Ch//32XJ3D60xoOzpIrI+ZyJHQncLV4BgCz8bQb8uX48OweiTrtN9pMuj0ApYHRh6z
         s3dF+eELa9OZi6rTkdZwVE2cpSwLUaUQ1CM3ATAj0kzdc1Aamv9SxvIqL2fATqBM6aNU
         PWIhqfkz+uCF0sLZLUzFhP7q3EbWvwRAtiS1g21q7gOnHAlz91hU/pXAHvj1+YCE+0PM
         A0jA9O/3cIJE2DmPpmeYlhjQ+6mn/eoORw/GXga9NkYF/p18atX9LEmbX3Ehf4s2JR2r
         y8XIyYKuVrk4Kzcd/6rh3H8C2Joiz2vsSm0WH6kvfpspgSmAAvIRNDxld+aftKzz+kAu
         0/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HA5d6MjZjoPw2UNNoan2W1vOVH3wC2cNkgXLaZ5OYQE=;
        b=Sk0wPUb4/EAzdEx4JiHEmMk2356Mn5P3TIQpVfxUtfliK229L0ACgdJjlNPAPal5F3
         j38AMdkMIjO0REV8lCvhSHfrusHBp3OpGM7WrddFEfKZShCyGG0Ixue2/uPf26JJFLfm
         s0jIa29wcWgms0nwp+NF4KSeOd2Dyyy8x1YHLuXVw3WEzxE0+x/QSI1QHvhwUX43/NDv
         vajP9vkLMMrCYZnA2/TvpNnpBTQpz1BG713Vs67GbQWsClW9ylPZbJOlR1B1EYEn2hx8
         YzK/tANLdfbAwWkfW4bVUnrLMCvJud3bY/KmmMT76XmTKHC9REGqFc3TewrT9wA9gBbk
         MuyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYZLB0ngpnRsBMiSU33/wYPzHARLusXyFWVD1muzVod+afyESC
	GAz6jFz3AMDdrel95d2ySp4=
X-Google-Smtp-Source: APXvYqzzXaRYRZMbxsXB5s44riSFA13s2ItaKtIsfY2SQCaq1rDhahDl8JAc71qHFI3t1CuC7jN5aA==
X-Received: by 2002:a2e:8804:: with SMTP id x4mr10325858ljh.2.1573463538614;
        Mon, 11 Nov 2019 01:12:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls1025075ljx.1.gmail; Mon, 11 Nov
 2019 01:12:17 -0800 (PST)
X-Received: by 2002:a05:651c:1a1:: with SMTP id c1mr15904317ljn.23.1573463537894;
        Mon, 11 Nov 2019 01:12:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573463537; cv=none;
        d=google.com; s=arc-20160816;
        b=NloQrmXZRVyg+pRp8EY2j/MDXhQj6sM9CD+M4Zo5hY+sqpYqR6/1j5tz6unTd6BlJz
         WmchWB62RuaaLMHbEkS9YbJB8HFcFKlcV348sN5bfqTwlmu736qPbshOfXnRQKtFjN0q
         R6qYR+4ujGgMmZAjadOgvw+h7hw1QGwaqsCN5bMugHZtQnyNR35Y9QdICGKWKt8wp8Av
         JGVA9tR+6zhcpGdyuos3ni4ivgY7HRvZxG3xBewsdKKQbJbsOoY/3AE3lzbZhG5TPaWg
         f/7B5l2yD64MoSvTfBO1YHrzYPnjmk7A+rBlgfDN++mvR4/xNunjmSfPFvpGdPDSw9O2
         71Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ckDLLBNybB00NN8bJ+zRvU0mCEzS1GZ+ad57vCEWPjg=;
        b=t6ARPKliQx6uPOSrTJ97O2kOpASPgMvvpkvd35Tt+rwpi9hFT4M73PqTA4GeKcIeZH
         7UTQXuOmODzcoB4/lJK3WRQZLHcfJXPa1ObBI1p6pVmvZ/0XDEd7RRg997/zONfQTovq
         KA+QM54XaciMAYv3gsJvwLpjVEhkqo8QgjOKw4v3WNI7O4YHzonqEvYL/rEWyrxKWyvm
         ErzonHU7OG2M66VSsB/U28VoavX1kNcgNAVi9tbZb8DQs5hc4PEiNj8FWkZViW9USCYZ
         kttNtCPcxVLtLu07C2zmNGzHNSZpvKTlS7FSBJkB59n0dERy2Dz6y8RYUyxSJyhmR30t
         8nzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t3si221107ljj.1.2019.11.11.01.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Nov 2019 01:12:17 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 55CEAADD5;
	Mon, 11 Nov 2019 09:12:15 +0000 (UTC)
Date: Mon, 11 Nov 2019 10:12:07 +0100
From: Petr Mladek <pmladek@suse.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org,
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
Message-ID: <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191111012336.GA85185@google.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com
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

On Mon 2019-11-11 10:23:36, Sergey Senozhatsky wrote:
> On (19/11/08 14:04), Petr Mladek wrote:
> [..]
> > I agree that it is complicated to pass the loglevel as
> > a parameter. It would be better define the default
> > log level for a given code section. It might be stored
> > in task_struct for the normal context and in per-CPU
> > variables for interrupt contexts.
> 
> I do recall that we talked about per-CPU printk state bit which would
> start/end "just print it" section. We probably can extend it to "just
> log_store" type of functionality. Doesn't look like a very bad idea.

The problem with per-CPU printk is that we would need to disable
interrupts. It is not always wanted. Also people might not expect
this from a printk() API.


> "This task/context is in trouble, whatever it printk()-s is important".

It might be a minimal loglevel. More important messages would still
be printed() with the higher loglevel.

But yes, this per-code-section loglevel is problematic. The feedback
against the patchset shows that people want it also the other way.
I mean to keep pr_debug() as pr_debug().

A solution might be to use the per-code-section loglevel only instead
of some special loglevel.


> Per-console loglevel also might help sometimes. Slower consoles would
> ->write() only critical messages, faster consoles everything.

This looks like another problem to me. Anyway, this filtering will
work better when the loglevel will be consistent across the related
lines.

> Passing log_level as part of message payload, which printk machinery
> magically hides is not entirely exciting. What we have in the code
> now - printk("%s blah\n", lvl) - is not what we see in the logs.
> Because the leading '%s' becomes special. And printk()/sprintf()
> documentation should reflect that: '%s' prints a string, but sometimes
> it doesn't.

I personally do not see this as a big problem.

The explicitly passed loglevel makes me feel more confident that
all needed printk() calls were updated. But it might be a false
feeling. I do not really have any strong preference.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191111091207.u3lrd6cmumnx4czr%40pathway.suse.cz.
