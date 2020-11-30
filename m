Return-Path: <clang-built-linux+bncBD63HSEZTUIBBHULSP7AKGQE4ITXNBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id E58D72C81E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:12:47 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id lj12sf1229680pjb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 02:12:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606731166; cv=pass;
        d=google.com; s=arc-20160816;
        b=bSOrCuF2XjIDEyOkWTBvC002hGAKSZPc+CL6qqNpceqqEmDtUaYC1XrkJpJAcPXcRD
         Usxf2ln7PA8Wjcfk/okTcuVNTxW4pFzpYdD6/TfdyG08xe2oDu8Ny+dLaexGzvLmyLBn
         K8+S5e985c67xL+WrqTeZcbYD6TSPXMa6wepLG74w9eq9KdSyUuZDk1ypwOTNA7fpsxK
         KvzaxrZjRwBob+b77lc+XXz+9HdHCUXVyun8UqU1ez/fHEaN+dXlvSGUiXkuxkEc/QJ6
         LCHfDVWlaQP+G8SaDICu+b6wuHUwlVILKMrjB9Z2HsNHLvga0P3rsgky0ZnFJHyNi91t
         1c4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8Cg3tYi/2bnyQ09Rm4E5rrCmCHdmW2WIwTJMWyuEjCw=;
        b=g3SAdkKbjSQnraf6WmzBScmNocaalewtzxOUtwSTwL/srHfA7RAD1JHcLJf7880JA2
         FPm6fPt09Y6tpta+sDN9emZ5ngNu0eQqxA8kpA141RrubeB7JHEMCcToseo9+uBD0sjg
         icKgwMEtfP8WEMWUua/fT6r6Vsqf1UUtWQDjjoby9ouwLt/VxjUE7B5fv/hJzy4CC3Gc
         G2V1QWUwG3gBFoI8ebM/ox9+KI1CDCkCxQaGB6EJ1aCk+zK4MD763lKbzZTWvQ9JQI1I
         EqinPDXFvWs4Na9pDvZ4pm26tE7q8VHGpvdwbV4MoCrYzXPatw8ceBrUwY7CptMVaGxE
         zuhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="At+/KB3m";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Cg3tYi/2bnyQ09Rm4E5rrCmCHdmW2WIwTJMWyuEjCw=;
        b=d0Z2OKYuiLG+eIwj91Pnzqc8TqTSrBH2l5Z1psZMuG4xg+7DYJ4MZWhNX1eI/uIyvX
         /q9eOLZHoURf91k5jW2tV1UCFm3O6wdHS3yG6xafFuZtO1m8yMbOWTnBJFZ9P1khQo2v
         D1H15IkdWcB8wkZ5sNCOwPsmcXF3CpqhlkTIZKgSVvQXgOkvska6oBX//ZuJOoSAbhzV
         Tz0+eP3NWmglksWZ+ZPs+wuQ0O1ypu3MLSlI0pAk4VtEFf7AzXvyNIJ+XuSTOTUc3Ogz
         XmDCpGwFvP2vB6P1CsZW0muvJW6VTwHC4KV2TzszGmvU/9O/b40Q+FO+IjjBFEiM1627
         bmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Cg3tYi/2bnyQ09Rm4E5rrCmCHdmW2WIwTJMWyuEjCw=;
        b=YbdiDQquLt6n581bxXWh4/uHbYx8RdMimIaQdzA24qQKAYErTUE3xmbktGFaIro7rO
         awdIbdWX4TFnH8rHfwoNnxAtluRjqF6kEveUXbkbmG5VxinYle4i3EWuqfxCroh9XE2H
         Gn9VHTltLHhFBGlkdV/PMGDHjRP0oCb164ytth4QG6RaA4trM1oCgpuKgPQoVEZbOFyR
         NhSt/sLsdoh9SqyoGfqriwO1wesDvqV8xrv3WHlSVzysdeHd1LpsGWBXrdRVQ26lirdD
         yFea5vKc0fWT/qQVI6wxHeid05EvMXfds5LE1k5yX2dms8xW/VEXTIhO3gzMKtvVDFI6
         MEuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tsPhNYginsF9JwiuDgOB+dVTaLtlaQbpDHZ1JFW40FmHn3aQs
	twQVr2juWyAQMQncZnO7FOo=
X-Google-Smtp-Source: ABdhPJwNMqhvnBuuEGBV76tsnngI26W1F/tCaQ+F2Kyx27hRDuKAM0SqrCW0HaF4NtXibpjhVJ41nA==
X-Received: by 2002:aa7:9434:0:b029:18c:1c6a:2e0a with SMTP id y20-20020aa794340000b029018c1c6a2e0amr17836944pfo.8.1606731166639;
        Mon, 30 Nov 2020 02:12:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b23:: with SMTP id 35ls4060539pgl.11.gmail; Mon, 30 Nov
 2020 02:12:46 -0800 (PST)
X-Received: by 2002:a63:da0a:: with SMTP id c10mr17288781pgh.145.1606731166061;
        Mon, 30 Nov 2020 02:12:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606731166; cv=none;
        d=google.com; s=arc-20160816;
        b=0w6EnWu7ilnWg5PGR/wD8SUbmq8ZZfpi/FeHfWpjBBJpp2lTd7wQeK6RaxloAnQGHp
         QQr8VsA7cU39kdmANgu+lJgHz9NHWn+enwrs6zNmaxdNBHvpRnnVTQqFbl3UF+gPCnim
         Qy0m3n9d5OrNNXLOKZO9UMT611mH5IOTszG0HCUMoAHk31kBcoDwF+CXX0uzG1GRhdNk
         3Jt/jAr/p0mTMy3SwMiHR3cOtdH+BsES6cdRsJ30+ql+YoPDDneGuUhV1lyuk7ficKs5
         //5MfvhgfQ9oM5BiOLvmfkJu6IB8cP7tegqi7MPSCicFlBhV889KXXqLc0kzpcOwFYfz
         tKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ks7nccorVBa1uugFKUkk3YeylU9jWj2QHDNZuujbcT0=;
        b=HNsQc5/kOv62doxD7nAQFM/VtE1Yaw4+0rSfGNHpqkeQQM20V4F6/2O29HsetrnJ0q
         +gb4B1LM4lPPzteOXpuRR2a8hx03/FZtk5Ep8UfY+RWUMkPBeOfiW/y4tF0d+GD3BK7n
         uvrPdFxNTaoI+zmJKe76J9EJHOv6jCRDlcoCS/UuEAifOuSGU4uyb6Kf5AD4iDelS871
         YJWfagzIYaHSz7PWd1F2NSe94KeKdZU33dcCt8NKlomYZTbpLqpX2aIA5VdXdtVo0mPg
         BDd8h8yoE5vIpD/cIZsS2Iv40PtZo44vCmzNd+H2fGAcSrbP+vrHQT48G0kuACdLmAQs
         5LzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="At+/KB3m";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nu3si1280041pjb.0.2020.11.30.02.12.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 02:12:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F46C2087C
	for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:12:45 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id t143so13554947oif.10
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 02:12:45 -0800 (PST)
X-Received: by 2002:aca:b809:: with SMTP id i9mr14179188oif.174.1606731164557;
 Mon, 30 Nov 2020 02:12:44 -0800 (PST)
MIME-Version: 1.0
References: <20201123073634.6854-1-swpenim@gmail.com> <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
In-Reply-To: <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Nov 2020 11:12:33 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
Message-ID: <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with clang
To: Antony Yu <swpenim@gmail.com>, Nicolas Pitre <nico@fluxnic.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="At+/KB3m";       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

(+ Nico)

On Mon, 30 Nov 2020 at 11:11, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 23 Nov 2020 at 08:39, Antony Yu <swpenim@gmail.com> wrote:
> >
> > __do_div64 clobbers the input register r0 in little endian system.
> > According to the inline assembly document, if an input operand is
> > modified, it should be tied to a output operand. This patch can
> > prevent compilers from reusing r0 register after asm statements.
> >
> > Signed-off-by: Antony Yu <swpenim@gmail.com>
> > ---
> >  arch/arm/include/asm/div64.h | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> > index 898e9c78a7e7..809efc51e90f 100644
> > --- a/arch/arm/include/asm/div64.h
> > +++ b/arch/arm/include/asm/div64.h
> > @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
> >         asm(    __asmeq("%0", __xh)
> >                 __asmeq("%1", "r2")
> >                 __asmeq("%2", "r0")
> > -               __asmeq("%3", "r4")
> > +               __asmeq("%3", "r0")
> > +               __asmeq("%4", "r4")
> >                 "bl     __do_div64"
> > -               : "=r" (__rem), "=r" (__res)
> > +               : "=r" (__rem), "=r" (__res), "=r" (__n)
> >                 : "r" (__n), "r" (__base)
> >                 : "ip", "lr", "cc");
> >         *n = __res;
> > --
> > 2.23.0
> >
>
> Agree that using r0 as an input operand only is incorrect, and not
> only on Clang. The compiler might assume that r0 will retain its value
> across the asm() block, which is obviously not the case.
>
> However, your patch will likely break big-endian, since in that case,
> __xh == r0, and so it will appear twice.
>
> Perhaps it would be better to change the type of __rem to unsigned
> long long as well?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2%2BA%40mail.gmail.com.
