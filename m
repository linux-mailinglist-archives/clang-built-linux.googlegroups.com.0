Return-Path: <clang-built-linux+bncBDH2HYVOQUIBBWFSS7XAKGQESMJ623A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A78F5932
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 22:08:41 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id c27sf1535053lfj.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 13:08:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573247321; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kp2P05fYz0QivFbGvO3WZe19Ca+haZJJ51yt0SxJWDewsWiQB7SgOxdDg5qDdwgGaY
         t2Xaf3lqDQq2sQ5joxBlU3jLHD7loeDrvHjKZQgsxuz1l3cRVCqzhlSeeFPBBwgdFDWK
         d2XbvaK7tDj5Wy8ThOCRUmK+ykKeCNKTNdCdvTI2vyqgR/tuCxgf5tSZ53Th4Wzig6Bb
         /dv54o1oEyqhTWdD11KSuDKCaGVDKGLPuHJ8hbMFiemVoeXQv30TSG8L0pjBeyDWYwC2
         PkQLSYBZHOaamIwWSM3I+f+Kmfad876rYgyrqsZdb1BAZKMQCD4nQhcMVt1g6kMI3G7G
         Dzag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=D7C5uxpyh69++f3TaV5bN6L4k8KEZihvKsNmH4Vx710=;
        b=ldXkzQmXX2H3AHNo2inep1JIhGTXeKUc3BxOp1o6Lw2E/sDytsPySTszrHf4r1OzD3
         E385dKIjbgQlDp/8QEG2NiUeCCRXDdS3k/pWHK17yzspabFjsNWF10RjheN7PLlaS0Sf
         QhhIQCuECHnILpI/tejpDdP9CoYr9OYHMXv8jFQX3jbe6ZaQIYqdja5ZDq8MczY2J9rh
         FZ5Fvpy9C43PU204oQi0n/+cDVCch8brKHJFBYWx8z/sn5A2BQBMg4RyLt9DtqVzhVWh
         hqwPlo7pmk1kaXxthOp9+naEXgdqa0hlH/hOQePhkKGI7lZnqTR8V+HncmUaL2CTm7lj
         1JHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjflubiq;
       spf=pass (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=0x7f454c46@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D7C5uxpyh69++f3TaV5bN6L4k8KEZihvKsNmH4Vx710=;
        b=JHFyd3hXLikLkh+i8PEXocMQAFZR6wLfBqu4QAkmDwfAd3lR87f0AcBQI3U9FzaZgP
         00Wh4PYWIA/oFdNMfULeewDsVJnEBPzkVJk2orYJpTQ2KzDX9OYAYBq3ODamuE5AXeK0
         V+51o3sy5QbzydjrzEWUVij3hiy7fpc8J+HuPyymvb1Xk6QcJLJCv9YksTpswbuj1gZ0
         zwVprIVCxGua2EaYCX/cMg5gIuC1ux7eKRNv5+3h+anR30Pb7yOvJx48jJ1rW2ts2l0d
         cn/wzLBN5BwbiNNpmzBE+nMFr1CGQzaIPmbrV+8jwcs9aRwFHc18IWRaZehaw0rG/JMQ
         qsAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D7C5uxpyh69++f3TaV5bN6L4k8KEZihvKsNmH4Vx710=;
        b=mJq1qVVNfuLG6pM9Z5naqgpsUKRHcF4dUULcqlreQtNM+Z3Y0ziiOCUymJwfjQ6eqO
         FnDarNsNxj1yycouUHpNEsId1Wp2xaQbGyyyAzRkEz+uMBSdQqfx0JIZWNQMuxyGjxUV
         G42pZo5cj1gSWSNu2HoyQJmsUYGu/yvrWtV45MnJ4UnNuPamtHKatAAaotT40QrcyJ9S
         Qwl6xumDp+FaaRJ5s/ZbuhTPqdOve8YY/tvYfbCGL9AwspD6eHb/6c0jUX6YRBYj0+CJ
         h2LFCSCzOy34v1Dkpy97rnFQTEvgYPZgbgRA6rWmgXgByJ2NTCRwvGGFMIdZ8lOkCAFc
         I3Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D7C5uxpyh69++f3TaV5bN6L4k8KEZihvKsNmH4Vx710=;
        b=MbF+mGQFAew5oxLSSiZE7G5y5vV9j63IzG9Bq+uui3TL/NdBOoIASgDZOyILqIQWkg
         HsAfMddsaD8GNUgrqfOKlTfPZSkpajLhPAZITxWuel6z63rMxuxQqBbh9JBriORBQU7i
         s8EUVbyzA3XuMCr0pPeZrrLkF9VWBnlmFmTw7RQ3ieo5JgUENxjcwykGTx7sVdDj+y/Y
         338Z8wNqEKPwqV6PDgHQPBHsWuXYpEGSOHsSWhsRVUlQj1KkjgEZd9+ojCAbai9lzUBm
         4eekEz9UGdZWv0N/4a1I337HzlJ61JnzpPDWzLSIW2Qm73wNEU1eEDLNQJLjNgM7MAed
         6Flg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXojPxLJqoANyvxCGGS9BvxAIb3rc+yTqzkaPS8L7oRRWAKpqDz
	9JC8OnuaUuxSnPeO/PdEF2M=
X-Google-Smtp-Source: APXvYqzMV3g1W83VwUdYhkBRMqdaKbFBGSKfiitz18AmqodSIVPBK2+3q3jdo8caWAMZbKikJAPOzw==
X-Received: by 2002:a19:895:: with SMTP id 143mr7924784lfi.158.1573247320943;
        Fri, 08 Nov 2019 13:08:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:1d6:: with SMTP id 205ls84700lfb.4.gmail; Fri, 08 Nov
 2019 13:08:40 -0800 (PST)
X-Received: by 2002:a19:c514:: with SMTP id w20mr8179763lfe.143.1573247320320;
        Fri, 08 Nov 2019 13:08:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573247320; cv=none;
        d=google.com; s=arc-20160816;
        b=xn9owhgX0xVmTrIuCglyuqoBWmqHW9iauN08YJg5D8y6U9dZrOAfbJVvCoUeVvTM5U
         I1FgUKUjY7wSEn1jtg4QnOoa4bdU+GWGkLQ4pUKNGLYERCxNjmR+43+B7k2zPPbd82I1
         Fe52esM1gZTjCqs7aFqTJ6QBvdMkWz5lfMc1oCe0OWoCge6VpjSElerojLte0MpDxsFX
         9LOZCcCi9Cdq++/BROefNqCd595bf57Pf6fQ0TWXaO5XwZxf4vUmvp8i2KvW3qe7aYk6
         rjbiD9IFcK2dwQdH7y7aWwB1ozsAG9u+TuVEsCg3rsy7Ldh1jdlybLxtfy3R52B81man
         hmeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=leuvFNJRBbgvPXZJlD4yDG614p9ePBBBJqh6/bi0nWM=;
        b=hFbLqYc7jIvjIPOhtdKqtWqIccbT/mwwBboqFNkJSEJaiXHs+VFD0gpsvDny1+gHIF
         UYU1yyvOuR7Akgj9BLP2GjjQkRHFX386yEDjEF5X1W/leSvPH84UnI4wY9ZkOqkZPxsI
         2kj6x8uvD+t9AO1j3ZiQZarURzMdilw+tvbPH2euSUX+/wUIdWc0C8heWBJAvPj07Q6G
         xw6/YWYP5DUJEvLdP+En/zdvAsIK6MVQtQExHcyXcQgqT99vyG3DiV+7whG5PIbQl2Qy
         2YEMoDtFfmvJgGIKVYUmeQSQUkSSU8WpPTzWUwKpZcuHwLFjkjAw2TK1MBVAw2CCt/cO
         ADxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjflubiq;
       spf=pass (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=0x7f454c46@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s4si807157ljg.1.2019.11.08.13.08.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 13:08:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 8so7606823wmo.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 Nov 2019 13:08:40 -0800 (PST)
X-Received: by 2002:a1c:810d:: with SMTP id c13mr6004971wmd.154.1573247319697;
        Fri, 08 Nov 2019 13:08:39 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id j63sm9370828wmj.46.2019.11.08.13.08.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 13:08:38 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Dmitry Safonov <dima@arista.com>
Cc: Peter Zijlstra <peterz@infradead.org>, LKML
 <linux-kernel@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
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
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton <paulburton@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Ralf Baechle
 <ralf@linux-mips.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Chen <deanbo422@gmail.com>,
 Vincent Guittot <vincent.guittot@linaro.org>, Will Deacon <will@kernel.org>,
 linux-mips@vger.kernel.org, linux-riscv@lists.infradead.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner
 <mattst88@gmail.com>, Richard Henderson <rth@twiddle.net>,
 linux-alpha@vger.kernel.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com, Catalin Marinas
 <catalin.marinas@arm.com>, Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
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
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
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
 X86 ML <x86@kernel.org>, Chris Zankel <chris@zankel.net>,
 Max Filippov <jcmvbkbc@gmail.com>,
 "open list:TENSILICA XTENSA PORT (xtensa)" <linux-xtensa@linux-xtensa.org>,
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-pm@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net
References: <20191106030542.868541-1-dima@arista.com>
 <20191106092039.GT4131@hirez.programming.kicks-ass.net>
 <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
 <20191106203440.GH3079@worktop.programming.kicks-ass.net>
 <CAGrbwDRgX1BZoFrVYSXhAeeUKHrB=q3w8jXFPOuRvO7HV4Ciqw@mail.gmail.com>
 <20191108173045.GY25745@shell.armlinux.org.uk>
From: Dmitry Safonov <0x7f454c46@gmail.com>
Message-ID: <5a411348-be84-f592-ef2d-ffaec99332bd@gmail.com>
Date: Fri, 8 Nov 2019 21:08:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191108173045.GY25745@shell.armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: 0x7f454c46@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rjflubiq;       spf=pass
 (google.com: domain of 0x7f454c46@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=0x7f454c46@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


On 11/8/19 5:30 PM, Russell King - ARM Linux admin wrote:
> On Fri, Nov 08, 2019 at 04:28:30PM +0000, Dmitry Safonov wrote:
[..]
>>
>> Well, the use-case for lower log-level is that everything goes into logs
>> (/var/log/dmesg or /var/log/messages whatever rsyslog has settting).
>>
>> That has it's value:
>> - after a failure (i.e. panic) messages, those were only signs that
>> something goes wrong can be seen in logs which can give ideas what has
>> happened.
> 
> No they don't.  When the kernel panics, userspace generally stops
> running, so rsyslog won't be able to write them to /var/log/messages.
> 
> How, by "kernel panics" I mean a real kernel panic, which probably
> isn't what you're talking about there.  You are probably talking
> about the whole shebang of non-fatal kernel oops, kernel warnings
> and the like.  If so, I'd ask you to stop confuzzilating terminology.
> 
> If you really want to capture such events, then you need to have the
> kernel write the panic to (e.g.) flash - see the mtdoops driver.

I was talking about things prior the panic: OOMs, MMC write/read
warnings, hung tasks, we also have local patches to produce a warning if
the mutex is being held for too long or a task is starving on CPU time
by hard/soft irqs (I hope I will design something like that for
upstream). I've found those warnings useful to:
(a) have an early message when the things are starting going bad.
(b) analyze contentions or too large scale for a box or faulty hardware
for non-reproducible issues just from logs.

We use kexec to save the dmesg ringbuffer content after the panic.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a411348-be84-f592-ef2d-ffaec99332bd%40gmail.com.
