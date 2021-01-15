Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFONRCAAMGQEOXUQJ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 153AB2F896A
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 00:34:47 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id m9sf6536272plt.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 15:34:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610753686; cv=pass;
        d=google.com; s=arc-20160816;
        b=bjbH478dEt/YHsMf+rtyQu/GSrvaIj0P1tjp1uKbLwr8kOYfOtPgW1Ww6qcGW4p7wx
         Cq4cZSy/g1p2ZpmGbBul20RKC3Q3X3mHOD/r3mhfaiUfhcsAKOEdJ7PSqbtEA+U9EA2z
         cSI6Z6ifzcyOfiCS4vL2qqwYFC9WFDYLC7JYaW6PhfeGO9wR3xXyAiyNWiCTDd5S3lA3
         VO+00AZ9SM8fcw5BCMIzgUmpWW9u8U1oGn9OYwI8Kgi2z1MYVPgQ+tYHImCCX8PDcSUT
         5VlQLeNqpyKldUwZ2v4CYyzhhgofO+tc2K1nmXk7KJ66Uv7ZavcUJGkui7Lznoo51hXc
         8WyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vzRvc9CMkI+L/Fet3x1moMCxpgzUsXXIS4WC4ngXGF4=;
        b=Ur83OCJowthDhT3OB6JtLCyV/GH9fn2sE2PtasjFU4M8uwD0Mt9qi2NbiThytMQJSm
         2aRBITeBb5F15M4YnvXPvy6THqBql6Xt+D7bGeYtNc/8hLaQAsCpjG5IswnO81LF213G
         +y0K1F8JqvFLaNcOvT2ZrpaAlXXNgg8AxMtyoztN4OpwuUz1rIDZGPYrsqQEpuYL/ECG
         sj5y3D21datidpv9xCXSKnQ6zMmsvBF/WDu8NJQQdTEhaCBgKSlKNNuam00aQXJZFmc7
         ynyiD8+fkvnKFLRL455luAYrwTMqrD8T9PR4LpeJSMCN7CRaJ0RzSxJqDFa2lih0qKzg
         NvEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aIx3Nub1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vzRvc9CMkI+L/Fet3x1moMCxpgzUsXXIS4WC4ngXGF4=;
        b=ZBFk9aD8ZC73iewdPIZ+3uggrSl0m0AdlqLQ6QIYp78jVZmEBRzuFdSgDJ3+hswhpx
         MiT63DqkhYMEA7tDpygwVTHc4RgOmEb24mm4dlISHxn9ihU1iPEYY3DeBdnmDcmcG0I5
         2mZ+NuOKBT+vy1xtAtSfnGzr90Y26jkV+LrDna0zddpbA9OX4vKx1QL9uMtVyAFeFJgU
         cUiH/z6InXL59Q3r/kEGM0cEJGIRfwCPoeq/nv4r69SSeTMiAkJgSo2XhEBLeGALOfHQ
         nPHmxdbzW7Ks/t49GsVYp+oKD8bQtN3lAcQAedTTdpAe2fU3/XAOQuxIMW457nX62Jg2
         EuKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vzRvc9CMkI+L/Fet3x1moMCxpgzUsXXIS4WC4ngXGF4=;
        b=Sffg6HONHE7/sMfC4uTCVBt17n4vdwd+kufcrO0KYkpKAxySFBS6k7oAsKvfWWsNjH
         5j1lFzhWmb21HQdgqt8z8bcsN2Cw4WL1OdKRvwMR8mTag+IeuH17RFHwG5NHki/YCgud
         9Gqn5zSa2m0ZRGveuzvgdGjUyms0zUmTxzWNgF/zRrN/uawmvjM9DthNFAOUkxMC+skE
         gThtacMPPTUONJhrcA4yaT+ne/Oypu06Qyn8qf1VdjYwzRk08k2IV6iwbdR0zxHVedaJ
         3aUOGGa+iPxuPpb4EPHN9oLEhhoQwXGJxeyJWWJEKF9TtSTpapYL027Wxzr0qYu7NGZO
         UBFg==
X-Gm-Message-State: AOAM530GM9LpPEJCmpiyJtg+CPWiSXzkOw3qHz8o4dkg6rXNC8lw3mlF
	PjwnIReIlFWLdNwdRCnK4bc=
X-Google-Smtp-Source: ABdhPJwlj+fYsfo3l4v2LiAi/QwcXyxlsLKKNzie63HSkilsV71wo1fg4jW6IG1UWc1fIll+cBZaGQ==
X-Received: by 2002:a17:90a:5c81:: with SMTP id r1mr1856842pji.175.1610753685776;
        Fri, 15 Jan 2021 15:34:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls5018735pll.0.gmail; Fri, 15
 Jan 2021 15:34:45 -0800 (PST)
X-Received: by 2002:a17:902:ed83:b029:de:84d2:9ce8 with SMTP id e3-20020a170902ed83b02900de84d29ce8mr2030009plj.17.1610753685159;
        Fri, 15 Jan 2021 15:34:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610753685; cv=none;
        d=google.com; s=arc-20160816;
        b=rO4ca+pL/MDGRoaQhNNX2wnCJNgoHQ1GxD5W5C2ZXqPhtVRWbU3C8CQSmD2BVfxKNc
         OnotKsJci42xu4GDgfDibbXP+wwcERhPTja7pGSmd2MrsCuZe4IlRFpstElkGdbSPFja
         1V/qes/+G4mwBlabNCGLaDUYPqTTHFt0Ay1bIU+Ap7V7jWTsq6xe6wrId6r2+jbpjICi
         2lliGKGAvAV5XPFuA+yd2VXybJvuomYflxbjOwH2QBPWd6+aGnhtcXOiud2m1DCytCPI
         RnfM1M/yqgkuyq7ILsGJyfeYSiMCaVYVP2pQoegI/PaDmEySXwO/ysG36THSutB5ICG+
         iItw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M45X1uVUPkAgzVTV1F36XDTKyhVWjHkf+etFM5uHOJs=;
        b=P8cqMMmln2vZwMFZAoe5WMNe4wmse0VW1mJpWkbvg0bpHmEGEgW1D+RabUU5eLOYl4
         twlHMzrDNDod5bnVcVMrJ5g5fMkpjQhr/fy1mxu8hcoXzgGUjCXVwMOBDX/V7zq8NBQQ
         FXwZVKQ5ArhFs/j1hxeem6udQtVL5yLQ6OEldvjtIGEtNDewBvsnBiUb4mnSzS84L0on
         TuTePcrsPiWClTlWdNPuXDDZHhGzOahvMYB3ww3w4hU+NyO/AfDUqfWu8A+AOy0SaSIn
         8UCXnlugbaDYIGVLL/JQflTaTnOQO1DYHk1eh8d1w0aPezJ8/dYRQdckXAkyiEQDMQvO
         /OzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aIx3Nub1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id j22si789957pgn.5.2021.01.15.15.34.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 15:34:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id q4so5492320plr.7
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 15:34:45 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr15203377plc.10.1610753684580; Fri, 15
 Jan 2021 15:34:44 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com> <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com>
In-Reply-To: <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 15:34:33 -0800
Message-ID: <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Sedat Dilek <sedat.dilek@gmail.com>, Yonghong Song <yhs@fb.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aIx3Nub1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632
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

On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > CONFIG_DEBUG_INFO_DWARF4.
> > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.

Can you privately send me your configs that repro? Maybe I can isolate
it to a set of configs?

>
> I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> It is not there before and adding this may suddenly break some users.
>
> If certain combination of gcc/llvm does not work for
> CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> should fix.

Is there a place I should report bugs?

>
> >
> > I had some other small nits commented in the single patches.
> >
> > As requested in your previous patch-series, feel free to add my:
> >
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Yeah, I'll keep it if v6 is just commit message changes.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q%40mail.gmail.com.
