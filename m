Return-Path: <clang-built-linux+bncBDPPFIEASMFBBS75YH6QKGQEGB6AXIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4AF2B31B9
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 02:05:16 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id z9sf4708265ljh.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 17:05:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605402316; cv=pass;
        d=google.com; s=arc-20160816;
        b=aPpe8FuzqaYOYik7fFx64RkljjRdnpA9VxUO4nS0NqdPT/78F5pb6+Q7b75tB+gbo5
         tkmRYV7h1WtHUfZWTKyYU/QXOKdBi8oP/gHY0C9WyZzQOYaD1Qxog35FUrEFyPUWrPLk
         FocewKnfzywTard2GgN0Bu6264rBSgFeT0NU64i6LEa1gY9O2+ga8oJsns/L9AoMx1nl
         p+IfB40+Jsybb3WhS2qoC0SUEPuQUYrNByUHQmIT8i3gly7IqBMRqpVcebkn2FMVBUiF
         w+3uj0NyTFpgmOzYxYdSR8ldivjQIdmvZRcFh6uzQE6iOtkheKXWyskSU7mVOQx9LlGl
         XFdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZIW3jS+tPZ6Gv+pOx/MFBdo0DaKWdGU0Z5yGZqpUBtA=;
        b=ZOz7oC8zLxBeSGDMjP9LnQmBJPK6JHr+kbtsUME8wbFazBXp1rUCQ+7eLeltbvFuw5
         Lv0K3u6ydDbZbVLp666d1zKXaOiZxxTZy2SccT3pKP/L5lqcgi/E2QUqq7KA+lDziv6l
         Lhh6HA/rmXyBC60c3iI5dppNLnoEgYz6iUOy3OZcMT9PLxZV6XPqsAyaNog68ILL9Fm4
         SfeHUvBNUKjQJC3XK9vHBLe7mGx0SCpQXd98hLY/EvWsmqYvKkha3mJhQEsz70Z93Sy5
         9qshj2So4H+VSoWXOxAt7mzrx3N5w5hEj4MTgfKYPBHxoI9NXddcwMlgWQSU8Ww8Rg4i
         Tflg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hluIQEha;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZIW3jS+tPZ6Gv+pOx/MFBdo0DaKWdGU0Z5yGZqpUBtA=;
        b=pQ4kw0X2P934J7iOG3S2D+K+2pKxOBv3jlcdIBGedYsY6DafFNGI6/W8KLXt+yUiwM
         qKnmI3oSYNAEZD4YczpNBNOxK7ID07uRGPLupFj/05gx3UDP+qS9sVdMbQJDvrznFwSr
         HRYC22MfnmshdxGs+KRz3YsRDHTj/SOksDbhO5cA9aLftBdEEpuQW10NfBsuDYcizkQ0
         ey9L8XLhnBmufkl//AZHhpKdVaAi6FB9oea7URXh2Sx+sHeFC4k060pgZCOC9P4LaklC
         5XzAcSh4UYv2BqpzcsrMKoCTqE5k6qJMv2KvhV+xXIW8IWQcDvM+k4zov2mghVdzTYYu
         lX7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZIW3jS+tPZ6Gv+pOx/MFBdo0DaKWdGU0Z5yGZqpUBtA=;
        b=YGQ7QuVfZfrebsdcXhIzu7FUU4pfGRInYIWp8v0yN23zHE8hIzuXv1EtvrG2BCEYU9
         uyTzbzQWut5RYInrwLgm+A0xaF/PsVSx9uJNYqmwFFAKNA4Uv24uDslhE0tGELt8gWu+
         qkR++eSP50OTqd9YUPiy3DDiLiXT3HHotBIiN1yAz5v/gf6jVQtbtg+yeJHxjoAf6WOB
         de5b8DdIOUTbnNmyZVEff5qaLCTPZX9NYlWtg0O+Yrz+5sbf2WvSdnvRyICEj3iG0NXX
         hCpLnNwBPcOjp8kxgALyEmFo3LQuYSSqdJ/NKC58wSvi5IwLvp08LxgJ3sdnOSOISMCu
         16/g==
X-Gm-Message-State: AOAM530oeZnSaJRP1NmFDFvO8eK6dBD0I3fK4SVn7qHcBionSotAKYuY
	sDPqmNp3MYk/WWl83kedKHg=
X-Google-Smtp-Source: ABdhPJxn2SLrxnHkCTUCl8VSielnkCE4PKRiJLY4oPl8DKNuu5Vdo2XPCwX0Xg5OToI0hH4G2ou2ww==
X-Received: by 2002:a05:651c:319:: with SMTP id a25mr3724808ljp.333.1605402316125;
        Sat, 14 Nov 2020 17:05:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls5628046lfa.2.gmail; Sat, 14 Nov
 2020 17:05:15 -0800 (PST)
X-Received: by 2002:a19:5e5e:: with SMTP id z30mr3054632lfi.277.1605402315006;
        Sat, 14 Nov 2020 17:05:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605402315; cv=none;
        d=google.com; s=arc-20160816;
        b=v+Z+94PbabnvcdTQIdB1ez93NQKIvXkViTSGtS5qrrpvNdzs4CUXaVJSxmsLwVqqoC
         jyCXThMomRVWJ+qCCVFZupeRUH6ege5x0yKY5vPnzesp/HsRezCpOVXodM/NmKiisGsj
         +14X/heUjy2SI8Kn/UXt1B/yzGAIvSvEwe/q4rISKTJ1ONY5GxQep5bOrW90vd/e/kVB
         MnH/QZQzMY8ajTQ346PKYWhxqbJcZLrtpFs5L1+/8br3bhWDzPlWYlT7q6rT3YTJ/BrI
         zLKeh5zPBBHDpRUJpm1VTdK4EbD/dhMe/yZesEJJWKIdpPaaIZk6f/zEqbyWHq4f28sm
         2uVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8Afd9K+1bWciQupw03XwDOgzi/CoWy2gfUU3ma4iL5c=;
        b=YOCSYepwqSvK94e0+LOueP8AUv//NE58K9lV7dc3fHN+mHQ+bbtDn4F41ofqVDTrS8
         3ZHRipGJm+SY/39vJVPzCazzl4nMPEE3639I2MGFMU0RetjvixGuhDdD82P32bX7ZwXB
         byc3pv2Or/j3BxcK8fMAtQLb+Y1TtlInTWI5CJWrN4HCFtiBjTJPwKKeyYSz+H7phSLg
         YnjxDPWEMx3TTvqqMzyaaD84LzwUBYy+tueSzF0FaVTGpTFvWc7j10KrFPvJAiPNJ3IK
         +gU6Hw/WgOI6QGdcTW16bIjH+zA58Jb1qsyDM2DUxrtfS8TXwaOgTSeEdu2tWhOcJlCJ
         l1EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hluIQEha;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m18si459398lfr.11.2020.11.14.17.05.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2020 17:05:14 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id d12so14447777wrr.13
        for <clang-built-linux@googlegroups.com>; Sat, 14 Nov 2020 17:05:14 -0800 (PST)
X-Received: by 2002:adf:e284:: with SMTP id v4mr12489759wri.271.1605402314358;
 Sat, 14 Nov 2020 17:05:14 -0800 (PST)
MIME-Version: 1.0
References: <20201114000803.909530-1-irogers@google.com> <20201114210609.GC903902@krava>
In-Reply-To: <20201114210609.GC903902@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 14 Nov 2020 17:05:02 -0800
Message-ID: <CAP-5=fXzqnhDJAeO7Q8jWmg4vQjnxDU8qiMzVeie8dVQeUhfFA@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
To: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Stephane Eranian <eranian@google.com>
Content-Type: multipart/alternative; boundary="000000000000ab9b8f05b41adab3"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hluIQEha;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

--000000000000ab9b8f05b41adab3
Content-Type: text/plain; charset="UTF-8"

On Sat, Nov 14, 2020 at 1:06 PM Jiri Olsa <jolsa@redhat.com> wrote:

> On Fri, Nov 13, 2020 at 04:08:03PM -0800, Ian Rogers wrote:
> > To ensure the stack frames are on the stack tail calls optimizations
> > need to be inhibited. If your compiler supports an attribute use it,
> > otherwise use an asm volatile barrier.
> >
> > The barrier fix was suggested here:
> >
> https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
> >
> > Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
> >        attribute")
>
> missing SOB
>
> LGTM and test is passing for me ;-)
>
> Tested-by: Jiri Olsa <jolsa@redhat.com>
>

Sorry about the SOB:
Signed-of-by: Ian Rogers <irogers@google.com>

I'm somewhat agnostic on what the fix looks like here, but not having it
fixed breaks our continual testing. I filed a bug on GCC here:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97831

Thanks,
Ian

jirka
>
> > ---
> >  tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
> >  1 file changed, 32 insertions(+), 7 deletions(-)
> >
> > diff --git a/tools/perf/tests/dwarf-unwind.c
> b/tools/perf/tests/dwarf-unwind.c
> > index 83638097c3bc..c8ce86bceea8 100644
> > --- a/tools/perf/tests/dwarf-unwind.c
> > +++ b/tools/perf/tests/dwarf-unwind.c
> > @@ -24,6 +24,23 @@
> >  /* For bsearch. We try to unwind functions in shared object. */
> >  #include <stdlib.h>
> >
> > +/*
> > + * The test will assert frames are on the stack but tail call
> optimizations lose
> > + * the frame of the caller. Clang can disable this optimization on a
> called
> > + * function but GCC currently (11/2020) lacks this attribute. The
> barrier is
> > + * used to inhibit tail calls in these cases.
> > + */
> > +#ifdef __has_attribute
> > +#if __has_attribute(disable_tail_calls)
> > +#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
> > +#define NO_TAIL_CALL_BARRIER
> > +#endif
> > +#endif
> > +#ifndef NO_TAIL_CALL_ATTRIBUTE
> > +#define NO_TAIL_CALL_ATTRIBUTE
> > +#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
> > +#endif
> > +
> >  static int mmap_handler(struct perf_tool *tool __maybe_unused,
> >                       union perf_event *event,
> >                       struct perf_sample *sample,
> > @@ -95,7 +112,7 @@ static int unwind_entry(struct unwind_entry *entry,
> void *arg)
> >       return strcmp((const char *) symbol, funcs[idx]);
> >  }
> >
> > -noinline int test_dwarf_unwind__thread(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct
> thread *thread)
> >  {
> >       struct perf_sample sample;
> >       unsigned long cnt = 0;
> > @@ -126,7 +143,7 @@ noinline int test_dwarf_unwind__thread(struct thread
> *thread)
> >
> >  static int global_unwind_retval = -INT_MAX;
> >
> > -noinline int test_dwarf_unwind__compare(void *p1, void *p2)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void
> *p1, void *p2)
> >  {
> >       /* Any possible value should be 'thread' */
> >       struct thread *thread = *(struct thread **)p1;
> > @@ -145,7 +162,7 @@ noinline int test_dwarf_unwind__compare(void *p1,
> void *p2)
> >       return p1 - p2;
> >  }
> >
> > -noinline int test_dwarf_unwind__krava_3(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct
> thread *thread)
> >  {
> >       struct thread *array[2] = {thread, thread};
> >       void *fp = &bsearch;
> > @@ -164,14 +181,22 @@ noinline int test_dwarf_unwind__krava_3(struct
> thread *thread)
> >       return global_unwind_retval;
> >  }
> >
> > -noinline int test_dwarf_unwind__krava_2(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_2(struct
> thread *thread)
> >  {
> > -     return test_dwarf_unwind__krava_3(thread);
> > +     int ret;
> > +
> > +     ret =  test_dwarf_unwind__krava_3(thread);
> > +     NO_TAIL_CALL_BARRIER;
> > +     return ret;
> >  }
> >
> > -noinline int test_dwarf_unwind__krava_1(struct thread *thread)
> > +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_1(struct
> thread *thread)
> >  {
> > -     return test_dwarf_unwind__krava_2(thread);
> > +     int ret;
> > +
> > +     ret =  test_dwarf_unwind__krava_2(thread);
> > +     NO_TAIL_CALL_BARRIER;
> > +     return ret;
> >  }
> >
> >  int test__dwarf_unwind(struct test *test __maybe_unused, int subtest
> __maybe_unused)
> > --
> > 2.29.2.299.gdc1121823c-goog
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/20201114210609.GC903902%40krava
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfXzqnhDJAeO7Q8jWmg4vQjnxDU8qiMzVeie8dVQeUhfFA%40mail.gmail.com.

--000000000000ab9b8f05b41adab3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Nov 14, 2020 at 1:06 PM Jiri Olsa=
 &lt;<a href=3D"mailto:jolsa@redhat.com" target=3D"_blank">jolsa@redhat.com=
</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Fri, Nov 13, 2020 at 04:08:03PM -0800, Ian Ro=
gers wrote:<br>
&gt; To ensure the stack frames are on the stack tail calls optimizations<b=
r>
&gt; need to be inhibited. If your compiler supports an attribute use it,<b=
r>
&gt; otherwise use an asm volatile barrier.<br>
&gt; <br>
&gt; The barrier fix was suggested here:<br>
&gt; <a href=3D"https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.pr=
ogramming.kicks-ass.net/" rel=3D"noreferrer" target=3D"_blank">https://lore=
.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/</a>=
<br>
&gt; <br>
&gt; Fixes: 9ae1e990f1ab (&quot;perf tools: Remove broken __no_tail_call<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 attribute&quot;)<br>
<br>
missing SOB<br>
<br>
LGTM and test is passing for me ;-)<br>
<br>
Tested-by: Jiri Olsa &lt;<a href=3D"mailto:jolsa@redhat.com" target=3D"_bla=
nk">jolsa@redhat.com</a>&gt;<br></blockquote><div><br></div><div>Sorry abou=
t the SOB:</div><div>Signed-of-by: Ian Rogers &lt;<a href=3D"mailto:irogers=
@google.com">irogers@google.com</a>&gt;</div><div><br></div><div>I&#39;m so=
mewhat agnostic on what the fix looks like here, but not having it fixed br=
eaks our continual testing. I filed a bug on GCC here:</div><div><a href=3D=
"https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D97831">https://gcc.gnu.org/=
bugzilla/show_bug.cgi?id=3D97831</a><br></div><div><br></div><div>Thanks,</=
div><div>Ian</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
jirka<br>
<br>
&gt; ---<br>
&gt;=C2=A0 tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++=
------<br>
&gt;=C2=A0 1 file changed, 32 insertions(+), 7 deletions(-)<br>
&gt; <br>
&gt; diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-=
unwind.c<br>
&gt; index 83638097c3bc..c8ce86bceea8 100644<br>
&gt; --- a/tools/perf/tests/dwarf-unwind.c<br>
&gt; +++ b/tools/perf/tests/dwarf-unwind.c<br>
&gt; @@ -24,6 +24,23 @@<br>
&gt;=C2=A0 /* For bsearch. We try to unwind functions in shared object. */<=
br>
&gt;=C2=A0 #include &lt;stdlib.h&gt;<br>
&gt;=C2=A0 <br>
&gt; +/*<br>
&gt; + * The test will assert frames are on the stack but tail call optimiz=
ations lose<br>
&gt; + * the frame of the caller. Clang can disable this optimization on a =
called<br>
&gt; + * function but GCC currently (11/2020) lacks this attribute. The bar=
rier is<br>
&gt; + * used to inhibit tail calls in these cases.<br>
&gt; + */<br>
&gt; +#ifdef __has_attribute<br>
&gt; +#if __has_attribute(disable_tail_calls)<br>
&gt; +#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))<br=
>
&gt; +#define NO_TAIL_CALL_BARRIER<br>
&gt; +#endif<br>
&gt; +#endif<br>
&gt; +#ifndef NO_TAIL_CALL_ATTRIBUTE<br>
&gt; +#define NO_TAIL_CALL_ATTRIBUTE<br>
&gt; +#define NO_TAIL_CALL_BARRIER __asm__ __volatile__(&quot;&quot; : : : =
&quot;memory&quot;);<br>
&gt; +#endif<br>
&gt; +<br>
&gt;=C2=A0 static int mmap_handler(struct perf_tool *tool __maybe_unused,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0union perf_event *event,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0struct perf_sample *sample,<br>
&gt; @@ -95,7 +112,7 @@ static int unwind_entry(struct unwind_entry *entry,=
 void *arg)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return strcmp((const char *) symbol, funcs[i=
dx]);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; -noinline int test_dwarf_unwind__thread(struct thread *thread)<br>
&gt; +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__thread(struct =
thread *thread)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct perf_sample sample;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long cnt =3D 0;<br>
&gt; @@ -126,7 +143,7 @@ noinline int test_dwarf_unwind__thread(struct thre=
ad *thread)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static int global_unwind_retval =3D -INT_MAX;<br>
&gt;=C2=A0 <br>
&gt; -noinline int test_dwarf_unwind__compare(void *p1, void *p2)<br>
&gt; +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__compare(void *=
p1, void *p2)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Any possible value should be &#39;thread&=
#39; */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct thread *thread =3D *(struct thread **=
)p1;<br>
&gt; @@ -145,7 +162,7 @@ noinline int test_dwarf_unwind__compare(void *p1, =
void *p2)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return p1 - p2;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; -noinline int test_dwarf_unwind__krava_3(struct thread *thread)<br>
&gt; +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_3(struct=
 thread *thread)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct thread *array[2] =3D {thread, thread}=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0void *fp =3D &amp;bsearch;<br>
&gt; @@ -164,14 +181,22 @@ noinline int test_dwarf_unwind__krava_3(struct t=
hread *thread)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return global_unwind_retval;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; -noinline int test_dwarf_unwind__krava_2(struct thread *thread)<br>
&gt; +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_2(struct=
 thread *thread)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return test_dwarf_unwind__krava_3(thread);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D=C2=A0 test_dwarf_unwind__krava_3(thread);=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0NO_TAIL_CALL_BARRIER;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; -noinline int test_dwarf_unwind__krava_1(struct thread *thread)<br>
&gt; +NO_TAIL_CALL_ATTRIBUTE noinline int test_dwarf_unwind__krava_1(struct=
 thread *thread)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return test_dwarf_unwind__krava_2(thread);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D=C2=A0 test_dwarf_unwind__krava_2(thread);=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0NO_TAIL_CALL_BARRIER;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 int test__dwarf_unwind(struct test *test __maybe_unused, int sub=
test __maybe_unused)<br>
&gt; -- <br>
&gt; 2.29.2.299.gdc1121823c-goog<br>
&gt; <br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/20201114210609.GC903902%40krava" rel=3D"norefe=
rrer" target=3D"_blank">https://groups.google.com/d/msgid/clang-built-linux=
/20201114210609.GC903902%40krava</a>.<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP-5%3DfXzqnhDJAeO7Q8jWmg4vQjnxDU8qiMzVeie8dV=
QeUhfFA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAP-5%3DfXzqnhDJAeO7Q8jWmg4vQjnxD=
U8qiMzVeie8dVQeUhfFA%40mail.gmail.com</a>.<br />

--000000000000ab9b8f05b41adab3--
