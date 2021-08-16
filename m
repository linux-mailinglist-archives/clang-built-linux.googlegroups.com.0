Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCF65OEAMGQE2QXAGZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EFC3EDF88
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 23:56:24 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id e13-20020a05651c112db02901b29ccfa84fsf6482362ljo.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 14:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629150984; cv=pass;
        d=google.com; s=arc-20160816;
        b=i7nY7aIaoqMTfEZ7+NOgWHcc/qDxvIPNqv2SeLYZoeEq6D2i92+nhBmp/ZoFYi1I9W
         vrbLy5amAgSSq3c4NkEcs2xW+gdMciu5cGHR8jM2Dq8YvQKBArwnXyP9BAC9ouFPZmIW
         ZfiyGRTTv7aBbnh+GgwUec4Zi8ydhN4A3aoG+G4SPYS4MU3LmL6/UXDvigy4nVW+UlAh
         s5zAyEnxoHI5R7dz6Hqb4JWDdgW+pKhjUqlZ5Th6vrNxFR3RenFhQ9+NidTXspVfBiFt
         u0FWorLCI5Y9fp6Uoboc6G4NZzWKhvaDvPELg9Cyaw4XpB8sX0JHMstQVvA5Fusepvf9
         RJHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IHq91nn5H7mMnHXceUdbvGCsiJNcp3N4dLnXccLNy8I=;
        b=fAW6EpH1/3/4kZU+5Eewfsu6Pb+VpZw0kp9zN/PSmiA/9bHLEwTCTaHGLzkCm5+l6M
         0YVns06B3NwMTUEyO8J19ua/0l3awpguxBjXCJq7p5RNL1N2Gx43akHDjL1gnYx3mAJC
         rNqXIUJCGln2s0JKXLgdRsk4G6bwajZeorzJDHeBOW+hDBPmk2xcUxTKziFCkG+f5/tW
         +WhJD/qs5L65ea+mZGNpCJBxoenTOrXOby5gSKrA3AADQ5akP6+/Ue5pNrlw9L6QY+wB
         g3gW1IPZcp8YrWzHJTwg6MyVjtorqNvtriQeo0dQL/VUcLY+XbxNKuKUUcSOiYFvDiBw
         02tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gn5ex9v2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHq91nn5H7mMnHXceUdbvGCsiJNcp3N4dLnXccLNy8I=;
        b=H8bvcNMi2uRMl4o3/H0kMG+JX3ZY6+z3ip3EBjVx4pks/oCGva9Vz0id4lXLaskFjY
         5AlCa+mJFFsnj5umqI0OAykUXC9I0rOPCmNAMijWJe6nTK3bAqp10BerAamN6lCYvwiT
         KpcvJpQLMRWPJvXh36HAAM7guKGaoSai5AOJxjBwxNE64Za81gfqNjCslXyEQb0PGhMM
         sscxWFMa9o5mY1wzA5gCvFyRoWDycADdy70SgdPspGWoL1z1StSuCW2obV8Q1fmW9Kws
         k0tkvgK6ldlNNsfa+6jsvjC8XCNFvS+Og+9jitZD4/QemrIb0YSlTJVW++xWO30XgxTZ
         NknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IHq91nn5H7mMnHXceUdbvGCsiJNcp3N4dLnXccLNy8I=;
        b=H2gcxrwM28hy9NLtinQB8W71sMarnK6tlvqrA5wHMr8HEhwdyvoBkcB5JENmrwH3jS
         sgy1eGyakvKdg2/Ej0/8IcycoFomZ5RyacJuXVzLthcjAFLnUUlOttGm16UNEF6/RJKC
         i65NdV8r1TEwBEC40aw396nVQEw3keWR+i8+OQ7MH2SGofYE4sgX1u9TtES7hxwk1rUU
         /LdUZu9Uu2UXN3iN5V22BhfYzkqEhJq9XE0VCEOgKSglA2TL5n+ZgFMIdAnOfHTOgR9L
         gVf1V+yrmEerNrcfXtC86cyO798mKqHVMf5RctaQmk9qVv7xAryNMcFdCcaaSar20Rv+
         6Quw==
X-Gm-Message-State: AOAM531ADXpZYR8pzsC2bjEI+Cepc5DWlPAGN7FGG4UF4KhTqGmHwJ1U
	qlpJoWDsFeHRe8/lTADkZeU=
X-Google-Smtp-Source: ABdhPJzG89yHpsqbigfX+0PUeEdNFNDEn+m27RsulbHh6O6p+TzefahW35lBIWccsOqSVzjrFGGGqw==
X-Received: by 2002:a05:6512:2342:: with SMTP id p2mr328444lfu.516.1629150984481;
        Mon, 16 Aug 2021 14:56:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls41604ljf.7.gmail; Mon, 16 Aug
 2021 14:56:23 -0700 (PDT)
X-Received: by 2002:a2e:99c8:: with SMTP id l8mr307500ljj.178.1629150983637;
        Mon, 16 Aug 2021 14:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629150983; cv=none;
        d=google.com; s=arc-20160816;
        b=hiJbYyekbfnyQQJmriCOI0c2b+FBjs+9RxhYa53j8mgWe6q1zJ7KXCubnZQOPo0pOa
         C381wbokLG0zO1o15MrfmbApOukBwq1tCZWjKgOdlJDLrJp46iuJ8WAaqz84N8rOpdhO
         8AEWPKK4RSeU4/A1B3t5FJmkCnoMNLWy4LwBJ4+pQr3LNiWQyv6bJefs9iuX0wNv3Zkg
         iAZMcJ0irU3NIRrMpLWhQ+LRhCJSq6woBRZZqPblI6ClBD0dzQSsFbWGk/J2XpcinWRL
         kmz3OHfuI/dWXyVTqnbHHO3E0yX2/9Fe9r+Uq6ioeLb1X5U+yKYCwyOT3MbzKedt5/17
         /Nsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=INSZ2rU66F9gi18DmsqmtRCqv+cghRc4CXBXIsZask4=;
        b=g+EsuDtw21EooobWdCifNlZclgQSSWB8k4HKjlGqXgYxM9Aoi8KBw4PPKkIcqlSQA1
         PYoNEDVf/N51xxzD67gn2YDwEsAfzwGmL0kQduXXDjf3WBsERia5KZMYuHn6EzO1lJlx
         bQVBnk/k6JoFSuGzRJxZw4OuWpkXLFiIS4VER9WpnWkrVKKfGoBFlBcOTHjvdOuGzB0a
         Vzkw0Koc24U4JPY9A2+L0dpatE1COi2jZS8LFFjKtc6Bi9ZhEnjGLMvOU+hJYeSYrtim
         8JgUbzc9jAI/ekH6gHKt296Z9z/3E16vdbu6A/1ayZYdP+GPD5IOrmm+HP48b5nIbMEO
         ZWfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gn5ex9v2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id k40si10066lfv.0.2021.08.16.14.56.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 14:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id i28so10608564lfl.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 14:56:23 -0700 (PDT)
X-Received: by 2002:a19:7603:: with SMTP id c3mr310360lff.543.1629150983095;
 Mon, 16 Aug 2021 14:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210816193041.1164125-1-nathan@kernel.org>
In-Reply-To: <20210816193041.1164125-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 14:56:11 -0700
Message-ID: <CAKwvOdnKnBPhvVM3CAf7im3TS5eSV+myQqd_X9oUN74o3NOu7Q@mail.gmail.com>
Subject: Re: [PATCH] fs/ntfs3: Remove unused variable cnt in ntfs_security_init()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, ntfs3@lists.linux.dev, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Gn5ex9v2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

On Mon, Aug 16, 2021 at 12:30 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Clang warns:
>
> fs/ntfs3/fsntfs.c:1874:9: warning: variable 'cnt' set but not used
> [-Wunused-but-set-variable]
>         size_t cnt, off;
>                ^
> 1 warning generated.
>
> It is indeed unused so remove it.
>
> Fixes: 82cae269cfa9 ("fs/ntfs3: Add initialization of super block")

I went back to the original patches to see if this was ever used;
since v2 (when the ntfs3 driver was split up) it was not. I triple
checked the v1 as well.
v2: https://lore.kernel.org/lkml/caddbe41eaef4622aab8bac24934eed1@paragon-software.com/
v1: https://dl.paragon-software.com/ntfs3/ntfs3.patch
I don't think there's a logic error here.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  fs/ntfs3/fsntfs.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/fs/ntfs3/fsntfs.c b/fs/ntfs3/fsntfs.c
> index 92140050fb6c..c6599c514acf 100644
> --- a/fs/ntfs3/fsntfs.c
> +++ b/fs/ntfs3/fsntfs.c
> @@ -1871,7 +1871,7 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
>         struct ATTRIB *attr;
>         struct ATTR_LIST_ENTRY *le;
>         u64 sds_size;
> -       size_t cnt, off;
> +       size_t off;
>         struct NTFS_DE *ne;
>         struct NTFS_DE_SII *sii_e;
>         struct ntfs_fnd *fnd_sii = NULL;
> @@ -1946,7 +1946,6 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
>         sbi->security.next_off =
>                 Quad2Align(sds_size - SecurityDescriptorsBlockSize);
>
> -       cnt = 0;
>         off = 0;
>         ne = NULL;
>
> @@ -1964,8 +1963,6 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
>                 next_id = le32_to_cpu(sii_e->sec_id) + 1;
>                 if (next_id >= sbi->security.next_id)
>                         sbi->security.next_id = next_id;
> -
> -               cnt += 1;
>         }
>
>         sbi->security.ni = ni;
>
> base-commit: 96b18047a7172037ff4206720f4e889670030b41
> --
> 2.33.0.rc2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816193041.1164125-1-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnKnBPhvVM3CAf7im3TS5eSV%2BmyQqd_X9oUN74o3NOu7Q%40mail.gmail.com.
