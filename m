Return-Path: <clang-built-linux+bncBDSMRTMFUIFRBLPVV7WAKGQENJPG7VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D38CBE902
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 01:39:26 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id c190sf343255oig.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 16:39:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569454765; cv=pass;
        d=google.com; s=arc-20160816;
        b=i6Vyl31xzTBKodWFgxJGFb0KojeDWgeMP2INRcoAv9zdaLz6+MwtlOEbUJUbMV4Ut0
         OlsMrxkIt3pKcRzPzng4XNNGTUBRIevhxvLl5ArUcoQAYCsOjRG/2sx0feIFhpdBz9m8
         aJx2S+844psIIU1zDK1LxkPsinn2/8JFiO8a1kLXvXYrS/zENwk5tP8FdJYDdFuAMBdR
         938I76Jfg+1azVlqlUrw2i9B/y9IMwtQzz6VtulIPwzQeu1WbYS8LJHz9mcJIAbJONWr
         rCq+kKJb8DD+qbwx6bi4gYj1dUxijDDrJt6rRBACkIPPazPioAZgDlkOgW206FKBZ5z5
         jtLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5wbjzmETYPhLmXcFJ5cOGO0bNxnrhtfXyLnCBpySgAo=;
        b=AviHqDgda4kiuDwrZUzGRtlyJP58XhaCLHzKqFEekoORV31bQzVv/WEjd7ndwAwl54
         WfdGf127bzO9QayTFcjarmoPADYj3xbkwJZSR0NpYMmT6ow+c7CeuUfqQD5fIRX9/x67
         3f8kLEeeQ4M88veW4wlZxqayTaKJ3LpardRYij//euajXpJbTyryM/EBVdQVyxhXOZ1p
         4cbXQU2ZTOjBLIprOZl4l+RmPktvNde4ds3J6BUoGeuyAAdL5Uz0LVLJIOQ/X/wLzkGA
         BfzYIY/oSguJ2OTzYg+jJIitAyMHUGRhpOjVsKJlb4L+v1SWUNM4lo/YbimQh8pGyGIT
         rKcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="LtDNW/Nj";
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5wbjzmETYPhLmXcFJ5cOGO0bNxnrhtfXyLnCBpySgAo=;
        b=EPRBEdzYNBM0PEyrGS8GjDIt+zOn3GvDVCTVVEHD/IJZcubPt+LWWYDZuw2zbUJaLT
         Wp38+FR9x3cTUdam6VxnVJGnoTlprx3FzO+Y5IyCmRJeDUh8S25J2FNeaiNt74vp0hSo
         rEz4EKbebBM2PVvop/EHaKWaV1uFd9wid/tYlAYQ2MVWtv32wAUwyHFfMch24KDtV7G+
         pKIvR5f7YpkKP1mWzSqza9WphA4NuwSI4CUmJi2stYXOz7hStctuw7P4LvQ7Q575fssf
         QjG2m9rF+1tz56YvK0aM5c0ydMC4CMwCyKILCUgv1px5qMuOA7UbkRJys2qbsMXh1VVJ
         LMvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5wbjzmETYPhLmXcFJ5cOGO0bNxnrhtfXyLnCBpySgAo=;
        b=p3dBJUQCEQ2Y/ArPTlDEre0CRJWxAQfYQVus9Wxbwf3ut4SWf4WBBXVyk4KLkN+vya
         FWktQVquDPk64ipK9w4btiv1bwELK9tu+ba5N6tLsF+fX0jiDs8Icf65dL18GbdNOXK/
         X+a6QOEvz/tMNm0xBT96+nS1w51Qe09zZTh/6sYXDWx7GSeZAVHjmpjPGQl3EzqEuhaX
         rolP0zgdBSgGIIaUT642DxbqerSpWqLaBsxKBLLdysNvVDFlYL12lmfNmrxe4p9lPM6Q
         gamtx7WM7PkczHoIa1B1fhknQZ2jzkyTqt8+BIcDjjyFyXDbrkY9gPBbaDfZjN4qdvbl
         ofVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5wbjzmETYPhLmXcFJ5cOGO0bNxnrhtfXyLnCBpySgAo=;
        b=dFsEkD8OgPnqmXEbu3Nw3YHldeBZNQshzaIBhjjGJ3/k3x2hnMSdXVV6x1W4MIpSIF
         KOejkmVPDoRYKufOw/0WClAqdpHdRcSqQBENfn6+L433UWIRoGYCgcNuuiAUS21X2Qyr
         ulx5SXAUlTmJCcHEMB7wNY8AVG0USyH7aSm54TmGAzBqCj9TkVBT1Kr9/eETP3v40hYe
         /+pnp0+76CvtbwKV6mgI9YieGDQ14Bgl4FbIy0fxAPI6dqoMdw+11OFLSivqdsr1dVIO
         1sjqhmVQhq8dl+yJ9636evzsk+S30YnbcYH19F0N/n3ru4zNFa7LJ6xyNWi94WOt9jkf
         MNgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjwXLstz8TV55mboefeyE6ZTzs8aYDzLOtpQTLM0+ncXLiDMnE
	BnJ4tOZNxgPfsJQ7RpYD2nA=
X-Google-Smtp-Source: APXvYqzZhAartzKRmJreTHqCohKQNrBufZCGeeyjHwT4HGAzHGr6C0AZqbLuZxj5YrajBMuN54IggA==
X-Received: by 2002:aca:b246:: with SMTP id b67mr470244oif.177.1569454765156;
        Wed, 25 Sep 2019 16:39:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1d1:: with SMTP id e75ls80753ote.15.gmail; Wed, 25 Sep
 2019 16:39:24 -0700 (PDT)
X-Received: by 2002:a9d:3e4e:: with SMTP id h14mr565586otg.198.1569454764850;
        Wed, 25 Sep 2019 16:39:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569454764; cv=none;
        d=google.com; s=arc-20160816;
        b=mwVdzkZbNSvo+KZ5/5155LH6eQuQ3GrWj7romRgPSWWIwzgT0xnAa7ivGiwX+u/m5+
         LnQJlwAzPjERPQXhA/oQ9qdrS23CbEemqfgi9DZp9LzOddQboPwtiqoI38lzR16ful6N
         yBBYhEP4oZKh77Hyl2aygRW946ACQKo25TxDEdqJkUCucubD9rciUr6m2DXU3QJ4Wri3
         KHLtDa2R4KVWrAmC1xHzFV0h8Flx7XJ/VqoPLieQj+F46I/ucUc9HLUevS03CSKHjyji
         CJz/yyST7gm5+MU9aTqvbr/JwmLF3wYmd6Rhvw8yxw7K4D/WpSjpqolwC0MBjz1fLQmY
         oW6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yqcgz+D1upqj7NXuebKigdWJo9KSrUKs3K7BfmtQMAY=;
        b=p6s99kKYxqGkWtTjmM3ZRDUs+a4Q33PhdNftrqp8XHAUsUOFUtRiCuB8hLoJxICUCS
         +nYi8SS20G5e50TTXhvG9sg47+6Qm5SkmnZ5LzaoSUdd7xmkI9xi1dQahtv2gIw+pfXf
         AeQQ/dFtt8zFAB0ydtXwKEmsCw18FD6PxsoCLZw+Zqoa2UYATgfB+NxSD8Efb7Tvu82/
         riluWC2dV0Lg5DSzE5a4p1jCl5Cryq1NqdUI35lfLBvRLcsu3stjIj9ZyvQBdhPauZdH
         6ntp64SsgwiwekaH02MFFG+1yUNSkbT1bdGvvHq0omEAhs8blm7nWzZViEIqXAOx4T8M
         xWWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="LtDNW/Nj";
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id i19si53960otk.0.2019.09.25.16.39.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 16:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id o205so450871oib.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 16:39:24 -0700 (PDT)
X-Received: by 2002:a54:4f11:: with SMTP id e17mr503340oiy.46.1569454764540;
 Wed, 25 Sep 2019 16:39:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190925172915.576755-1-natechancellor@gmail.com> <CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
In-Reply-To: <CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
From: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Date: Thu, 26 Sep 2019 01:39:13 +0200
Message-ID: <CAOrgDVOLUTcbLNJQH3RFL13iWKL_GMnjsyUeW+iFrmvacLcHaQ@mail.gmail.com>
Subject: Re: [PATCH] tracing: Fix clang -Wint-in-bool-context warnings in
 IF_ASSIGN macro
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ingo Molnar <mingo@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000bb480205936929a1"
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="LtDNW/Nj";       spf=pass
 (google.com: domain of david.bolvansky@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
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

--000000000000bb480205936929a1
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
> > Link:
https://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891b2db30652cf=
d962f070b
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
*top_trace_array(void)
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
clang-built-linux/CAOrgDVOLUTcbLNJQH3RFL13iWKL_GMnjsyUeW%2BiFrmvacLcHaQ%40m=
ail.gmail.com.

--000000000000bb480205936929a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">GCC C frontend does not warn, GCC C++ FE does. <a href=3D"=
https://godbolt.org/z/_sczyM">https://godbolt.org/z/_sczyM</a><br><br>So I =
(we?) think there is something weird in gcc frontends.<br><br>&gt;&gt; I ca=
n&#39;t think of a case that this warning is a bug (maybe David can<br>expl=
ain more),<br><br>In this case or generally? General bug example:<br><br>if=
 (state =3D=3D A || B)<br><br>(should be if (state =3D=3D A || state =3D=3D=
 B))<br><br>Since this is just one occurrence and I recommend to just land =
this small fix.<br><br>st 25. 9. 2019 o 19:41 Nick Desaulniers &lt;<a href=
=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; nap=C3=
=ADsal(a):<br>&gt;<br>&gt; On Wed, Sep 25, 2019 at 10:29 AM Nathan Chancell=
or<br>&gt; &lt;<a href=3D"mailto:natechancellor@gmail.com">natechancellor@g=
mail.com</a>&gt; wrote:<br>&gt; &gt;<br>&gt; &gt; After r372664 in clang, t=
he IF_ASSIGN macro causes a couple hundred<br>&gt; &gt; warnings along the =
lines of:<br>&gt; &gt;<br>&gt; &gt; kernel/trace/trace_output.c:1331:2: war=
ning: converting the enum<br>&gt; &gt; constant to a boolean [-Wint-in-bool=
-context]<br>&gt; &gt; kernel/trace/trace.h:409:3: note: expanded from macr=
o<br>&gt; &gt; &#39;trace_assign_type&#39;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 IF_ASSIGN(var, ent, struct ftrace_gr=
aph_ret_entry,<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^<br>&gt; &gt; kernel/trace/trace.h:371:14: note: expanded from =
macro &#39;IF_ASSIGN&#39;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 WARN_ON(id &amp;&amp; (entry)-&gt;type !=3D id); =C2=
=A0 =C2=A0 \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>&gt; &gt; 264 warnings=
 generated.<br>&gt; &gt;<br>&gt; &gt; Add the implicit &#39;!=3D 0&#39; to =
the WARN_ON statement to fix the warnings.<br>&gt; &gt;<br>&gt; &gt; Link: =
<a href=3D"https://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891=
b2db30652cfd962f070b">https://github.com/llvm/llvm-project/commit/28b38c277=
a2941e9e891b2db30652cfd962f070b</a><br>&gt; &gt; Link: <a href=3D"https://g=
ithub.com/ClangBuiltLinux/linux/issues/686">https://github.com/ClangBuiltLi=
nux/linux/issues/686</a><br>&gt; &gt; Signed-off-by: Nathan Chancellor &lt;=
<a href=3D"mailto:natechancellor@gmail.com">natechancellor@gmail.com</a>&gt=
;<br>&gt;<br>&gt; I can&#39;t think of a case that this warning is a bug (m=
aybe David can<br>&gt; explain more), but seems like a small fix that can s=
top a big spew of<br>&gt; warnings, and IIUC this is the lone instance we s=
ee in the kernel.=C2=A0 In<br>&gt; that case, I prefer a tiny change to out=
right disabling the warning in<br>&gt; case it does find interesting cases =
later.<br>&gt; Reviewed-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesauln=
iers@google.com">ndesaulniers@google.com</a>&gt;<br>&gt;<br>&gt; &gt; ---<b=
r>&gt; &gt; =C2=A0kernel/trace/trace.h | 10 +++++-----<br>&gt; &gt; =C2=A01=
 file changed, 5 insertions(+), 5 deletions(-)<br>&gt; &gt;<br>&gt; &gt; di=
ff --git a/kernel/trace/trace.h b/kernel/trace/trace.h<br>&gt; &gt; index 2=
6b0a08f3c7d..f801d154ff6a 100644<br>&gt; &gt; --- a/kernel/trace/trace.h<br=
>&gt; &gt; +++ b/kernel/trace/trace.h<br>&gt; &gt; @@ -365,11 +365,11 @@ st=
atic inline struct trace_array *top_trace_array(void)<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 __builtin_types_compatible_p(typeof(var), type *)<br>&=
gt; &gt;<br>&gt; &gt; =C2=A0#undef IF_ASSIGN<br>&gt; &gt; -#define IF_ASSIG=
N(var, entry, etype, id) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \=
<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 if (FTRACE_CMP_TYPE(var, etype)) { =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 var =3D (typeof(var))(entry); =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 WARN_ON(id &amp;&amp; (entry)-&gt;type !=3D id)=
; =C2=A0 =C2=A0 \<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 break; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt; +=
#define IF_ASSIGN(var, entry, etype, id) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &gt; + =C2=A0 =C2=A0 =
=C2=A0 if (FTRACE_CMP_TYPE(var, etype)) { =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt; + =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 var =3D (typeof(var))(entry); =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &g=
t; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 WARN_ON(id !=3D 0 &am=
p;&amp; (entry)-&gt;type !=3D id); =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt=
; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Will cause=
 compile errors if type is not found. */<br>&gt; &gt; --<br>&gt; &gt; 2.23.=
0<br>&gt; &gt;<br>&gt;<br>&gt;<br>&gt; --<br>&gt; Thanks,<br>&gt; ~Nick Des=
aulniers</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAOrgDVOLUTcbLNJQH3RFL13iWKL_GMnjsyUeW%2BiFrmv=
acLcHaQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAOrgDVOLUTcbLNJQH3RFL13iWKL_GMnj=
syUeW%2BiFrmvacLcHaQ%40mail.gmail.com</a>.<br />

--000000000000bb480205936929a1--
