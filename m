Return-Path: <clang-built-linux+bncBCSPV64IYUKBBQWOQ7WQKGQEC43BGCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f61.google.com (mail-lf1-f61.google.com [209.85.167.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A40D5079
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 16:46:27 +0200 (CEST)
Received: by mail-lf1-f61.google.com with SMTP id m17sf2324598lfl.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 07:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570891586; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZjjzkhW146OfnUn9MYu9H5wFnbr+T8TzutVg3tV29WnvCW6kFrZWXRjkooejJfXzRO
         MEp1qlguNSBslsYKHDbABtdQplelAW2M5TaFBX+f6S6Hk/1klC39d3NC4sHtKDJG0NtH
         TSboeYhvIi9GZDl/xw08AFoMtcYC7V7w/NtjXD20GBOm7eIyrKbJjwEaiqdxGt4Yj+Un
         r/2Gy8mZz3TjXvNO4XzkJ+i79hcky4GjxgzzITIrSmlSp3CbFoqp293+8GG4j5Aa4epx
         sdCbveka8fzViXjdbnEOF35wgiRfMawIvd+N4900Neau6jOwgoqgcHFio5AIj3LJbyA/
         SLNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=qWKiUJ3ODJr6Bz27YXP49t/gzZRZwFQ6i3gFj0Ropi0=;
        b=AnWD1zzrVLC/dX/0UUivdzHWr5Livdp+wZInpKzjNuHBSYK3BUnp7h97Knn3o5bC/h
         XDSXAZ769BSxuYRiP6WPbbxXABQx+fX1OEYt4fsZ68ldjXfSKu3nEULjg4aHvl4L11h2
         vKIphalQrmUC61taM445yegHg6opybBpZJkBW8+3NZclKNuTLq8Q7cpFl8tRUw3M7xPJ
         YCDrzF3F+3/Vjk99/2nb/aTnhPkeKOnqnsxkDpBa+24UjWY0de62pzThdz4Zdg7HK/aY
         1x7EiIR2UYLIiKLdudQIGL6kwNQx2jC/8NiPLxjZZPAHCdR59pqgDhuCmp2i3xQaLLRY
         mwgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=aafBCt00;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qWKiUJ3ODJr6Bz27YXP49t/gzZRZwFQ6i3gFj0Ropi0=;
        b=ZVySmwiyg+mlDApuNpgG0nPUb61atzFT8Gjv0SkoJEkrEELMg8nz74Ev2vat9TJ7/5
         MaaVKXh7gzWvyhUigos2U0onVrYNDtdIEl3ccgRSKSm7KjhGfd9JxjFoumOnchEk/m2y
         wnom3OVWhLFo2rvQz8m166JjBGfs9MklHZcIB8cA2wdHbaa/OGVoof7ZzbVrEBNttM/O
         5aMUv0F3MsTs6OJxM/2ghNdOKULZXA1QNeSUHzzAO0JlXnvhDWLexEEfuI1SNu4Y5KzZ
         QooBRGvZIh5iIVBBKtfg6uZAmZqmn1w8O/VKMUQHIWgSO+4vqhbRh3J/2xq9jA0qDwv+
         5C6g==
X-Gm-Message-State: APjAAAUXzl4GiCnVckLkm0PeqLIXrkeh5Zq+1NJzqXL+wamiN6cPyNuV
	1cZOdqGOOupCd3W6MiJ85FA=
X-Google-Smtp-Source: APXvYqy5823eX2YnLqvloxndj8sP5Qbg3xZy8yR1GJFo8DYGlBjSoQU87ClboXx83nraDOpisM6MoQ==
X-Received: by 2002:a19:c214:: with SMTP id l20mr11401973lfc.123.1570891586843;
        Sat, 12 Oct 2019 07:46:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls1308436ljb.2.gmail; Sat, 12 Oct
 2019 07:46:26 -0700 (PDT)
X-Received: by 2002:a2e:a211:: with SMTP id h17mr12366673ljm.251.1570891586330;
        Sat, 12 Oct 2019 07:46:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570891586; cv=none;
        d=google.com; s=arc-20160816;
        b=h1xlgfP6Cr6zona3EAF0tfqTEURJQ1XD8lmdSJWTr9ZLS3OSwPvCqmIe3KzkDMkf4e
         AyCr7m8reUQp7vatflEJSYIQyebLPsf63Tuaxvf/AZjk5ztx93sfXj44XZiXaYwur57e
         teuh5/D+qrpUSU+WEhMBicyMqmCxjZcRB/QBgdowQixySLfLl/xr5IdUN4VdSeLzzyqi
         befDryop1w0Vmn5QXfD4KxceHHwHk8kYvsq492sUHZLPvyR8SmT6e4zp4CUI53hCcCx5
         WEiUg29thuEjLZ9pDXxlNiZ0OdNrvVqTHrnCa3xg+9GPYCS0RlfTcML9kNRwEiB+tWMQ
         wexg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5KGWmmYHnCKl7o8+6yr6YzfTu0KvC6adovwOl9kif4s=;
        b=xHLp+vbF4+q0cf2mH/lBcl/AXIbyxOhnXSaXwAv4XGhsXcR9zyoZ9cjlyILknndWz7
         If39bTwol/0TY/iHgIL/WGu8FSObjHDnnzGOwneJUgihzKUuxQaSJmYqjO0MAHb5s8S8
         ctV4CEjfUlsCMGGhrvg4Dh68S+/DPUitJLmALllmNv36GUiU8odXAIbGqFUWNjJZJ/mJ
         3pfC/WzexIUGSkGja5FlAi844KrGXfyiGtXZITDpeaUbIvzZwXeVUoUGO4nL//1Xb3HZ
         M+FRGU8UB4GSzxxdFsyEpnjDISys24q2Cymxkx8xRjQYeOVUrluBFcXnT11ZF+njYKAa
         P2UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=aafBCt00;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id k2si218731ljj.1.2019.10.12.07.46.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Oct 2019 07:46:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:50706)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iJIea-0003Fk-2Y; Sat, 12 Oct 2019 15:45:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iJIeU-0002DF-JS; Sat, 12 Oct 2019 15:45:50 +0100
Date: Sat, 12 Oct 2019 15:45:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Will Deacon <will@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
Message-ID: <20191012144550.GN25745@shell.armlinux.org.uk>
References: <20191001170142.x66orounxuln7zs3@willie-the-truck>
 <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk>
 <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
 <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <20191003163606.iqzcxvghaw7hdqb5@willie-the-truck>
 <35643c7e-94e9-e410-543b-a7de17b59a32@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <35643c7e-94e9-e410-543b-a7de17b59a32@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=aafBCt00;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Sat, Oct 12, 2019 at 12:15:42PM +0200, Stefan Wahren wrote:
> Hi,
> 
> Am 03.10.19 um 18:36 schrieb Will Deacon:
> > On Wed, Oct 02, 2019 at 01:39:40PM -0700, Linus Torvalds wrote:
> >> On Wed, Oct 2, 2019 at 5:56 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >>>> Then use the C preprocessor to force the inlining.  I'm sorry it's not
> >>>> as pretty as static inline functions.
> >>> Which makes us lose the baby^H^H^H^Htype checking performed
> >>> on function parameters, requiring to add more ugly checks.
> >> I'm 100% agreed on this.
> >>
> >> If the inline change is being pushed by people who say "you should
> >> have used macros instead if you wanted inlining", then I will just
> >> revert that stupid commit that is causing problems.
> >>
> >> No, the preprocessor is not the answer.
> >>
> >> That said, code that relies on inlining for _correctness_ should use
> >> "__always_inline" and possibly even have a comment about why.
> >>
> >> But I am considering just undoing commit 9012d011660e ("compiler:
> >> allow all arches to enable CONFIG_OPTIMIZE_INLINING") entirely. The
> >> advantages are questionable, and when the advantages are balanced
> >> against actual regressions and the arguments are "use macros", that
> >> just shows how badly thought out this was.
> > It's clear that opinions are divided on this issue, but you can add
> > an enthusiastic:
> >
> > Acked-by: Will Deacon <will@kernel.org>
> >
> > if you go ahead with the revert. I'm all for allowing the compiler to
> > make its own inlining decisions, but not when the potential for
> > miscompilation isn't fully understood and the proposed alternatives turn
> > the source into an unreadable mess. Perhaps we can do something different
> > for 5.5 (arch opt-in? clang only? invert the logic? work to move functions
> > over to __always_inline /before/ flipping the CONFIG option? ...?)
> 
> what's the status on this?
> 
> In need to prepare my pull requests for 5.5 and all recent kernelci
> targets (including linux-next) with bcm2835_defconfig are still broken.

I merged the patches late on Thursday, it may have been too late for
linux-next to pick them up - and because of the time difference between
UK and Australia, it means they won't be in linux-next until next week
(basically, tomorrow).  linux-next is basically a Sunday to Thursday
operation from my point of view.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191012144550.GN25745%40shell.armlinux.org.uk.
