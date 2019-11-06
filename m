Return-Path: <clang-built-linux+bncBDTKPJW47IKRBDPJRPXAKGQECYO7KHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D92F1B28
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 17:27:58 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id u20sf18022811pga.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 08:27:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573057677; cv=pass;
        d=google.com; s=arc-20160816;
        b=d1cFmes5G9BcSK6HpLaWZ8CzZRjUaXYMZtsDDmFC9EL/zaL9di6CXimyQknVEIFyTo
         S500p3GaAq73f7Ixap6Pr8SwueNwRzJ6azoFN7INxoMHPpzbVGsFc/5o8qTYDs6k4MXb
         1objFcdv+CXIPByPxq+Pyxp15BrTiRzWoU5g4vjsUnCQDmlRxqErUZbwIb0cY1Ro7eec
         5NW2BRuONKV6p2o5znWs7p1mh2IZUYwpCN3NJ9EMFmTMovd05DCKnUFz41wA0uSLc4z3
         G5Fk9/fHrkwL2lkBPxaaZzJRTeb6Xdy6BbKX+AcWE44+SV7k5fi2h2Y+6Y/be6SWGdnR
         KZpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=6I/RO1nMuT9AizmUHhyJ0csPhJFIrAKfvmKuOz0EEx8=;
        b=BhdAEqNKLTezaXJktGAAWqK8/OhuBMIgFijd6daPCsrrziJtqJTX3+aZSp2VbKfwJH
         eHbP0cFkOHXoR/HBjbDDbFUvoI6PNdHnIQEHM74z13dBCOJs6MSKX64pLuAcWqrEAJnJ
         Qh90WweEcB2WCf86WKb2Sq+n6yDp6cDEEFg54UpWDqNcUoD04SqYjT6/jU7U9wfpauoq
         FFvYBnkq/d4g+0X0WBmaXPEyqKoDGmGfXvCwkHNsLc7WXHx0ztaNsOMstlT6JjlZij6+
         /QM8RQ7lKeCFSbx3JjYo9d/xqJkC1Y8ud1UvFy0Ju/4EAZVhljFu48tlJCHYw2w+G7zP
         EUFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=CdDAyQ43;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6I/RO1nMuT9AizmUHhyJ0csPhJFIrAKfvmKuOz0EEx8=;
        b=St1nIgeFZgNZP1Pd5nSIZd+SatNLRjg2DHIJSmDctekevsLN8aFBfszywhWSdQdIWs
         mlJdxbo56C5CVBNLcCDuz3AUKkOjWB3xl6+qMaszXIVKrHWY6CgeReRX1R69dNPHZIvR
         1h9DDuPf9CFzV6kSjMAu33n6Q1VoJcJUAr5EE8dIMRmSe7oDfNzm5bbFh0sfgvyUz9S5
         v9204E0s2fcKvGR4T7hvlEleqVFM11519hG+dhU0t189Mp9DBpkacDhdtHt/FEpfTgxc
         k3z13jc8tYv65w3BaxX2lAE6NBhXMmvbtvwcwnWbzvf38WTaLLQEJlA3i6odchxI/Cw9
         s0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6I/RO1nMuT9AizmUHhyJ0csPhJFIrAKfvmKuOz0EEx8=;
        b=HoEsG6283QQr87FAfGunXTRqwwDgVSRkA/rUfU6Ht/MTE/3IiVFQ7C7rOZLqI0uslG
         K0++B8BHIarJzGfhbHHHGmwhOUbZDGovbyy4w/02V5tYW81nW4+QxX++b/JSeE6hpkbY
         BbBW0wrdOM66uLPYJhVluREAjkUGNtdxxsmoxo3p9HWVsPtzi2LXEBW77hYLHJP+oKRf
         Y3O5tHrUH2XIui2Vru1PyIGNOLudOyTicOEcR0acbH/xq6R+/kVPmioQYY3OKM99btv2
         hiJ1GeZkLXEfi8lfYjQi7t9H/w3KXE6RqDmquR4m2oy9mvU/C0Y7CP7zfYhYqsv4ITd3
         nVAw==
X-Gm-Message-State: APjAAAXyziJMNWvDsWHpi74y4QzLWWhrLkEm0y8/MxPoa10yxI2IQTcG
	oA/PbJKaVhQuhA2R+DTMQGU=
X-Google-Smtp-Source: APXvYqx6ge708kXzfuxVSXzClFlVJaXJROnPyopu+dhdHeSmO+Uht1tgsFL6PM/IFPAo1+0dtOAHYA==
X-Received: by 2002:a63:e307:: with SMTP id f7mr3947770pgh.101.1573057677127;
        Wed, 06 Nov 2019 08:27:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7783:: with SMTP id o3ls710524pll.4.gmail; Wed, 06
 Nov 2019 08:27:56 -0800 (PST)
X-Received: by 2002:a17:90a:ba17:: with SMTP id s23mr4975626pjr.78.1573057676784;
        Wed, 06 Nov 2019 08:27:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573057676; cv=none;
        d=google.com; s=arc-20160816;
        b=0GjyX8Q8+D4VQyB41NPZDnVcZajYJet5j6Dst+/1Bm45wbL8XKwH+NfwGJH1Gpza13
         XEdesoYTEduRXQmQvbkiwlxL8seVopP0G3KNDKDca7HXnQmiPsm8yhdocsKGPhOkZ9ZQ
         yY0OWl18dO1bPjLNPTYO5oHzLSN9HvHbJxFQfY/0A6DRKU8aCl86VTQEmoOk3aMtZI3k
         d3RAWIXrz21qE0vQpW++FjEIle0EkegYbhw3ge6BoD78w9XY2OhW/HADJwSaf1q4tg0A
         uZxQt5sJLJHj0JItZ+3O6MuoZrz0DfSB+gfd5MSNcsW0+N7zVmC/GI9e7e8bNmhNr8l8
         bukA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ILRv70ifsS4R/1VQKE/+LZSUA7puynZg3ILLVfy9hZk=;
        b=PH5meAlzcNT+hmYcRmkvj1a9Zv4kM2MrE7MaDw/B78dnQBSzXeXRnlCv15fQ9xntiw
         aY4EvPaux0TsGU62Il7Tg1f+W2MtB8rH8omJ10KW9eIg2AcrdV7GAqBKYMz/abx/lV/H
         VG6fESG2FIXuHte06yLyJ3LDFrpFB70v2zter+8+hyJxooXhYahcem2NoOs878v7MoXP
         Vgb1QmnELb1yIbgDF2gNZaAV3a1XTJP6CXjqZjFXeaq5OCDfOR42mXSCM6cGJ90345bh
         5YLraCj90fct8f2yO/DUlOd853h+Vss4Sl5S+RroF1GHmKzeGLJiECyaVhKxvhVkyfBO
         hOPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=CdDAyQ43;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id ba9si15491plb.5.2019.11.06.08.27.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 08:27:56 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id r18so1764419pgu.13
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 08:27:56 -0800 (PST)
X-Received: by 2002:a63:66c1:: with SMTP id a184mr3898212pgc.164.1573057676186;
        Wed, 06 Nov 2019 08:27:56 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id m15sm21253387pgv.58.2019.11.06.08.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 08:27:55 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Peter Zijlstra <peterz@infradead.org>
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
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton <paulburton@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Ralf Baechle
 <ralf@linux-mips.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Chen <deanbo422@gmail.com>,
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
References: <20191106030542.868541-1-dima@arista.com>
 <20191106092039.GT4131@hirez.programming.kicks-ass.net>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
Date: Wed, 6 Nov 2019 16:27:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106092039.GT4131@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=CdDAyQ43;       spf=pass
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

Hi Peter,

On 11/6/19 9:20 AM, Peter Zijlstra wrote:
> On Wed, Nov 06, 2019 at 03:04:51AM +0000, Dmitry Safonov wrote:
>> Add log level argument to show_stack().
>> Done in three stages:
>> 1. Introducing show_stack_loglvl() for every architecture
>> 2. Migrating old users with an explicit log level
>> 3. Renaming show_stack_loglvl() into show_stack()
>>
>> Justification:
>> o It's a design mistake to move a business-logic decision
>>   into platform realization detail.
>> o I have currently two patches sets that would benefit from this work:
>>   Removing console_loglevel jumps in sysrq driver [1]
>>   Hung task warning before panic [2] - suggested by Tetsuo (but he
>>   probably didn't realise what it would involve).
>> o While doing (1), (2) the backtraces were adjusted to headers
>>   and other messages for each situation - so there won't be a situation
>>   when the backtrace is printed, but the headers are missing because
>>   they have lesser log level (or the reverse).
>> o As the result in (2) plays with console_loglevel for kdb are removed.
> 
> I really don't understand that word salad. Why are you doing this?
> 

Sorry, I should have tried to describe better.

I'm trying to remove external users of console_loglevel by following
reasons:
- changing console_loglevel on SMP means that unwanted messages from
other CPUs will appear (that have lower log level)
- on UMP unwanted messages may appear if the code is preempted while it
hasn't set the console_loglevel back to old
- rising console_loglevel to print wanted message(s) may not work at all
if printk() has being delayed and the console_loglevel is already set
back to old value

Sysrq driver changes console_loglevel because it needs to print message
with a specific log level (the code said userspace relies on this).
Kdb changes console_loglevel to print backtrace as the log level depends
on architecture realisation.

I also have patches in wip those needs to print backtrace with specific
loglevel (higher when it's critical, lower when it's notice and
shouldn't go to serial console).

Besides on local tests I see hits those have headers (messages like
"Backtrace: ") without an actual backtrace and the reverse - a backtrace
without a reason for it. It's quite annoying and worth addressing by
syncing headers log levels to backtraces.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/10db6fa1-5b17-ebe6-09e0-6335e09e4db8%40arista.com.
