Return-Path: <clang-built-linux+bncBCSPV64IYUKBBJGOS3XAKGQEEVC3X5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f57.google.com (mail-wr1-f57.google.com [209.85.221.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3CCF529D
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 18:34:29 +0100 (CET)
Received: by mail-wr1-f57.google.com with SMTP id 4sf3650783wrf.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 09:34:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573234469; cv=pass;
        d=google.com; s=arc-20160816;
        b=WwTAW2yyIHMSq218br0I7RasQEujp/upItBqCclyBwaFGGxAAwC+m7IX0Ld9QmNo7L
         +pQhN8HgxoHFUjYRkczbF1D4y52Evvgue1BfwK7DqZbsjQWgjXCXbol66esvYZ77Lzt3
         bMmdx68cNSVT32InXqgwAEPftlOt+e+rssU+/TSEn7XRJiVcWI/oSVtqnsF+1pkIxMs5
         spc4pYBO744CAdxtjyg3Lecnf41fG4Ilam5phY4nndZSHrN7m53E3vwHc5lMoeKCJyBn
         7hptP5BxcnA5mhhZM6qBWgAPKBeKeIQNiQu8R/Z5EunlEsrLDA+yKLGj7IRvpqi1G2Ps
         sEqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=g8Ef/tYbSfclodqn7pzTPxFGuCwXrJcwdoHeqOgPcrI=;
        b=zodVCwPx/j87EDKYxqmU7dYYtf1P4lZPzWYib7Af11c58e9G958egRdUpCEVMFYMx9
         i5fG6ozCbKO6eoeR9HNj8pZy6rHMxwKMiN7WwINioaI34pG4dsAkgBaD7LBOsNKsHL+G
         yM9jQYt9EsMS0PeZxvKCA06Lwux9Viq6jhqv5mwJMFn0/8xQMF5f5ebty9oAEnzyKr6c
         MSKuwJTujdD6DNmN05c9HlXJEf3SsY2KSxr8ydCS8D673vLVRaqVbL1FiIBCLtNGXCs/
         QZUI18eijJ1KQM2ORcX6gspIOjOdnDSdnqz46OPPKxpSw1m1TAqs8KJZ3UQevFVn+6lD
         D1oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=swiYqGJ7;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g8Ef/tYbSfclodqn7pzTPxFGuCwXrJcwdoHeqOgPcrI=;
        b=PZ8K8VKlHuP8qNiER6gLg5i7/3YTqXzoSIIYEoOjF7g0T0Ko6p7sDb77eK2BE0cMPj
         Ip3jNmtohFI67lx48H8iMy+Zh5zabPWFxuaXXkZz/ZTRHaenzwksgcv6l64ZvOHYvCPq
         /LMs5k/HyiiL7Y/LVxyi+kjvMVxeiLxVr4lOr0AliczWdMBRHpR/Fbh2QoEJwSD1m6J/
         dl7eWL1+LznG1BwdwP/IEjIkJhOfnE69Fsw4PSCNVnfl/fcCS38xTH/j93rctPcoH/yQ
         s04aq8m3dHhptbcPNO587KJoBJ21bGEzckHhK4Q6kyTsxG+i2CeK+hy5zYV4O+FldhjR
         DjbA==
X-Gm-Message-State: APjAAAVTIuNlYGVtXNDdYcc2aX/2kQ9cytoaDvPepPBtDyGW8HOw+rwE
	rI6lLg8xZyXJJkT8jlZIl/Y=
X-Google-Smtp-Source: APXvYqygY9+w7tP/v7l2xf+gWKLFAdNQRUeRdzQM2kzrxttz8ZQXykRFKANYNhhMh7Lt5NDrw1+cxA==
X-Received: by 2002:a5d:6203:: with SMTP id y3mr9676960wru.142.1573234468916;
        Fri, 08 Nov 2019 09:34:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f10c:: with SMTP id r12ls6907234wro.11.gmail; Fri, 08
 Nov 2019 09:34:28 -0800 (PST)
X-Received: by 2002:adf:dc06:: with SMTP id t6mr9836782wri.378.1573234468370;
        Fri, 08 Nov 2019 09:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573234468; cv=none;
        d=google.com; s=arc-20160816;
        b=EemVEmuon4q+OH/O7aRYCPcXbvblGlykJHpy9pabmz2hNSAFyo/3x6m9NAhQf6sw+W
         +ks2v9zWnhcuDLqtA8FeWcgNnNWnovXYKNzf5GpYV6ZpSP+OgLpkmheXe5BUvVN1jolW
         S9rGY+LAz6bcTZXWyQR83CEkGwe06dHYvT5fCYlU54Ll83zQczEnfkb3/CQwAtVor5SH
         WLAZEYDOJhKpNT1sqyrbgFCxJK7UVq5Yi7wOKzflu8mVaLdLP8FDXXMMpedyW8scleRT
         9i5q64l0pCnTtS+NuLvn6Wu0YFvgmxuI98WI52AQVnuux8627yYn6L4BPUCMQnl+UZfT
         BhSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=8OKQ8ybzqBvVwbNEFVvCvShIsxDoVn1JKRJjkQiqoKU=;
        b=hpIqMPJkDF0+Y+FNdGXMhBF8FWQgQsIV1qRzvEzDC0iv2dI9O1VnrJHzBPgYspwD4o
         1M+GlvFn2tTk2mpmYdBw5TS2ago0SrUz7WIe6Hnd9uoSpk/aU+DlrsWDzzhh+p3T32oU
         Y4hTWfgqx9GJLf4ZdfHhsJjJYC6sHPWTLVB6Eb/+AuVNr4LgLqmu0w+h3NSxr8QDM472
         eLdcifAHGV8lfJVWbEgoAjf++kyYjFA8lI8L/7aIhKmd+N48BhwUycG+3Kn/9QWie3Wa
         2AYXJOlbjKCGrjHeS/FQvR7ILPJ8C52XQpYt83tcdLxAcHxk3Q6e+OzACqH9WuhyVHCQ
         xRbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=swiYqGJ7;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id l10si646567wmd.0.2019.11.08.09.34.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 09:34:28 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:53540)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iT86P-0003rG-IT; Fri, 08 Nov 2019 17:31:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iT85t-000697-Tp; Fri, 08 Nov 2019 17:30:45 +0000
Date: Fri, 8 Nov 2019 17:30:45 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dmitry Safonov <dima@arista.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
	Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
	Albert Ou <aou@eecs.berkeley.edu>, Ben Segall <bsegall@google.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Greentime Hu <green.hu@gmail.com>, Ingo Molnar <mingo@redhat.com>,
	James Hogan <jhogan@kernel.org>, Juri Lelli <juri.lelli@redhat.com>,
	Mel Gorman <mgorman@suse.de>, Michal Simek <monstr@monstr.eu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Burton <paulburton@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
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
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
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
	X86 ML <x86@kernel.org>, Chris Zankel <chris@zankel.net>,
	Max Filippov <jcmvbkbc@gmail.com>,
	"open list:TENSILICA XTENSA PORT (xtensa)" <linux-xtensa@linux-xtensa.org>,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-pm@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Jason Wessel <jason.wessel@windriver.com>,
	kgdb-bugreport@lists.sourceforge.net
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191108173045.GY25745@shell.armlinux.org.uk>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106092039.GT4131@hirez.programming.kicks-ass.net>
 <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
 <20191106203440.GH3079@worktop.programming.kicks-ass.net>
 <CAGrbwDRgX1BZoFrVYSXhAeeUKHrB=q3w8jXFPOuRvO7HV4Ciqw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGrbwDRgX1BZoFrVYSXhAeeUKHrB=q3w8jXFPOuRvO7HV4Ciqw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=swiYqGJ7;
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

On Fri, Nov 08, 2019 at 04:28:30PM +0000, Dmitry Safonov wrote:
> On 11/6/19 8:34 PM, Peter Zijlstra wrote:
> > On Wed, Nov 06, 2019 at 04:27:33PM +0000, Dmitry Safonov wrote:
> [..]
> >> Sorry, I should have tried to describe better.
> >>
> >> I'm trying to remove external users of console_loglevel by following
> >> reasons:
> >
> > I suppose since all my machines have 'debug ignore_loglevel
> > earlyprintk=serial,ttyS0,115200 console=ttyS0,115200' I don't have this
> > experience.
> 
> Yeah, I remember you avoid all those functionalities of printk(), fair
> enough. On the other side, regular users and I'm betting most of
> the non-tuned distributions use /proc/sys/kernel/printk by default.
> (Checking on my Arch & Fedora - loglevel 4 from the box)
> 
> >> - changing console_loglevel on SMP means that unwanted messages from
> >> other CPUs will appear (that have lower log level)
> >> - on UMP unwanted messages may appear if the code is preempted while it
> >> hasn't set the console_loglevel back to old
> >> - rising console_loglevel to print wanted message(s) may not work at all
> >> if printk() has being delayed and the console_loglevel is already set
> >> back to old value
> >
> > Sure, frobbing the global console_loglevel is bad.
> >
> >> I also have patches in wip those needs to print backtrace with specific
> >> loglevel (higher when it's critical, lower when it's notice and
> >> shouldn't go to serial console).
> >
> > (everything always should go to serial, serial is awesome :-)
> 
> Personally I agree. Unfortunately, here @Arista there are switches (I'm
> speaking about the order of thousands at least) those have baud-rate 9600.
> It's a bit expensive being elaborate with such setup.
> 
> >> Besides on local tests I see hits those have headers (messages like
> >> "Backtrace: ") without an actual backtrace and the reverse - a backtrace
> >> without a reason for it. It's quite annoying and worth addressing by
> >> syncing headers log levels to backtraces.
> >
> > I suppose I'm surprised there are backtraces that are not important.
> > Either badness happened and it needs printing, or the user asked for it
> > and it needs printing.
> >
> > Perhaps we should be removing backtraces if they're not important
> > instead of allowing to print them as lower loglevels?
> 
> Well, the use-case for lower log-level is that everything goes into logs
> (/var/log/dmesg or /var/log/messages whatever rsyslog has settting).
> 
> That has it's value:
> - after a failure (i.e. panic) messages, those were only signs that
> something goes wrong can be seen in logs which can give ideas what has
> happened.

No they don't.  When the kernel panics, userspace generally stops
running, so rsyslog won't be able to write them to /var/log/messages.

How, by "kernel panics" I mean a real kernel panic, which probably
isn't what you're talking about there.  You are probably talking
about the whole shebang of non-fatal kernel oops, kernel warnings
and the like.  If so, I'd ask you to stop confuzzilating terminology.

If you really want to capture such events, then you need to have the
kernel write the panic to (e.g.) flash - see the mtdoops driver.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191108173045.GY25745%40shell.armlinux.org.uk.
