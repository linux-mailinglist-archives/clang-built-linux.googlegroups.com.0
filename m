Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBEULVLXAKGQED5AXGGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E2114F8C8A
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 11:12:35 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id j3sf13753741ywg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 02:12:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573553554; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVhNrz5KyAK9dlD4j7FPfzsxDT3mNFnSx6E0ycP3Yfl6rw5+LTkzovBQF5KKCsklgQ
         /wXuQpFDov3X5y1ujRODB0XJpV3etdjuh6zoVZAvpTAaIksmoSe3XvG0/KfqKgbWwVod
         3xSy+qGz3UsxpOOj00s4Qkq9JoXytVAs32259IoNJVvNAxF2BNGR89VlHrla/e19sz8o
         GXzmvUpya4iZ3o0Ci/+Xd+YDUkYsElryGvIFaQGNwZbdANHI6bamUNp9tklY3XOGsuay
         5dsJrZXAmN2V1FOQAWvl+vHdKLBTTN8QgKunMK9qW8uXI6SNuAcVN+xomizE1+VsEQoY
         xOGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=VZtl1iOZv+uAi5qEX8aGrs52LRTMgv87mtTrUJJabL4=;
        b=MKYNJJUCdfl6pobFsNOv+tn03oVsD2fwVLl7C1lD7SwcsCCadftYJldR2jMk2/6zf6
         rlVfzxIFzXzcv3natrtPeOxLYcbfa24eGM9mlQkHTCxR/cgpKzLFfGG/JJf9N+4Mlpe9
         jOksXv8fkqT6LouMzJeqBvPat+gjzKQvmMllXxKSW+RDXPpukm0Go7kL51dLLtFQ1Rj8
         eKAJNGXB0fCTtCljTWfFB2d/Wy6wBGeYf8tv0EHhnzc1MwHKRHUAGMcHw6yIH5chZ2Io
         tBej+eeNiWebU+hq9C6ovtfSWFmO3llH7S8NoE1A+NF4HfgwznOG7tLfEVgbI8MCZH8z
         Pc2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVQpY920;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VZtl1iOZv+uAi5qEX8aGrs52LRTMgv87mtTrUJJabL4=;
        b=Bf4ACiLCUzvlm03Wv9EhJIekLKoPpqT4drGLZ9GW1axXynVB/jz+qWq8DRfNQ2Kfm6
         YBKph7QVZw2F7drQvwCSMny5aS9TGOJzMOSa6VFy4yfU11lhrfQyDefQImyoGs532Pax
         B2IJ4o8Gz68mHrxORMXBG+s9jFXNBtUJKKNBkf/wvfCiFip/bm+r4EGvU+rccoDyYBWi
         QcmqO546IJHs3yqqSEY0TXxad2hp8FDa0/nJDDPna/7LAdbSY4/aLIcvrPVY13pROZLE
         2vKIv1GdaYmEtUP45GTp/3NdVaVst0c4nNrcprKEUXYaGTPq9EvcMa1wcWwnTc4es1bN
         K2PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VZtl1iOZv+uAi5qEX8aGrs52LRTMgv87mtTrUJJabL4=;
        b=E2RSuMMKdaans9pDgfpZaXXYe1b+lxN4Kt8QQLIkYu6VwHmK+dsFakkNT5sjZos7Z1
         aodM6Ni1Mdlo9/tnk7KdGaAXAfnjd/Q1mSbUfsT/wu8BqbudmhlU/cJU7XufGC5KO9E9
         SWkpyeJIMkOFe2IwDMfMR68/T5F2s0UOk45Vw4qbvWc2ST3DL14J9UM6hq3DCOsjYb0g
         mPjyAFQbcAvNT7ajpaidwkKWHlZ6yOSwVAr75lX1ksgYNGG/gqqDHI1WSi8m1iDjEdAC
         6YPe1ac/4z7F1fAQEJYhC4AIlbyQeu/5/StkPbuqdjbG9EF9MzdCQoZBUfaT4izXzfoy
         ED1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VZtl1iOZv+uAi5qEX8aGrs52LRTMgv87mtTrUJJabL4=;
        b=ZYZBEvUSXwedL1nmPYLlplQJB4szMMxmW3K/c7Szaw6fyp1pfAZ1NfJC5+lAASIg8/
         q0/x0ExRVtd7n4+j8Z8L4IlEczQpdAXZ+i0oip76kOVANffYdmMUQd8EuoKYYsqVPW4p
         kaDZ5fl4DMT7Jpujj6mtmUpD1Oo2tjw8gBUoB9NhXxqH0p9g9Cwp2aJhY8aJ+xy4l2Tx
         xl7l4wgiPVVjo498H0vTb+ZXEdj9zQZBvJpNPS5ikFqAWjnmh2TidmxDvJu3bsQh5lhD
         KoBiylg323Zd0lrgogN6VLE9tdWZNBsg4Rh2HE/BZmyKEOeVzZzwfy0CH/PbFiXxytHb
         jZww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVEYgHCUods3MYTgW9LcNOoarzV1/c4oHwGgnRRbu1XdNC4TApY
	D3KL6vbolrvfNQJk1yagMVc=
X-Google-Smtp-Source: APXvYqz9qh+CobzTE7WULl4zzDkquOJLtdblxP0ElUpZm/23S57ITca0hh17rl3lgpQ0alb7lv4iYA==
X-Received: by 2002:a25:508c:: with SMTP id e134mr23324468ybb.330.1573553554580;
        Tue, 12 Nov 2019 02:12:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1445:: with SMTP id 66ls457123ybu.5.gmail; Tue, 12 Nov
 2019 02:12:34 -0800 (PST)
X-Received: by 2002:a25:f20e:: with SMTP id i14mr24077813ybe.477.1573553554161;
        Tue, 12 Nov 2019 02:12:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573553554; cv=none;
        d=google.com; s=arc-20160816;
        b=OsnHqt3Hak8BDcfQ7QdDvgsjhXLsJhMYflPgFeV338X4v3/KZNZfIPX/lAwVT/5wcW
         n4t9ZnOm5cP6DZXU54A9XFTXT3zOdSB5o0DiNULf5GwHiqJp/fzAxJjgQSh3rM9AP/6i
         AtN/j3sqzhlcp7lyzZXwwjxUUL5UmNdoAnVnPHTSYO3Q3wA/UNZHDawVnBGfxTzNtAMT
         B6hCLadikmuwsOeJWlwNP7mOFzO13RPphoIT/yt96zt8bE2W6IYPzP53LXAEwLsFTzkj
         vOeaUxbeb7J0gYPnZgRPY9mLYShFVf9+H4dW6dgghNLTvSKbFAtzjX5kAu0uwPpB3N7U
         Vb3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iABlNrF2pKWSZ44AJQZkuRtZU/cPi9wpLdONGxReYeE=;
        b=lWdzEZPlrtikE8/cXBMnSILxAuL7KazlJkj1THlHhJ6UQbMFQ+k7HiSVM2+/t7nrcE
         AVbPj5ymh01aehuhNOco6w9PrrIVTd023KWrTBAYS7qOURa6DniuEp66Zi8NFIRBTXVN
         uqG4iylYqzeO/pqrlCbK3BD2Img4n9FMsdDeHSaHwjcRPjaiDFuPINTIqzem/IjtD9Gx
         sTe0caFWjkzEw5ZZmiRnQmX/D1lDxCglYSimt2X9T2SIDqWN5/V1nyHo4FQY2OCSFtMg
         /vjDvgWVbpTTacDGDj98vnMyu0qWaCBjSSrBUmTN4C9o65YNn+4G1oaVZmwb+hlEoLNv
         dv8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVQpY920;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r185si1538902ywe.2.2019.11.12.02.12.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 02:12:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q13so587929pff.2
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 02:12:34 -0800 (PST)
X-Received: by 2002:a62:fb02:: with SMTP id x2mr28010053pfm.254.1573553553232;
        Tue, 12 Nov 2019 02:12:33 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id k9sm19867384pfk.72.2019.11.12.02.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 02:12:31 -0800 (PST)
Date: Tue, 12 Nov 2019 19:12:29 +0900
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
Message-ID: <20191112101229.GA201294@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lVQpY920;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (19/11/12 09:35), Petr Mladek wrote:
[..]
> This is getting too complicated. It would introduce too many
> hidden rules. While the explicitly passed loglevel parameter
> is straightforward and clear.

If loglevel is DEFAULT or NOTICE or INFO then we can overwrite it
(either downgrade or upgrade). That's one rule, basically. Not too
complicated, I guess.

> I am getting more inclined to the solution introduced by this
> patchset. It looks reasonable for the different use-cases.

No pressure from my side. Up to arch maintainers.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112101229.GA201294%40google.com.
