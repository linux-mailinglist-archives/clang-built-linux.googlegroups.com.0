Return-Path: <clang-built-linux+bncBDSMRTMFUIFRBRPUV7WAKGQEIIPFARY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ED0BE900
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 01:37:42 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id w8sf835393iol.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 16:37:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569454661; cv=pass;
        d=google.com; s=arc-20160816;
        b=QdAER1Vdt8wZ5mkhG1WUVxiOKtm8jaQgZ7hlwSrqVSnTejjZR6Xg8oAVlbaj8pg/5J
         qOZsTf5iLF2oALLAU8ep1OSlkRAgxYT9sXGrharvxU4cGigF5Oa3c4zUAp7prxGnTpXt
         Azhg6X+vkX6PLUSugcKWd86zZoiOz+MLc4fBDeL/OE0U9rEZX5W5pryns3iuZE7slX/R
         10EiciJ/EKldOwg3MpuiVcTH5hWdrPxxVBxvRERz5z9uu/8jTVVGd57RboUPAz+EgDa4
         jVMr8+0V6/rsY0G/AUEFfoBVPE0YyBLt4mQAMfymvv+p5VCzWadxe5m9u1Vu5zl6tRU1
         qckg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yNFKPoPBwPIhmGCGfVBJX0ORD0qImFpvjYdkC8dUm2Y=;
        b=bEKa12nJe5tSnbZYGgFfXB1+YWo/65Q7bYMnz7j3gN1+WfkdDfxAD7lXPCFYsTjR+f
         lxiDcseMcZXUJKM7LqVePInXgq5XNRJ7HjfX05xs7SMcUjDa95RhYVcoSB0OCmljRLww
         0KICm1vut6FThiTiCOvYc3fWH2VAPDnbPPdHXhiXl87yRaJIb3hb7zgAky5yrgcJAylF
         TDnJGAKxMpajC9YIdFQ1L4DeGhyv4JzLMPUXZBJcOIWe8VQPxEMe5QxS/HNKsAyBwl6H
         ET+mW++PuGCzF8yn4H1cyAKMPTSkavn2r8D+R58dDMTxbM5YRz2jDfUTtxuhvANYm26W
         iBDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n0HrApu9;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNFKPoPBwPIhmGCGfVBJX0ORD0qImFpvjYdkC8dUm2Y=;
        b=E/M/jdQeDVNxtrLA2uSvHqKWfD7wAjRiuJt5CGqtu8GNmBlvq3/6BbuTpG8PX0y2qw
         SYBeNgC1vXAX0vp+cn7nPzu0FKekWXi/tUPWpPN2Ns2qd4to9wYYjxmXxRhguGJOXwoo
         9PPkohjBtNx81en68Yw299fu2HiBdQJb0W+r5cQLdKm08oHX9+2GtO6lR2uLxfWUuka7
         MjjYgFi+6FbX7tzS9zSJIj50ntRXoi4lKQO7oTtmoSUwWYJaEpUpo2kVF7yn2oxBK7zN
         3D9KS8c8ouITamWxZGY/Yppo9eUZ2s4GhUhhqvbBWdEm8CpVfOFHLl4ZxI6FlCIJ263O
         CSSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNFKPoPBwPIhmGCGfVBJX0ORD0qImFpvjYdkC8dUm2Y=;
        b=BWb/bX7sfRZ980oPEYmdfF6oB6J8ga4CFY4u0DVAkaUYMa7SWvyLjr3pDiuPPWZB7b
         L3Ocu3+9NgOSoL91h/E9WwslqjfFm1lfQMsvlT7r1A25K8kXd0CPXlsJxaODYptOcgcf
         tP9Bidsk5xga812MPUX17GfcWEGmCjjG5rAtmNbFBy0AkOkAYnob0eATy7S1mIuVeoWQ
         tS42Ghe+YIkWCeQlLJZ+4nSumlFAPWPot+G2HP/vkFfMIzKOpDzOI01dcDmwHT1vH97E
         s6Aysc651IF/PtdsmmiOVg4FkI53sNX3usB3B1eeZu2DF0R7yL1bHCMj1y1X+b6tIEY2
         xdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNFKPoPBwPIhmGCGfVBJX0ORD0qImFpvjYdkC8dUm2Y=;
        b=Fc2vsvuOZdANeF2Fj1xVOnqtZ0XBTsm5fk1E7Z/WUIJBKEd3QBiKztGaoHLhcedPWx
         SCTKL57kY94hDUkldjkfuoeV0TJnigRqNa9cN+O9L7O+oWiGyJE2Sro8mE0VAc4xw1ap
         q0ZVpfs8y/2hBQGBBvUmwiMYbW8qfv80TxNKnZf86LiD7AQqdS8b6yTPCqkJo31B25RR
         PPNMEJD7waAFb+fmrfnymMjAzPpIgwh3S+ejCoGsVtiu4846yMKUhxNzb1N0wThh7x3F
         YRDUMUjmQZoZzMsqaHzz3EchAawNk7eGedcLTA0oc20edhcGCVGX/0mXgRSvdPJhN8Ka
         VXvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVilxfYZtL8pklhYyHW/3Y6SNDWnyhEUhHqNZEwkMNiUh3BY2S5
	665xm+lI4f+HIDS+tMyA+zA=
X-Google-Smtp-Source: APXvYqwp9CTwDxkqLtrTg4nIV47QLub3b8hH3DE5B5Xec8lX04E4FS2WKDUy/feHKoQLbSoKL4dQjA==
X-Received: by 2002:a5e:a812:: with SMTP id c18mr646299ioa.220.1569454661290;
        Wed, 25 Sep 2019 16:37:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8943:: with SMTP id b3ls100937iot.10.gmail; Wed, 25 Sep
 2019 16:37:41 -0700 (PDT)
X-Received: by 2002:a5d:8b02:: with SMTP id k2mr567005ion.305.1569454660990;
        Wed, 25 Sep 2019 16:37:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569454660; cv=none;
        d=google.com; s=arc-20160816;
        b=eJFT6q682QcjdWU+OwVTLb8Cb9VpKRPfJ9ocAT1JL4cMMak5Snn2OnLGeob5u051Lr
         44tiGz6DCv8iGzJ4d4JOkyF6RGdDK9E53SvblS0suD7eCHtpe5RvpvbH/mmUKc1AGeZc
         VX9gJbb2al9ump8JSMcYrF6KjtOoMDfBRAf8Ejx0PhmnU4dfk9KSTnmxr8DNlBe1U19Z
         WsVM6iZd9Le2zqO6WBh5Emi+q9OLEOlZiU5hQPCxctv6RVnLJugDScmzpELIxbJSub9L
         k/eQIaSuSP0Oekr0EFU1e+SyiHaDRECD8tojQqaR4n/G2GA1GT3X8d9GOpCIUcER4PNB
         4vpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=COPbZV3eNz2oNbvLWO3Un+fsFauHx5knFFpF9NT5bog=;
        b=HyYxKmsx8H5gdoE8eyWBQRhs4z/rUNq0xnZp2msKsGCQ6m0hHtGN5ym6P3jVihPd2U
         ZKif4CQeVJi5UC5jJ2NcaE6NUVAknRyNWouRR0AY8r5WWzyAtZAfRBilFiRjSUjES+JF
         RZRnm2Gxmgdm4JB3f1/fNurieq6v/31gF0CDpMYaiTpucsRoe7FgAt7vwjmWyfql+4Cp
         OTiOi56TVwBr6R2ZvsPYTc6kmF5Xqi3nnP1KtvoVoBwqqX93vZGjPD6WyN6e43Y61m26
         dA5hevm4L96JjZvjDBC08q+apa4UEfU41gOSMBDNZ0gg2gvxJ5yjENYOxSooAC/o8nHc
         aNnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n0HrApu9;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s5si32305iol.1.2019.09.25.16.37.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 16:37:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id w6so454559oie.11
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 16:37:40 -0700 (PDT)
X-Received: by 2002:a54:4f8f:: with SMTP id g15mr488778oiy.62.1569454660620;
 Wed, 25 Sep 2019 16:37:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190925172915.576755-1-natechancellor@gmail.com> <CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
In-Reply-To: <CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
From: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Date: Thu, 26 Sep 2019 01:37:29 +0200
Message-ID: <CAOrgDVMqOqKtY-9FNV5iHWmz6GFqsH=ugwYp77Zwfr3Niw0ebg@mail.gmail.com>
Subject: Re: [PATCH] tracing: Fix clang -Wint-in-bool-context warnings in
 IF_ASSIGN macro
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ingo Molnar <mingo@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000008994ec059369238a"
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=n0HrApu9;       spf=pass
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

--0000000000008994ec059369238a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

GCC C frontend does not warn, GCC C++ FE does. https://godbolt.org/z/_sczyM

So I (we?) think there is something weird in gcc frontends.

>> I can't think of a case that this warning is a bug (maybe David can
explain more),

In this case or generally? General bug example:

if (state =3D=3D A || B)

(should be if (state =3D=3D A || state =3D=3D B))

Since this is just one occurrence and I recommend to just land this small
fix.



st 25. 9. 2019 o 19:41 Nick Desaulniers <ndesaulniers@google.com>
nap=C3=ADsal(a):

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
> > Link:
> https://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891b2db30652=
cfd962f070b
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
> > @@ -365,11 +365,11 @@ static inline struct trace_array
> *top_trace_array(void)
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
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAOrgDVMqOqKtY-9FNV5iHWmz6GFqsH%3DugwYp77Zwfr3Niw0ebg%40m=
ail.gmail.com.

--0000000000008994ec059369238a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">GCC C frontend does not warn, GCC C++ FE does.=C2=A0<a hre=
f=3D"https://godbolt.org/z/_sczyM">https://godbolt.org/z/_sczyM</a><div><br=
></div><div>So I (we?) think there is something weird in gcc frontends.</di=
v><div><br></div><div>&gt;&gt; I can&#39;t think of a case that this warnin=
g is a bug (maybe David can</div>explain more),<div><br></div><div>In this =
case or generally? General bug example:</div><div><br></div><div>if (state =
=3D=3D A || B)</div><div><br></div><div>(should be if (state =3D=3D A || st=
ate =3D=3D B))</div><div><br></div><div>Since this is just one occurrence=
=C2=A0and I recommend to just land this small fix.</div><div><div><br></div=
><div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">st 25. 9. 2019 o=C2=A019:41 Nick Desaulniers &lt;<a h=
ref=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; nap=
=C3=ADsal(a):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 Wed, Sep 25, 2019 at 10:29 AM Nathan Chancellor<br>
&lt;<a href=3D"mailto:natechancellor@gmail.com" target=3D"_blank">natechanc=
ellor@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; After r372664 in clang, the IF_ASSIGN macro causes a couple hundred<br=
>
&gt; warnings along the lines of:<br>
&gt;<br>
&gt; kernel/trace/trace_output.c:1331:2: warning: converting the enum<br>
&gt; constant to a boolean [-Wint-in-bool-context]<br>
&gt; kernel/trace/trace.h:409:3: note: expanded from macro<br>
&gt; &#39;trace_assign_type&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IF_ASSIGN=
(var, ent, struct ftrace_graph_ret_entry,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>
&gt; kernel/trace/trace.h:371:14: note: expanded from macro &#39;IF_ASSIGN&=
#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ON(i=
d &amp;&amp; (entry)-&gt;type !=3D id);=C2=A0 =C2=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt; 264 warnings generated.<br>
&gt;<br>
&gt; Add the implicit &#39;!=3D 0&#39; to the WARN_ON statement to fix the =
warnings.<br>
&gt;<br>
&gt; Link: <a href=3D"https://github.com/llvm/llvm-project/commit/28b38c277=
a2941e9e891b2db30652cfd962f070b" rel=3D"noreferrer" target=3D"_blank">https=
://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891b2db30652cfd962f=
070b</a><br>
&gt; Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/686" =
rel=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/lin=
ux/issues/686</a><br>
&gt; Signed-off-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@=
gmail.com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
<br>
I can&#39;t think of a case that this warning is a bug (maybe David can<br>
explain more), but seems like a small fix that can stop a big spew of<br>
warnings, and IIUC this is the lone instance we see in the kernel.=C2=A0 In=
<br>
that case, I prefer a tiny change to outright disabling the warning in<br>
case it does find interesting cases later.<br>
Reviewed-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com=
" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br>
<br>
&gt; ---<br>
&gt;=C2=A0 kernel/trace/trace.h | 10 +++++-----<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h<br>
&gt; index 26b0a08f3c7d..f801d154ff6a 100644<br>
&gt; --- a/kernel/trace/trace.h<br>
&gt; +++ b/kernel/trace/trace.h<br>
&gt; @@ -365,11 +365,11 @@ static inline struct trace_array *top_trace_arra=
y(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__builtin_types_compatible_p(typeof(v=
ar), type *)<br>
&gt;<br>
&gt;=C2=A0 #undef IF_ASSIGN<br>
&gt; -#define IF_ASSIGN(var, entry, etype, id)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (FTRACE_CMP_TYPE(var, etype)) {=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0var =3D (typeo=
f(var))(entry);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ON(id &am=
p;&amp; (entry)-&gt;type !=3D id);=C2=A0 =C2=A0 =C2=A0\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +#define IF_ASSIGN(var, entry, etype, id)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (FTRACE_CMP_TYPE(var, etype)) {=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0var =3D (typeo=
f(var))(entry);=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ON(id !=
=3D 0 &amp;&amp; (entry)-&gt;type !=3D id);=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 /* Will cause compile errors if type is not found. */<br>
&gt; --<br>
&gt; 2.23.0<br>
&gt;<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAOrgDVMqOqKtY-9FNV5iHWmz6GFqsH%3DugwYp77Zwfr3=
Niw0ebg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAOrgDVMqOqKtY-9FNV5iHWmz6GFqsH%3=
DugwYp77Zwfr3Niw0ebg%40mail.gmail.com</a>.<br />

--0000000000008994ec059369238a--
