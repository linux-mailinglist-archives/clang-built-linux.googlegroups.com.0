Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBQ4PUXVQKGQE4DDDKWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 888A5A3B23
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:59:01 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id 15sf8977361ioo.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:59:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567180740; cv=pass;
        d=google.com; s=arc-20160816;
        b=0zs71f4ZMotRNeEwc8PH6ZlDKIXiw53/P91V5jKRS9t/6e0VoPOycHl4bFmS3jf9Bg
         8/wBKwX5g9ePnMC8yrtmTUxganwJqCoDExg5JFuANi3B/x0nt8pitDBewchaLOuZgdDY
         3RD7ieGki5hLiJ7dvWbw7VUTlAKSEO8bVutEOIPAPzxASg7XKVizf4uhwuF4JrsmCs1L
         ersIIt0jIVijMWKx5qLqNgMCI+XIoa5sW2SjDJvRMQNo9v0XiF1UmCoa7B2xiAX7ey27
         bNOiOA6WaQ4tHwN/MzzRUi0ZIdLRTxBFUVzUXl3/QBinZJaAioFXrCAIaKC8EzDzxbfJ
         LqjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hgK83RUZbZurGK6u2S/eESbed9qEORB3bHHxZxK52+s=;
        b=HCDTkTW/0BAZqlG9qbrRi0bJyL0rbpvYsDybZ7E+t+couUi+qf/5B8fG4orerL65Wp
         pl5EDkjpnI/RNcbFmrE64Bxio3/iHFMQwskIRgbFTAZ6SIcD6vThDdu3eNJsviM6GGp1
         DRvdEXZ4ORMByYxlGrK3SyZlNa2A8stVmIKRv11YfS0+srX/ppASfNv2buMjEP4zK8Uw
         227rpFAYLbISS/KmAfVcCEYMH3u1LlUQ6vs8eAhje1HTD+HF//yv+G2Olo37BojqRyyQ
         dNaHsJGujjMO3m1uU3Yfd5a1i0iy/qB1B0hgXUkmAFjbuqvjbxq5AMok0YXT3JrzfFu7
         zDaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hgK83RUZbZurGK6u2S/eESbed9qEORB3bHHxZxK52+s=;
        b=bqMYY6i8fivnHHpS/8G74anVivBtjROVzQSrnFxcxO1IX3JgxL7sRZ8x8kmLKnBIWu
         Lf7TO0HvtzsVMXgczMUY7uZUdnKsbpi+OO5pHkV196TxfkzHNwUDjtWVVMqt3nrsXcXx
         ptO5ZloebBnj95vu0YXd2TO9BVRmch+Pxs5A+OWQ56aXRgdsIeyYBRcIm4gAIur7OfTC
         Soy5gSKHhIUD7Tbsxm4b4ggNQZ75c8Fwrd2Dc9t59HQ/Urzx0fD1YiFnTTUK/viU2Ehq
         8sfpI3fj8x7usq4sXhCCpMcHejf7GxYShqiG544PHflOTW14tyYglGtXG1EPj3kJv2zw
         vKUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hgK83RUZbZurGK6u2S/eESbed9qEORB3bHHxZxK52+s=;
        b=n/E3pVz0hLN6Kg4Sb48hXXbbI0nXZVIf7csyiLzABFqVmHdA2/xbWKK99ekje7GS+8
         KKqCCIXOhftPiGxC4R3W3RmR0UBjlcTBxhCGQUiaNb3U+GsMxdTHpxdrYhzoUqyzJF9y
         2GNc8PIMnLjks3hkPwJIf7dO4D0d65V+eM4NpWXkyWaD55jza9LQW8lh2uBNgBqBv5ak
         zu0VWZ2prQGDhJ+nRw16au6PvsmYkccau1p7C5kM9iSgoPfNq3nstoyRvT6rKe9zfOtF
         pU9ZS2nV1sDgPcP4qmg2oFBguiBWFAx3EeNpM1pdJHilyZo4U5vancNqjE1U3yaoHj3d
         A4cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaop+m51RgkRXTxOdLT6ylXWp0k9cObUy1RGMGLpzQB8Lxikgz
	qHjAHWkIbOTdEUADZuZmLis=
X-Google-Smtp-Source: APXvYqyvYSMuYmQo3CYW8M+kduwbjNdAQqdPhzOgMUnEKMFGV6Y17d5lRL+BXMv9YsnClrEXpYT3pg==
X-Received: by 2002:a02:a409:: with SMTP id c9mr17613564jal.74.1567180740041;
        Fri, 30 Aug 2019 08:59:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:9f12:: with SMTP id z18ls801547jal.7.gmail; Fri, 30 Aug
 2019 08:58:59 -0700 (PDT)
X-Received: by 2002:a02:c9ce:: with SMTP id c14mr6457196jap.144.1567180739540;
        Fri, 30 Aug 2019 08:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567180739; cv=none;
        d=google.com; s=arc-20160816;
        b=RWbGG5T/xlEUgrviVJJj7HP2HC7JqaRPmeYYI9arUP1e6Ew0P64GBchb7dPd1eVmDY
         RqzhjWdrLAVCuvWpREFzrY4zAEo1jk9nfcu0DXggEvTWMtZP5sDDb4ooHMqjYd3c17NA
         vb7Vl35ZW1MF7LH2IZRkMzR0MpS0tbI55OZHFc4jfIA7koftk559M0f593TuvD9/DCzb
         GW0aevMGfTkErMszpqp4ADHPncuNP6BZjPHsQeYwP7jDO8Ky+oXfoSnMCvxwqjSM9kbY
         VPl6A3VKw/ubl7jAVD21UVfRPB2mUqPq9hdppBxY0Axu894ONthaHsBXSCx2QJcGu9Do
         eYjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=b1NptnaKsHGtVYobYo+gGBTUiMbQOSW0eYJzS/qWLqw=;
        b=vpN1pycyLJV9Kha0oT5N15/vOe/UBPwCMb3Dt8qlYXIJphiaqBarS9iqt/w1mEtq6l
         Xe0lfVVEWTnKVLOXRFQTJE2hp6VOzv5XRUjft83f4UwY4Ddm5pugKCyqYrpK1+g9Lw5n
         U4le9Y4XYNE73JI0bleBk0VLjhhf29cClCFPAre8HFlk7fxiXJ6I5W7QOoPsXdE6wh6U
         NumsXXbg8BG6QsojaGPS4i5ZRtz9xZXOrWbD0PW6oohIGvrdVY/ypLCyD6s3Ng9JrZ+4
         esKaRcPLkpYG1dTA1FOqoZwlqAz2X0k4/5H1Ccm1mCQHVMnhj+0139e1jyCnIwS1tsB3
         KlRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id i4si367524ioe.3.2019.08.30.08.58.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id b11so8087135qtp.10
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 08:58:59 -0700 (PDT)
X-Received: by 2002:a05:6214:80b:: with SMTP id df11mr3948711qvb.45.1567180738675;
 Fri, 30 Aug 2019 08:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com>
 <20190829232439.w3whzmci2vqtq53s@treble> <CAK8P3a0ddxbGVj974XS+PM_mSJDu=aGfTGarjmqMCuLKn81mRg@mail.gmail.com>
 <20190830151422.o4pbvjyravrz2wre@treble>
In-Reply-To: <20190830151422.o4pbvjyravrz2wre@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 17:58:41 +0200
Message-ID: <CAK8P3a33LQAzsReSUyB_aZxkws28RP=oJocQXonYbxxBky7aaQ@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Aug 30, 2019 at 5:14 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> On Fri, Aug 30, 2019 at 12:44:24PM +0200, Arnd Bergmann wrote:
> > On Fri, Aug 30, 2019 at 1:24 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > > On Wed, Aug 28, 2019 at 05:40:01PM +0200, Arnd Bergmann wrote:
> > > > diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
> > > > index 8eb7193e158d..fd49d28abbc5 100644
> > > > --- a/arch/x86/kernel/signal.c
> > > > +++ b/arch/x86/kernel/signal.c
> > > > @@ -414,6 +414,9 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> > > >                  */
> > > >                 put_user_ex(*((u64 *)&rt_retcode), (u64 *)frame->retcode);
> > > >         } put_user_catch(err);
> > > > +
> > > > +       if (current->sas_ss_flags & SS_AUTODISARM)
> > > > +               sas_ss_reset(current);
> > > >
> > > >         err |= copy_siginfo_to_user(&frame->info, &ksig->info);
> > > >         err |= setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
> >
> > > > diff --git a/include/linux/signal.h b/include/linux/signal.h
> > > > index 67ceb6d7c869..9056239787f7 100644
> > > > --- a/include/linux/signal.h
> > > > +++ b/include/linux/signal.h
> > > > @@ -435,8 +435,6 @@ int __save_altstack(stack_t __user *, unsigned long);
> > > >         put_user_ex((void __user *)t->sas_ss_sp, &__uss->ss_sp); \
> > > >         put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
> > > >         put_user_ex(t->sas_ss_size, &__uss->ss_size); \
> > > > -       if (t->sas_ss_flags & SS_AUTODISARM) \
> > > > -               sas_ss_reset(t); \
> > > >  } while (0);
> > > >
> > > >  #ifdef CONFIG_PROC_FS
> > >
> > > Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>
> >
> > Thanks! Before I submit this version for inclusion, let's make sure this
> > is the best variant. I noticed later that save_altstack_ex() is meant to
> > behave the same as __save_altstack(), but my patch breaks that
> > assumption.
>
> Good point.
>
> There's also compat_save_altstack_ex() -- which presumably needs the
> same fix? -- and __compat_save_altstack().

Yes, I meant both here of course (as in my earlier patch).

> > Two other alternatives I can think of are
> >
> > - completely open-code save_altstack_ex() in its only call site on x86,
> >   in addition to the change above
>
> But it has two call sites: the 32-bit and 64-bit versions of
> save_altstack_ex().

Ah, that's what I get for looking only at the compat version.

> > - explicitly mark memset() as an exception in objtool in
> >   uaccess_safe_builtin[], assuming that is actually safe.
>
> I wonder if this might open up more theoretical SMAP holes for other
> callers to memset().
>
> What about just adding a couple of WRITE_ONCE's to sas_ss_reset()?  That
> would probably be the least disruptive option.

Fine with me, too.

> Or even better, it would be great if we could get Clang to change their
> memset() insertion heuristics, so that KASAN acts more like non-KASAN
> code in that regard.

I suspect that's going to be harder. The clang-9 release is going to be
soon, and that change probably wouldn't be considered a regression fix.

Maybe Nick can find what happens, but I don't actually see any reference
to KASAN in the llvm source code related to the memset generation.

https://github.com/llvm-mirror/clang/blob/master/lib/CodeGen/CGExprAgg.cpp#L1803
has a check for >16 bytes, but that again does not match my observation.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a33LQAzsReSUyB_aZxkws28RP%3DoJocQXonYbxxBky7aaQ%40mail.gmail.com.
