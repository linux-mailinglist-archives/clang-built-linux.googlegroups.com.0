Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBPF5UHVQKGQE5ZWFRMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id A204DA2AA4
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 01:24:45 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id g1sf2655339otr.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 16:24:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567121084; cv=pass;
        d=google.com; s=arc-20160816;
        b=VbN2+QKC8RzX96OOczjTfMZSWtdbckoEwZfTt35kcHPxYpD4ewh/lY8lvulEzFJ/re
         IrPlD9alWosJnn/X7Y3rGaELOYiy/dDuX2zdV4rdDmZwZXUTGYrkdTnim7bbtwwWynDu
         Wk0v9P3+7EzFV4FglyMe0aKtcQsX1rlf2BNKEelPw6tqOF2j2ybsK8tDVcY95Ib7T58e
         x+7NuI/XGOxG8MclSyj27Zza+jzRCYkJecbVYhjBSSxJ1iaX4g3ihvC6EeaozQSEyHdd
         v7mM4cH2mv5i/PkNoZZMtLFSyrUYxxFbRrOSu7fzvUcN3okTaqYqwj62EkJkfZ5teZyx
         wJSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UWpOAzFuU3Dkf4Be7sUijRezDAMQ3U17gv1O4bmXzX4=;
        b=cTjJo1Yu3pm7ixFA3qKR61uO7PqieWJoyUIQvoPVHDGv4dmTkRFHkOy5NqWamADT54
         LoBB5uCuyUnVnghLlpuEbaehSlsIL0muly4xgtmeSDx840cfNpHo5UBsdDxdWaTEUxHz
         /wNkIkSz6mC/uNfj49S+2/8hDy9cyIYIZBVbKd44YLidWlPWIMb7sYBOLqoG9gsZqaLU
         79FQcttqdX13FBjVSZEaBObyHCtZ4N4apq0c6dehoXEG9V0r+qQYevMPDbdAJ1aw+k7B
         x7TeYJ0idN8a0pv8pQzyw0Bc2PQOQq3aRpzsJZxjFRvwfH2+Lx0WpYgPjYACl8zAnUb0
         yh5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UWpOAzFuU3Dkf4Be7sUijRezDAMQ3U17gv1O4bmXzX4=;
        b=oVKVGq77ieOFEAsG8/zfQbidfxRdhB2dyv3NTZ74S5b0V/+mfyRSxbaZ1O06wOk8WW
         yJy5dE1AXQFkWJwzLPr6BRFC28Arh8t8EeT6xkIdGwT5h38o6WTAsqutG5TSe6y7WFfo
         jS5LaDl+ZFB2Mz7cRbiEcnAvJ+DJsLjIviI54UymJ81rFJ90q3cAWUlT76l6pvYfyG5H
         SoIin3OUxvegovGzCuxH+zWdH4ULbssV2Ma0xZtMu4lcu3lEYez67KdtB7G+7N0SNP39
         fGlXKDQHVpHBTdEJN4WpWMYoGyjto/1qSJNH5w2H4HxvSQypQlevKy/wC8uN039Bh5L+
         KWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UWpOAzFuU3Dkf4Be7sUijRezDAMQ3U17gv1O4bmXzX4=;
        b=s4zFp0F/Ngx24TDIhy2ZwEPyRlDb/VEwrFpJwMplsynYpyCHO37HrIGSvuAZUxAafc
         dhniiRfOMb9nFDq96bBn+QEknLFgqrTObVAwwiImM4IHdoBY56bzu7R9vDlaGK7zbMwl
         /LKavEK3D2kJk0sRGVzOjJuzBJuXjLC0Vp48ciHWPPIylw1cljyWTuBsxG/3xqHyIDaH
         k91mepNNXwOHa90IFzCZEIYiMG3xuy2ENLKG7bY6q3ZOVvqrbzpy/PKp4rWkxLsoNf9u
         fQ2YDb49vvl6hJLUEiYrCi8rcn8xbUJmufXHQVvRjL6KWwdFwTbGvgWqoky6T3kxwyKt
         ppNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVYcdXnjkAsVoOIvi7ELgOfY9vZjBh+39vS5EY6nBL86fFwQpBz
	eFX9YxQG7WrfJ+LQobD836s=
X-Google-Smtp-Source: APXvYqwdD0TQjmF7M+XKgP5fjiYS8ocwqUMcTflpjU7gs1aL6bLmPN/Zw6pPss6Vpg1UOm++leKYCg==
X-Received: by 2002:a9d:6754:: with SMTP id w20mr4851841otm.82.1567121084567;
        Thu, 29 Aug 2019 16:24:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4717:: with SMTP id k23ls1223951oik.9.gmail; Thu, 29 Aug
 2019 16:24:44 -0700 (PDT)
X-Received: by 2002:aca:c396:: with SMTP id t144mr8306002oif.172.1567121084270;
        Thu, 29 Aug 2019 16:24:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567121084; cv=none;
        d=google.com; s=arc-20160816;
        b=h/vifzb4iVIgIUjoiUbBI/gWXpENnOLmCPvevwYnWBsHV9/jcutV48tDaWuS5bF2M2
         pzvWX+gRywjPIuNN8AC6THFaoafxYVRcklSWyaZ9IxZK8MY32ysCKc2OYIHXptNqcKl8
         oeNuLypE6z8Fd9zQkUnJdFPDXCepb0joxlyJdWQnLrXc60igzW7rgWhOVFrwEmzAkbBB
         QVkELkzYwplcdbIJR0MAY+MCgBsvFbDQQEdpBj/3VWIsGkXvHit0qkZNUqhQ5I4cm24Z
         h7GqbL2JPaP3HegE6SzKCrLwWAIK0ELl1zPoFhEiu2/uem2GHL0C6PFAZ3T1OBCW60GG
         VfKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=qsVNyIzmaN+9EAov6ujI0R5AGwHnJIfes+iohIHyDnU=;
        b=a0K6gltk4wb2ZIl0fWVDA2aPWeQCXtApQChVOgozwaUs5CFj2DSF7tpsDWjciZa9xe
         VimxuUW840tVWhnypzRETEnyWwc70jqHu7DgkD5ducHxaZ2KCOFtZUezmnphWqY6IYKT
         p9wjrUwoszWF6IEvLyBVwfF5o3UBWpiEvv7gc31dJETG8n+O91Kl4xsbOH9rHrQBkBxZ
         ZDHlQ0KQHjB46HUFtdQN9KRzS7bTjM7LY2CpPJBjJ0aX0YOGSr9u6jXNQDAnXQr4oK4V
         sgVUjpdxIGCjaoSSJN4hKKeEQpyku2lEq4RsHKiXJf/1tYEdq7wYEPtTkx6ERW834llo
         LHLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id d123si183224oig.5.2019.08.29.16.24.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 16:24:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 713967F763;
	Thu, 29 Aug 2019 23:24:42 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD6F85D713;
	Thu, 29 Aug 2019 23:24:41 +0000 (UTC)
Date: Thu, 29 Aug 2019 18:24:39 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190829232439.w3whzmci2vqtq53s@treble>
References: <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble>
 <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]); Thu, 29 Aug 2019 23:24:42 +0000 (UTC)
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

On Wed, Aug 28, 2019 at 05:40:01PM +0200, Arnd Bergmann wrote:
> On Wed, Aug 28, 2019 at 5:28 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wed, Aug 28, 2019 at 5:22 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > > On Wed, Aug 28, 2019 at 05:13:59PM +0200, Arnd Bergmann wrote:
> > > >
> > > > When CONFIG_KASAN is set, clang decides to use memset() to set
> > > > the first two struct members in this function:
> > > >
> > > >  static inline void sas_ss_reset(struct task_struct *p)
> > > >  {
> > > >         p->sas_ss_sp = 0;
> > > >         p->sas_ss_size = 0;
> > > >         p->sas_ss_flags = SS_DISABLE;
> > > >  }
> > > >
> > > > and that is called from save_altstack_ex(). Adding a barrier() after
> > > > the sas_ss_sp() works around the issue, but is certainly not the
> > > > best solution. Any other ideas?
> > >
> > > Wow, is the compiler allowed to insert memset calls like that?  Seems a
> > > bit overbearing, at least in a kernel context.  I don't recall GCC ever
> > > doing it.
> >
> > Yes, it's free to assume that any standard library function behaves
> > as defined, so it can and will turn struct assignments into memcpy
> > or back, or replace string operations with others depending on what
> > seems better for optimization.
> >
> > clang is more aggressive than gcc here, and this has caused some
> > other problems in the past, but it's usually harmless.
> >
> > In theory, we could pass -ffreestanding to tell the compiler
> > not to make assumptions about standard library function behavior,
> > but that turns off all kinds of useful optimizations. The problem
> > is really that the kernel is neither exactly hosted nor freestanding.
> 
> A slightly better workaround is to move the sas_ss_reset() out of
> the try/catch block. Not sure if this is safe.
> 
>       Arnd
> 
> diff --git a/arch/x86/ia32/ia32_signal.c b/arch/x86/ia32/ia32_signal.c
> index 1cee10091b9f..14f8decf0ebc 100644
> --- a/arch/x86/ia32/ia32_signal.c
> +++ b/arch/x86/ia32/ia32_signal.c
> @@ -379,6 +379,9 @@ int ia32_setup_rt_frame(int sig, struct ksignal *ksig,
>                 put_user_ex(*((u64 *)&code), (u64 __user *)frame->retcode);
>         } put_user_catch(err);
> 
> +       if (current->sas_ss_flags & SS_AUTODISARM)
> +               sas_ss_reset(current);
> +
>         err |= __copy_siginfo_to_user32(&frame->info, &ksig->info, false);
>         err |= ia32_setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
>                                      regs, set->sig[0]);
> diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
> index 8eb7193e158d..fd49d28abbc5 100644
> --- a/arch/x86/kernel/signal.c
> +++ b/arch/x86/kernel/signal.c
> @@ -414,6 +414,9 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
>                  */
>                 put_user_ex(*((u64 *)&rt_retcode), (u64 *)frame->retcode);
>         } put_user_catch(err);
> +
> +       if (current->sas_ss_flags & SS_AUTODISARM)
> +               sas_ss_reset(current);
> 
>         err |= copy_siginfo_to_user(&frame->info, &ksig->info);
>         err |= setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
> diff --git a/include/linux/compat.h b/include/linux/compat.h
> index a320495fd577..f5e36931e029 100644
> --- a/include/linux/compat.h
> +++ b/include/linux/compat.h
> @@ -520,8 +520,6 @@ int __compat_save_altstack(compat_stack_t __user
> *, unsigned long);
>         put_user_ex(ptr_to_compat((void __user *)t->sas_ss_sp),
> &__uss->ss_sp); \
>         put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
>         put_user_ex(t->sas_ss_size, &__uss->ss_size); \
> -       if (t->sas_ss_flags & SS_AUTODISARM) \
> -               sas_ss_reset(t); \
>  } while (0);
> 
>  /*
> diff --git a/include/linux/signal.h b/include/linux/signal.h
> index 67ceb6d7c869..9056239787f7 100644
> --- a/include/linux/signal.h
> +++ b/include/linux/signal.h
> @@ -435,8 +435,6 @@ int __save_altstack(stack_t __user *, unsigned long);
>         put_user_ex((void __user *)t->sas_ss_sp, &__uss->ss_sp); \
>         put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
>         put_user_ex(t->sas_ss_size, &__uss->ss_size); \
> -       if (t->sas_ss_flags & SS_AUTODISARM) \
> -               sas_ss_reset(t); \
>  } while (0);
> 
>  #ifdef CONFIG_PROC_FS

Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829232439.w3whzmci2vqtq53s%40treble.
