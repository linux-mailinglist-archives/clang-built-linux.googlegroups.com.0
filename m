Return-Path: <clang-built-linux+bncBC53FPW2UIOBBN7L7WCQMGQEV7EQH7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F5E39F81D
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 15:50:48 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id f15-20020a0565123b0fb02902fa2f95ec06sf4201033lfv.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 06:50:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623160248; cv=pass;
        d=google.com; s=arc-20160816;
        b=pwAk/T+/NumSJDYEovS1lSEXjvnWpSD8y0pBmzYddfv2KPJZWEvRIUUu3Wxtchko1r
         Il/pO1a68YooYJ0gsJdWlD/NfP8G8hskHvYpmRQc1xEZHRM1PHXgcyl5sj1bipM78COw
         BiIjv5V2ARGJzrJGarkms/dHgPJ5K4TDVsu+8v647CF9O9Pm3/QLfBErHwyARDRIN0+d
         toNOc8ndbo5ssRRrFoD8MqusH4xIuI6op0GBfNPb0Qhc5cJJweqIClvVTY3mC/mqY7TH
         eP0McTHBNUbwanhnvw/JvJE+3liEZMxJEu7Xo7UVez3amXMEMcX4sRpyq2x9V2/ogCls
         xc+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=Q2WpSXkh/+bjrQXc1reJfYQg+KWfvFKYHt9SaVbqrJ0=;
        b=araUREu1MDsDVpJ9AdX6TLiLWAsjplncWBNcsr6XykC7ZfcXWfF7mYsvLhMqHlGsXR
         yheXdCZFdAbnhwfycU/uaxdwxCSlep/Bb0dJi8sDsI8t1L58W+BDJjPcU1Q191342g6w
         w1Z8sLmOCs8znoPWEOb/xCKX53EtRQlvcD0OZXipBuzZt6ZSrUoEhw394/SK9rpAt5K1
         1WlgYa0hzwCCmqiyawD6c7sEpwlZYm9Bel+4RoTueAGkfcdy/j66wRoqb28honVrvqhC
         81oYa+KsOXPRb3yyWUQglVoKdEVQdmwP8ARegCi0+vxV7a3xj6hoL/OeX8xm9dJLoI42
         x3jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bHOW7xBx;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q2WpSXkh/+bjrQXc1reJfYQg+KWfvFKYHt9SaVbqrJ0=;
        b=kLnnQXdhTsr4W7AzqCpv6mwgeqMIE4TpJhpQp9B+VjY3SqWgXvWOtPkDwI4uuSCak6
         e4tf2nmHTU2KMmTagR1o6PR8eZZwD1+IdUPeH832jaZw8m1mwQQLzo1I1tn6TEUBDZZf
         DDZQggzeXMLSWYK7Dg46zlYPr6YJwTt0eMlnKcmTi7Jfwqei/R9MTA/gSMjAYaev9Y/i
         RahnoIMDgHZ04hWkoDgTdrgpVJGSLwelwPJzsBG5ZPjQ7sexNlPDJbH4eQBr3pLp9D/x
         Qtmw9wvgV7++wKriDpNShEut3T+IX/0UuUKonkSVfsqXbcq1WdAfcU9sFAZuf8gn349U
         XrvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q2WpSXkh/+bjrQXc1reJfYQg+KWfvFKYHt9SaVbqrJ0=;
        b=eYvbMUh9SV5epS8bobd2shNo+mqls1SuRypcNFCuKDa10fsVE1/+skfDrXoFQi15YN
         /LcF0BPZb8lCdMtGNUlaBFJ2Oah9AP5UULMbZoRnwcFLpGhfKhaST81U+wVgJQOr4IWn
         JFzGriWqdkokUMCZHR1SWRaD/zR9tNdnCchN6FCvvZfBR6pDLmBdXahxFf4b5yK2yw72
         7Q1Yb3z4ZooR5JhaOmNUuipZbRJ8lAhQ5VWhhTiCJYqAmRRVEUfuJEEjJODUjB8s2tnX
         b2A2Pte1yQTihlegd6ScnXR7+EfYIVevgqZahSPjNAuMPxUghTUSsxc85Z+Z5eNig+Th
         BkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q2WpSXkh/+bjrQXc1reJfYQg+KWfvFKYHt9SaVbqrJ0=;
        b=AJvtSyMRfs61ezH1V8u5tFfduMU1Q6iIYhNRRRKmfxBCLZV2lGMDHFY6vYgakIDp0I
         9ruD6mDWr9BS4vmtLjeydyPnp+gNcJSrrbZscDB7ZltRMDGcEClVlBy+3oBseD4B4fm0
         pIchGSZvFPXmeny4asz7OLeUidWbBHEZgGMD/2B8+eGGF2k1lLiRVSaaI8wIIPLTyhMI
         5EpsW/a6qDjsasgqLiifriszz/SXCAH56NjfW7sNKSlECbCAxYgYylHXDfZg0NTy1cwq
         5g1k3O/bltDWGYceKITY4BIpge1x3qRoB6oV36hkCqcgcoKKf7S3oeD6AuiW0Fac315m
         S0SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GW56geXiPeZatP8FkqGPUONQi7oORGLRURgI/lKrGUDGP4IA5
	zLzWZeywQ53TifP9REmYL/s=
X-Google-Smtp-Source: ABdhPJxNLLMV/QaW1JIYAMXN5VHX2QZqO3XO9qqxyHdhv4WKmMqIHL24aods3w4CC2wJVrlQiqp/aw==
X-Received: by 2002:a05:6512:92d:: with SMTP id f13mr1706895lft.186.1623160248146;
        Tue, 08 Jun 2021 06:50:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9e50:: with SMTP id g16ls274905ljk.6.gmail; Tue, 08 Jun
 2021 06:50:47 -0700 (PDT)
X-Received: by 2002:a2e:81cb:: with SMTP id s11mr16995817ljg.466.1623160247088;
        Tue, 08 Jun 2021 06:50:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623160247; cv=none;
        d=google.com; s=arc-20160816;
        b=ZScz20YI25PhpF1WMN6zep0jYhggCHNQ5v+7RoGZeh/JGlYQubB2rv8COKctQl9C2k
         lNhCHplc1UDaWp1OtRuPFrm7Ep7czhq+ozVxYSsLmgpSv6AxbyVzKFozIjRkvmM7vxye
         ZFDEzNOLVT8FyIinVoOVSAnDGw42UMbpl8ajUKlZJiFXuko4Oxr/ebS5Y9oElQXDwkiX
         BMRnmY7UYl8pnrKr7Hi1tva8lTyRmyPjjSE5vIVfVtw/1N8ggHrZXVw+c8AR71C0eLfr
         j9le5DZ3HzkN8AoweitIxfa52yoNYfovok9uOkkJu3p+gBGRfZ9Pftzjw9n2hrgi3aqC
         b+/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AwGQ9lwxbFaU7D5ZRXGobTrptAq9qDG9oA6hNsu1LWM=;
        b=iViqmSxi2JrowAGyWtCMITgrWTBVpKMgjA1WtcOzWWiOlCPBlrJ8MLCWNQvDzdAI7f
         FtOLB/80ZwBxDibve9I3AVODj+iBoEByOwwNNVJHSExwYGhmTG+ovncizfdtkcbMu9xe
         nWsM5ciGTZmYovQ+WUBkA7dfBND4xy/GfNt3ZqUVY5YHqGo1iedo1dKrKk9lfQAVlZ0y
         RBzXunQh63+3lw/YjVNTNWn/qXuXKgXr0K6+fwEP4laGOJko+aRkmir7uHxscATw8xg0
         exuccqo8R/JLvMJFqsH3345Wg5NKFLuBuAXKSbmhuaBNQo0gYIfR9G2veJ4weaXijdyw
         rOAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bHOW7xBx;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id a39si463170ljq.2.2021.06.08.06.50.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 06:50:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id f11so32053057lfq.4
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 06:50:47 -0700 (PDT)
X-Received: by 2002:a19:c30c:: with SMTP id t12mr15704304lff.259.1623160246903;
        Tue, 08 Jun 2021 06:50:46 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4yb9bh06yk5jm2qt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:3d09:bda0:2327:559b])
        by smtp.gmail.com with ESMTPSA id l3sm2043507lfe.230.2021.06.08.06.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 06:50:46 -0700 (PDT)
From: jarmo.tiitto@gmail.com
To: Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com, Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org
Cc: morbo@google.com, Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: Re: [PATCH v3 1/1] pgo: Fix sleep in atomic section in prf_open() v3
Date: Tue, 08 Jun 2021 16:50:45 +0300
Message-ID: <1989067.FY1I2HCei6@hyperiorarchmachine>
In-Reply-To: <162310696843.3797458.16031727600580374864.b4-ty@chromium.org>
References: <20210605183128.129614-1-jarmo.tiitto@gmail.com> <162310696843.3797458.16031727600580374864.b4-ty@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bHOW7xBx;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

Kees Cook wrote tiistaina 8. kes=C3=A4kuuta 2021 2.02.51 EEST:
> On Sat, 5 Jun 2021 21:31:29 +0300, Jarmo Tiitto wrote:
> > In prf_open() the required buffer size can be so large that
> > vzalloc() may sleep thus triggering bug:
> >=20
> > =3D=3D=3D=3D=3D=3D
> >=20
> >  BUG: sleeping function called from invalid context at
> >  include/linux/sched/mm.h:201 in_atomic(): 1, irqs_disabled(): 1,
> >  non_block: 0, pid: 337, name: cat CPU: 1 PID: 337 Comm: cat Not tainte=
d
> >  5.13.0-rc2-24-hack+ #154
> >  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06/2=
015
> > =20
> >  Call Trace:
> >   dump_stack+0xc7/0x134
> >   ___might_sleep+0x177/0x190
> >   __might_sleep+0x5a/0x90
> >   kmem_cache_alloc_node_trace+0x6b/0x3a0
> >   ? __get_vm_area_node+0xcd/0x1b0
> >   ? dput+0x283/0x300
> >   __get_vm_area_node+0xcd/0x1b0
> >   __vmalloc_node_range+0x7b/0x420
> >   ? prf_open+0x1da/0x580
> >   ? prf_open+0x32/0x580
> >   ? __llvm_profile_instrument_memop+0x36/0x50
> >   vzalloc+0x54/0x60
> >   ? prf_open+0x1da/0x580
> >   prf_open+0x1da/0x580
> >   full_proxy_open+0x211/0x370
> >   ....
> >=20
> > =3D=3D=3D=3D=3D=3D
> >=20
> > [...]
>=20
> Applied to for-next/clang/features, thanks! I made some additional tweaks
> on top of this, in a separate patch I just sent out.
>=20
> [1/1] pgo: Fix sleep in atomic section in prf_open() v3
>       https://git.kernel.org/kees/c/d13b0485a7bb
>=20
> --
> Kees Cook

Oof. Looking now at your fixes, I'm sorry for the extra work needed. :-|
I should have cleaned up the error paths better, since that was mentioned=
=20
earlier.
My eyes were apparently pointed on the v2 module profiling code I have been=
=20
brewing the past weekend.=20

Thanks!
--
Jarmo



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1989067.FY1I2HCei6%40hyperiorarchmachine.
