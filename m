Return-Path: <clang-built-linux+bncBDRZHGH43YJRBMP2RH3QKGQEYT6UHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FB21F6DA4
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 20:51:29 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id b63sf3120817wme.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 11:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591901489; cv=pass;
        d=google.com; s=arc-20160816;
        b=dkCLfS0pIR80s59DMDp3CsUG7NTy6tyHyICKbcrZaskHTU0+4DvTiqLEL1nxVZIrJG
         /YQJTtlZhoAKh8cUw5QIDoA9CV62OvQ0vnoLpTK67XKGfdMGQRO6XP7rJr5OwEzqKhC+
         Y5f2APIzvsAQvkisQQ5ct+qHg29RJf4XmcpRzf/TmrtRcKFTlz2ip1kQp1pDPahK7StS
         ONGAWq7WFxMM0ZkcAEr3P4MxAoggDPaFir+RYprcqmbxdITyMhy00zfwPQn0pnGATEI3
         N6C9q5RPf59EecF49cNbfdyghKCa1qxJyZ1MBMO7/V7FUX5dx9oxypXAzWrfEUqTcHWy
         8dBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Ee/P+yqbWd7YuYrrA+VoXF4DlQ17q+8hnYrpT75MIIw=;
        b=XHKwxXP0pwG354Hu4m6WNpaIp83i/k5PT92msLLOM1EmjVYpXDs4SyFEhN55sfwIK4
         0dRXDm2j6h3wZcukHomOUtxHa/Wb9tw/smGZKryxxSK5QVER7Oj0zxa9vG2IQxmNueJZ
         M+6RFXKN+FzMOZ2TckQ5xge5ZRjky7M54kSTuRh2mFKBRKEJN/cVQ6UnvU31vVq+QOgo
         Aml2S2f4aY86OxHrbcKwOEaGkr3sunA2t6Fy0qX1O7criyXc1rq/vYiaZW5h3PHufUbx
         9FX1IGapgNY73a/RiPb/RRDsXioPY1ldrqaGDu71CLx1U7WkKQMojyrySaeckAYhsbgy
         vszw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rlp/XaVY";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ee/P+yqbWd7YuYrrA+VoXF4DlQ17q+8hnYrpT75MIIw=;
        b=T3MEgdeprOfIewWcDOO4TdwAmzL9PUrFeh+ixSMGl2/0LmUo5eBdAR58LHBnVewzv6
         Bx1qW7vupGEt7SZzVrvBoRvENY/mNaGlSyTSlpdsDJfnEYOsuahvpk3tZJKB/eKMsggw
         EFq+56NptmrmHlpmvIf3UlM54rz7co7QXESpUamgX+UMigCyApHHA2F/IA8cZ1YdlMwW
         UkKtw8Zr6bwr3p1YHlRmggvSqx4CoAQFV2+c84x6AT3lfcIQLOB7iX1LtHROersdRmka
         stNMnnSeoDm+MTyprkfb5u5lqfzq9J4C7i3YsE8hO9RVtQLT32LbcHo7z2MHPnbPpfVi
         vG4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ee/P+yqbWd7YuYrrA+VoXF4DlQ17q+8hnYrpT75MIIw=;
        b=g9f9rQ/Qo+XSrJpGJ7CPpziQJQtRTnyFKhWbuGdILa55UPNooWtlm4dFABVZ+COY+K
         Xd/bWvKB7n5GUsxKK3Qk/q9z+xJdH7nIZMEojgcevzck70BHTSTeui/5Vz199njawge6
         QPyIw39H8DsTrdq9fSP3OgNDk62nkDLXYcqcwZ+D8GTDNuBDqnwOHH1PtDTJYGOlQzue
         wXdvk8q1eU6iFXwrcYbI8GD4HycjbAIkjtJtCPAL9r0R++fvty3x4HU3ryzMeyyMW01H
         CrSvo3g2ylsH5lyXDBo7+HBOcbxfdmGUHkA6G6Ll781jDLhgxpBLGR5tw534fabpQTtG
         2gtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ee/P+yqbWd7YuYrrA+VoXF4DlQ17q+8hnYrpT75MIIw=;
        b=iOgQU1yV6C3UxmSSdaenotWOoOUKEYXxYsvGjzqsFZA1WOIaz9XKRJexx9sLRAEAdN
         wQbeYuEQFnm71o7rCd6HyZg9ChmDZYLGQAbndh/zMlPzT6peF5TLp8Rthm4mVLfdBIrK
         uBKRyCmhnGGBRV2iXn2ZMunUMbvWUSUNVWQLB7iSvcoKXLgfRWjA4y0eB3uWtJqbLJCi
         QoU3KqmIERymXdrQYKlhyvUctwReVms//p1Qu8dNDAPobD0eiZkfsWLqzCYv96vTSk1Q
         WcgOibDx3yrpIw83diFR2ZdyliKarQ+YRMf7JtWtXSepd8bN/qZGofc+uetldWrpC8m8
         Riqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fCfzgwctyztvO4i5QBiffn0r4uYRpw8HVMfdEAvXt47iOq9sG
	NKFO9jrP/9tzKBlHqp6X1K8=
X-Google-Smtp-Source: ABdhPJxBs1ix0/2AgyKBsqOhkMexM+hTtSs1lBx9OGZ6Ug/ujctx+9rNCqJFRu9oJgA0pORHjxxAaQ==
X-Received: by 2002:a1c:dc44:: with SMTP id t65mr10044817wmg.128.1591901489098;
        Thu, 11 Jun 2020 11:51:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db45:: with SMTP id f5ls1432861wrj.0.gmail; Thu, 11 Jun
 2020 11:51:28 -0700 (PDT)
X-Received: by 2002:a05:6000:10c3:: with SMTP id b3mr11485980wrx.53.1591901488519;
        Thu, 11 Jun 2020 11:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591901488; cv=none;
        d=google.com; s=arc-20160816;
        b=bOFL48WU44ESz+x2PklANgydYK1JUS/jW94/L2+IysYrQEpmXQDgsMJgE9XFeTNhyV
         CY1vEQSKTd1/Sy/Ofkco+7DeAi2t/xhTWgCzgLmF7Cr0feKv7dJnD1SAIpr404AugP+c
         w7FyP3s0bRyzon5Kmig+c8z2B4LjeKOtZzdRBpeDjXBVz/4HWszbvJ9Wl0tbRUdmIPMv
         mQtojMmNn9TsS585bDH+TgU+IAmdLcI7qDjxvBVSSSwPnMggJnE6sj/xZh1IebwZLLiS
         WXKaLBDLYM10JOueh1CleEtX6Mkft8f4Ew2HBF9bdF+8F5UwqgiK/2VnBQA0fY3zwn/U
         /E2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=F7i6ozYWDoWdhQUF8n+x9eu910xpemZDjtGEhhP0cTk=;
        b=gqQi1fYNQl1Fmed7Mj3k+ujcm7rR7untXveIeJ9TeqhuglDTcymk6AU1zzIjp7Jbuj
         2EMmJxMZMDK8v8tgvgvXhL1svELyNP57W0OEabxT3l5UY02VRgEgunt572vP9oa7jGSA
         fJmNMmpqQCpsfUNoPGda0SB5Er2aVV7tV+zdO26S+qzYr+0q/AcB5tEEgcoR1GbubxBd
         lAkFIueH66QhC0/1flkyq9Ei852uVM6zsVDY4+wQiqnX2nNlpuoLf5WatWG+xBEwUuaK
         aU/QIx7tM8x+ajs5ZJkgPnzurQLSTxSsTW41C8YU2aEK2CjmaaNEC64snI7ECnF8AJM9
         KtIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rlp/XaVY";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id 12si487448wmk.3.2020.06.11.11.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 11:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id 82so4109353lfh.2
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 11:51:28 -0700 (PDT)
X-Received: by 2002:a19:3f01:: with SMTP id m1mr4909173lfa.130.1591901487983;
 Thu, 11 Jun 2020 11:51:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
 <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
 <CANiq72=BbGqXmiG8+1QuJnLXMTwNjUg9WuWR9eJcLMHZ=k5hQw@mail.gmail.com>
 <4c6f8d63817cbc51765fd0b3046f81dccbd17ec7.camel@perches.com>
 <CANiq72nOaDo9LQ3JoZk6VH-ZYErHpvD1O=DyVngs3xno5e9W7Q@mail.gmail.com> <b4646ed22573568c0953d272514ab3b701e54faa.camel@perches.com>
In-Reply-To: <b4646ed22573568c0953d272514ab3b701e54faa.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Jun 2020 20:51:16 +0200
Message-ID: <CANiq72=58t3T0VckOOm7jAnwaxdEK2zbrWeQw-bXifmOq86BCA@mail.gmail.com>
Subject: Re: [PATCH] .clang-format: update column limit
To: Joe Perches <joe@perches.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rlp/XaVY";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 11, 2020 at 6:22 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-06-11 at 13:54 +0200, Miguel Ojeda wrote:
> > Why is 80 "still preferred" to begin with?
>
> That's neither my nor your issue to solve.

? You (or Linus, I still don't know since the commit is on your name
but I can't find the full patch in the list...) updated the wording on
`coding-style.rst` and I have to decide what limit to put into
`ColumnLimit` to make `clang-format` most useful for developers within
the new constraints. So it does concern us...

In my view, `coding-style.rst` is saying what it used to say from the
point of view of a new contributor. But regardless of that, forcing
`clang-format` to work under the 80-column constraint means we will
get code that won't look as good as giving it a slightly higher hard
limit. Yes, more lines will get over 80, but that is not as big of a
concern now since it is not as "strongly preferred" as before, which
is the point I was trying to make.

A concern for keeping the `clang-format` limit as it is that I can
think of is that newcomers using `clang-format` may feel forced not to
go over 80-column no matter what since "that is what the tool does".
On the other hand, my concern for *increasing* it is about things like
function signatures, since there is no easy way to decrease their
length or rearrange them without reducing the identifiers' length. A
third alternative is using `ColumnWidth: 0` and let people break lines
on their own, `clang-format` will respect that if possible. But then
we rely on people using `checkpatch` and they have to take care of the
limit themselves, so the advantage of automatic formatting decreases.

By the way, I noticed that a lot of kernel code will still trigger the
100-column warning (~20% of the previous set triggering it!).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3D58t3T0VckOOm7jAnwaxdEK2zbrWeQw-bXifmOq86BCA%40mail.gmail.com.
