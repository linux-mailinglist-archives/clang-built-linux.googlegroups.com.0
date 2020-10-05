Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBP6Q5X5QKGQEUD66UWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id A7598283E83
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 20:38:56 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id bo17sf6524572qvb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 11:38:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601923135; cv=pass;
        d=google.com; s=arc-20160816;
        b=DprliDjlcph3BPKrWLcVGfhcQvzhZCt7a3WLDKXe56mOLUi7JqTT+3EqW6PL1VqJW0
         BOQy/WMiHkjwPZ9QvKzKoyIUFxIGQa2Rk/urhx+Ml414ohTSc7PWO13FgcT4VEDmjArm
         8tVHonx+bfg8cQvlVF48owb2F63osjjZw8hVvF1CeKqaOv9TNh60kT1IDz2it5h8WHoO
         Mt6YRAkhHmmcRilVsZdFkdymBknG1stXNdgDoC8YCZ0GrTZ58nFsk3NqjOjYJL1xEAPk
         Vdh0fgvOPT26Y4Q6rmxJp5OATE/8IkKF5Ef8RHQa34NHZaF+YmEzJUmULtvcdojuXsV1
         CzFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=73bhoy7h+Kk7JhnMk+m5/jo5w+sfDiurOaXucD2F00k=;
        b=FXrvpNONsjzc9xAV8WBvoJDbi1dEV6IWRQ5ia7At+yLqORUoC2w5NpP8PGsbCooOVR
         Ivspd3FdlUHnnwqNnEZ/X8K5E5yQlPJaiv6VdklJTV+xp+dLLX5r4DDMnIDLbZ7gR6sL
         LvGSgB8f262DMFa+DPu8zQ3+mnMWhL4Ixl5hbRnklE8TgrMUw3n79TKqLN1JkLRYi6gv
         VDo96X89lMYRAGQZ4zGcpsizVbi2R1FcAeQevBU7xqUqKkGCOe4TBwvrsOlSuMoS5h53
         Pk87urkv452L7YuIOWd6Kct8QtdWWDWtOvwQXuvNUUsbAaspMDeqkGR1MTGhbAVHZN31
         BKoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kn7nn+XT;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=73bhoy7h+Kk7JhnMk+m5/jo5w+sfDiurOaXucD2F00k=;
        b=G6daYO+Qs2Rb90S0FmLwdZDLqLDXDNpgveHp3VGL36RgKoX4AsJwm0WrC/uF/LTksZ
         kJacrqBLf7OQ4v3nrATrsaPmjJ34Oi/jJ0eMi752SEm0uzZ6Dq4apoLORXOZGK1cDEAQ
         FKiP9Uew2IoUNuhu0KzMqjFNdRZjBMF3HXqud+Xvr9o+iylNl4u+GP5VvK0guTCk+Sf4
         /6HakjS7K8qYzSavbZa3GzxZc/XNIuQBb9Mkm8cUcKHASBSaGdKvdAS0V7LBQn4l4ALP
         Ieh/QnVmADOkKlmWJ+CNdYu4ByFUqxAG1ezbOzKLmRbF2FqTLxdJ759Whgzjyw64FLkO
         O9GA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=73bhoy7h+Kk7JhnMk+m5/jo5w+sfDiurOaXucD2F00k=;
        b=V2rhLCSjuNY2lx9Qf6QtEIJEKwdgp9ozoo706g8vjUSQs56pg37EqrvOqfvjsC/Iy3
         vTZSpucC1h5ibkqYID6N/Ua3lKxWGRMmfcrtllNd7hYRC2c7ry2ho76xMELNSXTabTAO
         Lt8e27a1QQgm6JKxaGdOKkJ/6sOqQ3wMt2MyHowSvORZh53Ry7YmKkxEUh65E7mmiH1l
         k3XoyI16w4FxdQ9PPVQfrPLuzjTSUDnDjWetCDtGNu1ivs4HHquJTSFOasTMXYfQDnG/
         fll7XbC3tUKv947R0EdgM5p64e+OoYGytmvzA12vIeIF3Dz/Za2FAt7wJPBDY2YazzAE
         +Jlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=73bhoy7h+Kk7JhnMk+m5/jo5w+sfDiurOaXucD2F00k=;
        b=n7ZnRUhsB8sJ7gpO3JT9nuR3Oc4wt7TPIIlxPObk79pZR5rJ2GWEKRWvRj4npo3KMO
         S6ovmQh/YSsTkEIDARxIXQ2Rnueor4oKjUgzjbRlbf6CuEPioiwgW6jDD4DQrpeUDfTu
         eVZ3hOWZZAK0rDhhuleNXiEeX1zMD3gtlkdCgsTwmUlIEiKrlGQRCPxKptpyniyjaMia
         pJIXhcZzs7iCrPjYcUh7JtX+1Wh8ZrwyA1u2f4oEcsgYOo2Rz2KcP2E5l9fwr24PhV5N
         SKxOAcW2wrgAa8S+OMuyjIEXGTG1C9jhuAAleqcAPTOLUoHZLPePXwOsF4EPo2RGnqb6
         qgEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sESYHyJeLVeRmG8wq1cPX+uvqODCENhrwyXml6tEqKgz96I6a
	weeKF8W+3DJTepQMm/RDo70=
X-Google-Smtp-Source: ABdhPJzMFWHgUg7WIZFYt/7xYWUgXNc/5SJYZpXzCmfsdsUPWGC6ioAy+k8H7gqns/a/ShjKr6Xo9g==
X-Received: by 2002:ac8:328d:: with SMTP id z13mr1358047qta.24.1601923135207;
        Mon, 05 Oct 2020 11:38:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:d802:: with SMTP id u2ls5016298qkf.5.gmail; Mon, 05 Oct
 2020 11:38:54 -0700 (PDT)
X-Received: by 2002:a37:96c7:: with SMTP id y190mr1452253qkd.152.1601923134599;
        Mon, 05 Oct 2020 11:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601923134; cv=none;
        d=google.com; s=arc-20160816;
        b=mC6bwZb0WVrlHuOwk2F8WocG2r+Urqu4gSMGyrgiCo8W69Ug73VVRMu8w5l6uxKKO+
         RQ0iiVc2+z0WR2u0+otOYBJ7WVx26mp3/Lr02c2yHDQoDpqAdVhoNL+U5gq8Yl5YAC2f
         2sNVpth4ZXad4kZ7rIVorLIKbXJ5csHfLn5PUSf19UwKi/1kmjBAhiuaeVZ9lhZXYmgh
         JECuwsCe8M1HiNU+gbMWDyDutHooIlhvhPnKUQ404jSFkKmXDMOA23/wGDQ5XvCQxoYh
         wXYA4CxCPVXX3VAd2EG6pTF+WvCsV5i9Vx7pn7fGM364xGqH1S+utZ/OSmCwsPN30wz5
         HACw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0mINoVvksqZpxSeoRlADJj7+XdiIIyUQzvACsexYEQw=;
        b=cHa3/amc5SVtk09wmAWMDrReq1gej6YJbfhvlPnRmOAOHqoK7FZcUDw8wKI/g7GXNO
         Vv7OBAbnnU/cwjEYA4z2rivV34YX/AW0gBPeWA0ZLuJgZ0rNFW1wTWM0VX7/3NcAkf1F
         YP+IV56pki9X6KOpFtJBUcJAfpG373mhgilSjh0ckg9Ej6fgEH7u0i5GfrvPjUqVGM+k
         abzGhSTVpMpJ/BhDH4n2tArqImJra7Ndu9U8K4bCPG7/K/F+3WHLTfjbwUd9mrxA5Us9
         1uBB+EF+7j/551Y+1jxsE0ws/FE/RMbevytC4mY/xDrSJ4DhvABUn7KbaYvwMzi6FtVJ
         OnyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kn7nn+XT;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id e1si67476qka.0.2020.10.05.11.38.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 11:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id u9so8736101ilj.7
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 11:38:54 -0700 (PDT)
X-Received: by 2002:a92:6a0a:: with SMTP id f10mr599827ilc.186.1601923133931;
 Mon, 05 Oct 2020 11:38:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com> <20200930204044.GZ29330@paulmck-ThinkPad-P72>
 <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com>
 <20201002205130.GK29330@paulmck-ThinkPad-P72> <CAKwvOdkPMSwQneMLFNg3ihM5zHorFy+uGvzAL7y70+hu_1q24w@mail.gmail.com>
In-Reply-To: <CAKwvOdkPMSwQneMLFNg3ihM5zHorFy+uGvzAL7y70+hu_1q24w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 5 Oct 2020 20:38:42 +0200
Message-ID: <CA+icZUW_z5nJ1c69JS7Nm1QknF+CH+sPkhF4g2+L=d=H-vxVgw@mail.gmail.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kn7nn+XT;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 5, 2020 at 8:29 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Oct 2, 2020 at 1:51 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> >
> > On Wed, Sep 30, 2020 at 01:55:48PM -0700, Nick Desaulniers wrote:
> > > On Wed, Sep 30, 2020 at 1:40 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > >
> > > > On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> > > > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > > > they treat section names that contain \".
> > > > >
> > > > > The portable solution is to not use a string literal with the
> > > > > preprocessor stringification operator.
> > > > >
> > > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > > > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > >
> > > > I am guessing that this needs to go up with other patches.  If so:
> > > >
> > > > Acked-by: Paul E. McKenney <paulmck@kernel.org>
> > > >
> > > > If not, let me know and I will queue it.
> > >
> > > I could have bundled them up as a series.  I think you can pick it up,
> > > and I'll owe you a beer?
> >
> > It is queued, thank you!
> >
> > When does it need to hit mainline?  (Your default is the v5.11 merge
> > window, that is, the one following the upcoming merge window.)
>
> No rush, this patch wasn't blocking any known issue, just a cleanup
> while I was in the neighborhood.  100 years ago, I was an Eagle scout.
> Pretty sure there was a motto about "leaving things better than you
> found them."  Thanks for help resolving the merge conflict reported in
> -next related to it.
>

Wasn't there a problem with your "Fixes:" tag (Fixes: *drop word
"commit"* commit_hashid ("...")?

- Sedat -

> >
> >
> >                                                         Thanx, Paul
> >
> > > > > ---
> > > > > Changes V1->V2:
> > > > > * drop unrelated Kconfig changes accidentally committed in v1.
> > > > >
> > > > >  include/linux/srcutree.h | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> > > > > index 9cfcc8a756ae..9de652f4e1bd 100644
> > > > > --- a/include/linux/srcutree.h
> > > > > +++ b/include/linux/srcutree.h
> > > > > @@ -124,7 +124,7 @@ struct srcu_struct {
> > > > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > > > >       is_static struct srcu_struct name;                              \
> > > > >       struct srcu_struct * const __srcu_struct_##name                 \
> > > > > -             __section("___srcu_struct_ptrs") = &name
> > > > > +             __section(___srcu_struct_ptrs) = &name
> > > > >  #else
> > > > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > > > >       static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> > > > > --
> > > > > 2.28.0.709.gb0816b6eb0-goog
> > > > >
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkPMSwQneMLFNg3ihM5zHorFy%2BuGvzAL7y70%2Bhu_1q24w%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW_z5nJ1c69JS7Nm1QknF%2BCH%2BsPkhF4g2%2BL%3Dd%3DH-vxVgw%40mail.gmail.com.
