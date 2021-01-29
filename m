Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF7J2GAAMGQEVDAUPEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id B64BF308E9D
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:48:24 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id 42sf5682244plb.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:48:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611953303; cv=pass;
        d=google.com; s=arc-20160816;
        b=jP//PJ9bY370p2NJ+EAAm3O7h6PmDIFaoXVSudTPOr2+gMNaRjssepathiCdPe+aeB
         r8H0Y2d4h/7vrQtoBd+e/O5JKVfpd2R8+SmApSxdKaVI5SxmrTjk3BVytit6KD0Ab7c7
         lc5+xdUMV2sTX3kEgDhkGlqcfSIripHE0AMo4HfbJ1eHkJjySbpgzgRwmaXGMUkMGVpr
         xBDnl1FRy6DkwqGlvLG846fe+ll7dV/2vNDK1APZHkl7jxJoLpyPmbpqBTp7NOCwSvlp
         GaFKNvCNGd/fUw2e8ii7XWvmALItZ7aNfnOhfJPiZ9BpiR6r1mihp3ZDwb2ztwJWuQXZ
         OQJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/CdNwphnEBAFk4ujfmjbtIpnfugH92k4OK8ymTdkXvI=;
        b=hU5YMQKQO/sYNELlvXWp0pJ3X8ifkF3NW52fCJQAiwe6gkep4qTbDNduhMPHCa9Hxg
         uUCubLtdOaQPlq8Fh0OgJro86WDJnoi6ZiFd5Xn9bf7v7Gc6emZfqDbmA8+gbdGTCVNV
         FqQ6u69Hv/0mpshGD9oGVY9Z3ExshN8yTAp59xEwBScwGm1gO1v4x22BWZ6dhCb7ARpW
         G1KH4E/rah+vZvmXoDAqGEDRQC7B1U/5N32I6MK44vC97G8ZcIjP/HhRsZ7nQKr4FHN8
         BSh449WefpyAzMEZOrdkaTTmbTFZWZq0ms7nbrkwFBxN6/vhvjWUe0JXH9HdV5op2vqy
         cy5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FWGTJwlE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/CdNwphnEBAFk4ujfmjbtIpnfugH92k4OK8ymTdkXvI=;
        b=Elh8TEV5RY/UAjKj/0zxkNKOHJUy1OG7i44Itk6HftAmOk7MWZpp8DnrSzY9CZFqOo
         XC5AZg/xJG3TiaZQWcIKElz0phw3+oajpcd5qpGOyPF4ZQAgyzMjggqlHtEPoL/bbH0V
         QoyOlmL17MHI+PMfN0dfAYPJaK30kdoL7PhdMzJ8U5kzJ6n+12QNWI2Pf2kn5XnMk5Kz
         TZkCz7v8pbmgsaMkRNhMW5sYX8oiU8bQ4X4KDf1h/31PrgrJPq82X8XhFwZYBBaCKfda
         UY3UUVjrwwTFteBzV8/iXP7ZvwTHGotLPLUpPwkdq6GxAcAMmKFemzNOq57fAlMHFOJ/
         GaXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/CdNwphnEBAFk4ujfmjbtIpnfugH92k4OK8ymTdkXvI=;
        b=HoXdpu71jXjmtaRs68DH8K9quiLvdySbGyZf1JCmparnVwfm39nOsMQY3TtElVkgEl
         DwZE3lLEsCP9F2C6ZDMCaMXIfdYJpc56tPaK1R4ZHqOl0lW3NjmppYJVXGv+lLNCop8e
         QtHIDGrhx5dQ/uH6YyZ2l3gB6UYNbx/0e2BmVOBYPMFG+xW6O8JIVBOnIZyI3U+sOJ5i
         T5hXxXXHoX91Y4MxmMBFyRJEdyg9IyTyp9VdRqx/qbK/hpyv6wwcK++eOJz5SuKtWoIi
         7VW0Xm0zCsJYeU6JiIWFoNSs68Eue28UTj++G512BKTDYBI1IX30CClIQt5izNvhmzGF
         FcEQ==
X-Gm-Message-State: AOAM530lfLhD0oSfxI5Wk3Mjgx+gpjQEM2yeeYpW8zyyqz4Xfr55wc9Y
	JRGMQggKyFvBaIz+/8se8lA=
X-Google-Smtp-Source: ABdhPJwE0OYPNxRyUZ0uPwwxg3UXRowRi4nkmFxq5DzdG8ND+y4VaiccPAwDT2NhU/So7AHpl07EwQ==
X-Received: by 2002:a17:902:b285:b029:de:a0a3:f3b9 with SMTP id u5-20020a170902b285b02900dea0a3f3b9mr6032966plr.34.1611953303427;
        Fri, 29 Jan 2021 12:48:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c406:: with SMTP id k6ls4902449plk.11.gmail; Fri, 29
 Jan 2021 12:48:22 -0800 (PST)
X-Received: by 2002:a17:90b:1483:: with SMTP id js3mr6260853pjb.121.1611953302888;
        Fri, 29 Jan 2021 12:48:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611953302; cv=none;
        d=google.com; s=arc-20160816;
        b=MenjKmXtHqACpW24SqZDNkloVUbYeSqWfvNZ6Cu3qwP4RxRD8603IAhuHnndTrWe6/
         ilfG2dqO9wcHRVXqYihgrjB2ouXPMlX2r6LVcYdRfbQxOtCdj6TlgcQbqdadh+6D5B0J
         DQCmPOJP39QWcUKCRt4p/tA7Vr6juwgZO+JNbQww3Cut3InENUqk+x51fmwlwvdraqUK
         pEvlvvBnhARjT0vpEtK29HpR0k0qum3gOjRAnmrHu5tG6sVM1So23cqkC+m4NPOJKYZw
         cToCIsOVc0VhlKFoMJ/FFO9ogYM2CXc8RVboDFTuuWY0un5WLHjb4SBCYASdJQm7MWlT
         Grbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WItJXETBomgA8w/2ueBIV7kTCBbgxOWkatab0l8rCFY=;
        b=A4YSbYWOWwrnL2eTtexSOIkkLfgvKSgOUOdVGGKkNdInUgVoNsTCVF4jWKlqkZTe8B
         +AfSqUsw3qtgF4OoDZ+/bvqb47xl47pqYfcX4DX1XNPq53JWtNcwDt/fiAU1Z0TwOoR+
         tFbHpOsOXXwxQE5xiqr0XGdlXIBrViD3IW7qXBFefYWGmzQj0+AUInRv8lQe7XSZryMG
         IukwaRJhLrS9d+H4r0YeaFxebVEdfNdVK8UbesEohpp5p+9o+DbYI9EqBnPFJvxymKMp
         VkeJONC7VDA3HI76nAO/0a84Nu1sArucxJKagXhRkjNO92ilNKOtG+exxJYEKcoQkowJ
         Hldg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FWGTJwlE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id f11si418868plo.4.2021.01.29.12.48.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:48:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id s24so6400478pjp.5
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 12:48:22 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr6157190pjn.25.1611953302456;
 Fri, 29 Jan 2021 12:48:22 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
In-Reply-To: <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 12:48:11 -0800
Message-ID: <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FWGTJwlE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > diff --git a/Makefile b/Makefile
> > index 20141cd9319e..bed8b3b180b8 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -832,8 +832,20 @@ endif
> >
> >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> >
> > +# If using clang without the integrated assembler, we need to explicitly tell
> > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > +# detect whether the version of GAS supports DWARF v5.
> > +ifdef CONFIG_CC_IS_CLANG
> > +ifneq ($(LLVM_IAS),1)
> > +ifeq ($(dwarf-version-y),5)
> > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
>
> I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> that's why I looked again into the top-level Makefile.

That's...unexpected.  I don't see where that could be coming from.
Can you tell me please what is the precise command line invocation of
make and which source file you observed this on so that I can
reproduce?

> Should this be...?
>
> KBUILD_AFLAGS += -Wa,-gdwarf-5

No; under the set of conditions Clang is compiling .c to .S with DWARF
v5 assembler directives. GAS will choke unless told -gdwarf-5 via
-Wa,-gdwarf-5 for .c source files, hence it is a C flag, not an A
flag. A flags are for .S assembler sources, not .c sources.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnj1Np62%2BeOiTOCRXSW6GLSv4hmvtWaz%3D0aTZEEot_dhw%40mail.gmail.com.
