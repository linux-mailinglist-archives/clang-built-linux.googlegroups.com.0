Return-Path: <clang-built-linux+bncBCU73AEHRQBBBK6IWDXAKGQETIGWLVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id A3701FB3EC
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 16:41:32 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id n125sf2036377ywb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 07:41:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573659691; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNeYXsyZkovscZFEraDHMXy8QnYGs3hdjRcmN/LEwGPPoCoYjhmoKNHwt0NyFK1xPZ
         U+7//Tpl+x8vxh9F7iVHF1n1uLBfGsw2aPvSM+ZDNBxwN0X6qFneGYt7vQ0EIXee70t6
         VfIhktIdu0bjWCdJw5B+9c70IrK60fzSPcCbt0Jm+h+qxXMexyrustzA3RYrSm6SI81G
         Qgfj4ZoOV0WslfHxMIqp/iIxk8Kak6cwrtTMyKeYIGhi2W8UJ/VRnnw3NqCGfaonU7Nq
         xNW0UKSrm9BiNvzuJWoAE8zH7d/uDymZ8BZg9uFF8sZlzEAJK55hzw84G0FDU2dxZhox
         gL5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jw5p/uJzUv96pBTSebRaNuDhpUl20UhjTemOk8B9/yM=;
        b=c3WoZ7bOwjorVZbgBshNv+daLKxxp42WExJYjHi3ATFSNvas594fG6aobbB8cy6j1v
         b/IpjS7yuURDBhKmvFnLmXoJEGblsiE8Bkwqms2V+jzkEMBtPWe3bhiATYmEAlGJOPc2
         M+hSrnQ4prD/NVh/ulaVW9AwLjEV3MjhVYKRJc1XQQ5oT3e7UNi5FV8HEn7UXzWhfwAO
         mAHp+HdRIlJVNHuHFsxUElLV4yXtiOqGQW4ZubsBLcRY12jFjWizB9z28bwjE9gCjxFe
         VRCBsxcmkbT1GX+gzYovJ2A48Hp8be5Xrdi9B3mncXHIO7G4M0l8sUOtjD8jo58BDwcl
         rLoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jw5p/uJzUv96pBTSebRaNuDhpUl20UhjTemOk8B9/yM=;
        b=EDIs0kXlCJ7iO9pR7pouHIUj5lUJuqN6a5Tli4o4k4Hx7HyhHWsa2TbY139ZaPv2eo
         aSzUGiYy9GQmFQXm7oU3HusLKeZFlP1JMVWUbpXNangk12iYkCeXZMC125YZJ/gSEL8k
         TT3azhaR6ss1MQk2zpdi4oLDHMllNIteOQL+jfJcGrY9ZvAFvsHZ/gePRgKdqmpC/kvR
         xBKK1dIlPz81E2bL11BOpN5lXGBNKisMwAONZ+74eTHZA/3lpmvRnCOyNNSh5JpToc30
         fmxu02blWBYPzJpS2lPX1ZSeE3xzwtm8zD7xaFwPFQuYRYYFSOheyN5SVg1Cfg8yhPbh
         N/4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jw5p/uJzUv96pBTSebRaNuDhpUl20UhjTemOk8B9/yM=;
        b=crYtrCTF2kud0rP37JmJaNp77h4W0awsJkp8Fe8MWII0FK1lHYhXYaqT/wIkCWyd+/
         cSHL/Lo+3fIQU1qIH+yuVuXnqdCb2Tnt6cDOinbAYCYj+ID+Ic0L35KW5rElzx0F9UTT
         rVvELK36dgMciEWkYHDwcx4+KyZfE4Oo+C4V70xM/HZLo5gBgkFgUPlu3bwGWlsAe54b
         k4DvRqSEpuy68ZF9UxTCY3z21TE/rJTNdP9nEJmK2JOMQ031905BXyZhMND6ppOejhop
         eBR8S2hgCkzjXvYcDKkFy/nGtxZ7kh5pj51+2IhD0a1xwP1/jctdlER7gOTYEDxKV3zR
         Z55g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpVvZQEyF30PGjBi7BQfG4ZbDS9phIJ9Lub7QdR0i7d/HxBFH0
	BsmU7bV4j+9o7BqZFWIYBw0=
X-Google-Smtp-Source: APXvYqxypmHlKz/rze3oATbNjgs1kF5IiyDUj1MoqZDfkaddAdL8q1hyzjyfnWfSitT9VL2Scqj8nQ==
X-Received: by 2002:a25:4d83:: with SMTP id a125mr2953253ybb.210.1573659691397;
        Wed, 13 Nov 2019 07:41:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cb92:: with SMTP id n140ls494938ywd.15.gmail; Wed, 13
 Nov 2019 07:41:31 -0800 (PST)
X-Received: by 2002:a81:4c8:: with SMTP id 191mr2736906ywe.94.1573659691073;
        Wed, 13 Nov 2019 07:41:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573659691; cv=none;
        d=google.com; s=arc-20160816;
        b=Owp+r/8Fv9cMFHG/7OjPUqS520m69mqParc0WAkYv87ujRTwnRHR5Bu4EgAjnCHg38
         fzQFBGmQZjdxASAwtFFwSSFze+AnL3gqW/pm12/hqvPgBxcwNOlsT2yrzQYRPavobUva
         zf0a/56fLF7RgiXeUKuJk/m1pL2xYsMGvuYnf0IoPYEw7guLY19YepZ9sVQOL2jLSS6J
         2LEG3EUQV/dp786UGgQmhAd47CRTswAD4/9Hj4YiaMwB1GYIfovXLRAQD61FxVpMjYmS
         N70HVDC0dbnQa/K+c/p3GPc3Ua/lYUKFE9+PxiF72Qgwh170lHXo2UzDit3m2HiXYNF+
         NPsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=4CUOM23Gf9fIc0XcDt9Luyz41hdWFIlAXFUF5apLrTk=;
        b=IoXrUEdYVX4jrzgGu3/iggjTpeRUgYP1/xlk6mPL4D0i9fjK8b/NTDDiClHPLWHhUK
         f4AfOJIh5Adg12Ia4KX7m4tyNLnWXovyEGggXoLDSn7ZHFPr4TB+wWDQz/R2EROkUMhD
         rEIBdqntXZvxetZatfz41AmAHnswbHzfe5GyyCT5ROxpmktasFStYG5uuFyqfBMnVd0Z
         ClXhXdniSUXdI3pa4BFXXEuZefs1mZb7LADcrMZEng0pc1S9lXw/lNhS+xZxZci0sMHR
         SfZCsdX0m00ptfiRfgO7wuVxu45sUDxrTIG8XUR+hp2/dM9AtxuR5EHeuNvRC145EZDN
         clQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d192si158514ywb.1.2019.11.13.07.41.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 07:41:31 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 29788224EF;
	Wed, 13 Nov 2019 15:41:23 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:41:21 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org, Dmitry
 Safonov <0x7f454c46@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ingo Molnar
 <mingo@kernel.org>, Jiri Slaby <jslaby@suse.com>, Petr Mladek
 <pmladek@suse.com>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, Albert Ou
 <aou@eecs.berkeley.edu>, Ben Segall <bsegall@google.com>, Dietmar Eggemann
 <dietmar.eggemann@arm.com>, Greentime Hu <green.hu@gmail.com>, Ingo Molnar
 <mingo@redhat.com>, James Hogan <jhogan@kernel.org>, Juri Lelli
 <juri.lelli@redhat.com>, Mel Gorman <mgorman@suse.de>, Michal Simek
 <monstr@monstr.eu>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton
 <paulburton@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Ralf
 Baechle <ralf@linux-mips.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Chen <deanbo422@gmail.com>, Vincent Guittot
 <vincent.guittot@linaro.org>, Will Deacon <will@kernel.org>,
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
Message-ID: <20191113104121.696c9093@gandalf.local.home>
In-Reply-To: <20191106203440.GH3079@worktop.programming.kicks-ass.net>
References: <20191106030542.868541-1-dima@arista.com>
	<20191106092039.GT4131@hirez.programming.kicks-ass.net>
	<10db6fa1-5b17-ebe6-09e0-6335e09e4db8@arista.com>
	<20191106203440.GH3079@worktop.programming.kicks-ass.net>
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

On Wed, 6 Nov 2019 21:34:40 +0100
Peter Zijlstra <peterz@infradead.org> wrote:

> I suppose I'm surprised there are backtraces that are not important.
> Either badness happened and it needs printing, or the user asked for it
> and it needs printing.

Unfortunately that is the case. As my tests will fail if a backtrace is
detected.

> 
> Perhaps we should be removing backtraces if they're not important
> instead of allowing to print them as lower loglevels?

I usually end up removing backtraces for my tests, so I'm for this.
Specifically this happens in the drm and i915 drivers :-p

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113104121.696c9093%40gandalf.local.home.
