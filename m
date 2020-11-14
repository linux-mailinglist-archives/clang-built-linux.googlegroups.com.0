Return-Path: <clang-built-linux+bncBDPPFIEASMFBBLPVYD6QKGQEO4MADEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3842B3092
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 21:14:38 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id e25sf6150682ljg.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 12:14:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605384877; cv=pass;
        d=google.com; s=arc-20160816;
        b=nOcdvwrXwl5JTUj3qUBlaptrMH0+JMFjoyGOz6o3WFX9zxp7Ge6X39YGu7Wbh+2hoU
         DoXoSFkgflXTrEGBV89xq+jk+yXmQDMyG17ZTS9+sj/Os2+5YdcSIaUy3Jb/lMxHeyr1
         GSIBthA7gDqbrwQyymFU154s4KGUCsvji1sOD0hDsgoi5wljJ9KtBizBh9EAzQiwmeyC
         kibstox9ytfAIS2oZl0+lizFr6Dib8sNMwUQcuhPdMgFjMViPBvOmH+F7rKFS8xs1obH
         chvjW4mF4nl0utOPUhgT+95Jc86ht3FR3LewXqPAgaNi8Kqq3rwjE/jw/d5+PMHF9UGQ
         EQ1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zqNjSQQXmFlJDWz7GX1gs0bqB/6KPGOgniKf2dCKx5E=;
        b=hJJeGLyxcGHwrHCGYpFEDG2rAWue61o5DAyOazNo1Nas3PBScY0UXe2jyx/4AZUIZJ
         tFcVwEqajMpVbhRuN4PgxRJTkx6RYzBdtW09ongRtCtNZKpK9RjV30B6YFEF56VTI3Yk
         ZfjVD3zyrtK5kPtarq7XKbwnK5Eof1ADQaazirwmg6Pjx5dmdjKg4bD8RfQaIMcRPBfy
         isJ0LZoAUL/MXk4gcFbN2SPGNXd/OwWuKShoh1e2ky6G8P6fJEh+IWnDZXuVmXyUIcFy
         9WHOr83sEvjjrHY/zmaSLR4tcXXffCs8MECeX1SoO7g3m9YNKP7XwavR6In/kRYj2r3S
         WWFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RQW9wYTt;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zqNjSQQXmFlJDWz7GX1gs0bqB/6KPGOgniKf2dCKx5E=;
        b=q4OJoqecuFZK30cMMmLft8op35ltp14UeUKcZTtSjlMNT2aRpUka3NVuGP+tAID48O
         cX1GO9JxYp8k85/cBhLXNGIciCSckkJlS5JiuCRbaoElRjvQmcVOgelEj0LcfK3ollmU
         NDpUjt0Z5Lr9lVQaITkAy+eNkWbh8/kDalFAfVIbIJ1/8pR5af0sa2wAbWal57AYXEY5
         q7gI8NQ5rFLhpi3GRyGU4mzKP0pcDbeBo8NEDxRK44fOAuqBFWY0RYexGWdzyL5EwCd6
         OrCynv6NrkldXRrW8MrQvjRB+jSdxSUmTGiRiiYLyFsgTN3nJobSByGCH3n/V26dQMlZ
         twUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zqNjSQQXmFlJDWz7GX1gs0bqB/6KPGOgniKf2dCKx5E=;
        b=bYuxvtlxYsrfeoXncU3G+XguRE4sxnCkJ1NnzxRuFmQGZSW5ken3GsTW2k6v/NeT/Y
         lMFs9wZyZ4W7KGUHkeFdZc0WUL3r/1/cl8qRei1sD5zGn7J6JAXN/hkqzCPWRT9ZDyqN
         d4jbQftCQjMI4/EPACbDPt0LAa6Y7bNwo9u7TAzvSfa228DsMHuAIr4MA4K3G/5UP5kx
         sJW3W8Dk3Knt81TOUKu1WaJ7xui8OsYKBwiRdyA3htcqoOFGSy0HSne0Jx71xzYx1Se+
         FjU+pCmiMu4BHUXdwc2+NuN+vc/mDyHBwaysaTDs3adGNaHODgg+Nv3ZUWTAJLVOsq64
         s7MQ==
X-Gm-Message-State: AOAM531ssEwJrqcqF7s1644movGek1avtiOPz1CgQ/Oz8kPL9kJyHR+4
	c0P2OGqlKcAK/A4T+mGf8p0=
X-Google-Smtp-Source: ABdhPJws6wMsKKxiXTkkd/p3GSphwpVshijvntYiSp/bu2xxqOazaxlvB/D78NwuVcIDQGKglicvUA==
X-Received: by 2002:a05:651c:1067:: with SMTP id y7mr3459843ljm.357.1605384877749;
        Sat, 14 Nov 2020 12:14:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:d0e:: with SMTP id 14ls6453444lfn.0.gmail; Sat, 14 Nov
 2020 12:14:36 -0800 (PST)
X-Received: by 2002:ac2:5cc8:: with SMTP id f8mr3282727lfq.334.1605384876641;
        Sat, 14 Nov 2020 12:14:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605384876; cv=none;
        d=google.com; s=arc-20160816;
        b=MBOEC0Hq64IXqF9/ebyV5TGCwAAge4CG23Fk8cK6Ia2BlFOGM8LFTKnpEQ7TEhraW4
         HHJqCkZjo4M0k+rRpi30BpWZX/FUEFJD9eCsrY1PIbeJHZmwGimZ19oSpYihc2Br+Mzh
         HmXz/bHp4BcoAQd1qirYU4hEyi+N/nK+mkL6nnbwfyYZzI+YYYn0EZKCDIc3lFDRdj8g
         +qT2NYFWepLW+YyNVl/7XOuc++jnca2o5wud+iMyqTT1boSpFk/RHO/1xIUjzQSlLQGS
         7UkpM8+h3483Gy7SZjUmS7qqCpiGoajlkVt9SygT4lyP69sjWoDZNT1aiPMvyxp5i7jE
         0KeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WIGMvMwfwqRVGWqHyrPGyK/RgeCuZe+pZMP4tAPokNQ=;
        b=KSgO02nL+x5aG9CkaDajxWihMWupN+JgSzzrAnfYgf55/P8lsIUQtvcI99O5Xfh/tR
         OZ31O7DUuiveL3rInKwjivsUnSURyQdZDMNMP8YC7OL6ob5DRvEBA/R51BYey6U/IK8f
         zWyKw3JtsiBmFU3WOgOTeIg1tOZSmHBxIoyvRCUjA1za+RAoGBPPdI1NLtQej0udpu0p
         m5ETds7Ud/GCFt29bw73Zz7+zUaCayJv4OmWt0FQKpaNSVDrSScH+XkfLLBZjR2jNQiC
         FXgrzBNBWXVdN7jf8aLgUVIoTwWE7lJPX67EF4RIl1XU03O0CgiEXaHz/DTZxBW5GsKG
         Lp0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RQW9wYTt;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q189si277495ljb.1.2020.11.14.12.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2020 12:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id s13so19784915wmh.4
        for <clang-built-linux@googlegroups.com>; Sat, 14 Nov 2020 12:14:36 -0800 (PST)
X-Received: by 2002:a1c:c909:: with SMTP id f9mr7810084wmb.87.1605384875976;
 Sat, 14 Nov 2020 12:14:35 -0800 (PST)
MIME-Version: 1.0
References: <20201114000803.909530-1-irogers@google.com> <CANiq72m=OK2bF2Nc-ht=ibNa2m6RcBCjFuhrv9kyoxE6yaMqVA@mail.gmail.com>
In-Reply-To: <CANiq72m=OK2bF2Nc-ht=ibNa2m6RcBCjFuhrv9kyoxE6yaMqVA@mail.gmail.com>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 14 Nov 2020 12:14:24 -0800
Message-ID: <CAP-5=fV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs+590VwJVEA@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Stephane Eranian <eranian@google.com>
Content-Type: multipart/alternative; boundary="00000000000043180405b416cbca"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RQW9wYTt;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::344
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

--00000000000043180405b416cbca
Content-Type: text/plain; charset="UTF-8"

On Sat, Nov 14, 2020 at 12:45 AM Miguel Ojeda <
miguel.ojeda.sandonis@gmail.com> wrote:

> On Sat, Nov 14, 2020 at 1:08 AM 'Ian Rogers' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
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
>
> It would be nice to put the GCC version rather than the date.
>

Unfortunately no GCC version actually has this fixed.


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
>
> I would try avoid this nest of conditions and instead do it like in
> `compiler_attributes.h`, i.e. make use of `__has_attribute`
> unconditional by making sure it works for all versions/compilers, and
> then just:
>
>     #if __has_attribute(disable_tail_calls)
>     # define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
>     # define NO_TAIL_CALL_BARRIER
>     #else
>     # define NO_TAIL_CALL_ATTRIBUTE
>     # define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
>     #endif
>
> In fact, I think it would be best to simply have a mimic of
> `compiler_attributes.h` suitable for `tools/`
>

This seems overly complex and unnecessary.

Thanks,
Ian


> Cheers,
> Miguel
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs%2B590VwJVEA%40mail.gmail.com.

--00000000000043180405b416cbca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Nov 14, 2020 at 12:45 AM Miguel O=
jeda &lt;<a href=3D"mailto:miguel.ojeda.sandonis@gmail.com">miguel.ojeda.sa=
ndonis@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On Sat, Nov 14, 2020 at 1:08 AM =
&#39;Ian Rogers&#39; via Clang Built Linux<br>
&lt;<a href=3D"mailto:clang-built-linux@googlegroups.com" target=3D"_blank"=
>clang-built-linux@googlegroups.com</a>&gt; wrote:<br>
&gt;<br>
&gt; To ensure the stack frames are on the stack tail calls optimizations<b=
r>
&gt; need to be inhibited. If your compiler supports an attribute use it,<b=
r>
&gt; otherwise use an asm volatile barrier.<br>
&gt;<br>
&gt; The barrier fix was suggested here:<br>
&gt; <a href=3D"https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.pr=
ogramming.kicks-ass.net/" rel=3D"noreferrer" target=3D"_blank">https://lore=
.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/</a>=
<br>
&gt;<br>
&gt; Fixes: 9ae1e990f1ab (&quot;perf tools: Remove broken __no_tail_call<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 attribute&quot;)<br>
&gt; ---<br>
&gt;=C2=A0 tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++=
------<br>
&gt;=C2=A0 1 file changed, 32 insertions(+), 7 deletions(-)<br>
&gt;<br>
&gt; diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-=
unwind.c<br>
&gt; index 83638097c3bc..c8ce86bceea8 100644<br>
&gt; --- a/tools/perf/tests/dwarf-unwind.c<br>
&gt; +++ b/tools/perf/tests/dwarf-unwind.c<br>
&gt; @@ -24,6 +24,23 @@<br>
&gt;=C2=A0 /* For bsearch. We try to unwind functions in shared object. */<=
br>
&gt;=C2=A0 #include &lt;stdlib.h&gt;<br>
&gt;<br>
&gt; +/*<br>
&gt; + * The test will assert frames are on the stack but tail call optimiz=
ations lose<br>
&gt; + * the frame of the caller. Clang can disable this optimization on a =
called<br>
&gt; + * function but GCC currently (11/2020) lacks this attribute. The bar=
rier is<br>
&gt; + * used to inhibit tail calls in these cases.<br>
&gt; + */<br>
<br>
It would be nice to put the GCC version rather than the date.<br></blockquo=
te><div><br></div><div>Unfortunately no GCC version actually has this fixed=
.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
<br>
I would try avoid this nest of conditions and instead do it like in<br>
`compiler_attributes.h`, i.e. make use of `__has_attribute`<br>
unconditional by making sure it works for all versions/compilers, and<br>
then just:<br>
<br>
=C2=A0 =C2=A0 #if __has_attribute(disable_tail_calls)<br>
=C2=A0 =C2=A0 # define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_c=
alls))<br>
=C2=A0 =C2=A0 # define NO_TAIL_CALL_BARRIER<br>
=C2=A0 =C2=A0 #else<br>
=C2=A0 =C2=A0 # define NO_TAIL_CALL_ATTRIBUTE<br>
=C2=A0 =C2=A0 # define NO_TAIL_CALL_BARRIER __asm__ __volatile__(&quot;&quo=
t; : : : &quot;memory&quot;);<br>
=C2=A0 =C2=A0 #endif<br>
<br>
In fact, I think it would be best to simply have a mimic of<br>
`compiler_attributes.h` suitable for `tools/`<br></blockquote><div><br></di=
v><div>This seems overly complex and unnecessary.</div><div><br></div><div>=
Thanks,</div><div>Ian</div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
Cheers,<br>
Miguel<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP-5%3DfV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs%2B=
590VwJVEA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfV0xe-8GEbnrh8Y4C8nWK2E=
2mGo1iiNpRCs%2B590VwJVEA%40mail.gmail.com</a>.<br />

--00000000000043180405b416cbca--
