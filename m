Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBHHQULXAKGQE664EIUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 28311F6C39
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 02:23:42 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id l3sf3360189vsd.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 17:23:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573435421; cv=pass;
        d=google.com; s=arc-20160816;
        b=SehvWcPHQF/BWUYG1Ti5YgIs8Yv5+NbKB4kwSXVXZVna9G03AXGO2Rvpec5XuREDk/
         80Qdi87qMK4wo/8cBMEhXgOvTnxzFxRQrAByc83a3OLyL2ab0QiqtbLOdNlNPFUZdKIK
         w4Jxh/VAT1Mb0ZCf4s2uq3Uks0E/hs4wFdy7esZHC+oyl1n/Aar6/BRhJWxEZlacPrcv
         GSvhOQmJwwwPNQEWjR7Q/RtvlmvDSgNBOS8n6mKkNyKKU1R0v4P/pE3q7bzH0rWXjBwd
         IeRTGvVZr92tdpsFvTGzpw6jg4o/0gAq6wc8s+IDJRnvmhG0VF0sdYEMcLxXSVn4hdl8
         bhZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=SpBRxWgmWqe6s8INF8dmKZkKh28h+bFSz0b1YcMCcJg=;
        b=YrAhPC+1trdLyS71zkCAfJqjsH/TZckzvBEmw+Ah+jkZaq+rRwHNnBrk65KcjVZZNP
         BcRSxF3L0/ycxvVxWNjfHdbcJGMUsEY6Vz8oSxjyFt+Y6t34hAnrM5MKyqWXVD17+K5P
         36NKcsivcBbKrY2Cvt8IhBe1dRKdBbgGf/dFPpbdPXIWEHjoRfGTHZwdDQvukzIVcBIH
         bxBTsHGeHKPr/B5nZqnm0uW9lwh1lVxT/1flvaqk97EeYt4SEAfnK0E7GC8jXJl3yDRN
         Am+c6Y5KpAfPFPxn23tu0rSvS+K5J7K6+9qVOhUxfsNrUF/+zhLug1jOc14SeIZZIkhP
         ZzJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PEUFO8IE;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SpBRxWgmWqe6s8INF8dmKZkKh28h+bFSz0b1YcMCcJg=;
        b=fnHamPe/yEb/N2R+2mU8V1ReF2j7q0YJnmrH89SBHNjdYVmXUfwdIy028gti6XlN9T
         VDJ8zDt2p8tFa1mQDVA2sCYbcsfWSKtAi7bZUUdRycZs68WvVzALJH8nRjJlZUG6WsDZ
         +RhleR9670CSH4Sd46TdEZukwvVL5DdyY3bXNAtFbONXoTZU+3q4bBOYP5+lsH49AtbX
         /0PO5Dm2GlOb+dUYkRbee49wUb/h9dlRjp4uqu9XAA1tYXnlFrYrg07wNAHPl+26pZiE
         sNRvT8rkC1biP9tpGwLmH8k2aefIi0xjNK7mMVuXaL6q5tOWNZYrcetus3p0sqvcvsNM
         QJ+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SpBRxWgmWqe6s8INF8dmKZkKh28h+bFSz0b1YcMCcJg=;
        b=lEc9s6cDJZENhMTrP9bwzx1rvM4onutwvllot7NoV1JLTH+SSLBYu6UurMy4D2q/nW
         GBs5dMBziZrJQh+GSmyvIZkSFlzsH/4TYTENX7r4FS7v9JqaFFbRdz/M13nqveQQi7VH
         oaConItqDA4wW97/nVg7e8j718BUYya7rbEaWlJBFXM+34MZVyuq4Cl6NahlgmhfNae1
         TiKbQuBHLYrZBw/p1rUAr/h5QUJu6LkNm3zDoJp1J62Rd18myrc1p0xPSD1/9PcJYDAe
         BS+v6DfXKPObsY8CK8FTbuX546Ie+S5ySovHuMCa3PXbvCaS+M+Xc04sMvJr413xQsMa
         D4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SpBRxWgmWqe6s8INF8dmKZkKh28h+bFSz0b1YcMCcJg=;
        b=ObtG9RgFKVpmsPWXUpXHWjxV9XgRC5lJqH5xt9cY3/DaO6bu1ktUaJkZXmW+Dnr8BA
         H5DJro8dJC2B+p1w9qehQbL4fJYqei2GiWBgSyZcJjyZdMN3+5ZVpfNYMDhz3fAQCyMU
         Pd192kOKAN45/j/UEgacglxyq8d997iwZ74luJyuc19CM2RXXXnWNLt0gOr/3RVraSDc
         KAED6ipIUKRDkgROVWaC3FcFIpo266bb26hkOMkYdQoCLe0kCvtI9vFBJ9tRU4aW4vQv
         lb5u1deuxtiZx48gDFKUaT7JEaW4M5gRDySGSaLWMOaOkevR9AgIOGQH++Lla2yRURy3
         UCyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVx2zXq44g7LWoUqr+L9g/8xjcop0H6/Fv/HbfF1Xa6urpEN+yS
	BArk4KYvgxuFlHV8blSRkE0=
X-Google-Smtp-Source: APXvYqxt4RE78+i1/WGOcOrJCZ9rlbN1QfJQjwaS8/2mHaiw+3nb9wvYsuyHXVVsjao8tFgNbmeltA==
X-Received: by 2002:ab0:4ea9:: with SMTP id l41mr15499317uah.76.1573435420912;
        Sun, 10 Nov 2019 17:23:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7cc8:: with SMTP id x191ls1370370vsc.15.gmail; Sun, 10
 Nov 2019 17:23:40 -0800 (PST)
X-Received: by 2002:a67:f116:: with SMTP id n22mr17399842vsk.149.1573435420521;
        Sun, 10 Nov 2019 17:23:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573435420; cv=none;
        d=google.com; s=arc-20160816;
        b=a68dK0DgcHXAKE36ZusTYi/cH7aXrzeGf9uQX/PlFYtiBNzi7El/4ojZoPHJSKeHb6
         EWlvLTrRJqqoh3QfD7iXvhP6cgbslc/xjQsnOSQ8ZR57XleHxqiyfkq3zUAmlqm+dC0T
         aIeOPxMTxOnNxef6IRWepUEK/33k9k5rYrssep2Ou/cuHTG9AFbQ044nHgQqQGERwd+V
         Sxqk9ysrWCSBrUudZmnhHIPT1TTc3YzDUv5Ol7nEpMZqwDHkcY/iv39H54pGJkdHSNnI
         umuiw8ZsUDNUvOd/gusaHinyltLo5PagNlmYwnIAOmMh7VFhu8TSk+jaNbD4z2MMGpEX
         3m1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=meRRGW7ni43do21CnMh1ypMYB7GRo8yRghEKxpnOMtM=;
        b=ZD8seLrJ5rhngQJXRrwUda/i/N5EgKkpRHjxfW7t4bAKtFvY2fgxOkCsymKsQssJTZ
         8qdflAZHAFgUwPtDS/LUC3bncXRjqZgvBZlR8z7Kq/Fq2a9WkT1aUchKFosS5wVKMpks
         bY+k5GlEQrhNW/56ICSW9eSnXA5mXtJct0aRJHzQNnWpFXR1sPA8cIf41WBo88ZZJX6x
         LaIOtpd25ZEyx0kodQCUyZ1cYAbm8xQj/rIRIXQFSfHTBs1Sqnr/UXCZrcweLSeZQHA/
         00rib2wCpqAGgQ8plpfBlnvpbfnQyPrnEZBc1JxJGPqPjE+wgflBDoGf+uR7IlLoLX3s
         E4wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PEUFO8IE;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p78si1119900vkf.0.2019.11.10.17.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Nov 2019 17:23:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id k13so8370490pgh.3
        for <clang-built-linux@googlegroups.com>; Sun, 10 Nov 2019 17:23:40 -0800 (PST)
X-Received: by 2002:a63:b047:: with SMTP id z7mr20331363pgo.224.1573435419566;
        Sun, 10 Nov 2019 17:23:39 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id r8sm12584714pgr.59.2019.11.10.17.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Nov 2019 17:23:38 -0800 (PST)
Date: Mon, 11 Nov 2019 10:23:36 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org,
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
Message-ID: <20191111012336.GA85185@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PEUFO8IE;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On (19/11/08 14:04), Petr Mladek wrote:
[..]
> I agree that it is complicated to pass the loglevel as
> a parameter. It would be better define the default
> log level for a given code section. It might be stored
> in task_struct for the normal context and in per-CPU
> variables for interrupt contexts.

I do recall that we talked about per-CPU printk state bit which would
start/end "just print it" section. We probably can extend it to "just
log_store" type of functionality. Doesn't look like a very bad idea.
"This task/context is in trouble, whatever it printk()-s is important".

Per-console loglevel also might help sometimes. Slower consoles would
->write() only critical messages, faster consoles everything.

Passing log_level as part of message payload, which printk machinery
magically hides is not entirely exciting. What we have in the code
now - printk("%s blah\n", lvl) - is not what we see in the logs.
Because the leading '%s' becomes special. And printk()/sprintf()
documentation should reflect that: '%s' prints a string, but sometimes
it doesn't.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191111012336.GA85185%40google.com.
