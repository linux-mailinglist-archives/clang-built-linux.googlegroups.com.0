Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF4F6HYQKGQEBWERF3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B985615498C
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 17:45:13 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id y73sf4205278pfg.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 08:45:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581007512; cv=pass;
        d=google.com; s=arc-20160816;
        b=QUTj7GZFWS19hvoiX5Jr00OAB2M6WfME6fDLOgntWsPlUC38zGYDF9/LaWcLrNHnOD
         eLxXP/X1XpbxAm8aiTL4JRZzj5tc8O8JA8gC1++r+rs0LoHAQirv6CGJq1RIeh7h+gSl
         4xqRMtKGxW8dRDGmanIJcEuZG+EeMJ90x4wcZZqt/oml0TS3Kw3h8KOyVY+0Gypqg+tq
         3KrRENIlJBJi+DqP0kDclMbPRlZLoWNG7BsBf/0Wl1PGshdfNKCgf+ia6EcMwsY87wWu
         TIsfCee0YxFOVQSgV3JYSy5qaLofLa+2zXVi1Lyy/2VTmLU8S2Tvab8r9FB2aHadpYSH
         pMRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kr8BsBXQdkFUL6F/QKqaG+zRRdx86yXwHmsMM1tL3x8=;
        b=KHFCl5pqc82OKjOhkO4CUQmoV+9SJ61u41jKDBUpXpNAhHoh2vylT0P7GdQPuXZbRz
         7Za2PaG1RpwgxvhxIn/5Mpl0n5waqduURArioUKCDUcQkpIH6apWO6xKk19W+mmZC9+z
         9RZltXGoUzMDxOjyivJ/4vICwyceReSEzrbZYseARiLMctkAwi89Nfnl/RRXQAyUWVjg
         E25Yf0Cz6lDCM2upl9CH+4cwJEBSa7LtteEX8ojow7V1VGAoCF4yVV1eM3/0MRbs4CX4
         3gLtmJX31srJKXrzoi3dUDrInNzxQcnCCotR4KBK93cMgkEzcOGzANmPKg2caoLb/1x2
         I6nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GyPhWakh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kr8BsBXQdkFUL6F/QKqaG+zRRdx86yXwHmsMM1tL3x8=;
        b=sjgdik/Yi2zL0eEXM5CE/+PawirAgfxbNJqQ6cKBqwvZdYTX900o1YAmww6Tf8gZC9
         6os8ZiJXEOV7HZvhl+w7zVa9zsg26B35M+bdZ02I/j8g08AGTMzkZ9CAy3JxPMabc1tP
         ehUkd+RTBs0A8wI0vn8y0WjZrq315QgHp42zaWNU2yCcn2zgf/PsMNi1hpUYq7w9wg85
         RWwXjXzQ43CckXTx8oRSSM75/qwhLQeB2fOjuqro0LyYWHHL/hpmIcEGnLlM79vtAc3X
         P+Tv9CZW4J9KEuZ10slCElCNX8E1lICLuO/0LFM2H+czI+1ycLL15Mnsc1kgG5KBKB4w
         eOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kr8BsBXQdkFUL6F/QKqaG+zRRdx86yXwHmsMM1tL3x8=;
        b=ktzg/s1T1BDOkkvCTLGlbcgbI8xqeDy2yoy+3CVVowtTxZ83Ng+bz+yRxkRbphklUc
         dIweOePnDUmtiS1xnYxwkC6CLKs2EreVJGWL/yxTTL9I+NmzZGAVHbCRRXl175hahlve
         dejAjLvcRBXoSKfd02wIWFM5JKXHNSr1g/eQxIlvHkv0aEIDmZhUZUM5DUXFLnp2Gkrd
         KxaQiGevJYV0+shTu1SLNtd8YjMLi8j8f+f0EBctnTBKKdSb/MPRpexCKI4VvyIL7DKS
         qtEkNG+thUdZAHAW1SCozNVB4flhtdqu6LylTmxKGgYB4ZuJHuyOrY8By5RptwALcgPE
         EwMw==
X-Gm-Message-State: APjAAAWKNulQFR11aQ7WuBybpxCMCy6ZkGzCjFPH0i5CkKx86MWCn9No
	qfQ/3hnMivPDBgAn6h36Lus=
X-Google-Smtp-Source: APXvYqxlz+JFYRdE+JyOhbqKuGgtRSyc+NaV8mg4UUum/FxVIZLrc6wH/LIimIgdqxJgrteZOiCyjg==
X-Received: by 2002:a17:902:904c:: with SMTP id w12mr4932589plz.35.1581007511779;
        Thu, 06 Feb 2020 08:45:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8e49:: with SMTP id k70ls3091091pge.0.gmail; Thu, 06 Feb
 2020 08:45:11 -0800 (PST)
X-Received: by 2002:a62:7bcb:: with SMTP id w194mr4889129pfc.216.1581007511306;
        Thu, 06 Feb 2020 08:45:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581007511; cv=none;
        d=google.com; s=arc-20160816;
        b=c3waE4jknpvrLrnCqBQpxqzvGOrb6bCjEOZFIIjd1HF11hHHNGISTHAgmloWkzg/c7
         9rqleG3gHaJ/szOVnnamwMNyXzVk1ggTMe8CBh2sT61dDefrIvoXylTkPW8PgULV8wye
         UKvK6n7ps7xiAjJYgK992Lr+5f5sWdGenvjsAIceJ4YBgxFJTByikW/plnihxa0Cp4/Z
         2VIdGmuPTysQTF8aA6P+IIZMbR09KjilNlY+rsEEHLA5dn3KrtLbjgnChRNOL2SJkLDk
         Qbq0Kc6pqAnUWBNKgR2mH4LbNgT7MxWxtN/aDPoixwO9x9NmaMWtoKX+nDC97Onqfi/D
         GH7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7ykBdNQu5MGeZeRjXzoYE4hQVerSyHMCZYj6A9R/+EM=;
        b=v6QkSQmox/0J6VgERsVxkxblB0s2zltHsv0eZq8elJB3LmrxNPbX/WDIherW0f6r6e
         dVOOwceoJJHn4TjNTuB3YjLDLZxxta362hs22mxZRyqPXrcYlSxcElI7IKG7jwj/fh9A
         gwjLa9j/xzhINKsXgLOP+0PDSRcufbdbfEdYZN29aHxm5aJJg6nIU2187MC7JMe/c9ld
         qcsYcGgC0tztP6jCl2qMP5itPStOFSpmrb66SxLQHlskS6Gdfuv/OHSbBDbyzqVCYqyT
         vWsoM/BFbWaoo5+LcIBMFhgrudz8V0qIzxb4HnAPJCt+kIZyku+cxqFkIWtMwbknzYNm
         7W8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GyPhWakh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id a4si465777pje.1.2020.02.06.08.45.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 08:45:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id fa20so209322pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 08:45:11 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr4651803plt.223.1581007510232;
 Thu, 06 Feb 2020 08:45:10 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=FWWa6vLrFqzG61cUvRKF+z6hy+6+1VW61RPbs94xhbg@mail.gmail.com>
In-Reply-To: <CAKwvOd=FWWa6vLrFqzG61cUvRKF+z6hy+6+1VW61RPbs94xhbg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 Feb 2020 16:44:56 +0000
Message-ID: <CAKwvOdnnXPdLe-zWoie6XBthPzZqJ0jDj7PpTADz_MFLsBqUxw@mail.gmail.com>
Subject: Re: delays in LHR
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Bill Wendling <morbo@google.com>, Manoj Gupta <manojgupta@google.com>
Content-Type: multipart/alternative; boundary="0000000000000952ff059deaff66"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GyPhWakh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

--0000000000000952ff059deaff66
Content-Type: text/plain; charset="UTF-8"

Bill, Manoj, and my plane just landed after multiple delays. Will be some
time yet until we're off and at the hotel.

On Thu, Feb 6, 2020, 11:55 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> As a heads up to folks traveling through London Heathrow (LHR),
> flights are getting delayed due to fog. Check your email and google to
> see if you're affected. (My flight just got delayed 41 minutes; Brits
> assure me "it's getting better though" (narrator: it's not)).
>
> For folks headed to the meetup, I don't think we have concrete plans
> yet for tonight; I assume we'll meet up in the hotel lobby at ENGIMATT
> then go from there.  I'll send another email once I'm in ZRH and have
> more info.
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnnXPdLe-zWoie6XBthPzZqJ0jDj7PpTADz_MFLsBqUxw%40mail.gmail.com.

--0000000000000952ff059deaff66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Bill, Manoj, and my plane just landed after multiple dela=
ys. Will be some time yet until we&#39;re off and at the hotel.</div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb =
6, 2020, 11:55 AM Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@googl=
e.com">ndesaulniers@google.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">As a heads up to folks traveling through London Heathrow (LHR),<=
br>
flights are getting delayed due to fog. Check your email and google to<br>
see if you&#39;re affected. (My flight just got delayed 41 minutes; Brits<b=
r>
assure me &quot;it&#39;s getting better though&quot; (narrator: it&#39;s no=
t)).<br>
<br>
For folks headed to the meetup, I don&#39;t think we have concrete plans<br=
>
yet for tonight; I assume we&#39;ll meet up in the hotel lobby at ENGIMATT<=
br>
then go from there.=C2=A0 I&#39;ll send another email once I&#39;m in ZRH a=
nd have<br>
more info.<br>
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
om/d/msgid/clang-built-linux/CAKwvOdnnXPdLe-zWoie6XBthPzZqJ0jDj7PpTADz_MFLs=
BqUxw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdnnXPdLe-zWoie6XBthPzZqJ0jDj7=
PpTADz_MFLsBqUxw%40mail.gmail.com</a>.<br />

--0000000000000952ff059deaff66--
