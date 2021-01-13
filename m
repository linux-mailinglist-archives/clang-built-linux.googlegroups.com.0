Return-Path: <clang-built-linux+bncBDQ4PPOB2QCRBQXG7X7QKGQEZDVKWXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 343F12F54E3
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 23:25:07 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id q18sf1616670wrc.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 14:25:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610576707; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzOtkGmUM/ZvTpF3RY9tlEgEv6QGLlqKm6zNbCDwihKisonZaNtmwZ5+FQI0CF1VQk
         Lj3FCVT+EO+eduDIrN5vYWGIwGOjbWV5PyER9JMxXmndZ6S3C4r039nGplx9/apGOh8U
         jYUsN1gNTBZvUllkgPpTjgNi3TAyUQ8T04tJrF+QCkhLiBH4dxOCS33cKucyGhVtcd9U
         e4LjFsQiJ60H7w9CEOoPoxLynMc0aSY8oeE5BXHdyFsAmtKELt0y4nuHe+wuPxJPJR0E
         LpUW89Y1W7D2F3WFzUYwCig5cZBdLpmGZY5XPR1mzLcY5eglJ76Ej5ZqZR2mvgWPicLN
         xBAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JkGyfMZBbORXVdr3CnSfFPy+Um3O/735nficNyU/LuI=;
        b=gmuEgZPLyTzTeSUdgwI7q+KMzOO8ae6wcXpqbDVJDo/YkwhTzodBvKbLW/PIg6dBId
         mgqRi1eWh0a4Gm/mxm6SwpRNaHVEpCkm+99U+FpvhDX7JujtclCXPLuJSaUw6fB6fZFR
         vDn/N+dElsOrepMwCzEmtkCpngQncw+/RAEx3lCtaY4L1Q+g5DOlR63pWgxVrTFqWykh
         166pOc5eBvgslGQczHUyxmgqJ5SI25kW096GzTDlCFapKajQ5a33cFQ8v8Eav28qVbPI
         1HpZ+02vTtgBhABs4K51nIkT1Iw6UVT7M4AWcAb2+sUTcMRZ5oNRB+l1eb0hHVtqB63W
         89hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DXyvUYbF;
       spf=pass (google.com: domain of cmtice@google.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=cmtice@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JkGyfMZBbORXVdr3CnSfFPy+Um3O/735nficNyU/LuI=;
        b=qVWWH0Zd1ZV/Ys+Vp5/FlTJ1TcN1jdsAJLUl4CFWAK8Fk32AnarrEfD7GvW6vyTdEQ
         PRH8AxeA+xAqUB38komIrSkMMvNd9Z2xxA6dI36HmQ2UzYzZtQ5s4ZTMnTnTID9QGzuv
         p68g8CCJK7DsESN3U5+aTcW18bA3arTfSY50C58o/Qo5CjiuqGor/5wHSanr8nzabm0N
         6Ne3sdc/KzsynbuBcZPKZnUVxqmjdPPqZJLkS1Y/mG0dPTL9H3FbVbV+BiXKpV2S0VGU
         WPrcjnBYZApHIOAfM2v8t+DRxG+sQD9GoFJFSOeVrhfBO9YWXUzYpmnCphGFM+kPCc6J
         PDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JkGyfMZBbORXVdr3CnSfFPy+Um3O/735nficNyU/LuI=;
        b=jE+8opiB/rKBLyou52tdz6OKr/BA/3QVQx4F9JOYsohLZNMxoBxcqgdQvqnqcEL8mf
         OacaiNFG69+gDLjaeYqdKoH7JAFWLoAPlTE3Gku4yoVvechSk1R6wIgDaKxh82lbgune
         CXPqDuntAlsc9+z+uaHZGEqigw1MusviLN/xnlIiHQ+dJxTJK7I+ymL+6EJxc9Hgmeil
         q4MA1W0uqoFuHdgYVUPDYGjAAUSO5q+8wVctJb2a29Kg2poaDFMjbcM06a9LmmlkqsJP
         uL48JBMBdUBfSNUTg61oNvbkabwkVmjwlg+lFwGkMfx9aKtJfhypobka+xo6rz/I1PEW
         kIuQ==
X-Gm-Message-State: AOAM5306xujqF0Knb0TrfqGR+jmuHGlHfAxXLm4Z+U6Xj2PnlW9+lJLd
	qF5gM3xhC9BhXurTmwZDT4o=
X-Google-Smtp-Source: ABdhPJyMbDUxfCWjWy3300w/jv9rRxUlPyvGV+ixCeS16avuKKTdySHFP78hJ2+x0oEqrJT0dtUIKg==
X-Received: by 2002:a05:600c:410d:: with SMTP id j13mr1137490wmi.95.1610576706961;
        Wed, 13 Jan 2021 14:25:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:b688:: with SMTP id g130ls1719258wmf.3.canary-gmail;
 Wed, 13 Jan 2021 14:25:06 -0800 (PST)
X-Received: by 2002:a05:600c:211:: with SMTP id 17mr1183945wmi.84.1610576706182;
        Wed, 13 Jan 2021 14:25:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610576706; cv=none;
        d=google.com; s=arc-20160816;
        b=k8jzhaKOMjhUbtZHol/FOyj/2er4vkXjn+CGurEYBAIQVgg5bBycCvxKX01me5s7gy
         rtIyY8Yd/zWNECUbDf6zSCbLrIuKLkGo+eAx3N3RSeguxaldETmn7/NXtWum6Ein6AcT
         U7mLpKCE0ktz/3U1GwI7ATFFYFCNMWEwrlzSSlCIu8p8XVYNJ4urt9m+dHOPIKStLV2w
         SrExqZ3IULiXTqfGx9WHbBNaDBY7BPEqxm5Zu24/mXzx5M6+aCxqDAYbVpdyBh+VxHok
         FssjhQO2DPPlLaNnU5tF4/m0pJDEumO8wQfiL+YsKfwYk2ruU6Q+eJkePn8D+LjdpeW+
         QnmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iBMM6RtydWUPFG8gOEg2NjG5fIf3G2FLvjMeeM7u9/E=;
        b=ulN26QRZAJXS6ODEyFPY78A2ZDO3svdZGStYeWFl82NWoCvruArsFetcfy0kdxnCkg
         r3+zay2trnYylFLWeEV/AEjKSTpEG0hnK25DOOkgZiv3OvethVxv32nMtd1eaehX7Kzs
         6j6k5Fa51FBnMdMXpS9IbIFcOlobmASSPuw2ewPTDc/hXfKqPMwVulb8p7O2B7thy2gq
         mVD2+EEc2sVVYfVgxRnW9HNCe+7BDsmgEQLHlHS/ZHRG8GMlo9Ok+KVEBYoArQVCKi/5
         qzxy0gScsm0rug7kvIJl7R0Mhh5zwYhdWl7iwJfxIs3CdUInoGmzmojkJWvpxDLKMbDi
         kIPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DXyvUYbF;
       spf=pass (google.com: domain of cmtice@google.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=cmtice@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id 7si153486wrp.3.2021.01.13.14.25.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 14:25:06 -0800 (PST)
Received-SPF: pass (google.com: domain of cmtice@google.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id a12so3756450wrv.8
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 14:25:06 -0800 (PST)
X-Received: by 2002:adf:a1d5:: with SMTP id v21mr4709289wrv.24.1610576705828;
 Wed, 13 Jan 2021 14:25:05 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
In-Reply-To: <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
From: "'Caroline Tice' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 14:24:54 -0800
Message-ID: <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: sedat.dilek@gmail.com
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>
Content-Type: multipart/alternative; boundary="0000000000006f81fd05b8cf9c51"
X-Original-Sender: cmtice@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DXyvUYbF;       spf=pass
 (google.com: domain of cmtice@google.com designates 2a00:1450:4864:20::434 as
 permitted sender) smtp.mailfrom=cmtice@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Caroline Tice <cmtice@google.com>
Reply-To: Caroline Tice <cmtice@google.com>
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

--0000000000006f81fd05b8cf9c51
Content-Type: text/plain; charset="UTF-8"

On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:

> On Mon, Jan 11, 2021 at 9:27 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Dec 4, 2020 at 2:11 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > DWARF v5 is the latest standard of the DWARF debug info format.
> > >
> > > DWARF5 wins significantly in terms of size when mixed with compression
> > > (CONFIG_DEBUG_INFO_COMPRESSED).
> > >
> >
> > Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=y (and
> clang-cfi)?
> >
> > Debian has enabled this Kconfig in recent Linux v5.10 kernels which is
> > a base for my custom kernels.
> >
> > It was fu**ing annoying to see I have no pahole binary installed and
> > my build got broken after 3 hours of build.
> > OK, I see that requirements is coded in scripts/link-vmlinux.sh.
> >
> > I needed to install dwarves package which provides pahole binary.
> >
> > I would like to see a prereq-checking for needed binaries with certain
> > Kconfig set.
> >
> > After I calmed down I will - maybe - write to linux-kbuild mailing-list.
> > Hope this will be a friendly email.
> >
>
> After linux-bpf folks recommended not to use LLVM I jumped to gcc-10.
>
> I tried with ld.bfd first and then in a next run with LLVM=1.
>
> Upgraded pahole binary to latest Git plus a recommended patch from
> linux-btf folks.
>
> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
> CONFIG_DEBUG_INFO_BTF=y:
>
> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not
> handled!
> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
>
> In /usr/include/dwarf.h I found:
>
> 498:    DW_OP_lit24 = 0x48,                /* Literal 24.  *
>

There are multiple dwarf objects with the value 0x48, depending on which
section of the dwarf.h file you search:

DW_TAG_call_site = 0x48
DW_AT_static_link = 0x48
DW_OP_lit24 = 0x48.

In this case, since the error message was about a DW_TAG, it would be
complaining about DW_TAG_call_site, which is new to DWARR v5.


>
> Can someone enlighten what is going on?
>
> Nick, Fangrui?
>
> Thanks.
>
> - Sedat -
>
> P.S.: Patch from linux-bpf
>
> link="https://lore.kernel.org/bpf/20210112194724.GB1291051@krava/T/#t"
> b4 -d am $link
>
> - EOT -
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABtf2%2BRdH0dh3NyARWSOzig8euHK33h%2B0jL1zsey9V1HjjzB9w%40mail.gmail.com.

--0000000000006f81fd05b8cf9c51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><d=
iv><br></div><div><br></div></div></div></div></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 12, 2=
021 at 3:17 PM Sedat Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" tar=
get=3D"_blank">sedat.dilek@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">On Mon, Jan 11, 2021 at 9:27 AM Sedat D=
ilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" target=3D"_blank">sedat.d=
ilek@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, Dec 4, 2020 at 2:11 AM &#39;Nick Desaulniers&#39; via Clang Bu=
ilt<br>
&gt; Linux &lt;<a href=3D"mailto:clang-built-linux@googlegroups.com" target=
=3D"_blank">clang-built-linux@googlegroups.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; DWARF v5 is the latest standard of the DWARF debug info format.<b=
r>
&gt; &gt;<br>
&gt; &gt; DWARF5 wins significantly in terms of size when mixed with compre=
ssion<br>
&gt; &gt; (CONFIG_DEBUG_INFO_COMPRESSED).<br>
&gt; &gt;<br>
&gt;<br>
&gt; Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=3Dy (and clang=
-cfi)?<br>
&gt;<br>
&gt; Debian has enabled this Kconfig in recent Linux v5.10 kernels which is=
<br>
&gt; a base for my custom kernels.<br>
&gt;<br>
&gt; It was fu**ing annoying to see I have no pahole binary installed and<b=
r>
&gt; my build got broken after 3 hours of build.<br>
&gt; OK, I see that requirements is coded in scripts/link-vmlinux.sh.<br>
&gt;<br>
&gt; I needed to install dwarves package which provides pahole binary.<br>
&gt;<br>
&gt; I would like to see a prereq-checking for needed binaries with certain=
<br>
&gt; Kconfig set.<br>
&gt;<br>
&gt; After I calmed down I will - maybe - write to linux-kbuild mailing-lis=
t.<br>
&gt; Hope this will be a friendly email.<br>
&gt;<br>
<br>
After linux-bpf folks recommended not to use LLVM I jumped to gcc-10.<br>
<br>
I tried with ld.bfd first and then in a next run with LLVM=3D1.<br>
<br>
Upgraded pahole binary to latest Git plus a recommended patch from<br>
linux-btf folks.<br>
<br>
Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=3Dy and<br>
CONFIG_DEBUG_INFO_BTF=3Dy:<br>
<br>
die__process_inline_expansion: DW_TAG_INVALID (0x48) @ &lt;0x3f0dd5a&gt; no=
t handled!<br>
die__process_function: DW_TAG_INVALID (0x48) @ &lt;0x3f0dd69&gt; not handle=
d!<br>
<br>
In /usr/include/dwarf.h I found:<br>
<br>
498:=C2=A0 =C2=A0 DW_OP_lit24 =3D 0x48,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* Literal 24.=C2=A0 *<br></blockquote><div><br></div>=
<div>There are multiple dwarf objects with the value 0x48, depending on whi=
ch section of the dwarf.h file you search:</div><div><br></div><div>DW_TAG_=
call_site =3D 0x48</div><div>DW_AT_static_link =3D 0x48</div><div>DW_OP_lit=
24 =3D 0x48.</div><div><br></div><div>In this case, since the error message=
 was about a DW_TAG, it would be complaining about DW_TAG_call_site, which =
is new to DWARR v5.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
<br>
Can someone enlighten what is going on?<br>
<br>
Nick, Fangrui?<br>
<br>
Thanks.<br>
<br>
- Sedat -<br>
<br>
P.S.: Patch from linux-bpf<br>
<br>
link=3D&quot;<a href=3D"https://lore.kernel.org/bpf/20210112194724.GB129105=
1@krava/T/#t" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/=
bpf/20210112194724.GB1291051@krava/T/#t</a>&quot;<br>
b4 -d am $link<br>
<br>
- EOT -<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CABtf2%2BRdH0dh3NyARWSOzig8euHK33h%2B0jL1zsey9=
V1HjjzB9w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CABtf2%2BRdH0dh3NyARWSOzig8euHK=
33h%2B0jL1zsey9V1HjjzB9w%40mail.gmail.com</a>.<br />

--0000000000006f81fd05b8cf9c51--
