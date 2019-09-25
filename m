Return-Path: <clang-built-linux+bncBDSMRTMFUIFRBJHWV7WAKGQEUR6FSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F28FBE906
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 01:41:25 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id a8sf936215ios.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 16:41:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569454884; cv=pass;
        d=google.com; s=arc-20160816;
        b=iN8cG6ZDB7sEjUQPqi8b2X0XNZ4smOWQu9MdrlThmPWfixfNYH0HdVrsPhJZ63ZrDq
         cb+YkjGY107NHWfDfmy9dHNEMYQg+hTyPXmxC0I+voOq99RdjOElmMGUnLPFpI6Uw2/b
         Kix/QFlfpe4exAhvOoeGrbRTCwmQCsdP1yIPxyTs6m6DznQIdxz26lOzKuzhyQmlEuxR
         JZgDxAvH/aO/VLB+AYSBq3gT1iaygjpolaR0UaQZKz+8dLGWaNFyotrpBebYajiJsFH7
         RmXGOqDJxSisyCrORXEmUI0Vxfx2bgjT0FX0kLUvn+WFTajJOt1i048FwvKHKncI5eM5
         dStA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=602ly9qQgG6rEVAa+chXr9hsHWEsLs957U+8HkyGBn8=;
        b=PvtuV0zA1x2veBR9v7OlzwImbiMJMRSeg2TDxbXlhjNbUQuLifp+N4Ql89G97BoNYF
         6mYq2MrsYgSiKaCPPVXVN9OnY/HpEIBOnAFc2+WaUYEh8moUwDRdLISB5ncQ5Me9F2fl
         Wz7at+1FM7TjspHUmDpG26NYXvfadcegr+SQhEqKoCliYTRwugEirVlgPchewJLoWIlM
         mdth0KQ5ak4v5Z4wbL986n3OW6hxesoU+CyEzCSKxyHRjzxtVkRbbLGpZ4oobkvMz50S
         ciC6mo98OTu/e0J/+h9Cvlt4dGlOiWjR8JjMUWUv9Fh5rLfxQM6u/sSGnTv2Vv9Z9+w9
         w6tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ikC+0Dzi;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=602ly9qQgG6rEVAa+chXr9hsHWEsLs957U+8HkyGBn8=;
        b=lpkc1PSOfsPIezmb7q5NOHhj5tneYW5dWq5gkYCGgOTsE/8R+m6w5iRRHCrX4fHRN2
         7MjsCuHdVhJF6seXg03v8hM+UeiY5s31arHDoVsbO0ftzVC7ODA9Nfcb0A+SUCZBDKgs
         7hSoyUs+NFqVuNt7LrMMgDCYEt0HTkcMl5y4idu0zqFc1oyZUGo/HlpGI8LXjw9RjknL
         TSWpSZPtVMa3fwbISyWWFULAEs1Pht9YicLkTktFVOYRbzeLi1tJM2ClvdHecWdZ7dhm
         1K/TWDUIeHG4XWpAs8fbhPH9MiNDURylqDUSSP+UruJ6dixDHDhoFRWTkHpzbRSEq2Gr
         q2lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=602ly9qQgG6rEVAa+chXr9hsHWEsLs957U+8HkyGBn8=;
        b=NZoeHW5hebRL1vaUMa/xWfAjc95AHsayJiS9lsTg4WW4Ym6Mw0spScuCThLO5qxHDq
         mzFQ/A95LevYMNf50/b3l2I6AxzC0oVE+CS9wwfe2PBOu/6H0hSxNTnBDFs8Odd5D5VU
         wwpLCdKxjJGsEhapwgxJKiTKNwwpYxaxYys6g4qtfZMud1c7HKs6ER5IpUJjYc1SnVM8
         1yjxwl3qbXdJLbuGJXH446Kebasna6M5h4dkBSx4g7gWZ2eLiKyXb6Dkxp+kOWRJw04I
         /0meA7S48UsGi9lDUuajXJGUTqEmqn7uI1xu2ebaVBlrH+ovs4IEv9yjmcOWiLwkT2Pz
         r6Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=602ly9qQgG6rEVAa+chXr9hsHWEsLs957U+8HkyGBn8=;
        b=L/P2mMmnHX+FQtPOuWyrkDeBeGrpSTDMzBakEfwTMDEs5Gt4juTy58La/+hFtmDSlP
         r7L5oabHoVNcsXrwll/2pQAqWarqVu5EUQFLgsNAfMkHdj4+iQY2fiGiyhauHetykTrV
         U+Y7AyWoNzuVClBLhFfWQTptdCbWaxh27JfazVHX/z5onUC7SPrI0PHWlJ3QZg9ZbSzd
         mtJcs9nc5p5vSGIdxzgE6XEgrB/7aFcXU8eIAwL6Lh8x1ZLpSizMOrqQ7bJSe05TM3tq
         4Egt1o2U2S1mfwYHB429/iM7tkT/iL/6Pd11ZItx/qWDO8lNj3TmkOCwbixISUY++Gd7
         dEAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUe0kqC2NGdKVMTCuBsiDvBGJ6XAh/akTj1AhVbKeTirWrWfeLU
	7FhWn5l5PbYGGkk1KmLoyXI=
X-Google-Smtp-Source: APXvYqznVH71Haw0leAvYGFUmZa41SdVmjgbYOv3Gv/Fp7xG+XSvZIQrPNV04N+KVKVG3eduFsLBEQ==
X-Received: by 2002:a5e:a812:: with SMTP id c18mr660714ioa.220.1569454884415;
        Wed, 25 Sep 2019 16:41:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da02:: with SMTP id z2ls54462ilm.5.gmail; Wed, 25 Sep
 2019 16:41:24 -0700 (PDT)
X-Received: by 2002:a92:b112:: with SMTP id t18mr205854ilh.252.1569454884036;
        Wed, 25 Sep 2019 16:41:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569454884; cv=none;
        d=google.com; s=arc-20160816;
        b=DULCiyW/M75c3PAVWIBv/8B46vRVrcFA7VqAO7pXUZmI+qviaKy2V0K89B8BG2XIge
         9wmCOxsbv2MrOCzS4/nP2KhIWaBoA04OvOOwm7s6HLDPMb5luklEJ4clGO2kPxOhp20T
         foC63rf/Mn4frug/flXaqjv2keH3ASXejssqqkwlQkA8ZcZWtYCXYJ2LUncgx7RK9Uxu
         +v9p3I/+yuxNjltDNHd7uxGCrol30VcMP8uPi4539hhxIXwRxMvGYbG5IRaqwIkzcThX
         56fnbqrnZpIn4CHAb1mWcWgzTSWspsAKnT6SPEGAw3NjCCkSpRIuZax48pfjSPIzS2U6
         hsAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EHbkABYA72FSTQ3pj3ZvFRjeV+Q+MQiZLIOILleg91w=;
        b=IOhMDQS7W8vHpTFuU6ol+aKZmgdmzL6bzak99Av775Zt92r70L5lWa5dYLUfGAmX46
         StcW9CPYuR5X4Cwua6lZI3o0E/zV+PJYCyBcDEB5oL/Bhjb9tuXSXy95t69wyQ72O8Wz
         zhJOZsecQ0JGBWLLcJM4NPmck8WtZnO9eQ1K2GyKnAUZBFV4hompK6BDTcPT5VcIr1lX
         F0OlANLbWvZG/lFsrQ/P089WIJweK04XDamUDI9ABNAgA46YFFVGezaON1QNB+5ChMcv
         aRC4Q2Sc2mi4Ohpl7sB89/R2tr4lV8oW5VaxqBQ9puLcxkeeNYTyCKVWMdEZf2OlGOQH
         P/Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ikC+0Dzi;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id b206si56762iof.0.2019.09.25.16.41.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 16:41:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id m16so492806oic.5
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 16:41:23 -0700 (PDT)
X-Received: by 2002:aca:5b84:: with SMTP id p126mr505449oib.4.1569454883752;
 Wed, 25 Sep 2019 16:41:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190925172915.576755-1-natechancellor@gmail.com> <CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
In-Reply-To: <CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
From: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Date: Thu, 26 Sep 2019 01:41:12 +0200
Message-ID: <CAOrgDVNraVQT7kLvPJ36OZM8tQ5atfvy7TYG+JCw9XXwzb1HBQ@mail.gmail.com>
Subject: Re: [PATCH] tracing: Fix clang -Wint-in-bool-context warnings in
 IF_ASSIGN macro
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ingo Molnar <mingo@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ikC+0Dzi;       spf=pass
 (google.com: domain of david.bolvansky@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

GCC C frontend does not warn, GCC C++ FE does. https://godbolt.org/z/_sczyM

So I (we?) think there is something weird in gcc frontends.

>> I can't think of a case that this warning is a bug (maybe David can
explain more),

In this case or generally? General bug example:

if (state =3D=3D A || B)

(should be if (state =3D=3D A || state =3D=3D B))

Since this is just one occurrence and I recommend to just land this small f=
ix.


st 25. 9. 2019 o 19:41 Nick Desaulniers <ndesaulniers@google.com> nap=C3=AD=
sal(a):
>
> On Wed, Sep 25, 2019 at 10:29 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > After r372664 in clang, the IF_ASSIGN macro causes a couple hundred
> > warnings along the lines of:
> >
> > kernel/trace/trace_output.c:1331:2: warning: converting the enum
> > constant to a boolean [-Wint-in-bool-context]
> > kernel/trace/trace.h:409:3: note: expanded from macro
> > 'trace_assign_type'
> >                 IF_ASSIGN(var, ent, struct ftrace_graph_ret_entry,
> >                 ^
> > kernel/trace/trace.h:371:14: note: expanded from macro 'IF_ASSIGN'
> >                 WARN_ON(id && (entry)->type !=3D id);     \
> >                            ^
> > 264 warnings generated.
> >
> > Add the implicit '!=3D 0' to the WARN_ON statement to fix the warnings.
> >
> > Link: https://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891b=
2db30652cfd962f070b
> > Link: https://github.com/ClangBuiltLinux/linux/issues/686
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> I can't think of a case that this warning is a bug (maybe David can
> explain more), but seems like a small fix that can stop a big spew of
> warnings, and IIUC this is the lone instance we see in the kernel.  In
> that case, I prefer a tiny change to outright disabling the warning in
> case it does find interesting cases later.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > ---
> >  kernel/trace/trace.h | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h
> > index 26b0a08f3c7d..f801d154ff6a 100644
> > --- a/kernel/trace/trace.h
> > +++ b/kernel/trace/trace.h
> > @@ -365,11 +365,11 @@ static inline struct trace_array *top_trace_array=
(void)
> >         __builtin_types_compatible_p(typeof(var), type *)
> >
> >  #undef IF_ASSIGN
> > -#define IF_ASSIGN(var, entry, etype, id)               \
> > -       if (FTRACE_CMP_TYPE(var, etype)) {              \
> > -               var =3D (typeof(var))(entry);             \
> > -               WARN_ON(id && (entry)->type !=3D id);     \
> > -               break;                                  \
> > +#define IF_ASSIGN(var, entry, etype, id)                       \
> > +       if (FTRACE_CMP_TYPE(var, etype)) {                      \
> > +               var =3D (typeof(var))(entry);                     \
> > +               WARN_ON(id !=3D 0 && (entry)->type !=3D id);        \
> > +               break;                                          \
> >         }
> >
> >  /* Will cause compile errors if type is not found. */
> > --
> > 2.23.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAOrgDVNraVQT7kLvPJ36OZM8tQ5atfvy7TYG%2BJCw9XXwzb1HBQ%40m=
ail.gmail.com.
