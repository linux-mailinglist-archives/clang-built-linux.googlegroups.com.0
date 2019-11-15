Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBUXMW7XAKGQE2A5RSMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F14FD215
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 01:50:27 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id l4sf3469111vkn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 16:50:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573779026; cv=pass;
        d=google.com; s=arc-20160816;
        b=WO0WaozIZ98LS+o4H4mXDS4H+LqwOdzQWWok5wOLoUEuKm5jEjZnhGXfLg3INRnVGQ
         Vbq1Fsq6BcKqKuuh3vJUnglH42kiQek5jIp+NEFFWSR4EGvwP+0Ke1hdEfS8HARZ9p/d
         C6wqsQbxbnsi/u13xy/CVoa3QS+18WI3Miq/Zt6ivLE1TbtS0S8Ho99BezplIeajD6mf
         1MKBCran9zE6iJjeijen+SQfw54aBBW75u5VOI1J2M34yd8mCn314Zz2rGJZGClrzpES
         rrIBiVapVZOl4OpMtVfafeb2V/pMlEjs38vf+PZyKzEHOy5E+QuEXWNlO6z2m0vCXbtH
         RqhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Wx5FgVIJoNqHDZ+7+nZQ35N4uhLiIABwA+3zKy29Mx8=;
        b=l5IuSF7si8D77etRCOigmizQYLNml9iLjUzEp5iKVVqHhuAClpHkT4qIFVKu9eI8B6
         3jnL6zbwvWbMApvApkkjhMfk+D6Su0CecfegtQqBM6I71uJSs7q534TqXDq81oLs+Yfp
         lSQVUGu1e0bGaHeitZZCaDx00pUjPsLxvTqt+meZm70Lbc4/sGUGhNJ2HCUwCUehcRw9
         hhDf5QQwvKlA7nCqyLVqQJ2ilyymugy+HEAeonByp8zsfwbh4yshJ5oBTSPFbPVhBhoH
         MRi83t4Ja1puA6fAQuGfdtq2vX4PozezVEVKuQfGqNDB0m2DLBmKlACycYSLc0guByKg
         AcDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KmyV0wmx;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wx5FgVIJoNqHDZ+7+nZQ35N4uhLiIABwA+3zKy29Mx8=;
        b=YxJ5gY5hxQxw2OEQQiPy8gjaqv5E/+T5GCC6/M5zEAC+T21z86TIi520af96SHK+cK
         u1FCfPRg7qG/6bA/5reOa5uOjvD5ZxpiGJcuGShRMkHuK+RKWuoohrA3pxY3Za4q0rgO
         IrGOcuqPIPgzNWuJs7SHAxtR84MaJX4qsRi8O+RZxxG6C45r1NnaGD1+CtX1boe7IPIK
         rGMzOXeVAzAGmpSp0epJCGpZI6oNNyh5NHZG7qp8mPqtj7kXZ1WwXG442q9JV6H50lPs
         POQ2EBwLsXYG2MRI9HVk7fSgNE6er7hOaJPHhlUWE9Z44xxO5nTT+ZoNdlvhKqiJnhsB
         aheg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wx5FgVIJoNqHDZ+7+nZQ35N4uhLiIABwA+3zKy29Mx8=;
        b=iV79qxdzKe6rjO5Im2VjYhQ5dNF7ZEBW4PrXx7Or/XUKrnvaT4WPh6kdWika8Ydh7s
         nsg3iIVIljN98kqSLzisLIjDhRs5oZ2k4fzzaz8zra5uBkLW0mYTd8PmPOPZ3IB+N1cn
         MZYoEb/pLTlnpRj7Must8PxQMxLu8y/K1H0UWVa8213yj0QQPfVKy4oa+k7FD9Lt+OoS
         hDi/HVWFetuUAVTa8aoK39PwJTX5qdMLNKqA6Gngq7R9zEcBeCiLfjb1PxoqruSk41QX
         LDQApYCLGVP+dIA9HiK36AdQibapquCOkq+mx+nG5cGAPGHd16X4NNmEBJpmxrtTi4Ks
         KH4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wx5FgVIJoNqHDZ+7+nZQ35N4uhLiIABwA+3zKy29Mx8=;
        b=e9sxW+CGfDG65qxSzP0rQo80jXx620FuFJ46MWP+CKUsk9016OUJy8AUAZxz1STULA
         OueouiVqfpr8NZOgZok4KsbUVw9oHv+1hL1b0K4HpxXgwI/Bw2HKWXVpoXhxoO5uUtdg
         sYDsU/EFgnqMmZAuaQJnR7JuP9MdEEcIWZT+5lxYMvsNx3aDw/C/h4nBYx2Mr0u5vH2X
         jV3z0spEdJZonJCfotYBmhXtjke/T7uMIiJdHbFGumcK1xKoKtVafeymI+Nwsot+J7RZ
         VSGfkfalZzOcplBHVqzFF0cVqtM77GLkW8PaafHOKhhuWcl9esTT7wkNMiWbp/6K4flD
         4VXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXuuHxQjzHgd8K9MqTbLD+VAfyqpiOMlYEHK/xYCaWTlrri4s/6
	k+ZHo5JWQTwzudC82yUTcoQ=
X-Google-Smtp-Source: APXvYqw9JpT1ni+RGEPoNp/7VUAiHRq+XtmAzQh1JHi8DfKY74hhn2YGL2zNzNWW+0S3ESz3qYjccA==
X-Received: by 2002:a67:f3c7:: with SMTP id j7mr7664982vsn.141.1573779026648;
        Thu, 14 Nov 2019 16:50:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:334e:: with SMTP id z75ls445837vsz.10.gmail; Thu, 14 Nov
 2019 16:50:26 -0800 (PST)
X-Received: by 2002:a67:7c93:: with SMTP id x141mr7999812vsc.114.1573779026250;
        Thu, 14 Nov 2019 16:50:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573779026; cv=none;
        d=google.com; s=arc-20160816;
        b=yb2bOuk/3XpN7nzf3bTR2VthPqSgUhA+uXEhr4eaKwahqYp5v96KoaVjKHH7ppUnfN
         ZZUvZGtmx6KmVwjXjGSA4RNBc7wq7Ccp82njECJrvs4R5O8GCoDzQzMS8ykNp6WEcQfM
         at0EijFLMWYuJJjW5aaGuiAu9v5hMyPFO2sJidAswIUTVHCB64PuP8ZSUqvuCuwMl0jd
         PVahEXhsxIjJhQSiNJYho2lb9duTLfG+DFkN1R/akjoHULxBRt1cSLu4cstSRsS6yLUZ
         ITQ6QkQVDoU2oN8YPfdopo+CEMt/+CGstGHTLvgpYEZlMYycpmy3/JAERG7NPXPOVPV4
         KbcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vPNtAsB3gXKxK0gWaPZBn5Rp3HfCqb9+MUmX4aWZ2D4=;
        b=LFsnHBhHxwkKQ0H9iQPz7gTqcBhYAlDgg+oNyCjtaeI1kOtSQM7rjOKn0GQf1CQ2wm
         nYPfiN1PQxjHoSmMTcgQ7CoO7/lUG0OOWtHnERrfDtjOJ/CkNQEtTROfCwvamQRjquxE
         YPl12P0DzlYov8PPGMcs94290oYFyhHO4/3LonKctkCZFeezXtxX7gbgfiIt9vMl/eTY
         Ja/xAtVZp+mcw01ab56a8Jl0imUVfML++1oPVL9U5JOA1+uB4R1v8e1pc65C+yjDZ4Zf
         29FcesxYXBYpcDcJ43TITfgg981szKIMRrg5PDIwB3R/bI57+520/oOOA7byEupOLpjb
         C2xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KmyV0wmx;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p78si505682vkf.0.2019.11.14.16.50.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2019 16:50:26 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id p24so5465221pfn.4
        for <clang-built-linux@googlegroups.com>; Thu, 14 Nov 2019 16:50:26 -0800 (PST)
X-Received: by 2002:a62:ee0c:: with SMTP id e12mr14672743pfi.38.1573779025403;
        Thu, 14 Nov 2019 16:50:25 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id s15sm3632564pjp.3.2019.11.14.16.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2019 16:50:24 -0800 (PST)
Date: Fri, 15 Nov 2019 09:50:22 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Dmitry Safonov <dima@arista.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Petr Mladek <pmladek@suse.com>,
	Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
	Dmitry Safonov <0x7f454c46@gmail.com>,
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
Message-ID: <20191115005022.GA144607@google.com>
References: <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com>
 <20191113012337.GA70781@google.com>
 <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
 <20191113063334.GA147997@google.com>
 <578d041a-3ce5-28bb-9fcc-cf90fe82b036@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <578d041a-3ce5-28bb-9fcc-cf90fe82b036@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KmyV0wmx;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (19/11/13 16:40), Dmitry Safonov wrote:
> It's also not very fun for me to create those patches.
> But they fix console_loglevel issues (I hope we could un-export it in
> the end) and also I need it for my other patches those will produce
> warnings with debug loglevel when configured through sysctl.

No objections.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115005022.GA144607%40google.com.
