Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDFWT2DAMGQEXGPRW2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0DC3A6DF3
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 20:08:13 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id q11-20020ac2510b0000b029030783d1d1f0sf5517857lfb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 11:08:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623694093; cv=pass;
        d=google.com; s=arc-20160816;
        b=E4maIv8WP0o2ZZWaIwk05/+MmUxPx+OMmq/llo3fEh5MU9prJqzbYZG6fWIvSIPC5V
         V2CeyJVDg+diVd87lNTa5oM+kyHXRBEsjMvEZgJNu6h3sWz7lRrhKW8paaBsftda35Y5
         UEX7IdOzRmG84jkbv+diOP7NWhhPqRC1f8YiOck3hJDam5wTFkLQ+Oib3d2dMS8iLSYb
         bac+j/TbguDfBi30NPGvX348XLOVj58VhjtU5Eo7Gi+76fHvPJhiViPbL8F1T3nqat+l
         jfzBslqz6LLuOtpoWz6G0G0XyQfQTseRBAE2/2vPkQJUU6JB6uC9My1EV1n6yQwqRB5D
         V8iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NaBAFkRZWnq3l+R91hspDnmHloNn13bONz+Nv/1U9aA=;
        b=qyNNttoDpasuNo9a5LTDNSf+Y+ATrKYDlMt09RtQ0GVOTtHxkit56oX5V14FsJ6vWp
         pW9mNMSYz3R99HR01zPHEqsxKzQHj+W4cfKj02n/ziHtKmQ7vIfGiIIInQkdKnNBVhra
         dSh9FmJftIodZbWzszf+LmhRYM/HR7rQG4ZQkY0Z6iWSxGkDl/kyPRe27grKVkYjusfl
         4r/o9g9cy9TVYAAan/tptv7dieYX/vEYmou9HRDLKTEDM4dSnG1EBOpQo7ZXnegue/rG
         8Z/6Ayqr72xzAAfK0GEohV6rri2Jz06uKZGxUgxLHsx/x7eEG6QYRy4oz80Jloo0fd5o
         wxSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gNoMBqwI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NaBAFkRZWnq3l+R91hspDnmHloNn13bONz+Nv/1U9aA=;
        b=cSa/RjO1wOA+pGf4DJCaekSg4EkU0m4ju1JcVtS9H3YfUPe55os2fNzitDS996M83N
         PxxZhBqX8RxBLG/XLWIWr70Gj6D1I39WR6x6xXLkmTtej60ZGGD5LH+YBsprDj2EHqe1
         Ic38UIE0iAP2XCxTdAVfQ7kBFCPnteDMcdMK6ilRTpITWq+phInDF3UywLXZUfLXEHyP
         XPksZPxckXp5dJM55SCpx4bQ7HSewLmKj3GcvPMsXhrBxyGdnsDuVeFm1eLzludoF6Lh
         5gq9fIteltz/h8p4khCXHcvW4p9awUQqOnAA3wyTD+SWRvRitG7l/iHKvEOMvyWv3h6b
         uIcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NaBAFkRZWnq3l+R91hspDnmHloNn13bONz+Nv/1U9aA=;
        b=jB6P9cREfntvIi8ji3vWa8TOtSFSxmNgTERck72cXFvMvfG7dZGMyPpfCcyRj3c9xa
         nuiYdm2psvPcuJfEo1hq6WBy/MdV3woL1HLsx1tBI2xyCntIThwmPolnI/FoOuQPXhli
         Wll7HM9QQZ7FUiNKVnr7NZPxs5+z/niyJBnqcrt9RpX/MOC6vYAQ08AmL3LjZksiuNrB
         2BpydlKt7m8uQiash6ux7Z0HthLw1EFRrc7/9WMYZDC2LdovKkcnFeMjcMDcMAlruIOZ
         IPF39UE0B27xndSrqreeRgk61kacy+0K5e0spldlu+lp2pt5Vd7IL7uH9BW7Z7/8dNJ5
         uIVw==
X-Gm-Message-State: AOAM5326sPXfcdGqMZdiMKvvl+2Q9xiV/pUtK4M4kbtA50znSDYx+V7v
	vZrOnOIxVz3zfuz1QZyuJGE=
X-Google-Smtp-Source: ABdhPJwvWP2iGOC7xbD5yd8hP3uXawTgQT9DnEDDLq5RSlIsQix1BoNj9zKVV/nnlhxy+51+yS1oBg==
X-Received: by 2002:a2e:844a:: with SMTP id u10mr14684949ljh.443.1623694093027;
        Mon, 14 Jun 2021 11:08:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls4143698lfa.0.gmail; Mon,
 14 Jun 2021 11:08:12 -0700 (PDT)
X-Received: by 2002:a05:6512:330a:: with SMTP id k10mr13033869lfe.595.1623694092037;
        Mon, 14 Jun 2021 11:08:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623694092; cv=none;
        d=google.com; s=arc-20160816;
        b=ylwnhR44n9NG6rMPfxO2KF7tyV4xcuE02FACkJheAeDvySUA1o7kTL8pAGIzkI29C5
         HNOu3SYQcZk5n9dUZYuI0cpNFNfcEYKjNfxWKUWcOTeS5ei/mKSyU79Qi8LQo8sZPNvS
         zdpCOJKCh97azZmmBpRi3xW2BfbSAR4lttEK4wkQc5x5cuwbgQG9nBGCmtLBXQvVBxil
         uADktu6UH+rVahgBnzktSQ9hE7AQa8me82OiUO3TxYbu0XDKi3n/Go+5PmdxDQGud0g9
         l1ww81pECET4HwNLcXRYBfS4sTt5zdRQ8j9fG6psONAhj5WhLHt48qkhI7qhAiTUu2tx
         Y/Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q/XB3mh4kqA0R3Mq5xG+IQPk2u072QCh1Aa1N8SVimI=;
        b=Dp3LhNSuqDX+XwakqYSyjBHO/QhNc7FBGZ/VJyCtd4hKBi9OzL55+ZHgF+psQSxwVA
         YZdoAL1zsf706Hjff19ibN10DA600fGBEbl4kjU3PPn7+aHU9wya61u3qIRDJnuhq5L/
         UKg9sHISTJ1uDA9B+HFJh1raU9cMVAspLEfWi5/DbHU+wPTg9HCktiYhXfce0aYwG94k
         vbg0Wgdn3omODmrrOGdK9OkC0awMIc+BnxcRyAxcTio3CXL1jB5Xpq9qzkXnAuyIZVaH
         yXEp5AvL9W1P38x6Z3Dy4dBXC/LYNaPoof8KERnM2WkgT5sopdz1mL0nJKIS4qTkw+zD
         QnTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gNoMBqwI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id j2si3314lfe.8.2021.06.14.11.08.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 11:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id r16so21365733ljk.9
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 11:08:12 -0700 (PDT)
X-Received: by 2002:a05:651c:1111:: with SMTP id d17mr14547090ljo.116.1623694091627;
 Mon, 14 Jun 2021 11:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net> <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net> <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
 <202106140817.F584D2F@keescook> <20210614153545.GA68749@worktop.programming.kicks-ass.net>
 <202106140921.5E591BD@keescook>
In-Reply-To: <202106140921.5E591BD@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 11:07:59 -0700
Message-ID: <CAKwvOdkiQCuWB7VrQ4T-OCdoNfqKhpLx_jtBQ_uyjVVwHSOc=A@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marco Elver <elver@google.com>, 
	Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Andrey Konovalov <andreyknvl@gmail.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Johannes Berg <johannes.berg@intel.com>, oberpar@linux.vnet.ibm.com, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gNoMBqwI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Mon, Jun 14, 2021 at 9:23 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Jun 14, 2021 at 05:35:45PM +0200, Peter Zijlstra wrote:
> > On Mon, Jun 14, 2021 at 08:26:01AM -0700, Kees Cook wrote:
> > > So, AFAICT, the original blocking issue ("PGO does not respect noinstr")
> > > is not actually an issue (noinstr contains notrace, which IS respected
> > > by PGO[2]), I think this is fine to move forward.
> >
> > It is *NOT*: https://godbolt.org/z/9c7xdvGd9
> >
> > Look at how both compilers generate instrumentation in the no_instr()
> > function.
>
> Well that's disappointing. I'll put this on hold until Clang can grow an
> appropriate attribute (or similar work-around). Thanks for catching
> that.

Cross referencing since these two threads are related.
https://lore.kernel.org/lkml/CAKwvOdmPTi93n2L0_yQkrzLdmpxzrOR7zggSzonyaw2PGshApw@mail.gmail.com/
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkiQCuWB7VrQ4T-OCdoNfqKhpLx_jtBQ_uyjVVwHSOc%3DA%40mail.gmail.com.
