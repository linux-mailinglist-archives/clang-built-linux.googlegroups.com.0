Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR7T2L2AKGQE7PZAFEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D0D1A6C60
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 21:13:12 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id z14sf1223768qvv.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 12:13:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586805191; cv=pass;
        d=google.com; s=arc-20160816;
        b=klZmue5e+HWrjq0hiS/TUxTp7Ol2GKBTIGEO/NmmUaz3klU7/D15I7863N2vRqfno1
         s/rP0B6PGARGr3rextRwJrpz8kb4Aq5U6JBh1N/je5iwLHMTzK4l3MO5Qb+cgVusBUFx
         QggTFSWHDkb2ZPVWVelovlZIyW0yVLzPaONLYXxm8jAbCbrjWtD/JxikZ23tXtD/O4hX
         GwdTYijNHQYIkQSQzHbrJTy13RsHkpu10FyfjvTNicEAIvSIT4rONsxBfdLmP3ZgVA9e
         AZAIuGm5twKRuT+Rhpd/eGjsNmTfRAwiLQuELw3XbFYoUlNmP7uJtubiVdUXz+SK3jOE
         4qJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GVpaFTGU3uvf9nry860V53sTyr1Z/XpPdLOs/GgP6H0=;
        b=qQRCAiwfrP1b+hcKM+R+LsVALeGe/PUJJv0fVNcnwBAxopEtYOnHY9JEDOO19rS+/H
         /QrdsrR5NBKpnngqDJMGiDDP0nDyDlrFmSa5YuC1EYwkQBC2pSHbLU6SBrtHFO/JRYlF
         sRP4AEzmkc7RvwYtcZ3pQ/WekRukgzo5j8iSOF8aMTqFKcaOTsFK1AitdiH3nuPoPMWQ
         RxxyHkGRZalHBPYhJvLu9KO+3kvuEJEs/JP4x7d8pmvnvwYTN2sxVFoiTX+vrp92keVX
         E46PpWnAq55VZ4eXnXAi+7XFgqt77FDxjzKBUf1OL+5Zz03nQAb/4sUD/jlH9KVmEUA+
         c9+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CMBcQjit;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVpaFTGU3uvf9nry860V53sTyr1Z/XpPdLOs/GgP6H0=;
        b=U5nIUgIlp1scgX506s2pM/f+pnD3VobAi2NTxYJoToqm7MLeeVOSAG934Sco6x9wSC
         3sAKb/f2QxYH1lZ/R+9+YV8C9V/EugoGUU/x7kOZw8ZHaWCn7hY8+8s1CYxNHO92b5Fk
         skP+1zHqKO4FDst+nG3A5avMxZwM9yWP2erW9ZLjXz4XbOHxpoV7mAIT8hgtwm10xRec
         r1ed4i2i/Bm1nsiWKXyPdZtz+JWxtlu1BwNWXB3yRdhILJfym0cZInLiCqocO9Op/rNs
         I9k3Jq35Uj/aZahq8Dx+xS5Ba998w4nz2gnykYT2VqLGXSQtNYxUgE8Su2krGDQhX0XT
         U8lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVpaFTGU3uvf9nry860V53sTyr1Z/XpPdLOs/GgP6H0=;
        b=hlbQmJyHqMdvAM93kPD6IB5eexzuVh7Wr9d7U/4PFPRRln1NBNQBKaA/g4fSBvLqvv
         3KNDcywPtCIJ+iRpA2CNqAhL/AMrto0TYKGIr8Rkyphclu/Ue2bAcRVD/ZeDEaG040pO
         XCCKcyZ5wvMUUPgyx8kQhdW/3WTfqfOdak37qsVJfzqf/3+qqD/cm69CX9CEG+z0+S56
         X6pwiXh3nCsRaW50rHSLKCWMPyMO8Aja34v6CJsOJwDZJUfduvlWTjt7/UPYujCQyIjq
         pKfTtWviaqmuuDRyFCZQ4aiqv51zo4DH2bcgoV4m+efcpmn+GoRElbAajXgTxkE+76ns
         Os1Q==
X-Gm-Message-State: AGi0PuajYHFuEVxiLjoPqeVdBcM6MOqjJsmLLDoNar2roqAKrccEyW6n
	q6hUdmW2yMa0W6WEgVdbI8A=
X-Google-Smtp-Source: APiQypLzr5Kn0kiZnxUi7qVRnt28kYl0+mO+z9AYqzH8tkcSI4100l8jqKpyIjjHFRQUEox1WJMFrA==
X-Received: by 2002:ae9:efc8:: with SMTP id d191mr17884132qkg.31.1586805191496;
        Mon, 13 Apr 2020 12:13:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls316559qtk.7.gmail; Mon, 13 Apr
 2020 12:13:11 -0700 (PDT)
X-Received: by 2002:aed:3e27:: with SMTP id l36mr12639860qtf.192.1586805191152;
        Mon, 13 Apr 2020 12:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586805191; cv=none;
        d=google.com; s=arc-20160816;
        b=u+xJnQRfChiTpGWcUsrNRIi/cMmWr3RBgzCSD8F08mu0cOIqROWbF2rNWkhfTzkcBb
         SD/azqukLwSR4lDt7RRYL/ENG/oEnr8ZXiwXP+Kv5tVroawq5jxrOKgSdpsNRfJ0xCRA
         jutVMfxm3XzXnXkB3BT3iSWXxy7gm+dFpR5/IbJMe4EVMs7UUrvlnvFlEXEVuGapSfWm
         tHR0GwP03J7As+rXSHOLIIxHx9XQc8gT3pYZ4vgyqQixr6dSmn/AwXWPzf2xl2/h0sWJ
         Z8wEKGShPzkYfdbQYT2J0t2VaaB8GOf7iOkx9sIajesHjZyJXGU6RYhOlcjm0OokvSOP
         4GoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e4xDgyHrAaR0PWbatqOjb+dKS38cBqBXlUQRBaSrOKM=;
        b=cHbEJ8R+3GmKVlE6Aq9tSpNaJFti8KkSN45p3wkEqzOBVEyhdU1A50rx15LgQx7p58
         RsjoF8S2dLOXOMA1gd8pxZCT0opqJEu3zCo6aKdwA/lyw5b57x1D2CUEtdon/+ax1A3q
         694HqyBVO1ABVpKj3yz7GmiRs8BSo2UOJfaq6iE/VxGyA7SsV8W8NN2bNGPdenWO6FZo
         DkrodwUZ/eQ0cS6Pq2WaGInu+JW54A11Oeb0hddw7RUjHz4F7YX5I6eYr1/IOgzUhP7h
         lxkEtuq005sUvRcJkhJBmrujLGqflcbBv2XQi2VkXVISRgAnJI7Hy6sYU+duAUP8epIg
         XEnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CMBcQjit;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id o3si444019qtm.0.2020.04.13.12.13.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 12:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id x26so3700615pgc.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 12:13:11 -0700 (PDT)
X-Received: by 2002:a65:6704:: with SMTP id u4mr18940889pgf.263.1586805189832;
 Mon, 13 Apr 2020 12:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com> <20200404160100.GB26298@redhat.com>
 <20200404170604.GN23230@ZenIV.linux.org.uk>
In-Reply-To: <20200404170604.GN23230@ZenIV.linux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 12:12:58 -0700
Message-ID: <CAKwvOdng5_KtX9CNxrTdtsdfNKsfY_4q=Rw_zMp-wGL+64skmg@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=CMBcQjit;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
I'll follow up on our KASAN implementation turning two consecutive
longs into memset, which is odd.  Some of the recent changes to
unsafe_put_user to pass a label are triggering new
error: inline assembly requires more registers than available
in arch/x86/ia32/ia32_signal.c for me, but they're unrelated to this patch.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdng5_KtX9CNxrTdtsdfNKsfY_4q%3DRw_zMp-wGL%2B64skmg%40mail.gmail.com.
