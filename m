Return-Path: <clang-built-linux+bncBCU73AEHRQBBBNGHWDXAKGQEQONL5CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C2BFB3D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 16:39:34 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id s1sf1371315oth.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 07:39:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573659573; cv=pass;
        d=google.com; s=arc-20160816;
        b=IopY7/mW30EA84faKZD6LrwHB2KcKU2WGNNNwmSMZxerOLOVs/xfSPKw8xE3U7qNmB
         YRKz6GQfQu2i8a54rinSLECdn4iW0CNu0snKuTMznhtIZPMuJ4mmpDSZqJHTDoMOmCQY
         a/Sf5kUigbSY2xaDif5Oq8pvFzrtLQy4RaSkYLUK3BVlQHrgX4Phdck1Jzkm/XuNmo/X
         mcphrEO2FhHNHSfNHY1RTfPk9Z04Cyxb327Y4mPzQzHG+P5Q+v8I51RO76zUYfq9mc91
         R+4/QHAz0CakDCLuIoTKdcBbvXCHLrRBeukNacA50rKnLFfrCLmn+KjVLuTiRYUpREan
         KAtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JIFVjIQyDhN9v6k9P2Lyt+p5toQxgRj+bSSxp+jyjfM=;
        b=owGcJp/ECZlMF873VAb5Zw8XXKLiLcWwrC1WP/lCG+4u2oBlcltn0fQBSnFe1WexJl
         8ucP8kgL29SkvyJZ0cRu48LeoR0Ctx9ENJJ8oMV+2qzM25+UqjiyPePEQXHThLBm34xx
         O9yi4HBL5EjJFsHoKIKRqFjMJwXAqLl1TMHp2WEQtko+nCCDRxyt5mw5UivolaXQxqti
         G+DqDsHC7qCBv+YkYSNfmtI866q/4FW904U0cs1u+FMV8Jm0MXT/yTHxoVgvbv1FHEoN
         CK6kKh0RKI9SAv+e6ib+hefDIm1FiBX77pFanIDdD6XsSbFwkHhYsm+r4iicArsc/Ykz
         YQJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JIFVjIQyDhN9v6k9P2Lyt+p5toQxgRj+bSSxp+jyjfM=;
        b=e/S0bL2VKmt44iEO/SgqdGiz7/2SbeVbWA+qHWkYGUF9u9fR7RSZ5U9NvHRweA5kRF
         8HGjAL1spGwo6PjZE5IS2CdXuIdGibLfKu7zRht6IO1oCHtBvLv+Ba+PNxd81R6TXmvS
         xJoZkKI4uAITeWUDoSj6pPNb17K/bJ9DgP1jlbI/gk1bSpyaXhxLvzzxmCLeWd6X9TZi
         oyFQIQe6mouMXC/yculmUDSkiLr+sqUpPGP7ul06TW5pFSTA9MH6RZ3JKGpSvnhfsbsV
         A7oG0Hsdl8yyQWNQJ//V2zN5FWDMYDb4lR5VWclVpa6prhmDEu9MaU+fFne3rRIop+rY
         lhhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JIFVjIQyDhN9v6k9P2Lyt+p5toQxgRj+bSSxp+jyjfM=;
        b=DScevUnAD5oiv0dOpsstrO/nc1B9a/MyWkfY0gj86Kctm+k9BzY2A1OS5zGLjasaBj
         7K2+WWR0rscs8j56OB6V6Z8Q2O/5WZBLyPSI2hG2f2ZdIbrlDNXyeuz2HXCvJBAynjJC
         AJoKBa7HAXBAMwmwHvvSvcO35046NvHuCGDDJ27x+NJewVQc6aDAT4J69eJjVteutWZ3
         Xx3n+5FDkQOqWbhPhl+thFuecwz9xJsVlmI17G9UUh0iIe21F3c6PdEBfSbwHsKQKnrL
         bEEgOW0TFfCEyvS8G6ZhFWj7EZJdAIdoUWSTU2JOSaEXBKbgcG6BICtFPaHrBB2XNj4U
         hjKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiB6eTQuSNNWQ1ptPX8X5c94fKXKoDm5/jnWTo13bRmdkWw3X9
	N68miLsP2ELg5Gx43qtiABM=
X-Google-Smtp-Source: APXvYqyuOv+o1YYCbJJa4noFfBuslFyQRI5a9APH92xrdIKecmaP9twJI6TuFmIFIyRNLdoihDLdiA==
X-Received: by 2002:a9d:30d2:: with SMTP id r18mr3933076otg.287.1573659572837;
        Wed, 13 Nov 2019 07:39:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:68f:: with SMTP id k15ls878541oig.15.gmail; Wed, 13
 Nov 2019 07:39:32 -0800 (PST)
X-Received: by 2002:aca:5158:: with SMTP id f85mr4364805oib.86.1573659572404;
        Wed, 13 Nov 2019 07:39:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573659572; cv=none;
        d=google.com; s=arc-20160816;
        b=nt4UTeXcamUS7u3yx3uGY3M7VcWKGf3gTW5gVVn0dAxzQ4N5h+ahPxHinv00kBXwWS
         /e/LQ+eyNeHtPqoMYZMNwiocrodq/1DrYCgWc9ACWDeYW+ux5sbj9FKrekAuuyTQXalP
         OxPSbz532WeruQ2OMpWs5+/dmOtbsWIIgfgHKdfccH21SgxrHODdccodeoSeIczhd4Ir
         MHN9XUj5BoZ324b4aMTpzz8M6bCPZmFkxsTGCcsAbrHFrgaMtsimwgGv7aNYoVO4k/yo
         Q2Agl39OTGvQ0m2hrAT+dNdeoL3sqSPLPgLmNz4wxLeVmJPwuCNU8WzEda2OXPjD4YK9
         fYQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=gw4IJXXLhJTYsyl2Q+LUl3qKNOOTxXdEzG324677S2A=;
        b=fZj/Ma5L13+qd8ar4rI15mfHLHd42mvhu7zDpLL5kQSAvYP29/ty55uECS6rMs2Abv
         wc8w8ac0un328GU15/UuTcQ1UMJmh4d1E40la6rwL/vu26EwBXuQ0nALJKQvbT7DjLne
         Hn/kXViV/8XErxjKKRzlmlxfqAzIGkcy3KyYO2HTfL7/YEba0LUKD86fV0xncEnkT89o
         qAuFZx+YbmkHQp7AmvNEEXvtnXJduWujYBnmNjs73POGpo9yFn57SSzC4DuQnf+WCeJz
         ChS0si83PprPb5ugvL+I+7FQmxDOA+NR4HJepmai4DtGawj2DQQdlxvBpUnHhpkKNZkF
         lZEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j190si118529oib.0.2019.11.13.07.39.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 07:39:32 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 688C62248C;
	Wed, 13 Nov 2019 15:39:24 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:39:22 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Cc: Dmitry Safonov <dima@arista.com>, Petr Mladek <pmladek@suse.com>,
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
Message-ID: <20191113103922.3dc3e8e9@gandalf.local.home>
In-Reply-To: <20191112021747.GA68506@google.com>
References: <20191106030542.868541-1-dima@arista.com>
	<20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
	<20191108103719.GB175344@google.com>
	<20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
	<20191111012336.GA85185@google.com>
	<13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
	<20191112021747.GA68506@google.com>
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

On Tue, 12 Nov 2019 11:17:47 +0900
Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:

> void show_stack(struct task_struct *task, unsigned long *sp, int log_level)
> {
> 	printk_emergency_enter(log_level);
> 	__show_stack(task, sp);
> 	printk_emergency_exit();
> }
> // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
> 
> show_stack() never schedules, disabling preemption around it should
> not change anything. Should it be interrupted, we will handle it via
> preempt count.

Please no! The whole point of the printk rewrite was to allow for
printk to be preemptible and used in more contexts. The show_stack() can
be all over the place and is not a fast function. Let's not disable
preemption for it.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113103922.3dc3e8e9%40gandalf.local.home.
