Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVOY2KAAMGQENYS4N7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id F333130910F
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:46:14 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id s66sf8415880qkh.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:46:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611967574; cv=pass;
        d=google.com; s=arc-20160816;
        b=LK6Zp+BXM6QRPNEgOgB9i8mB4UrtGbowlpFdjMdpF7pjU+b8B/WmqdBFWh8WBudSIM
         NmkNuYkpc8Ua8USNMX+KHSMy3fWoaDqjFLpqZhL/erKqHTvH0AF7nifXL4dVD1kwE8xp
         4P5E8u2NPYrU7sNi3BXewYb1WnJ8W3OwCZezVUkjGuuPcS+D+M21SMJpE9HzETQGmEsx
         WYQLdVwQVELOz2Flwqa25jOtftJ+XwDkegFCTvACWww4M4Xj8NQW/8yNaVoGGMxlKwrW
         1DsFq5znUJMlwoH0QPCeq8cT1azrp2J3C6WsWEDSJTvftfZJypwcUa/9mvC8eolL0NGg
         CuTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9et+/wns8a4sWVzzd7T/jHBZ05ME17fJXNCECMVMAXU=;
        b=PJgKa0bNVvlOMMbUItnDVsFT7hDkG3KIOgGYuUGAvDcoKxqnoTobdjj2M3GyfAr6KT
         sE00hw9Q9VdGhKLY/50p4mGl+Gjk1bLMkjyB7LF3sWQ+Yi49MhzSR7DIWg1Hao4NkR9B
         jJ/1SiDeD42Bp6CWZpDSjB5YHb511ZHjAoUXOWYPTEcs3nFVwCqC9eWziHFRLCOpSrg+
         LwcC+Ibpv49m5ifkcNxJ7dkO3lPTtTFfEqYCFUu/VDzR0CvujVAWq1LdblrNmPtYE71a
         7rHtsrLFaVHHSJZEuyD8tOlh7zcI2rIAkDaqO0NC5a5oOgXUs6TZU3/ZtpG/lIO5pa5p
         6Fng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wo0ro2Zy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9et+/wns8a4sWVzzd7T/jHBZ05ME17fJXNCECMVMAXU=;
        b=T4wQwGlY5b94/AKFdMxd9UeuCZ9+9b+T3gDOroOuqD6iV2Yg3r+Au3ZWaaPagsvUMs
         xbCHD0y48cVgvPBksYQXRmYMQm8ZPSBUapL7fKubb5b4QfLi9ylMxTX/PX7Ls49z816L
         MCK/imgXfKmMTYMKY4KyoSMms8RgbawvDG8qqtHAsyBT1tkSdFL9NJYSDGMA0UzbBV9d
         XYSoII/4A4/v/llczUhv0ZWJVj9V3XAyw2SXSZh2e/uzC99jrmJ3i28D1Ps5pIJooLtL
         Am+49cAZ86cejznPtFHHf1bOH46zk4/g2D9MLyN0Mcz7ZrVVuiMy08cfYKPGxm1SyZ6Q
         Mkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9et+/wns8a4sWVzzd7T/jHBZ05ME17fJXNCECMVMAXU=;
        b=nbH2qll6HQw8VTKWe7HMhP7qTBM9Kfn2PfkHLWSV+lfYaRQ9E/ebvdbP65x8u7sO74
         4csXRGO5qLs3DKRYARGXJhTetfn3mHTfyKi+5H+SKP0M3Cftj0Ps4q/lnyi7haJnPGIj
         Lbmyhlcv1JrBFRzYW17dsQPfWXB0oyGrj6+X8SeBKK2x9G5aiKT0rf0YEbfgTagwSvj1
         dCPuu9qpJMYKBpVsKkFejm75hHFqDOETrEBUd47yqe5z/06Fq2nmVZSJCU4WD2dc47y/
         a5sVUPnw5j07IAu3E7dgFf7aPKqdIdt8/rSFVaBUMJnvQYDoYD3SlhR89jeVCUo0qqPn
         jS0w==
X-Gm-Message-State: AOAM531eS87Q5P2sGCd/CRYGXNvG/E3f05uEIrSs2eN9dkYzfqyku9/D
	xTL3JZ5HOUY/3rUZUXz3zp8=
X-Google-Smtp-Source: ABdhPJyz/FCA/viq4D3eWGNiCclIVcN/YWu+Iv9sYwJf2itbD/YKj+l3K8blQOoNSasH3y199E+8JQ==
X-Received: by 2002:aed:3484:: with SMTP id x4mr6313397qtd.283.1611967573876;
        Fri, 29 Jan 2021 16:46:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5544:: with SMTP id o4ls4105356qtr.0.gmail; Fri, 29 Jan
 2021 16:46:13 -0800 (PST)
X-Received: by 2002:ac8:3571:: with SMTP id z46mr7025176qtb.83.1611967573530;
        Fri, 29 Jan 2021 16:46:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611967573; cv=none;
        d=google.com; s=arc-20160816;
        b=DSWxDC3LbNJ7OrV+7CPHASutLkaU7L1/eNK+OysOOKCz9TTiQSF1e/MleBdNKXorXg
         ZGycQabS5NOV1iCDSXAv/6S2kGY8RAhK9zqPVn3HRT4d9PyFC4/vyFRrN9CPCl4IjvWz
         pk3r8097+k3xJg0mFnSzarz+SXswTOiPvP8E8eqUh7OyOtqz9pLQO0v/3K5y6GjI8PnE
         LM0Yv/GUk6JRsykhdjarB+2r1ENrcPlWUst7NGjaW1yOZv5Pf4n8XzxsNdH/D2DChuGM
         q8oTINdqLUz65JyN4XiK+oXrJ+bNv4Oxn9I5dauZuddCu67I8NPmuvEPqwcq/ZjapR4P
         N/Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sOYufdKif/Scq2e39hV/4HV4zK+OLCAmzma8mjBFh2U=;
        b=gVPwzqn7AV7/WZwMji2fCWKXbl15Jf1NLS8dV2t+If35CpRTvb93/OBl+JOGAXpQxf
         Yv4gk90iwsCOTC1981U0z0ekF6wa0+/knU/vvcap1IlP91dYz0cCNvvHB/1UKaxFoyNi
         /59DSYnOq8xkRg+tduxAEHHwPhq5wrRtnaazE6anULd2xTGGcNr0yjzl7AVQSvcRqam+
         NwJWeFMZsXjj/5IBvLFcd5EzmP/s5IHMML+HccbtoZYl+oS5+Y8Nja/o3HVhA9bDmPlm
         yCx4G3tziOwD3JpvL2xhLDEx0wmiwJ3JKN9ghMRzttpqB6arGm6lT8+1xFK2DVKQCzjK
         GqSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wo0ro2Zy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id p6si480831qti.1.2021.01.29.16.46.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:46:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id b8so6281958plh.12
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 16:46:13 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr6915188plj.56.1611967573031; Fri, 29
 Jan 2021 16:46:13 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com> <CA+icZUXpn_VKePTpnEhcpuSxPkuQTSKYfsVeMbxU9-rBp1ZJXw@mail.gmail.com>
In-Reply-To: <CA+icZUXpn_VKePTpnEhcpuSxPkuQTSKYfsVeMbxU9-rBp1ZJXw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 16:46:02 -0800
Message-ID: <CAKwvOdniSiaBkGOO32ZuGCv=1SBwaqdRsHUo31n+O+g0ek5P_Q@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Kbuild: DWARF v5 support
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wo0ro2Zy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Fri, Jan 29, 2021 at 4:08 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > DWARF v5 is the latest standard of the DWARF debug info format.
> >
> > DWARF5 wins significantly in terms of size and especially so when mixed
> > with compression (CONFIG_DEBUG_INFO_COMPRESSED).
> >
> > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> >
> > Patch 1 is a cleanup that lays the ground work and isn't DWARF
> > v5 specific.
> > Patch 2 implements Kconfig and Kbuild support for DWARFv5.
> >
>
> When you will do a v7...
>
> Can you look also at places where we have hardcoded DWARF-2 handling...

Ah, sorry, I just saw this now, after sending v7.  Can we wait to
purge DWARF v2 until after we have DWARF v5?

In fact, if they are orthogonal like I suspect, why don't you send
some patches and I will help you test them?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdniSiaBkGOO32ZuGCv%3D1SBwaqdRsHUo31n%2BO%2Bg0ek5P_Q%40mail.gmail.com.
