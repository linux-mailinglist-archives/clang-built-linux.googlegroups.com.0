Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBTXIVDXAKGQE2WXNSMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E641F875C
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 05:25:52 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id c5sf8384966vkm.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 20:25:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573532751; cv=pass;
        d=google.com; s=arc-20160816;
        b=h1t7F/XHmwsNy6kQuDwZ+7PfGbcn5nFfpqVkIeUVH2RWgHuSS8JBo/ku7IC63bSBhc
         4wxCDHlOXFd2SIwRRKdzR7cKR2M89/55opKdEOHMm5BZUSisTX4vf99sbh3m+g/l/B7I
         /pb1w8bbAbgEhlVZHlZyjP9t2UZB95Ij8aeRD8nWFJVtx6M2kqxfwb5h8Y3k/2pYP701
         ffJvKkh859fOVhibDOUkMMdVs4hQVaIbAi569uRaHIRK6yyt6kdHVnaRzf7yn1bL0ijS
         tB5WC8GfJtsr3nPOKmcmEJ7vQRDsfEkL6TQWK6U59PSQMUCXPm1WxNQ1DaN3Dbv1CfOX
         +27g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=tZOai6BQI0KVscdntpQvkH2CJ/8kDUynF3BzY3rtiDc=;
        b=ILag03fMrK48XS6om8omxrcTVTlQItzCyI1pz9b5qUrqtE0ZSJLzHxZIQkEQfQBa4b
         M+VAJ96UZatCUjNFVRxRMnV+tON3eJvpNAN+9RyznqQQoFhg/yd0ZIawmRsLasOGDIG8
         NUIsPC9HEXyn/FHq+kA+L0SY/cpBP0n6mSi7P6QL1tjSO5Q2cyeLuaqpU8nMV6jvjGbV
         YTSX7Z986DnG3YYH3nAlV46iC/T03XvD810dzaSw3EZnBvVo82PtAOiQgCokwr2AEequ
         txxGIJ1aBsBb7JdnDvbfX75IOB0dOnBRse6n243Bi3/lg/TVX/spUcqX7pVK4CDY0sK1
         Y8Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cdGWTYNC;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZOai6BQI0KVscdntpQvkH2CJ/8kDUynF3BzY3rtiDc=;
        b=Hk9AimwzD3bSGit49EvHAomgq6Ue+nfz3cirUPHNNphE995tym3PCJxl8Cm1WJ/re+
         wn/XHlbZS/6ROor0IW71psw9bG5qMk7peaLVdll672v5E0JDKZtpJzj4Kl8Jz7wkZdF+
         tz3ZH35BYTa/6hj2DIXtrwjf8VlMCFbPD2cmdhY/7bCEYzmEten2a+znNx6T39QKHnO4
         3AQuI7KMbJGV7uyKVMC+fwSBdxDIwrJpHPkomJctKcVqdJbVQUDAgFglI+Jl1N2dVL3D
         zBVEI4VBJPxLJJJsR1jo4jK8XPcXCLIr+WN6T++zv6a9dPUNejLtlXMmFj71tusyWOpE
         A+Fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZOai6BQI0KVscdntpQvkH2CJ/8kDUynF3BzY3rtiDc=;
        b=GhJ60r4AAL09+1VP/TVpKTpm+q0KhiMbF09ZBl/8+9KbX7p6rCTUqpPCGmEVDJ/rRe
         HIplgKxeoeEis85tUldpbuvccGU5Ds3IpoXXbpM8ZGSMGcFGG4bv8x1AwRQSP5oI+HDi
         01Aig5P7zgG43cmRdlK7wOyq+xc6yo8Sgi4LUulMLgNjuaHdjPk0rGobarFAE5bRnFQ5
         0bLPGI2VCRsVqNIB54E/sdSirD+iVapnwelyqhzjdgMKCkBpW+HRFQxtrlZnkdOkodQn
         YrC4zb2qM973/X2p709kw+OY7rjCeccuXy7G4cV4NX58MaCmQUW05QSSRQGXkcBT/qG+
         /Y2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tZOai6BQI0KVscdntpQvkH2CJ/8kDUynF3BzY3rtiDc=;
        b=sUFkMBwo55QccZQIGDZHXd9cU4zmhVmVkNfMvemUS4vuyti2+azZdE5fVTbwIIBwcE
         mLR65Ag7Eox2a4pl/2RAstpAOttBtq0YvA6eKry9Hgsqup3EatbEBB2BkTo5zmnN1N13
         U6XZRBcoeWgloiN68lwAqXKDgBObXSpBtTAqkQFbJAzixL13fzo2wclkn+wRW64TVZ3g
         ApZSwRxFWZu+S46o3RfD6Mk3ZLov/cqKdPCWpDmQsliFGvNG48kLJisIk3azzLrnYRhR
         bVakuQpF47hQ3PHiOQo4Msq21ZlavLAQpLrvo3XkLn7G5boBt0W5OZ874+PXdg4iFswt
         wqUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW74tZ9wzpCSTniGrZY7WrkbQWciV0H9nXGwf9b4Y41Gthgr1PP
	yJimfPjtMqzugkd6NTfmvKc=
X-Google-Smtp-Source: APXvYqwUMUUvYxvm7dOx4d/XQtL/hL6ZGyfwqHI5iVvyVJuKznPMOW2Gqxfv4Pv6CsSYfqOYDIXv/Q==
X-Received: by 2002:a67:f649:: with SMTP id u9mr19155226vso.20.1573532750917;
        Mon, 11 Nov 2019 20:25:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4813:: with SMTP id b19ls49314uad.15.gmail; Mon, 11 Nov
 2019 20:25:50 -0800 (PST)
X-Received: by 2002:ab0:26cf:: with SMTP id b15mr18944572uap.115.1573532750504;
        Mon, 11 Nov 2019 20:25:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573532750; cv=none;
        d=google.com; s=arc-20160816;
        b=izEKlKJTNA32VxiiRXqTRLz7wBhYyaUYDx+POpDpSXce2mb3++YgnKv5ImisO6hgKv
         c6hR89XhzxruWSkNYCOO16NRw0JNdTuppeoxWJjYCny0Ffpiti2CJZ6BrBR9w1hI4D7c
         ADczoeW7dpkfvoA+cNcQxygb122IMPpdJRVxHzQcyHcyYBaSofD1iVfuAcCbo4/JX4DO
         ywe3Okj08UvsniOQoVwMPgSMyp92f61aP9lp2VYfmtcfJU9fQ7yhSKYavrJMGYdGCJ/a
         qjA5zYfZDI9NTYJOYo/95VoxJZ9b2438ymAqN6RLsyLIimUEMyP6CkYOiWPuU7xeFJNA
         qWEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9VefD4i9ErvjrjSu5lBHBfa2VMuQnRlhyfcHWoSsFGA=;
        b=XSezEIlcxu66dFudElIEslkXdWKeeZ94A2BWGxZYDQ4AoJDivjWN9go9AW0k6CRQ9+
         JjC6JkUCDWflMZM3KOINGPScyNFZ7AWUTij/eTzhbYIE86HiWxN/fVUju8staUvTl6xy
         gcb9mR8HaSLlNulKlirzm0QxkZ743T7rcBmSEx3UfU2kFbS26H4ejoLTlqmhyavazSsN
         6uKMpb9D5Dq/F+8m4JhwoIgYGfxsoCe67/nQwh7OGe8uqggI1KQaJu73wPJdVE+nZQFF
         labRf3puiAy0YJtVj3kpU8FKGqPsi1T2ksUCr5iuLaNebKYJc4kiZO3dYR5X3BQ/sj9k
         T6dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cdGWTYNC;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 192si901670vkz.3.2019.11.11.20.25.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 20:25:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id e3so8812754plt.7
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 20:25:50 -0800 (PST)
X-Received: by 2002:a17:902:246:: with SMTP id 64mr28628529plc.339.1573532749511;
        Mon, 11 Nov 2019 20:25:49 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id 186sm23754823pfb.99.2019.11.11.20.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2019 20:25:48 -0800 (PST)
Date: Tue, 12 Nov 2019 13:25:46 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Dmitry Safonov <dima@arista.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
	Petr Mladek <pmladek@suse.com>, linux-kernel@vger.kernel.org,
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
Message-ID: <20191112042546.GA119579@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
 <20191112021747.GA68506@google.com>
 <25cb9647-007a-9c18-4784-49c0aef4f54b@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <25cb9647-007a-9c18-4784-49c0aef4f54b@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cdGWTYNC;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (19/11/12 02:40), Dmitry Safonov wrote:
[..]
> In my point of view the cost of one-time [mostly build] testing every
> architecture is cheaper than introducing some new smart code that will
> live forever.

Well, there may be the need to pass loglevel deeper due to "hey __show_stack()
on that arch invokes bar(), which invokes foo() and now foo() does printk(),
but we don't see it". The context which decided to backtaraces decided
to do so for a reason, probably, so I guess we can look at it as "a special
error reporting code block".

The proposed patch set passes loglevel via slightly unusual channel -
via sprintf(). We probably can do it, but I would prefer to minimize
the number of such printk-s in the kernel. The code snippet which I
posted also does pretty unusual thing w.r.t loglevel. Both approaches
are "non-standard" from that POV.

> I'll reply to your suggestion tomorrow, it's a bit late in my tz.

Sure.

To anyone who will comment on that code snippet - this is not a
"look, here is what you need to do" type of proposal. Just an
alternative approach with its pros and cons.

We had several requests over the years to have something like "forcibly
allow all underlying printk-s from here to here" or "forcibly suppress
or postpone underlying printk-s from here to here", etc.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112042546.GA119579%40google.com.
