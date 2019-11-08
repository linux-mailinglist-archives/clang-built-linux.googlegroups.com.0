Return-Path: <clang-built-linux+bncBDTKPJW47IKRBOVPS3XAKGQEDSOULZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 82386F5113
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 17:28:42 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id l1sf4783641ede.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 08:28:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573230522; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJWDEJ272xlITp3b5MJ6yaoQHFPp54AmESyFXByKR5oKyVuQFgrBRWn3G3PctnMnnv
         Aio1a+YpOhZT+Eq6hdTI90MeTdtG9euwvOcBVyAWvjunKXf24uUykO3tJ9QgJc/Ka8sJ
         DGCL3zYxWWxXufQYeMJra7Yy8ttVW5QC7nm+BmL2apzlV7ODLC2pQ+1z4cP1lWDz4fcd
         ljDmZnc0H2FVLGTIWTflh+WeHIdMqZ+wnC+N+nAr10i+8aKGB/2S1Fdg310/MZhXgGBl
         T0HPUN1MY0V7carae7tJel6HXcrc1f4oTf5FSd4F+OA4TOPr80y+snWvtJZVslPdl0w2
         ksFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fDxNhQe3aURaLkk7Nt07LsaJ0EGTa/lSqPjoesVdA+M=;
        b=tAMCzNOoyvQ0IGJj6rnB/6sxmfs7TitXmW86yRHvipglkEw/bvKTeMf4yoIu4XqF4h
         20L0WofBl2DgdBHmBNRzJCtb06vG6IXKdSks0GsAWuj9DCgXLLqD7rbrLNeppp0RgjwU
         wt9I+oYgBfDHiKP7aCI9+llxZeay35yIatjaV59Ci9tPC2CxLAOUWSA7eyo2nP/a4l1W
         0w66e/fqtjvrmERqjLcHsXMWTHZcVo9Bi8B0hlBsdppJNJbJWgNCU83uHySQgBUIhaU5
         eIM8hly3YVOyV2rMZQuATdeVwZ7yKdqsAud6vMnd5/zmuBIBH7DGQkxRvjbkditUpIpQ
         R0lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=OFQ83MN4;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fDxNhQe3aURaLkk7Nt07LsaJ0EGTa/lSqPjoesVdA+M=;
        b=P8ruVwmicC9SwAsQxDKbWsn3pvGbxlEdzWbCsIU+4aZjdE2LGjE3Zq+QCIajaaUpN0
         WnZVZCXSbyXnTyczlfBTassQEGwCLAep7lwSQdPX5wFiy/RZhnjTIYgzPANDuHno16Nn
         DWOXk0y58p/8wqad1Wkculy9U5xJ5gVpDAB+e+ISwhviud6AJpIP2XPzZkIGzrKeaNDR
         C/FSfIXPupDdJ3hs0hmzaOr3z14205YrBIDF6pRcp5jrjNESBS/q/Z/0j44PD6NXp/uZ
         9sJuO77CxhMsgFoIUUcWc8d8k+7qOCR8eUy9qXcKvmMcXYjPvcDGqZSlGCrY14lBIsfp
         2/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fDxNhQe3aURaLkk7Nt07LsaJ0EGTa/lSqPjoesVdA+M=;
        b=qdijZXh6K/2nwUH1UYwsC1nCUNc8cnBQEk5XOkKdbKUr1XIaTkaDNNtCLIm+fWi3wb
         tu7dUT5jG6A4A9JElKW453AOjAQnpYdct9O+O5vsOyMlbepXsaCUUX1FtCU4D0ji1nTP
         oY+Uuj/tl2Qa235QnC2Hf9NpSSNlFJ2i1mXVf2IwazDJjpxPXLOSG04hKQTvnzVjTeN2
         nCRuzha70/2tc8M7HXlGALUe6rlli4ri+ASp/wscBqfvbwmXfoxvhd3+eRCNzSJFbXGI
         ILVq8F8d3rh8NZF8HWpDKfnKJZK2K4CsCkcY11gBAths22phP7XemKwLpUvYdeaB2x0t
         J9Vg==
X-Gm-Message-State: APjAAAUjpEL80nrJbEWmJsfNApOFhfMZvpkXdImHwzXUQ6lMIF+Ojr3S
	9RqjziWgmGvHlk7CJwwGv4M=
X-Google-Smtp-Source: APXvYqzvtX5yvSaHFNDrgf/1hLAHQLH7AZXb9j3UbwTJ1C9Qfutdtd6OEccK6o3DaFcFicFGoCI9kg==
X-Received: by 2002:a17:906:74d7:: with SMTP id z23mr7755876ejl.1.1573230522221;
        Fri, 08 Nov 2019 08:28:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:e2c1:: with SMTP id gr1ls9222ejb.16.gmail; Fri, 08
 Nov 2019 08:28:41 -0800 (PST)
X-Received: by 2002:a17:906:f0c9:: with SMTP id dk9mr9634817ejb.56.1573230521753;
        Fri, 08 Nov 2019 08:28:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573230521; cv=none;
        d=google.com; s=arc-20160816;
        b=QHGeGLp83J/5HkKLI/nYsWJTymfbBX71BiGXZisbZTSFvl2G+6nmLUA/hrhv5O6ZOu
         yYKlOZXRpa8C8/dCCvpysSEarWmHsS2DY3uUuGkd87mRKaSFknBRuOuB/2UNKjM0a2Rz
         sXk6LM7JUjsoT0S7qx+nVLvDGlCdETH2VMMsy9v0kQhn8AAYCBpG2HCVBwhIDrpwO7Df
         SXmpBIfP96kRr+vL8OBdF0/ShMUrpluirEMpCeZf5ZKowevGjzJBbTCdkWzZ/qupLuYk
         CiwsPu9ba9EKbwZ1mUg3KiBvrY9Oba7iAU6NoMWdWP3obDrhtgAI7Z3i5iJEf9hrgsJw
         vwiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g8y3Kv95ejyL7msYqyPIoRMuCM9aKky/CsOCvaHvzKM=;
        b=z/W3sM8bN5FhlJ9I40+LRbsriaahbr1JGAM0s3vv1FMqCXvXdCZ9CIWUwRGTS28wv9
         qe0ts/fjerAZB3IYToH07HF5DI581l8fVOCSQVNsMiY8SRmIusB9J+eWUg1hgWY1qRBU
         qCST/QXEdoaqWsJdqkofbXejYZsbbFKbk8h1PBehE+yXUTPTm7bZjh7eb5asjIIC2UK1
         7hThGl7yvpaZYwdg7dod65OeeWd/CJsCpLdfTucZ7Bw5CrddVSv1nW51nDhpFMVgF//b
         tsZPioBXo5NIYCp+iiVFXGbNIjJjKCeCwGHOIhhC3AQfKIcpsAKFUE4s/Coj+2FoedXa
         Mqrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=OFQ83MN4;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id l26si386322ejr.0.2019.11.08.08.28.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 08:28:41 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id v4so4899729lfd.11
        for <clang-built-linux@googlegroups.com>; Fri, 08 Nov 2019 08:28:41 -0800 (PST)
X-Received: by 2002:a19:ab11:: with SMTP id u17mr7519021lfe.78.1573230521103;
 Fri, 08 Nov 2019 08:28:41 -0800 (PST)
MIME-Version: 1.0
References: <20191106030542.868541-1-dima@arista.com> <20191106092039.GT4131@hirez.programming.kicks-ass.net>
 <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com> <20191106203440.GH3079@worktop.programming.kicks-ass.net>
In-Reply-To: <20191106203440.GH3079@worktop.programming.kicks-ass.net>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 Nov 2019 16:28:30 +0000
Message-ID: <CAGrbwDRgX1BZoFrVYSXhAeeUKHrB=q3w8jXFPOuRvO7HV4Ciqw@mail.gmail.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Peter Zijlstra <peterz@infradead.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>, 
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, Albert Ou <aou@eecs.berkeley.edu>, 
	Ben Segall <bsegall@google.com>, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Greentime Hu <green.hu@gmail.com>, Ingo Molnar <mingo@redhat.com>, James Hogan <jhogan@kernel.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Mel Gorman <mgorman@suse.de>, Michal Simek <monstr@monstr.eu>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton <paulburton@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Ralf Baechle <ralf@linux-mips.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Vincent Chen <deanbo422@gmail.com>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Will Deacon <will@kernel.org>, linux-mips@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Ivan Kokshaysky <ink@jurassic.park.msu.ru>, 
	Matt Turner <mattst88@gmail.com>, Richard Henderson <rth@twiddle.net>, linux-alpha@vger.kernel.org, 
	Vineet Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org, 
	Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, 
	clang-built-linux@googlegroups.com, Catalin Marinas <catalin.marinas@arm.com>, 
	Aurelien Jacquiot <jacquiot.aurelien@gmail.com>, Mark Salter <msalter@redhat.com>, 
	linux-c6x-dev@linux-c6x.org, Guo Ren <guoren@kernel.org>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, uclinux-h8-devel@lists.sourceforge.jp, 
	Brian Cain <bcain@codeaurora.org>, linux-hexagon@vger.kernel.org, 
	Fenghua Yu <fenghua.yu@intel.com>, Tony Luck <tony.luck@intel.com>, linux-ia64@vger.kernel.org, 
	Geert Uytterhoeven <geert@linux-m68k.org>, linux-m68k@lists.linux-m68k.org, 
	Ley Foon Tan <lftan@altera.com>, nios2-dev@lists.rocketboards.org, 
	Jonas Bonn <jonas@southpole.se>, Stafford Horne <shorne@gmail.com>, 
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>, openrisc@lists.librecores.org, 
	Helge Deller <deller@gmx.de>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, linux-parisc@vger.kernel.org, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <heiko.carstens@de.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org, 
	Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, sparclinux@vger.kernel.org, 
	Anton Ivanov <anton.ivanov@cambridgegreys.com>, Jeff Dike <jdike@addtoit.com>, 
	Richard Weinberger <richard@nod.at>, linux-um@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Chris Zankel <chris@zankel.net>, Max Filippov <jcmvbkbc@gmail.com>, 
	"open list:TENSILICA XTENSA PORT (xtensa)" <linux-xtensa@linux-xtensa.org>, Len Brown <len.brown@intel.com>, 
	Pavel Machek <pavel@ucw.cz>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-pm@vger.kernel.org, 
	Daniel Thompson <daniel.thompson@linaro.org>, Douglas Anderson <dianders@chromium.org>, 
	Jason Wessel <jason.wessel@windriver.com>, kgdb-bugreport@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=OFQ83MN4;       spf=pass
 (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::144 as
 permitted sender) smtp.mailfrom=dima@arista.com;       dmarc=pass
 (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
X-Original-From: Dmitry Safonov <dima@arista.com>
Reply-To: Dmitry Safonov <dima@arista.com>
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

On 11/6/19 8:34 PM, Peter Zijlstra wrote:
> On Wed, Nov 06, 2019 at 04:27:33PM +0000, Dmitry Safonov wrote:
[..]
>> Sorry, I should have tried to describe better.
>>
>> I'm trying to remove external users of console_loglevel by following
>> reasons:
>
> I suppose since all my machines have 'debug ignore_loglevel
> earlyprintk=serial,ttyS0,115200 console=ttyS0,115200' I don't have this
> experience.

Yeah, I remember you avoid all those functionalities of printk(), fair
enough. On the other side, regular users and I'm betting most of
the non-tuned distributions use /proc/sys/kernel/printk by default.
(Checking on my Arch & Fedora - loglevel 4 from the box)

>> - changing console_loglevel on SMP means that unwanted messages from
>> other CPUs will appear (that have lower log level)
>> - on UMP unwanted messages may appear if the code is preempted while it
>> hasn't set the console_loglevel back to old
>> - rising console_loglevel to print wanted message(s) may not work at all
>> if printk() has being delayed and the console_loglevel is already set
>> back to old value
>
> Sure, frobbing the global console_loglevel is bad.
>
>> I also have patches in wip those needs to print backtrace with specific
>> loglevel (higher when it's critical, lower when it's notice and
>> shouldn't go to serial console).
>
> (everything always should go to serial, serial is awesome :-)

Personally I agree. Unfortunately, here @Arista there are switches (I'm
speaking about the order of thousands at least) those have baud-rate 9600.
It's a bit expensive being elaborate with such setup.

>> Besides on local tests I see hits those have headers (messages like
>> "Backtrace: ") without an actual backtrace and the reverse - a backtrace
>> without a reason for it. It's quite annoying and worth addressing by
>> syncing headers log levels to backtraces.
>
> I suppose I'm surprised there are backtraces that are not important.
> Either badness happened and it needs printing, or the user asked for it
> and it needs printing.
>
> Perhaps we should be removing backtraces if they're not important
> instead of allowing to print them as lower loglevels?

Well, the use-case for lower log-level is that everything goes into logs
(/var/log/dmesg or /var/log/messages whatever rsyslog has settting).

That has it's value:
- after a failure (i.e. panic) messages, those were only signs that
something goes wrong can be seen in logs which can give ideas what has
happened.
- before the failure, those messages go to telemetry and can be
auto-magically processed remotely to take a decision (e.g. balance the
traffic away).

I wish all the information could be gathered in the userspace, but many
existing kernel/driver messages are valuable. A more detailed example is
hung task detector: we want to have the backtrace for a task that is
in uninterruptible state too long, but only in logs as printing on
serial console may lead to holding console lock and watchdog.
Besides customer notifications and investigations, I see the value of such
"bottleneck" warnings during long-running integration tests.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGrbwDRgX1BZoFrVYSXhAeeUKHrB%3Dq3w8jXFPOuRvO7HV4Ciqw%40mail.gmail.com.
