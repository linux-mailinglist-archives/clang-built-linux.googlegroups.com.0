Return-Path: <clang-built-linux+bncBCU73AEHRQBBB6GJWDXAKGQE5A2ERTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FD6FB3FF
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 16:44:58 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id u12sf1136860plr.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 07:44:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573659896; cv=pass;
        d=google.com; s=arc-20160816;
        b=vbMVNkHloMFDbHLUKxxeDSALgpoDI9tglYzvIaRpA+EsYFkw47vWjP8oshpby2axiy
         xLHT6rWAokNJoA/QjYemQ5+sxfTOXpNXQxCpoQc9bmZbzQT+bP1TYgvBmFyr8O3tzSjm
         7fJZrlc60AlPZGvslHTgYlQqOLFptnu4imgMk8wvL/PgToRmzPRDi3fcs9nOLvNZcKe1
         zxT6dgCzwmnfezKVjRSfdBDqu1gOdUmY89wfjs8OvHZWJbYIyP7FS8PX6NAxi0SQ+pHz
         yRn+jjQg1umlg3kgbn9AyQYanrFF3u4TC0jgElAYp7eB5enNzZxWLeC6pL51B8oUDI9y
         EyAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=uDCiM9qjWkoleXSTfNhWrlVbtiQQt+yoy4sfVKdR1MU=;
        b=qLP9ii8XmLGA8Ex2yFeLtJytj12dPBsfHUaIUbZ6i6kW4llnv9fkbyraFIk0wkKUP/
         cHzQ5JRFs8kV6h7ixwO+uR2IdCox+I1cK9CdSq1QiqYUUO/J/99U/gt+GExn4SQqvY51
         ih9Zau16tUmduOdB5T1CQxfeiuijtt+7EU0u+Dqc1QC0wDT1Q90ONWz7KLbBs364advg
         fZjCnjud2O86AvYMmf4I7MHSQd81PG/IoiHx5dKZY2MEkh9iylwNAOIIWRrHtAoOx4Sx
         QF/wy0FPWpH3Z582NXmIy2KWt1QG726mVueA6yqoiFzUrJNd/jEK6Wi6L+aSa2FcjU/x
         6KEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDCiM9qjWkoleXSTfNhWrlVbtiQQt+yoy4sfVKdR1MU=;
        b=Wxj70Jss69iLC8D7MZtpE3K5kWjLo7BIB1s3RzzQI6Zf1o0GWHzxu9TzevYzI4cZKl
         sH6XPzVjgiMgr3Y8zI0NcdZzijaMQ9H+MA1pvP/KEs5wYSArdXp9daSWI3YU/3BH8fsJ
         f9jf3+P93CLAClfMKDesmfSWmORJCwtqwT2xdG3C0uDAwldCYLKFRMpNne/fe2wdqzKp
         ysbY0w52UEeebIDwGjYdfa693D1mt0wDjtZvLuz/WWFB86ivDf/VtpbudIVvTXEPIJGZ
         b7WvV+x7ZuAdp1hxtGrSLB4fY7lQeieZYUFyUwNW8Jb/6FgHrdCTpHYsYCVUZImPa2lO
         nabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDCiM9qjWkoleXSTfNhWrlVbtiQQt+yoy4sfVKdR1MU=;
        b=ADAPVSZCyscfAKU2aZIvWFheMSaaoQ6Gu6O+0k3HVX2pW4EqJD0zCdm8sz4oKY097A
         mkhf2JFVZ0/7WPLOizhF1Wg1QZ5LCr/ZfeaKrPUXf0G+gf6cOZCaKQGoeivYzBkS3KYd
         vDF4OU7TcDMk3VLx0GHVbW0369mL9I3HW7DUFui8QPNrEJhFG0y+LaxPhHfYsMc8YvAC
         f12EKItY8cFafY+OzQQZKPhoJBvHb6zStWYyLTVILGHKRE4QJbvKrQXNsSkMp0421ZFp
         JV1v7B2neatnNo6jIzU5rcgg48iWmqZRt3c5qP4RhrosBz0gOLeiYVm4UXk4LAVinrxh
         s+Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhRW3BOetExwi/EWliE+1maem3/we8fjAo3j4BjQiua2WlsiXD
	OKE+7/fk/P0V8YuIWW7EFVQ=
X-Google-Smtp-Source: APXvYqzht9qBvMsJMrlNjjexK8n+p7bfCuf4oZk4Fmryr9mqzSvIrArsmMNyt3d7oSp7tWxwMB+0Zg==
X-Received: by 2002:a62:3786:: with SMTP id e128mr5301408pfa.11.1573659896712;
        Wed, 13 Nov 2019 07:44:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls668006pfb.3.gmail; Wed, 13 Nov
 2019 07:44:56 -0800 (PST)
X-Received: by 2002:a62:28b:: with SMTP id 133mr5311786pfc.204.1573659896368;
        Wed, 13 Nov 2019 07:44:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573659896; cv=none;
        d=google.com; s=arc-20160816;
        b=krJQAhbfPppiLdRwyh5nBgrFyxhssaY6kQ4LGsyOXke/bu68zn02m3fD2246f2F9Vw
         oB1SwBN+VEpksqXbg55+IIfN2+6kySqTwumGu0Bap5HIRDVLHClIniHDvb2e26Oxiim7
         rhrJ1CuE+6rrLo9YTomaqXdLUs7aEvYsHgYvpdlDT5q8qQb9OFzh+UD6KR0240jZKS9V
         1kOlj6xmNfHaXrE5yMCw9vCIblLYtZRZBgGwv7r3K3VoVJUNA9trF7vlA1SnLuKFvplQ
         JYwxFr/fnIY6VTIc1MK5zaIRpyj6r8Ew1sKh5qdDMPUJyOmzlhfpzoI4Yac1FCsdHKND
         r42Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=PjKbMCDogw8K3hHGzQtlDb/oXh6Z3jDPdDpuBIhKsSU=;
        b=aIDjJfotXcJ+u/QR7FtNwqUGPLFU5uNbEhqMCtLEBDrwhOwvLP57/nbK13oFLDMG4s
         iWVyQF+i44CcgM2gRWUALHywar6oKcRz/lMBGPyrNsCa8IjxQJ/eDhssgxScwW6CLw5J
         VK25DZDBQh7zV170TkT7ghmiM8CFOC9hATfsZvUFD7CfjbPjE17sP1ido+ftqDvkhwGv
         idNlMHkF642rPBSQOxva97aXEV4xyfCiu4yIyvoUkWPgimZl5NjvfimQ8lP/bcIX+PXg
         sBP5k6fAOl8wOeN+mOjmBN2iykjo2shjD8Z2ddC97jgQKHnpHJw0VtKQxppIGfkzWidB
         GTAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si97886pjb.0.2019.11.13.07.44.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 07:44:56 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4850B225AE;
	Wed, 13 Nov 2019 15:44:48 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:44:46 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Peter Zijlstra <peterz@infradead.org>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>, Andrew
 Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Ingo Molnar <mingo@kernel.org>, Jiri Slaby
 <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky
 <sergey.senozhatsky@gmail.com>, Tetsuo Handa
 <penguin-kernel@I-love.SAKURA.ne.jp>, Albert Ou <aou@eecs.berkeley.edu>,
 Ben Segall <bsegall@google.com>, Dietmar Eggemann
 <dietmar.eggemann@arm.com>, Greentime Hu <green.hu@gmail.com>, Ingo Molnar
 <mingo@redhat.com>, James Hogan <jhogan@kernel.org>, Juri Lelli
 <juri.lelli@redhat.com>, Mel Gorman <mgorman@suse.de>, Michal Simek
 <monstr@monstr.eu>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton
 <paulburton@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Ralf
 Baechle <ralf@linux-mips.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Chen <deanbo422@gmail.com>, Vincent Guittot
 <vincent.guittot@linaro.org>, Will Deacon <will@kernel.org>,
 linux-mips@vger.kernel.org, linux-riscv@lists.infradead.org, Ivan
 Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner <mattst88@gmail.com>,
 Richard Henderson <rth@twiddle.net>, linux-alpha@vger.kernel.org, Vineet
 Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com,
 Catalin Marinas <catalin.marinas@arm.com>, Aurelien Jacquiot
 <jacquiot.aurelien@gmail.com>, Mark Salter <msalter@redhat.com>,
 linux-c6x-dev@linux-c6x.org, Guo Ren <guoren@kernel.org>, Yoshinori Sato
 <ysato@users.sourceforge.jp>, uclinux-h8-devel@lists.sourceforge.jp, Brian
 Cain <bcain@codeaurora.org>, linux-hexagon@vger.kernel.org, Fenghua Yu
 <fenghua.yu@intel.com>, Tony Luck <tony.luck@intel.com>,
 linux-ia64@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-m68k@lists.linux-m68k.org, Ley Foon Tan <lftan@altera.com>,
 nios2-dev@lists.rocketboards.org, Jonas Bonn <jonas@southpole.se>, Stafford
 Horne <shorne@gmail.com>, Stefan Kristiansson
 <stefan.kristiansson@saunalahti.fi>, openrisc@lists.librecores.org, Helge
 Deller <deller@gmx.de>, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, linux-parisc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Michael Ellerman
 <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org, Christian Borntraeger
 <borntraeger@de.ibm.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org, Rich Felker
 <dalias@libc.org>, linux-sh@vger.kernel.org, "David S. Miller"
 <davem@davemloft.net>, sparclinux@vger.kernel.org, Anton Ivanov
 <anton.ivanov@cambridgegreys.com>, Jeff Dike <jdike@addtoit.com>, Richard
 Weinberger <richard@nod.at>, linux-um@lists.infradead.org, Guan Xuetao
 <gxt@pku.edu.cn>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin"
 <hpa@zytor.com>, x86@kernel.org, Chris Zankel <chris@zankel.net>, Max
 Filippov <jcmvbkbc@gmail.com>, linux-xtensa@linux-xtensa.org, Len Brown
 <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>, linux-pm@vger.kernel.org, Daniel Thompson
 <daniel.thompson@linaro.org>, Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191113104446.419e4d8a@gandalf.local.home>
In-Reply-To: <20191106232512.GU25745@shell.armlinux.org.uk>
References: <20191106030542.868541-1-dima@arista.com>
	<20191106092039.GT4131@hirez.programming.kicks-ass.net>
	<10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
	<20191106203440.GH3079@worktop.programming.kicks-ass.net>
	<20191106232512.GU25745@shell.armlinux.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
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

On Wed, 6 Nov 2019 23:25:13 +0000
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:

> On Wed, Nov 06, 2019 at 09:34:40PM +0100, Peter Zijlstra wrote:
> > I suppose I'm surprised there are backtraces that are not important.
> > Either badness happened and it needs printing, or the user asked for it
> > and it needs printing.  
> 
> Or utterly meaningless.
> 
> > Perhaps we should be removing backtraces if they're not important
> > instead of allowing to print them as lower loglevels?  
> 
> Definitely!  WARN_ON() is well overused - and as is typical, used
> without much thought.  Bound to happen after Linus got shirty about
> BUG_ON() being over used.  Everyone just grabbed the next nearest thing
> to assert().
> 
> As a kind of example, I've recently come across one WARN_ON() in a
> driver subsystem (that shall remain nameless at the moment) which very
> likely has multiple different devices on a platform.  The WARN_ON()
> triggers as a result of a problem with the hardware, but because it's a
> WARN_ON(), you've no idea which device has a problem.  The backtrace is
> mostly meaningless.  So you know that a problem has occurred, but the
> kernel prints *useless* backtrace to let you know, and totally omits
> the *useful* information.
> 

I would like to bring up a topic for the next maintainers summit
(although I may not even be there), that we define a clear use of
WARN_ON(). I use it only if the code does something I do not expect it
to do, and is considered a bug in the code if it triggers. But it
appears that some drivers use it for "oh I didn't realize this hardware
does something I didn't expect". And is ignored when the warn on is
triggered and reported, with "you have buggy hardware" but my hardware
appears to work just fine!

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113104446.419e4d8a%40gandalf.local.home.
