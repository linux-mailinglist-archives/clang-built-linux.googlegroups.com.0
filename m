Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBU72UTVQKGQEVTNPNLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 477CFA3A1F
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:14:29 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id y5sf4320481plt.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:14:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567178067; cv=pass;
        d=google.com; s=arc-20160816;
        b=WgTCav0g6WEq8KCbI3VCqsTmHBf204P4Yy+E/uKwbC2IL2f6K4Hgr/+e1KpOJ7o4kO
         Cc5q4DnXGFr1WyCh6GIblVx72Xw4g+SV/NV3FUU1p0lUMhLqojuDM0Oaqx9XmBBLxKoD
         FV6pgjeFvBgvxkmfW5kBD1wILGeva00KEI/9FqWPpXJpAEEOQAnOEL05dLEFRIWdY0Gx
         9404G7LhmtdxNgYg1vYYaZnJVdXBHzk6wLDmPhTmLZ2aAH7lFcgEZcxqtelDPoIbMLLc
         0ocvpTNm/0cKWLI1zhvDKGgcWIvzwNsWWvROyCvNoEWJKzeUvr4Wg4wloSfDrxHpOAZf
         WS9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=m6c/lIQYqfmcTRP03vHvn4uP2sXGoWLM+NoBi2lWpm0=;
        b=en8if6ObNRT6oTz+WSUIG6CgBBS+Zg/17DIgwgn3V6U+crLkAQbyrkpBkoic48TqoK
         tlqq6KaRfnLQlHfBv2woMNrvhH4jfEm1TxTx3IYsey9NqqYVS8gHClhd2hdhMClqmo7C
         /jOkIx01Yj7MiXZ/yNJ7Ab3xxHsN/ZwlNNcM3RestzUVA8XoOBWBHXYhaSQeVuLNMAAV
         v66rsQ8OPkrYL0jidpEOdrZSLIOaM/jd+NDydWQjVt/GCo9bk+p8mjC5B+hapqeCnY0u
         ST6EhNFueXLeFP1iv7L5hk8dCE+UXs+7OJ96DpleS64xoIZ1BZNSulpQjct8CAsVxh4I
         c+og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m6c/lIQYqfmcTRP03vHvn4uP2sXGoWLM+NoBi2lWpm0=;
        b=qAVYWH/Gw1FWSmkFHeriUcr4RlUYgcWA7BJmrFDb7jPzZBvnPYllgzmVDyeE+G9dVa
         hvaGhURKYcL891cW/QlAXG94mPdpIwAlNr27PlYLxNJugtyyV0IrCLJhGS44cI69T4g1
         tg9m21aNvEoLfULWsgrN3TECC2mfF/G1zZZJbkTZdpU3P4H48V8+BFdGmvJOi3sPW47a
         d78Rlts04WTETk4YjIK1impg6acq7LsXmaql04OXFKxLA0J0BzGPx1Oal+jTnO6xYLAc
         zsa7CD6OceWS1HlJdM21AZLykel1ONKRxGBHGrp1/sgl4UA9xGnhk3lyHggjBBOjERPH
         cASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m6c/lIQYqfmcTRP03vHvn4uP2sXGoWLM+NoBi2lWpm0=;
        b=tpQLUGSyywJVoKRBPk0RJlXfG59toePYxpFW2cUffLjjNHW1s+OGL4kzYgmEjbRrnB
         CRvfBrZpaKWUPC4DOCHiCHyVj9KXqfiA+vmV/hgasZteuB4hjKH0/+5dKR7eXMds7Sbr
         rdjmRXjbzQiOxNvFG/cIEG6UdTm030QReNCpeqg7pulE51eZX3og+YnhCkiQ4hHh+qpQ
         ZUTPoGXwnrrgqFa0gW83ZInfCzEM0oE41G1eE0OsUaYr3jSZbZkt/UiUToNzQVLxv92+
         Db2sIWgApPiafGbHwB84CeklxDI6TCAkmoHed7h0zM6v40ObFfi6Stiw+9OV3vEAprci
         gNKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX2jysX+vP+evQELMNjTyeb0mIqDEDXUrGc/UueBliQVes/lmFa
	h+T8tCI+GS7dIuCmaFFAOzI=
X-Google-Smtp-Source: APXvYqxc4bON/dp6zlSwNFxYIccNGLghxHItMRN3u6MYwKL0sra6yERAZfUD8DcLLQXGQJiqBUS+/g==
X-Received: by 2002:a63:ee08:: with SMTP id e8mr13740320pgi.70.1567178067596;
        Fri, 30 Aug 2019 08:14:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:17eb:: with SMTP id q98ls1873613pja.1.gmail; Fri, 30
 Aug 2019 08:14:27 -0700 (PDT)
X-Received: by 2002:a17:90a:9105:: with SMTP id k5mr4706115pjo.9.1567178067238;
        Fri, 30 Aug 2019 08:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567178067; cv=none;
        d=google.com; s=arc-20160816;
        b=Gujg4s64Oi3rbw+c9Y3K2iEmPilokCO8kPcwEnp7SQ8lNl/pytjHmY6IyiaADqosZe
         6KMyWop3d+tr7ICc0MWvTngH7Ba+5IrAHzril1fMxn37obGE9cvYwNCR90wXxYPUQw5R
         P2zMTBJ2yv340wbimOAO6DOMHia/uorOHpaKZx4ipi9XWZZf0t2o92HEjbr+lp/BeJcp
         2n8UVxd6i5JqUKOg0FH3fXf2enQSh9snBYKdIFo22sBD08UD36MDUOut/gGu2K4vAug+
         BXyuFQDdGrPRII56FOLrdZ3HX7T+C/zlvTwh9qJqLuEgBpDL/ujwYWjSvEBT2x3L/jEa
         vekw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=nZsAa2KP9qUpvY3FG/t2xOsaElPPMyWmslMLIHdXgtY=;
        b=SDRRdKkdI5Z74CiFDs73cT3EYVr6RpOT/fCRvR0PLM1MSNoK9BAe9sg19m8lQTVNLC
         MKvYdJB3HBblUqzhVcchNQGLvEYFazIU8V4QzO8/jxh3xwjNC3gg6ioXjro9uxBPhTHM
         e8HdGwaJvClM5+INKukxp6eZMcH+Y2yJusTqOyJq8eR16PLI3QjyMFPh/W1bSI60a7V9
         ZUg330WV+GkU2/3jxOfw+fhvWNOWhFLenAzLx1Mcqe5CtXDGPj7CyNeuUcrY2NPSkd3q
         kY+AkeJGKx8pINbX3SqnzWEATrqDBuSCKh9+HOlXkSA/M2C8ecDkKUfwyO8nQtJahaKh
         iKow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id q2si303577pgq.3.2019.08.30.08.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A52394E926;
	Fri, 30 Aug 2019 15:14:25 +0000 (UTC)
Received: from treble (ovpn-125-111.rdu2.redhat.com [10.10.125.111])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7E0E102BD86;
	Fri, 30 Aug 2019 15:14:24 +0000 (UTC)
Date: Fri, 30 Aug 2019 10:14:22 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190830151422.o4pbvjyravrz2wre@treble>
References: <20190827192255.wbyn732llzckmqmq@treble>
 <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com>
 <20190829232439.w3whzmci2vqtq53s@treble>
 <CAK8P3a0ddxbGVj974XS+PM_mSJDu=aGfTGarjmqMCuLKn81mRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0ddxbGVj974XS+PM_mSJDu=aGfTGarjmqMCuLKn81mRg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 30 Aug 2019 15:14:25 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Aug 30, 2019 at 12:44:24PM +0200, Arnd Bergmann wrote:
> On Fri, Aug 30, 2019 at 1:24 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > On Wed, Aug 28, 2019 at 05:40:01PM +0200, Arnd Bergmann wrote:
> > > diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
> > > index 8eb7193e158d..fd49d28abbc5 100644
> > > --- a/arch/x86/kernel/signal.c
> > > +++ b/arch/x86/kernel/signal.c
> > > @@ -414,6 +414,9 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> > >                  */
> > >                 put_user_ex(*((u64 *)&rt_retcode), (u64 *)frame->retcode);
> > >         } put_user_catch(err);
> > > +
> > > +       if (current->sas_ss_flags & SS_AUTODISARM)
> > > +               sas_ss_reset(current);
> > >
> > >         err |= copy_siginfo_to_user(&frame->info, &ksig->info);
> > >         err |= setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
> 
> > > diff --git a/include/linux/signal.h b/include/linux/signal.h
> > > index 67ceb6d7c869..9056239787f7 100644
> > > --- a/include/linux/signal.h
> > > +++ b/include/linux/signal.h
> > > @@ -435,8 +435,6 @@ int __save_altstack(stack_t __user *, unsigned long);
> > >         put_user_ex((void __user *)t->sas_ss_sp, &__uss->ss_sp); \
> > >         put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
> > >         put_user_ex(t->sas_ss_size, &__uss->ss_size); \
> > > -       if (t->sas_ss_flags & SS_AUTODISARM) \
> > > -               sas_ss_reset(t); \
> > >  } while (0);
> > >
> > >  #ifdef CONFIG_PROC_FS
> >
> > Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>
> 
> Thanks! Before I submit this version for inclusion, let's make sure this
> is the best variant. I noticed later that save_altstack_ex() is meant to
> behave the same as __save_altstack(), but my patch breaks that
> assumption.

Good point.

There's also compat_save_altstack_ex() -- which presumably needs the
same fix? -- and __compat_save_altstack().

> Two other alternatives I can think of are
> 
> - completely open-code save_altstack_ex() in its only call site on x86,
>   in addition to the change above

But it has two call sites: the 32-bit and 64-bit versions of
save_altstack_ex().

> - explicitly mark memset() as an exception in objtool in
>   uaccess_safe_builtin[], assuming that is actually safe.

I wonder if this might open up more theoretical SMAP holes for other
callers to memset().

What about just adding a couple of WRITE_ONCE's to sas_ss_reset()?  That
would probably be the least disruptive option.

Or even better, it would be great if we could get Clang to change their
memset() insertion heuristics, so that KASAN acts more like non-KASAN
code in that regard.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830151422.o4pbvjyravrz2wre%40treble.
