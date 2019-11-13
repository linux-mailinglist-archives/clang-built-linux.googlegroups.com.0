Return-Path: <clang-built-linux+bncBCU73AEHRQBBBU64WDXAKGQE7VFQTFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id D74BDFB4F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 17:24:52 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id d8sf693600uan.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 08:24:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573662291; cv=pass;
        d=google.com; s=arc-20160816;
        b=S4plpEcYQbNSNf/vr7EiII78Hf1KQiDlJ5lCp2LrSD31lhAXpXhNn9mOO1sHGNvKLF
         IAvbg5QsIYOCOHDfQeQHop5KhZWo9o0wTCbEU/C90sVRc7GEC/Ymae1scxpuLP4Wiv+t
         KK+AWZno6TOPjdWgWmvqUHjaOQtpFtDEXyZOB1gUtkXJJhtr/YxSVs5tdyrWzHrF2ueK
         KG8QiNdF68lAp0fdv+dWUzCjvgehw+GE7wj/Cf+qK+3CvyKnBmlPkUMBvDn5vEzlSmgr
         LYtw1t6uC5vvYmGIQAc88J887pBXuxgz+GYYqbeyIVCzaCUwZRKa0fAJA45OD0PkRbz7
         YXbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=h4YS/fhPXcvoStjDxmFHdTeqhjkMAuyZ7fvrx9SF4Yg=;
        b=B9YWNRk3biRLR4yT2B5zqBH4jC0c94AXEr42aWq2lL61RDX53eJmqUt2Ni6X+tl2u3
         D+SsJG4j6YrpOaUwwB7fVl7TyIbh/AyVMb8bGADbeTWI51fkIUnA1l7Z+4YljneHdojf
         VA518/gC345oGFm78vm2vb0nEX/Af+PUgITrVCOfcyxlJxs5fDg7CD4/PShQjhx7z9Vc
         4FZcP0LvVJF+ZyN+BN2Viaf4TZD14MRuA2nYbzYnZkxLOMG/BZ+qvWMpkDD6y5UjgORU
         /zK4cgTMyZPqMynoBOzwnoQCr43qT6l2IvFO2QsgPqF8w5foB5xOrg+TYsKwQ5hcj8a7
         i3kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h4YS/fhPXcvoStjDxmFHdTeqhjkMAuyZ7fvrx9SF4Yg=;
        b=VpCeynIudoBguDNbTlf3v/QwsL4P/jR8Y3GwHTY7yZJcVo5yIjLlopRtv8vp77Tl8Y
         qsM4HQqdgt5v8Wh3q5/FUl8nRpSd5BMcRkHJSGS1bijb5L41DtDQIGTkcTMeOwfImY32
         sDoqGu870Kd1D4FiRHAXdUeGryiU0psNwpdenl9fJYJzhvZBFRflpYGqdFpKw9gV3m3r
         IfFVEvFH+TE7fYQGQmF94HclnS6SmpcVhikDFwJ/YiesDzanK7O1HUs2+NRU2f6aFMqd
         9y930oM4SmQ59M8feJkRytQUa7U2T8ALI1sIT4ga6kHpkaMFGHc3B00tbo24zbEu85N4
         nRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h4YS/fhPXcvoStjDxmFHdTeqhjkMAuyZ7fvrx9SF4Yg=;
        b=prpObkS1CxHXKvJHkqErPNM7xFeuJpiYg50A6STafcTkC3OqpsvbgKeQsZh8YANZ4y
         hbOJ0qEz/fAzyMnRL/Jprjtsv+LNRqTeEJFJMUeF+0re3DOy9q0cIkP+FaqeSnTj26rc
         BfCEMHbty1TxWPiS1/TlHLThBgdSuoS/1a7LDBXTYrCwE/TFVk8IzKoM2BckqibY/0ph
         x2ZAsNkuhJT5hJxmvGNlruelTvkPeOWldkc5TvF8MXI1bNKd/Qf3naQHDJjMHU4IUAdA
         SmhIaz0mWD+KXFDUjnKpMmFiX7BN780P6c+6l8n4mb4cknC4CyRHXXmEPxjau1MK4nIU
         0row==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBfU1B+VLtix4VAtnj1fKJX3XQjLatLL74FPOD/2woit+xuGfS
	upE5ucyHtCPtX+ebY36J9k0=
X-Google-Smtp-Source: APXvYqzzMlyGgYNNAeodZSlvl+84iJMnMaWLDLNFyfLrEkRuW0P2B6WlPs8NamVQ3FtwrwC0zwFZ/w==
X-Received: by 2002:a1f:2155:: with SMTP id h82mr2125322vkh.18.1573662291633;
        Wed, 13 Nov 2019 08:24:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5c52:: with SMTP id q79ls90937vkb.15.gmail; Wed, 13 Nov
 2019 08:24:51 -0800 (PST)
X-Received: by 2002:a1f:3d47:: with SMTP id k68mr2240552vka.38.1573662291201;
        Wed, 13 Nov 2019 08:24:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573662291; cv=none;
        d=google.com; s=arc-20160816;
        b=UXwvL2ng7z8EVvIwIPmbOxHEIKKvsxj4Br+LPCfDoXnA80RXyogJC6rwUfpH0dzle8
         CPRQhtGnbCxtNXs3F0tItojX2B/OClluzgLYk2a3qu21WDJB0Pv0b0q7CMQCiqBkRVt+
         Po/ef1e729FrZSXSdMPcg7ai8sKzCsu7k/KNOulcAHl3YBAnTYagXQcr77bV5pX5XBtM
         ufw+VbZxCpovGJOhiSxpWtgdBVMahhcRkhccXdABg3c3+nSOSW94Vq4Oxt2vnvUtG+sC
         EXnHML72Pm9TmN/eBkng/kZWFkIQJAZLAK6r3cimxw8AjQANhao99zKv5hmtb3X+sUyF
         SXgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=TNXHENUsyOsqyAIXMTniFSwI6194zNN0WUUNqe6F5m0=;
        b=QHHE/1+L2VhsxLcRVLLdiodX5pjdB15yODzqcaMIwzHC9hghNUq9oSiPosz1o7oFK6
         O660EVtQvf5VvfdldGS9nS5GXqE84dPhlxOhulKU0Eb2ZQhQcZgc859o6VCRjGZ7RmuZ
         fOQUecZeZg8gp/136OO8yQ1maYCUK3rXSmI8Q0x4ER0lsu0q2bOQBqqqdMIZ2JO2pB8d
         Tl6pr8y4bz5yF4iN2jnc3JhLmzg79k/DiV9QQ7Q7AXK/Eyq7iKSqE8Un363NcPCfFvsS
         86PpAxpAlHHEAdlkup5KBoRdnxBPupLGLi+XYQnUjxy6ncveFmQP/u6IhTav22o0bOyj
         T2JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p78si189308vkf.0.2019.11.13.08.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 08:24:51 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0CF0D2247C;
	Wed, 13 Nov 2019 16:24:42 +0000 (UTC)
Date: Wed, 13 Nov 2019 11:24:41 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Petr Mladek <pmladek@suse.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>, Dmitry Safonov
 <dima@arista.com>, linux-kernel@vger.kernel.org, Dmitry Safonov
 <0x7f454c46@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ingo Molnar <mingo@kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Sergey Senozhatsky
 <sergey.senozhatsky@gmail.com>, Tetsuo Handa
 <penguin-kernel@I-love.SAKURA.ne.jp>, Albert Ou <aou@eecs.berkeley.edu>,
 Ben Segall <bsegall@google.com>, Dietmar Eggemann
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
Message-ID: <20191113112441.41f6763c@gandalf.local.home>
In-Reply-To: <20191113084722.emzee7g34zki4kkl@pathway.suse.cz>
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
	<20191113084722.emzee7g34zki4kkl@pathway.suse.cz>
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

On Wed, 13 Nov 2019 09:47:22 +0100
Petr Mladek <pmladek@suse.com> wrote:

> At the moment, I am in favor of this patchset. It is huge and
> needed a lot of manual work. But the result is straightforward and
> easy to understand.

I'm in favor of this patchset too. If there's other areas that need to
adjust the current loglevel (say per task context), then we can cross
that bridge when the need arises. But I don't want to over engineer
this as the stack trace logic should have a way to explicitly state how
important this stack trace really is (or better yet, we should be
removing stack traces that are not important!)

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113112441.41f6763c%40gandalf.local.home.
