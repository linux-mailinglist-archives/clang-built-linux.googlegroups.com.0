Return-Path: <clang-built-linux+bncBDZKHAFW3AGBB6OPSXXAKGQEVZPMPAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EC1F4C94
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 14:04:57 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id z9sf3138402wrq.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 05:04:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573218297; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLba49CPgP64mDlfobP8C6PHxwTWuNdfznN9i+VnwPZRGZJUGxDcUOh9WnwAFplF8U
         0j7NC8RsYKRyVydJHsK4158RBw0tKx8MOokcaGCDj6TkX3PomYM57NxvYsxv96tGmUXA
         2ptVfJN+sNW3/jGi3C0Ex8Cp6BkcUu4t0rIF/TA4pws6eLLgN6VqAWt5oPV0mzLqHcY6
         Dvqm0DQVuD+XVB79Gc0cVX7PVPn9mupOVIeTv9uom5DeHhuUW2dKu96QmUGtaZl4CRwF
         ckKtwbXbLjawEMzonhw96WV6Aj/gDufpeAuOvaS0IyPH1PBTuFLBR54SgpZrq4Bgh8Jc
         xiKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=t0TWKSEyeppHt5rDnWoYLKrrNQgQDoUeY5dKRIVOfdY=;
        b=SEfxjh4wv6FCImj0rf8w2PT8SU0BxYZZyQs+Sh47G405kGGWBWaeCo66IVb5w8pz1z
         KP+//Ypu3YryRoE2reiNVJ9k3LN9Magr2jmueYV4uPdbl/7QFZUzYq9A6AZ8I3tA2rhD
         xo/C9V+mfkHNV/ACBy2AhNCGHR2erynko4f89FoIbaQOkLt/kq1L0oyEIgFBJ1ll9jKh
         2iKezuQ5ycLpuVaregXh/jq02qQv4uyBwsft9I1ExSNLvPQHz5hWO6sGwQlzoCEAE15w
         CUHDZT5bYJ3Mw/fAM9Rly1F7cMN3EZpKZy+K0h5Qsx/kk0fiTsPGcebV+Gy4KhHw6Vwr
         TvdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t0TWKSEyeppHt5rDnWoYLKrrNQgQDoUeY5dKRIVOfdY=;
        b=KpWcwtJttwkeax9wiogQDUQwWOmwdEChXsW9hMKWytWOESO8V8CIoc/S2m1rT0shuR
         FMsAKlLvRswJQHuv28EeRNJ0Aydkft1aEppRibqc+3f93YIVrzxpXSDY03BA6H91hXg6
         tVK9b9Cmpst5zuYaZe2+JZs0V+coc5LMPLzaYFDbD16tGztvkkoq5Wz+99qNyOmZ7myn
         Zx6OFSx62H4UBnU2KrcANu+L7ntAnTmOeeliL7rhNrsUxuqQvgEpvL1sucUb7W/RVLx4
         j+kK3X8mQD0KJcXbEwWm76gtVUDo1L80Z1SjCL4hNVHKz9sEWdiEPs6sS2AqDxYwJn2z
         /b9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t0TWKSEyeppHt5rDnWoYLKrrNQgQDoUeY5dKRIVOfdY=;
        b=Gh5d09IG4MrVDJlMTYoEckHYlowqmC2QBPq9XThYu9JXKnCZ7Ur6VyhsQe2NEYZu5l
         4DwqUfPQuVJiFTEooXiNzdr+GVQN1RHsV652lYeutoloWMmgn2jJlwwSCVBcFhrxlLHH
         sie9BFveWUYiu41NOxKFferLkGxJMHNghPcXi3B4JFe5uSs4H4gm5dWeq+XsHeHUdhhZ
         hmGfhcgMThigtz34cPDTstVV4VckNzQa8kgLwZBdEw8CV+Qccs8RoyAKxptzZB7dG+Bu
         GcwKZrScLr9PXmQd2u2SCpZFF/Fq6ZiscKHV67ZiSYLUH7nT0G1/eyZ7zgd21vmWFmoP
         oq1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUNw1hR4aLBFCcj/WU/df8V3BN1u/uEcS+wTo3TzaEn/Vrrm1Ie
	/uJKtoZxf26uf54vXBKmlIY=
X-Google-Smtp-Source: APXvYqyaZANeMfaR/DFJs5Y9g6EVp7p+mYObekdjqsWU3PhTqe1IMOQ2SuOQmyGeMSqs6MunzfQyXA==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr8514468wml.41.1573218297510;
        Fri, 08 Nov 2019 05:04:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f10c:: with SMTP id r12ls5720757wro.11.gmail; Fri, 08
 Nov 2019 05:04:57 -0800 (PST)
X-Received: by 2002:adf:dd10:: with SMTP id a16mr8715723wrm.213.1573218297006;
        Fri, 08 Nov 2019 05:04:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573218297; cv=none;
        d=google.com; s=arc-20160816;
        b=oYHDEyCpSK6wGaEUG4AZA5NhEen9jJJIga4J8L+8smWZ5avtBrBaeJn8uuMvtFlX1J
         DcO0dGeGMaHdtmQ9bI51D75OoBFkEnEIf9KtjiqDxjSzHJytlftuJGflgQYQBu0Z2lzF
         MpYXparu3MGqWnZMP4iyxzy96XAn5hG6cwq8f7PkstHyCTnYHXjnm4cX7RRt8ha+Q9ek
         MGBGBi4N61zxkJsJ6rk97mKtu4/UkOoH3BO29Yt76hSk9CQ/M8SLR68XriG8PW4X4wpa
         JIWzka+L7k4CB2u82EXLOHxg4qGexeGewcMI6WSMAgq0hSEZraQIB0KBpRwrWkFzTDbn
         2NDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=La9f0W75O1O7X1+adHiQmzYierWrtdMcZjwxWFaAWaY=;
        b=rr+U2/8A3Yiy2b/5OaeLRY1jgJhtcWYHVAi65o4Nz4i/I87K2I2fzjzFtB5Ay/FICW
         3SaVxfe/KQyRvSb1L9qXHlaHV5zzjnuj0VxbHkijGj1zEOXoXFP6YCdymBwihyvgBwr+
         pmbWEaax0/1OuVxaU94aXXdP3OkA8TCiY+89siHxOlpAXt4+cLHnd3BFekmQxQGinuZH
         GQJovfwB4pK1LUT84CxIbbzBoBpEOdC7yTpfW71zmq+js+Y2NpW+Zv0vAE4+ivkwb1rn
         jhRKd48Tlko5uLqUAnIJ9hiacr9i7poR5pP1af37O7aIycZ9boNhnz+P31MF0vU0/UGQ
         kCFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id y188si356348wmc.0.2019.11.08.05.04.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 05:04:56 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 40014ABC4;
	Fri,  8 Nov 2019 13:04:55 +0000 (UTC)
Date: Fri, 8 Nov 2019 14:04:47 +0100
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
Message-ID: <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191108103719.GB175344@google.com>
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

On Fri 2019-11-08 19:37:19, Sergey Senozhatsky wrote:
> On (19/11/06 09:35), Petr Mladek wrote:
> > I agree with all the other justification.
> > 
> > I would add. The backtrace is really useful for debugging. It should
> > be possible to print it even in less critical situations.
> 
> Hmm, I don't know.
> Do we really need debug/info level backtraces?

debug is exactly the loglevel where registry content and backtrace
might be very useful. It is not always important to reach the console.


> May be all backtraces can be converted to something more severe
> (so we can stop playing games with loglvl) and then we can
> clean up "(ab)users"?

IMHO, we should distinguish warning, error, crit, alert, emerg
situations. Backtraces and any related messages should be
filtered the same way. Any information might be useless without
the context.

I agree that it is complicated to pass the loglevel as
a parameter. It would be better define the default
log level for a given code section. It might be stored
in task_struct for the normal context and in per-CPU
variables for interrupt contexts.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191108130447.h3wfgo4efjkto56f%40pathway.suse.cz.
