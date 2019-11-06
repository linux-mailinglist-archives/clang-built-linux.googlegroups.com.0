Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBBG5RTXAKGQEQFGWTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 603B4F1FF1
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 21:35:18 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id p1sf19743ybg.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 12:35:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573072517; cv=pass;
        d=google.com; s=arc-20160816;
        b=II1uvK2K85WOWiEaq/2kR+rUOcWY+ulzsSsrE0gwjqGwsiZxrIw8KvQwm1n790uTaf
         dvWrS0YbydiG6min46X5iYjduOb6kPCxphx7MU3wzpbUJASAAnDPZUpkLnbryuDMAgir
         jrnkC0t0gjMLNBfyg9Jmjm/GxZK9FI4X2H6/OBNATuX3APK8ByU/LC2VxiF+6m5vn3yM
         H0kZ4QTIUngtvJ8S6vUqcO+4cU74e9y4AsDwKRu9HtOWhtib+BXcU0RMiAUsy/RBylwX
         42GQ666pdXqp4p35GQg0pFfobFwBhavXy8QFT6MqpeCy4o+pnYKDEHatv9oXjDUrbYu0
         c1jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=q63X+mdIruZXKCwSuSaZ4jEIs3uN310uWWFNYrFARHg=;
        b=LR7LZhhdxtBBLcnwH2zy68K6IWHs6Da+qz6bjcHsV+WATPElLK6tjpB9OyecSiMPIv
         SftIywg8YDFYh8vohnHs2OZkI0o1nZb+jeZ/FGXIhHZjRYti64mRQZQx+9juQ/86yKUi
         bCS6SaXGTpdFNoU7lDOfUaubZ9+ejFvjUcu7NPCc4oVfVU5YyB5QCk/wfUpZoVDb9Ejm
         gNvdwDMKbSNqDdMmtEBoqwni/Lb1txb/4KOzdvtByjT1amJKFJThbuZ+3WQIWCsTvhf9
         4uVsXAizgi5Z0wtWSS5N05YWtZftFi0ZRV7W3yYwl5hesOZmnV+l12idjZIiFKdZDuyL
         Q2mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=dLqPPOZn;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q63X+mdIruZXKCwSuSaZ4jEIs3uN310uWWFNYrFARHg=;
        b=tFuCVqarC7u6pDX6H3Mrxxk4oJI8UaY+WShNoxjG2vLEeE7yWjBv2R/NJwqFNSi8nn
         KwmXlKIqqZp/IgQEAqWS8zZftegLxHtCoLlAh+g0O59xbgnDohzqbIYyfeL4XnUv9M4H
         TvIK+QtWTuvaVd/uBPXk6OQiWnnyVV1nqeH1jANalULjmuas4uC/7/Iosn0QoqUAgNXp
         e3GKcgqY0yIaByPjiY2xF1J19u+cNy8DY1ViD7hS6Tk3G/+sATJ+v9udSOBVEOi0skXJ
         AQOoX8tqvsCSr5iRKTsYYGXtRGUqVwJeqDX2ccq768X+72Hy9jc3DsZavA7BdmGENT7m
         Scwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q63X+mdIruZXKCwSuSaZ4jEIs3uN310uWWFNYrFARHg=;
        b=Pl5Q2GjI2ygFFnUoimhsjVGRQRuNHMKcYTQTP9ArQDALhFT3N3jOpBSsgv9E4brXDs
         +qHXq2NYUJRgaDINtLgZmes55AOkseTPqLlpYAkSa6NVFZP6Ey57B5IVxn6VAym4dOI/
         mH+f0kGMF0HBsizRULNirYwiHl8NIFbWNhMClW5JR9ivfSE7nH/qiSLuPhdan3RT4tKT
         YMBOe3hvEdarDEWmZGcDY4namueRXWfFWtSCaa9utsSfkqc4vWgeqqb817axz7y1fxPT
         IesvHb3WyNsE5ZrSzTuUnO6pPRp2M1I50I8bKYfjbcHcbMcP457r9aRg9rfGnqvjCxiq
         vIGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWywCdXSC1JiV2Sht+zvDrPTMCEU9ECefvdB+1JsRH7+zkyrFdb
	yFB0/upeXGqLsTiEkYNxfH0=
X-Google-Smtp-Source: APXvYqzBsZFhPkozlIFdektAalZqBTKc0wrpg+pIF2Eb7kTfAOalVtMeVXjxxnSs0cFRsbYINP2R2g==
X-Received: by 2002:a81:3497:: with SMTP id b145mr3035651ywa.315.1573072516858;
        Wed, 06 Nov 2019 12:35:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7903:: with SMTP id u3ls610902ybc.15.gmail; Wed, 06 Nov
 2019 12:35:16 -0800 (PST)
X-Received: by 2002:a25:df4c:: with SMTP id w73mr1955833ybg.461.1573072516441;
        Wed, 06 Nov 2019 12:35:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573072516; cv=none;
        d=google.com; s=arc-20160816;
        b=el7Z4jrXmmWreDLUiYzhqNaw5UMLB9H5dHvSFkI0GGc3FAzOYYSu8zIkM6bS1vgdnO
         AhNu1SZuCdZ0ssB76p0ZtdbYx8R1ETfewZ8UleIzKJACiL3u45u+dteectqEO2hxMNVf
         iVas+cL8E2aY3x1YPxIlwSUTU4OYzLh9bsdeaNU1o5GXBCDQvdwxtJ4wfGMBfsHZFyno
         aSqXuOzElYcoxbGKXE/MDChEw+i8eu54HYpVy6sTfj4ZW2Wy0oJya2O//eu3kb8aYS7h
         sqmVUiQNUApSDnOKiFG4E9ChrrnhcJ/YlNpfMyihKt6njQBOLMN6Lni9PpjPSBHXs+v3
         Wa1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IJrcQXptkMvPiExxcW5iB0NzeMYZeKfH93+EIxkwDzY=;
        b=JaLYCqs+oPwO7+TzARTTn0eCAlnG6X/YTeeLSgslwA6HsHfookZ61Ro0fHbmemdrmU
         bUfSW6ZfwdRCUKDlhfRP7pMjrJKtjEPkyLBdzGz2qHC01MTV1ReLAb4uWRvrsGpjBVZd
         JPnPawoQN0sjAVU+HdHAf2mgNLqoMxUfwU/XxaupLixVRw8JVfJJYEumPruWOG4mRShy
         18ToWV+EC4hhQeZhSi3NgvtADck7dT7ei3vDnh6OQNIgiUzswXVLiCcePd3+eQMgbnej
         T48V+vYipbyoDNYp0cMaaBdzp+wYg9ca0x86uqtLDqdQEgqHXP6sSzOf287RKZtApofw
         Lsig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=dLqPPOZn;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id v135si1416317ywa.0.2019.11.06.12.35.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 12:35:16 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSS0p-0001aJ-G0; Wed, 06 Nov 2019 20:34:43 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id C2126980DF5; Wed,  6 Nov 2019 21:34:40 +0100 (CET)
Date: Wed, 6 Nov 2019 21:34:40 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Safonov <dima@arista.com>
Cc: linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
	Petr Mladek <pmladek@suse.com>,
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
Message-ID: <20191106203440.GH3079@worktop.programming.kicks-ass.net>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106092039.GT4131@hirez.programming.kicks-ass.net>
 <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=dLqPPOZn;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Nov 06, 2019 at 04:27:33PM +0000, Dmitry Safonov wrote:
> Hi Peter,
> 
> On 11/6/19 9:20 AM, Peter Zijlstra wrote:
> > On Wed, Nov 06, 2019 at 03:04:51AM +0000, Dmitry Safonov wrote:
> >> Add log level argument to show_stack().
> >> Done in three stages:
> >> 1. Introducing show_stack_loglvl() for every architecture
> >> 2. Migrating old users with an explicit log level
> >> 3. Renaming show_stack_loglvl() into show_stack()
> >>
> >> Justification:
> >> o It's a design mistake to move a business-logic decision
> >>   into platform realization detail.
> >> o I have currently two patches sets that would benefit from this work:
> >>   Removing console_loglevel jumps in sysrq driver [1]
> >>   Hung task warning before panic [2] - suggested by Tetsuo (but he
> >>   probably didn't realise what it would involve).
> >> o While doing (1), (2) the backtraces were adjusted to headers
> >>   and other messages for each situation - so there won't be a situation
> >>   when the backtrace is printed, but the headers are missing because
> >>   they have lesser log level (or the reverse).
> >> o As the result in (2) plays with console_loglevel for kdb are removed.
> > 
> > I really don't understand that word salad. Why are you doing this?
> > 
> 
> Sorry, I should have tried to describe better.
> 
> I'm trying to remove external users of console_loglevel by following
> reasons:

I suppose since all my machines have 'debug ignore_loglevel
earlyprintk=serial,ttyS0,115200 console=ttyS0,115200' I don't have this
experience.

> - changing console_loglevel on SMP means that unwanted messages from
> other CPUs will appear (that have lower log level)
> - on UMP unwanted messages may appear if the code is preempted while it
> hasn't set the console_loglevel back to old
> - rising console_loglevel to print wanted message(s) may not work at all
> if printk() has being delayed and the console_loglevel is already set
> back to old value

Sure, frobbing the global console_loglevel is bad.

> I also have patches in wip those needs to print backtrace with specific
> loglevel (higher when it's critical, lower when it's notice and
> shouldn't go to serial console).

(everything always should go to serial, serial is awesome :-)

> Besides on local tests I see hits those have headers (messages like
> "Backtrace: ") without an actual backtrace and the reverse - a backtrace
> without a reason for it. It's quite annoying and worth addressing by
> syncing headers log levels to backtraces.

I suppose I'm surprised there are backtraces that are not important.
Either badness happened and it needs printing, or the user asked for it
and it needs printing.

Perhaps we should be removing backtraces if they're not important
instead of allowing to print them as lower loglevels?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106203440.GH3079%40worktop.programming.kicks-ass.net.
