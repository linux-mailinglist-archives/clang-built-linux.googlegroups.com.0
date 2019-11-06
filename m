Return-Path: <clang-built-linux+bncBCSPV64IYUKBBEVORXXAKGQEQT2OL7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f59.google.com (mail-wr1-f59.google.com [209.85.221.59])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F55BF2295
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 00:28:19 +0100 (CET)
Received: by mail-wr1-f59.google.com with SMTP id h4sf50898wrx.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 15:28:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573082898; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZtajMoqxzHDV7RKGRWLNaCyyzXThHgU7rzhNQkS07dZR84R0imqW7tQEaThfyDhGA
         4gGZDzpJuCNavWQTIMyBzDi9MTGCbypBESCPJ5X47AFdvV76UA7UwLsXXVh3T0LV77S6
         YfNwrL0HPzz47iYPzEGYS2MEce0oSx4VlShX8nvLO07K3x5b79j5T5OtacgOKexH5uU8
         yYAXQYlIdLYlRqlFGs77kxkR4nBIgYnluJjTjr7DNSXTSi8Vnp2leTh2VOuBLJlY0eDX
         9dsMVTQ4iD4sDQfSlKbhkLcJmrAxSzWNivtlKofqnw5QeHGcFcAKOpk1PSNMrZFT88Ly
         co/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=MbajO3KAdD8OYbNkWUUDQbmJ3pHiA3ybcXAo3gTRa0A=;
        b=WQ+xHkY3WwlcveAtsYdeK3AHlJHM18Rcw/UrlSEBUJfgkiJJT13Kg5ZUbleTMtRsSm
         o2hsqP4TChY7Q2SvG+Vf+rLnHU3KCRm+FPYBdmGrzOvlhyjmxQqkSLBys4lcjTuVc1AT
         xIJntQut9kahSlPTMScbecXGaGYAWd3pB8wQTGrvmPMMYWJxK/yorFd+0P7i5NodEIV3
         IGT3eyQX+3IKlI2eQRWBS9mtw9kBGjIk2GWVa3t3EWY5x2PIWE7LY7Z3mrn9z5SOYgas
         W8s6qPoyd0RgjoDFe4ziKCP/Yr+4Jm42CoIQrRb7qaXcPYd570l51Nq/iKCA088x+xe/
         vAWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=iy2paYFV;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MbajO3KAdD8OYbNkWUUDQbmJ3pHiA3ybcXAo3gTRa0A=;
        b=lRhZZbezw8c1o98meoUvuCCSUHY5TrKYrDKrFzGFLziAmrH1Iderasvhu6qSs66izk
         +gG+hHEIMOp3qtyIYZwJMCSRAO0UNjVIf30kSATmylbwY7kpjis/nZTWbVxLMH20L5Lz
         /hCz715Txn/hBMnmimhg0ZybM6G1A+6bp87t2rdYzWE3uxditpIYp7pggXuurvfhKWvi
         cEnxiEOC1gIRDRWAYppZKkTmeHq4vH3PbBfNBt/2CgKLsdMoe6IgjoAF5Rs7rglaandh
         ZkhNl36BuAAYzWCc/9nuYlpDWGGnG690oYBkSdCnewEPBTK0NMJXWObtWSzG+CILy0ev
         JYQw==
X-Gm-Message-State: APjAAAVVB8VyzqZ6yKSxRU+WgmjCJwa5dVYV+K43rKJYZtDi9yTPW3B0
	mXQuFqzzUuBoIHa871QcYM4=
X-Google-Smtp-Source: APXvYqzm0YEJzYYi/0d38yeoUf/HnA3Mrzq1XLOYQBe6MY5VDtI9FhK026ZR1NEFGxlXolgPoqtHJg==
X-Received: by 2002:adf:e544:: with SMTP id z4mr132590wrm.6.1573082898781;
        Wed, 06 Nov 2019 15:28:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7406:: with SMTP id p6ls790257wmc.2.gmail; Wed, 06 Nov
 2019 15:28:18 -0800 (PST)
X-Received: by 2002:a1c:750e:: with SMTP id o14mr123889wmc.28.1573082898273;
        Wed, 06 Nov 2019 15:28:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573082898; cv=none;
        d=google.com; s=arc-20160816;
        b=m9Qv689zwXlNkgSuyiv1Vs5tz20PhkTrHKWN4ixFmWH3uuiFlRyh+IRihMSr7Gz51X
         3NTwg7vviHdkjryF2TXmp919VJANwMUtAYfux/6MvAcdkOXeykMnOHcxANPVMo8CKHum
         QFfneMz/X+Qi9ZWQ6MRVJbNmj1Hrp4NChLIeHeh5BQtR5vjd7gCvr+JDkTObj9By+yFa
         Yc3yESCRj8MAgh6Gz/h2GTMLBCBKYOJ6dXZ9D9mXo/Uol3CN1J88m18vfkX1a7I3ZQDu
         QQxzss/+/IanI8TAid8C+ViybrRDsO6bSQ96T9s+lLwOOFbu0p4QjJ679xQO3A2v84UT
         YE8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=PRxpis2yYVwo9kDaUSfGCl5VFlJxyHbhU0YR7G7gbJ8=;
        b=MDme05Mk48JPIhkLeP5xx86epA4wfwMDw30QyHadTtKfWVwdhuB+Y4vS/3rjgIeqDt
         awG42mQXPp5mhzcH6xa9XXpGF3HIkTzdS2od03tZv7dqfHoILo92s/Fyn++kVd6pE75N
         nych5tKQ6I4CBK1MxYEaPCkFayNYje8euIzt6MmTuqZAwuFNkm7imTv4iMvgbnpD5TPf
         3pwwU0c6jIhB47p17OHkpGI8YhFavDsHe5Cdd10WjP+vliC53o52U36Wqdsc35A6C2V5
         SUtCdhT4rt8DssQ2SKpTkLF1KBotqOzwS/czaTeCszPfPwzRlAKfRoD0d4XbaNAvjPez
         47nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=iy2paYFV;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id s126si462853wme.1.2019.11.06.15.28.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 15:28:18 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:52746)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iSUgS-00085H-Vb; Wed, 06 Nov 2019 23:25:53 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iSUfp-0004Pa-1s; Wed, 06 Nov 2019 23:25:13 +0000
Date: Wed, 6 Nov 2019 23:25:13 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org,
	Dmitry Safonov <0x7f454c46@gmail.com>,
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
Message-ID: <20191106232512.GU25745@shell.armlinux.org.uk>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106092039.GT4131@hirez.programming.kicks-ass.net>
 <10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
 <20191106203440.GH3079@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106203440.GH3079@worktop.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=iy2paYFV;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Wed, Nov 06, 2019 at 09:34:40PM +0100, Peter Zijlstra wrote:
> I suppose I'm surprised there are backtraces that are not important.
> Either badness happened and it needs printing, or the user asked for it
> and it needs printing.

Or utterly meaningless.

> Perhaps we should be removing backtraces if they're not important
> instead of allowing to print them as lower loglevels?

Definitely!  WARN_ON() is well overused - and as is typical, used
without much thought.  Bound to happen after Linus got shirty about
BUG_ON() being over used.  Everyone just grabbed the next nearest thing
to assert().

As a kind of example, I've recently come across one WARN_ON() in a
driver subsystem (that shall remain nameless at the moment) which very
likely has multiple different devices on a platform.  The WARN_ON()
triggers as a result of a problem with the hardware, but because it's a
WARN_ON(), you've no idea which device has a problem.  The backtrace is
mostly meaningless.  So you know that a problem has occurred, but the
kernel prints *useless* backtrace to let you know, and totally omits
the *useful* information.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106232512.GU25745%40shell.armlinux.org.uk.
