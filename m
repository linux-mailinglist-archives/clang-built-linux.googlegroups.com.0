Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5HWWT3AKGQEJNCKY4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A55FD1E2610
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 17:53:25 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id c19sf11688399oob.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:53:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590508404; cv=pass;
        d=google.com; s=arc-20160816;
        b=GyRVof7x0KBWpwZn6O5O1S/afv5wFqDuxZ8C4ri/LVvVqFynAU914fnoBuv80vKLD7
         ZJXhOit6b5vpVBLygpCJzSCAGKGw6UiOUiTijiqrXFERpNnfRvTrH0j+4XIUEB6Ul+/F
         Tb9/QKirpE08vWsFO5Rg9AGroPTal9l0QvsVIdRJdUP3WNIIYTV7AdeDfa75Lug2FfWE
         9XItqcDGslcZrlToJX3IygtW6gIWQLZKiVheH9xCO15dqAjVWi6a21IaqJ0n09PxQAzV
         iDAxNhTTITB6tWbc4voUb3qM7WmU2zmSqSE7tsTzi0Z4BnT/YIlGBNdHPax/1UFyEeBr
         8tGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+LSg3Z+zGS/lFHn56N6HK/h8BhCK6uW5ZMzPbDT7OF0=;
        b=thopOrCVdeN+kvhi5F7RsQ/2qRXFe3YpHC7/bJvT11vEAqSMMd1yxjC2votzBoLZ/W
         WTmzuNyJhZmxNl/MNo/pedb2SeVTMy9L22g0UMN4D/oq5m7fZ9ZNhEzbSLNDRClmLPWX
         heLPe1HYY/qHAPRsfNJ7wupRk9lvwcoSi7/dycoJ4ci4DrvvYXwrxu46nNbXIYAL6FfS
         eifGWaa0g5yJzwz3sWmmR8LamoWkMYQSI8hxi21M+7zp4MEtJvCeLmfH3CCnT5v1MNi9
         LfZUXT43HRzKSZWgODAq1C3/rnFJw5doCI3LgOsSfGD2u3HjtE0DSCFhdV45l5g0ZOWK
         jSNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G8wznlSm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+LSg3Z+zGS/lFHn56N6HK/h8BhCK6uW5ZMzPbDT7OF0=;
        b=bVEnl567+YuTJ5iZHh1814xQRadqXpGJa+Md/tWyPeJN0jRuyIbdCNuBArAjJjKeOa
         3Sys02jchBkl4lSQ6oy8dLwb6AkijRSKmHQvhFEUN5x6BzXj6UvxzosPpHtRHWR5d4yF
         aG9jwJOyeg/PSmv4Sf6Czz6jbH3D/rMVLH86X7piE3eaC14oMsisSy+4lojOOenVQnv5
         UOojq24IrBKjL4JozPeZs+ob3CzdFhwG13X0abQnQY6T+UWCr6RcTZ9+B0MS+4CPwqE0
         jvlvM/WWKlUXPOC2MRQYpx4RjhzmxKOh+1oVfzJwYF3tnkiv5ERmVX0+w5MDRhB+vzva
         6EXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+LSg3Z+zGS/lFHn56N6HK/h8BhCK6uW5ZMzPbDT7OF0=;
        b=q1m7bUmeP+QCYEGQEMhVqJKK/Z24qVZTVTTpXroAolej8tQ0u61Fs28wG32L67kahc
         kphy9dg6YBEiCojJiw8CWFQpKNzHrEtHAs1pjKf0T1rNCbfkdWAzqXx1TUyDo5bwaB9T
         An/4+jS8G7QbEDVi1/2MSFKsk55yxmYbpsbs4vrYgnpIJr29UJhh5SrpGSjUHc1lBG2o
         BwKmE02y/8Kc4wo8kFCfojccZ3Znyn/rACcMm3H1hZhmJW4RK5+cSXZ1JZ2slHHVWe2G
         Kwjk+OhiaBhs9FnVUNw6DM7DKsCvOl/dAxmFd7QlHpMz6Bfn/3VC0Mxp82BJrr3p1tLt
         10CQ==
X-Gm-Message-State: AOAM533kMSIM/h2qkSWwiec6iAjKcCGGkuVUabKizSFOIrcbeyFE520d
	4LUk2YC4cxfoJ3ICMEQjdNs=
X-Google-Smtp-Source: ABdhPJxXe9eXK1tJ/YI4h8IEAMnJt0dCReKlPYDN+K7cd/Vv2DOxDaz0/96gnQddS9n1zH/OLsDCzQ==
X-Received: by 2002:a54:469a:: with SMTP id k26mr9672816oic.163.1590508404641;
        Tue, 26 May 2020 08:53:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:148c:: with SMTP id s12ls999980otq.5.gmail; Tue, 26
 May 2020 08:53:24 -0700 (PDT)
X-Received: by 2002:a9d:3a7:: with SMTP id f36mr1406465otf.197.1590508404138;
        Tue, 26 May 2020 08:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590508404; cv=none;
        d=google.com; s=arc-20160816;
        b=VlOPNVUHK/otvB8N+Cmi/cv5JMO8PlKQ+gB2Yk1kTHQVv72c8V19o0boKOpqzpY8OJ
         lRT3XtIp/GB6DO7n2f0NdLuPqGQ8ez7QKMHpnCZsmw33yUvbBVEqkfXSJGjAipQqdI1x
         +YZNmPJFRHQ6EoiNSwDbrKhhQgmSAkte6jkbgsEr7u925K2Z4x8ejbDg5NoEhoTbJNA6
         m6C+1S9p99JxJPPUay2HdQrU4UGK8SbglXXcHH7BRCzbGEOC9VgK5rgWl57rqQjkexnp
         jNPJBoSu0SUQdy5u+acLPqw5oZm2dOG6L14npAa/n5koPwnP1yKOZFjeZ6cfo2tf0cXA
         m79Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cFGDaxo4qDPqer5LUFoEQ6KIGoB8fRDPFyAGftHJwMM=;
        b=Dlky4orPZ37YJ6W+pTtmYW5K0/KNYKmK0jthvxYwIUq9AalF9XOO6g74BSgDcWQuz1
         Wj8xWQzaRT7ey8tbbWDSrZjGriO0ODSUbZEF/FpladJjFgbnQRroJ1J+bZsOvUoEplFK
         c12fA+jidAy/YkuesaNCeeSw2MoUqDbps20qy94Ob2cG9yIFfdb6794vIngAAHIQDZFg
         ZMwNejPMEBAmLriUT8rPr0jMnoTpRSmaqskWR3S79X1ivefOxzgSIk0t4iLLHWApVRA8
         G0UOB1ayzevOZVNaVR+XxTQqjan0Kqmiowwc8xDHMs+vJK0rVAj5N7OWBhVMoWgTiNLB
         Fdcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G8wznlSm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id k65si36848oib.2.2020.05.26.08.53.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 08:53:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t8so9568pju.3
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 08:53:24 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr27893380pjb.101.1590508403144;
 Tue, 26 May 2020 08:53:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
 <20200521220041.87368-1-ndesaulniers@google.com> <CAK7LNARtO5Pr2nxpoORSHDFWHbjP0waOmrn_TZ+rXhmYm+TORw@mail.gmail.com>
In-Reply-To: <CAK7LNARtO5Pr2nxpoORSHDFWHbjP0waOmrn_TZ+rXhmYm+TORw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 08:53:12 -0700
Message-ID: <CAKwvOd=qNa4fLY7ymVwvC3TwCH4DNLyEfygoTfBJ2y19xffQUg@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, David Blaikie <blaikie@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Changbin Du <changbin.du@intel.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G8wznlSm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Tue, May 26, 2020 at 3:28 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> > Suggested-by: David Blaikie <blaikie@google.com>
> > Suggested-by: Nick Clifton <nickc@redhat.com>
> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
>
>
> Suggested-by seems strange to me, but
> I decided to not be worried too much.

Ah, sorry, Monday was a holiday.  I unplugged for the long weekend.
https://en.wikipedia.org/wiki/Memorial_Day

I like the suggestion to simply say "thanks to ..." in the commit
message and will use that next time.  I was ok to send a v4 with it.

>
> Applied to linux-kbuild.

Appreciated.  I will have a dwarf-5 patch set, too.  I'm not thrilled
with how I wired up Kconfig; maybe posting it for feedback is better
than me worrying about it too much.  Hopefully will send this week,
assuming there's not too many bugs that require my immediate attention
(there never is...).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DqNa4fLY7ymVwvC3TwCH4DNLyEfygoTfBJ2y19xffQUg%40mail.gmail.com.
