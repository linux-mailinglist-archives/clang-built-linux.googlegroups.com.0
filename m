Return-Path: <clang-built-linux+bncBD63HSEZTUIBB366X36QKGQE6ENB6GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B912B2CA2
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 11:20:33 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id x3sf5221697plr.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 02:20:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605349231; cv=pass;
        d=google.com; s=arc-20160816;
        b=oGzZOuGp1lqsu276StlwAnPzMiudlfuL5OydQF14UirqpeMGtdkaY9b7WlAqQ0S0xF
         YcHx9c+TyNCwh50+uYNMbtywF45zLNPz0+yeG22/dohM23wzZtMxQ59WBzwvCU9My+pC
         TiXAq5AcMqh/wfkQ7Dbc0KUoNBo8nt64xC+rhpXDZf940c0CugzbiYTDrYv7RvvebdhY
         3Aj2qVzPK3/RV5UP/Vg/9whlW5lu2aoqzrGu23YaBjQMcPlXmsV2jxnxiQqz3XG6KYHf
         UzoFrID11dihhq9db0jaGmoVkR4n0btuyugArsM3W+57sawrLsDM3i10WuybGYgfPoXl
         VM2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6HHwMNGj0jX80+qoV6cV5lpdyDuJGB28er/EHyuDyLk=;
        b=DqrR/Rte92iOQ6Kq5jZAwxJU7es5bZzf2Nye9582nNxjBZkhS8SLKsziN5Lg/T6DJZ
         rG6hedTNFqvnnX64IbYI+qjmpW9EQq68DkgxtgFt0oxJ4KrdrjQOUkOouLI0MfL0dbNK
         q0MGBvqCylL2Tg3WP0AyFVHfcJqo68wseM1MgiOBHV9GMI0t7yD081vCtzVfcLcEGA6o
         4OZO+/P5q2lzDsRYrLJEEiRPmhjMiFjG7xMEnw3T0L0bOid9ln9baFIp7qeVYyJKNWIo
         dgx4lnwISRtd8p8HcBjCQElQw8wOFw6K8EECRwlzeNGaJc2BCYVV8OivnIc/hYcI6RMK
         idfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sl0SkJKK;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6HHwMNGj0jX80+qoV6cV5lpdyDuJGB28er/EHyuDyLk=;
        b=eYFFYc9gNKzYaqldiRzZxRnWEKP2WrlOnfYOzM2eEzLic+srdpmo5eLu2b8yGIGYOI
         WyHUkjvapVx0wI2j+iH3dQZtb/Q5ti6C8ngD9y1kgNM5uQYihQ0QTkVFiwtEsZyEQ57Y
         lFGw/k0+832oPZY0dUae3dYSMu7JF5BC6/f33VJh8ANKAQ2wZ2Ipg4LbwGMAEIRIF2j7
         usCOJ4dwjJFu5YBC+W3W/yri3PVQp3YC00KiRok/421jexHJxZEy1O48dsfx5JKR3dUz
         XggTFkDk5pEZAj8d4376zBZ/KXAOFfS0Zckux2nW6mAPPsn3miJIVPm70KgfcFYhIAK5
         4LHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6HHwMNGj0jX80+qoV6cV5lpdyDuJGB28er/EHyuDyLk=;
        b=UgBBVHAEiQamN+XQtBzwRlc7x77NO/gC6Q3Ri0FraXmIEGUPWvbcGTCEGUsbV/n8ii
         3se3aRH/EtF1KZf5Yw1W6HVnYKZn0kjqxPP4IjjtnJlXfC1zkMEN72nVu7eOlJnh8VkF
         qqjBa2nmRnih8n4k3/wxnBf4PdfQdZ2Bkm3tg6Qwx4mRZA32bsC11Sz4q3Zr1DAN3Ilg
         L7/BLbTu72qy6cyIuXP9grZb/Rjz15dWFgdF2UzQEAzD3wye2aKLvB8U4H4GSZZIWTBI
         o9Au6590uGg3Ut0j6LNb7U6qlQCJ1t7J1J+VDIWs6SoQD6KpLoN3O4QLt23RX7JyNb+3
         eifQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338D8hp2RcxxbqBggdK7WBBiADM8dGtuLgmHnr+u+pDBG54CMW5
	eMewz8xC25a8k8/TL6I92sI=
X-Google-Smtp-Source: ABdhPJw+a9h+9HHcMB89esEhR5Ywbx1VmcZvLaEQ2dbZk34p44TXCR0tOgBcKfjirKhmxFP273qk6w==
X-Received: by 2002:a05:6a00:782:b029:18b:99e:1a72 with SMTP id g2-20020a056a000782b029018b099e1a72mr5816881pfu.63.1605349231581;
        Sat, 14 Nov 2020 02:20:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:524:: with SMTP id 33ls2733157plf.6.gmail; Sat, 14
 Nov 2020 02:20:31 -0800 (PST)
X-Received: by 2002:a17:90a:5b16:: with SMTP id o22mr7681508pji.224.1605349231010;
        Sat, 14 Nov 2020 02:20:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605349231; cv=none;
        d=google.com; s=arc-20160816;
        b=jLa35C6gOIrMobjCrFPVd+5NAHLtBrUYPyhXx1P0QAG5xW3eflJnwOIaRqPuQqb1wL
         652xVWQ56Ddo+Q9h5ihm3njj+D5DohTAmz4O8u9R7SLqUoIKSyXEjS5tq2/kERLTaJ8A
         JV6BQqFC2fUoYILbWJFNBynhHAFvRhwvRvkPclpf0shOYmtnwEcgWoOCMDY+rl7ivOSm
         gjAbcl0WidY04k/6qTWlD/EaDpJUpopnJ6nMQs9aqkkU2Yqf8vIZzj0K/yc3LO7wnXqa
         2MIDqSEVA8liZL8ndZBemR3iBhzFqo7WYLigtaSHKKSDTSg5j1CHANYj0TnjJkt16bxW
         wyoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OHDt0wHQUINwdyuR2kBWlrKwJNuOkKSa4LmDc8c34dk=;
        b=FnSZHX0PzAl10hrgjcxIQBMh8P20CNer4Y65pJxN8GbjH+oUpD/mfNTBp3ucrbcurd
         LdWyMxq70Pdl/orPjWaxIdo/FpxiWvpX2BVOXL1Url00oFpSb7hWDlReivm5AK7Qzriu
         8iW4E4fhYcd9prsLMMhjXEQ32jkTC5kTNG5C5sVKupJuEyCVwEPPMnuIGNIGlPSe88Oh
         B+FALMD+PIKJBYWIrxz5myEiajcqEPCzaRmetM57rh1i+J8UAzhaW4qz/dG/9sSJsTzG
         T2UHPlMYIE6Yh7khdPNWVtmIvU2Iy+jpND7BSHw2AWP76LjHZYB780ZfO8w2bdjKQGQZ
         lm2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sl0SkJKK;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 80si776135pga.5.2020.11.14.02.20.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 02:20:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 580CE22272
	for <clang-built-linux@googlegroups.com>; Sat, 14 Nov 2020 10:20:30 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id w145so13358009oie.9
        for <clang-built-linux@googlegroups.com>; Sat, 14 Nov 2020 02:20:30 -0800 (PST)
X-Received: by 2002:aca:c60c:: with SMTP id w12mr4568661oif.174.1605349229544;
 Sat, 14 Nov 2020 02:20:29 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org> <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
 <20201114002624.GX2672@gate.crashing.org> <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com>
In-Reply-To: <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 14 Nov 2020 11:20:17 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com>
Message-ID: <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Alexandre Chartre <alexandre.chartre@oracle.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sl0SkJKK;       spf=pass
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

On Sat, 14 Nov 2020 at 02:59, Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Sat, Nov 14, 2020 at 1:27 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > But you cannot limit yourself to the greatest common denominator: the
> > kernel wants to use many features only available on newer compiler
> > versions, too; this is no different.
>
> What we do is conditionally enable both new and differentiating
> features. We don't break GCC or LLVM just because the other introduces
> a new shiny feature, nor we break builds with old compilers (except
> when raising the minimum supported version).
>
> That is why we need a level of indirection in things like attributes
> nowadays, and why patches like the above are not ideal anymore
> (regardless of which attribute we are talking about).
>

In spite of the apparent difference of opinion here, there are two
irrefutable facts about __attribute__((optimize)) on GCC that can only
lead to the conclusion that we must never use it in Linux:
- the GCC developers refuse to rigorously define its behavior, so we
don't know what it actually does;
- it has been observed to nullify unrelated command line arguments in
unexpected and undocumented ways.

So it does not matter whether you call that quirky or something else,
there is no way we can make meaningful use of it, and therefore,
abstracting or parameterizing any of its uses should be avoided as
well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC%2BvK_PLCCWQWOSPpeQ%40mail.gmail.com.
