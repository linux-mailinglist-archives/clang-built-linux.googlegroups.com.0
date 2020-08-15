Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2ED3X4QKGQEH24GBKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id DE65524505F
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 04:01:13 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id l18sf7157999qvq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 19:01:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597456872; cv=pass;
        d=google.com; s=arc-20160816;
        b=FZpxNk60tarD40S/Qoex7Op4FZ/bVaa4YbQFAhN6I7QX8rarExBUp7mEYRQerZwuoY
         NMN0Ufui45tDuIMaNPe1WVzXYUMTwOXu0EEm2HpSV1MwieNcmTHkIYnDUZc0BKhA3RLL
         L0jrlZNC4DKqPefYkoqd/XdHg82Gdz4tVUiQFEiIIF+jVexWze66lvqdyLwmPKIgPTSQ
         tlHJz37STLDq1E4dhDNMAUx7Qkm9y68SUb+hbS0+nb1r6lRJZCwG6Jr381ywwqqX2DKb
         gaCZ8X3u8fHeGz9NbgHcOZtQVfgilDMtfn9qDw178fcrA6sp4KAPJStdTvkftLBdy2OQ
         V4iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9gbqKcl1NbQb7TLrpQ0w78vx1LxamECz2cB5Na7aYfE=;
        b=HdMKASTW0ADIBvywv3Sdw2M9bAputMxKjVi6dZ3Gk+eLmcQqcC/M2qTh7NMWeOFcrR
         Rtsu4/70WHrUhPE29dO5YU2d5fIHDYokMM9HKISahjL/QZrMwgQ1bZ9auLTwOtFdYKUW
         C5OpE3AOkgyJYaeLc1/LjV2MZHxrfM2MJFo1wfdYqJTO+ro5zAtevSGk+laVIf/uglMh
         6TOxHo+TIZzbFIvRhgI/oJhPI4eCCEkX11rRS49fTxwtEQRlNmraGdf9GR81DjpGfkZ5
         rhLkM8M2QetgyqhlOxt6r9VOX2By6uQsayfrzbMFbpMRbMxmxEIta/kF2MXp5XSy8YRC
         eOxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b5j/+d/S";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9gbqKcl1NbQb7TLrpQ0w78vx1LxamECz2cB5Na7aYfE=;
        b=YOlrjEDJAPk0sOG0AEYMJMwdParVM75521wQ/E7Nl5uu7OD46VMu3x/SmxIWbg+fol
         vK4jEik+2ux3ue4a/i3JUGaiTHhYwBqos/HR2F+7+ZqK2bVJLHexDtkjpKQb1P0O2meV
         JCqx73Uiay6dDECnbHJ68PbOeOeiG2DuyL1hMDp1t3akK6OnLnlT7MXZCFjtYtU9jX2V
         gkdgV/CFxZKeND6SoAfBUTwdWg8nojqpV0iRNUGWttsgzJDZlvoH6kIV8oBtonzG8U3Y
         Xn9rL8QcFK/gcX91+YRO7x3jKPYiR2VKZFvlydwt4PXSYjStFul3oo+htb802qyHe9Co
         No6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9gbqKcl1NbQb7TLrpQ0w78vx1LxamECz2cB5Na7aYfE=;
        b=IAIw+lolKozscosHg9xexeMvOuWV53gsGYJEjKQfpenq87DzTUpSaV62nXncbqW31x
         9RkSr+9pyj7rBfEgrWUUQVGY9nME8A8H9m1ApB8A2iFkuBlSSFPccoXICkUVzjEWRXhY
         oG2PVD8CGrPg9J/7mqs1DLVluYQ2FWWhBwN3j4d6OlU0ae4So6vUo2dojIvB6BsTv1BN
         Oh2UjmUli21VTGFH3WEz7riHv3JD6gsG2bHhB58BbrXWcRaO2qju3JUsE2xdMT81aAV2
         LOtFrVbdFE7wzsuNCXW847/ttehzH/OB/oOwtIVqTM5Xcntvn/Tq/upKkysGZdS/LIVt
         4Zog==
X-Gm-Message-State: AOAM5318qI00OWIlnqmXwZhh8cDO430QEsOZ6Tzy+PjrQiegB6ksqkgW
	hzw5R+UPGFB0DOQ1ekgRQsE=
X-Google-Smtp-Source: ABdhPJwLk5adTsjUR9SjaxrlBsMW3i2rjn1Z538JsyIWMmAZaYP+exO18HyGNwj9kX8f/1Emk/C7VA==
X-Received: by 2002:ac8:6e9b:: with SMTP id c27mr4706607qtv.189.1597456872577;
        Fri, 14 Aug 2020 19:01:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls4279210qta.3.gmail; Fri, 14 Aug
 2020 19:01:12 -0700 (PDT)
X-Received: by 2002:ac8:3a65:: with SMTP id w92mr4751912qte.184.1597456872177;
        Fri, 14 Aug 2020 19:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597456872; cv=none;
        d=google.com; s=arc-20160816;
        b=aRDzmjzrCXKtisXMm7gJ4tg9Khw+9n17u1PYAc6ShLvkBuGGCTLjBOuEcvei2MbAG2
         7I3ikEJEfie1SeDso1AfigIdG5xdfiv7bATKpHD2or+tPaYkG4MDGJ+cJB7s3WZlVxAs
         zQTygyjB9BcW+5az7jn4RYWxMEasbzURbmUMGGJn7Bkbfa2YTWevYWbSN0mNhiPAJkPj
         tQ46vE6H7eekDP6dHhvaARZaAZccJqzr6XC9CpsEKdekkezUwsGtIwzVpQ4qa5GiBQnl
         SDlXsdhpTJZMU9Kt+8qvFpg3ZeUzsIejb9e4P/YuERPhIn2ZPHu9P/JQT5TLSLln7A9I
         PRgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jI8e9DtJD9Qcgx42soPG9jHlS2DsiPdV0uXxPDuNotg=;
        b=HeGTxpMIIHaq/CXpxbuOlAa3BBWYgKs2+eyJwOpFT4Xowah8crJQYUsWV80eASEESH
         oXydxD03oClzvUh7LsuRjsKSOIdUt3TxFrATL3PuHwxm185MSOMdgXDrkvpV+MZkBrut
         8gdcLCAVxJcoUXNf1XSBBsHmWrC8/29taYT5iyNTUGRUGjQur7yicb7vooBnfBCjgZpW
         DGOsACVQ0XnQ3L19YbjOJVZm2FLsC+BYEmOvBKZL1a8kG8+dZskPvvDb8LUXGwjOXy7Y
         6wTK4H+BC108sH/4EBgBXtDVfnDb0eVNO+PG5mHHA+cAIRSJEtFjAqkqVB1QLeeOOr08
         T8Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="b5j/+d/S";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id n26si580759qkg.5.2020.08.14.19.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 19:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id mt12so5220923pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 19:01:12 -0700 (PDT)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr4383536pjp.32.1597456871114;
 Fri, 14 Aug 2020 19:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200815002417.1512973-1-ndesaulniers@google.com> <20200815013310.GA99152@rani.riverdale.lan>
In-Reply-To: <20200815013310.GA99152@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Aug 2020 19:00:59 -0700
Message-ID: <CAKwvOdkcq4TeFQ_Cw39DyA+N6rhyx2q9jpvN+Cv9n7x+MwijmA@mail.gmail.com>
Subject: Re: [PATCH] lib/string.c: implement stpcpy
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Joe Perches <joe@perches.com>, 
	Tony Luck <tony.luck@intel.com>, Yury Norov <yury.norov@gmail.com>, 
	Daniel Axtens <dja@axtens.net>, Dan Williams <dan.j.williams@intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="b5j/+d/S";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Fri, Aug 14, 2020 at 6:33 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Fri, Aug 14, 2020 at 05:24:15PM -0700, Nick Desaulniers wrote:
> > +#ifndef __HAVE_ARCH_STPCPY
> > +/**
> > + * stpcpy - copy a string from src to dest returning a pointer to the new end
> > + *          of dest, including src's NULL terminator. May overrun dest.
> > + * @dest: pointer to end of string being copied into. Must be large enough
> > + *        to receive copy.
> > + * @src: pointer to the beginning of string being copied from. Must not overlap
> > + *       dest.
> > + *
> > + * stpcpy differs from strcpy in two key ways:
> > + * 1. inputs must not overlap.
> > + * 2. return value is the new NULL terminated character. (for strcpy, the
> > + *    return value is a pointer to src.
> > + */
> > +#undef stpcpy
> > +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
> > +{
> > +     while ((*dest++ = *src++) != '\0')
> > +             /* nothing */;
> > +     return dest;
> > +}
> > +#endif
> > +
>
> Won't this return a pointer that's one _past_ the terminating NUL? I
> think you need the increments to be inside the loop body, rather than as
> part of the condition.

Yep, looks like I had a bug in my test program that masked this.
Thanks for triple checking.

>
> Nit: NUL is more correct than NULL to refer to the string terminator.

TIL.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcq4TeFQ_Cw39DyA%2BN6rhyx2q9jpvN%2BCv9n7x%2BMwijmA%40mail.gmail.com.
