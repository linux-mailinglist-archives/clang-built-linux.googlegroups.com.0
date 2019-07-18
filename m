Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBBOMYPUQKGQE6F76BZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D4F6D689
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 23:35:03 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id f28sf25682589qtg.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 14:35:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563485702; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ckf+nXTBQD4Lp/RSmHMlHHufoBdbnf5IvQjpoyrbCz/J/Tg4lNMJETwhsluX0Fld2h
         BLsN2f9qKSIkzxjtbVWBBEsw5BRKzP5sqHpD9mTRn7j+qNl1GlIHOo9Oc2OD92NYvs0K
         Nqv9B5KGcAPO5WWPrDW//KzcEiWfKfrYNvuTf6S0GIEQPDad9jO3IwVorCaA8OQk/7DL
         9J8MLY3gFuWDufsjQxWvt84faPR0lz7R7RZWOLsACjN45SKeGAwhTLvq2lrW3a/POCPN
         9HqlY7XslwhOLNMnBpd6kDeVGIEq+V0NqQXz16VtM3ftX2pi5/gGMl3KwSXVQW8TzOLW
         ajqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=xDAGaR7wG6V7QPOTJgjstNbIVYx6wVK7ncx+klA/6Is=;
        b=El4pinjavcubjelpoLpN6uCT1R7NrARrGVPyq2wcyDAUKGUQ2yua75DH10P7SPXrWv
         l6Yw61V8ydgqz+7473/yCFS49nl6NSv2pX+Ht7uhebf8xtXLFZr+jdZf78mAyyfRMQtP
         pP9aetujsLu61y3bDbk7f2fKFXgXGoKnAo7NwJRz1QfRUD8yNsNrIJ8LscHBRJfy7PPE
         Z5+Ysv2ZRTJktcnDywL/mniE2FqJwanupFXYgkHAYDOnRbm7Pmxwqnn7dOa937eIoTjv
         7EDYwNAP4CfIktnNWnbK4+jKWrMEu5MRYG1ilK0w/ZyouZ2vTT5dFg0bs9xq7/fqt4bv
         IO+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xDAGaR7wG6V7QPOTJgjstNbIVYx6wVK7ncx+klA/6Is=;
        b=GSVG1yYtK9tZkzZv++w2hU1BN69U6L7YyOjhTdkIJ0GB0Jxg+3WnT1glXn4cixfidF
         UpbpU+wxk7WFWpIqNXwwjtLF75n9kZ7dZtHX6d20/RCQkjHYRvBCEkIsdKlR0usz551N
         oKofh8xeKFLOj4MKj5AgZrI2RQ+F7qJZ02rqso5kVireJ2z0nbYZo2HjwJ8Ni2Yeyrfm
         ywYb6G7Ut517JusspCSFGY7f9JtjHsHwhFx+UQPe7ljK2XOqtuVAlwvQEUz/fdj3kGZ0
         E40fx9+tFNPUJyqqtLGEBqw5xcPTAzzmT2NcyZkun0rZKLCGYJInb1GE/4PVSZxz8aM7
         b3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xDAGaR7wG6V7QPOTJgjstNbIVYx6wVK7ncx+klA/6Is=;
        b=SJddy7seDaJ4ionDWXT1HWZ/kZJstGDH/yEJkXD5T0ue2cum5IzSCYuP+Y0vQOGiRr
         3z2iqe6w7USm7aVpryeLzTGOd65j9qXKpjGX3m7yjL8/5rVx1yJvEzp+87C/ms2sGylI
         m17OZZD7HsthdaM88JlOhmYVQ7UluHkUKgdUdDQiRkjFW9iHgwAuF/IgV4BDbv6/RmNB
         6czXSdFS9+/dNDcuFPFtundLcnN00M2rBFEYAAaYLMbG0i5WtYO/07I5ZWBesYTG0WJo
         khlXxerHNQlWBlXIO+9d/o/DwYYVlzAybI79BrEY2xHrRq1hQgnZ7jBqH0ahKvdrDz2Y
         IUEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVW8msojZsX1U88G1uX0/DenckOH8NkP0/BUS87mKoG8bPXm5Qn
	toTEijYfQi599GLTvXdLHME=
X-Google-Smtp-Source: APXvYqxsPdD8ZhxfasWEoW+JiiJy7qEb3G7j4oqsjUSUyWkymRqvjLnHhqxyiqxSACa95N8ptkCkXg==
X-Received: by 2002:ac8:18fa:: with SMTP id o55mr34624946qtk.275.1563485701905;
        Thu, 18 Jul 2019 14:35:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bf42:: with SMTP id p63ls9024939qkf.14.gmail; Thu, 18
 Jul 2019 14:35:01 -0700 (PDT)
X-Received: by 2002:a05:620a:15d3:: with SMTP id o19mr32683353qkm.213.1563485701629;
        Thu, 18 Jul 2019 14:35:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563485701; cv=none;
        d=google.com; s=arc-20160816;
        b=csOOOVvmykmNO8YfIcP8ipiJauQIrjQEs4IYd+pSoc/eJ0/9IfvxU3MESmThxtWqiy
         mppgDINroSd6T8yLJZYsVj0VP5ZhYOFa/MFtrtVbdb+kJ7cPeSNit1YVI4LgQiCHbzIY
         +N64oQIbn1tu5bmSRnfGLIQx5cMuTvgjI2amQjf2inEQ3Q3o7V83crMn1VBXxUpagkho
         89ZcaJttHcZPDXvna8y59SPx7GJswtnviL65fLUNHCDvMj2xOFamGPrUHgH7ULHxBTOi
         v9IgDgyCB7iHL9z9X0P5eIJpONBZO3W48fj0mwvYa4f3bpdpFRYjacCpJdEPhFFQvLS5
         R5wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=iYruTEvMthvxr10Zu7OjRdNgkkTEdsIjVkYLIY65N+o=;
        b=DYazcVPQilHGaS9YEwfitsC0xKPJ5lPprjR5PFMRgXy8vu1+1hG+vBwm5LHgbOz3qu
         dR4WOQJk9cM+4yV0RzuS2epQsrj0Bi9gqcHGeBOP3mrDgB4p+wfEGIZGcLJXi/+7/Er2
         mB9gDfiLHUDhMAbgX/b6fvDMQsvoQrRdiWqsJcELE4BXWtdRo7cFVXYiL1fIpb7KAHP3
         2vdNs0zayIgNZgSDm3yagX4l6xRa0w4+UX607eVMRGLtY9H+7c3e2uqcLTqJUY0a6/NZ
         n3gu3FGpLrldl4IcAYxbRhhrNGhrQ/IAcFXdYoGnUE14GLPliC0sIfvtOGmz38d53Omp
         Pj/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id c188si1241498qkb.2.2019.07.18.14.35.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 14:35:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id z4so28866461qtc.3
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 14:35:01 -0700 (PDT)
X-Received: by 2002:ac8:f99:: with SMTP id b25mr27651367qtk.142.1563485701335;
 Thu, 18 Jul 2019 14:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190718135017.2493006-1-arnd@arndb.de> <CAKwvOd=HEjDA7pcsQvONoHgU2JH3xz+9MwHU0pXKathDRQx=nQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=HEjDA7pcsQvONoHgU2JH3xz+9MwHU0pXKathDRQx=nQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 18 Jul 2019 23:34:44 +0200
Message-ID: <CAK8P3a0s1E2==8k8qo-cJWgVOdHMicvj+VEN9axGo1cmNCu5Hg@mail.gmail.com>
Subject: Re: [PATCH] crypto: aegis: fix badly optimized clang output
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Ondrej Mosnacek <omosnacek@gmail.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Thu, Jul 18, 2019 at 11:17 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Thu, Jul 18, 2019 at 6:50 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > diff --git a/crypto/aegis.h b/crypto/aegis.h
> > index 41a3090cda8e..efed7251c49d 100644
> > --- a/crypto/aegis.h
> > +++ b/crypto/aegis.h
> > @@ -34,21 +34,21 @@ static const union aegis_block crypto_aegis_const[2] = {
> >         } },
> >  };
> >
> > -static void crypto_aegis_block_xor(union aegis_block *dst,
> > +static __always_inline void crypto_aegis_block_xor(union aegis_block *dst,
>
> `static inline` would be more concise and expand to the same
> attribute, IIRC.  Not sure if that's worth sending a v2. But for now,

I think I tried that first but it had no effect when CONFIG_OPTIMIZE_INLINING
is set, as the compiler can sometimes ignores a plain 'inline'. The version
I posted was needed to pass the randconfig tests.

> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
>
Thanks,

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0s1E2%3D%3D8k8qo-cJWgVOdHMicvj%2BVEN9axGo1cmNCu5Hg%40mail.gmail.com.
