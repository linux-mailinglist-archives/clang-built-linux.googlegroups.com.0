Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBJMGV7XAKGQEFQQYPRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA81FAC35
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 09:47:34 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id y14sf984582wmi.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 00:47:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573634854; cv=pass;
        d=google.com; s=arc-20160816;
        b=HHo3DKRnLB2vJpX2/tEM8TTXoTiZq/ZLRu6Yyeqp/U+tys2e2jURsWgpG1hq0V4bnu
         ApUaCJtbLNEho0kg8i69dq1c8ZWXHi5YMAkZ56NOhFI+X4A/FCK+66sOj1PQVdhgIib/
         1RDAHz1jmOeiFRFBOthuCLI2beKTgAFFDt++7KVpSj37zkmrX65xpt46sSKHahDR0fa/
         JHpuWC6atrh7Hm++hgF7X4LsHRAgvlx2YAIfR6KBt0Rnkt/D4gUsvbLQUz+rNkLaDe0L
         qvOu5GRbfA2L/k4B9f4zBhtYTEvteK1WDCvdbyk2PHzDLt6mV/LrM7q1JWRaubEqmeMl
         DZwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1tI/yCfFCqrpbElHceXg6GHPyXn7IpZ09kcixz7eX6Y=;
        b=EUrfo3Un3An9+vwDHypQqf1emvYyOK4SvYSSdqaQlC65Sh+2f44rcAsNuf8rVsi8lh
         13cWXZety5eaCuXTWaVaG5YHy1W+gvw1g1YhIiLcnZWWCOBhucoZ20eMSA065Lup7NPo
         Am10s/Gei3dvimAEaonQFnemv5oC7pLq6mxXa+h5zRU1PK/GdT9E4gb+HO1n037mJjd8
         a8eK94uv3SpVkeoOp3OrvBP+/qjD52p2k1nZqvMPahqs03lRjMUPmrGVMC17KlJKRKWc
         F1/2jAjMZCOZvjPLVKvp7EHIWHQvxLwbjlFmjC+K6UN8k3KJXM//4lxrv1wDKr2clVVK
         jLUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1tI/yCfFCqrpbElHceXg6GHPyXn7IpZ09kcixz7eX6Y=;
        b=sPXPOqxQiS5GBrOUue9kmuGlEUFwLpVydq5qhp851eUp0NyRcaYcJu9EUC46rE5bAW
         KsIeluSDgzz219ZIW0WGBf0CrXsFUZjiEAKx8Hbo2SKNGmNV0QYFB9d1JY9T46LjZdRR
         CE3KouF+DSkFIfN3ff4NuYk4lkEPFKAJVmHTt5MX9Zdpb3dXBjDW7lTPjydcYZrsCAkS
         uCQWXH+an65etuaEh3G8qUPTI6yFim4Bquxz1Dd8/h3wfOMyOzN1lR/lN7vHoWFKKmin
         6UvXDxvxCzD8z/Pg1N03vFHMWZ+RlzYNasRjTobXmDZFX0Z/MtScYn3bBeJVcGJdGh3L
         FpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1tI/yCfFCqrpbElHceXg6GHPyXn7IpZ09kcixz7eX6Y=;
        b=rHaIJV0yJTiU7gYAnY+mlTcxpxZen6IwSyA5xof2lstEICCALPWpaMauIaVuYNnVFV
         6fV0NWQLy/yoeTG2GxNQnQE3Qx7+4Sr8SHqLfP3dYFkUW5gzRCaBKq91+yZpUcriFwyw
         g40/gTtbQX6Zl2cUg+YkV0lSfTu3BJjYJDOo5rkLgJdVJgXqZ+RH3tUKEndpzLqeWfun
         JiH8rY5Hb3682mpFvYMFdAv7gon0r5qLySNRYGME8flGMpsfF51fMR7qwHd0h9BRWmPq
         WV9Ifpp1UPiil9C85jLFyXL182zIYtLaw8/bHfbfWUw4QPTvDZ2I0zCEeorasJ+Z0sRs
         /D/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDyMpTPS0Mh68DfFU/M1qcudIfgsvB9WPMPkBE+qlPEwKeKPf4
	tCKiwZdaV9xYoJVwSVlek9k=
X-Google-Smtp-Source: APXvYqytlFO+paqA3Y4moncdt3Xupdbd1Qb33Q7ajlGhc6ft5wXTKoxeWiWy/2+TSjiWH6H/yQ+PtA==
X-Received: by 2002:a1c:6386:: with SMTP id x128mr1589619wmb.41.1573634854016;
        Wed, 13 Nov 2019 00:47:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:660f:: with SMTP id n15ls2114625wru.8.gmail; Wed, 13 Nov
 2019 00:47:33 -0800 (PST)
X-Received: by 2002:a5d:670a:: with SMTP id o10mr1722568wru.312.1573634853536;
        Wed, 13 Nov 2019 00:47:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573634853; cv=none;
        d=google.com; s=arc-20160816;
        b=AY7O7c2GCY+kysJdaXsAeqZzXlLw6p0aYWRw8KhzDI8Wnmfc5swrLJmdCncvxdgDlY
         UnbrHkMr6CUvAeMm+7V/5Sks7NHXgyA9fmM4HYGjJHyKHjp//ZPp4VmG9YapYwnbzdn0
         Iii1whaP/YuxZALjiga+1aCwT1percZZvI3H728M4rikRp0Pc5FKYiT62Kqrf84eA+IE
         /e7AUgmk4TaBhKQJYTJxJpXj4Ulo8mfs0BJv3EYzWhQjXCQJk7Dq9PEBqdx+7tQfshGu
         QRgltQVcxtf1kuGaKGpW3qR8G0mYRDFMV44T1ZMAdk+/YVkftdfOhyfvroe6j2/bGAGW
         Gl9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=KkOjqC3Ll9E7U01lXZ2bnQJUC/aAPuEK/i8AYPo7ync=;
        b=KYpS7dcIOBsq8tQIA+mJUzvpByT+fh8SaRIy/WbR36BXYFa3LG3KwYcO1/8nxPkudN
         IPUHHcrWTAmKO3M2hYfNYknVPOSpkvP7mvbeXY1xvr0lEdiSM+eVgrCbc0e/n+Q9NhrU
         ziqqQ9F5AFEPk81Bd8KX+HCjMcq4G3Js0QNWWn6r54ybCn+6ZzGqfZa1f877C8eATzR6
         zsqYyWu2hGvcrswOWVCEg5N1QpUOadJ2R93+Qmrxa6autsBwUHB9laVE3FcfWpFI02rB
         KeAPRL8hhwucKN52iYSZDbeyU8pZi+hlPY8o6eA5uppjjphJumZnjf5DWts63cIKXFeR
         iFww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id r11si110264wrl.3.2019.11.13.00.47.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 00:47:33 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 072AAAEC1;
	Wed, 13 Nov 2019 08:47:31 +0000 (UTC)
Date: Wed, 13 Nov 2019 09:47:22 +0100
From: Petr Mladek <pmladek@suse.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Dmitry Safonov <dima@arista.com>, Steven Rostedt <rostedt@goodmis.org>,
	linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
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
Message-ID: <20191113084722.emzee7g34zki4kkl@pathway.suse.cz>
References: <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com>
 <20191113012337.GA70781@google.com>
 <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
 <20191113063334.GA147997@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191113063334.GA147997@google.com>
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

On Wed 2019-11-13 15:33:34, Sergey Senozhatsky wrote:
> On (19/11/13 02:25), Dmitry Safonov wrote:
> > I guess I've pointed that in my point of view price for one-time testing
> > code is cheaper than adding a new printk feature to swap log levels on
> > the fly.
> [..]
> > I've gone through functions used by sysrq driver and the same changes
> > introducing log level parameter would be needed for: sched_show_task(),
> > debug_show_all_locks(), show_regs(), show_state(), show_mem(). Some of
> > them don't need any platform changes, but at least show_regs() needs.
> 
> Good points and nice conclusion.
> 
> Well, here we go. There is a number of generally useful functions that
> print nice data and where people might want to have better loglevel control
> (for debugging purposes). show_stack() is just one of them.

Could you please provide some examples so that we get an idea about
the scope, usefulness, and requirements?

> Patching all
> those functions, which you have mentioned above, is hardly a fun task to do.
> Hence the printk() per-CPU per-context loglevel proposition. The code there
> is not clever or complicated and is meant for debugging purposes only, but
> with just 3 lines of code one can do some stuff:
> 
> 	/* @BTW you can't do this with "%s" KERN_FOO ;P */
> +	printk_emergency_enter(LOGLEVEL_SCHED);
> +	debug_show_all_locks();
> +	printk_emergency_exit();

But this will not solve situations where the original loglevel should
stay from any reason. It happened in this patchset, see

https://lkml.kernel.org/r/20191106091258.GS25745@shell.armlinux.org.uk
https://lkml.kernel.org/r/20191106132516.GC5808@willie-the-truck

We would need to investigate more potential users of this feature to
see eventual requirements. If there are too many exceptions and modes
then the generic API might get pretty complicated.

At the moment, I am in favor of this patchset. It is huge and
needed a lot of manual work. But the result is straightforward and
easy to understand.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113084722.emzee7g34zki4kkl%40pathway.suse.cz.
