Return-Path: <clang-built-linux+bncBD6MVSMOWUJRBXN2XDXAKGQEFRX4VOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D03FD372
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 04:37:03 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id i13sf6317593pgp.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 19:37:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573789022; cv=pass;
        d=google.com; s=arc-20160816;
        b=dowaS+4BIyj4XWX4dmY2J/qeAjOWi9HvtzKlYgUQ/M45hji3FSYf3/Dop18an8GY5x
         Rcopi/g29dIvPQnqaqDZFWU2AIXhMXTuk8+2kyWTHbNJKM19kNcipimOHuEzZ0rzcM2Z
         rFBB8xt92mJ9bWp2wazkLLcH99RqbcYi0PuzDjadTNPG1nXdiJuApHiOOWA/oVnI0TRA
         c5BUN/OKQYttoX2OMm0m6Z3wkr9ekEBuKjhsmGrde3zLLOv7eusOO3iDHP2Ia/MtWLYA
         xM6QXMepEZM6t9jousFsddY28AQBpiQ/QMNa/5SVP1wbloAG96IAuUUUw54r77cFE8Q2
         nHag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=F26khcs12dyVm4UKmWW/v+j4+FlP2zoXz7z55IlxqGE=;
        b=04pr3fhNdm9lctucAcVenhqokxWknYWhZ86KJyKU82DoEv57krnVbIDrWTUFT1y5RV
         BvzWEROzaDSswYVDsVclGPjjfMGyVk5oPvOxArEXmdNGI/8UGcqRjxFA+kT4a25mQOMV
         yUJmqOXzQ7aKyzG0fP/lWlJOkmb9hdyqtdmMVj3KOoIU+Q89/t48bOXjOoXW3tqu/4vr
         r6hYJHLSsm1wsKq5cIVEihBTUoYWlr6p3nSljip9Kiq7G0nTu7fARziHg0aodiZSDEoV
         uypXd1fRjFN5Uunfi4fhFn38XKUZib3FqzSkgLi0yr1+pOL0F/8icJMwPwF0GwZAOjVl
         Yvtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rosvxXmb;
       spf=pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F26khcs12dyVm4UKmWW/v+j4+FlP2zoXz7z55IlxqGE=;
        b=cU6mwHpIiHvmSzAzrV+zeidKHUFkpejb0uWNCLRKlPb5jKo3U5XmNCzkWNLGi1mFb7
         0V9+URDapkz4KSPbx/Y23OdTmgJJ8Q+pZPvZE1V50OyHGKpOe5K5a9SL6PdRB2QhmavL
         pfrArHIU/tE6URtdXs53eqA6dHiLzxgeewgsaFfkTkIsnrYqe1Gw9mqW6xxTMsb2G0aD
         tytFXoJ8hcJWKawtK+CCseH+JTex+T6sWKH6YxI87dhSyESGzwMKUbSRaHK62shDpZvQ
         KLuZtvd+ZeIteq2wR5tan0pqJeJUBP12YVY/rW6XIWsHxluzwkjyap2B32h4DWlFRoNq
         agmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F26khcs12dyVm4UKmWW/v+j4+FlP2zoXz7z55IlxqGE=;
        b=tcxUHHLPLPS38uuwVkWLgBkOwrMuVS4JzwPGUBxwzOho0xiNwWeUxpQjJrZlneC40g
         ndhKSJeglU2ZWGgRfutryFOEwEKwhV8ErERF9YRuZJRKqfhWzJ80Vp5BnZpOKLLXn1Ko
         mWGki903hcfi2AxqszpcZ3/ZIJ6bS3jr7SnXBQKHXTNCPl/6AjwFNA2dIZs4YctocDgS
         b5qAUHwUdRseoJXGREAGIRMk7kYhlx7sX4YtBUdne9bH21ZydsanG1B72l7mqb+AFgLM
         Qz4ZF08XGdyV5Yl1hTWcCfaHkWUzuaPa/oRweWooBV48MSDTKWJ1unn3sYEXg0AZWg8q
         6Zrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F26khcs12dyVm4UKmWW/v+j4+FlP2zoXz7z55IlxqGE=;
        b=jodZo0+cHV16OEc6FPgAZtcu+noBEf/97IM+YD3KfvDOsmO+2TsmKePvXvn2jtLnxl
         cSed5ydpphLug6iUY8dFLE3OZjZ5XbpvQU5O7SwPMIfPiWl/dC5jW0r+1svbeqKrq5XM
         D+d//z4/GuXBYB3xqCQkb+py5nuqxOf18U+yKeIA6tSLR38YahPmOdyozWZJP4SUWpdy
         jrkmsNHNW8EdamYV945c7DRfmn0CNUSixGZvV9mwXtee9EUrP6WSiIsFjzYp0M0zoKNe
         9N0Szxz6RKyq7OSA7xklj8Ws/P10KixRHWF61DPdhrCfBojoOZr9f4H7VQIuIsVnAEAL
         nZkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUU3Eu/gGPNTDEoWtwft7uhfM9jvfOok9W51oCm0aOYgtaXV1O9
	n9hiocbmCg2QVGV4Nw2G0io=
X-Google-Smtp-Source: APXvYqxC75T3cRHX7m3T9qyWl74VZrocGrdj+1haf4esW0402xVdKHbBkXQ9AbaYn5/De0O7Y0YFuQ==
X-Received: by 2002:a63:ff26:: with SMTP id k38mr14407595pgi.128.1573789021891;
        Thu, 14 Nov 2019 19:37:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2144:: with SMTP id a62ls1536821pje.5.canary-gmail;
 Thu, 14 Nov 2019 19:37:01 -0800 (PST)
X-Received: by 2002:a17:902:261:: with SMTP id 88mr13286391plc.322.1573789021228;
        Thu, 14 Nov 2019 19:37:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573789021; cv=none;
        d=google.com; s=arc-20160816;
        b=IWKBUWxupJXHRpDY4ijEstXbGxaRPZo0+Rzs7+EGOtzZsoasAwL+9sJBap+JLqn/DI
         5kN1x4IY+58jiZfdBAyIOyb6UKMP8jJrRWd7YlNiOrWGIZw2zU/BFwbeK5FpDeetF8Av
         NV/06Gsy0EfsDhz5AbMeY7V6UpNHYLuANO86t0O3mh2/FIwv4b75SfdUrxOnZ4N5kUsZ
         H4aXgut5lHbcdA2L2mpPpJFRV6co5n1OKFHbBGOfe6hvlfviHgPkNRGxfmL+n2Rn0aVW
         3TzXBC2gDhBoqPKQkXub9W0zn9FUzIt6jXL60XBMadr/0iMwqqXrNUigWdtJJqdHqVuE
         uS/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=R4XvROx888fXHPMG3Yq7w0aZuXsuTxn0lpM2IVqDtzs=;
        b=P3aYXCsJO0xX5CveJY8035qeF5B6F4QwpbLBTknutttHGVkLuc7JGnqdoQeVQhCVn0
         EwcerfzQsJsjMIYfjBLTWyi1MSIp7v32lFfiCGWmgM3D8T/dEoxtrX4RzQ1YSc+cbsQt
         RT31Vnf2O+94Y5SrhuxOXDYC3DOGmkYbFfopXYVuwnNYb9r3JCqKIvzbTuAsW2eWl7VI
         8bGo9TeUg9xQKp7XzgakXgGRednMIwtCI+810gYGEr9Lgkn5bmq8hEwhmzMk1fXOgXlT
         kHKU7CsS4Ayi/M/6cswBKr7FUTafQtX6jaYneHHqqx2oszzJpVNQcwTMrsCDTNL6V0xm
         nNPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rosvxXmb;
       spf=pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w2si387478pjv.2.2019.11.14.19.37.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2019 19:37:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id q22so5120645pgk.2
        for <clang-built-linux@googlegroups.com>; Thu, 14 Nov 2019 19:37:01 -0800 (PST)
X-Received: by 2002:a63:7cf:: with SMTP id 198mr13931473pgh.372.1573789020559;
        Thu, 14 Nov 2019 19:37:00 -0800 (PST)
Received: from localhost ([2a00:79e1:abc:f604:6e29:95ff:fe2d:8f34])
        by smtp.gmail.com with ESMTPSA id y22sm8178148pfn.6.2019.11.14.19.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2019 19:36:59 -0800 (PST)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Date: Fri, 15 Nov 2019 12:36:57 +0900
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Dmitry Safonov <dima@arista.com>, Petr Mladek <pmladek@suse.com>,
	linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
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
	x86@kernel.org, Chris Zankel <chris@zankel.net>,
	Max Filippov <jcmvbkbc@gmail.com>, linux-xtensa@linux-xtensa.org,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-pm@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Jason Wessel <jason.wessel@windriver.com>,
	kgdb-bugreport@lists.sourceforge.net
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191115033657.GA407@tigerII.localdomain>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
 <20191112021747.GA68506@google.com>
 <20191113103922.3dc3e8e9@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191113103922.3dc3e8e9@gandalf.local.home>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: sergey.senozhatsky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rosvxXmb;       spf=pass
 (google.com: domain of sergey.senozhatsky@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
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

On (19/11/13 10:39), Steven Rostedt wrote:
[..]
> > void show_stack(struct task_struct *task, unsigned long *sp, int log_level)
> > {
> > 	printk_emergency_enter(log_level);
> > 	__show_stack(task, sp);
> > 	printk_emergency_exit();
> > }
> > // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
> >
> > show_stack() never schedules, disabling preemption around it should
> > not change anything. Should it be interrupted, we will handle it via
> > preempt count.
>
> Please no! The whole point of the printk rewrite was to allow for
> printk to be preemptible and used in more contexts. The show_stack() can
> be all over the place and is not a fast function. Let's not disable
> preemption for it.

I never said that this code should be used all over the place. What
I did say several times was that this code is for quick debugging,
when one sits behind a slow serial console and wants to tweak loglevel
of all printk-s of a particular context/function only.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115033657.GA407%40tigerII.localdomain.
