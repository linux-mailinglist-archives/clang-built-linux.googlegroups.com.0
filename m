Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6MP76EAMGQEXI2M3LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D693F2EB6
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:19:22 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id n10-20020a5d660a0000b02901551ef5616esf2952394wru.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:19:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629472762; cv=pass;
        d=google.com; s=arc-20160816;
        b=t1YK4T23mnEfOVKUZLyA4hkaQ4216cUJ2mWnRKrmjbvKtColiuwj1OMrGjvDPI2ro2
         +3eYcbeWuCZmd4/VHTeXPAQr35Tja4w53IF4vBU0MCdtRIScydmP4L5vnuMPw3iYOhZV
         zH8Ufr9sGJ3xHD/oYA1n0sgyyXqczSPt2I53TZSU8NpOW8BEnb0vnX3yJ4Yzs1CSN2r5
         AHPqjMO44RlKJVM9TgS7+HyGGvw2+4jCRFYPQmdddLnu6p8Gvj+g68/Irs4pRiakuex2
         yNFUYsw8RZsJ0gzGmGGOhoe6pTJg4Scrde5Ht7r4xTZzxkQPUrlFDQ1FHZTTbPQ2e4lI
         qSHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3P7+nI1g2DfS43OiFVRTpgi4nBWSqIM5nWsHXZ6eAdY=;
        b=iMRz8+W94g4eLZlAxDHtD9a1yBiuY8T7n8UeXCHr+iXkHaeEg4BmeFJzp354kR5CQn
         WN5GOSb7N8KxVwf9OzKV42sqtHwaFB3C/nmaS4MZNxPPma4Jub3FlpAAKzbFijxj8Z6K
         80BI6GMEdz1CI1EmFzX34he4cziCcqrj6KyKgVpy9gdrrFJehj57mclPvKaWHDDvRrs7
         rxboY7UTVPg8wjR2SWorMDQ0nsIaorpUv7Ak0P16HkY+R8nOTKoUj6A6NPMmNYihJAPl
         dI+uWg570VKJvGUtfe22eX0CHV4ti+fbyYXXH+aOdFVOr1ccujXQaYY2XOltRP+EdcF4
         a0Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Fz2B8iu0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3P7+nI1g2DfS43OiFVRTpgi4nBWSqIM5nWsHXZ6eAdY=;
        b=LzXw4o6SD9CT528J7URw4X7gTlQmy+algo/wGOlsXnpM1r4TlzoFoIise6681uvabU
         6X4Hp4R/XmUVqUM7k1WesYEVLNW6lEcP1HCKg2WHspaTlI8ew27Tte4Pv15JFSIVAk/m
         aVOOlX+e/2S9xD+Xc7eaEjSOdUPKce4T9n5CsuxFbgbjzvOfnsS/E6AIEKNadW9n9uro
         YDY1/qPL2mzS6+kE6NKJikwwCApnjcDCzpGBdwu7rZOkA3B/F4EGD2XTEhTELaHyg3TZ
         nL7Qc0VYjZ/78Ce4WMybtD+7GS0AqF0ZByTl+AQASkQgGCQOiLD8HGloEhsWuq+SBnRP
         M4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3P7+nI1g2DfS43OiFVRTpgi4nBWSqIM5nWsHXZ6eAdY=;
        b=toBbe7cGlMNCyZPs5TV7TYq+Tp56Z1bXlCA6rNrDP1FQJBn2KMiKg/KXa3wcXJvNnn
         1ecHJSxJ5BSEPwLHhQ4UM4ZvWdjjYwbJby+48bHJQY/y3jJ29KllndnTQm2TBgHPZrip
         nIoNJn/gMPY9X9x/2skcRjtk3AIKv75eKypGjy7veQS1vSZuBIGjeBXUu0utOYXwouMg
         8M3P4csUS95z+KgI7qSuZIeVkJSIMMQrwN+rcLBal4l7E+yHlwy2V97azVoSAzRMxMkT
         Hc30O4o/bo9PL5KJSnfPX4w6BEX2LutL66yaod3nkbvo5ba4j+kiopWuLPxsjy+ConP4
         eP9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UbvT4860Z2drkWCTWVhzVZUeoqtK0p/zSYKiAmctjF3OI52aQ
	x6zMJbWB7Bxlf9z68wfa9oY=
X-Google-Smtp-Source: ABdhPJyZ85m39OnoFiX7oJ63b3xsEEzC65iK/fwOJEOrFl6Igzjbx51dygxzX10zuutHTq590C97hQ==
X-Received: by 2002:a1c:2284:: with SMTP id i126mr1359617wmi.91.1629472761850;
        Fri, 20 Aug 2021 08:19:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c3:: with SMTP id g3ls4076600wmk.0.gmail; Fri, 20 Aug
 2021 08:19:21 -0700 (PDT)
X-Received: by 2002:a05:600c:350c:: with SMTP id h12mr4030092wmq.88.1629472760918;
        Fri, 20 Aug 2021 08:19:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629472760; cv=none;
        d=google.com; s=arc-20160816;
        b=L7yh1jLffMsMm5khffsfurE6ffX58wfKG+zKk9wBJMZcOm7YsxMC1fuZCogkoY8QmZ
         QprI7nhIkNIhsvodGAoLsYqJJFjnF/xmfOVBfdjH+H1jdsVR4tjpBZsoPGlA3GuC0xUX
         XtDXKIn1bZOC0DqvhoYuYCXSwlAYAntYO8WLrMz9DWrf8YGEjdJWylaKTH1y3Zu1dQgB
         eRPIsi7HGO/SQGG2dL5gslYXdHsUdCNVNu/J48DeC4tuJS0LUh7LdM1s6kh28m9sMbH/
         porQc1IFwy08iwUBsT/5lwf976HeOtxDtycf8mf37s9R2jCAHxm/74C2/4/EqH6PgnTB
         t1oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yK+7O/v/bijYwmV3v46J0ihfKacLILS/RW0Ybl37+a4=;
        b=WM/JA1a2VCBZgcdY2xbG2u3ReCh9AT5xv4npXTnI3+nJaIf/ILhyrqxKDNyqJO3OKu
         klpR5zdlBphB3SiSQA1xHylap/jO3LuF/oobg2rWd6PxNk3pwTAMBFDmGu95i5uIC5dU
         NMvSnUUpB2idwDi+Ckhug5N7P0WoAgpdP0Roeyb0N2o8bMDIY30I5UweiIHLort//81Y
         YnZec3R2wbvjdoG5S7WMVuQA0oW3mw14bqvUtwGF8hm5MK4XYQUOTqS7sAraydaWpyiQ
         tUXS9Mxu0XH7ZRA66Krjd8m3o5uLCNiO/XFozc8MQSu3zRJO8uBfXBOi1sBnRPhJVAU6
         v02w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Fz2B8iu0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id z16si428924wru.4.2021.08.20.08.19.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:19:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id f10so6539077lfv.6
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 08:19:20 -0700 (PDT)
X-Received: by 2002:ac2:5dd5:: with SMTP id x21mr7035638lfq.357.1629472760644;
 Fri, 20 Aug 2021 08:19:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-56-keescook@chromium.org> <nycvar.YFH.7.76.2108201501510.15313@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.2108201501510.15313@cbobk.fhfr.pm>
From: Kees Cook <keescook@chromium.org>
Date: Fri, 20 Aug 2021 08:19:08 -0700
Message-ID: <CAJr-aD=6-g7VRw2Hw0dhs+RrtA=Tago5r6Dukfw_gGPB0YYKOQ@mail.gmail.com>
Subject: Re: [PATCH v2 55/63] HID: roccat: Use struct_group() to zero kone_mouse_event
To: Jiri Kosina <jikos@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Stefan Achatz <erazor_de@users.sourceforge.net>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, linux-input <linux-input@vger.kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev, 
	linux-block <linux-block@vger.kernel.org>, linux-kbuild <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Content-Type: multipart/alternative; boundary="00000000000011db8005c9ff3170"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Fz2B8iu0;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2a00:1450:4864:20::12d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

--00000000000011db8005c9ff3170
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 20, 2021, 6:02 AM Jiri Kosina <jikos@kernel.org> wrote:

> On Tue, 17 Aug 2021, Kees Cook wrote:
>
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> >
> > Add struct_group() to mark region of struct kone_mouse_event that should
> > be initialized to zero.
> >
> > Cc: Stefan Achatz <erazor_de@users.sourceforge.net>
> > Cc: Jiri Kosina <jikos@kernel.org>
> > Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > Cc: linux-input@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
>
> Applied, thank you Kees.
>

Eek! No, this will break the build: struct_group() is not yet in the tree.
I can carry this with an Ack, etc.

-Kees

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJr-aD%3D6-g7VRw2Hw0dhs%2BRrtA%3DTago5r6Dukfw_gGPB0YYKOQ%40mail.gmail.com.

--00000000000011db8005c9ff3170
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Aug 20, 2021, 6:02 AM Jiri Kosina &lt;<a href=
=3D"mailto:jikos@kernel.org">jikos@kernel.org</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">On Tue, 17 Aug 2021, Kees Cook wrote:<br>
<br>
&gt; In preparation for FORTIFY_SOURCE performing compile-time and run-time=
<br>
&gt; field bounds checking for memset(), avoid intentionally writing across=
<br>
&gt; neighboring fields.<br>
&gt; <br>
&gt; Add struct_group() to mark region of struct kone_mouse_event that shou=
ld<br>
&gt; be initialized to zero.<br>
&gt; <br>
&gt; Cc: Stefan Achatz &lt;<a href=3D"mailto:erazor_de@users.sourceforge.ne=
t" target=3D"_blank" rel=3D"noreferrer">erazor_de@users.sourceforge.net</a>=
&gt;<br>
&gt; Cc: Jiri Kosina &lt;<a href=3D"mailto:jikos@kernel.org" target=3D"_bla=
nk" rel=3D"noreferrer">jikos@kernel.org</a>&gt;<br>
&gt; Cc: Benjamin Tissoires &lt;<a href=3D"mailto:benjamin.tissoires@redhat=
.com" target=3D"_blank" rel=3D"noreferrer">benjamin.tissoires@redhat.com</a=
>&gt;<br>
&gt; Cc: <a href=3D"mailto:linux-input@vger.kernel.org" target=3D"_blank" r=
el=3D"noreferrer">linux-input@vger.kernel.org</a><br>
&gt; Signed-off-by: Kees Cook &lt;<a href=3D"mailto:keescook@chromium.org" =
target=3D"_blank" rel=3D"noreferrer">keescook@chromium.org</a>&gt;<br>
<br>
Applied, thank you Kees.<br></blockquote></div></div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Eek! No, this will break the build: struct_group() =
is not yet in the tree. I can carry this with an Ack, etc.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">-Kees</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAJr-aD%3D6-g7VRw2Hw0dhs%2BRrtA%3DTago5r6Dukfw=
_gGPB0YYKOQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAJr-aD%3D6-g7VRw2Hw0dhs%2BRr=
tA%3DTago5r6Dukfw_gGPB0YYKOQ%40mail.gmail.com</a>.<br />

--00000000000011db8005c9ff3170--
