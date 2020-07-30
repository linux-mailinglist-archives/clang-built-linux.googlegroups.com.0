Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMHFRD4QKGQEQHHHQUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEAD232A1E
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 04:38:41 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id d1sf2151792qvs.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 19:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596076720; cv=pass;
        d=google.com; s=arc-20160816;
        b=R3spqJVlh6lOVjNWd9Y6OcSnWS9fkyFzDwIOH2gElpJPpKdhxeKgUvKz8nK9ngckCZ
         gD7oYhjwBCC60sb3QyUYnnQ5haZr+Yg91xAo1AsXLpJFTRcqkDGL9N58770SSpz82r1c
         M7PlX8AKf7lO0huS+dbsAkxpzJMyTv26yv8wHixRP+MNtF5ScEn5w572Ejva4IO1GR35
         FeY7GpcvoJ5/zhBcxcx0nAWDB8HX9A1XcvSdLuCIN4bbDBqVXBLGkjhzf8Qi6qCQjUkn
         oxo1NPPZdQt3vfkbK/6aHJ3XfT5vDTtU6UXugge/9cVMiG5OaHW4bhhOOS5o74G2qCkW
         oyfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=24Arxkl1OSQO50nQfLMnMwAJOLxVSZdOMSMZmfRpA3o=;
        b=NJKcu/WV52BELaaWJaARUM0BychS3YUN6Jgc4EISiWbi5DBGd/9jwxZ/avQfpIi0gU
         B4SZh2fZzeylRFi/XBSBQcfhEOfq0dOGBLiFdrN8Gi59UdLaVccminihDEycbMxXdyKB
         vC+ZjZ6J6Fi4uZ8xhqP/qDfAqWiMNwRI6gSFkCjT/SKxYeQDiUI2anehfYnD4EHAdZuZ
         rJICLHDJYUQduEZondzaqr6YNBqqNgscpeIBcSN38W6iV4vWheuA+W+6xOK212jOcX7Q
         coQclTDEUtbrIeH+EaXWvEOZ3u25Ipma30kzVlLTRPqh5l+GmIq7zJoSnAnLCgDyRBEM
         OEeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EOzMxx4m;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=24Arxkl1OSQO50nQfLMnMwAJOLxVSZdOMSMZmfRpA3o=;
        b=MxMW2FFAJHFGd7mL8bW1beirVbYYxa84kHCBRQsP6Z094TumlQLQUZHR5qVyCnL6Tq
         ed0uxeQNocdYwrsN87mAzu5joFBnWfror3xWY74K4ckIkBuCuR4qDJS5fVin9KV7ZYo3
         j/i2aIsXdvyLbnPMa4VISp1pUfHWIKx1K/HEuhSdc67WjV/vPDwPe6+ILmyYLvHqGQm/
         0ddmkLaVtiMAQvLXZF274vhd4L1M/lM7AL4c2CGukvrQKBNYjtALvpX96BWo7ytFrEtx
         s5PNTVBHkBFeo2pSC4n5+EaxBDX36PoaUPHWJyI5gxIQwfD45h8ZzJfozKnhX0vwKjkA
         btEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=24Arxkl1OSQO50nQfLMnMwAJOLxVSZdOMSMZmfRpA3o=;
        b=uf+kxYyr9DfhFbvwOcVCI5xkYMnLMiJWhwHyp9J7cZvd4jTN/fjRa7jslA1NIJt7T4
         LKnmoAjBBcEg9/yXmN1EzTlvoEiNqzE93Dt83FC873mzvpF2mFrMnQJfdUXeM5ZS7sJn
         s+JEn0nRNT1ZfBGR3vOynwkhqeK5NvYmXhnjDbIZqQlsQI/+t+yJklsI9wmqm5mK699b
         oWDee0Ureudc1rRqLGdujKlLLIwEHSQPRmVgYgaGeNSzJBLfCmAe/9gX8/Ff4RJ5XGY5
         1AQWQDQW50NkNiPKF/EXgacTG3gz06tN6K+c56JC93kbrTuydcmB3pKnrqTXd1YDBKF0
         ZDqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303UTavKcSVS3oql2XiAEfM0hNmIBi1k6f4/yC0TR2Bgs+0Uv5q
	gweD8V8/m1HYVMIkcnOn5AM=
X-Google-Smtp-Source: ABdhPJwgWdl/V7XmmW2KCDX/f1MQiFjmr+mBETisXTmWvnjhX2LGCtEeIY/ZFhPfh+pbdrqa/5EKuw==
X-Received: by 2002:a37:649:: with SMTP id 70mr4897282qkg.318.1596076720255;
        Wed, 29 Jul 2020 19:38:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c9:: with SMTP id g9ls160539qkl.4.gmail; Wed, 29
 Jul 2020 19:38:40 -0700 (PDT)
X-Received: by 2002:a37:47d5:: with SMTP id u204mr32958135qka.487.1596076719981;
        Wed, 29 Jul 2020 19:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596076719; cv=none;
        d=google.com; s=arc-20160816;
        b=jNFzdd0Cs+otk63SeUZEA6VIXlqcH/aJy4IxGk6ttPHM8g0jYhpwgNBc/NLqJB/38E
         tONX4MXZqTazhR37Mdh7jtBzRRmY2QFwzOtGDbPqFdUjH/P9LKNV12HRx9gtTW6P0YzR
         vvcxlsgfEnamZsBcth+zbeLdGbcvSYmYKPFiKQBGU0S0lHMlVUEon3zy5hxqh3AIgQbw
         qtVHFu43/vY3KlqVlwSIRm74lIROLO1LiORZZQ3iJbx0IANbOXK86bIMdLnDgKYGjp6E
         Yp9IL0wAyepARwwD8WTRSEtt7RdE5BkEjgYOsL2m2Es7pHsGLueZgw1XGFHGM9otJMhQ
         idlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tcmPGs7MKumNVJXJtJmYK47UvkeMX0T9PRyhLwXMI88=;
        b=mYV7ez63BdO5wGkZpxFqlQ3jlivmyvu6Cxx7DdijRUgxDCzFoMU+0lD+5VIqUUB2yJ
         +mtQDwpSIjZAofZAVp7ekKOBdiQe+kGSaknQzCJeT9Ezz+Y9dJccEYHyxFR6htSDwubE
         dhUM+HbD/I4sQZ+cCL7ErfOW8KgTH9hL/RejL1/d0n6JdU0/RCNlzr2yBqvmuV9NSadY
         MOrNSlgO1GqBmxV9u/lAb5rmHZVY1vV1AqcbJR66KKqzxDNtbS5Y8wrK0CyPPfKJLAHi
         mAh3NQRaz2/M+865w+gJEzuauXK/0+1Cm0DeoyWftQxMQRJ7NBhDtf/3YWCOOrsrcars
         Mf3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EOzMxx4m;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b26si268802qtq.3.2020.07.29.19.38.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 19:38:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id r11so6281528pfl.11
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 19:38:39 -0700 (PDT)
X-Received: by 2002:a63:165c:: with SMTP id 28mr2409576pgw.453.1596076719167;
        Wed, 29 Jul 2020 19:38:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r7sm2164264pfl.186.2020.07.29.19.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 19:38:38 -0700 (PDT)
Date: Wed, 29 Jul 2020 19:38:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH-next v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
Message-ID: <202007291937.061A4FE76@keescook>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
 <20200717201801.3661843-1-nivedita@alum.mit.edu>
 <202007291502.18DC4C0F@keescook>
 <20200729222341.GA684483@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200729222341.GA684483@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EOzMxx4m;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jul 29, 2020 at 06:23:41PM -0400, Arvind Sankar wrote:
> On Wed, Jul 29, 2020 at 03:04:43PM -0700, Kees Cook wrote:
> > On Fri, Jul 17, 2020 at 04:17:54PM -0400, Arvind Sankar wrote:
> > > Same as v5 previously posted, but rebased onto next-20200717.
> > > 
> > > v5: https://lore.kernel.org/lkml/20200715004133.1430068-1-nivedita@alum.mit.edu/
> > 
> > BTW, some bits of feedback on process:
> > 
> > - please don't re-use version numbers, this is confusing :)
> 
> This was a special case as there were no actual changes in this version.

It ended up missing some review tags, etc.

> > - please fix whatever is happening with the "In-Reply-To:" headers, the
> >   threading is extremely hard to understand (each patch isn't a reply to
> >   the cover letter, and everything is a reply to a single earlier email)
> 
> I think this is because I'm passing --in-reply-to to format-patch.
> Seems like I should specify that in send-email instead, hopefully that
> will fix the threading.

Ah yes, I think would do it -- it overrides the normal threading that
send-email does. Usually --in-reply-to is for a single email.

Thanks for checking!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007291937.061A4FE76%40keescook.
