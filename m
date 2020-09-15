Return-Path: <clang-built-linux+bncBCIO53XE7YHBBO6PQT5QKGQENJTPTAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF49E26AECF
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:44:44 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id e16sf3678522ilq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 13:44:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600202684; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z5Qj8jnHcuAzd1VpuOHkYZVmla7K8YwKqxJpT0z9YQI2WG9K+dp1U2rsFOTx6sUQ1T
         CZBA2grv8iqdkUBGKcHhlXue0yAxXk/jaJhS8Y+IvsjJML4C/EQe84C8SU3q9XI6lZji
         ND9einnKaB2Ec0zBe8faKxm1/36jaWoDawJ+26gvDnM50KTsP7MWrsYz869/buIWSw5u
         N2fIa02X8YHK4AHlE2mfOHEK1Xh1RJ14NYJQHTrRyGpxmPKsHd83nq86A9jN2HStE99+
         kYdxhcoZkRPPBEhS5Te26XkE5mdP3xMt1iIHs2FnGSIgwq93weQOaZUh1wbLCGy/Pdem
         xQgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=d/DGfefCpZ37zkPfvC2f+WJ3cwwBZNBntkpX/i5VdNk=;
        b=sL6Z2ZvxBR0oilBwuTHP32mkuPxCs4KBHcQMspiF2Bnor1ihHOcu0NsTB7R3o5+v7T
         /EA4Z0SXw0QvDP+H7oMgfz3VZI+GdUw3pIZuLqXYU01IxGRtOq3K246exYn/+T8MQsRJ
         aaHJ+bu5h3bwwJSOihWHsFbZNGfFRQSZbkL7detVEC6nCsw3o+KeOxzTHUDglw6zEypW
         kmxr6tGbZkCXZ3hu2qtZjqpowpMAdQ7Eoewjy+zitVZCnTohfVQVKID3iBD2bGXW6kqV
         b3yo05x3oCjf0zsXRHRGQ2x8BZRwYYHAirSyaw4vGJGKOIFqruydi94sAWXVjoCfDlhp
         uo6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+fKAZuS;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d/DGfefCpZ37zkPfvC2f+WJ3cwwBZNBntkpX/i5VdNk=;
        b=uC7Ozg8/7q5Pwu7S98ZElMWmSry1mgZ2NZ1riRYu2x8zWi2OtOOKr1ZipF2Lh5t+s8
         bpn62ytxG+GN37v9z1MFjI4Vqlt+f8MSGuANVr2osUC1TwydMh+0H0Zy4tA4+A0PeOV5
         YIxatGSufZW1hmiuV6N9XXVv+QL+t2f1qnyOF61DImewxlIw9xZvG66mKu52NV+5HG8D
         mNERF2SgBnQbopSdJgTjeZl5VbPJB5uQL6hhqiUCgbs+QRU63A7c2FD6icPgGD2SemzE
         cUvGFKQGmcUBDRiCLT+RoXyf2vjmUx3pfEcFCz24R1ElFMtxV1iuJUsa/SFgONcYFCTz
         BX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d/DGfefCpZ37zkPfvC2f+WJ3cwwBZNBntkpX/i5VdNk=;
        b=RstoSWPqlD9REGEWnIpFLC9F7hxxW53FtZ3HpHBWstLXswGe1Cl/gswgrXBtfr+Ui6
         tAHA/hQBMJuvI/6z1+pUJMCJf8msuwCMii9A5xWe6UnHdde8sO/k+RTXHmMxW0mq+Xeu
         n51NVwMluq9I4F8DCGgdru3deAzimvNFkB6PkA2kEunXz6fBmu7SAaeNe4f+iNIYIKZ6
         UiJE3kxlkfUUkrzWl5eoleXtV4rE1Wpwkn9iK69tgK4BVGWaifte4ednOdMuhUqivG8S
         STvUwxd1GbupnmWs8kAH60rD7Lvogo6ztXi2csRsMUVBifxZEyUtLiKLHyv9M7sZVTz3
         vD/A==
X-Gm-Message-State: AOAM532zbW9gkiie1Pa4Lu86wNPfJoTV3fOjZeWu936lA4KCCmtd8qgx
	6QSuGsCJVzTVq5VaP5Xc2d8=
X-Google-Smtp-Source: ABdhPJyUCNwgp+hi+h0ZzTsrzQRp7D53MCyVaZol5RMeY8o1JCSNlqwhGMHGnzFG3FKy3SNnfwL/zQ==
X-Received: by 2002:a02:778e:: with SMTP id g136mr19796249jac.49.1600202683854;
        Tue, 15 Sep 2020 13:44:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9b0b:: with SMTP id j11ls53033iok.2.gmail; Tue, 15 Sep
 2020 13:44:43 -0700 (PDT)
X-Received: by 2002:a05:6602:22cf:: with SMTP id e15mr16526313ioe.114.1600202683302;
        Tue, 15 Sep 2020 13:44:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600202683; cv=none;
        d=google.com; s=arc-20160816;
        b=1KAvJ760l2otc4eaBZ9srAJgp7fqth6ZQU3t/DSRjzyXV1QJTPXyPwB7zVYSscdQ63
         k2KlmaV5oQRTNvSSYn4puyjah3giQzUgMDKpirjEgOW4yPCE5JEis/T1qn7YCP3UxvaI
         JorzSTJ+vEnJmakpyTzudtJ4dEgReI0QKQAJStCpQspJlVOslzzOG2TSuKAs98P+iigp
         /P5oMGWT4Qf5MEuXpnm9TvhNR4dQgWwUHfiPu876ApWfwStQBpECiAQfL8Yxt3asJBg5
         1Xz87UNhKy0Z7GJ9NgBj0SGec+ZWnUCfSJlRU/KlN/QbfG2Lmc5jpjlVElEMS9UedCza
         +2hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=b4wyyxtHiFl+MY62NzX6PyD2B1xSNShVZ1s5WeOMeHQ=;
        b=BkgYqUsbIowjHAK1aX3h1gwUld+QNDRNqM+86Ei7XVKy4tFE0r5NloV74kf+1q2you
         yAvQaMNkIwFavgjOoj61gHpsigCKKOjKF1xrKkJ9yJrK0UG3HLz1jGN9JkirE+7hq+Gl
         CFNUdwNVJMgB/mU01V3pVPCy9uB4TNA921w2goZKPY6iizUYNTl/eHYeUj5xclE3e+Y2
         Spv637czRB2CaUbBEC3uB4Ly6aWBXpb9oAjoioQcFqKSCerxWf20tsFUPcW8vJ661qjL
         OV9oglS6nCtnXxmnysUaT1lqVpHdtyHt9GTSR4utej7jCmrJQtXQPC0rahFgDjfL88qx
         CRuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+fKAZuS;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id s185si1038813ilc.0.2020.09.15.13.44.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 13:44:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id g3so4326185qtq.10
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 13:44:43 -0700 (PDT)
X-Received: by 2002:aed:2433:: with SMTP id r48mr2584894qtc.58.1600202682584;
        Tue, 15 Sep 2020 13:44:42 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id o26sm3446298qtb.24.2020.09.15.13.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 13:44:41 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 15 Sep 2020 16:44:40 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Roman Kiryanov <rkir@google.com>,
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
Message-ID: <20200915204440.GA1087647@rani.riverdale.lan>
References: <20200915172658.1432732-1-rkir@google.com>
 <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s+fKAZuS;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Sep 15, 2020 at 11:00:30AM -0700, Nick Desaulniers wrote:
> On Tue, Sep 15, 2020 at 10:46 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Tue, Sep 15, 2020 at 10:26:58AM -0700, rkir@google.com wrote:
> > > From: Haitao Shan <hshan@google.com>
> > >
> > > This is a workaround which fixes triple fault
> > > in __restore_processor_state on clang when
> > > built with LTO.
> > >
> > > When load_TR_desc and load_mm_ldt are inlined into
> > > fix_processor_context due to LTO, they cause

Does this apply to load_TR_desc()? That is an inline function even
without LTO, no?

> > > fix_processor_context (or in this case __restore_processor_state,
> > > as fix_processor_context was inlined into __restore_processor_state)
> > > to access the stack canary through %gs, but before
> > > __restore_processor_state has restored the previous value
> > > of %gs properly. LLVM appears to be inlining functions with stack
> > > protectors into functions compiled with -fno-stack-protector,
> > > which is likely a bug in LLVM's inliner that needs to be fixed.
> > >
> > > The LLVM bug is here: https://bugs.llvm.org/show_bug.cgi?id=47479
> > >
> > > Signed-off-by: Haitao Shan <hshan@google.com>
> > > Signed-off-by: Roman Kiryanov <rkir@google.com>
> >
> > Ok, google guys, pls make sure you Cc LKML too as this is where *all*
> > patches and discussions are archived. Adding it now to Cc.
> 
> Roman, please use ./scripts/get_maintainer.pl (in the kernel tree) for that.
> 
> >
> > > ---
> > >  arch/x86/power/cpu.c | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > >
> > > diff --git a/arch/x86/power/cpu.c b/arch/x86/power/cpu.c
> > > index db1378c6ff26..e5677adb2d28 100644
> > > --- a/arch/x86/power/cpu.c
> > > +++ b/arch/x86/power/cpu.c
> > > @@ -274,6 +274,16 @@ static void notrace __restore_processor_state(struct saved_context *ctxt)
> > >  /* Needed by apm.c */
> > >  void notrace restore_processor_state(void)
> > >  {
> > > +#ifdef __clang__
> 
> Should be CONFIG_CC_IS_CLANG; is more canonical throughout the tree.
> Or if this is only a bug when doing builds with LTO, and LTO is not
> yet upstream, then maybe Sami should carry this in his series, at
> least until I can fix the bug in Clang.  Or guard this with the
> CONFIG_LTO_CLANG config (not upstream yet; see Sami's series).
> 
> > > +     // The following code snippet is copied from __restore_processor_state.
> > > +     // Its purpose is to prepare GS segment before the function is called.
> > > +#ifdef CONFIG_X86_64
> > > +     wrmsrl(MSR_GS_BASE, saved_context.kernelmode_gs_base);
> > > +#else
> > > +     loadsegment(fs, __KERNEL_PERCPU);
> > > +     loadsegment(gs, __KERNEL_STACK_CANARY);
> > > +#endif
> > > +#endif
> >
> > Ok, so why is the kernel supposed to take yet another ugly workaround
> > because there's a bug in the compiler?
> 
> This is exactly the same code from __restore_processor_state.  If it's
> ugly, talk to the author of 7ee18d677989e. ;)  All this patch is doing
> is moving this up a call frame (though now this is effectively being
> run twice).
> 

Possibly dumb question: why does this fix anything? Won't
__restore_processor_state(), which is a static function with only one
caller, in turn get inlined into restore_processor_state(), so that
restore_processor_state() will also have stack protection enabled, and
the canary will be accessed before the MSR or segment register is
loaded?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915204440.GA1087647%40rani.riverdale.lan.
