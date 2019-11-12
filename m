Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBR65VHXAKGQEBVPEAKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D993CF8A8C
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 09:35:19 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id g14sf1111366wmk.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 00:35:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573547719; cv=pass;
        d=google.com; s=arc-20160816;
        b=u2TVYJ/k/xPaFL91ONl7CZJOzfURmGTbNnIroLFWXfrxuxpDHFtlxOA7fTc3Yl4gly
         ugTx+9DVyV41DPpNkek49LP1kLPHU5dc4RQu1W1hzU86EQ72Z7I4/pO5vFJIAoqMGlOS
         yNN35jz81icosWipcRZ3rDRUV1fGCQuT+NmZR8wGBteAg4fFnF64qqmpEiCnoPlD2wM5
         MWnIJbc0J9YYXOgf6i5lhl6epeVbf+TdRNu2NjrabcSgVi+YrDqF4jeAWRoh2A0Zf0Il
         dtLcJcJdNvj5IIvdcVTQcm2zVvoUwf4158xtJw0TtshAj2C0isfQ2toaEoslWRto4Gpp
         JJmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=toP2ALWHR8gTWdi1fFT2QmM9lVKTpotimSDOyqz47fU=;
        b=j9NkotxZinkWLSsfxwBKPEAg2E62dA/uvkRjriAc3QqpeL/W5X5z0b51vy5NqTbO9Q
         p2zTW8IMkBetIVOc1iFEW5KhRo5DnqUi4jvL8DkhksC4U190j98S1iJju4nFO2TCkfwK
         TJ6tiHcpPxqzsY7KfJpffS335cG4hhRHUeXAD3h7RKC7CZk2y9TY8GhogWfOP/J/SvQ0
         7hdKQNBtYAPlvf8u1vLNqiBSwjCJiVXgvNoRJCf7yB9CM9q5JL8mMdRIoy/D634Sl5Ee
         QIFOGq2Lw4uDz0NiwvRFgh5qa2Kj/uiBXJbj99vvhpfy2tfl644y/YC+6yTZoKPP+her
         Z1hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=toP2ALWHR8gTWdi1fFT2QmM9lVKTpotimSDOyqz47fU=;
        b=ObtfBi4PvCon2xH2vwFDRfBR9yGuJO2N9LjezQqoayxLZKbGEMO/nY2PwU67fsiLvr
         vTM4qElRaK/1bz4rYvYcukoVe+aW4ev1Zr03Ljm0dLvxH1+vnZyVDAJsqH+JPTNrSN1M
         Hj+7fgqVWN54DcOrGdiTtqnPklsYzH5YkcZxsWojjrOBFkrJZawT4wzHhvXTOxH5JqRW
         BpaLAphZOUU8a/PF3cU3nrU7VpakY/uvX5QPHcjBoD3Wx99zpWHuBJ2NEhw9uir02YtG
         eaiUtesfAL7EHqzhTPcEYVGq/D0r+9IGBdImmUVI0ijtJD9H591a1iAuXU6tpeXu6ci1
         85Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=toP2ALWHR8gTWdi1fFT2QmM9lVKTpotimSDOyqz47fU=;
        b=EG1ACVtgsTWqWPIzGHEEPlE78oz9ueWUrhhjuVds1XkivVj4JYMLTC39A2pbfR8USE
         VRytHK8POMcX8wPnHMu9kUuYQtYFrpTi6YQ8+yr1PaZxMtlEgrVp9dBQXoc4pf8cX9qK
         vXwvdWmRn4pGjRjB6d7N9JTrkcIqN4NU0cbVTW7GSXnzgQKjT4uJwKP46PLKpShMKzVK
         NEqKkXTrpwJ1SWYvZnxGVpo29lLfd6SYV+wtffuuZhlq2Ma2eQZsSRRlte/XLMhwdAzH
         pdH3ouVS/h42WuhJo+gGLk6ep8evDxH+bALvVQuipm5xNcnYxV1G04HCGEFxDxy0OUsE
         ODUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjnViJRJUECsKy5MTr1xWqhoKx0naxJYVOrDRi0s54BnHsopLZ
	LbVzRL0amfVPGYH5GyW/154=
X-Google-Smtp-Source: APXvYqygyS6EW5DYbEw0Kf8atu1TYvabNkVnFJsex3R3HZDOf4g632R8yxut6TdFij10/4ewLu6lDg==
X-Received: by 2002:a1c:2e0f:: with SMTP id u15mr2795420wmu.47.1573547719562;
        Tue, 12 Nov 2019 00:35:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f10c:: with SMTP id r12ls1656523wro.11.gmail; Tue, 12
 Nov 2019 00:35:18 -0800 (PST)
X-Received: by 2002:adf:c402:: with SMTP id v2mr26270364wrf.323.1573547718937;
        Tue, 12 Nov 2019 00:35:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573547718; cv=none;
        d=google.com; s=arc-20160816;
        b=t07SlPAGSEq10kzz4HQdoSkMXbSDBxw2RuFkIuY+AP+JF2ZSFWURS38I6jVyZPTBwo
         K8BEALhMnlevQNwGXSAr+6bj1Hcngf7ECt27Wgc6pJS6jFaYvolYuqwNsWoHWNXC7ACG
         CgZ0RIYoS3kYdcTizDKb2wuxX1RF9BZOC+GimE7biU1MulY4nx9kZDS7P4ujA+1YrQIB
         EtG6ewRLVz4+/1v3YKYLfODmHjjdPhPenta4+4pAa3YeBX2Jx5IttZXVv6X7thRuiQAN
         MVVUNLKb0ARgPIJjpKnBt5yl5JdFE78dSqPc4QWt7vvPvkNhNAqMRelBIuiTyYW3mllB
         7QLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=+MkE4f+VHEJ2P2oeHfi5bg48snezT3KwOIJh9hV+79U=;
        b=zhms56nBtWCXAlG8EJiDWa1jXSl4HHtI+WN0mqbVAcf+nluDBpmMIahRCmy9XqrURZ
         FSjtzCy4Xljn25Lu6Xi81Qp7h22OmXn9WelYpbiJVq/TGcV4fBnc3wTK/znUoNdrlV3i
         XxrXcKhuzfn8N51+4HhsSSljyJD/X0+PgqRcEmZTiRbhgs8TqTUuPCsyNqE0x8ZRYqhg
         UB4J5unMHeYLtykcpZrHPJYSmqrjbu3PpVjD/kIYTpX8eo9O7WzOESSq+eZ/9DLYEp1z
         VHXx4/0l5W/q9CKdzytHeagM6bea16+x6UHLNUvQi0r74Jh2396cAWRGwzkbtT5QsC+w
         BmyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x2si1083604wrv.1.2019.11.12.00.35.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 00:35:18 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id D16E9AF0D;
	Tue, 12 Nov 2019 08:35:16 +0000 (UTC)
Date: Tue, 12 Nov 2019 09:35:09 +0100
From: Petr Mladek <pmladek@suse.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
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
Message-ID: <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191112045704.GA138013@google.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com
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

On Tue 2019-11-12 13:57:04, Sergey Senozhatsky wrote:
> On (19/11/12 13:44), Sergey Senozhatsky wrote:
> [..]
> > > But yes, this per-code-section loglevel is problematic. The feedback
> > > against the patchset shows that people want it also the other way.
> > > I mean to keep pr_debug() as pr_debug().
> > 
> > Hmm. Right.
> > 
> > > A solution might be to use the per-code-section loglevel only instead
> > > of some special loglevel.
> > 
> > So maybe we can "overwrite" only KERN_DEFAULT loglevels?
> 
> LOGLEVEL_DEFAULT, LOGLEVEL_NOTICE, LOGLEVEL_INFO?
> 
> So we can downgrade some messages (log_store() only) or promote
> some messages.
> 
> DEBUG perhaps should stay debug.
> 
> > We certainly should not mess with SCHED or with anything in between
> > EMERG and ERR.
> 
>   [EMERG, WARN]

This is getting too complicated. It would introduce too many
hidden rules. While the explicitly passed loglevel parameter
is straightforward and clear.

I am getting more inclined to the solution introduced by this
patchset. It looks reasonable for the different use-cases.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112083509.gmgjpkjffsfaw5lm%40pathway.suse.cz.
