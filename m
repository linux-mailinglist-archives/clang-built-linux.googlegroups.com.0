Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBJ5BRLXAKGQE7A4JWKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 02719F1204
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 10:21:45 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id u26sf25461216qtq.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 01:21:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573032104; cv=pass;
        d=google.com; s=arc-20160816;
        b=xb0AmfymIDGlpxNygMuIO5ThLAW/XFhoGm+YFT3Rhi93BRkMPHqAkf2yLb5Pv/vtTl
         75AuSwNzmvhukKIz1VBYj3lG5Ei6RPC2im00XWvJxklB/17ePByegzfuxrc2j6xaYlRn
         NW2D1xTyYkMKfgP1J/lqPx86eXHfPBgIoxYRwbRuRG0yyrjRYl1oaaQqOkMNesjpfG8k
         bS45eRf6Wm4hGf93j3x7OxxcNFGA2ycJfdxA4Lvjl+pvVE2kY1C3SbEkHsIWOIIKxj+z
         EdM4aKASYTdahlsv3O/g6G/7+NId4khmWUrXn1DJi5n5VvNbPE+LOKOOHQ1KUXrsu/Aq
         0Lzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Su56iMftQhZncJk5JFLcm+9hboyyeoxrTzm6/6XW0uo=;
        b=kCkBJG0dFKZNNgiX9iGosYoKJp/twI+vxl9UVZ3NXjR0hU6vCFKQVCZoS1nGNvL08a
         ukPyLyYqpbVHstpXWsU+tX73nvoiYwnGJXSApIA/AM37dw3ycn5HdKjDyf+9yeQgFH8T
         hiXemf3nHmYtgoIMXdPOjjEsVC2u628pnaDhVr0rPfQXVyYhBgqzgvUQoqurtCi6G3UT
         ETXkfHbpfClByKj1f7cjpBDI5gdkyGWHNrN49f33BVWJRqTM5wKqrUnFJFMqeDxpjW2W
         30ZDb6xmoWz8AjKeDomshww+NLXsa4mPhWQbJqXnzsx674KZ/B8LAcM+HVbct5VNZFLX
         OI3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=HBZNe2Ys;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Su56iMftQhZncJk5JFLcm+9hboyyeoxrTzm6/6XW0uo=;
        b=JZcbz7Ru61cJauLDSW8lhR/hIH/ZkrtkifnUnLa8ZPGVW/jmAkYV1FgWMzrzgg8lkO
         /NurOr0IWdHw0Ja8Z4l8eIGNHHkkk5VJSC4s3afEZPKH3ncQIaPnqhPEU+Zi3pCVufZB
         OeqmVNq71TYlw74OSo1tB+ruJUDb8VAPvQ8WFdKqjNZC97f0X2xfynVW5Flc5DFLq25c
         hqU6m9pEQjvf1U6LXy68T5RYizMOPh7YF7bpKKZoSZdNxYdtbrcD1dU5GTzwn8K//QN6
         JX1q5l526pE/HdtlQyypvLSM3mtINx4G/OUOvG3OrmnGF5jK0joeNsLzsuD975+S9e75
         FcRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Su56iMftQhZncJk5JFLcm+9hboyyeoxrTzm6/6XW0uo=;
        b=AScd8FJZJh0pjc462+nH+5UPN07U2+vedN4uYisp7+vEXUlJh+mi+XUWfNftg3fKXn
         yt6gT6sKoC92K8l/Zqycj8BS5skLugUpaKNhtoZCsSDkSl7YfsuFJ8MI8spwWaRZZXx0
         XuN2s8+wNDHdqzud9JaSKrlFlFYmutvWRxDSMz1OFSrYWS32DaPKxUX2OLo7S0tcX1ug
         UrdPr7j8UQ9vblnEUWHiaPjunDjhvb71JRL6Qs5mlRWCwfg2VvjnJJxcuyeTskqxWLa5
         qdYEFPvAAG51zKDxzPX6G1JihoJITDhGpRBWtUV5l7o4mshYrvpKA2N6JvB3ZGgZKk+I
         kuPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1M5BFY4yWBTiOVl0Zdru3incoaR36uDDLPpyg+PbgzNUAXD+H
	KY1NwFg30+EKMgcmDkPtals=
X-Google-Smtp-Source: APXvYqz8ZuCPAhZbTIhoByZ24Nt89SSvumW0MlFghqcRhPdgORWg70YMKt6O9J8y2X/20Ur1Fe9unQ==
X-Received: by 2002:ac8:2cab:: with SMTP id 40mr1431360qtw.239.1573032103854;
        Wed, 06 Nov 2019 01:21:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15a2:: with SMTP id f2ls529578qkk.4.gmail; Wed, 06
 Nov 2019 01:21:43 -0800 (PST)
X-Received: by 2002:ae9:ddc7:: with SMTP id r190mr1097959qkf.344.1573032103425;
        Wed, 06 Nov 2019 01:21:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573032103; cv=none;
        d=google.com; s=arc-20160816;
        b=SnUQZgfRxqPvvYYQe9woyuZRuB3lCbdhxv94HlXsdC7nM4p+tbEeRCirJhnw5SnUGh
         2f4NxMUBG25NDXlNvg7QEx09KELWrPCF+YQ728XpfpNlW28bdyh7j3NwMyiZrDd7RIbg
         N1eVZXVotOerOWK+A7i3ifKxK3yWBgA0OGbMp+M35EFWLm7BGsRnREeL6962G0VyQZ/t
         1N9CCukxdM6C9y6SOwhFi2ODYnkS0ydN6+tSJonTQjJfB6BFKetFNi2m2xtydu0sYISb
         5rTN9FgV2BpdwYEyNZp7AsOzIp0+FGmB+x00NDEwj1N5Oy4cpXyzrCDeOgUjTUrzhxjJ
         mCig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XC4fPCw3J3i5aH6OXgVy9H1qRwbB/y9LePlmMadDkeQ=;
        b=rc++OoWTyALHl1aC8vrNizkgDcz4mTjt0tXGVAI4SRAkzb+8CoXRnF8SxHkRHq5g/L
         CV2c6S9XvZku43ACpUMXvkUd3NcfVkmYzmaoCy+vrQEksmiTPNs+V/LaWm3KHLvtqIOj
         HZLz2goi5+C1q2sNUziopiH8dnZPs53wlCAYgQ+B0g0//z/W4rkFMSqs9g30bJ0kn7H+
         w9s/ZfJjyeC3ZsyIJqlDQq1IsDbQzYNxXrUDUK7lPaQAtit0NezO3uo3X9C5kCOr1TC1
         XzJPyRYvrqSqsdrdE5SzaQefDVhBmixC6UevU5SUaVd1aHX+u0AcF3X9MQeB7+ffq8F2
         TqKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=HBZNe2Ys;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id z41si1495104qtj.1.2019.11.06.01.21.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 01:21:40 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHUc-0004yc-GK; Wed, 06 Nov 2019 09:20:46 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id EBC3F302C0F;
	Wed,  6 Nov 2019 10:19:35 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 9F3F529A4C2C6; Wed,  6 Nov 2019 10:20:39 +0100 (CET)
Date: Wed, 6 Nov 2019 10:20:39 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Safonov <dima@arista.com>
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
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Burton <paulburton@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
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
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
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
Message-ID: <20191106092039.GT4131@hirez.programming.kicks-ass.net>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=HBZNe2Ys;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Nov 06, 2019 at 03:04:51AM +0000, Dmitry Safonov wrote:
> Add log level argument to show_stack().
> Done in three stages:
> 1. Introducing show_stack_loglvl() for every architecture
> 2. Migrating old users with an explicit log level
> 3. Renaming show_stack_loglvl() into show_stack()
> 
> Justification:
> o It's a design mistake to move a business-logic decision
>   into platform realization detail.
> o I have currently two patches sets that would benefit from this work:
>   Removing console_loglevel jumps in sysrq driver [1]
>   Hung task warning before panic [2] - suggested by Tetsuo (but he
>   probably didn't realise what it would involve).
> o While doing (1), (2) the backtraces were adjusted to headers
>   and other messages for each situation - so there won't be a situation
>   when the backtrace is printed, but the headers are missing because
>   they have lesser log level (or the reverse).
> o As the result in (2) plays with console_loglevel for kdb are removed.

I really don't understand that word salad. Why are you doing this?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106092039.GT4131%40hirez.programming.kicks-ass.net.
