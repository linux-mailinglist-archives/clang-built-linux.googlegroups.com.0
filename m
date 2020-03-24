Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVWD5HZQKGQEAJN575I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A31DC191A1E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 20:39:03 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id 78sf14806984pfy.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:39:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585078742; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hr6YrXQMRm/mshTgCmmidlIrCZP/yWx/l8wu3bv1Xz2lI0a1d84fzTim9YuJthl5ZL
         llSJhMHSLvl5DT9G57VRrecS8J0VMXUrtIKXe95OLrJtt4BQuhagBgokFlvzFJqKwGj1
         RiCUzfWu9q30RZpuyVwMAlX3PwfodtxM1OPXcZMNFL3YxfkXbHg1vzTOtDmBkQDb40x6
         XXFXznIcOqSmMETM8t8opfTueU67JRLZZ4x5U1arE2vSKJRr6nssi5Xd3VdI/kii0kj6
         BedS7Fpx8DaaTEk7Di6/L4g9wzVhnMF6CzK9bFQoRxMISHS7bKinkUA7WPSzOmreAeb9
         4BCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q3yU2nRruktHVpg1zkBg3ZNFf2rJ3aagLkPrwRp6WkU=;
        b=BaGcgzQY7+aWx/6wcpgOSlEAuFJJTDENC/15ycZlCG9U072cjN9fujGNb6os9pDaVG
         oOtspJpupEVEMVtKUJQlRcj80Hs919DWpF3WavvinqBxRCaCePg727TAUVG/4LLQpBlb
         KpzcyPGZw++tMcXUcDtjTRehHrFF8QW5gqTiixdwYkp36jmyVrK6bIa81rxlW54Os4zM
         4TU/qC6Fa0kVQYT6lUUjXmE0YOzaJ+DyycP8iG7rMP3t/Fj/BnZasEHQeXpD87/DS2tG
         xboME0rXnieJ13ptcplF4ZY1JQpb6gn4EY85O4RiHc4REy1ZADCKpSrN1usPv+GCii7o
         DeQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EJwuHni+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3yU2nRruktHVpg1zkBg3ZNFf2rJ3aagLkPrwRp6WkU=;
        b=FhmMkCvSzq5LpABxMVRIYpLGdXCQJD+F/kQNRXNTSpL9zI6qH7YPIjXHGR7194P0Z7
         U7J/M7heVVD5UOJ3SFMqpqYx1oy9zFkewBO3xxxTZkBpYoOQruez1sqRLpQfBU6x89cH
         HkbjsNaIoWnbNaa+X39xNkgGv9CeWAHUV74G0Z8+TA1YlY1adPnrUegYB8h1R+kKb3HX
         MUk4f75Vci/Blzh1msKOiyDopwhKEejFBeqP5rW1YoUNAvdVCVGMmIi/gA37zyd4zJHj
         BVQkV/UMIQ8nIiMHANRkfj/vdXjy1yn1SQvVh1kejIG7ebUkEtNG1giSaiVVvgZHArar
         YTZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3yU2nRruktHVpg1zkBg3ZNFf2rJ3aagLkPrwRp6WkU=;
        b=jt/y0gTO3VBtH3vyicXrg3545ImJAREkZca47BdM26OjdgglzQeSwOI/hiHb2dN4uj
         8ISBQPs/PWPOxjT2V4IjM+Bab1XAAh/Xi2HlbXJnLnSefF30v5B2sXTkjsLfZAbqsWDf
         XA28iBkZep60nOLkve4wi5og9oww++tHk9L0N/Htx7Dgav0LYhcs1RHL3qaF1fkSbtO0
         J1Z4IPERJPYnv47GFhaL9+y+suNhEQ8yNgP3L/SGLGY4Bb1rpWTgBuhigaiEULLkG2ks
         6dDhsbarUk+ELaT0+SYqFGbl+DxkOOzElKjkob/DxVb9Y5Fb5LNJwAoTyu81rg+9cVfA
         j64g==
X-Gm-Message-State: ANhLgQ2Wv6UHoKftNbUY7oNgyeJ9XsUNAjGud2OQNYRrv7rew1o0jE93
	99zmxY0KiL0BzIs5lRAzKAU=
X-Google-Smtp-Source: ADFU+vsQj3DmYfxxhf+Yq6VEtB2fCIQn2ekup+AwFysjbtwDm6AkVuNzqQ8B5ZcaU0MIF1fvUogvQQ==
X-Received: by 2002:a17:90b:24f:: with SMTP id fz15mr7100043pjb.138.1585078742281;
        Tue, 24 Mar 2020 12:39:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6455:: with SMTP id s21ls5124945pgv.9.gmail; Tue, 24 Mar
 2020 12:39:01 -0700 (PDT)
X-Received: by 2002:a63:f113:: with SMTP id f19mr30155861pgi.168.1585078741863;
        Tue, 24 Mar 2020 12:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585078741; cv=none;
        d=google.com; s=arc-20160816;
        b=Hv6F9gHJnTJEU4rfZ0GWJrwSkRVf3TEudhyKAjhudFpC19bScIX/O7OhNerF2p+xLe
         uYdCLXaQvNAiTKi91N8Xsa3ugRmeBMfkMCwNfcTYdREHDXhqj+vUU+J6nlg4EMfmPoo4
         uGX60hUgq1LWWPER28po8sqCbx0oFpHNoTM9i4CTUlw2BGZyYW0k1TIKIN/H72Lvt9Cs
         KQFe9+3zJwNwzKoKD0TjdvQ1ttoeVnxF6Ek/wj61hR5ZIJjnlUZzU3rvc/tgdbRKWV3y
         IROE+w8+iyIs+bNAOoM8q1IE7ECWDIqMqW0qIztENWS/B1XWyGPzo1H9FyCwaYJ45ZAI
         KDkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FqoMGUJll9Veg+MpF7sippdoesIw0FFxb5gCdl/JcEs=;
        b=DTM7Tam54wnQvCm3fuUPZ8mHNIGUTEIoYW8cfRnyaxUnTNpCcEuOhGrGLLImpp8vBW
         v/OcNpVgx+BR5oQjssWqmzyNucFv52x/FRgQ+yKXBb6R33qnVtv2VYuxVC7hFal1Nqpi
         fpz8VZ3ORJkJ5GlhRLUWgQVc/QZIrkIA4WA52Jq9xsXTF69gpN18l/kRkCPZAgXHaIyM
         WeNREvtlUckL5+GKk8RoqegPYUF9ZnfKEg0LdSQHMSJ1IrgLq2zu7Kn+WpP6Gj94Yqjb
         Ms/T0z7so6NszvvT9fgFRBGiaP29Bx0LmSvPb7SynPNmsnOdta5TyLhe7umZL5Ejn3W6
         c/uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EJwuHni+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id s63si147733pjb.0.2020.03.24.12.39.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 12:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d17so8988671pgo.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 12:39:01 -0700 (PDT)
X-Received: by 2002:a63:a34d:: with SMTP id v13mr7687220pgn.10.1585078741157;
 Tue, 24 Mar 2020 12:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200324161539.7538-1-masahiroy@kernel.org> <20200324161539.7538-3-masahiroy@kernel.org>
In-Reply-To: <20200324161539.7538-3-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 12:38:50 -0700
Message-ID: <CAKwvOdkjiyyt8Ju2j2O4cm1sB34rb_FTgjCRzEiXM6KL4muO_w@mail.gmail.com>
Subject: Re: [PATCH 3/3] kbuild: remove AS variable
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EJwuHni+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Mar 24, 2020 at 9:16 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> As commit 5ef872636ca7 ("kbuild: get rid of misleading $(AS) from
> documents") noted, we rarely use $(AS) in the kernel build.
>
> Now that the only/last user of $(AS) in drivers/net/wan/Makefile was
> converted to $(CC), $(AS) is no longer used in the build process.

TIL that we don't actually invoke the assembler at all for out of line
assembly files, but rather use the compiler as the "driver".
scripts/Makefile.build:
329 quiet_cmd_as_o_S = AS $(quiet_modtag)  $@
330       cmd_as_o_S = $(CC) $(a_flags) -c -o $@ $<

Though I am personally conflicted, as
commit 055efab3120b ("kbuild: drop support for cc-ldoption")
since we do the opposite for the linker (we do not use the compiler as
the driver for the linker using -Wl,-foo flags).  I wish we were
consistent in this regard (and not using the compiler as the driver),
but that is a yak-shave+bikeshed (I typed out yakshed without
thinking; maybe a new entry for Linux kernel urban dictionary or The
Jargon File) for another day.

$ grep -nR --include="Makefile" '(AS)' .
Turned up only this change and the above referenced wan driver.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>


>
> You can still pass in AS=clang, which is just a switch to turn on
> the LLVM integrated assembler.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Makefile | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 16d8271192d1..339e8c51a10b 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -405,7 +405,6 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
>  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>
>  # Make variables (CC, etc...)
> -AS             = $(CROSS_COMPILE)as
>  LD             = $(CROSS_COMPILE)ld
>  CC             = $(CROSS_COMPILE)gcc
>  CPP            = $(CC) -E
> @@ -472,7 +471,7 @@ KBUILD_LDFLAGS :=
>  GCC_PLUGINS_CFLAGS :=
>  CLANG_FLAGS :=
>
> -export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
> +export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
>  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkjiyyt8Ju2j2O4cm1sB34rb_FTgjCRzEiXM6KL4muO_w%40mail.gmail.com.
