Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBGP4UPVQKGQEJH65ROI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CE96DA351E
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 12:44:42 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id b31sf4977936ybj.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 03:44:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567161881; cv=pass;
        d=google.com; s=arc-20160816;
        b=mWsXNhcR+7YYHzsMc1oBHk6NimxebGmjy0XsWqbxOeEjWqylUFPvDi5HbcQ4tzxcsg
         vtp4D7lLcyZyBMqReqjqK3teC37WbqdfKIVDhX2pTP5G8KVUWTnpZZLVFv5FsekJNoIh
         tGb1Ik77GYYloGzNcqdSDj6TAhaEESUBq3RY6THEwm3dT2lHkdXfzMGfTv1yLEO6Lbt5
         TiP2sDPGQ8jU7/1tMDOcjCgRmte19b4B11/3OlFjoMMa+bt6Q5F4rQwzT4I0dIX8XLwQ
         wy3+CZNNsBtINplwy3swmpscb2ks6qq4rGAK/UYXTYgBdteR8TlLzf7DmW2UwrK1Racl
         JHNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QFxVqVp76sKAuf7Wcvtl827UalCFR9sl6R1drOYsenc=;
        b=opfWW81TILW7Iqg1wFKmkGajQxqIdeSbo46PasXgL+nAUN8LmkDcuieI0XkRcigKvh
         Br86edCkSx8itO6sfz5I7JE2zBtFYXEcx5ffsYDW05pef/jUbF8CyFdOo2+GHhsSuzLA
         duZLRsbdDjNf28pRJKI2MOfSMHRmrUnYG26+s+Ubbt1X+vtczxQnb7lS/RbLhb8n6hR5
         u0lwxGypP9jy0DMOr3SuaOpDvxIw+6/35QyVJ/8/onHiWskQO+RNWuD9lD36zcWYU/9U
         6M4YftQlRg4AoWc1jZLMjVDoVPOdk3ox12CNE8ZyRou9pw9IfxVN+Kx7cerIJbKUwy1p
         gBvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QFxVqVp76sKAuf7Wcvtl827UalCFR9sl6R1drOYsenc=;
        b=mMGVJ7jRmmfzqxRbE1aYHFs9DYS2jdHSrXcoLNGFH9wLel3Y60Lfn9iP+fRE5Pm6YA
         DcU6TsQIZH82CfYv4WB7QkG1FuuiGoF8IluWYUzpXFlTFqaDsrady8S770qIsKWn7wSA
         rQVRJVrpRHmhoHeqgy25FBttx5DnJMbJ01zNIyEXRDDTDtJLf/c/Ateybyqw9TPpjf6V
         wdeNSkN4wyvP22sNqFwRGWRoaHMKa7Cc+tAQ0FLMlnSOCgvSHHgytv+35xrWhfeJl73H
         +cM1Qgw2rIrQ9n1/H/6eKzawdEUu/yzk9Cfo4CXsXvxuksXQ7X6Ll7XmcdNbLutgGiT8
         oNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QFxVqVp76sKAuf7Wcvtl827UalCFR9sl6R1drOYsenc=;
        b=MNz+yQpgS9EGqA41oAUSozvCU2gSj1YHe//fJ46X7FNVFz4COSuSAF4fUGPHh+6Yi1
         CCWcR5bIIFWvdoDGHXJQeycJm7OovbLMjtRY/vHDEIl2MLn93zGOG9J6sQlBmtJn7xOd
         zKh5/eBXiGwdm7PSG6fAxp0AYiwVfXDNlnizmTc0qQCPVdSbBeAbaqruDDcovCqSrlPd
         thVVO3eYPXpLBG75KIaX46WWXgQLdnTK5XZnlg3k1y3APKqiQhzgGFKzWlRysukadYlz
         ECSEHDxsOZ8xHp3AqAwbK0z9oOByqy26RqiodiBJKn7xSciOCBG3SQErbU26SXNCSyIO
         kqrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6jndgEWbMDuEeGfuMd33MTHIQngAlpL8TJCI/eOHVVKhZ3+x4
	tg7rk49niUsR5z9M5/blu5Q=
X-Google-Smtp-Source: APXvYqxpClpfyjx5E0+wYzWcV0BRl5EfghhY5ssQNpMskFPtmhYYBXyDEUlfXClURP6+4IZU461rUw==
X-Received: by 2002:a25:b098:: with SMTP id f24mr10060143ybj.389.1567161881856;
        Fri, 30 Aug 2019 03:44:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:50c:: with SMTP id o12ls406433ybp.10.gmail; Fri, 30 Aug
 2019 03:44:41 -0700 (PDT)
X-Received: by 2002:a25:74cd:: with SMTP id p196mr10314799ybc.192.1567161881445;
        Fri, 30 Aug 2019 03:44:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567161881; cv=none;
        d=google.com; s=arc-20160816;
        b=gK3g2xFnhEqto+xiA6+RBZ1zEFtNQmCTOMZD2/c9YwEpvbmYE3MB/Vhg8a5jQnrt4a
         oahJHr5abeggC6UrHTgbpBldQK35cfhs76ls4XQoj9dhR4ennNbwdkXUvo2vHSIipTWT
         2J6zN1evXw4ll+EAqVjHTz7Iod19mcbkjqPSqAvA9TqD4tzpmD9RahAPS79C+/UwIEXr
         DCC7hbS7pVlhYfacXF1IlKAjdMziobCUsSurn7zh69NjpbwlbUUJEtgS3wMahta2/zJ4
         0ZLgZzUbq/4KYoaBOHpLmq28gYlThNYarJpFResZtf8iB7c3I7DTS2KJB899aQYMRyd6
         Nrew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=4h0OUIol2dgMokFQI+wRdinat+23fMLG2R8rHiotl0c=;
        b=F3t/C88cEy0UtTiuNicrFEj2iEVU1rmYBTJ/aM4b/FxynkXsavdHcLOIA3Jjjxu2Ga
         dtoJSfxclusxb48qY06WEvMopg44lovayUuXYhZZmSShZvwIzi170I6LcpS+RNFsFxVR
         fziZpDRwTKbZ6Pq/IJJcVCqx16yzmF5mrBeTZC26FTvZEzrisj18pOaj7D4MQKENgXct
         8lFIjeOCue5VdEyihrl3aVM5E3fdx6wVP/WSsXYXf/gwEIxVJLtWGOcJUosSfcANIx/u
         UbCJDqZSGbXbhdCk3PcLy4FEa3MT+Aw2dvL40ogKEBnl4ySk7LrBhcXySWxrkMMdmEvV
         Q8LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id t9si421338ywf.0.2019.08.30.03.44.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 03:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id 44so7042984qtg.11
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 03:44:41 -0700 (PDT)
X-Received: by 2002:ac8:117:: with SMTP id e23mr14525852qtg.18.1567161880911;
 Fri, 30 Aug 2019 03:44:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com> <20190829232439.w3whzmci2vqtq53s@treble>
In-Reply-To: <20190829232439.w3whzmci2vqtq53s@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 12:44:24 +0200
Message-ID: <CAK8P3a0ddxbGVj974XS+PM_mSJDu=aGfTGarjmqMCuLKn81mRg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
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

On Fri, Aug 30, 2019 at 1:24 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> On Wed, Aug 28, 2019 at 05:40:01PM +0200, Arnd Bergmann wrote:
> > diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
> > index 8eb7193e158d..fd49d28abbc5 100644
> > --- a/arch/x86/kernel/signal.c
> > +++ b/arch/x86/kernel/signal.c
> > @@ -414,6 +414,9 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> >                  */
> >                 put_user_ex(*((u64 *)&rt_retcode), (u64 *)frame->retcode);
> >         } put_user_catch(err);
> > +
> > +       if (current->sas_ss_flags & SS_AUTODISARM)
> > +               sas_ss_reset(current);
> >
> >         err |= copy_siginfo_to_user(&frame->info, &ksig->info);
> >         err |= setup_sigcontext(&frame->uc.uc_mcontext, fpstate,

> > diff --git a/include/linux/signal.h b/include/linux/signal.h
> > index 67ceb6d7c869..9056239787f7 100644
> > --- a/include/linux/signal.h
> > +++ b/include/linux/signal.h
> > @@ -435,8 +435,6 @@ int __save_altstack(stack_t __user *, unsigned long);
> >         put_user_ex((void __user *)t->sas_ss_sp, &__uss->ss_sp); \
> >         put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
> >         put_user_ex(t->sas_ss_size, &__uss->ss_size); \
> > -       if (t->sas_ss_flags & SS_AUTODISARM) \
> > -               sas_ss_reset(t); \
> >  } while (0);
> >
> >  #ifdef CONFIG_PROC_FS
>
> Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>

Thanks! Before I submit this version for inclusion, let's make sure this
is the best variant. I noticed later that save_altstack_ex() is meant to
behave the same as __save_altstack(), but my patch breaks that
assumption.

Two other alternatives I can think of are

- completely open-code save_altstack_ex() in its only call site on x86,
  in addition to the change above

- explicitly mark memset() as an exception in objtool in
  uaccess_safe_builtin[], assuming that is actually safe.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0ddxbGVj974XS%2BPM_mSJDu%3DaGfTGarjmqMCuLKn81mRg%40mail.gmail.com.
