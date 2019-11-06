Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBZULRLXAKGQEVV3TUVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A75F1125
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 09:35:51 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id e17sf2533157ljj.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 00:35:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573029350; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTCd21B0cERgap0zawRYZspNwvMLSIuJ9n7u3qKjufacVoiJPgQCORV6TSLybIotiq
         48SgzzWZ46h+Qcu4oNp7uQF8PB4IUvQPI8R3MDf9RMsipE4DaFyPwr7/w+LeFf7se9zb
         fTRbu0l/rzFT16GpOtIQVMiF8jjqw0i8nj35pF9LKmdvTR+hbF21qolRCgf4Yh2UzNZt
         p9P1Pfl6WoTM0gjIUaAf1D5sZVJ7TPHgfu/IrQhGDEl2S4HAtL5oe/mL8YYTy+KUPXV+
         BwrQUbs2pvI+HGm1N66iKlMv8JLo14KuDuTTxWouWT3OUrsxIGVAzi7OU2qA0PSSsYRh
         CF6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZKZIZ8fYQ3JDh7ArDfbYTESXAcyj81F0HjUXoUnVzOI=;
        b=uW0EnwhBYHEgQTtonGVav6jnqdezgdKiaVrVul6vbce3qO5vcur0ukxPJkKPeJ/gnJ
         EvSvzyOshQGpAH9U7GVgPEzw16P9ITrTJ9JzQVnS8wrS6TyaTxIS86Pv8J4sALIbDyua
         3EzpYWg0pCW5BEgWsFtQ2mJBR9ACO39PzG3H7J7eTOMUJWQEj7x3L5GFRuLN0fFrninr
         ZO5eRY9tpGnmkLmPNcZwIkEhwJ/fhABaUhwv4fXsvahPisS+iq77IJnMGeFiktCxLYyg
         1XyCIpwFaoyGRR1DGq5Odq3bWUvbf+zWsGmHVmvOBLb22aj6/XYvbw+zfgwCSh/dv3K+
         ZkuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZKZIZ8fYQ3JDh7ArDfbYTESXAcyj81F0HjUXoUnVzOI=;
        b=GCaCvz/tPS8pInqvJi9FDBexkCyeuknApJah1YhRlS6jC5OtAXNpiEPkKCug8khpn+
         nggGctzc9L3jp+yAmFGncOqfylk4L1HgwuatdfYVoWqA8SdlKD2TKIrO6FdbWDmlWYNr
         o+XGsIQW8QYEseOS4+sAShnkiM5oOaJKjesuBCwufDF0qkv5mAkb5UMh7/BK6aIfgcgw
         CmeqcwEQNP81xo+y37kF5VH6s9LyAvvWYpj+gHYEaHwl04OcIv0A8aMg2+vZlHxNB15Y
         i4aD3iAgmkw8S7Vjj2gb+Lw3+eNHOfTXJ6r7Fnxeyl2B5qpdXU3MPdO7YucVcpsOVFJ1
         7cvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZKZIZ8fYQ3JDh7ArDfbYTESXAcyj81F0HjUXoUnVzOI=;
        b=jPOIy4UBldNiAmAsWVg68vuO+ykQkjEnreTIAoglTTynjDSuY/136EtgBeivUPvIai
         +SNnO+4o7/PnBzvKD+zPBkPhAPZBP6PRjUJPxM2zJZhevh3jcZXKm4n3l7rl0+YchGfd
         YTPF5piq/0FLxsSy0fdxC6p8H1WjHZ9FrYq7izup/mlJw3cXsZ33zsNFMoHB8Yp9PAqb
         bokRKCAB8e3gduL7GvAFcBI8mYBA/nkKLvaXQatAHAiZ3Syng8LSL009uwnDrmIrzaYS
         ZbFI7ppPjlt4vpNP1zXvfryuOo0vmEcozc8YqCu4vFuh2+LT6qUgzfpxgmL9gtilCAKJ
         0MkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXw4rHLF1KJrwjeTt70SW5H0SZOJKyWeHxg+Xvav4troUhGKWL4
	V6ZbOLIpgpfkpu+wZOJSM8M=
X-Google-Smtp-Source: APXvYqw7NTYvt4HsWlU7b+sK1b2hjm991n44+xQS04n0ZYjUSWFVQDOwXlQhYp7yfeVTILzEz/QWQw==
X-Received: by 2002:a05:651c:1196:: with SMTP id w22mr956590ljo.217.1573029350542;
        Wed, 06 Nov 2019 00:35:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:593b:: with SMTP id v27ls453951lfi.2.gmail; Wed, 06 Nov
 2019 00:35:49 -0800 (PST)
X-Received: by 2002:ac2:5295:: with SMTP id q21mr23182785lfm.93.1573029349978;
        Wed, 06 Nov 2019 00:35:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573029349; cv=none;
        d=google.com; s=arc-20160816;
        b=lMAGHlwpD2PZhSdKD4RIIUJbaz3RHdrpwwshmKieN1jmOhZA9XpCbDBstxPVwMjRP3
         PMvJXthR4Ka7RL79/J9qxO33NF7alK7xTqvb3RbzHnxScqES4E8fUW3Ubma57haP/l91
         4MQ38igfPuZqlR6NcqKuAVhHK98CwGGYUeeAUJRv2dxYaiOZwftfMr/S1/vlrfPVZ1Bu
         PvfD223GlnnUXsrT3Xv2PmB7PNVAMcUGi+6H+zef1K/jmkwg2/w1Se2IdSnhpkTIrgsC
         f/x9bj1foKXaYsEDIIW0QLZxjE8P4lkobpH2EJowUiZCk4u/IN/LIcVn6Jrdm3OLg3gd
         7T3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Qk+OYjvpNaLjFaIqmjjs7SMjcunhbhU68T3kJ5WqXMs=;
        b=gNuFIdgEJwRWMhY08XZ6pWQbg5u45L6jGfpFP7GRzQ8FPxb8oaKuu9xMqfSq6/Cixp
         cZVUSysLBuwHpywvobfntAyWdElwaOVIumjt68y541MV0k+hcmInCaRCfGIslmqGLz3W
         ObsezMIVnb0/R2KbrURpNOwF8xA9IrF8RgDWJrHBhnNeFLTd9qirGUKi3xd10EGoYPCf
         xY7jB8n0y2qFSCi4aoGEIVZsdHrU09MlRfBBBehYTodmXeHKrNUDLN0/IHXm95yMxFiA
         UOktIFgFJx6s8TmAPS5JvYUoR1g1wYIeOurs6MN94AuLKpehFhWM78XIpmsljtFuOxp6
         /pjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c25si1081776lji.2.2019.11.06.00.35.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 00:35:49 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 210EFAED5;
	Wed,  6 Nov 2019 08:35:47 +0000 (UTC)
Date: Wed, 6 Nov 2019 09:35:38 +0100
From: Petr Mladek <pmladek@suse.com>
To: Dmitry Safonov <dima@arista.com>
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
Message-ID: <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com
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

On Wed 2019-11-06 03:04:51, Dmitry Safonov wrote:
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

Just to clarify. The problem in sysrq driver is a bit different.
It modifies console_loglevel to show even less important message
on the console.

IMHO, it should be solved by printing the header line with pr_error().
It is not ideal. A cleaner solution might be to introduce another
loglevel that will always get pushed to the console. But I am
not sure if it is worth this single line.

>   Hung task warning before panic [2] - suggested by Tetsuo (but he
>   probably didn't realise what it would involve).
> o While doing (1), (2) the backtraces were adjusted to headers
>   and other messages for each situation - so there won't be a situation
>   when the backtrace is printed, but the headers are missing because
>   they have lesser log level (or the reverse).
> o As the result in (2) plays with console_loglevel for kdb are removed.

> The least important for upstream, but maybe still worth to note that
> every company I've worked in so far had an off-list patch to print
> backtrace with the needed log level (but only for the architecture they
> cared about).
> If you have other ideas how you will benefit from show_stack() with
> a log level - please, reply to this cover letter.

I agree with all the other justification.

I would add. The backtrace is really useful for debugging. It should
be possible to print it even in less critical situations.

I am afraid that many people use WARN() for this purpose. But WARN()
is not always appropriate. WARN() misuse huts when panic_on_warn
option is used.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106083538.z5nlpuf64cigxigh%40pathway.suse.cz.
