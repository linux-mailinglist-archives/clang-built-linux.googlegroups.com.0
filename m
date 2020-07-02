Return-Path: <clang-built-linux+bncBAABBS6B7D3QKGQE3EYBJNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC44F212BCD
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 20:00:45 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id c82sf19484466pfb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 11:00:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593712843; cv=pass;
        d=google.com; s=arc-20160816;
        b=crBZa18Td93kYNMtJUdym+9ODyo1lNSWR4QpwsIjmt6wYzsMPhW9vpic08mwkUBEWZ
         DNl0RGOncq/OKc8XG3wSHNg8q8L3+Tf4x6eTsTpZ/ClZP6RO3VpLEQy5sH+lbM3YT2LD
         F6ATo6bv12xmOl/dKvl5TlVnneXltxYwhKu5vA1875OpW9R0GjZ59+7sfxqKYsCuBJO+
         oedzMga7C2WkYox4RVDiUEm69tytbiqhdDAggFjTEL0Tc8ThzbmjJrANoRTg2TwCuypF
         NT0YvQE20rAsFPr7JF8d/b2VXMlierOkjmse5IwvVOEegT3lUe3hJ+oeG9neOXiPCIaT
         DEUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=hOGBRmfpFIfvszADpDIJHNJ/uHed2VKLPt7H6W01rkk=;
        b=pLpUqJD8NRVHYw8vZv2HS8qg692iS+xAzkvoZusS/89dw/MIbMvCzJdVaTzSpxj5Ss
         oVD2NsBVEjVQxiGyOFamHlbXz/29YYUPFZB3LdAPfVpotpI2wEI0Y8ZMgnDxEpU1vKGt
         0W0+lD+oNIj5C4680iv49iMTHII4ErqxRbHr1JdGvmgGzT1CTJ2TmH89tsjLirCthUdE
         gabQntWlTDdUHAdGfAxX5xbpVkjA6AdMk2EGUIn1eatRlJVlsUCZSuxv78w8eL3QaoYO
         UTfJf2ZT6jPHbtCrBPlOiERlK6UB8JdYXy3vhfnOieHttpp9OdmpaNtm5B9zbTFWdeQ3
         7HeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QWmK8WMR;
       spf=pass (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JmJS=AN=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hOGBRmfpFIfvszADpDIJHNJ/uHed2VKLPt7H6W01rkk=;
        b=SiTi9GCJTtsl5tXgpze0WTlCBuJLfQdNQohPGHVGrHm2mvTpuvG++ODBBEV9CVuFUG
         ZlUXVV1BiJn40p8E21qZdIqA+9L5ZcJmifRuuCCr85KZYnahRJFQqmJY6BapG45XkWkh
         teWI4twD0u/DgBc6g7dZ5q8ruFGHiEhVx7fx+WtBtPd4DKJ9ZZp0IR0RqugLgwobquuw
         JQpBIuiTRpK5R1HSxuDwg8x+u+Ce/c1V1bL+/rYPs7Q5Iu9dribtyE4JNIbnFQHrGW2Q
         USgoMAmL0paJIeo1hdTuT7VALBAsJyO7AuYQZ4Ov9hnkTEmVQJlLAl8YPx4aHDRwV9n7
         f85A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hOGBRmfpFIfvszADpDIJHNJ/uHed2VKLPt7H6W01rkk=;
        b=K5dDEulhrJYvX10LFGVMqrGBKN98SoXxq19FmBp3tiSTBl/upxFdb9De0WoU98iYoC
         M8FLpF4NZ2v2arCfgSQ9+Jpi1iELLxF15uGIScmKrLfS3HjK5VDB6gnG6Fhobm+nq6Xz
         etfMwN+RQxeNa0RvvA1bG7JaanwrVhhch+0Zyr4bOuiTcJNGKR5far0aOJEPx/QtnsSy
         uuM0j80FszuobMDeWS8fWWqpJmyPQ/RdLuGwCvVuNfD0p2NjZ13qqBpdF9Dw9PP+nXSr
         ncAoiokmY5hflzQsacXFb55DtkQ57UPo2ck1m7Fl3z/jIYj/V31GVCfDEQ51WUCDA74k
         K//Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Qv5K+loG/SnyqDh2beYFZsam/VyTT8xloBYO1myfQIVqEU8DQ
	UbwCTmRniNtcn3xx6xoUeyU=
X-Google-Smtp-Source: ABdhPJxtPYojF9BG7b19CY+fcSEeGf0RoOx3muKEzHpOfcqdoGiz6e3pRBv4CcII0gWyJenY9Q29Kw==
X-Received: by 2002:a63:3dcc:: with SMTP id k195mr24622174pga.96.1593712843201;
        Thu, 02 Jul 2020 11:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls2775307pjv.0.gmail; Thu, 02
 Jul 2020 11:00:42 -0700 (PDT)
X-Received: by 2002:a17:902:b205:: with SMTP id t5mr15501385plr.7.1593712842791;
        Thu, 02 Jul 2020 11:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593712842; cv=none;
        d=google.com; s=arc-20160816;
        b=RGYhX3halRs7YD/niA9SQOysYp7lEJqmo028jzSQKUEZB6f+bvqx8AkPlZKZg/o0pZ
         RZqjlLyfI6cJd2gUgRKqrD1kwWk5z3kWgJosnWdyXwuUb0lqpGxgngLxWvs98VJDQ/zo
         1bIFmWFKFlFkjdYr/8imWR+hSoJ+/0FTG1XKzl3t8ZyBckFZKl9gUywu988MbmZGrSmM
         tLhDw4+AVsTw4jNElpDwyv8djHn8+jPiPrRyKsFxpjzDrm+yMtoM9LCedaJdlRi0vczz
         3yqchE25Z+hLsw1ficzvftK7pg6uMCfeVBKZTOf0QAQQ+JfCt9Sd8+1Z+vnzOC+8hRvb
         6h2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=jhQwr39jICFJkB27rOPoWLxKE2VWoWoWQq8J0FoalvM=;
        b=tAbLkSR5V63rP4DX/duYwUgM4RY2OpMaMkb7gKzRLsrthmUfBfYivpouQ8lynhNZH+
         CYGSsKq6Eciu5u6lWcdtS4MtxjVs92a5nfHeCkK9SdtV7byEtM3mSwP+AYkPLx7FekM7
         PGcBnTEArTy/p7TMsK7coonKaCJdppcRCzcE9o4BRSyv0VXqqr/129EDr60yesuhpKZ2
         14A/bXEbHeZ3MgVnh0SzJIgsjUcnLBHBKczbzcs+eo1I6dVtF+EhBMWtUIlMwpO+C6qG
         DY8MES0ntP4cvPMNfXeUUzZHrweJJI0Axm33/oNjEpJpvLBFdSVS9ijmlZBuHA3Cy26n
         mTsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QWmK8WMR;
       spf=pass (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JmJS=AN=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i3si1138453pjx.2.2020.07.02.11.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 11:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 832662073E;
	Thu,  2 Jul 2020 18:00:42 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 6CE89352334B; Thu,  2 Jul 2020 11:00:42 -0700 (PDT)
Date: Thu, 2 Jul 2020 11:00:42 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Peter Zijlstra' <peterz@infradead.org>, Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200702180042.GW9247@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <20200701091054.GW4781@hirez.programming.kicks-ass.net>
 <4427b0f825324da4b1640e32265b04bd@AcuMS.aculab.com>
 <20200701160624.GO9247@paulmck-ThinkPad-P72>
 <aeed740a4d86470d84ae7d5f1cf07951@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <aeed740a4d86470d84ae7d5f1cf07951@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QWmK8WMR;       spf=pass
 (google.com: domain of srs0=jmjs=an=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JmJS=AN=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 02, 2020 at 09:37:26AM +0000, David Laight wrote:
> From: Paul E. McKenney
> > Sent: 01 July 2020 17:06
> ...
> > > Would an asm statement that uses the same 'register' for input and
> > > output but doesn't actually do anything help?
> > > It won't generate any code, but the compiler ought to assume that
> > > it might change the value - so can't do optimisations that track
> > > the value across the call.
> > 
> > It might replace the volatile load, but there are optimizations that
> > apply to the downstream code as well.
> > 
> > Or are you suggesting periodically pushing the dependent variable
> > through this asm?  That might work, but it would be easier and
> > more maintainable to just mark the variable.
> 
> Marking the variable requires compiler support.
> Although what 'volatile register int foo;' means might be interesting.
> 
> So I was thinking that in the case mentioned earlier you do:
> 	ptr += LAUNDER(offset & 1);
> to ensure the compiler didn't convert to:
> 	if (offset & 1) ptr++;
> (Which is probably a pessimisation - the reverse is likely better.)

Indeed, Akshat's prototype follows the "volatile" qualifier in many
ways.  https://github.com/AKG001/gcc/

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702180042.GW9247%40paulmck-ThinkPad-P72.
