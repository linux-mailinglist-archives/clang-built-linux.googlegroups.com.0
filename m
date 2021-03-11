Return-Path: <clang-built-linux+bncBDRZHGH43YJRB3G4U6BAMGQE46QZICI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F21336FB3
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 11:18:22 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id m14sf11230202pgr.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 02:18:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615457901; cv=pass;
        d=google.com; s=arc-20160816;
        b=m2zBTfEVKG+VEtBq9+qDJLO+4STypNhY4JoD/2ZIbWicPXLWgdj5N3Fo4A098VQFvn
         9AeVMaYCOB++WQlawsMnOulKPjwh2Qss3HLnU7xbhT98D876Gzrzwdz2RTyevi/QTdf0
         B7CzLaJOjJZlbfMVsjbHkIOuHgTgEb9gcKonWLaEKK/XiuRaeehG02LLEe1tj9kjENHu
         uMG7NNzH56fE9RNUXf/tS/nuwh3uymB4BrjD8UJ8//54pW56E/19Tn2MvJgXT6ni91Yg
         1kufN9L6XRe4iW1wBSpE5w7FA5FKrOFzZpFRUzD38Lcc5JV4V0kbFWax+i5v7Smp8eSP
         O1lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NNYqB2OQZV7kncYfAzHiItdzLRZVsZofUYw+EPPF25o=;
        b=iEAZLmwIX/Nm5hqnjtujbvbPRL2Ryf43hr4XWWBEfBHFNmj3ZMMY3FCgJsGAaLR31H
         VjoBYha1Rc1jYwpfwYkyLmiZatB0vZgJ6yUFJ+fqT8vozMjsKwEwWLOXq1WgYe+9OTHQ
         QSf2xPPs6rQT3Fcj/55AZuKl9R3ZaCy5B6s6/XCzqVEm3gVaRiyiZolfpyMN9FEJIqRw
         fiJQJwZO3ZLtafXC/KUnoM4xE80h1CkGo4Xuk3lzc9L5DI63zwwMHdGd0sHJ0YLOwAUL
         Zvk3SJvuOT21cR9sH0tnIt0Q1oJuEOAPID8EBkoC9K+QW4m1ST+wjesRxcy0QoLAHsuV
         enCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KV/dCmLm";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNYqB2OQZV7kncYfAzHiItdzLRZVsZofUYw+EPPF25o=;
        b=rYXybq0GL1BpzlVqIql+iMxtE1p/AF7bfnKPN3ltHnmKLE+QNpNdgREIhcHb2pCCas
         rCm2+3+oz6nsCNBLspP5bHS7+jl5WkDju2qLF0pm2aKtBd0Andi6Ho2bv93o2F5ihn0/
         02AXfSLykUV/+SZHTR6KYB2wrQI34zu4HClV/aFQ4tRhmNO8OFlSkxv51750/XdWR9en
         f+cjdAdFKkRcWIFdRiHbeCa5g9QbUWEiGQzd4ovuCEjdjeF+rYllIaqDMyvEcI7A3JHm
         fKOVSl/A+d1wrzT81+7UiUNw3pXLX4J/vCRf3JUScame6GFBQkdD28oznq0DFYVOLv5/
         yv4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNYqB2OQZV7kncYfAzHiItdzLRZVsZofUYw+EPPF25o=;
        b=InnOArosF/tkNNMGAHLNElzz185aRfVquzqTGOZtfFYpzuAr+WSX++vpbGX+qE7ebw
         kbR1vaabkFRPGKFIvkIlOEeHgGJGFcf0PHZT0akxklP/fFYnszyOzGtisd7gqxgBRocs
         fZ8HY7daeSX+0mwd1SQEns3T7YbtO80FpkW/TW/OicXg1CEcByye4MxXkfr4Yoom1+Zu
         jcxjjBlGKf1Lqos0NMa7bE/bHgn5idei0He4ir9f5yCwH9HeVg+xHGxRyNa6MfRuyk6X
         N6eV7R2DdwljF1TsRP40lIvPQ2WhzAv4CobFNcUCyjbGQhOVq7dE+TjRU6HkesqxBZrU
         SzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNYqB2OQZV7kncYfAzHiItdzLRZVsZofUYw+EPPF25o=;
        b=NYuEzwSymci4cGHIZD3ficqkx2yZJsKjzaz2NU7rn3t+FnfTt9Wbg9fpNJE4xpMTfY
         8yAB++3w8B563Dg8DJYtUIRt3SQ5dMBccT+gWBYbtixmHfd1pHk8h5j5RabnGcT4RgzG
         e/gY5L2opDTKTvyRfdBgKI2utI+3o6QBBBaQJj3E+EFYHLCdNPtyi0Hybwg+46tcGRIv
         3IXFgmen3APEkQ/AniQw9JPxcKDCJlV6MyAZuzXe0Kurjp2f2lilhrL1zxAvOs/V3pO0
         NrOPLVinj7uLe1XSCyYPSbJjocVSo+qgRKpVFq1Fh4BdF4lBuztSFxzIn9+TNX6Eq3WK
         Fw+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TUaYr1/P2G6I8+xSNJJEqQHhN7akX7gf+1auM7DxJzgJIae9/
	BQNtDDKzeGaiFApyeuvxdLc=
X-Google-Smtp-Source: ABdhPJzQQUAOdCAhuExOqLdPFW4hOdOcUhPXJG5xblPwpuGukionciHaKZtRbc6LxtaNvcCLB4cnCQ==
X-Received: by 2002:a17:90a:d0c4:: with SMTP id y4mr8382247pjw.233.1615457901018;
        Thu, 11 Mar 2021 02:18:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da86:: with SMTP id j6ls2908267plx.8.gmail; Thu, 11
 Mar 2021 02:18:20 -0800 (PST)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr8142459pjp.166.1615457900497;
        Thu, 11 Mar 2021 02:18:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615457900; cv=none;
        d=google.com; s=arc-20160816;
        b=aRVdqcYuJLyJaRDy1OrmH0K82J6sJLD/e3/cyz64oo1RCgl3g002nnIAi+1ewfGgcn
         wSMuMbaTTejqXWhm7JV7ubPn4fUGwv0krdeXzfafyT5BW7heizZKDXnv/B+Ntb6HnuCy
         yE1d2nLOn2RFlGiPlHT1AE0nuGuSNhPwICmG0T2YaRU9cA7w1lOBKlUltc906Wy2BtDM
         fyFW/w43FZYvT9sPWbJ+9rSXu4rs4xiyJ6qxZcHM48In1ns3y8cVh1Y72zLLpRdOo0Fw
         NuGSyte26MASuBTVdmr+rXhpR5rNReYs91g7m54iOnLE9W5ohgrYeLx5ZB2gC/o5SL2c
         KYTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PE76/wgHFI63Qk8r0BeS/7Wayu5F52U0PT65yrvGBho=;
        b=v9NoDdgoGyqET1gIw3ZdcPbCT8jxMYxrIXCcpWkHsUMYIoTEdAfJLYYbeMwWIgeoZC
         yjV1vBsuFET7jsBBcRs5S6sixKG84hJaIcRA9xKLPqjouZDIkYmQQJn8cqBLyO83CgAC
         qXhLKQekCfW6heaEvZL5y/0464Gb8zbA/3a7OdGwrdCI0UPoXk5Xlu4fANu+0Ix455Sq
         OikKpvmmOUU+xtb8c0d1tkYywFKVJZn66d3VCllUnlMdYGwKXZLGLvh+bp/cClISiJHY
         N8wHB6PVnMtZy//dFUiEghL0IkxG5iOewrVi4jRHKo+hfMIigN6GYwbpwKWi2A0PFjWa
         5uPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KV/dCmLm";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id e4si193188pge.1.2021.03.11.02.18.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 02:18:20 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id f145so4747127ybg.11
        for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 02:18:20 -0800 (PST)
X-Received: by 2002:a25:d6d5:: with SMTP id n204mr10363574ybg.22.1615457900276;
 Thu, 11 Mar 2021 02:18:20 -0800 (PST)
MIME-Version: 1.0
References: <20210311094624.923913-1-masahiroy@kernel.org>
In-Reply-To: <20210311094624.923913-1-masahiroy@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Mar 2021 11:18:09 +0100
Message-ID: <CANiq72m1e9MD83sP5iZCfzoCR0qLz2HQj_VVkE4X-56vf6e7fw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: collect minimum tool versions into scripts/min-tool-version.sh
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Nathan Chancellor <nathan@kernel.org>, =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>, 
	Miguel Ojeda <ojeda@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="KV/dCmLm";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Mar 11, 2021 at 10:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> +# When you raise the minimum version, please update
> +# Documentation/process/changes.rst as well.
> +min_gcc_version=4.9.0
> +min_llvm_version=10.0.1
> +min_icc_version=16.0.3 # temporary
> +min_binutils_version=2.23.0

+1 to creating a central place for all minimum versions.

    Acked-by: Miguel Ojeda <ojeda@kernel.org>

I wonder if you considered creating a folder with files like
`scripts/min_versions/gcc` containing the version string. That would
make it easier for reading from other languages or even importing them
dynamically into the documentation, thus removing even more
duplication.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m1e9MD83sP5iZCfzoCR0qLz2HQj_VVkE4X-56vf6e7fw%40mail.gmail.com.
