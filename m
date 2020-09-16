Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBAVTQ75QKGQEORW5EJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id C654A26C062
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:23:14 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id b17sf2134428ljp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 02:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600248194; cv=pass;
        d=google.com; s=arc-20160816;
        b=SViB6LoV7/CAIoVm0Bg7U1+k2NEnuZFmd/JyKqEZhM0CSiNRYcrSoaKolCB835MEWV
         BLrHSkjYlnaNLcKvYQ6HL5XSV7Eh1oY6kVj2wOtaBuw9EEY7M6eKDjaRo0vrU/Uky2tg
         CWD0m+zbsfIYk0kumG+FaD4oTSzncZ/IcEDiNHqeZGecjukqsCe3yePmcuRS8UDMHGYv
         Yg0s75dbt79N2xmwioZBZBNWJqamv0rLY0CLFoQFAX9YFUx9HxruXOzbgof0GrFEohzx
         OMMfNVDWRGRd4c+kP4ZaryPiBgGQh9B/k0YZfL8dBIcnVvStYXAdiWZICWDeercuPEDd
         vcEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hmKJTacsa3OKLAi9rBqZv8TZ7+FgV7ILaZSWfwqdssE=;
        b=aX+wiK76YhuzQZH5TU4EBqRajjkNoSIm6B+vzXBGziVIcCZIVmRZuur8U250Xqkn5j
         +kCTp4PfzKVWYJMq9p/YPGTejvcWheyt4on/KykiyPDncQ7tiVfon+dNKXCs46ZFuiPq
         eOKh121Xpk64YZhy8ct/lREsRjuqwcin2MzZsH9EmpKpW7xsI79nY3AW9reXw/eRG5AN
         /1//3wKdeBlP9efirr9MYITI9r9Zxx/JFQUZ6lwsETsq3GmsRuZx9Ir7Mn2SPpZtelQb
         gGmWQNtTcTW7iDNAFGZpdNGWmR5S9VZ/186p7wY3C8/OBdGMXr3nTc3vFIVM5qRjXNQM
         W8Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Kw93KpWs;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hmKJTacsa3OKLAi9rBqZv8TZ7+FgV7ILaZSWfwqdssE=;
        b=Uc1zbAA5UtXqQoyRts++t3xkSPmKvy+1H17Rr2sPVELbZl7n1nSkxY4yLzrReD0v/m
         JAy15lU6pvQoVmw6wrNzQR3Wigo4tJi0cJph31PZ3N5cLTmZwBTypKTH4Cht0qcAgMEq
         b1j/RtI90u1vlrRUzCyySW2/lOFFA8QmGK+E0NDbYaQ65mEGqWVOuDCmcagwbcxE7jSm
         mPpQJxAXMZrPhyZGoOhypMflaS/uPyMxN20ga6ZLB7GAm3V0uVfszYzr6yIrZxE120VM
         IiAlb2lonf+BxGli6vPlWcQRsNGsbKKvKE8UauwSlK2wOVT5FatxZfkyd7B+Pve4dLo2
         BF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hmKJTacsa3OKLAi9rBqZv8TZ7+FgV7ILaZSWfwqdssE=;
        b=W2riq3LN+oV2nhjajPkwtj+0Ccz4j+p/3CWefYYc+2IllfJsGXkJnRxStKKsHtPPTH
         oITJNAQ9Oaz/xaztseQXrD5Y9f3hxe9l4bPjKhLZBeDW7FYpmm4k7q8CbyA3t0g57X71
         2PZLMVJ0PPU+Yrrg+mVVf7G0nLITxZSh9wv7nkb1C6WBzJ+EdTYv66XnDRb2+DHUxjhj
         /rqGnjWkLpuByqYC15wB4dEluQtfmmHujyWAingYhq4zFTqHj6ivsv4lyIfzJbAvKEw1
         gNKg7v78RT5lpM2WYPs3FGRYPqj8d7x0SjBo5bw7bOzHhADpgX2cmLjJQ52gk29iEmcH
         jKNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531egc7Ay1UqfAyhd69Z9+0nEo5xt3wXXu4SWlWJmdkEGhcAU12y
	LRQixveLBICnDrmNsbttuYk=
X-Google-Smtp-Source: ABdhPJwH5Z81n5rOZdsFfdB/sF3EylmBTrQBF2nzAJ/OLfTHz/45fJnLE6YLO09CxLHzezVa24qV0A==
X-Received: by 2002:a2e:8e30:: with SMTP id r16mr8843698ljk.304.1600248194252;
        Wed, 16 Sep 2020 02:23:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0e9:: with SMTP id h9ls196246ljl.5.gmail; Wed, 16 Sep
 2020 02:23:13 -0700 (PDT)
X-Received: by 2002:a2e:7c14:: with SMTP id x20mr8388708ljc.252.1600248193006;
        Wed, 16 Sep 2020 02:23:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600248193; cv=none;
        d=google.com; s=arc-20160816;
        b=WQ0B1E+u5CK0N1nAC7z3+mS9+LreRS3dQud6MZmMDbLZ9yHL5cR19CTvjPAX4rWBKc
         K55zHz5TB/anndTbS0BA7E6gIHyRf3wvqC/Q0ONkBGKBqmGFWO/YdgT+Ut4A/j3zEy6s
         Og10jZbs/rrnCVWSPwFdR5OH9eyy8lTt60ZXCTVtrjRWOKeTMrnZCkzkYT47e3mfsIuD
         dlUMOFI6BqjT9eWE9Q6s896uZEAjZGLCItRnHUNGLJg+tppWmUiFLKz0xxHIl4Mqy44a
         NFZmSQgNofMbEkOuAKpoHtKVLnvb5es+XAZQVa0PlhWlpMtv2bPYDBoH3iuAzZOeENGr
         CMaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3TeVrXwZQcowPr3JVdy9o1Dg4I+EinWtvHyXdySMq5s=;
        b=JOmbl6lE8aHtJqjteu2AQ98Ph8cmRTPYXJRlC1mVoITcyqsPpRoMdtH0oc+kB0nq9T
         Y1Sb61a78wQJoHQfDdNmtFojX8CwdNm4OMAdn1ekrXyMLjB28SEKs2lQRD7wLDGxxOrs
         UN1hufuFiu3ALeeeJexcw7wqaKCKEVDduPxQaXPuxxO1WgW8ykhUQCklHwMZKufPhf1u
         Xtody8rj9hApps54j4IaAR6G5sQuusGF0Fm2+w7zLtAV7rehf8vIj5ydtqiEDBRCIxFV
         yytU97sN74Wjk5IAtg30zFojj+jvwUmybJ+Tdjn+YJwlX6G8AtDSZ+Bzi1ZlzZ8Z7jfa
         Uc1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Kw93KpWs;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id r13si553481ljm.3.2020.09.16.02.23.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 02:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0c3e00d3c4597872eea104.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:3e00:d3c4:5978:72ee:a104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id DD7101EC03C9;
	Wed, 16 Sep 2020 11:23:09 +0200 (CEST)
Date: Wed, 16 Sep 2020 11:23:02 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	Roman Kiryanov <rkir@google.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Pavel Machek <pavel@ucw.cz>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-pm@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
	Alistair Delva <adelva@google.com>, Haitao Shan <hshan@google.com>,
	lkml <linux-kernel@vger.kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
Message-ID: <20200916092302.GC2643@zn.tnic>
References: <20200915172658.1432732-1-rkir@google.com>
 <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
 <20200915182530.GV14436@zn.tnic>
 <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
 <20200915202034.GZ14436@zn.tnic>
 <CAKwvOdmmXEu40m9bVL9zY5XyBRs2f15cs3FZQLCCh4u3i07pDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmmXEu40m9bVL9zY5XyBRs2f15cs3FZQLCCh4u3i07pDA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Kw93KpWs;       spf=pass
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

On Tue, Sep 15, 2020 at 02:49:40PM -0700, Nick Desaulniers wrote:
> 1. they don't pay me enough for that.

They probably should - you're doing it anyway and it's not like they
have a shortage of cash. :-P

> 2. even if they did, I wouldn't want that responsibility

Too late, my friend. :-)

> 3. I'm probably least qualified for that.  Google has many strong
> upstream contributors with much longer contribution history than
> myself.  Maybe toolchain specific stuff though...

Sure, toolchain only, if you prefer. And others can take care of other
areas. And yes, those people should have some time allocated only to
upstream development. I think that's only fair...

> 4. you generally don't want people like that in any organization.
> More gatekeepers winds up being a synchronization/contention point.
> Remember, the goal is to train others to be self sufficient, so you
> can drink margaritas on the roof.  That suggestion goes against the
> ultimate goal.

Sure, but there's the community and we want to support that. Business
interest pays the bills but without the community to thrive around it,
it is just another crap software.

> 5. You'd think a multi-billion-dollar per quarter company could hire a
> few more people to help; instead stock buybacks are more attractive I
> guess?  Maybe better ROI? I suspect one too many managers
> internalized the Mythical Man Month's point about "adding more people
> to a late software project just makes it later" to mean "starve your
> projects for resources" and run a ghost-ship (ie. big boat, with
> little to no deck hands to ensure the boat doesn't "Costa Concordia"
> (noun-as-a-verb...oh well)).

LOL. And true. My experience with managers is that they have no clue
about how the open source community works. It is always the egotistic
and omnipresent take take take and little or no give.

> To be fair, hiring has been impacted by COVID; my point is more so
> being stretched incredibly thin. There's been what, 3 Clang related
> kernel bugs you and I have been CC'ed on today. Hard to fix compiler
> bugs AND triage from the fire hose. I should probably just put down
> LKML for today and start fixing the [haunted][damned] compiler.

Oh, welcome to drinking from the firehose. This never stops. Ever! So
yeah, even if you can hire more maintainers, there's always bottlenecks.

> That's a rule for stable, yes.  But also because we have folks that
> don't seem to understand (moreso maybe haven't considered) that
> "forking is not free" when upstream moves faster than you and you'd
> also like to rebase someday; as such acquiring technical debt at a
> rate that's impossible to pay off.

I guess you need an upstreaming team which takes over technology
produced by other projects - as those projects cannot slow down to
adapt to the upstream pace - so they give the code to the upstreaming
team after the project is done and they add it to the mainline kernel
eventually. I think that would make a lot of sense for *everybody*
involved.

> I guess you're paying for beers then.  "Android Common Kernels" run
> mainline.  (They're a bit esoteric in terms of "production" but
> cuttlefish virtual devices are running Android on mainline).

Only half of the beers - this "production" is a stretch - I mean
infrastructure machines, not some funky toys. And *virtual* at that. :-)

> Martin has patches for that, he has CC'ed me when sending them
> upstream for review.  Review was stalled, so I provided some feedback.
> I'll review a GCC patch (once it's updated with my previous feedback)
> if I have to; I'm not against it. w/e so long as we have a timeline
> for a kernel fix.

That's good. I guess it'll get there eventually. We'll still hold on
to that fix for years, for those gccs which don't have the function
attribute. Which is yet another reason for my aversion against compiler
workarounds.

> I CC'ed Martin on the LLVM bug, since this is a case I'm looking for
> his input on, or at least for him to be aware of the test case.

Cool.

> I look forward to it.

Ditto.

:-)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916092302.GC2643%40zn.tnic.
