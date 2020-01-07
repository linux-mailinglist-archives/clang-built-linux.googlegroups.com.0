Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEGUZ7YAKGQEL5KBEJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8E7131D88
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jan 2020 03:16:49 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id f18sf32095192iol.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 18:16:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578363408; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvlK0p3itR8FT9W2CJyjBBCh58K6w9R9TDGWcSiJC3Rc0XZqOfdiqYNf6u0xuPrzsw
         UXsqHIIzH1Lvho8dDPanhdzC7Ha2Fs+SyNfvUNcOx9dAfvLUpURlq7nfa4jyTsdy3Hnx
         RhrJMz/vIl7X4O2Y0Mf6OctoTfvXlYoka74/K3A6k0KPHVaCQss5sYRdQ8TdlX2rVyYL
         L3uMX8d2VOiEWrWCycU7axmeLTr86gT+/Jt4sp1o0Y8zhROJAkRD4BsRmycX6itFiXoM
         ikeghAtkUJ7n4sT0KrxWp8Q0wAha5woepT7a/f5usWjTeYOEekIYhTPOlTPMtF+y6Gk1
         N7/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9hhBqaBCTYGwp+FmzO14XDl5fqL5Qu+rHzPWTpMcpbQ=;
        b=y9zNQWGywxjj0AelBx0cujCU0/UPCB6keEujOZyoYVBbCExVCSMCV3Jvqp841QlJfI
         sPVh4m+c8g3iBKn3RtmxF/J/LxMVSxNSUj455dFcp3DcgEXFM0M41IrZVrqOK2o0hYm7
         uJSIG4peLBzJQzrZqD0csDgCzZ6wkm05s16oFV1S0HTlSZe5qlNsRo5AqdO9DhA8yWGa
         9OkfBuS56nRw9kvoKaWuOPGphjkpIkiQ4erDpqVbXhgpJBAAQHp7aqNdeA9a2y4gFDT2
         jnDPIQaaXsTgLBMc+ltiZq3LN9dFqRhvDLeDDvvFVLZD5WfocqmbAJVb7e7o6zUrlrns
         oPzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ixuoQU3U;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9hhBqaBCTYGwp+FmzO14XDl5fqL5Qu+rHzPWTpMcpbQ=;
        b=Po8QV/DyWdiylxhJae0CCm56KuK+yDy1MY6xEIk+ATdtsmn4QQ3aEmOEhwRYFq6Jlb
         IJmb0Q3eFRqDILO2/Z0kqJ1/QSEA7Vf28OFcfXOAlG/KIPE2UjGgcgXCM5Qk83LwgkVC
         bHwxrhwuLLoCtxx61OUsYNKQZuTb9DJT9PFvFUAnmGQ+Wqf7X6pkLNQ+njLJ9G8aLO0i
         tneuBjJBdMUIvs/KTuVgcFtOQseQfUX7QTwdnB2ivnnVTf9YF5Zq4LVH7vlkJWCkmxrt
         E+4QaE5aHVGqeaM+UDAE7yF+/mOs6FnssB9G6NE3kjHQ5ZY82hA6fwymhNk/2trOFiTp
         p6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9hhBqaBCTYGwp+FmzO14XDl5fqL5Qu+rHzPWTpMcpbQ=;
        b=YfP8HvazxSdbzMixJ+s0EVTaUl6bcbY0+cArN6PTsdKJ+md4Qk6FRBer3mo1xshOhi
         TFQjH4hhueEO6Y1gH1FFBoPaWXyCB01SP4Qp+/SBVjLOojnLuMxjkcELi1xPyrIbXzrq
         kbFpmPE74P45o+lLD2bvIQqmbleaOGrXI9F72ZDwZVxLwacXtRxVPJ3D6ISjuOLOFopN
         PzQnIuc2f4HJQwuenl1HPQz4V1E3nyqN/4G2K5SdF7W5M5JlKApyeIAJ48sILY7uo9dp
         81eruAEslAf/jYgTW2fbQEabW/dz+WSITsxoXx+KN9fz29M/LxpFfYAQo++rWJwBzGWY
         DeqA==
X-Gm-Message-State: APjAAAXlgaC5vp/j5dC/klXP055JZSPWPW3v3NwwwSD7ZdGHUO2kMVYu
	DPcrPmnEYQWnoKnbfGdP4/o=
X-Google-Smtp-Source: APXvYqy/RZt/NHCuTjmt7+MaSO2PdNLP7tUEapjsXtKBreecvtxE+25+r/dJgnZFxLxckJbKD77Giw==
X-Received: by 2002:a92:2804:: with SMTP id l4mr87560800ilf.136.1578363408518;
        Mon, 06 Jan 2020 18:16:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c411:: with SMTP id y17ls5811008ioa.8.gmail; Mon, 06 Jan
 2020 18:16:48 -0800 (PST)
X-Received: by 2002:a5d:884c:: with SMTP id t12mr71999983ios.171.1578363408137;
        Mon, 06 Jan 2020 18:16:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578363408; cv=none;
        d=google.com; s=arc-20160816;
        b=hcAideT9akjsia2UlGD6z72sOzhtMUEdAHr+6BYLnaoHslf9uI+ktIKunN+O/lGSDm
         s6KYzsTz9w8Ik7bcef+s5lxFqrKJcYYmgt8Grzm+d3hWIfZ7FsqzC9gl8OwSTPE7DwjP
         x+ZHB9DOyPQHbMFNVS3QCsfXZygzoZYjzI/9utviEnes0Gn0QEljeQ7EZkQixYslzTo2
         uTvlKT6zh7mIvw0QYPCPlRz+WrzhcTTom6JGjfurIxFESdoQxCi8KOTyOSqmkzxI6l2o
         D1zNLTncN8x/nIFTpkjJHWh48xZg67fi8ECBii9qPZxl5Hjm5TeINYPARfxQNG52ffCe
         0G8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pRyMwpt72JaqY+GdjC9EYO//LfRiTJZrmszyP80n+lo=;
        b=vdR7SEEZX3YLliXW7tFdmUyzi7Hw8hNtjlWKIZES/tFIJkcp/Pl9tx1C8IMfKYr87T
         QMiDqAL3n4Uiza645vg9Z6lOGBlGIxh2O6vCPTGyvGCyi4FiaBRiL+BOwfRcgcBGuG/+
         3iHOUfhnuZiH3pdTeDy8UyAXo3ugOZ26B1TKDtMwYrmMkxya8JfGhVlOduju0Lcu6P6H
         mVHGfOwjMmzj2/BPs3ASoWG0CaZrwc0QLWUt5ufDq/WMoMFV8Ija/A3BgfkwQLQ1/Az6
         HAvtQk/oY1eHJk0H0Sjk8Xfck5lTFJ58YcdYWf/ZeXW0vgoF8bBnppRDmM2DkKOsXVzS
         KpFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ixuoQU3U;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id z7si2954549ilz.1.2020.01.06.18.16.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 18:16:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id 2so27802550pfg.12
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 18:16:48 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr116738168pgi.263.1578363407548;
 Mon, 06 Jan 2020 18:16:47 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QWPyO3jY+-Py8LwEG5g-ZULu=Of6i0NRaOseHLdx2n66w@mail.gmail.com>
In-Reply-To: <CAGG=3QWPyO3jY+-Py8LwEG5g-ZULu=Of6i0NRaOseHLdx2n66w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 18:16:35 -0800
Message-ID: <CAKwvOdm6LNiDHpeiUFiRR4yS2UYdLr4KVdpm4vWLQ1AK5ztoCA@mail.gmail.com>
Subject: Re: BTF
To: Bill Wendling <morbo@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>
Content-Type: multipart/alternative; boundary="0000000000003c462d059b835eda"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ixuoQU3U;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

--0000000000003c462d059b835eda
Content-Type: text/plain; charset="UTF-8"

BTF? Pahole?

On Mon, Jan 6, 2020, 4:13 PM Bill Wendling <morbo@google.com> wrote:

> Has anyone come across this issue with LTO + BTF? It looks like pahole
> expects all dependencies to be in the same compilation unit, but LTO places
> them in separate CUs.
>
> $ pahole -J .tmp_vmlinux.btf
> ...
> tag__recode_dwarf_type: couldn't find 0x15663 type for 0x1d19
> (inlined_subroutine)! tag__recode_dwarf_type: couldn't find 0x15689 type
> for 0x1cfb (inlined_subroutine)! tag__recode_dwarf_type: couldn't find
> 0x15625 type for 0x137aa (inlined_subroutine)! tag__recode_dwarf_type:
> couldn't find 0x15625 type for 0x137d8 (inlined_subroutine)!
> tag__recode_dwarf_type: couldn't find 0x15663 type for 0x13b32
> (inlined_subroutine)! tag__recode_dwarf_type: couldn't find 0x15663 type
> for 0x13c4c (inlined_subroutine)! tag__recode_dwarf_type: couldn't find
> 0x15663 type for 0x13c94 (inlined_subroutine)! tag__recode_dwarf_type:
> couldn't find 0x15663 type for 0x13cdc (inlined_subroutine)!
> tag__recode_dwarf_type: couldn't find 0x156e7 type for 0x13d24
> (inlined_subroutine)! tag__recode_dwarf_type: couldn't find 0x156e7 type
> for 0x13d4d (inlined_subroutine)!
>
> --
> You received this message because you are subscribed to the Google Groups
> "clang linux fellowship" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-linux-fellowship+unsubscribe@google.com.
> To view this discussion on the web visit
> https://groups.google.com/a/google.com/d/msgid/clang-linux-fellowship/CAGG%3D3QWPyO3jY%2B-Py8LwEG5g-ZULu%3DOf6i0NRaOseHLdx2n66w%40mail.gmail.com
> <https://groups.google.com/a/google.com/d/msgid/clang-linux-fellowship/CAGG%3D3QWPyO3jY%2B-Py8LwEG5g-ZULu%3DOf6i0NRaOseHLdx2n66w%40mail.gmail.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm6LNiDHpeiUFiRR4yS2UYdLr4KVdpm4vWLQ1AK5ztoCA%40mail.gmail.com.

--0000000000003c462d059b835eda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">BTF? Pahole?</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jan 6, 2020, 4:13 PM Bill Wendling &l=
t;<a href=3D"mailto:morbo@google.com">morbo@google.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Has anyone come across =
this issue with LTO=C2=A0+ BTF? It looks like pahole expects all dependenci=
es to be in the same compilation unit, but LTO places them in separate CUs.=
<div><br></div><div><span style=3D"color:rgb(32,33,36);font-family:WorkArou=
ndWebKitAndMozilla,monospace;font-size:14.625px;letter-spacing:0.208929px;w=
hite-space:pre-wrap">$ pahole -J .tmp_vmlinux.btf</span></div><div><span st=
yle=3D"color:rgb(32,33,36);font-family:WorkAroundWebKitAndMozilla,monospace=
;font-size:14.625px;letter-spacing:0.208929px;white-space:pre-wrap">...</sp=
an></div><span style=3D"color:rgb(32,33,36);font-family:WorkAroundWebKitAnd=
Mozilla,monospace;font-size:14.625px;letter-spacing:0.208929px;white-space:=
pre-wrap">tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x1d19=
 (inlined_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15689 type for 0x1cfb (inlined_=
subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15625 type for 0x137aa (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15625 type for 0x137d8 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13b32 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13c4c (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13c94 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13cdc (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x156e7 type for 0x13d24 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x156e7 type for 0x13d4d (inlined=
_subroutine)!</span></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;clang linux fellowship&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-linux-fellowship+unsubscribe@google.com" ta=
rget=3D"_blank" rel=3D"noreferrer">clang-linux-fellowship+unsubscribe@googl=
e.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/google.com/d/msgid/clang-linux-fellowship/CAGG%3D3QWPyO3jY%2B-Py8LwEG5=
g-ZULu%3DOf6i0NRaOseHLdx2n66w%40mail.gmail.com?utm_medium=3Demail&amp;utm_s=
ource=3Dfooter" target=3D"_blank" rel=3D"noreferrer">https://groups.google.=
com/a/google.com/d/msgid/clang-linux-fellowship/CAGG%3D3QWPyO3jY%2B-Py8LwEG=
5g-ZULu%3DOf6i0NRaOseHLdx2n66w%40mail.gmail.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdm6LNiDHpeiUFiRR4yS2UYdLr4KVdpm4vWLQ1AK5=
ztoCA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdm6LNiDHpeiUFiRR4yS2UYdLr4KVd=
pm4vWLQ1AK5ztoCA%40mail.gmail.com</a>.<br />

--0000000000003c462d059b835eda--
