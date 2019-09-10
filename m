Return-Path: <clang-built-linux+bncBC2NBVXJ7ILRBIVC3XVQKGQEPV7FNPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE52AE4AF
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 09:30:44 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 194sf11635707pfu.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 00:30:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568100643; cv=pass;
        d=google.com; s=arc-20160816;
        b=1ICmq9AUBQoruf787c/Hg27OKJwvxM8eio46yyU/hqhG2/O2NqF/e3qKmFOh8bWzrW
         4R9JUoC1HN4tyXlhkEFCvwzJ0Zpug/ZjsoUGOIE1C9L8fqO6TEse5wyxkTCB38DF8dIx
         pOs9UDY0PcDGPZmuAk1CVASMCvrQAMrbt8qyLlgq4sxKfR1Ao8XwJxsDSEnPDZTHACXl
         YfSms3xE2FCuyJ6AWisw4A04BFu0s3b0i2QvVCLcMyXUFo3Q46vlQPRyfDsQe4D6BMYc
         IGoZwSI40eNt6axT/eBx6wJj0YWEkRFVmABLvQ1wHM40nRj8xUseAz/oD7XThhbxS0l6
         NF3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dl3fI4TAEJiU44PojWV8iQHnEk4nqWfQgVADHf/VTXE=;
        b=MjfslN2PMIGvI8Ncf7nHlE1dQ5ExaGrYkm2oeAO+H9+MT2Ow+nlTbiBJkkgIcldScz
         1y/9//2+unCq8o7FCZMNpxt+u50JKq3TGU4aBCVMDo+yFsYGcTt0cN9Utm08hFx2hNxo
         i1D+lZ7BNmZzEv6a84sZh7Jq/V8FRpPB22LuPAY3nm4lE5zdbzLbrF/eJLIzdacOw6wP
         PFVyOOZGND7GlSQFi+B0VveaWw2BLRfSrkDsgMVqd+p/vapSLxi8r2ae8BQTPeGi2E2U
         LPlwTbORKEw/dHeYOjTWvG7DB48D3zDB0Cc71vAp5+bCn/FR5l1B+llqk2OiM15l/P5g
         LlzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="DGH/k+pk";
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dl3fI4TAEJiU44PojWV8iQHnEk4nqWfQgVADHf/VTXE=;
        b=PHz3teuwth+QtsvRyl0KPhOvWEH9twmt7pJP7oYJxd8bB4erzjJ8+1OKcq+eXr7V2D
         hyORdPHv2HQOv3XFHmFigZheGBbUbjmCUDd7UqBWYbNA+Y/hduVxuhYq8hUWe3pn/b/W
         NTztdWv6hTC2hVNsbudG3VuCOJZ369Ap5N+IzVLjGvm983+/LWgfYJQ8OOTCsHEnCie6
         0n97ChUre6eDFXtSb49fHQmdcb5b5mONthjbQDJNExA5OrPPu6wK9V8MWXH6QT2cm23D
         NCJJG7JMamwqRmSZd7CIKC143RjfalNLd7HUNLD49RNwL/rbB4VMNWseNEKHR4wzNauI
         u8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dl3fI4TAEJiU44PojWV8iQHnEk4nqWfQgVADHf/VTXE=;
        b=SUlqQ7LAypepgy09eoQy5DAN+7UeI7JnvmTge0jrufAuNe9ii3DgbpP/hawANIrNsi
         bLbM157wTS0wLkF9nJPCS0DGK4s9pd5Ju/5pr2NMcBh+VX0n5AKceCNpOQJX2yc3854f
         N3IUzdPi0PVxgySKOby/vBHNpa58DafpfsU1ZUDJxzuBNsGBM68IC7ImnRpfnZiGPSXo
         HyuFdUrZSJSz2xUF4oQjwA2yE1ImrZHCKVbPSfnmOeLbgh+bZ8ytNumdBjswLB9Gsyyz
         TtWf6IeGZ2pDm9vRtxTl/WyN2bHin0xwPCp/KC6lDUz0ORzn3y6ATIWwluD+JY1nf1pK
         ItMQ==
X-Gm-Message-State: APjAAAWowG51SXsvYkvKawLTGM79PXMF+0YrWzP/PtvDbECIMsUifRMe
	kYRVtF8nzvOoQeLgMTQC7yU=
X-Google-Smtp-Source: APXvYqyU9uyjBBWHQN9wZsTwMevWTOQZ61AIc98p6r1TlXrATSsUrOsV16wXZYQqncYkpLJj33wBIw==
X-Received: by 2002:a62:e209:: with SMTP id a9mr22499805pfi.164.1568100642922;
        Tue, 10 Sep 2019 00:30:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:580d:: with SMTP id g13ls3489650pgr.5.gmail; Tue, 10 Sep
 2019 00:30:42 -0700 (PDT)
X-Received: by 2002:aa7:9e50:: with SMTP id z16mr34315426pfq.83.1568100642604;
        Tue, 10 Sep 2019 00:30:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568100642; cv=none;
        d=google.com; s=arc-20160816;
        b=EQYXtZipRRtheJX2H4i0IDJPO4YmsZDTL/faGouY8rDoQr7I/ZijZGfoT6qkBSH4sS
         WQ9eeAfVFhJyjE331wVl3jZES8jEo6ScsbgRY+XM9DkA7wJzHYVIXBKx1CznNSCwnMTQ
         sMdHJK3qN4rhYNOYP8OT4qNyPPGNH3xi1ehj/f2+VjNT6jhp6fZ+GSxXd9hTBfriRm2o
         mF/zur9xUMiaYaHpaIIWnlAw1HERh49Q2MLxZuRER1k+YH6/mL7GkAZegvqLATeLtQZh
         bhquJdJfLVbcawufwl2oBfcK8tHv7LdYnfSPZpbnZBUQ76a8DSGxrLnRNekrvaWO5Pxa
         t2rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gI2htBBSr7t12MuSF5YiGTPPXXSBqZtqyAnRH9XGDmE=;
        b=BKlIewdjNA+R/GQU8Yxp5yN6aE599jcdg5ttdHwpJG3jna8l1Pj0i1S2J1LwybBkT8
         qL9XE5I62Nd82XL80c5/jW+RxpCxllRqVx2RyZbmWHk/EDzjpASA2MzmJmneXPdhQ08r
         10xWhh4HWZbpytqnIeyy5cB1HAumJq1bZtSNHtaghE+B4ClfEwpqKFNkbzjF+0uWlU5N
         apd5MOqSjjrqUFp+cbXM0gXBnMADgWx/0lcf8+q0SdV17fYe4NlgKoOZaJCTiLefB2jn
         WV+yWL6O2NXeh4rqxCmu54WpX6jaZ3kyZt3ckzt2fQHUmRmL9aC8qGBJSnIoptc0Qz9c
         YT9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="DGH/k+pk";
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id b64si1161186pfg.0.2019.09.10.00.30.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 00:30:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id r4so35246287iop.4
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 00:30:42 -0700 (PDT)
X-Received: by 2002:a02:4807:: with SMTP id p7mr2598146jaa.95.1568100641982;
 Tue, 10 Sep 2019 00:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
 <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
 <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
 <CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ@mail.gmail.com> <CAKwvOd=DRLcv7CgLygG8COxabZaZDKcWxxOeFG8cwYZONpHupw@mail.gmail.com>
In-Reply-To: <CAKwvOd=DRLcv7CgLygG8COxabZaZDKcWxxOeFG8cwYZONpHupw@mail.gmail.com>
From: "'Hans Wennborg' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Sep 2019 09:30:30 +0200
Message-ID: <CAB8jPhd4u943PmD_ryj0Bht3kvC4a=yKpek620O+LEQMOCvbEQ@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: hwennborg@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="DGH/k+pk";       spf=pass
 (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d30
 as permitted sender) smtp.mailfrom=hwennborg@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hans Wennborg <hwennborg@google.com>
Reply-To: Hans Wennborg <hwennborg@google.com>
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

Thanks! Merged that in r371490.

On Tue, Sep 10, 2019 at 12:13 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Looks good, thanks again, all!
>
> On Mon, Sep 9, 2019 at 2:12 AM Hans Wennborg <hwennborg@google.com> wrote:
> >
> > > Cool, just landed my fix, and Eli put up another patch that fixes the
> > > arm32 issue for me (big thanks Eli).  So having:
> > > - https://reviews.llvm.org/D67306
> > > - https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed3d671
> > >
> > > in clang-9 and then that's zero bugs related to asm goto that I'm aware of.
> >
> > Thanks!
> >
> > I've merged these ones:
> >
> > - r371111 for PR43121 (and other PRs)
> > - r369705+r369713 for PR43243
> > - D67252 / r371262 for PR43222
> >
> > and waiting for D67306 to land (it would be great if that could happen
> > today so we can get rc4 out).
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB8jPhd4u943PmD_ryj0Bht3kvC4a%3DyKpek620O%2BLEQMOCvbEQ%40mail.gmail.com.
