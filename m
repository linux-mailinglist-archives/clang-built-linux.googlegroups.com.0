Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2FTSX7AKGQEJ4LSWZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 7095E2C8F5D
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 21:45:29 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id n203sf7352343oif.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:45:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606769128; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZWHmqV3jZGqtVfp9FYTfs2xJkeGw8UFBMceNu3OUm8Xwi7doEtgCm/Q4WKmHuqoJR
         h28QsT5bEet4bgHA3uMWN2fqgkzUfM4igh4w8IRDLwMNy0wD8bETyDPLMA2lAVDX3JgX
         oRxPPEUvjD137pPLD48Iamiyix0nP7jqundkdcXdGtuKo+OWFlW/3jfqUMfHtcmGFYtQ
         Al3Yvcz8YN/v/sqYIz38VvyKSgE7hgTjb85uuzaNDAznw+TP2uLqAWsj52YphLtzTS7O
         UET5AYQSixGanyRlKrBxUl1OlOg8xwlkW7j4PxkeZUXR0peaMShMUcM3cQijjkkVC8BX
         5sAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LSmHAjcFNPch0wXfwRuyQiKx2EnIVGt6gR+3iJG1Eis=;
        b=Xan8rPIwqRMB0WkbrB4CQ1XxL31ffv241pqtw+za99+wt87+pYrUSp13H3BNGrRSoI
         mhQjkJ9N6Qqv2e73mRZ84SHZ798YgxfeGvx6Asal45viuM7mkqkuSFmC3+V/SdH/4X1O
         UGUa9j5dgtuoOaEKiOPWgxbJRqNFG1K/fC/kZ35NGyQ6xAKgrx9mloP7E8Wv/AnUuqsW
         0hK4XXdJdisqi0Rg2c1tya+kQKFKt+Um788R20NLgN/HcAH/ALcxpGX2lZrRUQrQUI3o
         Xs7AOEkrxQ1p7YIBwPQWD9FsgROSuDCwd9ZP5ANT4MK5yLCChG9mJRQnhnvPJ+reuDO5
         VTtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cpaTdK87;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSmHAjcFNPch0wXfwRuyQiKx2EnIVGt6gR+3iJG1Eis=;
        b=n6D1dCRCn0TIZS8abb3p0pzxgX5pTJix03EyW36XbSKKxuy//bqbg6uGc5hszGRfh7
         g5tMADT1WQ4r0U6vYoT7ZHuGfPyFcSf93C/VCxMWMkfvVbNYJvCQQKLcB6ZjisgL0u5i
         rhyvCBulJ7SFryo+8H83jKVF3erzTdpPx+JgwXN+J0n4RKG2wRnpVEVEBWgnG7DvAIkg
         mVEgDnCm3wd/oKs7ztkKdmartfrZXQKNwQGoiDSp+CjqOME65Iwb5VUez5Ii77Jf8OxC
         MFOYUXQFyYrSSzPIC+y+AqMdJpMwK/Z7fkVBzcOJWaiDH9mxuu9GtDhBlIVoH3MWbs/O
         59cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSmHAjcFNPch0wXfwRuyQiKx2EnIVGt6gR+3iJG1Eis=;
        b=X8ftHIvnFz4ENvT+dwUKaIoyXXgwnGGBTBn8JN/MRJedPeNz+OU6D8TWmW38TMMvVh
         UT7oLv8Abc+rhsKi7VWT6aLxsEWhN5gQQEwxwgqZh2Sa8JrEXAFuXAKe/5459b2kej16
         uGh3o2/SU1CcGNsszW06H5bd8OCoXPyt1dJ1QTyEGLAelWvOxVDhEnZScch72NEn9kdd
         00zWKzFnNlon75GMCg7ehvd45Yf0ywVA5lpyqWDwWUTZRBk8bVU/Pa4XZKs7ies5G+LU
         kLFjumfV14VsLdjb6NA3dK1GvCQam6145Q8K7qZl6Cw2B2swPuEWYqyoceQw4411LyYS
         trxQ==
X-Gm-Message-State: AOAM532zrK4fs9i+Ttd9zuknCBrHNIqq5IgtCSP8nG/mn0c8SezkqRMX
	kzG0yLre9jak+ph6SGXAQaE=
X-Google-Smtp-Source: ABdhPJxOoSv2KyqZ/npYKnL2asqh2Vd66IWaBbSA+E3NVQyZj1Xpv302NMLG849HJM5P5w6Chn5Blg==
X-Received: by 2002:a9d:1a9:: with SMTP id e38mr18591044ote.240.1606769128399;
        Mon, 30 Nov 2020 12:45:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ac3:: with SMTP id m3ls3369036otn.2.gmail; Mon, 30 Nov
 2020 12:45:27 -0800 (PST)
X-Received: by 2002:a9d:7ac8:: with SMTP id m8mr9916119otn.86.1606769127761;
        Mon, 30 Nov 2020 12:45:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606769127; cv=none;
        d=google.com; s=arc-20160816;
        b=woZSbwxG8av5JJFU5HqkTItL6E0aP5f6OOgr19Of7Q9tzZw1F38bvELcOiiJItpK90
         o2Y3s7Ur/XHbU3tjQt1Yw9dPi3HqJuCwIYEsyKw2PLEQh0FumWHulcs693Xj/ubE4RJL
         gfL3Ai4QrGl1TBpTmBIZPoeE7NW337vEKnBCVVFWvXxdOAQgbVDznv580OiaUk51LwQ5
         NtWU7Kse1SIM96NPwWIiJXCQ9LGbioymxiAMMMbd5re5GRJYZewtacvNqFqHCw9Opme2
         9kBIMsEraZRcWW6FInmY6PiGay18Z3RyArig6ErsEdUhn1ctpnpAeTgrTBMUYNFClX0T
         wXtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xHk+vscpe9u8SLq69FjicFeg9t4MWKyCiDt4jUtaF7o=;
        b=K7gma0UnixJjbLEiHvJyCsg3oRilRDo9p2v7qQmmy+92AYd4bYItcbrBkFMGs/KM+p
         PJWROFS9Oe92LFZ7dGJTE6rqHqvqkVJZQeYl5fDaP9PrUTlW7XictCDsGrJtNz65+MkZ
         GDI9AxtAkqTC2pS+skIn5wqvO0Pxggdbb63e5Dwgh87e0WzRNnxB3clLhivkeBjKS4z+
         fwy4N+rwrzOqo+PiPqHCN2jc17YsZYo9N5f0QxNVBKI40k8X9uw9+lQYR3y+Q6zg11dx
         wqw2PHe/a9+zuAx5+uHVLwHcl830Xsuhopybpgzz0BEqL5esj5Ir11gYsT/hvEl7z67+
         gj5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cpaTdK87;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id b4si1054733ots.4.2020.11.30.12.45.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 12:45:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id iq13so330129pjb.3
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 12:45:27 -0800 (PST)
X-Received: by 2002:a17:902:221:b029:d8:f938:b112 with SMTP id
 30-20020a1709020221b02900d8f938b112mr20683673plc.10.1606769126862; Mon, 30
 Nov 2020 12:45:26 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com>
 <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com>
In-Reply-To: <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 12:45:15 -0800
Message-ID: <CAKwvOdmPeOEA4dfODCKLE4A_M-SF5RBVFEf-NuiTkUTXAbh-5w@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cpaTdK87;       spf=pass
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

On Mon, Nov 30, 2020 at 10:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Nov 4, 2020 at 9:53 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > way that's forward compatible with existing configs, and makes adding
> > future versions more straightforward.
> >
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile          | 14 ++++++++------
> >  lib/Kconfig.debug | 19 +++++++++++++++----
> >  2 files changed, 23 insertions(+), 10 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 75b1a3dcbf30..e23786a4c1c7 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -826,12 +826,14 @@ else
> >  DEBUG_CFLAGS   += -g
> >  endif
> >
> > -ifndef LLVM_IAS
> > -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > -endif
> > -
> > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > -DEBUG_CFLAGS   += -gdwarf-4
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> > +DEBUG_CFLAGS   += $(dwarf-aflag)
>
> This changes the behavior.
>
> For the Dwarf-2 case,
>
> Previously, -gdwarf-2 was passed to $(CC),
> so the debug info was generated by gcc.
>
> Now, -Wa,-gdwarf-2 is passed to $(CC).
> -gdwarf-2 is handled by GNU as.
> So, the source info points to /tmp/<hash>.s
> instead of the original .c file.
>
>
>
> Handling the Dwarf capability is very complicated.
>
> Are you still working for v3?

Yes, I plan to revisit the series based on all of the feedback thus
far.  Lately I'm focused on enabling LLVM_IAS=1 for Android; but I
would like to see this land so that the Linux kernel may provide
coverage and feedback to the toolchain developers for DWARF v5 (as
well as reduced binary image sizes).  Maybe later this week I'll have
time to revisit.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPeOEA4dfODCKLE4A_M-SF5RBVFEf-NuiTkUTXAbh-5w%40mail.gmail.com.
