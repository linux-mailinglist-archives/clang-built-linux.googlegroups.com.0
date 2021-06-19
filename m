Return-Path: <clang-built-linux+bncBDRZHGH43YJRB6FIW6DAMGQE56YGP3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A42CB3AD9CD
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 13:26:49 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id z8-20020a5e92480000b02904ae394676efsf4833313iop.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 04:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624102008; cv=pass;
        d=google.com; s=arc-20160816;
        b=mgcGtG2Q7+g5KDde2LHdz2LRjP4TBWbdxf1qDN1jTsUwU7FsfsUiEMqPB850SZguNZ
         wPLjof9WHJBCGWL00uvVJADWGdWPiIurFtroodgDwJA9fay8BHQycvV5zI5xE6viOX3a
         bYiE04xAb09XTgv3YkiLk3BCtlwYpvOwAshEW2bY58q3R2Vtcs31Pn4mYy3z4Xj5Q+0B
         SO3WiyKHXlgHVjnVnHEvZnbscf7C9xwGuAx/e3BXH82E4j3GquCPN//6FBXoNiTpDhLd
         Al/Kn6qCV0R+m6g+WUOEfjZyOjr+mg8oQ7NzJhMwSrLVXSgERIqQ1VgEeCJhnAcKEHZH
         7qMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zE1L17mNfP8mbG0/sfzqgHlAZ59ufHyMzwS6rG/FrY4=;
        b=sNozq692Ek+Sq6PcQMcktLxP9gNwyURH1dJ6ehg2sSAGR3ws1cAgdNgs4ugQK1fZP1
         9uAV3utyjhqoOikxQCilnCP48pyI30bSxutq6trixy9bJ/ryj/pZp9uZDsYO898Bnr/S
         5k3QpAmXIRUG5FLm4H7ijuyimgGlJThr7SGNsxzmZKSp7/n3necoZI3mll0k/T4RWhzT
         8ppfdwffOnYHBMhJaTtjASc8I+qr+JPNeQBg8x2QeC1uWbpPpyO/WYglv81xm3dNy1MI
         RkuidZROJq8cue8Sk2N8YM1GMeN2Eid/r/WjFm9VPe6yB9+HB5b+IcDNGbKh7Hc7q+bc
         PCuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vdXQ0zFa;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zE1L17mNfP8mbG0/sfzqgHlAZ59ufHyMzwS6rG/FrY4=;
        b=pvSNTSU0FdjIFZR1mz4yvGNNzcdoSY/DqM2b0UjIm9o9np3lE+bH01gEJkZOmC9CVL
         2ZwjCewmv83bl1FtN4Y7BDWwpn0AScQwyYvRprDwLzcPerajxCRIPJ39/XJHPIr2pWvS
         63hxvDuXmgBNolboROia6jflYiX/fSCBk/CeYmpGc/Kulx6oL46zOerrnYWLjvC2h/oJ
         JoH51WsFnE0RwlLqPNqa8V8OGOOJvjXLAmphDOUuTfsOidtYJjT9eRlTOVJnR70f5hB/
         gvptEKjr74ZtNzEp75bPU/waqBLy3R7c07FrZ0Be9PE1HzUvvNKFMMF9PfaVtSio6XC7
         8E1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zE1L17mNfP8mbG0/sfzqgHlAZ59ufHyMzwS6rG/FrY4=;
        b=t1oy0VBF4mR1VnknaZgb1WpophusE2T62bME6iAO2MI/1hllqHzvh6oC9VmHbuy670
         oXb9Ete8iGDZfTI51Jn4lEv6xiXFA8VKw0F6X9yHQoxhyb4z2ngOM85Z2hZ2MhmQpXFb
         Jz5hJsKa+MehoRzsw04X6NQY8trrWbMB82/gBfwd9U3r0QIHzLsUNHDuWktBNGGgbaTS
         BJfsffE9o1rFj+JhS2pH4adLWgUB9MrfBvlKF6o2WWwivC975uy3LUJOTMPgfzjBUage
         C7xqPc2+LWDjRI2rWryDJyG4XEXAMhEvXWFk+C0tWtJFocpAmN1GwO/ZbHI8/VCTNVST
         c79Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zE1L17mNfP8mbG0/sfzqgHlAZ59ufHyMzwS6rG/FrY4=;
        b=HmhqngTm+YENeUCNl6qRn+Tvwo+pJoWRKoT94mFe2sgit0qZdHfJfhj1SXkJKaCmTj
         xd9T/3WCT4xLxn54S1/7S8+Ycy5MxPYGVnWMWTUYxFEMvvZd1HJQOn4rgJgbT5v9thDJ
         5Ydwjq9nsnYiLL5tH3/1CzZned30dMBHBwaTN0RYjxb0aFEMNB6o0VrrQWNoXwU5IwJw
         7CjWs5Lp+Z++t0wW8cI16Cu4xaGB/Dmp7nVJ06V9xwpBjwbAAk/Lt9Kk2dEe4X+YRpsX
         v5XBJAlkpo/hzE+8PmcNmDW7qzzFhNykVhBRYscOMKdKaukmaWnZEKaN7K/XNSmRebV3
         JtAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sWSS0H1Ku7zCrqP7/rFEYXjDINpc0/pyakv8ze+1AQ0TUfSrx
	xtQOvX/AQK+cqRodTsjSuo8=
X-Google-Smtp-Source: ABdhPJwkUj4uEZFkHhCTY+ghryiWoin5Kwv/CxMJY5oHJ1is9AI85TiAh12ZDUHeWthL4vtPuJSNww==
X-Received: by 2002:a02:600b:: with SMTP id i11mr8008046jac.86.1624102008234;
        Sat, 19 Jun 2021 04:26:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:191b:: with SMTP id p27ls1910505jal.5.gmail; Sat,
 19 Jun 2021 04:26:47 -0700 (PDT)
X-Received: by 2002:a02:9a17:: with SMTP id b23mr7854723jal.10.1624102007893;
        Sat, 19 Jun 2021 04:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624102007; cv=none;
        d=google.com; s=arc-20160816;
        b=I3PK8gMT+aFMdDHCr9Y2Defce+y8I58tYRwKqLuWB2r2CVCDmPKMhaZH2WPoh4QC0f
         UoNdzPpi1lgC/8X6+E10uXzNRWS+xMa1kz9E74n9/a9TBBRrDhW3oDi/RxtVob8a7uhn
         Ta9V5fiNBjfLGly/g7yIuPVufj2TO4VBD2159h2KdGbLsfX1wYEb2o/mHDnAIA0KF3D4
         LeDDWZddoJ6TiEequgNAS0JyGxs8RrOR+cYXM6nsFkmwtj4S03LfFtwGbycKv3qlj860
         t1tb+Ejf6w6iOExNA10/O7On2aSgxqVVgeTSNQdjmIV1IW0n3XjsWw7+hPylSCj+0M3l
         0qlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3qptZHIBpv3JxNQPkyiO+mSheyAcYqB/CsUvSm+UpOU=;
        b=zWjSzozwy/teG8dY5RWisfEB4qBFzG/VTrtOMIv6hIJu6KrXwQfBexHgLnEJ7EAbCi
         EX27Bh/VfetYFIAbwtmdRxxwXLo/WXcUHIeKiDOj2wu3Sy+YrwMQ4R77iQ/ZeYqasSVy
         x7GGtmWFfD4nGt0rf9n1rwv9qJd0Ds/6aCA8FRo/FIF1zv+jWj/nmyH85y2fuW/t2yUC
         86s0Uvogh66LLTW0H2u79adpXckStcbj3WDbqCWV2jJPrWRD42a9+cx1b1D8Ip2Ls0Wj
         3M+GrnE75AYeodJasHfN+lvpgXmV1Y+dxQ9J18Ie5Ni9dfm4Em+HCHjfeNdnr9udgVGS
         Mgww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vdXQ0zFa;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id r16si465395ilg.3.2021.06.19.04.26.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 04:26:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Received: by mail-qk1-x72c.google.com with SMTP id q190so15108898qkd.2
        for <clang-built-linux@googlegroups.com>; Sat, 19 Jun 2021 04:26:47 -0700 (PDT)
X-Received: by 2002:a5b:892:: with SMTP id e18mr19183246ybq.22.1624102007702;
 Sat, 19 Jun 2021 04:26:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com> <20210618233023.1360185-2-ndesaulniers@google.com>
In-Reply-To: <20210618233023.1360185-2-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 19 Jun 2021 13:26:37 +0200
Message-ID: <CANiq72kjyiAQn2+ijZKFo7SY3z+dCV6fGXYP1O_Mq7Ui3EqSzQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] compiler_attributes.h: define __no_profile, add to noinstr
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	johannes.berg@intel.com, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vdXQ0zFa;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jun 19, 2021 at 1:30 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> +/*
> + * Optional: only supported since clang >= 13
> + *      gcc: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
> + *    clang: https://clang.llvm.org/docs/AttributeReference.html#no_profile
> + */

I am not sure if it is best or not to have the GCC link in order to be
consistent with the rest of the links (they are for the docs only). Do
we know if GCC going to implement it soon?

Otherwise, it looks good to me.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kjyiAQn2%2BijZKFo7SY3z%2BdCV6fGXYP1O_Mq7Ui3EqSzQ%40mail.gmail.com.
