Return-Path: <clang-built-linux+bncBDTKPJW47IKRBV7VU3XAKGQESTNMNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C5DF8069
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 20:47:35 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id r127sf1008100lff.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 11:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573501655; cv=pass;
        d=google.com; s=arc-20160816;
        b=ap8Io06Qv/3oMMxaOqoEyPIEuIRYCRh/nA+LEu5O2KOK3KmAm+zN9KjNhbqmvf1Hc3
         ixp9CXAzBiYuOTDSIA9+WbzMWPjg2kwVCGGtkQAUxTHtybdpGcsRdYmj2KrJ5MPq89rF
         oule4VZRrWt2QwIgQHrGomqry4oa4xrDQI7sDGzxMoYUhEw9a60nqhiqxf140rDBpAl9
         ia+SlqyiEYeQGJdeFZD1m2uakd6Rgfa2YM8MYQ48we1T/n/K1oDKj51jI4t/KzK0E5d7
         YAdbrY7E6j7KfulBQdvtnltWqjGFfCTAJ/ih1hNwbeLe0r2c5XNankoFvAFKdJfg07C3
         Jyew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=ecp3NWrkZP0KLXjn7kwVnJo64VuIJfO1kueVK8mSK54=;
        b=c7iGy0yZ3bm4tx3+/M4b76MaLl6JDp2m7Uectqy/56NMpjSSichijFFPe2l01guwhl
         4w7R6oo3hh9G07UTSs83BJKubjzGabsLblOjksCJxs5A9o7neBQylpvUvPf5ZWUGoR8j
         v3ivYSzyR6iRqL4TZwDrMFI9F3lpNmNwDixrWVbQD5SJDwc2umQedN8z0gOPnVzkRO2Q
         HbRR7mHMmindKBiWZ8o8gLDozZqp3/YFlS16CNQ9UvOGa88412k5UX6W1vwsNQyF5qY1
         8qJKUD6+LFvwD6++ez1nEYbC+xKHm4p9swq9o3v4OS/w2S04AcpyM+7sTrpY8UUndjYE
         7zgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=cZIehrzG;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ecp3NWrkZP0KLXjn7kwVnJo64VuIJfO1kueVK8mSK54=;
        b=bZo6D/6jz20PcLSlmjBfdIu3gVNreuLXx3ra3bT49mGECAY5ZyYrEU9etSSKu+2TDb
         7HJfBp05qTBYvZzTxz6agSZZHJ17PjLMT4Dk4McnaSxd0nqQ+cbGDVscoGxbZA23/3QA
         SI16lJWjs0ZMxKhpALzVoJYvfokYtnBNHmX5ZcmPYjBxow5E7gs14hmrs5WDE76c/bRv
         3UR9pxqkE1kwvGiXlAR3QgjbEMWWpboxoPTfaYqxDG6lTbVKACoT4ykhiZPwOzBNi9Sn
         N6OymJ+5j6HkzGFKzNhyB3IndtKf0nSqfH2QFsiwODVvsWaO+VnrHFITiHv/tgY8Pgft
         vGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ecp3NWrkZP0KLXjn7kwVnJo64VuIJfO1kueVK8mSK54=;
        b=awNIFwTUVyaoM1sLbPvgrN79xNmbAnB9DPHw/C41W6tG1GPSZkwVHbvF4S8mdTd8b1
         QlDpw6KnBA1O5o7eHJB3xReIpZwf1Z741CPLelKiBPES3dN8gKw3XhAaPlm6HpabyKQs
         um8Rko/fSMQe+kje8Jm9gTzajXbsajlJ4V+iAo3dSJGoZiR6gbohNQs2Qr2d4Z0VneKn
         YZqt7G+dDm+GWt9wAQn76Z4XdSLuuhdge1qwWpvNNLzozf4HJpS7bYYMDQPOPi53/Zk3
         nHeGTWMZo+kvMC3ozz/cYtRlALJth9QuUjTkZspzRnUB6XKIuWnLQ9XFe6FMHgwceIrv
         nhLQ==
X-Gm-Message-State: APjAAAWpefxnf1tNagdyobz5Sn/LstmrSMYqnzja/jABivp0N20lA8Z5
	DIQIjluQ7/yPyip3YCoe52I=
X-Google-Smtp-Source: APXvYqz6O3QZ3+eipZbdLLhSoFwUebxN+lSpYBZzrcEJQXwVpi3yW6XjS8xeaK6VxP9nLRDUEX6YyA==
X-Received: by 2002:a19:9146:: with SMTP id y6mr16290674lfj.11.1573501655501;
        Mon, 11 Nov 2019 11:47:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:864f:: with SMTP id i15ls900234ljj.11.gmail; Mon, 11 Nov
 2019 11:47:34 -0800 (PST)
X-Received: by 2002:a2e:7013:: with SMTP id l19mr9807841ljc.201.1573501654816;
        Mon, 11 Nov 2019 11:47:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573501654; cv=none;
        d=google.com; s=arc-20160816;
        b=Ol9oi8SEVsWEncCQt+EYgft9rmhFEAk7UWw72tuR/OKvjdE513Ow7pBZfcej4lFxrj
         rzM8vyRdUZfLWV87659QVToLav32rirEZujI82pgbc0ymSq9hcTI9BtLkAl9kJnGeS09
         vgHg8l3JRmi+b7AWZ/ovYNre/PL96iirtP9WjsSkFIxuRL3nNy6TayhnGd/z5nOKXVGl
         L0VucIVypePqU3Xgv2d/pxHgyQMnjG0e+NM2QOGzLN8toNvU/09R1yo8stOzzFXqbLFN
         IlZMtDCcyZZxX4bGKnfp87bKV6Fu9C22fcWuZL5iMUW6aBP8uWON9G8d1RxAHnelr4sz
         r7AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QOJc4N4PavQU2sAVS1vG4t8ohqXXXnqqV8/w5qQonB8=;
        b=ZnQlHfjxKzBQ8LIlWTgr9LOC/S9F7vcRZL8p3K7wZyRTomW/f8WVSI611jvrRI17rH
         tn9eztXZo1R4GtiSGmu/v8yEz11r++SQKf9dnysIT/GQtzPKfTppuJ/uCxDfc1S81o06
         pnJwrJyiMaujViqQuAIIVnPHyCtdLVPUwXrO0CuX1RQyWtvIRj/8mesRnNTluv4D/QYj
         dpe9LYSuCMATZdGqYWtJRgHCw3yI8PG9UCtj0IOAR12P9haVi9bJgGjcaJnc2YG5BobX
         RDn+ZZIaTfTKbjJGLgZ4zSSCcb3L0smPjyEo1DZ7BimN7BaUS6Qtd/1d9k/QOFimt1QR
         jo1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=cZIehrzG;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v82si1050713lfa.3.2019.11.11.11.47.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 11:47:34 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id q70so600237wme.1
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 11:47:34 -0800 (PST)
X-Received: by 2002:a1c:2342:: with SMTP id j63mr585268wmj.56.1573501654084;
        Mon, 11 Nov 2019 11:47:34 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id f67sm723039wme.16.2019.11.11.11.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 11:47:33 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Petr Mladek <pmladek@suse.com>
Cc: linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
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
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
Date: Mon, 11 Nov 2019 19:47:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191111012336.GA85185@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=cZIehrzG;       spf=pass
 (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::343 as
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

Hi Sergey, Petr,

On 11/11/19 1:23 AM, Sergey Senozhatsky wrote:
> On (19/11/08 14:04), Petr Mladek wrote:
> [..]
>> I agree that it is complicated to pass the loglevel as
>> a parameter. It would be better define the default
>> log level for a given code section. It might be stored
>> in task_struct for the normal context and in per-CPU
>> variables for interrupt contexts.
> 
> I do recall that we talked about per-CPU printk state bit which would
> start/end "just print it" section. We probably can extend it to "just
> log_store" type of functionality. Doesn't look like a very bad idea.
> "This task/context is in trouble, whatever it printk()-s is important".

I don't see how bits on task_struct or in per-cpu are easier than
supplying a log level parameter down the stack.
How would it work if sysrq_handle_crash() called by key-press?
How would that interact with deferred printing?
How would it make visible prints from current context, but not from
something that preempted it?

Furthermore, what problems are you trying to solve with this design?
Only sysrq driver? Kdb?
In my perspective it sounds too complicated and over-engineered for
something that has two-three users.
Also I've tried to point that I need to print backtrace sometimes with
KERN_DEBUG loglevel to use it in production for early notices those
needs to go only to log files and currently each architecture decides
which log level it prefers.

And what's so complicated about this patches set? I see only side of the
testing, but the build-testing is covered with 0day bot and cost nothing
and any visible regression may be found during -next period.
While introducing those printk-sections may subtly break things.

I mean, I definitely know less about printk() and its internals than you
- so my points may be a no-sense.

What I'm going to do - is to fix all build and reported issues, I'll
send v2 this week and feel free to NAK it, I will forget about those
patches and won't be offended.
I don't see many people those are "hey, we'll benefit from this".
And doing this patches set was neither quite fun (dirty business), nor
something I can be later proud of (hey, I've introduced the log level
parameter to printing functions!).

Thanks,
          Dima

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/13e72b62-c842-8ed5-5b41-bc1692b28f53%40arista.com.
