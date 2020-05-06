Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSGPZP2QKGQEEYIV4QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 920721C76AC
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 18:37:30 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id c4sf2235937pls.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 09:37:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588783049; cv=pass;
        d=google.com; s=arc-20160816;
        b=02/v+REx4ek+8cL3TcuCUA/6MyGVf6l3nwAI6M2zNCa5dzL3Hy/EQm2j/sHlgvm22z
         YgcjwgSd8EgcUAEKJUe2mgNZFoKOXf+iv3iVP4C2THgL2OphF/7ZkMB2xP1luRlOcW31
         MBv8AnoXtOfVYZcya6venDKZUriV1+Pe0lQMs3Kiuau3FSiX3qGJhwLR+BFCQHAa9LuQ
         dPDswaHe4Got5slBNNPTWnXmEsr8DvvUuW7J/2MUF/0l5X5S/dG3jXWCSju3T/61x4A+
         JIB6xq1kF6gP5FeLDGGmNzSru/VKz2DTx/8r0yqK3StwM8ZpYi1juXQlFmiho+WwOVYD
         6JFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UcZGqfJ2y8Uof5pvrkz6dCiWNSY/302W2rG0I/QwDiY=;
        b=wJ9sLdMcMuo6TQ3j49USCnr4H0WevLg/l62BoE1I1j/JdiqmSCOx/zuFYz+mlQ04mL
         KI0C+Zf4c81ycwhnEBce6jH7BJQwVtjZolOTenNY0yOkYUbTucA06u3f7v08PRmfQkW0
         dtqZp7phEjv3pShDLI1a41pl7mF9fJ/2ukyVID333ZNt0rcETSAz/hQSSE7hONyPT4mf
         tS2T9qz7pa+KuCcPOeF2hpLlL+d2xTpOa+6wQ6j5Ysuy2QUPMkh9KjCFjbNn9YUiHnVR
         OxTEMKPE+jhBorQOr87gSyUBmSn1C/IXX3Ut+9nX1tFaQKLgHG2Hu1I4PH/xgWtXAwYO
         PFAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pa20bAfV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UcZGqfJ2y8Uof5pvrkz6dCiWNSY/302W2rG0I/QwDiY=;
        b=WLHlNulpzO98I/4Lg+uXW+UtN8p04Y2X43Gamnoa20Z3MEDZdSjMdh5fErUixAFsTc
         MnWG5KTB5QOAO0zWaIRrlkOGTUvg5hlslnGu3LbkhrTpK5weLhJfoP4LjGFL+pT8olLP
         Gn+mNRycJHrWlZKbIdMa69l+kNHbhryP/hrKpiKGZ6U2Vag3QwC7AqZy1fi3MGcigEbI
         t0fCHrc5s8Lt7u5eXxkM9lzDoLtXQYENY7EfBYux9GNF7LBNFDi0str9WEpPMUsMguPH
         /rNKBziJu6ZKH1yUnnrKSUSA63taeOCazwgZZHn9ao4MAkMTkA2GDwzpncHqapgp99Tj
         4wQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UcZGqfJ2y8Uof5pvrkz6dCiWNSY/302W2rG0I/QwDiY=;
        b=kXpm2wnOxAuV2TSOM2NHeOeIsXHg4imR4ubzq5b1keCtBFt8onFfcRJtA7+pOqZNtB
         EZXjvCn8cRFoLXm0YPlsbYDOxtLQX9MxZqZtdvFVFtLr73S9/F7xe+O+Uhr9GRSgknpz
         3BbmQSLHtpaUUcUxP9M3Ki4dWw6LM+SfXFvybJF93CKFm8PmRxD+7W++UDKpArs7ybkn
         B8yKh+mXySajx7w4RYpTwqLjRYCQcUObB1oz111gEIL+VfgmKyW61hoV+R0Eg8xcPITI
         xuEEci0J5SdmsQomObwVGOUd0sDrNbMEsgtEyVGDohYWo4qkT2DQEj2bR6KD5belLPea
         JXew==
X-Gm-Message-State: AGi0PuYp5vStHMjp4dmQr48LvPM1m55QXd0i4SiSExthZvV/x+vFHMl3
	CDH9Lky1jW6a3iXN5BOA+yk=
X-Google-Smtp-Source: APiQypLsOo5td9yC0CCi3JDafz/ozDNEeo2nKv7ts7RUxZP8uBEYL/41Iq7MlXV2pg1MbipXmvzlbg==
X-Received: by 2002:a63:6546:: with SMTP id z67mr7567906pgb.10.1588783048994;
        Wed, 06 May 2020 09:37:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7790:: with SMTP id s138ls1989575pfc.11.gmail; Wed, 06
 May 2020 09:37:28 -0700 (PDT)
X-Received: by 2002:a63:c241:: with SMTP id l1mr7862668pgg.42.1588783048505;
        Wed, 06 May 2020 09:37:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588783048; cv=none;
        d=google.com; s=arc-20160816;
        b=DADeh3e2yObahWqJcF3vgoTLiPpXIZoExGtJGqhDkDaBXR1bRik5LGXgxjzc0WqkTA
         5ua9uGHTAITMBw0TLtV+89AJDQPY8+btWUhitsVWELaBMoQy9lVD5ckTYiH8ibTZUc16
         TioIpFUR+5YseWRbgqEMN/Dyde1WKqs0PGKcbT7Q0ss+7Y+C6ERPRxhRMiaios5IVBPG
         iq5YExehJYKOgMzJvaZMmHWk/YzctHlUHFwlQ7AxiN+/zImQ+Kjt7pUbHu6Zu8VqMUNq
         5Nyj1iyPTUWA0+8HPIptdCQb1eGXKLuKz0CvB5IE0WOL5fw4KfyQ4b34XLkhwQxfvit1
         tFFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ysv40NaU9cEolxDMZqydkRSPfnO+SbJ9aiL7qpGqadk=;
        b=etoPk55Ifdag+Vlrvmxmaw5AHjzaVZ5GO0kiqGqNiAbA/QcACLrKtY2l6iTPbAvYTP
         rDQ2H4YV+yUMKm1WkIeR8VDtfux4QKwfXJLbbhZFhdvndiCUXFseZJuFAJhC3xKETMxX
         Us8z5BQ1xe64c8nSgeEa4U94iCgdF1xn97Za7iznLEKD81ANYNYUWv6ps4Hh/MWx+c8X
         ZuVCKYXAj1JGWBQxYNRZMsFwB+/p29foPRHM2MBI1n0Gk8sxE3siQjfXWYxXbBRYWug7
         CKJxxUAdDOm3twZFfKQXzM0uEahyFBRayIaFidTsfEdOtQxr7jb8LoKSworZXEw8QrR2
         hlbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pa20bAfV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l10si121440pgh.3.2020.05.06.09.37.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 09:37:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s20so707551plp.6
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 09:37:28 -0700 (PDT)
X-Received: by 2002:a17:90a:8c85:: with SMTP id b5mr10152416pjo.187.1588783047869;
 Wed, 06 May 2020 09:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com> <20200506043028.GA663805@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200506043028.GA663805@ubuntu-s3-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 May 2020 09:37:16 -0700
Message-ID: <CAKwvOd=c6gzpUsRgh-XmKEh0xHkZUWfXNW52EpqfrbH+XhH5fQ@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Nathan Chancellor <natechancellor@gmail.com>, Ilie Halip <ilie.halip@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pa20bAfV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Tue, May 5, 2020 at 9:30 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 05, 2020 at 10:44:22AM -0700, Nick Desaulniers wrote:
> > This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
> > or Clang+allyesconfig.
>
> For what it's worth, I don't see this with allyesconfig.

Oops, ok, I'll drop that from the commit message in v2.  I was testing
with the former.

>
> > Keep the masking operation to appease sparse (`make C=1`), add back the
> > cast in order to properly select the proper 8b register alias.
> >
> >  [Nick: reworded]
> >
> > Cc: stable@vger.kernel.org
>
> The offending commit was added in 5.7-rc1; we shouldn't need to
> Cc stable since this should be picked up as an -rc fix.

Got it, will drop in v2.

>
> > Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/961
> > Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> > Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> > Suggested-by: Ilie Halip <ilie.halip@gmail.com>
>
> Not to split hairs but this is Ilie's diff, he should probably be the
> author with Sedat's Reported-by/Tested-by.
>
> https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-608239458

Ooh, you're right. Sorry about that Ilie.  I'm usually pretty pedantic
about getting that right; my mistake.  I'll fix that in v2.  As Sedat
noted, the issue tracker has been a little quiet on this issue, but
I'll note that there are extraordinary circumstances going on in the
world these days (COVID) so delays should be anticipated.

Ilie, may I put your authorship and signed off by tag on the V2?

>
> But eh, it's all a team effort plus that can only happen with Ilie's
> explicit consent for a Signed-off-by.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dc6gzpUsRgh-XmKEh0xHkZUWfXNW52EpqfrbH%2BXhH5fQ%40mail.gmail.com.
