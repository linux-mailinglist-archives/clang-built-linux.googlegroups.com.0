Return-Path: <clang-built-linux+bncBDTKPJW47IKRBJ6TVXXAKGQEFOZPVBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A425FA5E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:25:44 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id l4sf429712vkn.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:25:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573611943; cv=pass;
        d=google.com; s=arc-20160816;
        b=xiV3jo1wuEXT8m6Nb2CU6jKKoyjKRQTxslYAFrnkAQ3ENMao3txYLLwLCg6yiTaDhA
         k7Q64ADsxYjzY9j2FCKB7n5Cf8jWGNiykNqDsXZiIczreSrjqnxcsk+XM4te+/k0zX3r
         yk9Awca75P8JUEWWa8Po7NG+a9t3gR1LqnsyjkURw+v53pglEGQYoFopQnKWKlUeaPaO
         IMPZSrIYru78JFmsZPiaxeLCx14n5Aq2Pik+FTIN7lUHJ5uY8I070KQ7Xsi7VPRyQ9ym
         GYBw0m68z0VCJwyCdtO88lBZQ7b3cR7Z7ikM8YgdaoEbMnk7szccufu2I0hl08eM13p5
         CUzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=+Z9TgEyR2SpanjMQ9jydXcgaxLi/SicXOh7VT5AAO80=;
        b=thEweSLvdOaI23hcf2FgUIoHylJejfx8cAmpHGEVDZKdwwzDPpZ6sBB+3WdEB2jUvI
         FoJEdXD+6cd6i19qod5Mc6C3g3kGMBrnHydSxBaLJno+FgihLYA7p1j1nf/LWfD/10mU
         3XJa33+6UHSS/7NGuaqC5FpvYKCZKKn7RF5X731gMVEWhUSS3xHxcmLfCicf8BqtVNy1
         QAXkjvHj9KpGgrx1etLPI0JLpYlteXAQztcdXKdcJIJPK2dEFLA6LZsDiy188cWiEoXy
         zkl67eQ7oMXM73+2iCsvHOWwDxpfSmET0InVqfeZdZFx9xGGUXYehVQa1qD+kzx9P0DC
         ZGIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=BPU+KO8V;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+Z9TgEyR2SpanjMQ9jydXcgaxLi/SicXOh7VT5AAO80=;
        b=YoOBgVkar+z59kNR13LPiy+2MN0/Rcpl65LNOfwcZu3jm7GFaSIaWQLAkPHxiajEOw
         WPLOMdeZL4zFXCessc62B5xF91ku/tGKw1WwSA8X6xwinWLLK1ANzJTrlHQkDew7ERHT
         2X05FNnc8ItHKEeSAnEWlOt7gzgc/0PfoyhKSupLSqvJ0amMfnB4y4w4hEHRNv9zWH5v
         eUasOpe1KrLVrQa3elmsAIV0+ETOGppGJLnv8ZjICmylcGSZ4GRVkjcmZWafvpE0lyD4
         ZOPGIzz5bBSVnU9kXfZKYjn14ovSjCj0EdIPLVNd6v68YBLAmTS6Y4f093KImMPnpWEt
         VKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Z9TgEyR2SpanjMQ9jydXcgaxLi/SicXOh7VT5AAO80=;
        b=Z/TQ2vEZ/Dmpeas8Crqbu37qXWzWPeCngJdXw1xydO++bbOQpcT4tMj580tJU/rcNn
         XJMezduhAT31AmIlekMxoZmfIc7JX754q+udXMEwes2OVK+mWbUhEe09ATZ2nTSgFVfZ
         wefx9/+vWqjYqXzDhNSkeDhidzxuyl2pSuDqPt99fhUrMFpGH3AyTYiffHOYj4vj6O9c
         xmGvLVr8uWsRLKnX+0QqJOaaAg7Y9zMht71pm/M68gxF101/3NQjeDx0xJC4d94Z/m8r
         /1gEWCANYHPNF15a5FhiDA6bfeSKHP7fe6Taw7zTJjZuIAK0m0CD7wpz3og1hA3BO1we
         dZHw==
X-Gm-Message-State: APjAAAXvfvIq3Au2OsqHBtxnE/J3oiE9U/+iJ0wFAgl7ViEYm434riJ0
	S6qEg8z991huAA6wDk7RKfw=
X-Google-Smtp-Source: APXvYqzqlfae4vzcWWoVGILOSewmV8rlhppVLh6FutAmIillvb3jruvWMycWAVwRNjO9Mb2FIcZrNg==
X-Received: by 2002:ab0:6441:: with SMTP id j1mr432727uap.141.1573611943632;
        Tue, 12 Nov 2019 18:25:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd08:: with SMTP id f8ls39624vsr.13.gmail; Tue, 12 Nov
 2019 18:25:43 -0800 (PST)
X-Received: by 2002:a67:ef4e:: with SMTP id k14mr515012vsr.165.1573611943342;
        Tue, 12 Nov 2019 18:25:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573611943; cv=none;
        d=google.com; s=arc-20160816;
        b=B3VtI6CTY2d1SF3TE0cSqXk/3BBytUIgxCqVXDWGf2JcyA1sPfVP70Yt4efz8tADoW
         ZYkOiutlV49DyuAW6heoKens8klroOr3pFmBZY0EQ4yU7MkTJTZCIae1pG+u07cziHe3
         MumcAYQo1/IwM2QBHENoTgSYrVorHJEshJlrXE1wkRIjSh1GWT2vdMatytCIfr/HrrKi
         B71bd3/IZkl+EJHyOTWZcMoNNdwNofDRml1AUDjltXu7MsAQbjH4Y8mlHKW8Hrjoe2BA
         OMcZIe0k4atkOdk87QRfOl3BptJziSZhNSkyjPJdcsHFap4AJwQfmSViGFNC8WzAjNNA
         RFMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=nujO1oAvQuda3HPNop9afPS+ilUfrJs0rYOKUqnCb18=;
        b=nwsN320LMKKCX4lD2Gmo8Lbq4UDgBsZS0DvJeSZJHjsgkyNsWwrUaSTSph7vBZBzL6
         Bgr6wYWq3nsNtuebh5ky8aWyAiRlUK6KUmXBZh/Xg/FCbxu7nZCiIUDMhqz9/sq81UaR
         aIQZYzvjD1WpbCXrna5TfcyN5uGH1a+UoDip2IEIc/CwFHBWKbivxfOu5KvxlZUVog30
         xhj75kZRhyxmkIxwK++IDafZJsVg+SAyA2qjy3NX6wQCh2SAW9/+bjlMzvRnH5UZ9nVW
         UfHK2uNEo92wOcofpOvC5hv68wT3csnsvakAXGkMtor53nhMIk42xt/khEB0yjZpJ+h2
         6V9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=BPU+KO8V;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o206si52133vka.4.2019.11.12.18.25.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:25:43 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id p26so518151pfq.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 18:25:43 -0800 (PST)
X-Received: by 2002:a63:b20f:: with SMTP id x15mr830789pge.65.1573611942121;
        Tue, 12 Nov 2019 18:25:42 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id y24sm319473pfr.116.2019.11.12.18.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:25:41 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>
Cc: linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
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
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com> <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com> <20191113012337.GA70781@google.com>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
Date: Wed, 13 Nov 2019 02:25:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191113012337.GA70781@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=BPU+KO8V;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as
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

On 11/13/19 1:23 AM, Sergey Senozhatsky wrote:
> On (19/11/12 19:12), Sergey Senozhatsky wrote:
>> On (19/11/12 09:35), Petr Mladek wrote:
>> [..]
>>> This is getting too complicated. It would introduce too many
>>> hidden rules. While the explicitly passed loglevel parameter
>>> is straightforward and clear.
>>
>> If loglevel is DEFAULT or NOTICE or INFO then we can overwrite it
>> (either downgrade or upgrade). That's one rule, basically. Not too
>> complicated, I guess.
> 
> Can be taken even a bit further than
> 
> 	show_stack(NULL, NULL, LOGLEVEL_DEBUG);
> or
> 	show_stack(NULL, NULL, LOGLEVEL_ERR);
> 
> For instance,
> 
> 	spin_lock_irqsave(&rq->lock, flags);
> 	printk_emergency_enter(LOGLEVEL_SCHED);
> 		...
> 		show_stack(...);
> 		printk();
> 		printk();
> 		...
> 	spin_unlock_irqrestore(&rq->lock, flags);
> 
> or
> 
> 	spin_lock_irqsave(&uart_port->lock, flags);
> 	printk_emergency_enter(LOGLEVEL_SCHED);
> 		...
> 		printk();
> 		printk();
> 		...

Yeah, that makes sense.

I believe it's up to you, Petr and Steven to decide what's better for
printk(). I mean, after all you care for all this code.

I guess I've pointed that in my point of view price for one-time testing
code is cheaper than adding a new printk feature to swap log levels on
the fly. But again, it's just how I see it - if we fix those printing
problems, than in half year we will forget they ever existed, but in
your proposal, there will still be some clever printk code.

On the other side, also worth to note that current patches set fix
problems for kdb (and for my hung task printing patch), but it's
incomplete for sysrq driver. I've gone through functions used by sysrq
driver and the same changes introducing log level parameter would be
needed for: sched_show_task(), debug_show_all_locks(), show_regs(),
show_state(), show_mem(). Some of them don't need any platform changes,
but at least show_regs() needs.
So, you also need to have that in mind making the decision.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/25ff45f0-6420-f660-55a8-637f11ab5ab4%40arista.com.
