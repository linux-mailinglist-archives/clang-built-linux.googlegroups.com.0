Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBBHOSL2QKGQE7XMB5BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D17191B89C5
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 00:17:41 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id l5sf5718099lfg.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 15:17:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587853061; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCQ97ORuocsH6F5e/usDD4xXZ4BUIHmR1UlmJCUrDcf7sF1k+KzZrenkDttc7wlZNp
         h4C426z0vsZPkEyBvcbwlJljebwowp4lHu6OvPX+7s6dI7D8yZvAxdq4KT7+0PEdOqxL
         MmXytBF6EIS+tpjIJKbIlmYwjCrxH1p4ru/7y1XM6eM1Ht02K0e8fRq8iCSJC8vHbUvE
         cO7+slbyVASNXZBY6tuRfOO3AxwGpk60m58HJv6raQvFA55//qxWkbUpMLeWY6jrRC1Z
         oPKxhJvvZRASBmvPuMYiEb3gsH5r2nBqJyjJFSBhjo6YPzqJUfp6/8r+nw1hauktmmeW
         KcGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ByxkeguMsXIW4U/RMtRyomUl/APso5GAhlyDChi5gis=;
        b=sWF1tDklc+MN+3CWJTt2N8sIH+N//XFnndJCu5RVOxIxs9+RNLXjK0Uc0PuMdA0MbY
         pNum9qc9cRYvmFiHJ/J6f0igs4nQMZahVBiadoRbH3IwZbhmCsWNYTjrXayg3y9v8Q/H
         QEotGx5fNkJS0N+3YaURQCOJ+Q4RvR9Bty3nPZtbmI5BhlmEAVGFXG/u4ofWqob+ZwR0
         jyhdcN2/1mHkN/zbnuf8rxf0qaWZLTwHDGzOryJKSC/kS+BJpVG1vDYdn4omjrh9lV+c
         AcxIGTDjHuPGdQENu147nkZurOFusLsmAE26mmjAnSYFFo3XxtIzVwkC/kxcOX7+1fG2
         lWOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TblBEYYV;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ByxkeguMsXIW4U/RMtRyomUl/APso5GAhlyDChi5gis=;
        b=Bm7JvX/utphz2ujvnNFDywhL/BMKOIir8+AhgknJZbwW15/OPPKykmSDyQr+mIwhDA
         4Lj9ENWTyvI+XwI1miXR5hdIhGmTUa6UzBZR8ZugfHmjT/oWUkvMyLqzcuIFzY/ITHIX
         a8RQYC5jOJJdg7c55LS8A5IOQLUL3pEBDOBjItjOusJZG1BOlqg8jfI4wGsxc+zkaHoq
         LMBzxEeBjoPoIzZgTvLr1A+3SkQYPDvjo+dJcZZnJR8F441TyKOFKmoeYfUcWwv9dYKQ
         +Kya7hmlDW1TRQGEUD1PCdSuyeZ8A4s1sGJzZgkXax8C+XEHp01TtTg4ztyeBxC5qEC2
         ouyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ByxkeguMsXIW4U/RMtRyomUl/APso5GAhlyDChi5gis=;
        b=ZsbE6fg3aBGVtKjtiVsjrprnPJY4k4NBxCfUZnoFGzGVgD36iz35QgJHLRaYZ7GkWV
         ymZAaby8O47ztmgIqQ/VWUBsBJQKluRCvWIaICY8hGZpDhP+KPKBpe2M9X5lT86PaYKq
         B/91tljjD2ktiZ/W0gFE4y1cBWv7wGOC7iX6Zg1gFGibFu626Vxy8+CdF113MyG6QkjW
         jRC04U5sWNMuYN63s4Tt1aM/Jst7EZ1V+VmmegJ5mbZE4zufmu4h+CY5NAk2UDqnRcct
         3Owcfs0Wt9nT2cSVFZfbZ6XEvebjvhQaOChnQkU0RuXyZdKIjRkHmdGMhRXCDFa39pW5
         LChw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubdW/nhHlNrA6cNApUp854SBKnAAjH4lf4/aTNdEfH1K91Aa2Xh
	n40uNlCT2BYRDPf7OVvYeD0=
X-Google-Smtp-Source: APiQypJ2oDX4dCZyuf2OUwuPCm1RkYWs7rqFF0VDpxz3XumrCK+T9I6qmVSvxhUFla59dWNlX5ZVOg==
X-Received: by 2002:a19:f806:: with SMTP id a6mr10766236lff.201.1587853061283;
        Sat, 25 Apr 2020 15:17:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3208:: with SMTP id y8ls3058304ljy.6.gmail; Sat, 25 Apr
 2020 15:17:40 -0700 (PDT)
X-Received: by 2002:a2e:990f:: with SMTP id v15mr9017791lji.7.1587853060494;
        Sat, 25 Apr 2020 15:17:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587853060; cv=none;
        d=google.com; s=arc-20160816;
        b=1D5ZVtacRarafetgU8R34TOK+0ucpMURdPAZhcHZn4QqZnq8nwx67gnEuvgj7tsvHW
         5UXhtd0Abh5cJb4UvTzxHy06FNtz6zVkjY+dfCmDZlv68lZnbGFBVcTCCUJ3K7n/hoir
         P9lDsLDf4gAF8Ujg+xAKwSNqO6Xnl0JfW7ZdvIr31oamwYMFieQlhLmAQ7kxsY2w263p
         xUP/eVmehU0hfEbA9D4f9uCCGrr8f/5I13yXsfYD7+cqumKtOw6SCacaMv10CK1LDlq1
         IwF2jodaFrcv5A+4vlEyR5/4V7IPw46k1MIXeT0kXZgWLSFNrXQjIxvpp5NJSXeEST+z
         yilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dL/4+F/i9p4Rl9Mx/xjx1nvt6QzxFIox9qHe7WXmyFs=;
        b=Y2J2mdKqVOHziPo1t1pbB8/iHBuGaBMnERoYYhc1VmRaQYDVTmmFXEPkjiTTWROF+r
         sSLVLp5T3YgKENkiFYJQnrpW4DyBunSWVVCebPiIDuG1UqeFVJpU0I3NzdS+nkF2nofg
         iLdBjqQR9a9IR6hbCmsuaG+xBBTANN4G2qIE4loUzPQASH2CrgSEQ3oFBw1mL/vYCS57
         rjMaUsng2tb32DySZZ9PUoMWybHUu/G2Bfe4OCkfAoGZdPz5N/B0XYX+/FMJh2vLyTqN
         +jTycpRhfAjf6e4TsZYTY9qPOuacFaxA0z12LGhVlmZPjcSP0J68CM8qsYfC7d1aYR45
         Ld4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TblBEYYV;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id a12si324985ljm.2.2020.04.25.15.17.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Apr 2020 15:17:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F2A110011AF566E608DBC7E.dip0.t-ipconnect.de [IPv6:2003:ec:2f2a:1100:11af:566e:608d:bc7e])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 882CE1EC0CFA;
	Sun, 26 Apr 2020 00:17:39 +0200 (CEST)
Date: Sun, 26 Apr 2020 00:17:28 +0200
From: Borislav Petkov <bp@alien8.de>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>,
	jgross@suse.com, x86@kernel.org, Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, Michael Matz <matz@suse.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ingo Molnar <mingo@redhat.com>, Paul Mackerras <paulus@samba.org>,
	Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	=?utf-8?Q?Fr=C3=A9d=C3=A9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	boris.ostrovsky@oracle.com
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425221728.GE24294@zn.tnic>
References: <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic>
 <20200425150440.GA470719@rani.riverdale.lan>
 <20200425173140.GB24294@zn.tnic>
 <20200425183701.GE17645@gate.crashing.org>
 <20200425185313.GD24294@zn.tnic>
 <20200425191549.GF17645@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425191549.GF17645@gate.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=TblBEYYV;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Sat, Apr 25, 2020 at 02:15:49PM -0500, Segher Boessenkool wrote:
> My point is that you should explain at *every use* of this why you cannot
> have tail calls *there*.  This is very unusual, after all.
> 
> There are *very* few places where you want to prevent tail calls, that's
> why there is no attribute for it.

Well, there is only one reason *why* so far - to prevent the stack
canary cookie from being checked before returning from the function
which set it. That could be explained once over the macro definition so
that it can be looked up.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425221728.GE24294%40zn.tnic.
