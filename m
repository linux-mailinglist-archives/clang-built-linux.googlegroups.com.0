Return-Path: <clang-built-linux+bncBDTKPJW47IKRBFFXVDXAKGQEEXM4YWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 391B6F86F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:40:21 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id m68sf803790wme.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 18:40:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573526421; cv=pass;
        d=google.com; s=arc-20160816;
        b=qkCECEfBBDQUUGmvTcK+w8vUG9RvIca8zE8Vg159UfY9/kwJwMxS8jWsPan12JEt7+
         26Hd/fp3BlBuEIrgD64t7aSTXxJ2IY80BvKaaE0uKrc/krHNJKIJmjZ/GZwy0/5w0i0V
         pd9uy5oLYMVTVJs7wJmSyG2/HebcpSdv+cKnK9cQA8oUY9KbhlcsXMzbRch+topa7pBz
         4o3IF2+w30lBfdzpRkMqCFFObdLcpmcHdUxb3gCKHKy3A3mhEjOnC1BKlYfoTzXr0vgf
         MuRG2PSxFSgwr79tgmk7MT0hkpyxqhbQe/j7xMl1leyUXWYInQRZgHk5EdvaQZfhgtZM
         x47Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=ZcGu2OYuOlnFqMVafu9+c0FicmLSwySEqRbE/sFPaV8=;
        b=WOkeMR9eF8Ufc5DydSoSvyU5oikGAH0lJ0HVN3nCr6xg5gRgNphcV+MWsqeLk1A4cu
         TrLk7LeAoVQ3C7uRjsAbXplYHp3qu7gkuhBkvTpye6n0jRS1ST3BLXKq8IDzb6oLvhTW
         K17/aNVv4QtlueU7SuB4cV4674pdWDDUKJN8LjLSBPr0WWjbQx4BAVnQOEPoLJT08NfX
         /aUsUirJeZQwyhWf5pwxeWRH+xbdgckV9V6cBnPxYQP7CNUmrbnH1RG8qG8Elb6CSiZS
         vm4jYtClphIqNf2Xz78o12GGtRbahmQmj2MioeixPaj9Wuq+dsRsQeY7yiqT6eN8pAde
         U4HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=MX42aMTT;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZcGu2OYuOlnFqMVafu9+c0FicmLSwySEqRbE/sFPaV8=;
        b=h/3iYQyQnNhoIuCH/UynZokoobMUAULfuKX4jeP7N0JlLoHIqirFcDLNuaoFps/AbT
         JU7BDQro1sTENJ2gSkx8da1QUtO777nRttU4jyAKMe9fmmwFXlWqIIFPJIPoe2ocE2bM
         lpPCcfSMuUtlqZgMIEFpkoBg7/cC7OFlPm28FJUZhFq8hEWaUTgmCzFZ7RtpeROD//fI
         wdKsnf/GBM707fIpSWLgwKdFq0xkvuPQmLueNc/dMG/4Gh2ifQGgCa3xyYSXHigcXWo5
         Up+jWAVrGR/MIGFRI5HXSE4hM8WKZ7wVLFhrX+N/rrboRks/URxTzlVm4ipnXb3v6lYH
         I14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZcGu2OYuOlnFqMVafu9+c0FicmLSwySEqRbE/sFPaV8=;
        b=edByJReglYqkEhRN6k51247dfK2Ym1awd6sEBm1yt4+7uF7XF9i+EmfF0OLHI7Fubs
         hWmiJR1elpAhn2TIJPMEWa46F0/kc6wOmVPUn3Lg5K0d0fClKWpN+rqFAOSuBcHHMLts
         +XHTH0uMobgxUYgFi9vOZ/J42rg3wf/9EfYOPdmrykDEwtdtzf9S9EwKyMLdouhazX2G
         CDQbJ/3R12mfOXzj2F3rQbIxKGSA8wG+0FGPwiAbVyquSNp4RU3xDmhA20rAQbfZMpXv
         6t5RrFcxKIukCDp+l2zGQaKgGJMTDKtSwwS+5aqUoozPJslSMZn+3AJ4dijSIedH/+I3
         ha/A==
X-Gm-Message-State: APjAAAX4lcAqKnifkQL6JtvqremdD01pq3vw+tTU4F8ls5Ws77catHEQ
	+WNFqz+kFeCuvlYQHBTCelw=
X-Google-Smtp-Source: APXvYqxS1EIlkPHjnKG62QgW1JfMst8Sir9rJNhiyVO+2yvmgXGl0GoCX0V5b5avH8CFhDnTD4VqbQ==
X-Received: by 2002:adf:f987:: with SMTP id f7mr5980979wrr.284.1573526420901;
        Mon, 11 Nov 2019 18:40:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5284:: with SMTP id c4ls1165409wrv.15.gmail; Mon, 11 Nov
 2019 18:40:20 -0800 (PST)
X-Received: by 2002:a05:6000:103:: with SMTP id o3mr25351898wrx.80.1573526420451;
        Mon, 11 Nov 2019 18:40:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573526420; cv=none;
        d=google.com; s=arc-20160816;
        b=egQyfkRZbbd6Vr105X2P8W7kv/d4zqOB0RlYpaJDkPvljHNSunlj4nnjuv2wP6fa+V
         vF9eISBYNqkDap5HGkhKUSBpPL2Sum1IRmn9u/NOsO5D4LdppSvMBHlJUQCp3ih28ocS
         TVcfxtNiZKmIDqzNWsbzVclo8l98kxjtY8//vDexVbU5F5fEoV+h605aSn8DApdcN+ed
         vZ8XaYzcldc7TYSvEsB4ZOVpgob3u/++i6a7S15pGdb59Bj1i7Ez7yGNhtCBrNbmknG5
         11aEtD7h2sixDlgVoAYkm+o7utf3+2S1sLwFTS6CMhEiOf0kiproROV4R+rZ+dSlcKX5
         5huw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hc0bl6ua3Awo0puTEJJtiCFLlsTJGov09J6GyMYDUcw=;
        b=LN/OO9tcHHMTa1NxLMRpBG7Fq/+h7qhAJlEU5wLvrHB9XNfoloy5KsvqCu4uotIbE3
         iOBOY0PaHO63TjUAA4ggwIe//aVsTOWKwyaL73DLKE2TGOsq3OJuNTqL3NxdOrnNdPZJ
         eJWCFYil1n0fm4vG12DQG2Y/R6ePhozpMWmMCqZVMt6BV9mb5w5dgm+GjcZxuGOxna0F
         dPUo7Rr55czt78NyJCXByQCM82qme7HsYR+aeVF3OTIj83homCQ6XBjbDU7LjOifXm5t
         jkUoeq9pYhtB61dQB01Ssh9+zbVBrZUBwuYDa6/AjMX89xwVPK512f95H6p1Z1MbgE7B
         gZ2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=MX42aMTT;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y188si84960wmc.0.2019.11.11.18.40.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 18:40:20 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id c22so1327621wmd.1
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 18:40:20 -0800 (PST)
X-Received: by 2002:a7b:c211:: with SMTP id x17mr1567811wmi.71.1573526420054;
        Mon, 11 Nov 2019 18:40:20 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id u26sm1511046wmj.9.2019.11.11.18.40.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 18:40:19 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>, linux-kernel@vger.kernel.org,
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
 <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
 <20191112021747.GA68506@google.com>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <25cb9647-007a-9c18-4784-49c0aef4f54b@arista.com>
Date: Tue, 12 Nov 2019 02:40:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191112021747.GA68506@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=MX42aMTT;       spf=pass
 (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::342 as
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

On 11/12/19 2:17 AM, Sergey Senozhatsky wrote:
> On (19/11/11 19:47), Dmitry Safonov wrote:
[..]
>> What I'm going to do - is to fix all build and reported issues, I'll
>> send v2 this week and feel free to NAK it, I will forget about those
>> patches and won't be offended.
> 
> Lovely.
> And - no, I'm not going to NAK platform specific changes. Just so you know.
> 
> *All* I'm talking about is an alternative, less "go and touch a ton of
> platform code" approach. The argument "I patched so many files that I'm
> not even going to discuss anything now" is not productive, to say the
> least. Hope this clarifies.

It probably was a wrong impression from the both sides.
My impression was "You touch every architecture - we won't even consider
that". Sorry for the the wrong impression from my side - I'm open for
discussion.

In my point of view the cost of one-time [mostly build] testing every
architecture is cheaper than introducing some new smart code that will
live forever. Though, again you and Petr understand more than me in
printk() code, so I'm not any insisting.

I'll reply to your suggestion tomorrow, it's a bit late in my tz.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/25cb9647-007a-9c18-4784-49c0aef4f54b%40arista.com.
