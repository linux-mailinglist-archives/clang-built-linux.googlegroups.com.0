Return-Path: <clang-built-linux+bncBCQJP74GSUDRB6EN4X3AKGQEFTSKIUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F6F1EEADF
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 21:09:45 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id h74sf1899032vka.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 12:09:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591297785; cv=pass;
        d=google.com; s=arc-20160816;
        b=i2qfel6/4nGzYDG/qgxrvENUB7b7U+/tvcWDHC4+2+yRm2sJU3JU3J4BKWfMHB/6t+
         a727hLPKw/IeJmIc4iV1cW34OI4zf0wqh/3nev3frnNyeycCNX1wmtKm8r4s5Ncoc0wU
         eMpSpjTYpMWdsJhCfLIufDh2XbhIN4SWtdrJbVHlLxAUWc3Bmo2mk7R4aZFg/JwawFIq
         lNi1foya8sCIA3pnA7t2iR0Wx05ocigOFI8ipa5N389UnSVyivFP2hk6ozQWyfGsBnRH
         9aInhrmLq6YascEyFr45XPC5YfM0svg+AV03oRMbTo+nkEUBY8fDR5G3tpql25FiqrIu
         jUhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Mfb34ToqiZsJK33PwEyvmh9yV3GoQp03KP1gS9QXoxA=;
        b=poRRNDPMrI0+JHyT91D7Sgx0c/7W9l/lkJStAP4LOltEvOqEmQ/llBiJXU63V8t3Uz
         YUpQOJ2ZdYOBeWewdYMXaMjRATE//LjZFZraF9nQH8tIQVlWlJbzm+d0bYyJWF4s0wUz
         yqjSHUZ1E4vRlnQZxK0783lxRY2NWQplGqhFeAP0CcqlU6Jrj7tmBbCG73osPpWoRgZV
         Cbt7BN+1vZp5Xo5iphPs33k5HXQnfbPTtrRqVKtwgp9u36nO6s2/8AefkU7tlG3lCfhM
         JHIDrYY8K+pmOmEcvrPWhMhA/pWHmZYO9pLAB0SoCRIKe0PXyrsVFWXkG2BqtBxSA8A8
         0fsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mfb34ToqiZsJK33PwEyvmh9yV3GoQp03KP1gS9QXoxA=;
        b=O7hKmqqyWbqFDlXnoOa3ENE0DTK/KqTgIX53B6/H+cYAXX6aVIWcRLFw4BmwuHfNP1
         uXKl6f09BXGfnYd02z/MPO9rXETN87xBjoaBuRI2oXykuLUj5vn4STXniqS9Srro/fVs
         CytR1DwRu8OqT7BMu3HC/8fkHo+ECA9uyKGN/Ji0CCQTTDXjTvhaguenF8JOzi6p37OS
         12cbbTMNptMr3yMzqLw+F1aTNpaKNj/sg3SWMurjU2AHT4XDD3HcgLC6Em7xbgwLG2zL
         vtcMWx03AY/uF1inyJ/6tF/0Mpur1ajpacWW3y+30AukC3IEKv1yGy/nkV+5W+GbUtB3
         6mIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mfb34ToqiZsJK33PwEyvmh9yV3GoQp03KP1gS9QXoxA=;
        b=Z5UE5lPMkIZyp8OKmfA3vTVBA61sXQnVYyo844eh5w3Uk2COMr9MhiCZWZkEYRSBai
         e+fzZTYBuGzqOFgOwzYrBmefCRULL6d3wEnsm5+yOouFXqubLMOMcegWOUjQEQr1GMiN
         Br1DwGpQ3ivXZKOy0DzvMu90gi10GNnPrgDeYGZQZEY1HbQuZp9S0N3wpOy7QhvltNgz
         itlXjSqc9EQWF3RcCaGE/43Evmu2gc1NEmkgb2qHvOX4Gu/iOovSVXYq/drhj04fawuN
         NUROarcyiBxEGLspKZs+e4ypuNiFtXurPxtP+mxjbbEQV+ki2pq22Ev7gi/HbfNx096X
         LE7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IkPQrr1ly/Q2/sRf8b/pCsr1MZbELCuJZQ++QjzBt7hZmamn2
	ViLy7Q11BFBgf+nKBDAC99Q=
X-Google-Smtp-Source: ABdhPJxdSjW5h0p22elSQOofXNodDFRFh6YOdOVnnIwyaVUIHfPYcnJ50yYocPgHQJB32FP/lZ56KQ==
X-Received: by 2002:a67:3211:: with SMTP id y17mr5079391vsy.56.1591297785025;
        Thu, 04 Jun 2020 12:09:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5bc6:: with SMTP id z6ls554511uae.10.gmail; Thu, 04 Jun
 2020 12:09:44 -0700 (PDT)
X-Received: by 2002:ab0:1eca:: with SMTP id p10mr4659524uak.94.1591297784595;
        Thu, 04 Jun 2020 12:09:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591297784; cv=none;
        d=google.com; s=arc-20160816;
        b=qpNKS0jUmXzMoHa2pqKKK2/nYFA6fpC/LI8yIlUOrdEQ8O62LDBfQ/qFvxRd7XkpLM
         Yj7hhRxn/YuZSPJGlUl2+dgguz0bCNgxqM+9biL/gJ/HXrpK19DakEMWPhMidSENrPgO
         r0YzBRzU3dOqfR4O4JjJpBBuonxw1bXXTe0EI4gVN8CRbsJUCc0jDqKI5B79Rh1QZaH4
         hsM6eH7TZOFPWkYB5h3FVxsma6rv1MVgWu6PfTYv05lVnybdvPhiHp0L1oAPPrz0YK/q
         rWpOyUDfbYdZUv8e4FhChdwnpMUaQhGF6Kayvf4y73O+0EKQ0AozVdO7TsWKzHlRd29M
         UL6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=X+qiK8YjhEONxTpdjX70xl6++OY/MUPwZ+Do1G1LJJ8=;
        b=EXB2GwwMc28IRM1oBPlegV6wLwE+/NkFhHtI22V69y+Kz8ZGo8+UBtB35cwCaeE6bB
         BQr+B5Ac8Qn52VoaSmMdWA0So26o4W1ECzbpKQhCQEjdYLkWpZBzBXqtL/KKdFbwkQaX
         4S3PCg8/SCShOm0tQMpNi5J8G7GDF2YeMDeqrTfpiNhNvhQ6hhL2m/SLYCP7NjYax3lP
         ujFlSQrONtzM267+pDYGPb/IZLpK4N+YUvBA6tX+dU9Nb1X+/T9ddsqYBuZFqexv6Tfy
         teR1VCvWOuRgI6/tuDE968iHR2arCzFpvE7cXAizs9DNAIjTyxmiZuCBf9FspkXsEaJx
         pBqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com. [209.85.210.67])
        by gmr-mx.google.com with ESMTPS id f12si327767vsr.0.2020.06.04.12.09.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 12:09:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) client-ip=209.85.210.67;
Received: by mail-ot1-f67.google.com with SMTP id g5so5643547otg.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 12:09:44 -0700 (PDT)
X-Received: by 2002:a05:6830:141a:: with SMTP id v26mr4936016otp.250.1591297783928;
 Thu, 04 Jun 2020 12:09:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org> <20200604132306.GO6578@ziepe.ca>
 <202006040757.0DFC3F28E@keescook>
In-Reply-To: <202006040757.0DFC3F28E@keescook>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2020 21:09:32 +0200
Message-ID: <CAMuHMdVuzvvHt3j+L+_BSPFs5RgaP3rkknEUmRvTAs5nZ9SGPA@mail.gmail.com>
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: Jason Gunthorpe <jgg@ziepe.ca>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Lars Ellenberg <drbd-dev@lists.linbit.com>, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, netdev <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk <linux-clk@vger.kernel.org>, linux-spi <linux-spi@vger.kernel.org>, 
	Linux MM <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Kees,

On Thu, Jun 4, 2020 at 5:01 PM Kees Cook <keescook@chromium.org> wrote:
> On Thu, Jun 04, 2020 at 10:23:06AM -0300, Jason Gunthorpe wrote:
> > On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > >
> > > I preparation for removing[2] the[3] macro[4], remove all remaining
> > > needless uses with the following script:
> > >
> > > git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> > >     xargs perl -pi -e \
> > >             's/\buninitialized_var\(([^\)]+)\)/\1/g;
> > >              s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> > >
> > > drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> > > pathological white-space.
> > >
> > > No outstanding warnings were found building allmodconfig with GCC 9.3.0
> > > for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> > > alpha, and m68k.
> >
> > At least in the infiniband part I'm confident that old gcc versions
> > will print warnings after this patch.
> >
> > As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
> > the warning?
>
> I *think* a lot of those are from -Wmaybe-uninitialized, but Linus just
> turned that off unconditionally in v5.7:
> 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized")
>
> I'll try to double-check with some older gcc versions. My compiler
> collection is mostly single-axis: lots of arches, not lots of versions. ;)

Nope, support for the good old gcc 4.1 was removed a while ago.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdVuzvvHt3j%2BL%2B_BSPFs5RgaP3rkknEUmRvTAs5nZ9SGPA%40mail.gmail.com.
