Return-Path: <clang-built-linux+bncBDTKPJW47IKRBY7BRPXAKGQEASCY3BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id B2511F1ADF
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 17:12:21 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id l6sf6515199plt.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 08:12:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573056740; cv=pass;
        d=google.com; s=arc-20160816;
        b=Faw527IWrUwtZDFWDAD7H2x+xbqYnapzxaf/m+l/6ggejGSoNDQXPMXTmjehW06ygG
         sYghTolmtad6X9u3G2f4ksS/IBeMJVD5sCezoFstWQnjzdEu0UFzc7bxwJJdg1Xvs35Y
         X+vme5rIpU7+GF2Y4LkrflghhdkHIRtaKupAHdcMmicLFH5sWSmMPhBNBFMRqK5ykA27
         1sS0by9dVWFjARuj+/hG3b/oanbcKZJFifs+Y4gBvnwXxedr/3rKMJ0jXhjIgUBAfljq
         xeidgC6FM8QVLTmq3wWdt2dKPSnCDOW8SUBCchY4S5XZ9swBVgxW1pxHVBajaWeEYNOB
         5M/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=KtdpMxHzxoXIUua1L3kq2elaZBzlHAKbx+uO8xmGKog=;
        b=iIKQKxfdKqNWuKXnpIm4U/CSXGPy0U7WNkJIZlT7k7XkAGLKVXvi3qyWlTfaLHv6U2
         7MzGnW6FW/so6g7MpS9bhIqbjiCiD5nAaRlH4JicZlO+c+TrLR/S4Z26rAyQgdKED3ZI
         KqTp5eWzhUTuPq38YkYVpH383qkh27tyZAOvB75DeTVf5h7IkK53EhVoXGaOOHJzwmFr
         IEPdQ1gKaa0b9LyBE22iOZnWQqvntyPwBHR6IKEkQdHlEXsMyDS4RK5RDh1KZ7J3U0Md
         XhoVH2kVpsuyB9OoAnShMbHDiLjyG6JCi9L/HzTtmsMiOmW3LdTQKvE0GmOBdb0z6rAI
         BJZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=MpZHturj;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KtdpMxHzxoXIUua1L3kq2elaZBzlHAKbx+uO8xmGKog=;
        b=J+qto5DzCtiK3cZ9AitKwEvNbs4M+0HO/9XxN1w0zYtuU8iR3RAM+pLgibQsv/4Gk1
         RHJwifTujQQYnxrqB9V+K3Cb2F/kMPHO/68IKj+0695Lh/efnp5tCAjF75AqLS1k+POI
         /r1fjSQmCIe7Me4vkDfiBjEVQPPo77grNbbbz1TnOdXef8jbY9ielTcan2VtNH5A3Ol/
         QWAm0WhFZc26vd0v9FQ7XCePBUDwT8YzyQYNUDVNgUnai6JGakxJRNVHS9tYno4dMUkc
         nVapSckKl8xx13LtudiEB5QGMYH0B2JIZU3mSXH56K4jzOv6+ABGE+uG5m0HK4mVIvA2
         iSTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KtdpMxHzxoXIUua1L3kq2elaZBzlHAKbx+uO8xmGKog=;
        b=gZnBP/MPWPzrCiu9oHwXMr4+yhZ1Xf+r767NLGeoBPRk8V3d67mpPmYIWIsamUWP+A
         6kepu60esfGiPa+e8ESN9OE8e7EpYexL/7c/dYkMvzfayFryHqyJzyOPM57gvKxlEIzW
         mxNwK6mEIksV37fcTKtrd7o1Z4F8T7LDkIpB0X4PZ1Rjq9BSR5zBL/YrrIJYIGnzofkP
         2MEAO58xvNGLJstoWDhwqFa60i95VlyQq3c2nldFhnX1VAICYwkB1jCZTCRqcRSRJ38N
         0vb9m0TALFcIPMp0veBFjbLwfn4yScCzM/LpXj+EbAc3t3CASqGQLyg6hMX0AcDTSJJ7
         vqlw==
X-Gm-Message-State: APjAAAWK/DrYs/Ow4CDJQQ/hDpwE2plJ14q1JaviTjDLvZrALV4pBnht
	1upNHnNMt1gaVbYCbD130S4=
X-Google-Smtp-Source: APXvYqwFnWgunsApUuA35W6dpXC0vB5wbwAf+Xk10teEmWndWG+kCpNSFr32MLpfLqwjt/Afv8SeqA==
X-Received: by 2002:a63:e60e:: with SMTP id g14mr3314314pgh.80.1573056739796;
        Wed, 06 Nov 2019 08:12:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db48:: with SMTP id u8ls721526pjx.0.canary-gmail;
 Wed, 06 Nov 2019 08:12:19 -0800 (PST)
X-Received: by 2002:a17:90a:d084:: with SMTP id k4mr4971745pju.115.1573056739334;
        Wed, 06 Nov 2019 08:12:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573056739; cv=none;
        d=google.com; s=arc-20160816;
        b=ahYJfTVHObvcGX5UQJcrnR1FAlw5AdL6MJMv/nrC8QyrSN2IA/8BRYTrsECAtC7M1G
         W6tpoy6zWg+fOkOjWdeaDnVKZMpyQ4z159tGq5nUj10sqeSn/WZCz+7U3neT5vg938ki
         a1ZUEXA3fC9eTMxmdvheAF+cCBVHCh1TUSh/oQUp+4Ps8TYzhLdQ2ZrFTvbO9Ktw3T0v
         7L8zeIT6UukxpMPaqsGaTfKbK8Z9jVaDeChAOA8ZPDwjTTjtdC6BKUoyQ42EnB5s8VM0
         Gla8WemiWxmn9lV7X8I+lvn1jpPkTp3TtNbcY6D+zHn/m5cnKwDHWO4MZwulNqSWqpeU
         WvVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=6YKC1kJOcWpyD+8pjGdr6zJNIwDWfqyBu/N6KBSP97U=;
        b=MhuO+feHGDJqRiNNnMD4ZY3O1SuahU9xFWMjbK1Ba2W7lDoXf+KlNgWEepyNMwPS/t
         27Odv3/NYB3qGyJrXn+fE88z4icFsJmWHC1qr1a/gF4mLl/6Jr584p3+S7OrbKnVVDGI
         H1kKwU7onv1tcNl7LmHP+x00PB33WQMs1xOFq0F87mBvYLdLQb6Zv3kh/iHp6XvVwcEs
         Jr2TccTImq0gt7AAsBacqLdLyMLeJ9QTZL90/ZBNGMz+3hTEzuNPUmSnqOA/YiEe/kem
         yfHb4oOyMpg8QTz2eWktPv91kF3bC/OsqgkclZq9PXa3y9BtPn8Lxmr7uk1U1feZ5a+H
         usMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=MpZHturj;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v18si117606pjn.1.2019.11.06.08.12.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 08:12:19 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id z24so12900471pgu.4
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 08:12:19 -0800 (PST)
X-Received: by 2002:aa7:908b:: with SMTP id i11mr4396653pfa.140.1573056738752;
        Wed, 06 Nov 2019 08:12:18 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id j4sm5535967pjf.25.2019.11.06.08.12.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 08:12:17 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Petr Mladek <pmladek@suse.com>
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
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <de8a397d-8660-4ace-9626-127debcf43a7@arista.com>
Date: Wed, 6 Nov 2019 16:12:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=MpZHturj;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as
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

On 11/6/19 8:35 AM, Petr Mladek wrote:
> On Wed 2019-11-06 03:04:51, Dmitry Safonov wrote:
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
> 
> Just to clarify. The problem in sysrq driver is a bit different.
> It modifies console_loglevel to show even less important message
> on the console.
> 
> IMHO, it should be solved by printing the header line with pr_error().
> It is not ideal. A cleaner solution might be to introduce another
> loglevel that will always get pushed to the console. But I am
> not sure if it is worth this single line.

I believe why it's not done - there is a comment in sysrq code that said
the userspace relies on the loglevel of sysrq messages (and may trigger
alerts from emerg/err log level):
  * Raise the apparent loglevel to maximum so that the sysrq header
  * is shown to provide the user with positive feedback.  We do not
  * simply emit this at KERN_EMERG as that would change message
  * routing in the consumers of /proc/kmsg.

But I don't mind any solution.

>>   Hung task warning before panic [2] - suggested by Tetsuo (but he
>>   probably didn't realise what it would involve).
>> o While doing (1), (2) the backtraces were adjusted to headers
>>   and other messages for each situation - so there won't be a situation
>>   when the backtrace is printed, but the headers are missing because
>>   they have lesser log level (or the reverse).
>> o As the result in (2) plays with console_loglevel for kdb are removed.
> 
>> The least important for upstream, but maybe still worth to note that
>> every company I've worked in so far had an off-list patch to print
>> backtrace with the needed log level (but only for the architecture they
>> cared about).
>> If you have other ideas how you will benefit from show_stack() with
>> a log level - please, reply to this cover letter.
> 
> I agree with all the other justification.
> 
> I would add. The backtrace is really useful for debugging. It should
> be possible to print it even in less critical situations.
> 
> I am afraid that many people use WARN() for this purpose. But WARN()
> is not always appropriate. WARN() misuse huts when panic_on_warn
> option is used.

Thanks, Petr.

-- 
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/de8a397d-8660-4ace-9626-127debcf43a7%40arista.com.
