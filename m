Return-Path: <clang-built-linux+bncBDTKPJW47IKRBN7EWDXAKGQENM6IIWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F848FB563
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 17:41:28 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id l8sf1779470qtq.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 08:41:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573663287; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8UF+VEXOuWgaNGihRKrbAEU+gNLra2AEsn56f05lz3p86GcEIb6aIP4ElnUxDEoc2
         TjCyr2MFW0vpMH7cT3/NGidTrX96+y7DPgkW1FEaHJ/3GjOTlF8S2uov/4yCxoUH5UPH
         jXhSsHpoeIMBHpKaobubCvNM0iZ5VjYBmSr/300DZjIk+1qrTG/hNvt5LKeLE4sIYWn8
         Tv2IrsuNWKkPjFIqiDH9B4xBdOtcD10nO4lsRhZ8tv+8ypz11gjoyhv7dB+LU4VlSH+d
         hGC1zPY+5X1roWR193S97GH4lCWFgzX9310JwBGWmN5/dlVU+X9DxhNvDiOSI98h0BoG
         qdnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=4I195o/x9OsUIM5GstaPjSWXPAcW70pEnANWztfkkNI=;
        b=V0/i3z3Qkt5VZ5aggg+DQnLaM1de3rGyAd+6/JkuJ0Z5nuRHH9sra5g4i19w5IUJ9C
         PMcvJL+hkJWU3u+daWYrqXmPS/3fJJ9+JSTEjVuBVFBT3HkBb7G04brzxtft1gAnfbwI
         I1jdaE/G129qI3St/WCIcUYqCLM+vTIExErPPot+h+92hPNKX0fVLXIvBl/BEY48Kbki
         lwUMwIaaUYLNdtP9oZ6wXiOHjhLZXAmNoUSs054mugyb4BqNHncxKwqbo52+6UDC9Ysx
         6v1Sn8TCFYr2QpVEIHau0//9z+d37UzFE6HTARubvIN3+/0IYzdUrBi2v2dNV6aPcZij
         DcTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=kRXw4Avo;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4I195o/x9OsUIM5GstaPjSWXPAcW70pEnANWztfkkNI=;
        b=YTwjZB2VmqCB+BkmsF58TL988IjT5vxANBe8GIlhn4Aepe13huA1dwyuvkQETaLpEc
         HsVreBVLnpmWONsOhbJnqEjOA9phlxlLPP24llJIvv4RrleuBPAc6B5FDB1wtnfv+xTO
         p7mQKTH0487pUW2bwjEmRQ4GQpIDOZ4y/YYTfbPPAK1jQmAFPhz5iTaQ4JjwaL5JGt2A
         TXZs3ZpRlilfhSyDBhySMT60lcCgJVgHdzw3S6uO5v4n3WasN6OzieG4qS0puZcb2PX/
         cf6pkDPjp5Gew5v0uG+lQ+EXDSNrOp58F4QIxR2zD7UyJWd5D7FqtD1yeIC+mP15kXh3
         lHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4I195o/x9OsUIM5GstaPjSWXPAcW70pEnANWztfkkNI=;
        b=l2RlIc/l9OpcHp4ud6qdx9OQatjbfIormPVm0/EG39F6+NcjQIqo6e6Bfiym9lWx0r
         5Juzmy22Gbv767dNMkstdztJmm5vByNf4FNGdmVRYktRf6DEUnoOPMDiifQWDU6UWX7F
         B5H6rMhAnp3Ji0ECFI63uII+OEhMzFQ1RoX1BcHB8XB6BkuQAWDt026zHHy+rnRC2QFR
         AN32g7Hj54na7KW+I/zIDvtjHqm7mrLOFOBjaqcxP6CMg3Tvx55umJGhm4P1u0aN/IAO
         ALs80RBhcrpsEPW/8kMRvpTTvaMPp3k4i/vAV7aijxIU5g/DiowVp6RPLfDDWcVTaKd0
         874A==
X-Gm-Message-State: APjAAAWFqv3DMl3VzFbPk6Gm0A0yH/yUaOPn853rCQVXQa0nyOLF/78y
	RNdHLtSBUJ6EIGs5/7aYcr8=
X-Google-Smtp-Source: APXvYqx/TtZdgBOovC9zv3tAvk0ybQDK00Gf84MXhboGFZuKZjePDtEoB1H6jwzLJvJ/HWdSSCfH8A==
X-Received: by 2002:ac8:754c:: with SMTP id b12mr3509508qtr.291.1573663287144;
        Wed, 13 Nov 2019 08:41:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3025:: with SMTP id 34ls934976qte.1.gmail; Wed, 13 Nov
 2019 08:41:26 -0800 (PST)
X-Received: by 2002:aed:228b:: with SMTP id p11mr3612999qtc.196.1573663286715;
        Wed, 13 Nov 2019 08:41:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573663286; cv=none;
        d=google.com; s=arc-20160816;
        b=r8dOyjF9+TadRnKgL9OSgPAYIGzSvWBzQU1cTrvYtKHa0cBf+yzPui6Kdjl91QPVmA
         KxcZY0xVL62zL30gNiYNbyTzYq8vjLwz6oigG9Kxw9OjxYGFI97V2+mzMNqwFIQwsEzN
         TZKn/LC8PWPaRe7hrtFObLo6lHtARoi6ekn4/8Bg7PJuHPvse6T7gCJz1KHFcjZF2ncQ
         T/01cd54bcJMizNZFAf3md9ec6D/t7tQF24IPugsqDIjCW9vVwTzwpivD69IrdGziTIb
         kf338V7v5Hol0olQeAlK2cKg8d+9NYubY1xjnkK2XxTNrSF0nntmP7rgI/1JYnqFmM2s
         VxCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bpYMERXodNN3/IUKFqoV3bu09Kfnjp4MDDbBxGqTaak=;
        b=m3uWHdPpLLuwj16Lo9XZ+9fREEMARztsXh6Ejt0aqw2Oc5l3AYSJXl67VCrEFInwAI
         UBl4ljP7hi8Ll9QV/IVFZ4rpkhc/aeP6IO5oX3kQdURuc7384wrHrl+aoZ8iuJZsILH7
         IBW0i7X4sfLDGuuMEQ2sNOiUuEqWsZSy+aUlrBjda4DWMXxyp2cZM2kRLboWiEylH64w
         yqmu10gNYci/JwYKMFcC1grEGKurvpY6e/xn1NObstGe6wRAWbC2heGxeHCKRKEeQMxB
         9FIbfU/Az6xBKcwVzi+fjaC7E7yWlXRT75FwJXGw6buRvp0rn2L5dffFulaZ2a+K+bmY
         4tUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=kRXw4Avo;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j194si153584qke.0.2019.11.13.08.41.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2019 08:41:26 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id q22so1722775pgk.2
        for <clang-built-linux@googlegroups.com>; Wed, 13 Nov 2019 08:41:26 -0800 (PST)
X-Received: by 2002:a63:c55:: with SMTP id 21mr4829337pgm.282.1573663285447;
        Wed, 13 Nov 2019 08:41:25 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id h4sm2954304pjs.24.2019.11.13.08.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2019 08:41:24 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ingo Molnar <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Albert Ou <aou@eecs.berkeley.edu>, Ben Segall <bsegall@google.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Greentime Hu <green.hu@gmail.com>, Ingo Molnar <mingo@redhat.com>,
 James Hogan <jhogan@kernel.org>, Juri Lelli <juri.lelli@redhat.com>,
 Mel Gorman <mgorman@suse.de>, Michal Simek <monstr@monstr.eu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton <paulburton@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Peter Zijlstra <peterz@infradead.org>, Ralf Baechle <ralf@linux-mips.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Chen <deanbo422@gmail.com>,
 Vincent Guittot <vincent.guittot@linaro.org>, Will Deacon <will@kernel.org>,
 linux-mips@vger.kernel.org, linux-riscv@lists.infradead.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner
 <mattst88@gmail.com>, Richard Henderson <rth@twiddle.net>,
 linux-alpha@vger.kernel.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-snps-arc@lists.infradead.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Mark Salter <msalter@redhat.com>, linux-c6x-dev@linux-c6x.org,
 Guo Ren <guoren@kernel.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 uclinux-h8-devel@lists.sourceforge.jp, Brian Cain <bcain@codeaurora.org>,
 linux-hexagon@vger.kernel.org, Fenghua Yu <fenghua.yu@intel.com>,
 Tony Luck <tony.luck@intel.com>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-m68k@lists.linux-m68k.org,
 Ley Foon Tan <lftan@altera.com>, nios2-dev@lists.rocketboards.org,
 Jonas Bonn <jonas@southpole.se>, Stafford Horne <shorne@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Helge Deller <deller@gmx.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-parisc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org, Christian Borntraeger
 <borntraeger@de.ibm.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, sparclinux@vger.kernel.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, Jeff Dike
 <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
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
References: <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com> <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com> <20191113012337.GA70781@google.com>
 <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
 <20191113063334.GA147997@google.com>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <578d041a-3ce5-28bb-9fcc-cf90fe82b036@arista.com>
Date: Wed, 13 Nov 2019 16:40:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191113063334.GA147997@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=kRXw4Avo;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as
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

Hi Sergey,

On 11/13/19 6:33 AM, Sergey Senozhatsky wrote:
[..]
> Well, here we go. There is a number of generally useful functions that
> print nice data and where people might want to have better loglevel control
> (for debugging purposes). show_stack() is just one of them. Patching all
> those functions, which you have mentioned above, is hardly a fun task to do.
> Hence the printk() per-CPU per-context loglevel proposition. The code there
> is not clever or complicated and is meant for debugging purposes only, but
> with just 3 lines of code one can do some stuff:
> 
> 	/* @BTW you can't do this with "%s" KERN_FOO ;P */
> +	printk_emergency_enter(LOGLEVEL_SCHED);
> +	debug_show_all_locks();
> +	printk_emergency_exit();

Not that I want to critic your proposal more, but just to clarify what
I've meant by "cleaver and complicated":

I don't think semantically there is any difference between:

printk_emergency_enter(LOGLEVEL_SCHED);
printk();
printk_emergency_exit();
vs
printk("%s ...", KERN_SHED, ...);

I was speaking about complexity not about usage, but about realization
inside printk_emergency_enter(): there will be some business logic that
will do "it's NMI? Use loglevel given. it's KERN_ALERT? Don't downgrade
the loglevel..." and other smart details those are really logic which
one have to think about and later maintain.

There will be also minor issues like people inserting print with one log
level and seeing it in dmesg with another, but I presume those
printk_enter() and printk_exit() will cover little amount of code
without much nesting [as long as it's not getting overused]. And also it
can be documented and people will learn about another feature of printk().

And this year I've seen the presentation "Why printk() is so
complicated?" and I presumed that the approach is to keep things as
simple as possible.

In conclusion:
I see that your proposal also solves the problem [except preemption and
some pr_debug() that shouldn't be printed]. And I think your approach is
better in the sense of short-term (we won't have any missed %s KERN_ in
linux-next), but in a long-term it adds some amount of business logic to
printk and another feature.

Just in case: again, I don't mind, it's up to you, maintainers of
printk. It's also not very fun for me to create those patches.
But they fix console_loglevel issues (I hope we could un-export it in
the end) and also I need it for my other patches those will produce
warnings with debug loglevel when configured through sysctl.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/578d041a-3ce5-28bb-9fcc-cf90fe82b036%40arista.com.
