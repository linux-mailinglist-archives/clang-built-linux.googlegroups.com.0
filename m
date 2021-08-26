Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS5OT6EQMGQERSMP3IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6963C3F8D7D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 20:02:52 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id y188-20020a1c7dc5000000b002e80e0b2f87sf4669462wmc.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 11:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630000972; cv=pass;
        d=google.com; s=arc-20160816;
        b=ar+ZVUbHmFgopHvJPIm/5ydfL7SWcFUoa8uoaCsk6PQKIjvJuxTEKOysHIT+Q6hkfG
         3/AZh+hj10CwdBIXdlkeg1JVmyat0xdrB6uSCEs+I1xdQSGSG2FkAv+lWUrH1+ifF1Ow
         dTartM70x5uhPg7ojW1VJYiUBB41D5kGcNZ7RAZ7W4lGDvyDNW4Uwdn1h3KtFvmv+roV
         dZDuF88Bil4gyZGWiVOKJWvLqtQstqa42/Onq45Ht5n0Y9fbh8JvhhznYW/10Py88rnk
         cA2MvSfpsDc9mSMdSacaxK/ES+HrYgXRU54UB3+9T2v6bIy62yok6XYesk5u/l2ILh4s
         oOCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+RD77QCHu4Llh5N2uJzn3auXcS2XJhZ/bSz3q4MGPUg=;
        b=VeGna/CwbfHTJzz73ORODVtSzFyzDiCi2Le+0f8XAjkf2gV2Y19E6TGOmaQc1WwhR3
         ox0muLDBcM1h0R627vNmBlyNGT/o+lt6TZ6fUYIf+hkAwWg2tcRwR1d4uch1PC3NwT+y
         Y/L/1rRazZu5v2xcpxyO9tH6rnvTbm0Vi1d8DTZsOSOGlT1TddxP2Wa0BoxxZ6xwuWwN
         F0DTbzVCICtEIm5KLxit22JvMs6xAuF5eybeERXfoFLjyRZnoXXt+PqMl9DNE7DZLeSO
         4YM3PaHp9EDKgro2pujC/g/c/lOVztSWlN5qrvIVEqLPgsu2H/GW3pvrboLrLsdBibgS
         4qiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B2FAnkUl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+RD77QCHu4Llh5N2uJzn3auXcS2XJhZ/bSz3q4MGPUg=;
        b=ESlCqLM/AUWARLVnggweuqQ6vA3RV+BGrp7DxXEn11O0LG6eG37O9OHWm9LGryIazf
         O/jiRF2vLft+8i3iOKguazc2JCQqeMUXAw+gaKkSpkr2xHqAR0MJyDXk3rWZn6IqwPhw
         6KIRhQkbCMeT2+jP1Le8DCFFbDC4Fikrlma03w52Apbzzrr+EJwIu2pVCj/YUhGcESlo
         SLQyl0Vsyia83Ly+nvmJ8ljQTl56gNBPhABMFO+kpORlRhFp1rZLRw6WWNRc5Ni6kG3K
         kKwPebhR2s53FdQLtejTn1VuScfKIc4x0ZFCB0lKRq10yot5VXboUmI+NpfQsadeHdeD
         npTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+RD77QCHu4Llh5N2uJzn3auXcS2XJhZ/bSz3q4MGPUg=;
        b=OodrJ3O9bWRMD0G4DnumG4BbWwLyySUYEb6lXuG99sKJ36nzoAk+ZmBNB2EZHRDOl5
         pg7ppg4mO5LvbAFchxMGnOTYJ5iIgw0a7sHOmLxs7j8RB4UlUaqfv9ATffmCZrB3AKAg
         te27ShSBVGM68O2CG5hm3wfpGVj3/AoKk2ouBu8Qwb4vuQl2GApELcDsGGYb0GzVSuyC
         +W1loTwzJr/MGnCyNTEMcLtDbTAJEujSUFThgzG+Kp65vdoW3K4kV1U3CBpDNwNS8yGo
         x5+B9ZP5WtX066kz+TI6lDLNdUjA6EjEYTy1StDssOBadFvqfyuyHlcIRQv7JbbqirP5
         88+w==
X-Gm-Message-State: AOAM532B/gY3rNvMDGriWQ8+KFc8jabbmsGVPgmEXilJRRZgvEa/LrWu
	WYFIhvXv0W0EiwqbhpoqLyI=
X-Google-Smtp-Source: ABdhPJyiWpPv/DGz3/cwubKeT+GKSTGhvCnKU8Af7zdKuP7lui9FsgPHoPWrcqBx7/a9e33PqgvibQ==
X-Received: by 2002:a05:600c:3384:: with SMTP id o4mr13187817wmp.12.1630000972106;
        Thu, 26 Aug 2021 11:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ef0d:: with SMTP id e13ls8456259wro.3.gmail; Thu, 26 Aug
 2021 11:02:51 -0700 (PDT)
X-Received: by 2002:adf:c390:: with SMTP id p16mr5823317wrf.105.1630000971257;
        Thu, 26 Aug 2021 11:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630000971; cv=none;
        d=google.com; s=arc-20160816;
        b=uX3MrN0vYwFf/E2b3AqgV7iacRV8LXgUgEdIgIPPFAHcReeoU1T5ZHWYti5x+5iD/L
         ZphxCYEtVSqp14JUk/htHlsdo/A3Gtt3oTpfNluutSFMcAFzCMRFm7hCPPFqqeMOq3L+
         SChLmaMYBVpUEWdzX1V9izZl8yqvwpR3qiIbKwCbjaEfWuIOJyqWvRMT8H+cYS09LpPY
         T5gc2eOFciZ2viq01yfXL0PrlCLL1xEUlqQAyML7YsVWgeemhzSloEVA0hsVCINdmR8L
         Azgp6p+7EVEJzRuEP8HR1IKAOyqpVkRsVfY7VJFt/kh/76LAbutsoT23ij/luu14tU8p
         K0Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qGw9uJmJ2z6MXuXBnDtwUutt+68P65RWStdJO514qas=;
        b=qTepAhnC+CT5ue72V4PQPjZyWg1V/7bKkpWl/jkvDEwAmRgK2YfoUjaWMl09emOxp5
         auVonPZ82fP3S+0e013YMROkka/4Fed8xzrA751f6agUxAM7opPyTcU8gJNvw+xg84Nf
         zPGFCG8iL850PDLcjJpWL96IO6QpgKniCELA/jJvQsG6cAFlkR7l2IfXlymM/Ss/mvOi
         YZd3HkbMvdQbrBurlaS4erbtuISwF82ODHILd2tW1PBNb6GnMNKDGyVo++xa+rqvOpdS
         7Oiybq1m4K+Ea7FaenFBG6rjHUMXPdNdkbX8cknI2xONeIUUCH4t0zxHfR4ZwgfHLkNR
         TuYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B2FAnkUl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id b18si191998wrh.4.2021.08.26.11.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 11:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id y34so8633435lfa.8
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 11:02:51 -0700 (PDT)
X-Received: by 2002:a05:6512:3a84:: with SMTP id q4mr3670002lfu.543.1630000970649;
 Thu, 26 Aug 2021 11:02:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org>
 <20210822075122.864511-20-keescook@chromium.org> <CAKwvOdnrO+oagJEiBMmoHrhTJKSRwzb0DK=R_QdVjhiNzb34dg@mail.gmail.com>
 <202108251950.61F7A4CD@keescook>
In-Reply-To: <202108251950.61F7A4CD@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Aug 2021 11:02:39 -0700
Message-ID: <CAKwvOdndEYeQ1MFPPEvn=UWv00o6of1OT3UQ-woqyO-viDkqVw@mail.gmail.com>
Subject: Re: [PATCH for-next 19/25] fortify: Allow strlen() and strnlen() to
 pass compile-time known lengths
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Daniel Micay <danielmicay@gmail.com>, Francis Laniel <laniel_francis@privacyrequired.com>, 
	Bart Van Assche <bvanassche@acm.org>, David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B2FAnkUl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Wed, Aug 25, 2021 at 7:56 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 25, 2021 at 03:05:56PM -0700, Nick Desaulniers wrote:
> > On Sun, Aug 22, 2021 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> > > index a3cb1d9aacce..e232a63fd826 100644
> > > --- a/include/linux/fortify-string.h
> > > +++ b/include/linux/fortify-string.h
> > > @@ -10,6 +10,18 @@ void __read_overflow(void) __compiletime_error("detected read beyond size of obj
> > >  void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
> > >  void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
> > >
> > > +#define __compiletime_strlen(p)        ({              \
> > > +       size_t ret = (size_t)-1;                        \
> > > +       size_t p_size = __builtin_object_size(p, 1);    \
> > > +       if (p_size != (size_t)-1) {                     \
> > > +               size_t p_len = p_size - 1;              \
> > > +               if (__builtin_constant_p(p[p_len]) &&   \
> > > +                   p[p_len] == '\0')                   \
> > > +                       ret = __builtin_strlen(p);      \
> > > +       }                                               \
> > > +       ret;                                            \
> > > +})
> >
> > Can this be a `static inline` function that accepts a `const char *`
> > and returns a `size_t` rather than a statement expression?
>
> No because both __builtin_object_size() and __builtin_strlen() may not
> work. See:
> https://lore.kernel.org/lkml/20210818060533.3569517-64-keescook@chromium.org/

Ah right, then consider adding a comment to encourage others not to
rewrite it as such.

>
> Regardless, it will always collapse to a const value of either -1 or
> the length of the string.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdndEYeQ1MFPPEvn%3DUWv00o6of1OT3UQ-woqyO-viDkqVw%40mail.gmail.com.
