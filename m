Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBCUEVT6QKGQEFRCR7SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CD02AE15E
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 22:11:39 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id g2sf7507111plg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 13:11:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605042698; cv=pass;
        d=google.com; s=arc-20160816;
        b=CFdWEQyW4+KXUxrhuRp6/9bcy2f3UWGtWYE149PkJ3Zr43D2JIr88EeRn1lrAmJ7M6
         PUj63nAxg4e862dDnSErg+qTZHG+i2PE+dgf6mfUM/O8Qmx4jnymUE/r5IvbhsAUh9Xe
         OEqz98NIm8SF84XDp8IJZ6YnpXXT8LBMN3bvTBPquEQpa3Qls1e6zxaX+0frnFeP+kRy
         RxbY5oVaEoWcbLO7PJBeLLmAlajcgDF1krcCPL5APuzQOg9Vzovyit2ukAvphi8EDDR5
         sdHJzv0+P6iF1jp9Nqolvoaxg1VuK06AMWzjaPqQQ19GsStl8yCvoLIKOOpzcIqS4ggi
         yN0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9mYiDSbXx5T1Ye1jLoy1c2XILtbxyKD/oCRRVWgjdac=;
        b=Jx1vCC49ELH5QYelJtnfryHcZGkfQlgIb7RXSDQK5bK46vw7tKe6XM5UMaN51eb0TA
         1apbaRIBHH8ONvIjox40EWSK2y3bIkUwIhOgBDMLbDib0P2TRdrCcB9ao5hJ1m+SgKBG
         qoGCas1ZmIyZ0AJqan6jqoF2eXiigpoeCR1yN+ffx9XIlUBrWAqGT09mXLZzG0/oe2tt
         292trOMx5cRKmF+82ST1jFhGqZAxkenfe0iMkdi2ZjySsj/iyPRDsWO7Cn6ZXIUjAb3R
         W705GM9WfNJoRAiMe2V5O0/i8lUpxUffAjGI/f6EUPuMSWnJ2w+2nVxDuthtzmK8oWGp
         YvGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IqZLTI2K;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9mYiDSbXx5T1Ye1jLoy1c2XILtbxyKD/oCRRVWgjdac=;
        b=oEiTKsye3TI+DRCNNbHKJXrdNcvRs2BTKw6k3qFFr5Oxs5lC5D13W3f9yPOBmtuzcd
         RHWKAeiJgDjErMACN9py7rRRFM4gkzb/KYXZUZqTnngtXzqDNWMTiUipFEiBobqlYXs1
         cTIkB5ONmWagy5GA8FqCyI2JHHntchzG88UmJV8zxkeSUSNIQzgIlc1FJkeKU+RkJ5XI
         lnWRufks9rY8LdhpDIYirozW3OzHmcaID9GerNJfY9eIn76ZRk3c/v3HPpXHkpYBc2bx
         GuDsfrgPd+4KXw49UE1Iep/TY4aZsVoxnc2JHDHRGi0aN9LTAc1JOizPbfNv7C2HrIDs
         pjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9mYiDSbXx5T1Ye1jLoy1c2XILtbxyKD/oCRRVWgjdac=;
        b=spclE2CxjdZ9e5iNW/sIRBEMZqiYY7M5VgvW9JhUS3MEYCPtjOEAWpd0Q+F2m9Qi+T
         1pkEGubdUm9i2DOwjJoSxsUT1CnXVoAu4kWK9RZbgHiul/zNrvGmi0wL9vTjH5s6iCIZ
         +hn9zWdrU0f6qe4ks89WgyCiJOQaJr+MAhk/fMa9HQ+uIa+sBZ8btf4pChntYAkv1/Tb
         XZbELT6Vrw/2XQ3d7DWcvElnyEYc9is57SrsPXqhp13pCXSfLmZb+Mq4wIIu3TywCjtS
         LDSH/bmT+ULYt3kS7L/R0IE4QE8PI2s9LYsyrwA0GWu8OPR2gEy/IAZVmes/5nrIYA04
         EeaA==
X-Gm-Message-State: AOAM530xq5/TwGTAFaNm3kD07NVMUAFmw6vKe3kLO4XTrj8upi59SnyF
	RgpzabtF+d2YMCTTcg7yHK8=
X-Google-Smtp-Source: ABdhPJxmqlQcsoHffl70YtVKl+c5bqFzKSShJXC5QFacOhId/lqiOhP7eCgwKs0hau7wQAmKOSUKwg==
X-Received: by 2002:a63:1d15:: with SMTP id d21mr18771735pgd.433.1605042698341;
        Tue, 10 Nov 2020 13:11:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:645:: with SMTP id 66ls2903138pfg.10.gmail; Tue, 10 Nov
 2020 13:11:37 -0800 (PST)
X-Received: by 2002:a63:1709:: with SMTP id x9mr19258266pgl.334.1605042697788;
        Tue, 10 Nov 2020 13:11:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605042697; cv=none;
        d=google.com; s=arc-20160816;
        b=JCFWj86c3gcV3S7gnaAQlHUDDYLsWnLMaDLaoB4fk4pgaWRX607pUBtktAFtyP05g3
         WzuqWOUZKXWzFnDNt6xkTTQJSLPeietC5P3p+NZa8AomXstFzBQxRk8f6ghY+RxP+AXR
         mGB/OewaZnjh7xF3zE0LJ+VH0lrlW5P2HV+q+9GAfK6r9DZKAswiXPD7jBVxHGznhAon
         ibf4YJlJ/k+DL+nSQ9GkyG7WUXUJ6Z8nbUq+juLEccAv6x0kZYXXf6Y1tTNKePIdW81T
         5v3SLPLYkKYWZYM+rlBZaKFWy+tMhjiP80p06sjkwjO5nL+Pb0hJfNuYcSfRE+LZVXgy
         Sr7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=klftZ1B6JNkW2AO3Jb+vCDbnc8J1YvYDYU3CsGGo8uQ=;
        b=ZfrntwKHQJZMPj/hl6Qfr+oQF4voqeCIS6diF5goEnB7dKJxQw0DcvXdXFAIAVtsTg
         IEts65WlGRU3fVf2Rs+eMEGOGQmgZTgY1rPUVkdOmu8er3hXuc4BFSlFFTJ21dhQdzE6
         skI4WfguzI/07MECxmdJts/ugGMWIYP8DVab4XdkqimsIrKdSNup6reak3TiZYwwuyP/
         0/OthHVY3Kv+TtTULt9ot417ol9Zw4s7VK9awvR3a2f6Yw+K0ddKgOuy+huKEkK+t2ZP
         TU/xKwuR4EfU76q28YIj06La7Ip0xacVWcO+kiukfhRpezkUXVt3oHMPmvIe1o6FTydl
         7m5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IqZLTI2K;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id cc22si1292pjb.0.2020.11.10.13.11.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 13:11:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id z1so7107825plo.12
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 13:11:37 -0800 (PST)
X-Received: by 2002:a17:902:d710:b029:d3:7e54:96d8 with SMTP id
 w16-20020a170902d710b02900d37e5496d8mr18563943ply.65.1605042697277; Tue, 10
 Nov 2020 13:11:37 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
 <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
 <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
 <CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ=7U6Gsp46zcQ@mail.gmail.com>
 <CA+SOCLJSSR62VfWhKx9R1cxT-CHXD7RN08eJBYxUH8zzyWos9Q@mail.gmail.com>
 <CAKwvOdkpHdQF9Ko8FbP_SN=QfDiMq8ra5TSj_KHGRCbJdyYm6w@mail.gmail.com> <CAK8P3a1tU8g4HfsoYH4qa6C4Kv8QE3nv=UPSyH7824GXCYwUDQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1tU8g4HfsoYH4qa6C4Kv8QE3nv=UPSyH7824GXCYwUDQ@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 13:11:26 -0800
Message-ID: <CA+SOCL+RZcyAp6xKyWM05e9QQf8v+Ua2QUyf3vbY1=TUD8KK=w@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000d2911405b3c71f6c"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IqZLTI2K;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::642
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

--000000000000d2911405b3c71f6c
Content-Type: text/plain; charset="UTF-8"

Thanks! I tried again with CONFIG_IWMMXT enabled and the disassembly
remained the same after applying the patch.

linux$ git diff
diff --git a/arch/arm/configs/ixp4xx_defconfig
b/arch/arm/configs/ixp4xx_defconfig
index 27e7c0714b96..44feb73510d0 100644
--- a/arch/arm/configs/ixp4xx_defconfig
+++ b/arch/arm/configs/ixp4xx_defconfig
@@ -190,3 +190,4 @@ CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
 CONFIG_DEBUG_LL=y
 CONFIG_DEBUG_LL_UART_8250=y
+CONFIG_IWMMXT=y
(build arch/arm/kernel/iwmmxt.o)
linux$ arm-linux-gnueabihf-objdump -dr arch/arm/kernel/iwmmxt.o >
gas_before.txt
linux$ git apply
v2-0001-Make-iwmmxt.S-support-Clang-s-integrated-assemble.patch
linux$ echo $?
0
(build arch/arm/kernel/iwmmxt.o again)
$ arm-linux-gnueabihf-objdump -dr arch/arm/kernel/iwmmxt.o > gas_after.txt
linux$ diff gas_before.txt gas_after.txt
linux$ echo $?
0

On Tue, Nov 10, 2020 at 12:38 PM Arnd Bergmann <arnd@kernel.org> wrote:

> On Tue, Nov 10, 2020 at 9:11 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Nov 10, 2020 at 12:10 PM Jian Cai <jiancai@google.com> wrote:
> > >
> > > I tried to verify with ixp4xx_defconfig, and I noticed it also used
> CONFIG_CPU_BIG_ENDIAN=y to enable big endianness as follows,
> > >
> > > linux$ grep ENDIAN arch/arm/configs/ixp4xx_defconfig
> > > CONFIG_CPU_BIG_ENDIAN=y
> > >
> > > Also it appeared arch/arm/kernel/iwmmxt.o was not built with
> ixp4xx_defconfig. The commands I used
> > >
> > > linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
> ixp4xx_defconfig
> > > linux$ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -j32 CC=clang
> > > linux$ ls arch/arm/kernel/iwmmxt.o
> > > ls: cannot access 'arch/arm/kernel/iwmmxt.o': No such file or directory
> > >
> > > Did I miss any steps?
> >
> > Yes, you need to manually enable CONFIG_IWMMXT in menuconfig or via
> > `scripts/configs -e`.
>
> To clarify: ixp4xx and pxa3xx were two platforms based on the XScale core.
> ixp4xx was commonly used in big-endian mode but lacked iWMMXt. pxa3xx
> had iWMMXt but doesn't allow enabling big-endian mode because of a Kconfig
> dependency, meaning that nobody has ever tried it, and it's likely broken.
>
> Later 'mvebu' parts (Armada 510) do have iWMMXt and allow big-endian
> mode, but those are BE8, with non-reversed byteorder for the instructions.
>
> So none of this matters in practice, but it's very satifiying to know
> it is finally
> all working with the integrated assembler in all those combinations, at
> least in theory!
>
>       Arnd
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2BRZcyAp6xKyWM05e9QQf8v%2BUa2QUyf3vbY1%3DTUD8KK%3Dw%40mail.gmail.com.

--000000000000d2911405b3c71f6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks! I tried=C2=A0again with=C2=
=A0CONFIG_IWMMXT enabled and the disassembly remained the same after applyi=
ng the patch.</div><div><br></div>linux$ git diff<br>diff --git a/arch/arm/=
configs/ixp4xx_defconfig b/arch/arm/configs/ixp4xx_defconfig<br>index 27e7c=
0714b96..44feb73510d0 100644<br>--- a/arch/arm/configs/ixp4xx_defconfig<br>=
+++ b/arch/arm/configs/ixp4xx_defconfig<br>@@ -190,3 +190,4 @@ CONFIG_MAGIC=
_SYSRQ=3Dy<br>=C2=A0CONFIG_DEBUG_KERNEL=3Dy<br>=C2=A0CONFIG_DEBUG_LL=3Dy<br=
>=C2=A0CONFIG_DEBUG_LL_UART_8250=3Dy<br>+CONFIG_IWMMXT=3Dy<br>(build arch/a=
rm/kernel/iwmmxt.o)<br>linux$ arm-linux-gnueabihf-objdump -dr arch/arm/kern=
el/iwmmxt.o &gt; gas_before.txt<br>linux$ git apply v2-0001-Make-iwmmxt.S-s=
upport-Clang-s-integrated-assemble.patch<br>linux$ echo $?<br>0<div>(build =
arch/arm/kernel/iwmmxt.o again)<br>$ arm-linux-gnueabihf-objdump -dr arch/a=
rm/kernel/iwmmxt.o &gt; gas_after.txt<br>linux$ diff gas_before.txt gas_aft=
er.txt <br>linux$ echo $?<br>0<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 10, 2020 at 12:38 PM Ar=
nd Bergmann &lt;<a href=3D"mailto:arnd@kernel.org">arnd@kernel.org</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, N=
ov 10, 2020 at 9:11 PM &#39;Nick Desaulniers&#39; via Clang Built<br>
Linux &lt;<a href=3D"mailto:clang-built-linux@googlegroups.com" target=3D"_=
blank">clang-built-linux@googlegroups.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Tue, Nov 10, 2020 at 12:10 PM Jian Cai &lt;<a href=3D"mailto:jianca=
i@google.com" target=3D"_blank">jiancai@google.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; I tried to verify with ixp4xx_defconfig, and I noticed it also us=
ed CONFIG_CPU_BIG_ENDIAN=3Dy to enable big endianness as follows,<br>
&gt; &gt;<br>
&gt; &gt; linux$ grep ENDIAN arch/arm/configs/ixp4xx_defconfig<br>
&gt; &gt; CONFIG_CPU_BIG_ENDIAN=3Dy<br>
&gt; &gt;<br>
&gt; &gt; Also it appeared arch/arm/kernel/iwmmxt.o was not built with ixp4=
xx_defconfig. The commands I used<br>
&gt; &gt;<br>
&gt; &gt; linux$ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabihf- make CC=3Dc=
lang ixp4xx_defconfig<br>
&gt; &gt; linux$ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabihf- make -j32 C=
C=3Dclang<br>
&gt; &gt; linux$ ls arch/arm/kernel/iwmmxt.o<br>
&gt; &gt; ls: cannot access &#39;arch/arm/kernel/iwmmxt.o&#39;: No such fil=
e or directory<br>
&gt; &gt;<br>
&gt; &gt; Did I miss any steps?<br>
&gt;<br>
&gt; Yes, you need to manually enable CONFIG_IWMMXT in menuconfig or via<br=
>
&gt; `scripts/configs -e`.<br>
<br>
To clarify: ixp4xx and pxa3xx were two platforms based on the XScale core.<=
br>
ixp4xx was commonly used in big-endian mode but lacked iWMMXt. pxa3xx<br>
had iWMMXt but doesn&#39;t allow enabling big-endian mode because of a Kcon=
fig<br>
dependency, meaning that nobody has ever tried it, and it&#39;s likely brok=
en.<br>
<br>
Later &#39;mvebu&#39; parts (Armada 510) do have iWMMXt and allow big-endia=
n<br>
mode, but those are BE8, with non-reversed byteorder for the instructions.<=
br>
<br>
So none of this matters in practice, but it&#39;s very satifiying to know<b=
r>
it is finally<br>
all working with the integrated assembler in all those combinations, at<br>
least in theory!<br>
<br>
=C2=A0 =C2=A0 =C2=A0 Arnd<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCL%2BRZcyAp6xKyWM05e9QQf8v%2BUa2QUyf3vb=
Y1%3DTUD8KK%3Dw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">ht=
tps://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2BRZcyAp6xKyWM0=
5e9QQf8v%2BUa2QUyf3vbY1%3DTUD8KK%3Dw%40mail.gmail.com</a>.<br />

--000000000000d2911405b3c71f6c--
