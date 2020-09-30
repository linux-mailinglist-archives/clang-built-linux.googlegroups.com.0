Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYPB2P5QKGQEGC5G55A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A1627F3A3
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 22:56:02 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id n16sf1506591oov.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 13:56:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601499361; cv=pass;
        d=google.com; s=arc-20160816;
        b=HBjwzI+I9OCQUpvz7ejfFinYkGpv5HYGia4fUwvpRw9Qev3C4h/BWH49NdWFhcQKu7
         FLkM/nS0FAAZl2IUaWONjFfTRe7mXKrm3+Es8YL419obhCSOO9veewZsiEqufXeqdHnU
         mqRCFqLLo03MBCGMA3DjlZh4ch+2ohoXP1Gy7z0EovgGou7fiTZxT2smb6pI90gM+xA0
         +//a7TZqW3exD3f+lasEvqo53UyYwLMyEs+Lmly0Li78qAlYwCsz9EHG9aFjjQKV+/C6
         Zavfuk00qhkiMaamiSHRJLMHqwxgj9Ivc4DWUQKlrFANOg2QtA4SaD0ZwwtGAdHzrwAm
         0XZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e34DMNAvkSlT+6l1BzAxxisukOQ0LPYCypKn/c5QzFw=;
        b=ftkL+402TE0TTw2LgYhzxQJnvfi+IJbrtcJL+I3dqhTn0RJu0byqG5qRZZ6vTr5PzC
         ETt12wahDstc7FJQsEWgP7R9xe/YK+uaWXZSZJ/kj5ilkrOGjl3TkmZiXrkqk/AYrNaK
         uuP7dfYtPsGOc/iGHF2AYWXx5Olk23E99tM3ixC1BVJ/fE3werUK37YamJ8DqrF2yfN9
         M+EWK+smQbfDLov+7wLGX6RNk6BD3JCytoP9MuyTpC/gZP8lxlIRc8ymLO8rcvKncUjU
         QArBbXJDkG/DOedUXMDruqz+DV8ZJ8iE2/QBDLBCwFTHzjlBD7PrBwF6hEILp6MDPUJK
         ehzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qQgOqp0h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e34DMNAvkSlT+6l1BzAxxisukOQ0LPYCypKn/c5QzFw=;
        b=owF4JRVcxt3dj86tbhra+6y8mQkipEEsAbdC4s8NbiPtK1zEvB9jQA3grNKGZTF8wn
         TGvsR1uAuVUvogqQPb3VBX+SI3OTW1tQE9oVaW/ohY4XaNvMtDjTkPGL6OyA68PiWQnG
         1tWP136p9bdfGeVf4BNxdWR51a8OM5rV1PXTZ8oCKkdNPWIXHAQ2n1MYPJwPsNncSnJD
         ZEl0U9L5fwLJH/t+hohX9D5m+y7h+wQvqgUJNKCFt4DsRudYlxJfAKuLs9lwmwYP0sJ0
         jgzgH2Qe1ruwG82vnBYF1vs1o3kMFhPwaLCFpxrQ78+6UuqxILMnmBuj6aOAKoEnCeBe
         m76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e34DMNAvkSlT+6l1BzAxxisukOQ0LPYCypKn/c5QzFw=;
        b=OJLsHef706Us2pgsW//WFJgn+Ppd5oPlk6aTXYuKrL4zG30yUfq58FtqoPhhtvcZDA
         cjGlNfV2Dylc8AL5Bbfvmvql/H9YfMIXuxJ9m+DcyK1nZ5yTRnbrzPk1kQzdWnEo5BCg
         I6gvg3Uy7qESD6QAngPskdTn81z5nUXyh1CjzqDoVIrbDDwIPqWgCGGEyCKKDsk7m3dz
         givaeoGBEB3uz4RWQhxS6uYzbtrYRS+FHtpMoyldfUrndfqN2LYGjarTTrKQAjfnj9aj
         15m9K3CrOvvP6Ir9CHlK0rP5VeIo9moCcKdiZvBGdnUIJaPAzlrXcblkrMmH9Zd7llRD
         0FLw==
X-Gm-Message-State: AOAM530sAJi2iCGFqc4Mk5RJBLUX3ARFOZ9w+aKQfstROymUQGANhMqF
	uVJ4Pfa7NDoCcJdttowMUN8=
X-Google-Smtp-Source: ABdhPJzBnl9TgoC6rfmHh/k2PsBXSCl89D3D3iFuJ3sNUgf+RU6n0NQuOPcEHYBTC+MRVwaHOSE5Tw==
X-Received: by 2002:aca:ec53:: with SMTP id k80mr2366739oih.92.1601499361128;
        Wed, 30 Sep 2020 13:56:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a84:: with SMTP id q4ls731217oij.8.gmail; Wed, 30
 Sep 2020 13:56:00 -0700 (PDT)
X-Received: by 2002:a54:4895:: with SMTP id r21mr2468329oic.83.1601499360706;
        Wed, 30 Sep 2020 13:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601499360; cv=none;
        d=google.com; s=arc-20160816;
        b=GUXFUwQXwi9EZev7tT1H1IiQGy2dNVR15a2R5SUQ8lh+8ffq2EOpyRG/hGHbDjOWZ2
         JFSAyQeJgBj21qtqnBEWobXjMC5J+9YI6qvKAFNDjBwNm7tx5jTfVzUAiOxrByziVr26
         NSX7PJGIg1oiXblwJy7U15u3J3uT5WYvqzfU74Xn88csGu2QjmLVJYObUTeloZxzA1hT
         s6t2y3bR0lYiKtaEmj7wrfrx9tJZDy6Dhsgpcmj+YLNNnfQM3pG+1W1kk43gmLI+jLUu
         hxP+hsrrTpgMvAJS2ouKPAOIO2x6Rt2zWw9jIA32uvH68KBb5eip/mBAPWFXoGNk912S
         djqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5AARzvPIhmrr9RKWTolOdjmp/z3TGB3+rP7VPNajPP0=;
        b=iHQOD2+xwdLACYGUA68zVQlFYbisvln9HEqArFM6yfAwvqCeroyiGf2w1GmrNSSfqd
         q9q2+TkVktv34uihmLy+5E4Rs0UU2OxkuExzUJStdoJkXSN3M4ed0WInl+0HxeDyRwOU
         bMuBHF8C+5J4DuigYcWhxeN9M36lQl3cJSuYV+woSi+aCZlUwc2z7Q7a7BdwUMcBrG8i
         rRi2tmPCdB2uKt1w9LL7G6fDXm5R242UceOoEbgawLc7Zhp3gEpzZr11Sq7rfdjPTpSE
         YqjN//EtDFKY0BPk8ddRp009zGOJrf6mDN/hhNTe7qsnpQKVoTbfL9+z+2gPBz+qtshF
         OQ6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qQgOqp0h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id m3si215032otk.4.2020.09.30.13.56.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 13:56:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id gm14so523436pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 13:56:00 -0700 (PDT)
X-Received: by 2002:a17:90a:3b48:: with SMTP id t8mr158290pjf.32.1601499359788;
 Wed, 30 Sep 2020 13:55:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com> <20200930204044.GZ29330@paulmck-ThinkPad-P72>
In-Reply-To: <20200930204044.GZ29330@paulmck-ThinkPad-P72>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 13:55:48 -0700
Message-ID: <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	rcu@vger.kernel.org, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qQgOqp0h;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, Sep 30, 2020 at 1:40 PM Paul E. McKenney <paulmck@kernel.org> wrote:
>
> On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> > The stringification operator, `#`, in the preprocessor escapes strings.
> > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > they treat section names that contain \".
> >
> > The portable solution is to not use a string literal with the
> > preprocessor stringification operator.
> >
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> I am guessing that this needs to go up with other patches.  If so:
>
> Acked-by: Paul E. McKenney <paulmck@kernel.org>
>
> If not, let me know and I will queue it.

I could have bundled them up as a series.  I think you can pick it up,
and I'll owe you a beer?

>
>                                                         Thanx, Paul
>
> > ---
> > Changes V1->V2:
> > * drop unrelated Kconfig changes accidentally committed in v1.
> >
> >  include/linux/srcutree.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> > index 9cfcc8a756ae..9de652f4e1bd 100644
> > --- a/include/linux/srcutree.h
> > +++ b/include/linux/srcutree.h
> > @@ -124,7 +124,7 @@ struct srcu_struct {
> >  # define __DEFINE_SRCU(name, is_static)                                      \
> >       is_static struct srcu_struct name;                              \
> >       struct srcu_struct * const __srcu_struct_##name                 \
> > -             __section("___srcu_struct_ptrs") = &name
> > +             __section(___srcu_struct_ptrs) = &name
> >  #else
> >  # define __DEFINE_SRCU(name, is_static)                                      \
> >       static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> > --
> > 2.28.0.709.gb0816b6eb0-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DnabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q%40mail.gmail.com.
