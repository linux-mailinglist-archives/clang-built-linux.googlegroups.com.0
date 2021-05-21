Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBNH6TWCQMGQEXXWLY3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A9C38C34E
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 11:36:54 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id x7-20020a1709027c07b02900e6489d6231sf10125959pll.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 02:36:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621589812; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/LwBQ51sBoAE1C1iT/6eUnpb3OCr6y+UcgO+VN2Yeiou8ZVHT6HHHG30e9R7pfMkE
         cbjPiNPUbHEDRMUD1Me8YrgO+AuboyA4mJVLuKOeE3sJKZONoHv62iC/ret9UXeh6YUs
         ONDQmmCvRbrLF5e6G57qbXzt6HFjdrnSrGwTBXrjvuEFRwH3puiHbp0yABY8s/asg9v/
         OUTuVNfEOmQ2vMCeKIUNmrIw+nWcqIKFEhveWYtn9oHzzXGtGJjUmOP55qB5caif//4y
         JliLpJvJzTxxQMhXKjbv/3afauOHHZyhj0TQQaLGH/ccJJ0bdSy0rGEbOsadXfs4bz6U
         KNfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3O0qOrU8EYwHanai00sM8ipUf1/CBLQb4zyo00jFRjE=;
        b=dZCoZ0d5dXDKgS64++V7vuDK73bv3lcxG5S8Rd4K9+IE/WtPerjwXodNt0QJQGZDvc
         WOrv/l2m/fFIpAmzs0TqjxPXSPDlzzQ6kUlhTT3noEvybQIo3rc+M3Si4MclDQFhivWl
         2awDRcEn1hSk0qDuTFRUze/rfEfwZl3fdKyaz4VHixbKFEqgDTE/eomwupcO75lcF9np
         rcw6zdbABVpeK0A3ZYuj6XzTfVq9ABc9HMudyJ4eocRLuJh+f0UX/SS3/8vQRGhsU/hp
         SDu5BNLquspSjPdK5QsoPrTL7Bbpv+IK56CHTPWEonvK5lD/FyrjWvkGxyGNmYIeXPQR
         BocQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mNkpXAFO;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3O0qOrU8EYwHanai00sM8ipUf1/CBLQb4zyo00jFRjE=;
        b=j2YXyhVH6Ob04hzKBAMFu+csa257rnXuVqBwc6snHcwcZi4uMTmoptMLjcn4eImWDl
         TnsUO+/2ubXVERprqliOUMDeK8Uw7HquT23NeaoUQSZGiGDspEjDY6XPa4Nl+8kJ9bIC
         7Jpn/2nuD2tRa4AY2WtSJZ8U5T4CG8Slj5i5ELDx1FrbC4ZQfQKip1i/uRg45CaD3stX
         XupRsj+8pzGONQ2GjM/1SXANKv9QxFyNwU3ZuuuNQ3mUGlO3AdpkBHfWtllbfdYznZjT
         DPgkrn8WEo8Fy6N4BF+EnHZYhd1MIpFPsjZq5uMUE5ES0ShlrE9P7cushB2MDcsIpJFq
         vO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3O0qOrU8EYwHanai00sM8ipUf1/CBLQb4zyo00jFRjE=;
        b=GhptSUSPDZaWpOYefk5/ghic5njpoJMjqsM0t56570d8DTQ1Dnn/IsuwvrWfdOt1ZP
         9gJ94pRRYwx7wyNOiBV1VtLCty9dIJ7D7PkchPuprZt4LRe5qcFKg1ikeYy1e58wqTSY
         EwohaJg1ILk4xtGuD6H/PLFa18WtJ1tbK+Wr6MFx47NjmYtZTcqWudbWnoSXr2Slp2Ds
         4PtQIZlc/LP6imBH1JN8x8KB9Dv7at1dSbPo5rZQMUCxkUOW/w6UIVKaYGFkUM6xNg8G
         YLHxVs1LnRPR9fGoEa9d8/9gw4eynjVtsQZz8Koj29VCzADDjaBwxP/3Z8/RERG2IF5L
         swzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DFebVFnMeiXA63U84f1fR8qiW3RbHJPmTRM51pvVvLRmAzXZ8
	eSSNU8IVht/ccLennl/BRhE=
X-Google-Smtp-Source: ABdhPJxmkcpNvZTzTb/xLxfDAdSKk21bins/ove/2EOynxe9jTehw5mLl/tILiLNBrXBDEKPlhUhSA==
X-Received: by 2002:a65:5a81:: with SMTP id c1mr8742830pgt.111.1621589812658;
        Fri, 21 May 2021 02:36:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls3698554plb.11.gmail; Fri, 21
 May 2021 02:36:52 -0700 (PDT)
X-Received: by 2002:a17:90a:a604:: with SMTP id c4mr10362716pjq.81.1621589812106;
        Fri, 21 May 2021 02:36:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621589812; cv=none;
        d=google.com; s=arc-20160816;
        b=d/My+HOBueYIX3mV7yD/0X45xuo6RjUQ8lQ7qCqSdpRhjW3tqW6GTz2+BLgj9jH5ne
         Kc07f2ngFlz4r4ht++7Z47P+BGSXTTO6E2jqXCQ698G8TxlnI/g14rcmQooH9eP5B6Sg
         pG4qxnfLrVjMv/coKW5sIAxenEP6q8k4TL0ShlJpLdlGn0/T+YPBLop7LtAowQbznO2g
         cBJw/mNG7EgfERwK8EhTcYFOPrRqTpDuCMO6Etokj1Rc/HaRA+rCPY7kbdj41TEJeN8j
         4PW8ORBjfPHmHv0Qt0vSeQTjy/PI0AiE1rQT3vPKxAI17MxQKRVvHH/PVPZb9XnFe0cb
         W7ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i5Dq6jt3XsPVU8iVCWMWopRM/HsdYvK1t3tJDyPATHE=;
        b=I+pQFuQHUk+BGQFC799LrFJwoJzrVLkCiz+EEdYRzdoruBDi3oO5pocGmg7lxhLFvr
         TcHs1E2Ps7EEgeFtwT8TX7glJP+gF6hJkXP/4TdzSHzs03cNYPooDdQISvsbwTRYMk5a
         6wkSJ2IB/HeUGcCY9jxfmuXru5NijZ8gARd/OoHuLuFGhVmFIAeVY3DaqUbX3BC0S+qZ
         H3JA/feTZtK/Jk2ApSP55IrYHlOMgWQZJRwc+fzqj2Vr3ld2qgVdaFv7OuIFM4kV3Sj5
         Lh68cAyFpsRyAVno9DMIRu1J4iPkzkzeoV75drNlS5uMHtT/a/QtPi0FCpDmYtdjp7Rf
         uyeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mNkpXAFO;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id n13si612163plf.1.2021.05.21.02.36.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 02:36:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id u7so2105240plq.4
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 02:36:52 -0700 (PDT)
X-Received: by 2002:a17:90a:b796:: with SMTP id m22mr10359196pjr.146.1621589811861;
 Fri, 21 May 2021 02:36:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210319000708.1694662-1-ndesaulniers@google.com> <20210323190532.eiqxmskiankf7hn3@archlinux-ax161>
In-Reply-To: <20210323190532.eiqxmskiankf7hn3@archlinux-ax161>
From: Lee Jones <lee.jones@linaro.org>
Date: Fri, 21 May 2021 10:36:41 +0100
Message-ID: <CAF2Aj3i3-bev_iS6OrBUTzt==4d0f7UiTeY1YPur6eKFqToFYQ@mail.gmail.com>
Subject: Re: [PATCH] Makefile: fix GDB warning with CONFIG_RELR
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Elliot Berman <eberman@quicinc.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Collingbourne <pcc@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000b5306e05c2d3ccdb"
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=mNkpXAFO;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2607:f8b0:4864:20::629
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

--000000000000b5306e05c2d3ccdb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 23 Mar 2021 at 19:06, Nathan Chancellor <nathan@kernel.org> wrote:

> On Thu, Mar 18, 2021 at 05:07:06PM -0700, Nick Desaulniers wrote:
> > GDB produces the following warning when debugging kernels built with
> > CONFIG_RELR:
> >
> > BFD: /android0/linux-next/vmlinux: unknown type [0x13] section
> `.relr.dyn'
> >
> > when loading a kernel built with CONFIG_RELR into GDB. It can also
> > prevent debugging symbols using such relocations.
> >
> > Peter sugguests:
> >   [That flag] means that lld will use dynamic tags and section type
> >   numbers in the OS-specific range rather than the generic range. The
> >   kernel itself doesn't care about these numbers; it determines the
> >   location of the RELR section using symbols defined by a linker script=
.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1057
> > Suggested-by: Peter Collingbourne <pcc@google.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>

 Masahiro,

Would you mind sharing your plans for this reviewed patch please?

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Linaro Services Senior Technical Lead
Linaro.org =E2=94=82 Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAF2Aj3i3-bev_iS6OrBUTzt%3D%3D4d0f7UiTeY1YPur6eKFqToFYQ%4=
0mail.gmail.com.

--000000000000b5306e05c2d3ccdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 23 Mar 2021 at 19:06, Nathan Chan=
cellor &lt;<a href=3D"mailto:nathan@kernel.org">nathan@kernel.org</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Thu, Mar 18, 2021 at 05:07:06PM -0700, Nick Desaulniers=
 wrote:<br>
&gt; GDB produces the following warning when debugging kernels built with<b=
r>
&gt; CONFIG_RELR:<br>
&gt; <br>
&gt; BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.=
dyn&#39;<br>
&gt; <br>
&gt; when loading a kernel built with CONFIG_RELR into GDB. It can also<br>
&gt; prevent debugging symbols using such relocations.<br>
&gt; <br>
&gt; Peter sugguests:<br>
&gt;=C2=A0 =C2=A0[That flag] means that lld will use dynamic tags and secti=
on type<br>
&gt;=C2=A0 =C2=A0numbers in the OS-specific range rather than the generic r=
ange. The<br>
&gt;=C2=A0 =C2=A0kernel itself doesn&#39;t care about these numbers; it det=
ermines the<br>
&gt;=C2=A0 =C2=A0location of the RELR section using symbols defined by a li=
nker script.<br>
&gt; <br>
&gt; Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1057"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/li=
nux/issues/1057</a><br>
&gt; Suggested-by: Peter Collingbourne &lt;<a href=3D"mailto:pcc@google.com=
" target=3D"_blank">pcc@google.com</a>&gt;<br>
&gt; Signed-off-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@goo=
gle.com" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br>
<br>
Reviewed-by: Nathan Chancellor &lt;<a href=3D"mailto:nathan@kernel.org" tar=
get=3D"_blank">nathan@kernel.org</a>&gt;<br></blockquote><div><br></div><di=
v>=C2=A0Masahiro,</div><div><br></div><div>Would you mind sharing your plan=
s for this reviewed patch please?</div><div><br></div></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div><div><span style=3D"font-size:12.8px">Lee Jones [=E6=9D=8E=E7=90=BC=E6=
=96=AF]</span></div><div><span style=3D"font-size:12.8px">Linaro Services S=
enior Technical Lead</span></div><div><span style=3D"font-size:12.8px">Lina=
ro.org =E2=94=82 Open source software for ARM SoCs</span></div><div><span s=
tyle=3D"font-size:12.8px">Follow Linaro: Facebook | Twitter | Blog</span></=
div></div></div></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAF2Aj3i3-bev_iS6OrBUTzt%3D%3D4d0f7UiTeY1YPur6=
eKFqToFYQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAF2Aj3i3-bev_iS6OrBUTzt%3D%3D4=
d0f7UiTeY1YPur6eKFqToFYQ%40mail.gmail.com</a>.<br />

--000000000000b5306e05c2d3ccdb--
