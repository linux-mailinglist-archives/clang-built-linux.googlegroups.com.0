Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBQ6HV3XAKGQEBZDUAJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1A3FAA36
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 07:33:41 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id n125sf1007484ywb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 22:33:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573626820; cv=pass;
        d=google.com; s=arc-20160816;
        b=evbQButqgieySmhZylYN/MhZy4soiNuqPX3Ia5t+TWRR6rIEnGArw7l6apTFEID2Xu
         5tBuvOJu0+3CUDwZIlsBxxSWHNwcMmzty+MHrO4zECChcWy35rxPna4390J5cVN2F7Nq
         K1ShrtKjtkUX5DI3JTmBQHgRZDWRI1Kg+E/pr95iFbs6P1sSppZqwhjGVszByUhjaqut
         SEL1HqSHYXknspSVebJwJ/B494i5qbexzZPKohYd+DPehbHCjuDSQW1y0mVRK0LgWYFN
         qOc1cF3RzMJRELGfZjUbLSuQuRFOzrs2APS+6lHBXaZ53eLfvseTimxdUTUGqQXdt2En
         wEJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=SeQnJyPkSAMnKJ8cm3XLexTXNNrbC6VzacQRT0UQ4tU=;
        b=WN58XI8LgDRZMMFnYmvD/u2YseUP/klpojcz7GFRs6bs9DfpOH1eK4eYuDtOb6Y0/t
         h6rgMzAu4oSqTTp2ooZYl8kq7X9nSW3axliGHt3cCK5oQpZZ/YxmSZ/yVJhN31VWHmWx
         Cf3aqf2TOSJsywPL0aKYDkKIZKXAAqCCuallLR0jGOPfKlu1YpbOuN9ljYZNrQlbqr1a
         6Qk9UdFSB8gZbqY+TL9EPB38PJLSWjHdl2SvszDZ7xaAr6+8L+Ud3nPGFFfCYkBDE6Vq
         8r3qlTLLqa7OnxFqZ8ZIwZTxykEadIPNO+nCHuxvZoXupQhaYG1Sujc88daZZJrHDIGz
         +Qdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U+7/ZvVf";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SeQnJyPkSAMnKJ8cm3XLexTXNNrbC6VzacQRT0UQ4tU=;
        b=ASupFX9p8zdbFgFr1z3Yr826g4KR/Z29TPMvoXhGj/GkTjtH9KogBKc0Gvm+9+zVud
         6W2XtMfQxGFsAo4clrgWAkC1YlPb+MZQJxfAMLT/1+1HjZNsSVEyewShnvCqC93A218y
         tISV52W0uFE8SpwFZn+NTf9er7Tl9rkiCbYVhHr3BDLE0+g2RskS+yhMoStCHKkr06Gg
         b84/r5t1uZB+6OTX8aRNAG/krPWtdYhh6Dcp90JJMUdxY8ewE4hrkf/N77admVV3Fb29
         18Zb7EImRUYZCrmHpoyiY66fyGf/3OBsQfnj/s1Pdx7i1OUQUhsYig7CIfu0P/aOuVjE
         B7VQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SeQnJyPkSAMnKJ8cm3XLexTXNNrbC6VzacQRT0UQ4tU=;
        b=EoSf72rZ0Ai6PGQR0FB4tQd7sZZ00QRhH5F3UWYwJKUqMAJSXHrL6Ex+9TGOsXW4rb
         QYHKOflflAHjodyfuWHR0dRSZDdFNCk3kMI4NcvAghcOXdJaYvloh5WWEZd+Xd6f9F5H
         FZCb56DlH01Y+XrsgFgSDEmHysKDcb+BntHtqForu8gMeDah45LepXkV/Alt1hbjCDLa
         0447FrMlMctIdxphPfFnEScfIZESB6/Kg37bpjX/IcRkNxvTxuRhUgwgguS/lNlg0lwP
         w0gUd5pJuuTXZlPKc9J/4dSwr1f7MJXC3l4YybS+K0ijfyYAQrVC9VlegZkL+x0H750w
         AXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SeQnJyPkSAMnKJ8cm3XLexTXNNrbC6VzacQRT0UQ4tU=;
        b=Ey7vNQjkr/3NIIP6uNs42Krc1bxuG8chg7pEiU+gvA078ENKH8omfEKooAf6uk1Cj3
         sFJefwB1LY/nZm9B0efho/kO5XtGc3j7nZb35mmMutTzIi9OK024+4TkdAtmeuqzwfGQ
         S+tRcC0KSFofOohzfGyK30zOzoGH4EcxAnC1E8lDnV7NqRUZS2hbPFwK3IWey2nGVRBz
         AMGi7vS38dBXiEjzdzTJcpcb1QsI9DQy8hhF6idgACgi6fE13Co8IBXfp498G38EBFdn
         3k8p8Mk0s3JqVYXpl5KqDppn9CcV06bDnAp86uxVt4famSSuSwCezPMidZiMorZyaKe9
         o8UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVy3PpHzwQBuxebWo81BpyUj7XzlGRUoTUxpV0L3SXrywATdmSJ
	LI1p+HsHp30uuL+j7PKuFuE=
X-Google-Smtp-Source: APXvYqzTiNs4+c+i8HWuObbjoRZ9wjFtAhrXAPiY/PK3rWuzENzbbC4cNZ+8jeCIwHXodEY7+ck88w==
X-Received: by 2002:a25:4b03:: with SMTP id y3mr1411129yba.497.1573626820032;
        Tue, 12 Nov 2019 22:33:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc6:: with SMTP id 189ls283897ybn.3.gmail; Tue, 12 Nov
 2019 22:33:39 -0800 (PST)
X-Received: by 2002:a25:8612:: with SMTP id y18mr1508930ybk.74.1573626819626;
        Tue, 12 Nov 2019 22:33:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573626819; cv=none;
        d=google.com; s=arc-20160816;
        b=zW9s9PwU9ptkXX/GPw+ZSQaS5tLw0h3kEOahRcWxuWt0xv+dCZG+IOJdvlqk9vLDTx
         ze9DWycI5ekRrx6/OByXIg1IQMNUtonYnyKExReVKvo6ynxYBv0mFWhnOKp+v54T1CjQ
         9lEYwE+L/GrfAmrV3VVhdft3elWjgJBdtgj04PZdDYwTKGTaYR8MwWRb0rQumuqCWnvs
         Gzq0RXA/suUgWuXUguCFgNRuxj+D9fjueYM4hJUyIP6Ijpd6moWOdr3YNpKg3WD+WwCP
         ONe7MGRRVY3I2vKFxF+MTrx8mCZxaCs8t5TqTE7ey4TqPUFt/eln/h1XtDO1kAmlJGSP
         Q8bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KPZG4VqXDKJQhwt8QhBKSdwu6zZ1yvGSLXAAovETV8E=;
        b=WpVR+fOPq7wtddQdFffknmCT+bdnqSlccPtcwTNFbwA3AxVnskac7XGoO+nso006sq
         PDWNXXWtW8W4JRu0Te127eMu9oxceuhx04AyWsKTSu4RYh0BQ8+QZKuW9ygjfUQqguN+
         mj1t7lOLw/d1s/67n9Go9esoy85PNrckvjsme+WaiyOVS453q6MLHuF7bVoKBIVnYg8U
         Mxgg591VSmF+W5jN2cUumMrtGGDLccW85j+YCxj8VLHoNmMxCq0k5M+pr4utZe4r+VEE
         4vIDUbsAwtAZdfC+qPMg+L9/I53osRV8dYanjPewqAnmr6uxWFtN41AhedcJX+eS64K+
         G6jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="U+7/ZvVf";
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 5si80838ybl.1.2019.11.12.22.33.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 22:33:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id w7so621033plz.12
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 22:33:39 -0800 (PST)
X-Received: by 2002:a17:902:5a44:: with SMTP id f4mr2028828plm.174.1573626818736;
        Tue, 12 Nov 2019 22:33:38 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id i16sm1209291pfa.184.2019.11.12.22.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 22:33:37 -0800 (PST)
Date: Wed, 13 Nov 2019 15:33:34 +0900
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
Message-ID: <20191113063334.GA147997@google.com>
References: <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com>
 <20191113012337.GA70781@google.com>
 <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="U+7/ZvVf";       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (19/11/13 02:25), Dmitry Safonov wrote:
> I guess I've pointed that in my point of view price for one-time testing
> code is cheaper than adding a new printk feature to swap log levels on
> the fly.
[..]
> I've gone through functions used by sysrq driver and the same changes
> introducing log level parameter would be needed for: sched_show_task(),
> debug_show_all_locks(), show_regs(), show_state(), show_mem(). Some of
> them don't need any platform changes, but at least show_regs() needs.

Good points and nice conclusion.

Well, here we go. There is a number of generally useful functions that
print nice data and where people might want to have better loglevel control
(for debugging purposes). show_stack() is just one of them. Patching all
those functions, which you have mentioned above, is hardly a fun task to do.
Hence the printk() per-CPU per-context loglevel proposition. The code there
is not clever or complicated and is meant for debugging purposes only, but
with just 3 lines of code one can do some stuff:

	/* @BTW you can't do this with "%s" KERN_FOO ;P */
+	printk_emergency_enter(LOGLEVEL_SCHED);
+	debug_show_all_locks();
+	printk_emergency_exit();

Now...
I'm not sure if this whole thing is up to "printk maintainers only".
If no one is going to use "emergency printk contexts" then there is
no point in having that code in the kernel.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113063334.GA147997%40google.com.
