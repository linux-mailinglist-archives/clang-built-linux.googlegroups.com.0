Return-Path: <clang-built-linux+bncBDTKPJW47IKRBC63VXXAKGQE56I6I4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE933FA6B5
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:42:20 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id n16sf640515ilm.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:42:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573612939; cv=pass;
        d=google.com; s=arc-20160816;
        b=HqF7KkyLXZEYVefxlyNQjal2W3hPrvRi/pnQ2DjJmCiOr0M7VYATEwNT/s8nmtrxCG
         2pMLuIgvA8HJEF4Y6GUH/RBRRqMFtGUWq+aI2DaW5XXVhZrGwBumGFb3CCklb52e9uXU
         3BKqbejR/5+NJfDB5flq35tu5zoNnoPGs21qwq6XR/ZKTNfqRa45UJfjcFki/+D4tOL4
         cyyCm45aswDgn/lF8wxYL5so2wdiBqHhXQDdTbNZIHVLjE6mzKaj4vnX8rKwk3/aKBqa
         nsgsdn1nAb9n7YHj4EQ6VHGWU76REcMacGFMlo9wIm6yauu4eYiRe6/dADFhDi0EWNzY
         OCUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=l1TUBTrd6xfb3Z/mcO23TC03Hikq2zRe9jHaj5v+IQo=;
        b=XJq629z7s+TmzBQzXswyFdvvMHcgrvgoI8n2cFawKVSBV+jDu3e3nsw8qjkpKVSJ1S
         WIxXz+duTDYs6/mCBqzwlFAleqclfArD4GvtCSd8LUkQVQdH7xUyHswLHw2p6BJTGzD7
         BKjSgLmdEuPsqj4ihiUThDUTcuvhK85ca6+jLXv7m/7tAlvr01SuWTP5z3M9O10p0V36
         okANrTZgxzuxB43lghRDVJrK/jI5mtjRVIXYIHC78dHSUVlCpSgayBWDRDCsQerYlnxA
         r7wGT8db2ykrFr69iSKPE1p41mQIydfSdBG0MobFYddY69MaRvfRKmwL4nMC64bVvpYr
         N6Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=httZFalB;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=l1TUBTrd6xfb3Z/mcO23TC03Hikq2zRe9jHaj5v+IQo=;
        b=OCJf/L1lIAt6l9maqNetAJHS1XSBPCn6p85LN8udeeASsWLjDdRaynXjfivxap1gRG
         oQS7A2Y7nWWA8hSaNRmeIY6seDh/DlCrdSWZlJhZtzZmL2sGgioYwozbbztTC0r9Mrwd
         41GRCD9piySsHNDVejVs3EL2xwR6s7orJg4muZ50BQ+AS0qD61zy7f5qBeqRBaMEUgkw
         aFj9knFpXcCuMG5yrtYe1IARTZIIfv8QnUOLVBfSSi6C8I+FqebCH4kk2rbneRz6APS+
         nO4U8HwKMU2Td8wpw4H1n/J9bK0npAVoPTyw1Gl7kM88IT8pKtUUnhyQ3c4bpT+MfJkZ
         F26A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l1TUBTrd6xfb3Z/mcO23TC03Hikq2zRe9jHaj5v+IQo=;
        b=qP6bf6yQt73GH5YxQPLzgmj5hoYYCaoRouxqZQS3itEiXaoPm7+kEymjwlM3Txe6K6
         KRLZoIvbHAYpNzotcxQrD62m3EubTczZUrKY8UVszBoJOVTCEZa8Tz/zglU01RXxW7B8
         gbA1E1fjvEu2qjtsYZg1n0etQhB+7hvrjMSHnJLc7uiWmEsjrc+sb5ZVmD59L6EkgLU2
         lV86rPLePGHorogsSUSXIxyUz2er2Tu+YJgBgHN+mIs16JH0OSuM6TJw/1hJNP+XzTWW
         R+nHe1K2jvOS3XfzGmaPTbV2lvexWVEbdyTyAo1GV4XAkDlCXcpGF2RpNud2Orb5EYeV
         zBYw==
X-Gm-Message-State: APjAAAWmv+UsF69RvmnMiiLCHfhwv4zxzUFdYCRye2hOZTvPJ6K9qy7c
	DZySfNTzFDR2IjwcrtvInGU=
X-Google-Smtp-Source: APXvYqwf8ZcBgLgMHnLmYj2g82agPpcmH+1Aqlj1FmdvQUc0VEdvoCcV+5TIDQw3Y59EmuhJyLOHDQ==
X-Received: by 2002:a6b:b88a:: with SMTP id i132mr1176629iof.1.1573612939574;
        Tue, 12 Nov 2019 18:42:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:aacf:: with SMTP id p76ls145127ill.1.gmail; Tue, 12 Nov
 2019 18:42:19 -0800 (PST)
X-Received: by 2002:a92:889c:: with SMTP id m28mr1222414ilh.157.1573612939307;
        Tue, 12 Nov 2019 18:42:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573612939; cv=none;
        d=google.com; s=arc-20160816;
        b=e8t2u9DuVPkUM+lCTJlJghYcQjVKByR7/pNNVCrKw2XxoSOBUSjeOmVyWgrNjEWLc3
         Vyg5bbbT1vEPPEj0gcYmRe8+ecGqpBCYlUBztnUfrXkzRViEOE3eQ1vkBeYoeeZDVT/x
         KJ7Qkgxl4Ys58ahBWfdAmOe0lhlVWS+o6/Rxtks6TjEZjepKVvebo6rHzjKv54mtC+gt
         OPcf0iMG2C53++/1i7y0kywN4q6aBIf1XBqx2I7kI2D1DAVyPg7QNNLirWJ/f95IFDup
         iIApsj57kIePsMH95r1iZ0GSOp8wYfJDxduTKmXu+KbnsguQFFf7dcr5hePUZf4vUs+4
         y5BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9ewNkq+k7WzF7N7FeKsJZWJsQUcIf4AaWPjf05A0Fco=;
        b=bYl0BcaYLm+drYi3tttks6fZVOLirMf4FjQCRs7CNmVtEzAvK+5RJ0uO6M9/Y8h3uE
         WD4lIqbj/wN3Jr66y0SZb7F0pMAvfJAkAjUguldd2LH0UKqVTQeruqioJicwR4xHnZnF
         2keeHPjqxzqanTmDvyY1ktNU9p9XQYfqsK3V/Nd/6ogmI6E6+rMFe62qcX6gSZyc8fPk
         DjB+ZfJX7pHnuzyj4oSZgwSoIKPPmEwDY2wLT+fbK16HYDWbf6OckAlF24qS9UHYV08N
         pmzecHqcQDsUEgbnckSapy53smNrgwUqa26WHkFedpVOmaqJiSnDzr6NkFm+q92vwIUM
         3iHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=httZFalB;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id z130si36587iof.5.2019.11.12.18.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:42:19 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id h4so353538pgv.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 18:42:19 -0800 (PST)
X-Received: by 2002:a63:cb0f:: with SMTP id p15mr887811pgg.81.1573612938430;
        Tue, 12 Nov 2019 18:42:18 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id r22sm395559pfg.54.2019.11.12.18.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:42:17 -0800 (PST)
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
 <25cb9647-007a-9c18-4784-49c0aef4f54b@arista.com>
 <20191112042546.GA119579@google.com>
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <d828cb62-aeea-4d67-33ba-b3a93ea10a3d@arista.com>
Date: Wed, 13 Nov 2019 02:41:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191112042546.GA119579@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=httZFalB;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as
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

On 11/12/19 4:25 AM, Sergey Senozhatsky wrote:
> On (19/11/12 02:40), Dmitry Safonov wrote:
> [..]
>> In my point of view the cost of one-time [mostly build] testing every
>> architecture is cheaper than introducing some new smart code that will
>> live forever.
> 
> Well, there may be the need to pass loglevel deeper due to "hey __show_stack()
> on that arch invokes bar(), which invokes foo() and now foo() does printk(),
> but we don't see it". The context which decided to backtaraces decided
> to do so for a reason, probably, so I guess we can look at it as "a special
> error reporting code block".
> 
> The proposed patch set passes loglevel via slightly unusual channel -
> via sprintf(). We probably can do it, but I would prefer to minimize
> the number of such printk-s in the kernel. The code snippet which I
> posted also does pretty unusual thing w.r.t loglevel. Both approaches
> are "non-standard" from that POV.

I don't strongly disagree, but if you look at those results:
git grep 'printk("%s.*", \(lvl\|level\)'

it seems to be used in quite a few places.

Thanks,
          Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d828cb62-aeea-4d67-33ba-b3a93ea10a3d%40arista.com.
