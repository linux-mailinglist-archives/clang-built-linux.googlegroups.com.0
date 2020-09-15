Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS4CQT5QKGQESKTN3XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8680326AB5A
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 20:00:44 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id z40sf4204993ybi.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:00:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600192843; cv=pass;
        d=google.com; s=arc-20160816;
        b=gf3UnBSH0vsQyrMC8AvcDRwAGbSGxZ0KQL4aqnlvi4bSyXaVSMVTh9FdXFlllAuwfs
         8X0VS3+nx3ML+JYmo1i5LEJOfkDWj67UIG1PTL80P4R/x1CRzsMWLmKuTAA2bSysZEuF
         m1evwzYZcS4V6c+QamMYyTrRn3D+q1Frj/Oc49cgfBBu07G2SCuPCiR23r7GaMpVjSVU
         aQiEqufTfMuw67JD82Oe5R9ImIW7loHDp8GphAYpIBM+FipCXHLgqTlNWMMzKh49DtnD
         G6jr2RItXZqaMKRcgZnRwfS5AJytP2O6QgAh/UlOJNFAHLxkMVxMyeJ0gQuEkRz4muap
         pwHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ho+DEUoqWwGmIoAyCh3BkEk07+RyY5UHWXITJzE5OiE=;
        b=x/gCW1viVdE203GQbB8zpZHPu03mAU/18ZpbCa0d8AcXsKK31waXVpByiZm4KMgjfO
         r+NfA9ApuvxO95gn/T9R9lmg7wz2ZthJiSg8OxFDY+HBu1vwAnCBcRG0e4IKs9eQjkkf
         ZEFdi5Ail/0L5cqQht39VtoS1WhEWf49n24NUVA0BTttuvqVqLBp5PMdJgQSeEWYuVQU
         ECLiICGQwww0ajVA7yGjS0tG9rStFO5lc/uAzcoduGXYVo4VhRz2PWLt8xJlKAf3sMJF
         vgsuRLKGjxs6K+G4NxybF15XWtlN7HubnB3Ke5AyUAmHWwAY3y/3bQfITCyvyXN4p4jx
         9Gdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rt5RfIiA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ho+DEUoqWwGmIoAyCh3BkEk07+RyY5UHWXITJzE5OiE=;
        b=S308pay2Ij6iuzwNtR9+rnZFMhDIgXkYV98rA+6gbLLYtmv0L6aFbfS0hpNv4/Mo3A
         BzQN6B/Grq7y0631p8tYxR6K1aWNYpsducWxel8eIPoObaOM+ITfhgOqg05VwtNehsSV
         JjGNy0Uu+XB5S1NsbF/rXW1W968d2iIaCbIrYQA1dSX5hhmoM2vwMfJCDiVQJpjf0DX9
         S6AdK6ZeRtPkXTaDHt3sTYAc/qn8Sl8bB+fFnuK8qzJVSP4lEuYMOo/0cSKQT5w/mZm4
         V/tr8prWEoLko2wixjL1gLSLNZvjhYj76TYRO3O+vfREcfmRmcnEyr5Z2E+euChweLmT
         Y0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ho+DEUoqWwGmIoAyCh3BkEk07+RyY5UHWXITJzE5OiE=;
        b=Wuwgnk8EWgj9lHA5T0Kuqg2aPHYW9y4PL6I9JTXKYU2lnpcqvMgAt7VFF5jd03mD7f
         U3FiZZpCKMa6asuW+V1krRqC2BDK/HBU47O75tbAv3gKiSd0A2B5Gp/PoQcd2I1zT+v0
         O2PN54/5qXEnIBGvwA0QxS8jWVGo8aP9Rh65VEXMpGtvVPOggN+/M78fxPy15J52HI2Y
         Q/RDwYYMcHPsCyy4MYMjM2iT6Re9fU0AKPSM+bKwtR7MzOFaP0OKP2W+7oxoNhMPe/Jd
         bzoZJqCCZ3HAozFYZ34Bu2ar9Kk4gS3sxFP9Vp1ZVRm9YQiVEcaWlH9hJM6lpkvNwjrr
         Xp/A==
X-Gm-Message-State: AOAM532ZhYQjPIgCmB4k1YL4qLzAVFEMLIxXMNxo1305vFvMrgi8lbh2
	paoBHe18gajN+905RShvxAY=
X-Google-Smtp-Source: ABdhPJwdbaNW/c+1cuOWJ+Ov71hr715PE55Hrrfgf8ENqb+yaxmnGfjBGagEueWDsk4JWNH+gYzUGw==
X-Received: by 2002:a25:20d5:: with SMTP id g204mr29858300ybg.337.1600192843538;
        Tue, 15 Sep 2020 11:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls1286194ybb.5.gmail; Tue, 15 Sep
 2020 11:00:43 -0700 (PDT)
X-Received: by 2002:a25:487:: with SMTP id 129mr29595507ybe.485.1600192843003;
        Tue, 15 Sep 2020 11:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600192843; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+pBSw6XUpU5JKOfmvCZ3ikwpnI2H4unbQxtNIcrMHXNqYpeRix5HWrCz6xDyvQpPZ
         JFbq3sOktksVB2RWQKxfCDWcLTHt9t0hZkXUz+gv5wP6WknK4liZ+rXWCKeFnyBLHeu8
         R26oaESo7OtaFKs89YioGXcSZXHu28mCZ5FIxSEDsOnytX7B3o/4toIAdv9PTyMsgCBN
         SGnIMgKQ4KkPhNRPvGi3edReOIN6SnS5tf7MyEWAlm65Ih5MKANtGTbTqKPcPonA2hbd
         Y0by+gYv71/pR2SWYdDbpXs87Q7KcUYhnZUO445ZBNnyNTiAgl83h8a4gFST3Oj6XW9+
         EfiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wZ7tyQ9/E068rLYJ+WthcD5+oEGjm8vJDzcqTloN5CI=;
        b=0aRbc58YfrrI4TmS4J+3zgjQgMqrJgplajKuBPZXLtrCnG5u8Ehz8OIfCGhuGyg5GI
         2JV3s+i4ptdlABauH4vyjwbicDsBL6nugOduhcBzu5HMBcWl2ST0GhZ30iDUkOZezkt6
         cZu99FQho3EfePMYsTSwZyJUleFpnI8hCfI8E/VGtzuEYdolKlCl9hljM7E0EYPwZ85B
         CzALCnCGspbvjNVHqjr4smPgyA3VfUJ1RYnmCir9jk4Cgt9veylhgBkjxpECRu4x1rSM
         71bNp/9lsFyp7tNjmwTrDNxwGSELMfzdRpPpOby+8q0dx8pmiJqAmQQsM0a/Sxc40XSt
         vmuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rt5RfIiA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id v129si743113ybe.2.2020.09.15.11.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 11:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id q4so184018pjh.5
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 11:00:42 -0700 (PDT)
X-Received: by 2002:a17:90b:889:: with SMTP id bj9mr497812pjb.101.1600192841937;
 Tue, 15 Sep 2020 11:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200915172658.1432732-1-rkir@google.com> <20200915174643.GT14436@zn.tnic>
In-Reply-To: <20200915174643.GT14436@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 11:00:30 -0700
Message-ID: <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
To: Borislav Petkov <bp@alien8.de>, Roman Kiryanov <rkir@google.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Pavel Machek <pavel@ucw.cz>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-pm@vger.kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, Alistair Delva <adelva@google.com>, 
	Haitao Shan <hshan@google.com>, lkml <linux-kernel@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rt5RfIiA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Sep 15, 2020 at 10:46 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 15, 2020 at 10:26:58AM -0700, rkir@google.com wrote:
> > From: Haitao Shan <hshan@google.com>
> >
> > This is a workaround which fixes triple fault
> > in __restore_processor_state on clang when
> > built with LTO.
> >
> > When load_TR_desc and load_mm_ldt are inlined into
> > fix_processor_context due to LTO, they cause
> > fix_processor_context (or in this case __restore_processor_state,
> > as fix_processor_context was inlined into __restore_processor_state)
> > to access the stack canary through %gs, but before
> > __restore_processor_state has restored the previous value
> > of %gs properly. LLVM appears to be inlining functions with stack
> > protectors into functions compiled with -fno-stack-protector,
> > which is likely a bug in LLVM's inliner that needs to be fixed.
> >
> > The LLVM bug is here: https://bugs.llvm.org/show_bug.cgi?id=47479
> >
> > Signed-off-by: Haitao Shan <hshan@google.com>
> > Signed-off-by: Roman Kiryanov <rkir@google.com>
>
> Ok, google guys, pls make sure you Cc LKML too as this is where *all*
> patches and discussions are archived. Adding it now to Cc.

Roman, please use ./scripts/get_maintainer.pl (in the kernel tree) for that.

>
> > ---
> >  arch/x86/power/cpu.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/arch/x86/power/cpu.c b/arch/x86/power/cpu.c
> > index db1378c6ff26..e5677adb2d28 100644
> > --- a/arch/x86/power/cpu.c
> > +++ b/arch/x86/power/cpu.c
> > @@ -274,6 +274,16 @@ static void notrace __restore_processor_state(struct saved_context *ctxt)
> >  /* Needed by apm.c */
> >  void notrace restore_processor_state(void)
> >  {
> > +#ifdef __clang__

Should be CONFIG_CC_IS_CLANG; is more canonical throughout the tree.
Or if this is only a bug when doing builds with LTO, and LTO is not
yet upstream, then maybe Sami should carry this in his series, at
least until I can fix the bug in Clang.  Or guard this with the
CONFIG_LTO_CLANG config (not upstream yet; see Sami's series).

> > +     // The following code snippet is copied from __restore_processor_state.
> > +     // Its purpose is to prepare GS segment before the function is called.
> > +#ifdef CONFIG_X86_64
> > +     wrmsrl(MSR_GS_BASE, saved_context.kernelmode_gs_base);
> > +#else
> > +     loadsegment(fs, __KERNEL_PERCPU);
> > +     loadsegment(gs, __KERNEL_STACK_CANARY);
> > +#endif
> > +#endif
>
> Ok, so why is the kernel supposed to take yet another ugly workaround
> because there's a bug in the compiler?

This is exactly the same code from __restore_processor_state.  If it's
ugly, talk to the author of 7ee18d677989e. ;)  All this patch is doing
is moving this up a call frame (though now this is effectively being
run twice).

> If it is too late to fix it there, then maybe disable LTO builds for the
> buggy version only.

We could do that, too.  (We can disable LTO on a per translation unit
basis in KBuild).  Note the author of the bug report linked above. :^P
"Revenge of the stack protector"

>
> We had a similar discussion this week and we already have one buggy
> compiler to deal with and this second one is not making it any easier...
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm9bQmL%3DgZypkosH0MG%3DS28%3DjJ6wZiTMCNP6%3DZ%2BNfN1AA%40mail.gmail.com.
