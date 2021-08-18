Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBR7D6GEAMGQEPYON33A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B928F3EF81E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 04:34:48 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id 11-20020aca090b0000b02902684dd1d9a5sf742217oij.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 19:34:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629254087; cv=pass;
        d=google.com; s=arc-20160816;
        b=lA3Mf4qOCd1K/E325JCCO3nrjOWw2k9EX5tb2NHKQYqs7+0XMmldoIr9ycv9NfwkBg
         7l/6Y6CBTIfEzr9xKBRZKEAohS13c92rRbzoEu7T8NPQK9Z415b2bfGjO+tX+Ipv1C0o
         GogMeNO+ilMcjSgQeLgM65yyS9RUYy222RBsqLNWpDslDmJKyXZ+nLeUq9eDhxNN1mn9
         69NKPJkLO6skqOw/ympSn63a686Vzw36ansAUjn0V3HjKixiPE+v04QXWAU+lGhLxFG/
         Nl5PqcVU7dh3hiyuGnIVdNkXCBpcFvXNMsD5uX7KUBN8bjvTMkG1xLOyuBTgNY3/TtSx
         ZC8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=lOQxrUXKXP1cu6eRGCYUokexoVn0l4x326pe1Z5b6/w=;
        b=kDvEJ8ktGtrh5wUamxH1KdoiA+Xw0MRBd62P3yTaj+MdSyg+jytSdyuyYatiwXXUuN
         NpDPJcdXJSz8sXqTKCq45+rGOesCkNCrXsTHWxWSgBLuUD6l5Lhk0OWm2WBwOMG9Kr0D
         B8kFqYf1ne4VGCwjGYtvSj+fypNh4wpL3F8ZOoMUdPkca8taktcheFvpCFCzrmq9JS+9
         Y+trKQgnkBSpCQRCr9ACPGLfEhqgM85ESJwWMosdSulKkPrPjy03SrVj6CIusjMedOQ/
         CQyxUyHqw82tIvHGnvewNGeaRxK7HB8d1BVKstKoEi8ci1JMvcyLP+lRbQUVTxQ6zN1o
         Ou+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KseHonVk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lOQxrUXKXP1cu6eRGCYUokexoVn0l4x326pe1Z5b6/w=;
        b=iJN/xN3J336bXCNHdk19qSi5AAWEtH1aUeFuSpbYEjlgB9LcWoXA9Hre8W4xiud8p8
         c7KIqW898bdrfHyIfI1KianVYvmiLS4VyuMSBNkHoSrklNS8HQko0jRshyfmU9tAEK0g
         AxjoyN22umm+xNmaW6CTgcSDRNdmXizXSEkalj7Fv9CNbWWYxdwexixacYjBNCrDxRRa
         hvH58NH21qAgsBt6fIhoR6aMPyl6JDdKYlfkHWyhbJ19YqemQmRKTbqTlTTHxLFmY2Y/
         le/+SKiJ72Ez2oGSs/opFXEEWknmWgricU/fBStHe0iU+7oTcSPqXKSHVefoTnI1ado/
         5Smw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lOQxrUXKXP1cu6eRGCYUokexoVn0l4x326pe1Z5b6/w=;
        b=m4me04jyn3xLtabDcIsCpMgv0kUu8MYdTncrfVWRXW6Md19cuQgUbcWfo1O3Zu+6NL
         MKAuDN+uwPn4wYr8HFH38lz/btbMCuP1Y7UE7MfNPblRLIN2NHD3qtmOLQwRHg3VLsYK
         izEwuf15SErepPbQTTlyA6enqkt7T/RxRbdn8qDZ/oyGpSNdLU1FAru0AGZjv2l/sBk5
         aSCcASNdsysbcAGN+RfUthMgADrSZU+5AShP/s0nuc7WcanIsmVCzkS0iHvTsgPCMvnt
         OkG3uLXzJHCjdC3e6NyA/D639bO5qTD6SSOSC4TQxpiSgaGneMO/KaZPP1nCldX4vnXz
         5AYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533K+CqJYEdEa12Dgd06vh+fVNXCf8FbfI21AWqSYjlD/HS4Gyr0
	oERQjEhCSaTuIcNe3GoVtHA=
X-Google-Smtp-Source: ABdhPJwP9NhKbX+17TUNZB8omKMh798zwhwh8/EYwM5ICEn/JLZj4rXFgyKX7wR6gOwN8z4NqG6CiA==
X-Received: by 2002:a05:6830:2709:: with SMTP id j9mr5084919otu.147.1629254087737;
        Tue, 17 Aug 2021 19:34:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:201d:: with SMTP id q29ls231173oiw.7.gmail; Tue, 17
 Aug 2021 19:34:47 -0700 (PDT)
X-Received: by 2002:a05:6808:84:: with SMTP id s4mr5034121oic.34.1629254087401;
        Tue, 17 Aug 2021 19:34:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629254087; cv=none;
        d=google.com; s=arc-20160816;
        b=QBlJu2A0ixy3IP7iCDTZc1CmuCionLE81lveKnoCS7eK9gcAojF4JeFL6at6+xAf7D
         wpw2qPY7T3LRLjdHImE0n1KIIs3WpdrYiLOHJbYvBpyroiXSQg9QcHKqpHBH/VWr0uvg
         pf2z5sqgKC0IeAPPY6NT2QZpRt2xiQOs4YJ52dQCpXpz0c72FNUGE5hrMSr5XdVQEoQR
         8u9gAPa7lLZkGobK3LHbsSwlOtwlJBOKZUbawOfsG4BsMG8MRPdQkcD4plREwYP3VrWR
         wrl3fUMG/VMPJfgegv1eZ1aMHvxsc554MI2WyUZMInFVzfFjZ+KXDaOg8J2peO2rqcEx
         1KQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=tSrtc1Fo6BTES2NTrunR7VHJaBchrQC+4v/A753o6u4=;
        b=svCP8toJOqymezEk4nhdZhByPJxR6FxRioiIPhmcbu1km+3hVWTngdUlD4rGMozXSG
         JgSGeey//X2LL65TZxtAzbkVRyb+sVzagOKJUAt/uGXIVr028XSTa+Ib7yPZz8SvjLx0
         6JWMTjCaZIr4vA//jTxe1bW2G3ZK4uxENnC4aj9Xd6vfhdbGxRoNmVaP2lUrg6BWskLu
         8gWS8jvH5F9B2EInu7Bzb7+g1NcXuwEhEsEemyWY46EKDdbNyCyJaeoiKBWUSI6yuvGM
         HFpnwrbmGWdI6ZvoF99qXaVEogfebkonZcJWmhkEhsOlFwse/MP67c6rr9iCxstZ7dTZ
         M0Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KseHonVk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id b9si372200ooq.1.2021.08.17.19.34.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 19:34:47 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17I2YK07030319
	for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 11:34:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17I2YK07030319
X-Nifty-SrcIP: [209.85.215.173]
Received: by mail-pg1-f173.google.com with SMTP id r2so706667pgl.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 19:34:20 -0700 (PDT)
X-Received: by 2002:aa7:94ac:0:b0:3e0:f21a:e6ff with SMTP id
 a12-20020aa794ac000000b003e0f21ae6ffmr6607968pfl.76.1629254059709; Tue, 17
 Aug 2021 19:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210816180519.1021311-1-samitolvanen@google.com>
In-Reply-To: <20210816180519.1021311-1-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 18 Aug 2021 11:33:43 +0900
X-Gmail-Original-Message-ID: <CAK7LNASAHN=-uj73Uwk10aXbsR8AkUM_P=3NX_dq2SiFTqUctg@mail.gmail.com>
Message-ID: <CAK7LNASAHN=-uj73Uwk10aXbsR8AkUM_P=3NX_dq2SiFTqUctg@mail.gmail.com>
Subject: Re: [PATCH v4] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>,
        Alexander Lobakin <alobakin@pm.me>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=KseHonVk;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 17, 2021 at 3:05 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> With CONFIG_LTO_CLANG, we currently link modules into native
> code just before modpost, which means with TRIM_UNUSED_KSYMS
> enabled, we still look at the LLVM bitcode in the .o files when
> generating the list of used symbols. As the bitcode doesn't
> yet have calls to compiler intrinsics and llvm-nm doesn't see
> function references that only exist in function-level inline
> assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> work with LTO.
>
> This change moves module LTO linking to happen earlier, and
> thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> entirely, allowing us to also drop the whitelist from
> gen_autoksyms.sh.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> Tested-by: Alexander Lobakin <alobakin@pm.me>
> ---
> Changes in v4:
> - Added .lto.o to targets to actually fix the use of if_changed.
> - Replaced an unnecessary mod-prelink-ext with .lto.
>
> Changes in v3:
> - Added missing FORCE.
>
> Changes in v2:
> - Fixed a couple of typos.
> - Fixed objtool arguments for .lto.o to always include --module.
>
> ---
>  scripts/Makefile.build    | 28 +++++++++++++++++++++++++++-
>  scripts/Makefile.lib      |  7 +++++++
>  scripts/Makefile.modfinal | 21 ++-------------------
>  scripts/Makefile.modpost  | 22 +++-------------------
>  scripts/gen_autoksyms.sh  | 12 ------------
>  5 files changed, 39 insertions(+), 51 deletions(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 02197cb8e3a7..a6f43afd09bb 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -88,6 +88,10 @@ endif
>
>  targets-for-modules := $(patsubst %.o, %.mod, $(filter %.o, $(obj-m)))
>
> +ifdef CONFIG_LTO_CLANG
> +targets-for-modules += $(patsubst %.o, %.lto.o, $(filter %.o, $(obj-m)))
> +endif
> +
>  ifdef need-modorder
>  targets-for-modules += $(obj)/modules.order
>  endif
> @@ -271,12 +275,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
>         $(call if_changed_rule,cc_o_c)
>         $(call cmd,force_checksrc)
>
> +ifdef CONFIG_LTO_CLANG
> +# Module .o files may contain LLVM bitcode, compile them into native code
> +# before ELF processing
> +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> +cmd_cc_lto_link_modules =                                              \
> +       $(LD) $(ld_flags) -r -o $@                                      \
> +               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> +                       echo -T $(@:.lto.o=.o.symversions))             \
> +               --whole-archive $(filter-out FORCE,$^)
> +
> +ifdef CONFIG_STACK_VALIDATION
> +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> +# modules into native code
> +cmd_cc_lto_link_modules += ;                                           \
> +       $(objtree)/tools/objtool/objtool $(objtool_args) --module       \
> +               $(@:.ko=.lto.o)


What is this "$(@:.ko=.lto.o)" doing ?

The target is already suffixed with .lto.o
so $(@:.ko=.lto.o) should be the same as $@


Shall I fix it locally unless
I find more questionable code?





> +endif
> +
> +$(obj)/%.lto.o: $(obj)/%.o FORCE
> +       $(call if_changed,cc_lto_link_modules)
> +endif
> +


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASAHN%3D-uj73Uwk10aXbsR8AkUM_P%3D3NX_dq2SiFTqUctg%40mail.gmail.com.
