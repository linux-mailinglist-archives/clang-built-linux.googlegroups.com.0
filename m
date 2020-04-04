Return-Path: <clang-built-linux+bncBCPOH6HGVYKRBAFVT72AKGQEUE274YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CA519E1FE
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 02:53:21 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id x89sf8617390otb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 17:53:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585961600; cv=pass;
        d=google.com; s=arc-20160816;
        b=qwHIA5vYrcmyiNfL0Zc3t43ah7OpuMYdpG/rn68aYetEL59xHx5cLpSkqATE1o3Lfs
         hXg8LKHmC64QhIlFMVBBf1rw0lvWsCixj0/IFBsR2y/Jezx/AGuT3wIXBJ3GV70U2HQx
         CzhlxFUuCxFtV+tzSZxJLlFJJCKwLHtZ0pI+Za7xoCcOpWPE7m1pEjon6A3Y6Tqv4vXT
         71kC3X5zEputxJtKlWqEh/kzNcLGiCfTNYwPp2TyvszKsf+UtaX3G2o5cofoybJdnDDJ
         gtVT23n8Er4z0A1vYhfa7b+7IRDWkEHJ3fzDajarv8FnR3c9qZyHPOl+nAbAS2SkhiSH
         ko3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=81QZGRIj+mtoPH7X+5urBOUxVL1UAy2xiTpXe9Inrbc=;
        b=VGtDSyNaSL7UCvO+4cJ/o/q6EIqlVJc1U1hLm3BGh2IWTlxhVYezJZJV19+1p4vHom
         pVJndKxZD0igLsyGHimMxXO+tHYl4+VVFH0bqsOql2ItkK8DuGqdpk6Ah/7e0WQowi5c
         LUOOiIsjIDQ/chw2IuaGmRGkLWU+b07ZhVaDPFvWwTBeWYYn8g1tlKAeY26lRmjwTVq1
         tA5RukQpnQxZKxYBy17DHQOJ5QKXZrXXcy3is2gSbitWrrgTAIOrL24WhrH6JgMCR75l
         eqQbOc+9Xcj3gnnnkK9SioEzC17xNGA1extT6WCglDPcuaElHtHvWOAZtf+b2uRfK84r
         n/7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q6lxRh0e;
       spf=pass (google.com: domain of gulshan.yaadav@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=gulshan.yaadav@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=81QZGRIj+mtoPH7X+5urBOUxVL1UAy2xiTpXe9Inrbc=;
        b=oqfM6r9YINYTqTgmUY1VLkxHtWzgHXPv+Z9N9r4cxsT0r0qmKQmPJDJu5MeZPy7yrZ
         gB8iLFwf++8boe7hHm/qMJp2CVC/LgwrPVaPi0hzD8fEoLkVwUVEQZ7KT/ITuKAWE4kB
         8/uA5qdEnLzSImvmpVhTLtK+nZVKpCwYDEdQhrJSp10yBFWh7lqhE8LGNUsyPHAqRSuk
         es9SfGzMllsgl+WZhkMJdoHenwY6iiGfsanGn7dwnaM3KWOikuNtgx+r/q7tiwBhnXnh
         lz0tmeOuH9X5q/ndpTWVh0IS4PPgQLAxfJwvxkrtz6OSzRPAUNA2eQwLEqzFfVlJcAes
         wHgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=81QZGRIj+mtoPH7X+5urBOUxVL1UAy2xiTpXe9Inrbc=;
        b=bbpdMzOIEtnFM1+PV5cSNqtwO1gOg7fUfMNGr+OcYMvEGwHVP0qaZfooEC+PAVAc+H
         xTek/nUCT13sWq7N7SwmlC2WeG/KX6rymoChRiGstVkjh2DCKNJMy+sEQtlJGmnfYKw8
         1wu3woCBz8hifqmVeq0JLhhh2lSfqUDiQ//er96P38eIFim9iymYyfuAtptP7Xk5ecQg
         JfUKoqT4xVBXDrjXFo4YQxmR5l2qaKzUnKiafU0aHMxWjr7lPTLtjYLpc0q43FbBS3xL
         qLBrLwpbNiiHxP5g0lAzGROLoYGHWw2Y86uvjh4K8aioZ8/aLUYmRL1Pv2ROD64gwjjE
         3wgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=81QZGRIj+mtoPH7X+5urBOUxVL1UAy2xiTpXe9Inrbc=;
        b=JcTqLss1K4nSjCG/OYnBNUeY54csRsNwTujgY90sweBAMv2du7W+L6f2e/dhb0/Qrq
         fiUO2gAfYow2Zwk5jSHxJM6mlHlSzs1wceM2coR1AKwHAr8aZ6JnxPt7pYyAelhaqIv7
         dYBAC+gKIsPLcQzPpc+mGQQI1/7ZtSurcPuvV6VS/4PbFzfd3eFzSVO6syKodovMh5/T
         8Yi48dgL7jIIx+xK0JHkHZDYCvdFGwBQnR8pmg7iFh8KMzPhLZ1OQYhEmiX2GGir5rW9
         lq1x2WNEUarsK1FXIsie3/Zk97dbBTyATzrCZHF+/BxklLUz1oTQTpK361/Nn4/A7HeM
         mD1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubJr3YIommOyWCUe4xkPu+L/obRJegyyG1gBVYB7B9dcfbidxf7
	8BxCghBwJr0kjpO/tvTRdV4=
X-Google-Smtp-Source: APiQypLjYJsbpKX9Z/ANwcW04MofyF7aJF5CyArWbtHQGiQiZuAwYnfUnAXztiTKgt9S4Q+ZpL8aFA==
X-Received: by 2002:aca:f084:: with SMTP id o126mr5407080oih.81.1585961600394;
        Fri, 03 Apr 2020 17:53:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2425:: with SMTP id k5ls3970455ots.2.gmail; Fri, 03
 Apr 2020 17:53:19 -0700 (PDT)
X-Received: by 2002:a05:6830:239b:: with SMTP id l27mr8870984ots.278.1585961599888;
        Fri, 03 Apr 2020 17:53:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585961599; cv=none;
        d=google.com; s=arc-20160816;
        b=pN+E99S1ZHRsLY6DScVcVPO8HTi1PRVm/jiIxhW7oGNmUySs/J7G+d0Q1/I5KX+vfs
         zZ0zPoN403q60DW73vBxGB1wyOchnKs9TH/elusXpwr4P5bxsp/BqcWPWvtMUvhM2JjB
         XxvqZz6Jr8Muv3hZoU0bbqH7VvTpoOrVnMmalcNxADt5ScwmtfjuPEbC9+dd4dTc++fW
         CJBBSDyyhXtncaykNFPqH1pGsRkOfhuoWcGBBpVQwt90ydrFdpqBHwlmeQRzF0/x8Z1o
         e6O/WZHGyav3PFkl6ryp01mNVP2iqiAec6JB1fr6/cY48t0gSR8EL3ZFwPHCa5VH3ue7
         uYKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UcAG4NOe0qdwfT2U+sSHg2ww2U02bQtJh4Hw+m97f/Y=;
        b=sdOIckYtt7RYdKwKdp2+XwO47XOwzGDrm4j2B+z+HEzqW/RFXkaarPAwIfH7A3tInW
         Le57eJ1nr8+RCLQWsk+QzCQdXA8gKL0hUpx3aYtHXDwfdlOqLplhwXvsCAcJcM/7DTOz
         yHifLVqgBFDIG7Ha7hQhlW/bxuIM2OfiXQiHUkGYe14PblEU8ClzEhiHAc6w3CkQPKjP
         dJP813jn3baniP3TVKIVajug8tf90SYMj4QxQ/c73v7e6q61b1yygC+f9S9KGDji0l+j
         SjrfvwRBNAQENhTzWWklF60g2nxs2+7dnSdYIP8HSb+zJk/wWFt481xoa2wkQbZd6RSI
         jVFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q6lxRh0e;
       spf=pass (google.com: domain of gulshan.yaadav@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=gulshan.yaadav@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id x23si835567oif.2.2020.04.03.17.53.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 17:53:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gulshan.yaadav@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id m14so7891320oic.0
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 17:53:19 -0700 (PDT)
X-Received: by 2002:a05:6808:b30:: with SMTP id t16mr5157842oij.66.1585961599615;
 Fri, 03 Apr 2020 17:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200325231250.99205-1-ndesaulniers@google.com>
 <CAKwvOdm8tQaa6BW7EQAz4TxFZETnJCS3z9isY4HvcU7UYqWZUA@mail.gmail.com> <20200403222458.GA49554@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200403222458.GA49554@ubuntu-m2-xlarge-x86>
From: Gulshan Kumar <gulshan.yaadav@gmail.com>
Date: Sat, 4 Apr 2020 06:22:53 +0530
Message-ID: <CAHDfHbcmqyG5ddSVyZnAaM2p8R-0f=dE9deZfnizT3_M0pc55g@mail.gmail.com>
Subject: Re: [PATCH] elfnote: mark all .note sections SHF_ALLOC
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000c5c75805a26c753f"
X-Original-Sender: gulshan.yaadav@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q6lxRh0e;       spf=pass
 (google.com: domain of gulshan.yaadav@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=gulshan.yaadav@gmail.com;
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

--000000000000c5c75805a26c753f
Content-Type: text/plain; charset="UTF-8"

unsubscribe



On Sat, Apr 4, 2020 at 3:56 AM Nathan Chancellor <natechancellor@gmail.com>
wrote:

> On Fri, Apr 03, 2020 at 03:13:34PM -0700, 'Nick Desaulniers' via Clang
> Built Linux wrote:
> > dropping Jeremy; I got bounceback from the email address. Ping for
> review?
> >
> > On Wed, Mar 25, 2020 at 4:13 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > ELFNOTE_START allows callers to specify flags for .pushsection
> assembler
> > > directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC. For
> > > vdso's that explicitly use ELF_NOTE_START and BUILD_SALT, the same
> > > section is specified twice after preprocessing, once with "a" flag,
> once
> > > without. Example:
> > >
> > > .pushsection .note.Linux, "a", @note ;
> > > .pushsection .note.Linux, "", @note ;
> > >
> > > While GNU as allows this ordering, it warns for the opposite ordering,
> > > making these directives position dependent. We'd prefer not to
> precisely
> > > match this behavior in Clang's integrated assembler.  Instead, the non
> > > __ASSEMBLY__ definition of ELF_NOTE uses
> > > __attribute__((section(".note.Linux"))) which is created with
> SHF_ALLOC,
> > > so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
> > > and just always use "a" flag.
> > >
> > > This allows Clang to assemble a working mainline (5.6) kernel via:
> > > $ make CC=clang AS=clang
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/913
> > > Cc: Jeremy Fitzhardinge <jeremy@xensource.com>
> > > Debugged-by: Ilie Halip <ilie.halip@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> > > ---
> > > Ilie has further treewide cleanups:
> > > https://github.com/ihalip/linux/commits/elfnote
> > > This patch is the simplest to move us forwards.
> > >
> > >  include/linux/elfnote.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
> > > index 594d4e78654f..69b136e4dd2b 100644
> > > --- a/include/linux/elfnote.h
> > > +++ b/include/linux/elfnote.h
> > > @@ -54,7 +54,7 @@
> > >  .popsection                            ;
> > >
> > >  #define ELFNOTE(name, type, desc)              \
> > > -       ELFNOTE_START(name, type, "")           \
> > > +       ELFNOTE_START(name, type, "a")          \
> > >                 desc                    ;       \
> > >         ELFNOTE_END
> > >
> > > --
> > > 2.26.0.rc2.310.g2932bb562d-goog
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHDfHbcmqyG5ddSVyZnAaM2p8R-0f%3DdE9deZfnizT3_M0pc55g%40mail.gmail.com.

--000000000000c5c75805a26c753f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">unsubscribe<div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><br></div></div><=
/div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Apr 4, 2020 at 3:56 AM Nathan Chancellor &lt;<a hre=
f=3D"mailto:natechancellor@gmail.com">natechancellor@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Apr 0=
3, 2020 at 03:13:34PM -0700, &#39;Nick Desaulniers&#39; via Clang Built Lin=
ux wrote:<br>
&gt; dropping Jeremy; I got bounceback from the email address. Ping for rev=
iew?<br>
&gt; <br>
&gt; On Wed, Mar 25, 2020 at 4:13 PM Nick Desaulniers<br>
&gt; &lt;<a href=3D"mailto:ndesaulniers@google.com" target=3D"_blank">ndesa=
ulniers@google.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; ELFNOTE_START allows callers to specify flags for .pushsection as=
sembler<br>
&gt; &gt; directives.=C2=A0 All callsites but ELF_NOTE use &quot;a&quot; fo=
r SHF_ALLOC. For<br>
&gt; &gt; vdso&#39;s that explicitly use ELF_NOTE_START and BUILD_SALT, the=
 same<br>
&gt; &gt; section is specified twice after preprocessing, once with &quot;a=
&quot; flag, once<br>
&gt; &gt; without. Example:<br>
&gt; &gt;<br>
&gt; &gt; .pushsection .note.Linux, &quot;a&quot;, @note ;<br>
&gt; &gt; .pushsection .note.Linux, &quot;&quot;, @note ;<br>
&gt; &gt;<br>
&gt; &gt; While GNU as allows this ordering, it warns for the opposite orde=
ring,<br>
&gt; &gt; making these directives position dependent. We&#39;d prefer not t=
o precisely<br>
&gt; &gt; match this behavior in Clang&#39;s integrated assembler.=C2=A0 In=
stead, the non<br>
&gt; &gt; __ASSEMBLY__ definition of ELF_NOTE uses<br>
&gt; &gt; __attribute__((section(&quot;.note.Linux&quot;))) which is create=
d with SHF_ALLOC,<br>
&gt; &gt; so let&#39;s make the __ASSEMBLY__ definition of ELF_NOTE consist=
ent with C<br>
&gt; &gt; and just always use &quot;a&quot; flag.<br>
&gt; &gt;<br>
&gt; &gt; This allows Clang to assemble a working mainline (5.6) kernel via=
:<br>
&gt; &gt; $ make CC=3Dclang AS=3Dclang<br>
&gt; &gt;<br>
&gt; &gt; Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/=
913" rel=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinu=
x/linux/issues/913</a><br>
&gt; &gt; Cc: Jeremy Fitzhardinge &lt;<a href=3D"mailto:jeremy@xensource.co=
m" target=3D"_blank">jeremy@xensource.com</a>&gt;<br>
&gt; &gt; Debugged-by: Ilie Halip &lt;<a href=3D"mailto:ilie.halip@gmail.co=
m" target=3D"_blank">ilie.halip@gmail.com</a>&gt;<br>
&gt; &gt; Signed-off-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulnier=
s@google.com" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br>
<br>
Reviewed-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.c=
om" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
<br>
&gt; &gt; ---<br>
&gt; &gt; Ilie has further treewide cleanups:<br>
&gt; &gt; <a href=3D"https://github.com/ihalip/linux/commits/elfnote" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/ihalip/linux/commits/e=
lfnote</a><br>
&gt; &gt; This patch is the simplest to move us forwards.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 include/linux/elfnote.h | 2 +-<br>
&gt; &gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h<br=
>
&gt; &gt; index 594d4e78654f..69b136e4dd2b 100644<br>
&gt; &gt; --- a/include/linux/elfnote.h<br>
&gt; &gt; +++ b/include/linux/elfnote.h<br>
&gt; &gt; @@ -54,7 +54,7 @@<br>
&gt; &gt;=C2=A0 .popsection=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 #define ELFNOTE(name, type, desc)=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0ELFNOTE_START(name, type, &quot;&quot=
;)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0ELFNOTE_START(name, type, &quot;a&quo=
t;)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0desc=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ELFNOTE_END<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; 2.26.0.rc2.310.g2932bb562d-goog<br>
&gt; &gt;<br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Thanks,<br>
&gt; ~Nick Desaulniers<br>
<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHDfHbcmqyG5ddSVyZnAaM2p8R-0f%3DdE9deZfnizT3_=
M0pc55g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAHDfHbcmqyG5ddSVyZnAaM2p8R-0f%3D=
dE9deZfnizT3_M0pc55g%40mail.gmail.com</a>.<br />

--000000000000c5c75805a26c753f--
