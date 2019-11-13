Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBHVWVXXAKGQENPEXY6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEF8FA007
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:23:43 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id l4sf360653vkn.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:23:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573608222; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHeW0dQscy+ncCuPNaN3hBNSQ7IJMRdYnqyZFQ0UKh1tFRz6G0WDo7BretXvrAkbZW
         OqFZcgQ8stHn4xshqqhZ+jXicvxhzB1RvlQFeWCsWmR+yoGTEmuDlsUTwOS54AvgRvWF
         ZkSxM2R31vdDs3T9UrGq/PjYnITYZJ0+SooQo8Pi9hbYEf2T+avBcZNAWUMlwtJypbrW
         A0Abhmjr0rN6iHtmURPwmYemZTpw7Dgdm7PqJsdadO9qRrO1qjShh9ZEBnL8dxByLROK
         BEMcNPvHujI5+BbAnMmp7hskiSVyz05PLurCsRBVgVelqhpOPHetLI+zhxvBJ/e+sO5K
         uz5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=+GF+JZXpcSyMkWlbVH3ExfgpKsfjs/Ogf9S3FAEn+Co=;
        b=LQRN51ojdUkJh6lr/fcXM/A7ibp/VtQwcqLu3vpJRHkeRx9QpR3fW15/vc/KBpCvXW
         1KWEUVIigu91x8aD7GrcTRU5KlcD2ysta6a5yqG8YFfdqkSYAtWUmS59zRP+9FrlrsQj
         8yVO1c5fq4KqN/FypZ7lrxTkSbvlZTS7opdZaxtjiTq4xgQwS5pqhmTrkfbougLbbWSR
         afiMLUFzeOCmvowYfHTDV/wrurqyeKYqYuVDqwxWvgt3udxY9sXqu9nKrcbQKF8CjOuY
         olNpGM9hYuQ4/ykr1BUCLRqx40dIP1uYbmPEw9OuXLdM+Iu85vAQetcSgrqJBi6yZD4f
         LHQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPWPZKlq;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+GF+JZXpcSyMkWlbVH3ExfgpKsfjs/Ogf9S3FAEn+Co=;
        b=GAhPtSeBYFSGoJs8xkr1naWGFG/6VK4QE+Jxhol+xzP8TgifsoUqLFHuo5Ax9NQKg6
         Y/bfDpVQ74+hXIn8vVH7NoL3cGI/BR6nzx/crLnrhtW7kitxprvfEbTCXRR/3Ty0VSQZ
         5aDlIWXuz8YvJ5UXNHgXipYFEmfKRVi1WIcQ1fAMccyKtscLctOwgNkF1vrlE5MUoK1j
         AeieohwjdAXvPWWUVnpzcgl7ehPmbwj6BPvsCldu2HJvKsFWrzLs3nhU929c/rDUnwCj
         WsTtf0yGn7mg/2c8eG9zeFz8ifNALfp0qfuVGhC5Tf4FMMos5vWZi0N24jy5Ww+fh1bw
         HRmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+GF+JZXpcSyMkWlbVH3ExfgpKsfjs/Ogf9S3FAEn+Co=;
        b=VSLs3AcTvMSVmRa2UZqXxVeBDHV2Ay7mxHTdEloMK2NWXZSq/I/AMtr+xc1Pa/SPYq
         cI5gpnlJqrM9AcZnwUku/1WMTbMzeacOrCYOQyZB+mlt8dHp8kGUVIY0+t3D5rJMEV/l
         iepGUsuL1cI3WYMiI7frs2CJAaegeAFSD3T20KEMk/T8iZQ3geSOdozcmmaWW2eOsvyZ
         WboPguTkDkVmkL9800824q73L73TkwPaEV99yXsmAnAdmIqhZV50fLRc7b9mhD0h6NRF
         CGG3RNOR6xuTZEXPSHMjdxKg4OKzXQwA5CHrLAB3Al8WKYmSP9PAQLVH/S9IN2IWXCav
         Utrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+GF+JZXpcSyMkWlbVH3ExfgpKsfjs/Ogf9S3FAEn+Co=;
        b=p3XBOCiP53sCAgspMndkjk9D0h9RO4jWIAS4n8X3/YIn+BF3D/hiGe6vXOn7mXhFM5
         fwRG+EFMPdXGessyBEh+EUhBWeCZrqtRcyK0/13+JpecZbJIiWYtnUc6kGuetijZAavk
         njl8HpswcPPyKY7MNvrUktnmUuAD6aEh4gXJcvgvRfUmGYSPNwMK0ebEz7aUotxzaPnK
         qUoi8uGcyaf8Gy684v3koaEV8UCNS148Tlk9Smw7m63Fk7Msn1aG35X1vK1B2gnJG1wT
         g41mV0OD8u9pwg4QgMSPLM2/bz63cFWDRxv0l2BspNuBnvkueEh+HOsxda5uo/cHolRd
         v64g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVG2hZwNITOw6hud4Gt+gyTRAb/8TYWsuJhxhaOngcGRiiAhmkl
	W7wURAnbr+Krt0+2pDJZb3U=
X-Google-Smtp-Source: APXvYqxBQtQhLNfpRkrUFyBcygJSZHk9dZBfzskCDgbOTsnKoopZwKLU/anpJRmsMX06gow7P+g5rg==
X-Received: by 2002:a67:d49e:: with SMTP id g30mr438813vsj.119.1573608222167;
        Tue, 12 Nov 2019 17:23:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4813:: with SMTP id b19ls30190uad.15.gmail; Tue, 12 Nov
 2019 17:23:41 -0800 (PST)
X-Received: by 2002:ab0:e09:: with SMTP id g9mr372322uak.78.1573608221789;
        Tue, 12 Nov 2019 17:23:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573608221; cv=none;
        d=google.com; s=arc-20160816;
        b=mmBqoMCZOgPfShUKeSxyROnv1mzTI+W8GdTrE9d8pJHndIFceIAPmExrh6/EJ3WiBP
         yTSvfhSio5rqUmjHfhzObarW94ICAjFwIP6U4ncQpTORvxDIS9YQRpUGM/u1EUOOCtS5
         g7D+f/w+EcU+FLEelUEy/EeHN6qZeR72CfPnx7QuuGQf6zNc8k1z6+Nb39mNkE8y0/Ei
         C1TOH6uOhvN1DtHBiAOrdy/8zddpnNTvDDofsgfHVKB5mIzc95Osy5KGjSWKalW/TxY8
         2yq07YokOoXHMos+YiT9HihgZrfxHDRL/7YQRvw+kb2X5KN0qMymcJj3dq8JpbeKo7Y9
         cFEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1L7ASzKkM9H3jGXxNBrUB+7DORYDzuzDLILdAI3Iz7A=;
        b=Gl9JYUtfU3xzkAJX9Bc5ULC0t4nnxSWJh0ka0gPg9KWCWiKMKkiKk6NgpjBublFOFT
         r9ee8aIeNlBFIq10popvFT9w9yWr7JVJ1E8qie3kk1fQPQTVgwndTqclbW7/bVvZCX2c
         RJTReIwYAVESp8MnU6nUkpmBhc2N412FjbnQFHg7g7zPF7BVoBOxzc7MTDwppuFYIwUF
         EuISBCnjt92NN6Pqy2DQodDEwCeUvykDR7fzxGJdKBzxLV1tAMWAEfJYy+cR0JeY3wiU
         IQWY5e8PTVOyG4hY7r/bq/+bS37kXQ1ofRPCweS/pd+0tHl2X8bHF5dBnwn07S+3MLz2
         ZahA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hPWPZKlq;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id f22si30655uan.1.2019.11.12.17.23.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:23:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id h13so326768plr.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 17:23:41 -0800 (PST)
X-Received: by 2002:a17:902:8a83:: with SMTP id p3mr856215plo.79.1573608220830;
        Tue, 12 Nov 2019 17:23:40 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
        by smtp.gmail.com with ESMTPSA id s3sm304442pjr.13.2019.11.12.17.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 17:23:39 -0800 (PST)
Date: Wed, 13 Nov 2019 10:23:37 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>, Dmitry Safonov <dima@arista.com>
Cc: linux-kernel@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
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
	kgdb-bugreport@lists.sourceforge.net,
	Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191113012337.GA70781@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191112101229.GA201294@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hPWPZKlq;       spf=pass
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

On (19/11/12 19:12), Sergey Senozhatsky wrote:
> On (19/11/12 09:35), Petr Mladek wrote:
> [..]
> > This is getting too complicated. It would introduce too many
> > hidden rules. While the explicitly passed loglevel parameter
> > is straightforward and clear.
>
> If loglevel is DEFAULT or NOTICE or INFO then we can overwrite it
> (either downgrade or upgrade). That's one rule, basically. Not too
> complicated, I guess.

Can be taken even a bit further than

	show_stack(NULL, NULL, LOGLEVEL_DEBUG);
or
	show_stack(NULL, NULL, LOGLEVEL_ERR);

For instance,

	spin_lock_irqsave(&rq->lock, flags);
	printk_emergency_enter(LOGLEVEL_SCHED);
		...
		show_stack(...);
		printk();
		printk();
		...
	spin_unlock_irqrestore(&rq->lock, flags);

or

	spin_lock_irqsave(&uart_port->lock, flags);
	printk_emergency_enter(LOGLEVEL_SCHED);
		...
		printk();
		printk();
		...

and so on.

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113012337.GA70781%40google.com.
