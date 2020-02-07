Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBOW26LYQKGQEHDNEIBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id AF10F154FAF
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 01:20:11 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id b22sf40111lfa.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 16:20:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581034811; cv=pass;
        d=google.com; s=arc-20160816;
        b=aApDiS7+QdfwPXtjCjQspKn6e5YWvSxklYSgW8P83dFpVjo9mGLU2Hz8+PrVFevqNx
         M/CL1orgj52eZUTGmkSwuPeEwcmaPc9Kz93/OsiZt/IgQrtz+jlJ5UpE37PVbMd0CDr4
         Yy3+rGzPqEVw/89ZofVtPfHek/KURXNsnhU52+vmwsDTiCPOssMiJclWuNcgfQjajclq
         qnVzXF+LcQQ17lWsM/eswY2apNnsw9+D+KBVLJqjZWwFB7R+VAZbkoNVgxMHxCyQ73TO
         5NhFcQSkONFBNjqqFZQj6xwNhlCoW4c4RpclOa4JV71c+NhfXt3yoTkO0xcd40kV1bdi
         VP4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ud0oC769DbSwzxPIegTKSMkMXVbZmKEFNM8ALpwzIEc=;
        b=fX7q0zU5ZtIV3PqEwafVznRMS9aIcO0esHWbn78dlaL851WSYFZ8Q7tc36dz+ilbCe
         C38n+ebHaiQInE5nXPz+IwuVqylePuuma6IOOZREhJDURHyXtAeNlSAqDqKGxiSU/T2C
         z0SYnnn+RL7VPUKcxmOlvY4or8+yT+gW2VYWeW2sWPzrm0NLqhQ9oEh76Wg9eOmMv6qh
         xKV4h1Cio10ASLs023Cv11YllZQkaMzMkc7lE/OOb6i8GEz9vhjv0dkl3LauwGF/cl+2
         boXXO4LzFckMJoT/4HLEZrjUlaSHHpxlH4jOpeN40qblWGsuEhWkCGDsLG/DHLKDNUPT
         r59Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qj3OJ5o+;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ud0oC769DbSwzxPIegTKSMkMXVbZmKEFNM8ALpwzIEc=;
        b=S7SFuybW6EUu3EYw+XOioTxA5TMGsovqLKHkUcGX5SlbBPCwbBgAp6ulynJPjbhZUD
         yw3KGyfcZJkppXPMq9WCUvpNHIaQH2lcQAtaSLjZsGy/HTpJT87mpv102PHjwzVhQNMZ
         n2WLjYf+XSz0WDdSmqR1YK5CGhrVS+58hzKCy7/WJfJwRA7xY2RXrS1RZg+pVOt4pan2
         GSKO0k7JnAa/aggBSOMF+ec5Kv43fFA2cIIiZd8t7TZzeszevnxksPkWwWO8guIwFd4T
         Hzox6XSSAXe1cNBUkDKWR3Z1HHpgJGijozWz0APhaIrijmxg/zhJ8kf9XXdqO1ol3I5j
         qPHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ud0oC769DbSwzxPIegTKSMkMXVbZmKEFNM8ALpwzIEc=;
        b=qr4SO4jfVG9LYcTtgsuuJDOjSKoNgqoHv5fLBdbShezspPJKK5SFoudpkkDPtKL0mn
         jFPinxQFGGv/zgmLS9LKTBSBWW2Crtr3LhGPYaZT4dD7w8pRin+c7q6afqykoRjC9Os9
         G4h4WoAALP6KRaBOITo1RrmkewTyQ9zpOU1PzWtr+/owBxDfLHBe8684nODaCdoFUAtj
         S9JQfyF/IRl7ABNxN78PSOkXJ6jmsnmfaKfD4HyWFB68xYsbz1plmVFOCQuWUHhWEqdW
         nzG2k6zniANCHbwNr23JV5mVAEamAq9vEeOZFJ4w+K2ZmhU3Q+vHCHpiad1CdjTbXBmG
         oqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ud0oC769DbSwzxPIegTKSMkMXVbZmKEFNM8ALpwzIEc=;
        b=soUSUdCKczTV3iH/CnvDCDnBYCs0AZepu2fnZUORPLqwxxisUmeM6/l0bkI1YO7ojd
         csyanMnqIXOBK8M+MZWVjEuVFQqqV36KLZK/ViTSF0S00TnADpnL2DHnLF17GqM31Exl
         soya6Z9eE73ZdfbtTqrqpzMN4Uba76Jsm+i8bzKtRx4msUW1BhYraVau4hWE7bfWYA/1
         KpdQ7UtmWkk9+TcsmNISidq/32hTNrIL2raaX5EdDZUhQFngAQSAk1tlf6KR+RUgCy9s
         abNXTcA1PAW6rc3Om6EUv14hSQLgNwNfbH++6jEQ80hPs+TXW5kqf7bson/I2JAJHO7R
         D1Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWfQ+8KffmUTaJ6aK+FYmXcTjekq5FoaYSGbxk8UBQ6vwvqaoDT
	m9PU/UdyL0O9b0Hsfzuf6pY=
X-Google-Smtp-Source: APXvYqxKIz3dMxoa20vhVJIgv9uoIVDz0t95oB8UiH7YoSBZ46FqQg1g2IN654EVIi8yOZqd3lrDAQ==
X-Received: by 2002:a2e:8591:: with SMTP id b17mr3613233lji.249.1581034811173;
        Thu, 06 Feb 2020 16:20:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9786:: with SMTP id y6ls1748556lji.4.gmail; Thu, 06 Feb
 2020 16:20:10 -0800 (PST)
X-Received: by 2002:a2e:96c6:: with SMTP id d6mr3702739ljj.4.1581034810240;
        Thu, 06 Feb 2020 16:20:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581034810; cv=none;
        d=google.com; s=arc-20160816;
        b=Sl5kOYfUgqhYR3yUcR7F2Orn1YfU90Ani55uAaTovFotR4mtmP3Hu3W8C373/AhqeK
         AqdgxeEOq06tRkRvZDxHDGLElqYPajWVW9J/o/u1jVTDVfsTLYjZ7CaaQVEEmTbeSvdt
         s/rEEyP1bxL61qDgBmRLK+29CR4gRWqwOn4Ik02dduvScpFDmDkzZehb/VBkwXxoXmKw
         cU89zQ9Sbql//z6NKKlj6/GNEjGFE0XGh/gBgfAS/Tgo74NZilhnNg+mDeXUT4k1zo3p
         S+h8Sss3KN+SmbLHBFT32SjJu24jltQiwVV2P9F0vcie8DIwECCNASTTMYlOK1vNeZ7q
         qhzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CoKbncYciVD/U0lXsVtX7zMw7+64OYjcPIBvVRn+6s0=;
        b=kHXI4GNEbCPPPzVUmmWDEAeuJa/vS1FvEcP0kPJHTt/9XjIgXt3qg67VEmyhL6pf9d
         2UIyPJZLyanDV9/dgN91gqyyQIUlatH1uBQhrffE5+L6pgNWXUa/cLa1xQbaDFE7vnEZ
         EsovnCI4slcavHSUAwXtuAVaXYT32PAIwTYTkEjnOEIv7W+IdCqAGO2fpHsn50AYI8IA
         1+MH9inb9utTF6DCIn6mWc0otulYdTzk6DTEX85ht+L3jqwsp+gm0QwrsGk3rcOOl59M
         E+08XFwRowxXw7wRljq4ImUadnOps4sw1ryk/qVM9pBDbhKq1ShIb8meGQ20CB5ER0Zc
         IhFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qj3OJ5o+;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h8si56009ljj.3.2020.02.06.16.20.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 16:20:10 -0800 (PST)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id q9so748118wmj.5
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 16:20:10 -0800 (PST)
X-Received: by 2002:a1c:964f:: with SMTP id y76mr454472wmd.62.1581034809466;
 Thu, 06 Feb 2020 16:20:09 -0800 (PST)
MIME-Version: 1.0
References: <20200206200345.175344-1-caij2003@gmail.com> <20200206232840.227705-1-ndesaulniers@google.com>
 <CAOHxzjGiO54BwUDR4zz6MwvFT3-XXDx830cQcQAcVUPA1N_emA@mail.gmail.com> <CAKwvOdkaQJrXt3y_QDyZpQpeJqB0nYsV_p21h63SS1k2Q3Da=w@mail.gmail.com>
In-Reply-To: <CAKwvOdkaQJrXt3y_QDyZpQpeJqB0nYsV_p21h63SS1k2Q3Da=w@mail.gmail.com>
From: Jian Cai <caij2003@gmail.com>
Date: Thu, 6 Feb 2020 16:19:58 -0800
Message-ID: <CAOHxzjGmqM2F=U23M7hFm6+dumsdDi8g1HFm3t3vQV2fozFz+w@mail.gmail.com>
Subject: Re: [PATCH] ASoC: soc-core: fix an uninitialized use
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000322242059df15a3a"
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qj3OJ5o+;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000322242059df15a3a
Content-Type: text/plain; charset="UTF-8"

Thanks for the pointers. You are absolutely right (despite working late),
this is not an issue upstream anymore. I was looking at 4.14 and 4.19 on
ChromeOS. I did double check the upstream code but stopped right after
seeing 'ret' was still uninitialized. Thanks again for the information.

On Thu, Feb 6, 2020 at 4:04 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Fri, Feb 7, 2020 at 12:55 AM Jian Cai <caij2003@gmail.com> wrote:
> >
> > Hi Nick,
> >
> > 'ret' is only defined in if branches and for loops (e.g.
> for_each_component_dais). If none of these branches or loops get executed,
> then eventually we end up having
>
> https://elixir.bootlin.com/linux/latest/source/sound/soc/soc-core.c#L1276
> and
> https://elixir.bootlin.com/linux/latest/source/sound/soc/soc-core.c#L1287
> both assign to `ret` before any `goto` is taken.  Are you perhaps
> looking at an older branch of the LTS tree, but not the master branch
> of the mainline tree? (Or it's possible that it's 1am here in Zurich,
> and I should go to bed).
>
>
> >
> > int ret;
> >
> > err_probe:
> >         if (ret < 0)
> >                 soc_cleanup_component(component);
> >
> > With -ftrivial-auto-var-init=pattern, this code becomes
> >
> > int ret;
> >
> > err_probe:
> >        ret = 0xAAAAAAAA;
> >         if (ret < 0)
> >                 soc_cleanup_component(component);
> >
> > So soc_cleanup_component gets called unintentionally this case, which
> causes the built kernel to miss some files.
> >
> >
> >
> > On Thu, Feb 6, 2020 at 3:28 PM Nick Desaulniers <ndesaulniers@google.com>
> wrote:
> >>
> >> > Fixed the uninitialized use of a signed integer variable ret in
> >> > soc_probe_component when all its definitions are not executed. This
> >> > caused  -ftrivial-auto-var-init=pattern to initialize the variable to
> >> > repeated 0xAA (i.e. a negative value) and triggered the following code
> >> > unintentionally.
> >>
> >> > Signed-off-by: Jian Cai <caij2003@gmail.com>
> >>
> >> Hi Jian,
> >> I don't quite follow; it looks like `ret` is assigned to multiple times
> in
> >> `soc_probe_component`. Are one of the return values of one of the
> functions
> >> that are called then assigned to `ret` undefined? What control flow
> path leaves
> >> `ret` unitialized?
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOHxzjGmqM2F%3DU23M7hFm6%2BdumsdDi8g1HFm3t3vQV2fozFz%2Bw%40mail.gmail.com.

--000000000000322242059df15a3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the pointers. You are absolutely=C2=A0right (de=
spite working late), this is not an issue upstream anymore. I was looking a=
t 4.14 and 4.19 on ChromeOS. I did double check the upstream code but stopp=
ed right after seeing &#39;ret&#39; was still uninitialized. Thanks again f=
or the information.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Feb 6, 2020 at 4:04 PM Nick Desaulniers &lt;<a h=
ref=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Feb 7=
, 2020 at 12:55 AM Jian Cai &lt;<a href=3D"mailto:caij2003@gmail.com" targe=
t=3D"_blank">caij2003@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Nick,<br>
&gt;<br>
&gt; &#39;ret&#39; is only defined in if branches and for loops (e.g. for_e=
ach_component_dais). If none of these branches or loops get executed, then =
eventually we end up having<br>
<br>
<a href=3D"https://elixir.bootlin.com/linux/latest/source/sound/soc/soc-cor=
e.c#L1276" rel=3D"noreferrer" target=3D"_blank">https://elixir.bootlin.com/=
linux/latest/source/sound/soc/soc-core.c#L1276</a><br>
and<br>
<a href=3D"https://elixir.bootlin.com/linux/latest/source/sound/soc/soc-cor=
e.c#L1287" rel=3D"noreferrer" target=3D"_blank">https://elixir.bootlin.com/=
linux/latest/source/sound/soc/soc-core.c#L1287</a><br>
both assign to `ret` before any `goto` is taken.=C2=A0 Are you perhaps<br>
looking at an older branch of the LTS tree, but not the master branch<br>
of the mainline tree? (Or it&#39;s possible that it&#39;s 1am here in Zuric=
h,<br>
and I should go to bed).<br>
<br>
<br>
&gt;<br>
&gt; int ret;<br>
&gt;<br>
&gt; err_probe:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0soc_clean=
up_component(component);<br>
&gt;<br>
&gt; With -ftrivial-auto-var-init=3Dpattern, this code becomes<br>
&gt;<br>
&gt; int ret;<br>
&gt;<br>
&gt; err_probe:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D 0xAAAAAAAA;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0soc_clean=
up_component(component);<br>
&gt;<br>
&gt; So soc_cleanup_component gets called unintentionally this case, which =
causes the built kernel to miss some files.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Feb 6, 2020 at 3:28 PM Nick Desaulniers &lt;<a href=3D"mailto:=
ndesaulniers@google.com" target=3D"_blank">ndesaulniers@google.com</a>&gt; =
wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; Fixed the uninitialized use of a signed integer variable ret =
in<br>
&gt;&gt; &gt; soc_probe_component when all its definitions are not executed=
. This<br>
&gt;&gt; &gt; caused=C2=A0 -ftrivial-auto-var-init=3Dpattern to initialize =
the variable to<br>
&gt;&gt; &gt; repeated 0xAA (i.e. a negative value) and triggered the follo=
wing code<br>
&gt;&gt; &gt; unintentionally.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Signed-off-by: Jian Cai &lt;<a href=3D"mailto:caij2003@gmail.=
com" target=3D"_blank">caij2003@gmail.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; Hi Jian,<br>
&gt;&gt; I don&#39;t quite follow; it looks like `ret` is assigned to multi=
ple times in<br>
&gt;&gt; `soc_probe_component`. Are one of the return values of one of the =
functions<br>
&gt;&gt; that are called then assigned to `ret` undefined? What control flo=
w path leaves<br>
&gt;&gt; `ret` unitialized?<br>
<br>
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
om/d/msgid/clang-built-linux/CAOHxzjGmqM2F%3DU23M7hFm6%2BdumsdDi8g1HFm3t3vQ=
V2fozFz%2Bw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAOHxzjGmqM2F%3DU23M7hFm6%2Bd=
umsdDi8g1HFm3t3vQV2fozFz%2Bw%40mail.gmail.com</a>.<br />

--000000000000322242059df15a3a--
