Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBYOFUD6AKGQE766BY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F90E28F016
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 12:22:26 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id k190sf748045vsk.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 03:22:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602757345; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7TzXztUD7M9jsUIstWFNNprqsDr1DF9AEOM9rQ5rKfCy3Cp9q0MktvYWHpi8SoctK
         4rzzD++3CYSj9bM2V3qqTjAJQfAcafbAyfIKijE3CF9Rt3BLGfqfb9oLcnXLQhgwrIps
         Vs1sI3XrX0IITaLiabfWv5DjSH/MjqdJaImwK4iAVgUDY4R1HenO8h13FBE0QB6o4ZIp
         yrF5FW+bgzgVIixdt612i4MgLqQSqXo1OmlSCe3A8QCAq7Cd8z6/DBxj6IEgSVxqNrhf
         0A2TuThYALvyGtcJydnOGunbk3sSDeGmf2KBO7OCggfho9bhbyBT3NxBJeM2uWbzpsNC
         oLLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S+r1CHIL8VHyWOiSnfQZpbbhhmoRf69khs9CTsxOmzU=;
        b=JUXoXEjnfYv/8cnwwlBDFixhcYyR7HDine5SuvP7CR1QtJinzyYzrZC3FWprtFPOCZ
         ZvMRNP+J7TyL8rhAq0CBi5lDLeruJdY4YocGhQpAZ7+S7eYe0K13oHAelsPCkaSB8dyL
         PNrOJLtjdaD02eJmAMyy+hrON9AcNFzCj5gSgXK59ksGV6AZl+JcUaQfO+CDiC4vdib4
         7Lj6iviWAnNrNfjmeUuHPoFJCnYC3WVzFRfdMpgGTQTFF4coojtbaHbBqsjWAH4hxtIp
         Jmm3f8/Pa2qkk7ojKzH78MVKIozAKEVGQnjen1o+i5dnGCVFcBAWOLrjmzByezDWpADk
         oi1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=H7urFq9t;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S+r1CHIL8VHyWOiSnfQZpbbhhmoRf69khs9CTsxOmzU=;
        b=RdZXv/bDBvOg5WecsNUmKL29lZUf1zdxnrMQYaZe99J2HU1fMCVOcgghjXTlWvzYwu
         6pszW3HZejFx6K0iieVmiBi5VH6Q1mvDa7oQn7kwv1mcuxkjztB/09SVXqITM6OG4pRK
         HhfzUT8I8Ym8ciZkE5VIDQ+KzzqCjE84hTUaavInXC4H+BJYUB/zQQKAZb3n5492NsLl
         hAgGlGNfd+EAnDM43bA8ydsyErL9u1TlEciA244rxvxMcupP0u8ZPM97wKiW3z17650G
         Y93JpOs873H5lMfrsdqMrZLhfu0X5HAEKZFaqmy1c8aYZgMsX0RHz1BfUCdUxUbf6KLR
         hs9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S+r1CHIL8VHyWOiSnfQZpbbhhmoRf69khs9CTsxOmzU=;
        b=b+zf4j6B1GbRs31LQEu3fzPTJSLQPlRaBTga+diMedNHx4k3ZrM/7dBnSOsR05aI0N
         GtH3zcBpseIFqbFcmtZahTcohJ/S2ATpgyYke+JGponTjrjKyac2BOGruFOAhoMyOqbu
         vKKHdcFVXdP1gjWclRLba7lThiG/zn85Wds5lvu5PA3/YxmQSlZ/egiQZbWTkbygSydW
         pGBITSLjbeCkLMpG+tHrxJooJLMRTz68/x4Zm7WF32SWrl8/QON477lsXakl95swS/Qt
         b/GSyeAF3ZpBE6SXjiQRMJ6mlUXhSG/OVpLK/TPTV+hRaCp2Twtqm6eTELazjABhB9GD
         uKgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XNC3j7TvjHEor0KrRS9zGBUDZzsQpWY/eT3T0g97WVZO8T6Qo
	xL6Dx78YY/tmHjw/FRhM7G0=
X-Google-Smtp-Source: ABdhPJwXzY0ppn0pb+fE8oUT/EBx+Ren6PR6bJ+CfJHzAfBTlelzYKGEGOSx3BzVrhXIRYXLoy8j1w==
X-Received: by 2002:ab0:5e95:: with SMTP id y21mr1361659uag.21.1602757345573;
        Thu, 15 Oct 2020 03:22:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7684:: with SMTP id v4ls128969uaq.10.gmail; Thu, 15 Oct
 2020 03:22:25 -0700 (PDT)
X-Received: by 2002:ab0:2c1a:: with SMTP id l26mr1568769uar.6.1602757345151;
        Thu, 15 Oct 2020 03:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602757345; cv=none;
        d=google.com; s=arc-20160816;
        b=H6iYMdH9gv/eCIHFG5MFgL6hMyqnzACD3ENONPgJXSZRb9lRlzsV21b1E40hjdohct
         VJtgVPctIduFjLH0DQbmxWreZfY1OLq+mJsY0dD59LLiwU3IdRCwAs8Cl+cCYp6ixuCi
         aIfdAH+CFUQOHmWMYC4JQ7wdHvbGf844J9vmv1NDcaLtHImYkwJRSaF73OKhiVkPLlTI
         qRtVccL/c17Dyvitq4oP7c41MY0snxOVK4z4KyyTy1iKRLUlfqzHMx8GXkzpkIWTJfx2
         F5cGtzo9y4jiETpxmWUd43Rc1CHsDgxWiDyBI9T0+BHhQlqH0PRHE8gieO8MdvV/QG7T
         GFnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rmt+w86dS/ArDl7p6coE3p1FQiRlDnETDOF85EAeo80=;
        b=M6EO0wSdS7gN+Zf+y0imGKHwnjTExnS8+lCUK6o1M3zDKs/uwzz+CAT7UL7yXgiY18
         buuqAUGOk1vKAMw8IKfOwFi0E1r/EtrLf5UNvzdJU14qJ82Jcim3l7yiYAEd2wTiIq+t
         zvubqeRhKmufvmwsbrH4ztbXEpsMR0ub2VIdClUhrByNdNwfFcNkLp2FRymwrnglAOot
         uZYbyg2tcmOuW3pF1q/gM5Jwe24yR9dpD4Ug9BN0lOuLXRWrl/r3IiU/hs7A8Arisp8R
         7ZBpJbr9VahMHRaYcrcX38Q4AEOFOfspz1ZdhFHB9qtoyg2guMLawELsR0Txt8YsvR3V
         uWrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=H7urFq9t;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id r131si112656vkd.0.2020.10.15.03.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 03:22:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kT0Oo-0006aX-4e; Thu, 15 Oct 2020 10:22:18 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 835C0300DAE;
	Thu, 15 Oct 2020 12:22:16 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 6F7A9235F4457; Thu, 15 Oct 2020 12:22:16 +0200 (CEST)
Date: Thu, 15 Oct 2020 12:22:16 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Jann Horn <jannh@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild@vger.kernel.org,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201015102216.GB2611@hirez.programming.kicks-ass.net>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=H7urFq9t;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Oct 15, 2020 at 01:23:41AM +0200, Jann Horn wrote:

> It would probably be good to keep LTO and non-LTO builds in sync about
> which files are subjected to objtool checks. So either you should be
> removing the OBJECT_FILES_NON_STANDARD annotations for anything that
> is linked into the main kernel (which would be a nice cleanup, if that
> is possible), 

This, I've had to do that for a number of files already for the limited
vmlinux.o passes we needed for noinstr validation.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015102216.GB2611%40hirez.programming.kicks-ass.net.
