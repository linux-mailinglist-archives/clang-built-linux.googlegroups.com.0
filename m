Return-Path: <clang-built-linux+bncBCU73AEHRQBBBCGEWDXAKGQE45MMXRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 217E3FB3C1
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 16:32:26 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id l4sf1163626vkn.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 07:32:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573659145; cv=pass;
        d=google.com; s=arc-20160816;
        b=AS1SqZgDJor2r/g+FqB15CnZbYnVdYM81OIH2r5318q9Ls5Ww64iTTO4dKe8id0NFd
         frblif3RzFycmY7c9t1OTO8eRWafyP71xEu1PkuUzbVdH/x0dFrOi1CpA874piwx1ivh
         Qgf1Ls3WvRNcC0QZ4ausD7FLce0gV14ix6txI9kVd1Qt4k7FE1Uqps9QbjeKrBW2Gbqg
         ZCZQhwDdOA4j+J2u//lt1gV/zKzzZKkyUrAtRbcUSe2rLAqESFptnkQiLgk03nURffAl
         B3oxINT6ET2BbilLiVVbS6PDohUrYXD5gHYslTvA4p2wu/5emmQG4Dis1hMONVupOhoH
         JF3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=cSCvEEFBLKaWNx2dcQIPzkYS2TxVZrfD0+dkG7fQQco=;
        b=X+0EegYEj1oVhnyZXr10ksPqQMGFSgcakXMKaVZ2FFfckuKuVU56Y5wavAGeWELzBm
         UOzWO/6BAe677JwYLlTXUdw95gKY6wj1q3RsCNaxh8qLbihP7L/3zPd/ASooyMDZg9oe
         fPiKTi7bq5vPlUs13S+8ZpXcqG28p3izahOIMENUTBo0ZjHxq5ulqvcN9DHnFxZivmro
         xe9QYcKRw2r2n6+VwmqzLLWI1gl9tzCuyg+NaRUpr+By30XtoXx6Ileh0LtARXCjC8u5
         a+iFq5As0/Hz3p4wBxz2rWn2F9Ci0R8zNAJIJQLtjey6Mlhjjy/p8oAHdMO+aBbQd+HY
         DftQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cSCvEEFBLKaWNx2dcQIPzkYS2TxVZrfD0+dkG7fQQco=;
        b=sLVOvs7H2Wr5GrYw2JJpISyMLkS5+gOa5ttPfBoA21QJ28pTMQF9Hs5uroQhnRYkhv
         9w3hqmTnHlcewumpnoqw7sSiOQyCGwJ4PamGXJijSi7BopdJXrsIq6vejCNy7mWsfeHF
         1lPMqA1eDlKkjxv7vqeUk6ytdA4JKKPvkCKMQpOI65ygyJ5jrz8LrMmvX7zE03YEsl4W
         bhLpTRP2hC+WCrbDPt6nNcXcNj0zeaWZbtOh6Dwx7BW63U0L71Vd+gYwc9CtdmntpvNf
         WTtZ7RwBgTYmmoMmdg6bzf4uG6hFekdtF7cVtBv7FpRJrob1HHOZSBbvQUFwVtqxjC40
         uRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cSCvEEFBLKaWNx2dcQIPzkYS2TxVZrfD0+dkG7fQQco=;
        b=p3Zgj7Wvcl9OkfIiY6XR9ox/dDfT8ZcRzFjAjLJK+vAF0t8QOVf147I9TG/EThVzl7
         uV02/ikj/ZUOAXqqObHItb8W7ChNnGSvmvax7mqxwcxlJNckpCCjKgwrg9J64umbJhrB
         nCPP/qlh+Vf7DLO/I5rPvWri0omUED2wYM8/a923nEPe/cqISWwt84J8cW+qwwT3rDY3
         7kWbGMZNCLtk63lgCFVlTLaP8FllFVk9bWa+8qbRnqNaLxZ9SMHkmj0+UhI23eTfR9A9
         aGRD40DzW7ykTE+JJV+WJrQ8fb2cAAX4E/FU7WGE9SH2GiTzH0pDtXpdBAJAQIvKhVRu
         /qWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVS9Bnzp7Q3wH1zDU75Pn74IE4dnyWdh5cBj3xsUsktFLoS++3g
	whGuXPWj5tlymJp+oxeQOis=
X-Google-Smtp-Source: APXvYqzkJLLra5TAQToTH0QEurJWnIMBrj3zH7wIUa4ZBcfjT8cS3pMFZKSiGKYL2NQOnn+9NIFwBg==
X-Received: by 2002:a67:d019:: with SMTP id r25mr2286884vsi.107.1573659144896;
        Wed, 13 Nov 2019 07:32:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c967:: with SMTP id t7ls48228vkm.4.gmail; Wed, 13 Nov
 2019 07:32:24 -0800 (PST)
X-Received: by 2002:ac5:c2c3:: with SMTP id i3mr376784vkk.17.1573659144419;
        Wed, 13 Nov 2019 07:32:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573659144; cv=none;
        d=google.com; s=arc-20160816;
        b=cRs+Qkq0kHe081tFJ1VNQd6SeiF0S0xdFbgJWYjWx9tOt8rjtk5nCOyXHvo7wzyjuL
         9q4HwBDl1vFXPdyaFAJ1gJjvM2teMGeLR4aTYK6Q6LScDBi8I7IcWUGwoRoRpr90QIMp
         ZxWSi9nCgld64dyq34ZVLpLntMXGYeZwW8daMjX6hdkMioxe6GC5Bi41c0iz07gGIuuu
         FysUiiieXfKE8Svo1ftwaf6yawiHbjiCbq8+8GPHDHtgDid8CXv78nwHKwP0QJ4SQk6F
         qgrrg8QcdZmVD38+hmy+HOSLJ+fh56pKnAS/wWCN+To1mq027dGMb3eYs7xWkCR3+cZ6
         Ni/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=e5rvMICZAsQwI1I30ZpWQ1rTleXP19y89+IzS9q5pJ8=;
        b=LDOEpd+0rlUyHkHRjSr4/a9htwXC29S+20UuTGH9YdsICXO+K8ABdPblw3c4GcyeoC
         RSNt7Q4LFWnt2Ri81Cs41Bmi6NmUCzpcEHIfPrhzfsGgiAefVwOGYZebFrIebZS6oX3I
         yuRdtahsMEkMJSQ7erAX6tXypaiiRu1QKFwx02CTFqtC9faFgHSADbGzoaKsSusw0PL9
         4P09JiFuId8OOda3d2BaIYCnFsyOPl35BRrThH26oPNBav6bOJYjS8Hg+50PQFVJR+0r
         rBS6kQKugFGFeQyY4jp+RDOROk8Emvt4nvz1SRKlwUazgL+Ev4xV0+cILbFdtRxaznQg
         EYDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si76929vso.1.2019.11.13.07.32.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 07:32:24 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BEBEA20679;
	Wed, 13 Nov 2019 15:32:15 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:32:14 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>, Andrew
 Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Ingo Molnar <mingo@kernel.org>, Jiri Slaby
 <jslaby@suse.com>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, Albert Ou
 <aou@eecs.berkeley.edu>, Ben Segall <bsegall@google.com>, Dietmar Eggemann
 <dietmar.eggemann@arm.com>, Greentime Hu <green.hu@gmail.com>, Ingo Molnar
 <mingo@redhat.com>, James Hogan <jhogan@kernel.org>, Juri Lelli
 <juri.lelli@redhat.com>, Mel Gorman <mgorman@suse.de>, Michal Simek
 <monstr@monstr.eu>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton
 <paulburton@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Peter
 Zijlstra <peterz@infradead.org>, Ralf Baechle <ralf@linux-mips.org>, Thomas
 Gleixner <tglx@linutronix.de>, Vincent Chen <deanbo422@gmail.com>, Vincent
 Guittot <vincent.guittot@linaro.org>, Will Deacon <will@kernel.org>,
 linux-mips@vger.kernel.org, linux-riscv@lists.infradead.org, Ivan
 Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner <mattst88@gmail.com>,
 Richard Henderson <rth@twiddle.net>, linux-alpha@vger.kernel.org, Vineet
 Gupta <vgupta@synopsys.com>, linux-snps-arc@lists.infradead.org, Russell
 King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com, Catalin Marinas
 <catalin.marinas@arm.com>, Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Mark Salter <msalter@redhat.com>, linux-c6x-dev@linux-c6x.org, Guo Ren
 <guoren@kernel.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 uclinux-h8-devel@lists.sourceforge.jp, Brian Cain <bcain@codeaurora.org>,
 linux-hexagon@vger.kernel.org, Fenghua Yu <fenghua.yu@intel.com>, Tony Luck
 <tony.luck@intel.com>, linux-ia64@vger.kernel.org, Geert Uytterhoeven
 <geert@linux-m68k.org>, linux-m68k@lists.linux-m68k.org, Ley Foon Tan
 <lftan@altera.com>, nios2-dev@lists.rocketboards.org, Jonas Bonn
 <jonas@southpole.se>, Stafford Horne <shorne@gmail.com>, Stefan
 Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Helge Deller <deller@gmx.de>, "James E.J.
 Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-parisc@vger.kernel.org, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Michael Ellerman <mpe@ellerman.id.au>, Paul
 Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, Christian
 Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens
 <heiko.carstens@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-s390@vger.kernel.org, Rich Felker <dalias@libc.org>,
 linux-sh@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 sparclinux@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>,
 linux-um@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>, Borislav Petkov
 <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Chris
 Zankel <chris@zankel.net>, Max Filippov <jcmvbkbc@gmail.com>,
 linux-xtensa@linux-xtensa.org, Len Brown <len.brown@intel.com>, Pavel
 Machek <pavel@ucw.cz>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-pm@vger.kernel.org, Daniel Thompson <daniel.thompson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, Jason Wessel
 <jason.wessel@windriver.com>, kgdb-bugreport@lists.sourceforge.net
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191113103214.1585923c@gandalf.local.home>
In-Reply-To: <20191112044447.GA121272@google.com>
References: <20191106030542.868541-1-dima@arista.com>
	<20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
	<20191108103719.GB175344@google.com>
	<20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
	<20191111012336.GA85185@google.com>
	<20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
	<20191112044447.GA121272@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
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

On Tue, 12 Nov 2019 13:44:47 +0900
Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:

> > > I do recall that we talked about per-CPU printk state bit which would
> > > start/end "just print it" section. We probably can extend it to "just
> > > log_store" type of functionality. Doesn't look like a very bad idea.  
> > 
> > The problem with per-CPU printk is that we would need to disable
> > interrupts.  
> 
> Or disable preemption and have loglevel per-CPU and per-context.
> preempt_count can navigate us to the right context loglevel on
> particular CPU. I'm talking here only about backtrace (error)
> reporting contexts. Those can be atomic perfectly fine.

With my real-time hat on, I'm totally against disabling of preemption
for this purpose.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113103214.1585923c%40gandalf.local.home.
