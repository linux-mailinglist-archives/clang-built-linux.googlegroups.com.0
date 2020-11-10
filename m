Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBO7HVP6QKGQEMEFVB2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 231DD2AE081
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 21:10:37 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id v2sf10153217pgv.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 12:10:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605039036; cv=pass;
        d=google.com; s=arc-20160816;
        b=UhKQzNCb9Dr2UGP9C1R2eyL+K+KxVslYpC7brLi0pW8MxKjuvvJiC+knwMQ4dLveeJ
         RE0Q7Inmprrcm4XNWAeGY3I1Y7VVM1LoRIO+wfDCz6pmhI7i+1tdwkpXQ3JYQxtOZb5m
         Hq+y+4IUrroLJDvVDgSOKBx6PZ2Wv1eGpjZZS6/X+TgEiidu0Ym9rIei82xW7iKlgnJG
         aDIormnoVvwNkdB922bI6a+E/JzSU+UjE3wNt4kgmpQYC2rWHy2g5gyqYOX4D49lygNn
         1knekMbH5ngXncnf/UaaXFnWjGGMg+VcefQyfvEPF8aFAiTNLn1LWQRSgDq+t9WMhPJq
         tAwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cV971ZxIOzX0ECPi8yKeqYBHFY2aT13TdZkCX7pZ1oE=;
        b=Z5umK52JvbVbHPEdLpl7YoDDC6Xqf7cnEf35NE1uLjoU0ro0td7suwtHyD2yxXe32Z
         0aDYRx03KEvt3pwcN+4pubwfE4N3U05DQ+xT2mvBckUSCIhE0+ie1hguF5U8Bmongm2Y
         An/ICkxiOPk4LE6U/ARasgBFOA8N8xa1Icr+bN9IRR+IbsjlE526gA++w1YwlLgTFvqQ
         x/PTIXhmDscw4+GkcEhpkupqeQRMECMuL2XBti31t4LI1y/GKuXP5UyPKi1SpbI7fCLn
         jo3VJZxkXC4z601y5Dy6F5mAcSVnojlbuaE0dzgCE7clFNm2dxO8p7eI6FPNmB2UC7Na
         O97A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HfPj1FRq;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cV971ZxIOzX0ECPi8yKeqYBHFY2aT13TdZkCX7pZ1oE=;
        b=OjAdNVgCYncvfKOEXmcDEbZkZdZpdL3WytKiMacQijptz5nRwg0q1v1F1GMiWT0F6W
         RTut+4b6Oo1wjOWlelNpxelJp1hRDP6S/ohO140ERZdlWMI0zjtw3uzVW5GSi6pgh2e3
         ipxyR6shpFo+usyxe7zK8JoHEy61sh4gbugz4d3lQaYXmso0Vf/5fPhYs2Yy+Z4EcWGT
         d6FdbdwCTW6yXi42EfGDnTGe2leehHeL0DmjNUVwR5KNuybjKwTXJfWDcWKMCIzg8a4B
         Wom1u/ht7dmEDd3ZIC3XvJY7dHXNaBJua1lI9hKRvYeNdJmlRwc+bLn+ApFdGL2Jpv21
         0kkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cV971ZxIOzX0ECPi8yKeqYBHFY2aT13TdZkCX7pZ1oE=;
        b=Jn7BN4S6riiR+YvagIFHRO+cPqXGwQX34KX/8Jn0+LKN4lXzb7tpdQuD8uv85HmQ9L
         3Eamb8swFEmcnbs2ivpyDl1ywP7AB96Sk3xh2jMaORNoH25DU4uF5suBgQxAXijVSyth
         rXsengYWyXCdKNgEgVO++GfcSGavRpi9Pi0xiHqmP30MFAHsAxDr0Sc8WWA1PQ1Ao6FN
         /M1XItjy432wc32c9cpeVy4pmm4kROghlNizvzHv7yPjjHrXPNweVToIaW6GjXBga2gQ
         FhZKtW99uBZxD9tHNMM+dzo4YbjKNqdnxdbvYWApZVnRrM36kVXzXBP2kmhUZ701nHwF
         5Gdg==
X-Gm-Message-State: AOAM5309S6PtsKa7ipyuUyuI1W2wALXGnCgHo443pGWPYj+svPOFX82n
	AWhXNAf6bCq03pexRVrl8Cs=
X-Google-Smtp-Source: ABdhPJzEiiJfNJyjs2DkfCEdNx8nqrlcHmvl3DZaXIuL2bVRgw1zl74Nfrt5kFwtQfeFANLjCG5GNA==
X-Received: by 2002:a17:902:402:b029:d5:ac47:c33f with SMTP id 2-20020a1709020402b02900d5ac47c33fmr17553843ple.60.1605039035825;
        Tue, 10 Nov 2020 12:10:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls4560642pgn.8.gmail; Tue, 10 Nov
 2020 12:10:35 -0800 (PST)
X-Received: by 2002:a63:4d07:: with SMTP id a7mr19269215pgb.274.1605039035295;
        Tue, 10 Nov 2020 12:10:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605039035; cv=none;
        d=google.com; s=arc-20160816;
        b=Co/m6w5iInHi0ibQjENJ0iCO75kbGqQDHbT3ghcr0eExjKw+PQnSLzI8vgBN6bFpJ6
         bdawxIYvRepnF9gt4mEZU3jqdQgvlb80BmX9ETaM17dih8hBU2WB1vCVilz9ely93lEm
         CRnrL3fU8KSAjA+9CiNyDL/mvAKRpHCF7AGGJEgn6v1R8qXvzKKbODFWMrwDZDdZSrJn
         whrsLkJXPt/wOkSl+tCD61D2z401WhtIxvh3xqhjA4tb3cp75LlNSXEfb5qgWAYC1FR+
         pjfiLN2EgYo0qspRAtgzKcey9EdSgwhME3HdKqN7hTtP2iqACA8T47wv0/MJKztD3hwz
         /FMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=60q4dhVgUflOyJPODxNVJJaz3z7VSEahg0qJk0syEKw=;
        b=wNddEyKutv7yEuPMBMmtG3KZKauEJNaE1MO16IaJucdongfnN8pYjBYFbWW/EpAv6a
         98/yKITbTvIOGj/ebKFN/vrnW0iiSk/v1R/Yup3AK5ehQXl4pMVdIFvli4aPnOTIGmsE
         NGM8PFz4i0RIDaeEgEGmgtlDgjbGIFncdLd00+qnpNnVIlJHtvCr8bKaKDyYfORBjJR4
         FTGl2SMxsyk6zl/IiBEUYlINtJaOj2e9A8Zv8oFxT9hZhi8373b2CmaB8Eqcl/EZXi3p
         Clam8ZmPbSCtNfmgNxSfzm8HS2nPSgdJ2RiLdSNbQ1SFe6EyHBzl5mKZqQ6X92mo0gmc
         kv2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HfPj1FRq;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u133si916861pfc.0.2020.11.10.12.10.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 12:10:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id r10so11195519pgb.10
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 12:10:35 -0800 (PST)
X-Received: by 2002:a63:c54e:: with SMTP id g14mr18117904pgd.19.1605039034841;
 Tue, 10 Nov 2020 12:10:34 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
 <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
 <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com> <CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ=7U6Gsp46zcQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ=7U6Gsp46zcQ@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 12:10:23 -0800
Message-ID: <CA+SOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8zzyWos9Q@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="00000000000086078605b3c6450f"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HfPj1FRq;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--00000000000086078605b3c6450f
Content-Type: text/plain; charset="UTF-8"

I tried to verify with ixp4xx_defconfig, and I noticed it also used
CONFIG_CPU_BIG_ENDIAN=y to enable big endianness as follows,

linux$ grep ENDIAN arch/arm/configs/ixp4xx_defconfig
CONFIG_CPU_BIG_ENDIAN=y

Also it appeared arch/arm/kernel/iwmmxt.o was not built with
ixp4xx_defconfig. The commands I used

linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
ixp4xx_defconfig
linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -j32 CC=clang
linux$ ls arch/arm/kernel/iwmmxt.o
ls: cannot access 'arch/arm/kernel/iwmmxt.o': No such file or directory

Did I miss any steps?



On Tue, Nov 10, 2020 at 11:26 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Mon, Nov 9, 2020 at 11:36 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > BE32 != BE8
>
> Oh? Sorry, what does BE8 stand for?  arch/arm/mm/Kconfig says:
>
> CONFIG_CPU_ENDIAN_BE8
> Support for the BE-8 (big-endian) mode on ARMv6 and ARMv7 processors.
>
> vs:
> CPU_ENDIAN_BE32
> Support for the BE-32 (big-endian) mode on pre-ARMv6 processors.
>
> So BE8 seems newer?  It looks like in my tests, enabling
> CPU_BIG_ENDIAN via menuconfig enabled CPU_ENDIAN_BE8.
>
> >
> > Please use, e.g., ixp4xx_defconfig with IWMMXT and BE enabled. It
> > seems like .inst does the right thing here, i.e., the assembler knows
> > that it should emit BE for BE32 and LE for BE8, but it needs to be
> > confirmed.
>
> Ah and ixp4xx_defconfig selects CPU_ENDIAN_BE32.  Yep, and the
> disassemblies of those match, too.
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8zzyWos9Q%40mail.gmail.com.

--00000000000086078605b3c6450f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"arial, sans-serif">I tried to verify with ix=
p4xx_defconfig, and I noticed it also used=C2=A0</font>CONFIG_CPU_BIG_ENDIA=
N=3Dy<font face=3D"arial, sans-serif">=C2=A0to enable big endianness as fol=
lows,</font><div><font face=3D"arial, sans-serif"><br></font></div><div><fo=
nt face=3D"arial, sans-serif">linux$ grep ENDIAN arch/arm/configs/ixp4xx_de=
fconfig<br>CONFIG_CPU_BIG_ENDIAN=3Dy<br></font><div><font face=3D"arial, sa=
ns-serif"><br></font></div><div><font face=3D"arial, sans-serif">Also it ap=
peared arch/arm/kernel/iwmmxt.o was not built with ixp4xx_defconfig. The co=
mmands I used</font><div><font face=3D"arial, sans-serif"><br></font></div>=
<div><font face=3D"arial, sans-serif">linux$ARCH=3Darm CROSS_COMPILE=3Darm-=
linux-gnueabihf- make CC=3Dclang ixp4xx_defconfig<br>linux$ARCH=3Darm CROSS=
_COMPILE=3Darm-linux-gnueabihf- make -j32 CC=3Dclang<br></font></div><div><=
font face=3D"arial, sans-serif">linux$ ls arch/arm/kernel/iwmmxt.o<br>ls: c=
annot access &#39;arch/arm/kernel/iwmmxt.o&#39;: No such file or directory<=
/font><br></div><div><br></div><div>Did I miss any steps?</div><div><br></d=
iv><div><br></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Nov 10, 2020 at 11:26 AM Nick Desauln=
iers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On Mon, Nov 9, 2020 at 11:36 PM Ard Biesheuvel &lt;<a href=3D"mailto:ardb@k=
ernel.org" target=3D"_blank">ardb@kernel.org</a>&gt; wrote:<br>
&gt;<br>
&gt; BE32 !=3D BE8<br>
<br>
Oh? Sorry, what does BE8 stand for?=C2=A0 arch/arm/mm/Kconfig says:<br>
<br>
CONFIG_CPU_ENDIAN_BE8<br>
Support for the BE-8 (big-endian) mode on ARMv6 and ARMv7 processors.<br>
<br>
vs:<br>
CPU_ENDIAN_BE32<br>
Support for the BE-32 (big-endian) mode on pre-ARMv6 processors.<br>
<br>
So BE8 seems newer?=C2=A0 It looks like in my tests, enabling<br>
CPU_BIG_ENDIAN via menuconfig enabled CPU_ENDIAN_BE8.<br>
<br>
&gt;<br>
&gt; Please use, e.g., ixp4xx_defconfig with IWMMXT and BE enabled. It<br>
&gt; seems like .inst does the right thing here, i.e., the assembler knows<=
br>
&gt; that it should emit BE for BE32 and LE for BE8, but it needs to be<br>
&gt; confirmed.<br>
<br>
Ah and ixp4xx_defconfig selects CPU_ENDIAN_BE32.=C2=A0 Yep, and the<br>
disassemblies of those match, too.<br>
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
om/d/msgid/clang-built-linux/CA%2BSOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8z=
zyWos9Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJSSR62VfWhKx9R1cxT-CHXD7=
RN08eJBYxUH8zzyWos9Q%40mail.gmail.com</a>.<br />

--00000000000086078605b3c6450f--
