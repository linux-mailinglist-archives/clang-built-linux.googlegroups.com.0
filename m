Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBQN3VWCQMGQE56BFDZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8027338E21E
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 10:03:13 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id 2-20020adf94020000b0290110481f75ddsf12699774wrq.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 01:03:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621843393; cv=pass;
        d=google.com; s=arc-20160816;
        b=WZWunC5eh7Xfqs9MYPLpcl7U64zQZdGoi8/wcF5vpSrQZE5kjgAyiIZ2uTzxB2SO+q
         SkT72cQOV0FClACLVLg83qAiRbidI3UeIJ79fD002xKd5IzMa3sLvK8LgOotQNUC8sDN
         Viw58waavOwrAtBiUwe39JxLnyYAxzneTmk3zv48y34IAuoEhDiXv9IubGcqUjN/3Kam
         JkJdyEJ2Qk9D+bBHibXW2BOlypGmj7irSKGK8MQH+swmcbb1Hr03JjUBef3e50TyWNmD
         ePCqxvUJYx9qRTuef/i98/bAYYmmHypkQ4DTkOtPzKQrBwqvdUzIzbHthVIj2oP3zRFx
         THew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jwAhCnPYnfQon41BFtL26BwFvcF90tCO78zI0JIhiKs=;
        b=hM2jcetCjNedBYsvUZgXsPc0f9SGSNqthWqlOlybeM0XqCppSF0+oq3m7iWHco/Ms1
         +qz6NpImIs7ddb9QxmJgaj5guWRgs22PxTt+wBUGX0vK2BOErncjRbROOluI2VmyND3J
         5tl1TaRAkyxF34eTt4gYy31cSRUPUsD2+x4LeinWew4LVfpMb5oAywGlKrzlMPf3WY2L
         5dqSSl1hUC/LjQfO8UiB/lSifeIB0V14TlfeIZ/2EG/PfAil7AznpvkMgSIxzP5NEMXG
         8X3gANWyC5x6Y5J5jZhJkEMrn0ySYLuNRyy7Hf8Ju85UjGStLMjnZcCgwgEaoOPLU2Lz
         llwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="X1/dQWoP";
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwAhCnPYnfQon41BFtL26BwFvcF90tCO78zI0JIhiKs=;
        b=dtVY4G5c5G8KW5UCYAuOvXDJsOdzWuF/L3rFp91eiT2vCqD1dcR+UT0IF+/y443U5o
         04wzowqk5eDG5mP78R0iu1T6e3iVYNemxF+kQE6mEP4AZJsiBAW95yzl+uq9osYfPbW3
         3La2lJQ00lHeKQMc9RehkhfbUlcYV6bb5L6LdopnTshgzDoBIJoGwoRrLT8CsneE7ZvU
         x8YwzVqWp5+QReYwTciAX892aJT9nAjOLnRqIZ8eQbTwRPbQjjtp8n84pBlXdIa36nj7
         krPU3V7IvpkJ9b7MAqjeRRv889gMe31ldFi1aVMik5Kn5lfCeUCEkmm9JnHEzlnudV98
         WsSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwAhCnPYnfQon41BFtL26BwFvcF90tCO78zI0JIhiKs=;
        b=k7oVUtUjbNdNGmyGAbzItndPz8U8ud/Hw6BXuJz++uA/MW7ycGeawCtQsPiumbjY7f
         6Vs/rDeiDVFlYe5sU1OJiRvHnGAzYrOjNvD8KkPCZovECQAdJudlSuC11VeNI1d5sS/0
         gablaY/tspxwFyZZ2XQ9NCU/cxA0/6+JctTIFz1rZNqjSBBloyS3+sP8W7oltbJo6eEK
         agZNnmJaFUdmuue1NoO3PP/IHvcTOYTxgHfJI2/z/HMRoX+Gxlhuu/C76g2fV/pvaYHU
         JRhDKW3L8EpWL1B7IUQIPI8wrjj1bDj7Cf9H/vqVB60MDjAJdPYR6CJ+rmjIPfGCJvgD
         nITA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aiQgpkTvP1LVvvTBfgcsdk4BDBEfXeKL5f9D/XU9NAbd0bDbq
	AqJvGBAz8FblHSP3737m7T8=
X-Google-Smtp-Source: ABdhPJzFVBhdnP93mwT05t5qBB5faHxs0GmXQxDvIFf/nMg/NLXVuhAe4RMVihs9QFqnEO8kSz6aiw==
X-Received: by 2002:a5d:4902:: with SMTP id x2mr20557591wrq.233.1621843393228;
        Mon, 24 May 2021 01:03:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4ca:: with SMTP id 193ls6113092wme.1.gmail; Mon, 24 May
 2021 01:03:12 -0700 (PDT)
X-Received: by 2002:a1c:4907:: with SMTP id w7mr18530408wma.11.1621843392390;
        Mon, 24 May 2021 01:03:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621843392; cv=none;
        d=google.com; s=arc-20160816;
        b=g+bAO5f+ZcOOgmBn2dLacz0kqfnlO7E4TRqI/3R8zhaz5xBlsYSe3eLX4l5iONiT2U
         wuMvuJqhCH3nq5K1A+d6VO1i6cMK5eoonVmqdZu0HORwxI/qG9AGBloFqufu3ccWEJul
         TloXjOG6Zx4j5S/q8aC1E24+OYLUq4hUtLeQ00CcSYcYgGap1e5uK9490cNwF0SLA0Za
         YPrgJNeko7+guTi0OvnBDbRKOQAEZSXCIa8E5eoalbHS0mMyHWOl/iWHtV4e/6BaCOyy
         7HeJK4O1+3LUkh8VPSf2YB1NkyjaXfxS8W3HueE4+FMjabIpS9IRtZHtwNWmmg++VE2o
         p4IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=r1MKnvZ6A/JoCs5aUiOd4Aom1NuletnEZa+phzDnz5M=;
        b=octDzX+nR+ET9Unx/rectjH1KMe5g7JTKgcqFUulY/9fO1txXk3J020HmzNllpEXqT
         LJ3QQx58/DiIj+ex65HSfK5WrPTe/CfJGne+KiOviUZv3H2lAOOMDjUljX4o+4O0ng2n
         dpVaOQABDeesf87sj9zgDqLnspo36Ws6xE6y7l+OUM7p3z/CqBASZ+FUVquXYOhkh7U5
         iiIUb29g2ag6ofYhzfwFuuDxfNdDkFBlwknezwAiT3dxNTab6DuMMcCvDIUadL+/y3EZ
         Ebfr4e31NQr1wmm6Ls8bgu8MPoplBmAqJV9lEf9EwCZJw8zl294n5ZFAmDvKQymEJ0pW
         JsXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="X1/dQWoP";
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id 11si362255wrb.2.2021.05.24.01.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 01:03:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Received: by mail-wm1-x32a.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so7845446wmq.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 May 2021 01:03:12 -0700 (PDT)
X-Received: by 2002:a05:600c:4ecb:: with SMTP id g11mr19311104wmq.46.1621843392021;
        Mon, 24 May 2021 01:03:12 -0700 (PDT)
Received: from dell ([91.110.221.223])
        by smtp.gmail.com with ESMTPSA id 10sm7186159wmi.7.2021.05.24.01.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 01:03:11 -0700 (PDT)
Date: Mon, 24 May 2021 09:03:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Elliot Berman <eberman@quicinc.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] Makefile: fix GDB warning with CONFIG_RELR
Message-ID: <20210524080309.GK2549456@dell>
References: <20210319000708.1694662-1-ndesaulniers@google.com>
 <20210323190532.eiqxmskiankf7hn3@archlinux-ax161>
 <CAF2Aj3i3-bev_iS6OrBUTzt==4d0f7UiTeY1YPur6eKFqToFYQ@mail.gmail.com>
 <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="X1/dQWoP";       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::32a
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

On Sat, 22 May 2021, Masahiro Yamada wrote:

> On Fri, May 21, 2021 at 6:36 PM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Tue, 23 Mar 2021 at 19:06, Nathan Chancellor <nathan@kernel.org> wro=
te:
> >>
> >> On Thu, Mar 18, 2021 at 05:07:06PM -0700, Nick Desaulniers wrote:
> >> > GDB produces the following warning when debugging kernels built with
> >> > CONFIG_RELR:
> >> >
> >> > BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.rel=
r.dyn'
> >> >
> >> > when loading a kernel built with CONFIG_RELR into GDB. It can also
> >> > prevent debugging symbols using such relocations.
> >> >
> >> > Peter sugguests:
> >> >   [That flag] means that lld will use dynamic tags and section type
> >> >   numbers in the OS-specific range rather than the generic range. Th=
e
> >> >   kernel itself doesn't care about these numbers; it determines the
> >> >   location of the RELR section using symbols defined by a linker scr=
ipt.
> >> >
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/1057
> >> > Suggested-by: Peter Collingbourne <pcc@google.com>
> >> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >>
> >> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> >
> >
> >  Masahiro,
> >
> > Would you mind sharing your plans for this reviewed patch please?
>=20
>=20
> Do you want me to pick up this?
>=20
> Or, do you think it should be done by the committer of
> 5cf896fb6be3effd9aea455b22213e27be8bdb1d ?

Not sure it matters a whole bunch TBH.  If you have the bandwidth and
are willing to merge it, please feel free to do so.

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210524080309.GK2549456%40dell.
