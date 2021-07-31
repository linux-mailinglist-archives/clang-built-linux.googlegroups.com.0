Return-Path: <clang-built-linux+bncBD7I3CGX5IPRBJ55SOEAMGQEWYJLOZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAF93DC37E
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 07:24:55 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id q19-20020a1709064cd3b02904c5f93c0124sf3685727ejt.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 22:24:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627709095; cv=pass;
        d=google.com; s=arc-20160816;
        b=vkFQYhsUMJ4YA1/9k4sAdoZ1en3fHu85PPL+dRYq4ujl/innK7l3hK2CKL70tSs3JV
         25YiAWMjn6Z4I/MkI/xSf7OVvTuxhuQtIVECdooElN1Sj0XODs2M0V+vuS+vRoLxRu94
         0120N/Wjo2MjglF3xhJK4E6hfr2qZUsG2h7WhEagbyfBo30TKNuRXlugSLqnTuBghLMG
         herjlMqKKKAbGzt4HYXiczzNnGkGwxjvnSPJEYu9wjarVqdDzhKEhQCnXrzF3lbJXQ6A
         Y8SWQ5DrhJJ7ps1edWNnT6DnzoYg1SYvFJSYcMB7d/FEXOs27BwPltDVAz8hlG6aTyV3
         QPWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Cbyqax/nZg5MA2CDeSsktqqK0dYXYExnrDAQi+S7Tyc=;
        b=BI5PBWt6dT5mfeNPAKw2LEIYdc9FvYe0oscdzHgNUW/0sGP2NBKUn4GPGFVcJQ9IX3
         QW3Qy+gCbDw6IEnzLZqhpYNoF8lguX/upXVgrU52Rrz3fj+qE66lNoA2mqFChWf/j4IY
         Bseakdg1XnWMzp1Z662ZPmgHavDIEiANfmuEnnymsXqK0hCzV0NWX4yUDntWgkM8YySU
         4taiCh3MhBpIK3TiUKdyJbybOe2oT13LWX3vRJW3/YY5VjcYiZqzU1woAiDZ5FX8PExl
         xe4j1GLZc8/kz8GIotx81faCBGOyAvgtJ8H2ip458je9EiWj6V+lcfKTalbgbhuKIot7
         kzVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=M54my0VJ;
       spf=pass (google.com: domain of mail@rasmusvillemoes.dk designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=mail@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cbyqax/nZg5MA2CDeSsktqqK0dYXYExnrDAQi+S7Tyc=;
        b=OxaALTqQ3aO9GjQPwHqGlY7JrmuVZmtatry25T/2KbKwBaFO9k5btpeY+rFZQmPViI
         JBsm8+8vvxijOmMHDHnUNAOUDgTa3Lvvr+nwio0hO/nn2H04igJ8mznvhiekqHqMHwxT
         De+VWIPvlJUuRzYaxZMsmsBViNsrKMhHXnrKsGhl+VMfIS+gOb4A7o7pEnAngAaSDVYT
         lJMH2w6aIrm3p0jvRlftCIGgCSxXIcr+lmI0hfQ37ccsvrzl0Djmr5DtyE9cZyINgIo9
         mE6jRzr2WWxVU4rpz21axknBQt2e42uRmqJ1IFkxsflWUSqKiHmMURZ78b2GL3qFhSz8
         gubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cbyqax/nZg5MA2CDeSsktqqK0dYXYExnrDAQi+S7Tyc=;
        b=SEC8lZByAUr1lcIGOoH4ks9F16tRGUnOc8Tf/mwfZ5SD7dnvwIRH1jYrg84uIwuJ0q
         umQBoa44qewhWy4kKpgv1gjinF/F/1YMfcVR812TcTMionRvZhcutOvUafRS8i+M91xe
         CLuBhTrQFBhJZxSxBw3eh1zuUmtqGw9Zc8BMEfTtWH4q4uQKk5U4U/GhtL58o1WuP0WF
         Xqxr8EG1fmQPrqDJJaQEqhClTk2aHK/SvdpTL1wmggcFc4Ty+xfrNGGFTKVMLSfnz+HN
         PgZZnTHMGByKZ1OBNUc7KpiVUFsk1ZQwGxcnLLYD+xIk0Kd1J0VXHecyPGpDiGl6kVjB
         5dpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L/0gI5io6Ytb9mWyzyO2a42aHiV0ORrpz80avAhyGHeu1avFD
	K9CypKVv47g8gHt+U5OXdAc=
X-Google-Smtp-Source: ABdhPJykKTdZnXACVbwKoZd9Eq/otbPMKZnXS4R7kznUnal+89/eVYHKRzelRbGr7KjTluPh+Ye/FA==
X-Received: by 2002:a17:907:6297:: with SMTP id nd23mr5913723ejc.62.1627709095221;
        Fri, 30 Jul 2021 22:24:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:240d:: with SMTP id z13ls1732594eja.11.gmail; Fri,
 30 Jul 2021 22:24:54 -0700 (PDT)
X-Received: by 2002:a17:906:3413:: with SMTP id c19mr6071877ejb.400.1627709094206;
        Fri, 30 Jul 2021 22:24:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627709094; cv=none;
        d=google.com; s=arc-20160816;
        b=ua46rU4nr2oZsEtQv5RZxqFLEo9CO0MwEgNbQD8BstSC7efajxB2pgD3VDlLXF7vW6
         39QPdFrqbIS66GBP685g1v7KvMLOyLUT1KXylzAYx0flBfXA/qeV44tLnUwTHPKbxReK
         gCqASMnITZASL5Myv1t7sqkm6m0X8FjDvM4/v/i5pD2urJN77dS4/DE/GIj/1ilh1g0l
         jzLfIOisM6aC8hZsM72Xu7RnCu4yW5LOmPqTFllAcjv4KcehYDD7lDdJkgZoFV8nvDCf
         btfLK1nN5hRMjIl6MYSd6P82wZyWdwpdc4m1iXfHYB7lCI8XPVZv1S9sySlPUIr6gDyY
         faZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YEgCm4JhlnACGjsReq3911tZZqqK95oTT5L5S4irUGQ=;
        b=ptQCrB148FsCfhsqHoOpeMRpQ1M4I39ODODepQ6QLz4aTbzPm+1pooUEPLCRhknoF2
         1DRfou7RfU43BNNBFdBC2WlV7mPuaH/LzRJLcQdnguAroejs6BdcHvieuizmmVpEf2Wk
         xJC5OLMLQ97s6nv0WyJVWQB3+HUWp1SgqHHgS7GPjR+pL/grvyQmR00dI+WHZ7TJLJt5
         foV4p6+MHfM+Ow+1ttsIcVz4YZcHGH+k37SLz8ijk14NqnYw2b5hI4l4XzkpgIuKOc7T
         tbZYygmLolQiHX2x8Ytpp2b1seIYtgryurrkMkasZcXXMXLSC3n3RWuQiL5LYwIhEsLy
         AxAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=M54my0VJ;
       spf=pass (google.com: domain of mail@rasmusvillemoes.dk designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=mail@rasmusvillemoes.dk
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id w14si218447edu.1.2021.07.30.22.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 22:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mail@rasmusvillemoes.dk designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id o5so20703862ejy.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 22:24:54 -0700 (PDT)
X-Received: by 2002:a17:906:dfe5:: with SMTP id lc5mr5992437ejc.20.1627709093865;
 Fri, 30 Jul 2021 22:24:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-5-keescook@chromium.org> <41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk>
 <202107281456.1A3A5C18@keescook> <1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com>
 <202107301952.B484563@keescook>
In-Reply-To: <202107301952.B484563@keescook>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Date: Sat, 31 Jul 2021 07:24:44 +0200
Message-ID: <CAKwiHFheDv2pwsm6Fa+-KnOFyvk7bfZQjb2BQ-CSwH61gxgVYg@mail.gmail.com>
Subject: Re: [PATCH 04/64] stddef: Introduce struct_group() helper macro
To: Kees Cook <keescook@chromium.org>
Cc: "Williams, Dan J" <dan.j.williams@intel.com>, keithpac@amazon.com, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	akpm@linux-foundation.org, gregkh@linuxfoundation.org, 
	dri-devel@lists.freedesktop.org, linux-cxl@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, linux-hardening@vger.kernel.org, 
	gustavoars@kernel.org, linux-staging@lists.linux.dev, 
	linux-block@vger.kernel.org
Content-Type: multipart/alternative; boundary="00000000000056806b05c8648e84"
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=M54my0VJ;
       spf=pass (google.com: domain of mail@rasmusvillemoes.dk designates
 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=mail@rasmusvillemoes.dk
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

--00000000000056806b05c8648e84
Content-Type: text/plain; charset="UTF-8"

On Sat, Jul 31, 2021, 04:59 Kees Cook <keescook@chromium.org> wrote:

> On Fri, Jul 30, 2021 at 10:19:20PM +0000, Williams, Dan J wrote:
> > On Wed, 2021-07-28 at 14:59 -0700, Kees Cook wrote:
>
> >  /**
> >   * struct_group(NAME, MEMBERS)
> >   *
> > @@ -67,7 +73,10 @@ enum {
> >   * @NAME: The name of the mirrored sub-struct
> >   * @MEMBERS: The member declarations for the mirrored structs
> >   */
> > -#define struct_group(NAME, MEMBERS)    \
> > +#define struct_group(NAME, MEMBERS...) \
> >         struct_group_attr(NAME, /* no attrs */, MEMBERS)
> >
> > +#define struct_group_typed(TYPE, NAME, MEMBERS...) \
> > +       struct_group_attr_typed(TYPE, NAME, /* no attrs */, MEMBERS)
> > +
> >  #endif
>
> Awesome! My instinct is to expose the resulting API as:
>
> __struct_group(type, name, attrs, members...)
>
> struct_group(name, members...)
> struct_group_attr(name, attrs, members...)
> struct_group_typed(type, name, members...)
>

Bikeshed: can we use proper nomenclature please. s/type/tag/,
s/typed/tagged.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwiHFheDv2pwsm6Fa%2B-KnOFyvk7bfZQjb2BQ-CSwH61gxgVYg%40mail.gmail.com.

--00000000000056806b05c8648e84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Sat, Jul 31, 2021, 04:59 Kees Cook &lt;<a href=3D"mailto:ke=
escook@chromium.org">keescook@chromium.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">On Fri, Jul 30, 2021 at 10:19:20PM +0000, Williams, =
Dan J wrote:<br>
&gt; On Wed, 2021-07-28 at 14:59 -0700, Kees Cook wrote:<br><br>
&gt;=C2=A0 /**<br>
&gt;=C2=A0 =C2=A0* struct_group(NAME, MEMBERS)<br>
&gt;=C2=A0 =C2=A0*<br>
&gt; @@ -67,7 +73,10 @@ enum {<br>
&gt;=C2=A0 =C2=A0* @NAME: The name of the mirrored sub-struct<br>
&gt;=C2=A0 =C2=A0* @MEMBERS: The member declarations for the mirrored struc=
ts<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; -#define struct_group(NAME, MEMBERS)=C2=A0 =C2=A0 \<br>
&gt; +#define struct_group(NAME, MEMBERS...) \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct_group_attr(NAME, /* no attrs *=
/, MEMBERS)<br>
&gt;=C2=A0 <br>
&gt; +#define struct_group_typed(TYPE, NAME, MEMBERS...) \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0struct_group_attr_typed(TYPE, NAME, /* no =
attrs */, MEMBERS)<br>
&gt; +<br>
&gt;=C2=A0 #endif<br>
<br>
Awesome! My instinct is to expose the resulting API as:<br>
<br>
__struct_group(type, name, attrs, members...)<br>
<br>
struct_group(name, members...)<br>
struct_group_attr(name, attrs, members...)<br>
struct_group_typed(type, name, members...)<br></blockquote></div></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Bikeshed: can we use proper nomen=
clature please. s/type/tag/, s/typed/tagged.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Rasmus</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwiHFheDv2pwsm6Fa%2B-KnOFyvk7bfZQjb2BQ-CSwH6=
1gxgVYg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAKwiHFheDv2pwsm6Fa%2B-KnOFyvk7bf=
ZQjb2BQ-CSwH61gxgVYg%40mail.gmail.com</a>.<br />

--00000000000056806b05c8648e84--
