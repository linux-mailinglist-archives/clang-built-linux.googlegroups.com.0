Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBYUKSXXAKGQE6MHJ7FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 33418F44B2
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 11:37:25 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id l6sf4059077plt.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 02:37:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573209443; cv=pass;
        d=google.com; s=arc-20160816;
        b=f9mGMoTjethtVz/1LCC3EsMaI65OJ0Uo3HJ4lkvlD2+5FimhS8zYTK+n+EwPS9UPlW
         /536AsaD9mptxDZZhDITcydDQEY5TP7w8unaTUdLwz0uxBFfisESaNXzg9/o11Reee4O
         6Conp/1kuLi9jIdoJCVoFLJuYoaqea4sD+1iRMrJfwcRM5f3iUs3pmjI6xgQNNcy+uK1
         01aKCdQw62ANO/O/xsjukeYL6gqAvLllkF9Scno71w73QJp3hEt+ah8sNhg1K5SJDUAh
         6GJTo9IYvjvBt1qXeUVGiyCz6zjRsHx2ePEyDrzQiVhddR1/eAqVXXXXR7TbbgvJK4fp
         Cbvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=2Hwakx8jsadgZW4fW5MQslijxGUOsQ5vmI0uHRH/qnU=;
        b=ibrutY/BQ9ZVG637jVEXjUMq4gUW1hDeacI7FnSbMoL1Vyh0Nrsxqwu5tIoriYZxjm
         LZnPXnH2Pj8UWvtaOuFDXgnZh7SBfc0qcbv1bL+4kDsphQOTr6wigNju/JltdY7UCJy4
         3SxwoWVV/i7jZUbLGTBsabEtjnZS8BvNmIe3MIE0B0k74xuGW24QFwxUmDZOu01xovxe
         bnNj/aXUkTfndPOo81fiHZCQ/yfrnMM9Fl03j+g0LQGU1QXxJQ4aLByDw8jUYUL4GpHG
         zivdFxdILlemyULT9RtiwlbChj97gSxGDjWosg+Va/HdDFiqvA01H0fZDMVJXZW46X5D
         WAQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f9fUi1K0;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Hwakx8jsadgZW4fW5MQslijxGUOsQ5vmI0uHRH/qnU=;
        b=l19dYrsqq4EWSDF4aqEnxbbtsmWjccE8YO1RI112r0SMEgOzDl9kzrwaPKmv5WIqaT
         V+vZlJzn6yxBoLNF11XD92IMx+bS/OA3JjswD4EevYV9sKdTX9PptFIRh7i8H37/ZCn9
         L9wixAiwkIYs6sj8xOSWaRVQBaV2A4/hloVQZpdf4U2Ht/7VTt57OebJwyIYrSGlEZHM
         tijgGHX5t/NicnnFDwpjrguhhXN8wLu54XxeMP86G6U841S9WAIC+vkLGvW3pB7swpGh
         C2P5N4nLOgiLlBBsf/gfG+DVz/vREjaTAzsoV+A/pr6gxHBE7AQrKbuXliFzh5MBFMET
         eUag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Hwakx8jsadgZW4fW5MQslijxGUOsQ5vmI0uHRH/qnU=;
        b=bOYJGJZVa6tIPNhwLI6LjQrPYxwGGcseDA7cuD/z4jlIOHr7iMAS3xUwwD1POaZc12
         8tPIJs+XT+gLB72X2exj10anL0p1gwj15oxYndeR1i7HqW9kF8NzESF4Ou59xTv7ux8S
         W9U+bmzSr+14PzE5zzzc6fexz4lOZte25AkWt4zSd/2CdRbtwMcoHpWDulkqnhYlF+C9
         T1rjwoygwMywudXgNioLX0zzNWwVtdDC05vy0+wcNBE54nihlRrgU4ZmknCHR65GCEdm
         fVTrRoFEC7U0pP2crC3e58zgqUP3jYVMCkRJyAgm93nrXe9SwdBoSOy6PTb1XSbSS6Yz
         cXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Hwakx8jsadgZW4fW5MQslijxGUOsQ5vmI0uHRH/qnU=;
        b=CCNwbW0U2roLBEaFxXx//gTTCSjSMztQsVjzWIr9bgwciiadVksxpMOv7s1JyOa+bT
         wV2dq5aZuiEoqmoOSoEE2dzAJFINYOmzbyzhB3gU0uNsiDa88qgWNZ3C3TJSPiC2P3tw
         yKw8hM2+h03fb76Vjo40tC02NuZ0nVp30hLMBUSxFxrLbcFdTpBlMGBQ10EK94n5jMv2
         4xUZ+iAsc2TyvNvFJ2QWnBFvN7f8uAOPCWlM+khuB012nxaKKx8uOkbWDVmFf0FKhLvz
         ODsCyFMUcad3FJUqx+dpTIedb1APilv7ZeNrN67GFgR76l5RcNSuRrXI8JWe+UPAjgFm
         usGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX71s71bqU8rHFOT3eOoKDVe+LE6ul7r8fgOlLzQVfwcqjwVyJM
	0Qn+qUt+B0yjizjzd9qZOtU=
X-Google-Smtp-Source: APXvYqyH+X2VhsTqSMn9oeRaYaRSOgMJcmznNHsrzBypvruv6lQ9IudvHf414cLbswCLzac9zA6FRg==
X-Received: by 2002:a17:90a:c89:: with SMTP id v9mr913864pja.1.1573209442919;
        Fri, 08 Nov 2019 02:37:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7785:: with SMTP id s127ls2303387pfc.4.gmail; Fri, 08
 Nov 2019 02:37:22 -0800 (PST)
X-Received: by 2002:a63:e009:: with SMTP id e9mr11234606pgh.222.1573209442411;
        Fri, 08 Nov 2019 02:37:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573209442; cv=none;
        d=google.com; s=arc-20160816;
        b=diuPh7hjjaMVAfxNrGwfB1eGt9PxESKTJLffBjSOEh3YrKUjqeXRwRkp3XQTZZyUuL
         HpnxQiKCTU7CKL2egYu262VfyeJlMqHaGHwm9fZ4dS/T4DsilIStN19VQc+vnUKuUphk
         xpn0sSnDHkyWZcRHtiyvzrsBmMSKXqBjw59RgU4WD5dHAYpaTSZA23alK7VMM5GFc9V+
         NuvN30i5qaSTLsTvJtXmzdYmFbwIIi7QvB78+K/c0jMyMV1bPeJU22AF/2vnpsMe0VAE
         /vdu063V+08XKHL0wTLz2Z5asStkhzJQxif5Ssk1R6mc4UjhIU+hbvtz5jd0s18BjAFc
         f/ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=S+Nia2Oa5QzCO5JT/esBQ1livkv4TlWV+4fZRWkEO+o=;
        b=DduCbPzpyg+8CC5R8x3+/HIAuqQq4IwIm+TU4lSp5BEZQXLIBAufqUHjMHYhK1Ibun
         OTDyrk4NtU34w5V3OtYEENgtM1bdrbxURkjZV/151uJctZLERyPA/cf9j71JMN8b/xoM
         raGIl4zFOEVsBIlU7zr4950TL5rG0A2PQXg5PqdexqxXF269EKxCQiuZYnYViD/7iUa8
         uJhWt7EXb5rOVJH/4r5WRk1gz3oNYnGi8MNCoUTPkwrGAmvlvY8CKyUL1rgkMCFbvLpR
         1YvRh8GGkY5QYiwkqiFBQi23noOoWzTHihEHIljnYBRlpzqLg4pYHNWxj2c6jKblqW5x
         BT4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f9fUi1K0;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id g15si337355plq.0.2019.11.08.02.37.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 02:37:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id ay6so3924756plb.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 Nov 2019 02:37:22 -0800 (PST)
X-Received: by 2002:a17:90a:25ea:: with SMTP id k97mr12085072pje.110.1573209442245;
        Fri, 08 Nov 2019 02:37:22 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id m14sm5221119pgj.8.2019.11.08.02.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2019 02:37:21 -0800 (PST)
Date: Fri, 8 Nov 2019 19:37:19 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Cc: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org,
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
Message-ID: <20191108103719.GB175344@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f9fUi1K0;       spf=pass
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

On (19/11/06 09:35), Petr Mladek wrote:
> I agree with all the other justification.
> 
> I would add. The backtrace is really useful for debugging. It should
> be possible to print it even in less critical situations.

Hmm, I don't know.
Do we really need debug/info level backtraces? May be all backtraces
can be converted to something more severe (so we can stop playing games
with loglvl) and then we can clean up "(ab)users"?

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191108103719.GB175344%40google.com.
