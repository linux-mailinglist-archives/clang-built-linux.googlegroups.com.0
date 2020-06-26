Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBXY3D3QKGQE7TXKYXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F046720B7FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 20:18:47 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id o4sf7014023ilc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 11:18:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593195526; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJBtdp6sdymVUtsqbVVWQ0howyDJ2PNs2BH2XExu2YE5WEqQjyPDuvsRYvCgGZdT/G
         8s2t6ulQse9pbvuf08G0a+nf5Wa7qRGJmxazHReV/yBewsOXCY5ZJgj/uwpazMVjC2yi
         KYdKdH/VyfOrzC5RVkVjXGXceDjgdfoZT7hNl+VweDyB1m6by+ZqOYVhADBxLwy94rSg
         7vNPVbKVLZNG8+CWea6k2C8mXpKQJp2I52emEGITchnNPcDf76/wuNRRTdSB1jxn07Rg
         +0I1fLz0Lvr8Kjdei44MK2C44DLWh8sCBoqRevdNR3zyevd2OeSoRT2VqKGjNZgjhNn5
         G5lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JcF9KVG2Qgxy0of53URwH9xP4u9admti4H+R3Fy2W6g=;
        b=gofW/qS30Uv7J2gX5VEU+wsCDGi5rWewNxBq81o1BDoIQvntkpOGdjZ7BfFIZXJr0b
         tr31eC7rD/M8lSqEggG177lZCPqMnto0OWNRzwhSL+zGW9TVoGw5+nwUcxkSz7EG9p2Y
         hQyGXiDXb02p0karg6FTMBta3FCDF2asrkKiYSshT9m3au35OuU1JvNmkPr+6YC/8DDw
         7OMb/ufbQTx1esakmzrtPLvBg+dfDNqCwDAvsA8MN10YUzv18oDxcR7jkffRrAdMObN5
         MKVCE86nw3RdP+vy+D5uVP3wwISjGatKibQUWzVANjRkS4S6cPWAzN2ljkFduiscDA59
         JVoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VrTDatHX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JcF9KVG2Qgxy0of53URwH9xP4u9admti4H+R3Fy2W6g=;
        b=C29ju4J3smG1BCytgWDKHxntz8mDfewMJfP3xJ6OO74zVG4euaJv2u46mXTndZ7avm
         4b+lQ796luxbPtmpRxcq42S+3p3kpNfRNF/c8Dbb8+mJOlYwsdCf2t9nMjrZE1chFaIE
         Vx6thGpBO5wzUbCeS4wcY5128vuj4a+o/0EPVdvu+BCMVeNATftt3VZ/p4rMUuanFlur
         SIA5QHX42jO/VJfN89/6IhnlDqEG+5BPCtc9zV7/dwUi6TsWURyS0Qmx5Rvcd8XaPG93
         A5zjd2yQcuzJlB2wSSOWZ+AkZKhVcNtIOWrrVj+Ah0UK0Nk6Y9ro5EXWZhzoZpyu9Yfo
         /YoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JcF9KVG2Qgxy0of53URwH9xP4u9admti4H+R3Fy2W6g=;
        b=gIz8H6/IiC7p642z/Yp6hyNjZwMP+ahLltlhe5vmAaxOBDOazb5mK9Zh2tGN+WxtnQ
         r9zZoJikxciANBmkkEyuhA2OeQYnV/QuWjf2CBJbV8UJDGzqNm0/9pv5l4fZrfCxm9Au
         FGEhlYRbDPlMfX7jrLmTSvoPTXnu0uiEYIDFohdMSE2i3JObEpivaIMTAT/zJ37A3O7F
         rYlQGNVqEON/TXnXZkMh37+9C8EbJnIwNrFYZ5OdQEyp5OiHcgM1LqQtwVO8AEQSJDij
         8wiqxWFHtNOxzjcVH2EfY2bOOrjPpOCadONTZtxL8rU6zgaR0UxFjN17t9v0siuWxM1m
         EhUw==
X-Gm-Message-State: AOAM531rLDITH6zKvJGgf+EloBBk1Zz8SO/Sod+RYJ61mXgXJ/Ovd94f
	r9TTfIMIow3H0Do0o6Zxma4=
X-Google-Smtp-Source: ABdhPJwVtj5UPQ1ESfUNV9443mxuCRlmNCBvxOQB6sUf/LVF7875IgSixhPBBAAbRXkldidjbH5Mpg==
X-Received: by 2002:a5d:9288:: with SMTP id s8mr4802960iom.42.1593195526601;
        Fri, 26 Jun 2020 11:18:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:15c6:: with SMTP id 189ls1097649iov.8.gmail; Fri, 26 Jun
 2020 11:18:46 -0700 (PDT)
X-Received: by 2002:a05:6602:1601:: with SMTP id x1mr4849032iow.129.1593195526068;
        Fri, 26 Jun 2020 11:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593195526; cv=none;
        d=google.com; s=arc-20160816;
        b=PbD+oV0XRQcR4uwNX2ZD2MqT8IDdNKtcCb0AMQQK0nm5ZDjiTne5uO6fybPjY3417J
         U9rv9CIN0jYC0cQcEErpvcb8APWFUuV4fMgoz2Ffwrf1Psjxs/F8hpsUqglVJok9CwlO
         i4jELzMoe7cNgo9nj4UavKK6CVTuoDj9GWfDLzQ9UXYFqgts96ibkclEykiTey4vPC1r
         OU9x+Qsxx8IqUf/u0DgOlvYzgzW6SJ7x1aoA0N4iU00Yw05/70NBOaGlBzamZ0jF/8IQ
         otQetIjoo0g3kpgNcWn/kb/N50Ygqi6K/tIHYQ6H7MQ9XM9GZcfwRKxrotCxonfpZa70
         IqGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=36N04TxzlXqQd75WUAHX0Ml1yIpSCa6SZWR1zFDNcKI=;
        b=HQOdMWyllQ3MLxGIWldYt6/uFguNAgcZxLV/Ne/0ckbWW6uFhoWwItMeUzpHk2u6St
         4JmXq3QMt+QY6pABVU/EZ6NChXq1ErQWpUbUL3PQBXGoHQn3SsDuqXIQFAq/kHY7xflN
         hxcSuBrKYYDDOEbCOT7I7NIMW3ytjxhST5FH/HaIXU9Y/R89DY4YQo4gMsBJK5PvhOpT
         SQErSrUE5g3dvk2bpT4zyQuZC9BiKTSLHbwK+QIgDfb5Mioc2PWPh72AIiXxmcort9hX
         WoQ0YhSO4+wtQL5p7SFJK3p+NS0P8k/XTL8pg19Z4aRI8+ZCuurTSwN5IKHq7mkEnrjm
         P8kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VrTDatHX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id v16si984637iol.1.2020.06.26.11.18.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 11:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id l6so2229377pjq.1
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 11:18:46 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr4474021pja.25.1593195525198;
 Fri, 26 Jun 2020 11:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com> <20200404160100.GB26298@redhat.com>
 <20200404170604.GN23230@ZenIV.linux.org.uk>
In-Reply-To: <20200404170604.GN23230@ZenIV.linux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Jun 2020 11:18:34 -0700
Message-ID: <CAKwvOdkpxUkYT_oaNhtbNb2GW7omPjfJcV5xJ9Hc5Xaxn4VcFg@mail.gmail.com>
Subject: Re: [PATCH v2] x86: signal: move save_altstack_ex out of generic headers
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Oleg Nesterov <oleg@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Andy Lutomirski <luto@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VrTDatHX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Sat, Apr 4, 2020 at 10:06 AM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> On Sat, Apr 04, 2020 at 06:01:00PM +0200, Oleg Nesterov wrote:
> > On 04/03, Nick Desaulniers wrote:
> > >
> > > --- a/arch/x86/kernel/signal.c
> > > +++ b/arch/x86/kernel/signal.c
> > > @@ -416,6 +416,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> > >     return 0;
> > >  Efault:
> > >     user_access_end();
> > > +   reset_altstack();
> > >     return -EFAULT;
> > >  }
> > >  #else /* !CONFIG_X86_32 */
> > > @@ -507,6 +508,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> > >
> > >  Efault:
> > >     user_access_end();
> > > +   reset_altstack();
> > >     return -EFAULT;
> > >  }
> >
> > I must have missed something, but this looks just wrong.
> >
> > reset_altstack() should be called when __setup_rt_frame() (and
> > unsafe_save_altstack() in particular) succeeds, not when it fails.
> >
> > Nevermind, Al has already suggested to use signal_delivered()...
>
> FWIW, I propose to do is the patch below (against the current mainline);
> objections?
>
> Don't do sas_ss_reset() until we are certain that sigframe won't be abandoned
>
> Currently we handle SS_AUTODISARM as soon as we have stored the
> altstack settings into sigframe - that's the point when we have
> set the things up for eventual sigreturn to restore the old settings.
> And if we manage to set the sigframe up (we are not done with that
> yet), everything's fine.  However, in case of failure we end up
> with sigframe-to-be abandoned and SIGSEGV force-delivered.  And
> in that case we end up with inconsistent rules - late failures
> have altstack reset, early ones do not.
>
> It's trivial to get consistent behaviour - just handle SS_AUTODISARM
> once we have set the sigframe up and are committed to entering
> the handler, i.e. in signal_delivered().
>
> Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

Hi Al,
Have you had time to wrap this up as its own commit and send?  I was
doing a bug scrub of our KernelCI warnings and noticed this is still
an issue.  Looks like everyone was happy with your approach.  Let me
know if you're too busy, and I'll collect all of the tags and send for
you.  I appreciate you taking the time to help us fix this.

> ---
> diff --git a/include/linux/compat.h b/include/linux/compat.h
> index 0480ba4db592..f614967374f5 100644
> --- a/include/linux/compat.h
> +++ b/include/linux/compat.h
> @@ -461,8 +461,6 @@ int __compat_save_altstack(compat_stack_t __user *, unsigned long);
>                         &__uss->ss_sp, label); \
>         unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
>         unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
> -       if (t->sas_ss_flags & SS_AUTODISARM) \
> -               sas_ss_reset(t); \
>  } while (0);
>
>  /*
> diff --git a/include/linux/signal.h b/include/linux/signal.h
> index 05bacd2ab135..28fe9cc134f7 100644
> --- a/include/linux/signal.h
> +++ b/include/linux/signal.h
> @@ -450,8 +450,6 @@ int __save_altstack(stack_t __user *, unsigned long);
>         unsafe_put_user((void __user *)t->sas_ss_sp, &__uss->ss_sp, label); \
>         unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
>         unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
> -       if (t->sas_ss_flags & SS_AUTODISARM) \
> -               sas_ss_reset(t); \
>  } while (0);
>
>  #ifdef CONFIG_PROC_FS
> diff --git a/kernel/signal.c b/kernel/signal.c
> index e58a6c619824..4cfe0b9af588 100644
> --- a/kernel/signal.c
> +++ b/kernel/signal.c
> @@ -2769,6 +2769,8 @@ static void signal_delivered(struct ksignal *ksig, int stepping)
>         if (!(ksig->ka.sa.sa_flags & SA_NODEFER))
>                 sigaddset(&blocked, ksig->sig);
>         set_current_blocked(&blocked);
> +       if (current->sas_ss_flags & SS_AUTODISARM)
> +               sas_ss_reset(current);
>         tracehook_signal_handler(stepping);
>  }
>
> @@ -4070,11 +4072,7 @@ int __save_altstack(stack_t __user *uss, unsigned long sp)
>         int err = __put_user((void __user *)t->sas_ss_sp, &uss->ss_sp) |
>                 __put_user(t->sas_ss_flags, &uss->ss_flags) |
>                 __put_user(t->sas_ss_size, &uss->ss_size);
> -       if (err)
> -               return err;
> -       if (t->sas_ss_flags & SS_AUTODISARM)
> -               sas_ss_reset(t);
> -       return 0;
> +       return err;
>  }
>
>  #ifdef CONFIG_COMPAT
> @@ -4129,11 +4127,7 @@ int __compat_save_altstack(compat_stack_t __user *uss, unsigned long sp)
>                          &uss->ss_sp) |
>                 __put_user(t->sas_ss_flags, &uss->ss_flags) |
>                 __put_user(t->sas_ss_size, &uss->ss_size);
> -       if (err)
> -               return err;
> -       if (t->sas_ss_flags & SS_AUTODISARM)
> -               sas_ss_reset(t);
> -       return 0;
> +       return err;
>  }
>  #endif
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpxUkYT_oaNhtbNb2GW7omPjfJcV5xJ9Hc5Xaxn4VcFg%40mail.gmail.com.
