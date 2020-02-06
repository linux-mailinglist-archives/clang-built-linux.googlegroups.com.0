Return-Path: <clang-built-linux+bncBDTIRUHU4QLBB3WO6LYQKGQETYLVABI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 884E9154F87
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 00:55:26 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id j21sf53956lji.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 15:55:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581033326; cv=pass;
        d=google.com; s=arc-20160816;
        b=m/0h0MDojpIe79U/k5cUcXd6TW/KOnldpGjNzmiBd9pI54hMbkUaJ7iLDpAiyWQlEf
         ZvGwBOBEbnXpk9D9W+/QP4vdcXGnc4r/CCMcRNYK8LsO7HoYGVq5tys0WWzrbFqRAgow
         Qq0VmasOaX7kR9xN1mkIHGnxyx0iaV3aGGE4TnoHtAdilwAnBMES/ew7wnwqYdktdYC0
         gGri2MdLwrv7qzFMUus54Hva0HHNZcpEuLQeRZHoEkngkdGy9RWaGxAf1fbB5kfXojcj
         IkzO47fYuKSobUTo7n+uPx1HbbH0xZ/avrlVCG8AMOP+QgMBwcTRgyXpSGy+uZRIIiML
         SOhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=faOvabW6VOalFZCYYrE1lRWNMNrJBc63pVj013TFV7c=;
        b=PSPgkT5qjc/U04+kW1GptHxvYv5aTeMG3fQ4XRcCv+mKd3q92w93rTz2kGP1jiFu1E
         zMito9SAKs+v4YeaHDoNpFh2huMYzAZP/JFtcTePrfR+a+9B7ctnMIsm2PpO5O1bW51N
         ILJP6DyHz7a6UCzk1xnmY4WauZlZVK67/MTiCCvSCexvnbl7bYnH8v4dJXdr4g0c63Fg
         BO/nBVWbR19tIybHlZ8+KkhqtjXx/ssIERMfd1MuHntIPrnDmMRFnto0gIf/zZvtz3o/
         si7puqeKFz6FcuDcsAOuH+6Z13pPeDYG2mDH8dJF3keoqwb/J14UMlwGymkmL3uQgHKv
         R5Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YPsqhK1v;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faOvabW6VOalFZCYYrE1lRWNMNrJBc63pVj013TFV7c=;
        b=Pw1xwXzKPn4Gcg/Nb/BxTGv9mMFvPMeb5Idn/5IZ6YNNQY7IHkEBaKhzTo9kjRXhcF
         kZpcE1gHiqNXEU62h5sYNd6tfGLsLdBoaNywrHXy0n46d8tJpZkbCVy2isEdy5SCcoU6
         x0o7qzK8DFyRBRZBuSXBDm8kWIDiTI6MHA104G3dW4M7Bnm6fXc1JuQk/HH0KopmOXPc
         n0kqYNHkCoNHNFcISxJiNC6uN5qAQxygIGeYHoY6CiZBwgjDRbNinq70glcSvGAyjRXY
         5rOhHng9uXuAL6YHOLEaX/7zjbfwlDEDTJwAk1iNgg7Bo46rsdBFPI6SOQw8M/6lYX8K
         meEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faOvabW6VOalFZCYYrE1lRWNMNrJBc63pVj013TFV7c=;
        b=phz2SHGEq1KJrLNvbO7mfrk7XkvWffF9R1ekzQCRgbQfiAn0+9ZlvsXkF93ViDhjkp
         rPjgk1sMcvBeRphtYwGTmLbMg4wTRkDeNCsZGpAY4JfKpFkOqE16XRergMulEyUPAq5G
         VjRsMmn3qEWoTpv80BQ+k98tvPGlF6l5RRCDWr6ZT9os54ZWjdCN1Gc7V81Grjumf2tu
         dxoXVzECiBCCpbATLO8z7OX35Ssdx6ilCv7YZyQEGLxHcgpLudF5sXIp08unxCVWcStI
         +jJwxS2mpY5Uu6+eUBUGXapu5L6mB2G7CCGia08u2mluN9v7lV2BF0DuFfdYyuZK8XcP
         TL3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faOvabW6VOalFZCYYrE1lRWNMNrJBc63pVj013TFV7c=;
        b=icSb+/anJ7Hel2LCXdty0nevkxG+nYsQIZ3bqod0KoTsfo9g9C/RlJ32kKiJarxoVk
         77UC4hRN9G1z1gzET/28s7WXEYTRC4BNCO0I5GoDRuGHV+AQIVmqibJF6R0bNlFgccOB
         EbO/9/VfGJZEUZ7TDrMRESCJMOvOl42VkXNs/l9qtGl3GZuf1ao7IftwFYhfWJS0p6X8
         iFNKZ8ee5Iub6ZLRfDnjhUJ/amlCFE+PhKabHL1/iAC3943EKpeX0vJv6HMqYaHL+GS8
         n3TUzc7CBZhxYwsAAUy5bk/1yOJQn453EHy7yINrcS7GBQgHqDc1lafAfxwHdL49yUY4
         wDpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWafmvpT/BdxegE4ySPMoTllk8O4uWrtApIhQYM1nC9qBIyt+3
	qrUnVCR3xD7W/hzkRaP3tkE=
X-Google-Smtp-Source: APXvYqz2FGvIswntA980L7hw31sPPhy2gCuebAYA+eCotdZ5w2WMBYUmsrjbDk8703kQdcuSTSbRKQ==
X-Received: by 2002:a2e:9218:: with SMTP id k24mr3481241ljg.262.1581033326089;
        Thu, 06 Feb 2020 15:55:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8544:: with SMTP id u4ls1735083ljj.6.gmail; Thu, 06 Feb
 2020 15:55:25 -0800 (PST)
X-Received: by 2002:a05:651c:149:: with SMTP id c9mr3587587ljd.80.1581033325517;
        Thu, 06 Feb 2020 15:55:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581033325; cv=none;
        d=google.com; s=arc-20160816;
        b=bC+itkdOzqzjplwXQ4FXZLmIsK+9Ym2vVeAdw4+QBQxbTVc1H15yW4D76SXMw/oQjP
         XhB9a8T43JY7uE4Ikt4JEflnw6B7VabTCl+FkTubRVlrPaCRKwa4W51IMRRwQYDJcUE8
         nNNHSRzMydqY8pmImUWrb9PVb95Wj3DmgFtEV/IOnNgwISMeHK/eVnCPhlDKUjo0ufsq
         xGtaMa0gvQ9nyWRzR5OCG6eumuxj+0/d9Qot9hX3R2AoaGQ7VpqWJLgDcTe8uzH43kdL
         pKD2cULkXQrQRlsSQ7FnTrbuszCBm8t07YpkkD7qaZjNwidOxJ/sTX4miFybJwZcTFAX
         x38A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hG9QLDrHnieJvdgoYjUy2r02+eenvwZoinClBv74dLU=;
        b=CXAC0nXaLS9RMazplxG70dLl9lxsCjb6bCJTTAFdnOAZ2thmffjJjlEi8c4cu8280f
         ur06ANrzd15PC6RkXdcFM8+HwPNu1y23Ynhoil50L2dGXflHsnl8H+q+0m31mBDsMtZ+
         1EMJSw5pG1VVDSGb8oSumyhAIesfd8XO358qsgakN8v990TLRA4vvTBbT7GpbvOFVcE3
         PTcIAlwYzeAYAJIBTpZY1N6dkuJM/Qb3JeqSz+bH34CBHLOX9sv3zKICy7t6V52osW9O
         WE9q5HWvIURnx2sTQ8qnqQKNO7KTAjNc5XRpX5ExlTHtS0aRrLv5rbWEBUTowWQ84Emw
         i/Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YPsqhK1v;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d8si41906lji.0.2020.02.06.15.55.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 15:55:25 -0800 (PST)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id m16so498067wrx.11
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 15:55:25 -0800 (PST)
X-Received: by 2002:adf:ed09:: with SMTP id a9mr552068wro.350.1581033325102;
 Thu, 06 Feb 2020 15:55:25 -0800 (PST)
MIME-Version: 1.0
References: <20200206200345.175344-1-caij2003@gmail.com> <20200206232840.227705-1-ndesaulniers@google.com>
In-Reply-To: <20200206232840.227705-1-ndesaulniers@google.com>
From: Jian Cai <caij2003@gmail.com>
Date: Thu, 6 Feb 2020 15:55:14 -0800
Message-ID: <CAOHxzjGiO54BwUDR4zz6MwvFT3-XXDx830cQcQAcVUPA1N_emA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: soc-core: fix an uninitialized use
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b88927059df1010f"
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YPsqhK1v;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::441
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

--000000000000b88927059df1010f
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

'ret' is only defined in if branches and for loops (e.g.
for_each_component_dais). If none of these branches or loops get executed,
then eventually we end up having

int ret;

err_probe:
        if (ret < 0)
                soc_cleanup_component(component);

With -ftrivial-auto-var-init=pattern, this code becomes

int ret;

err_probe:
       ret = 0xAAAAAAAA;
        if (ret < 0)
                soc_cleanup_component(component);

So soc_cleanup_component gets called unintentionally this case, which
causes the built kernel to miss some files.



On Thu, Feb 6, 2020 at 3:28 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> > Fixed the uninitialized use of a signed integer variable ret in
> > soc_probe_component when all its definitions are not executed. This
> > caused  -ftrivial-auto-var-init=pattern to initialize the variable to
> > repeated 0xAA (i.e. a negative value) and triggered the following code
> > unintentionally.
>
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>
> Hi Jian,
> I don't quite follow; it looks like `ret` is assigned to multiple times in
> `soc_probe_component`. Are one of the return values of one of the functions
> that are called then assigned to `ret` undefined? What control flow path
> leaves
> `ret` unitialized?
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOHxzjGiO54BwUDR4zz6MwvFT3-XXDx830cQcQAcVUPA1N_emA%40mail.gmail.com.

--000000000000b88927059df1010f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nick,</div><div><br></div>&#39;ret&#39; is only de=
fined in if branches and for loops (e.g. for_each_component_dais). If none =
of these branches or loops get executed, then eventually we end up having<d=
iv><br></div><div>int ret;</div><div><br></div><div>err_probe:<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (ret &lt; 0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 soc_cleanup_component(component);<br></div><div><br></=
div><div>With -ftrivial-auto-var-init=3Dpattern, this code becomes</div><di=
v><div><br></div><div>int ret;</div><div><br></div><div>err_probe:</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D 0xAAAAAAAA;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (ret &lt; 0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 soc_cleanup_component(component);</div></div><div><br></div><div>So =
soc_cleanup_component gets called unintentionally this case, which causes t=
he built kernel to miss some files.</div><div><br></div><div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Feb 6, 2020 at 3:28 PM Nick Desaulniers &lt;<a href=3D"mailto:ndesaulni=
ers@google.com">ndesaulniers@google.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">&gt; Fixed the uninitialized use of =
a signed integer variable ret in<br>
&gt; soc_probe_component when all its definitions are not executed. This<br=
>
&gt; caused=C2=A0 -ftrivial-auto-var-init=3Dpattern to initialize the varia=
ble to<br>
&gt; repeated 0xAA (i.e. a negative value) and triggered the following code=
<br>
&gt; unintentionally.<br>
<br>
&gt; Signed-off-by: Jian Cai &lt;<a href=3D"mailto:caij2003@gmail.com" targ=
et=3D"_blank">caij2003@gmail.com</a>&gt;<br>
<br>
Hi Jian,<br>
I don&#39;t quite follow; it looks like `ret` is assigned to multiple times=
 in<br>
`soc_probe_component`. Are one of the return values of one of the functions=
<br>
that are called then assigned to `ret` undefined? What control flow path le=
aves<br>
`ret` unitialized?<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAOHxzjGiO54BwUDR4zz6MwvFT3-XXDx830cQcQAcVUPA1=
N_emA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAOHxzjGiO54BwUDR4zz6MwvFT3-XXDx830=
cQcQAcVUPA1N_emA%40mail.gmail.com</a>.<br />

--000000000000b88927059df1010f--
