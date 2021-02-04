Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQGV5WAAMGQE3V2EKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C43DD30EAEF
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 04:32:17 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id y187sf1356076pfc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 19:32:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612409536; cv=pass;
        d=google.com; s=arc-20160816;
        b=DcL0h1Bcg1WU8SewHO4JS6eRjprV5bXxoQF75mk+DhsSc3lD5+1Cbms9hzt96baocH
         G+4vLfkgHRZC7n5LtLkphqq8Fs5rjLNPEUHlo86T0KOp75LtVaLyePpQsZNUGuDIjtrs
         HtKN/bxWszRV7V54DQ+xzwzVVjL7LhHcuDH/mpYbbOr7ieGW07F7qs3h88dYCUhPzHFR
         9tFt7YgiLZFFbB7nBhjDV1cwLpP+MkYuOgM1HC3yU0DSTBMjewR0RXandmUn2DEIALxq
         ucb/DjisnnlCSR3KQO1L/r2kqDz8Lw1kO8YceqIT1uitbpW3gxDCtaEigObtluh/jytC
         kLJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=/vrjiOkBTEbmls3+VZaPTMg9yTIjxwsPMRGTJ9iN0hE=;
        b=OHykF8RXoVdhUyXTggviPUR4k+Mb+272I0BjqKTpjWAHpPKrXBEVIx05FBZslnMYLs
         xHeTf4n3hrDbEcsnYzFRboFNzowxl1oECD0XyjB3faN62uJJdEokoBpR3D7xMejk53zV
         CkCmrD+iFWcCsuVvIX/CmGRX1nVExWVloiVjUiatotWErQLA0BEBou7wpEwhcjuTlz9A
         HTecr/B4sutsLJ8dnXNggPDbXFc/mGNxyiyay4lJAb7zIV3ff9Q9P0dBCFo75Cn7c41r
         5lw8R0RWyY59SKnCnM4lLybOnOTwWpX1f7rjDu/UatzXEQkrOqqQM1QSjPT/LQEQpHxC
         3HiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vO7GGOQk;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/vrjiOkBTEbmls3+VZaPTMg9yTIjxwsPMRGTJ9iN0hE=;
        b=Z+SPOQpnnXDtxHpOdxFH4VO6hN2vE1TrLf+NtsslXtLon2tPFexByz5q4enGEO4I9t
         AnRz23nmxGpbVibz6c2UtuLlG0mRbb4fOw8Pn1qSos7nceBpvRFexGb1dO9XILrT0Frh
         OJJEj69CL83LUaFOUSawvgYZbmCPb1Xv01l5F1jFunl/wsYAd5mcZKkyUhmMb+NnOzFX
         vB4F0DbOzgBaRrLALf2cMED8R7xSjtWh3fhDaMB1Sk0LT9afEBtHRn4CgyxhrqPHWRfo
         qHRmSDH4G41ixYWkeE1PHIJrSqRqdSm8g52cVPTvKVlverbwPHxoeI8Wv7Wem8rRsunO
         mbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/vrjiOkBTEbmls3+VZaPTMg9yTIjxwsPMRGTJ9iN0hE=;
        b=LbkotU9VlXHMfZ7Q8NvBZjwNpypTWe9xSZqxKx9wz6x5QUURjaalhsgiMBOH2frRwT
         d4H6Vy9iRHSsfUvATVgHO41PcRk2GWOm2xB6gNMxfCXVr9nx1SdKB2PV2tQg3qR8D4mb
         fw61RLsVXEER2kVfwwp224iSghWAc2haS/4M8mAcdD+IfYVD0M5bo7C0L7b6CAeMaHkf
         D/8w5YEKDER+gIQqbCY7R+1Yxpgl8Qqxjy30e791pnoEF5pGcsnwCjmv/SrR1MuNemvM
         mYKWfQaYOFf7aRjVH805GGZcSZcfPt5/fjUscoOl77DxxLa4uQq2t26urJ0G/SeKfk9E
         mdaQ==
X-Gm-Message-State: AOAM530VCarq26QB/aEN1on/YVEZzXyTFFn9El2Z3FlEo/UH6zCYEWzq
	6IbraF9YxZiH78mnhL5AoSc=
X-Google-Smtp-Source: ABdhPJxL7xAyk/PV24ChGfibrMzmaixo6888YooxCN37vb6mNJ7RQsUDLQK/2+evxFZKTssh0QOe8g==
X-Received: by 2002:a17:902:a60b:b029:df:ec2e:6a1d with SMTP id u11-20020a170902a60bb02900dfec2e6a1dmr5941740plq.27.1612409536415;
        Wed, 03 Feb 2021 19:32:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls1735236pfi.3.gmail; Wed, 03 Feb
 2021 19:32:15 -0800 (PST)
X-Received: by 2002:a05:6a00:138f:b029:1b8:b9d5:3a2c with SMTP id t15-20020a056a00138fb02901b8b9d53a2cmr6131374pfg.10.1612409535784;
        Wed, 03 Feb 2021 19:32:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612409535; cv=none;
        d=google.com; s=arc-20160816;
        b=MyK8vgQqPmT912a5KvgbT8ad2ByyAGfqCwVankscifYu08svRTqPpTeON3Q4wMWwe6
         J6JlCxEeuppZt55qbvU+JdAcmrRwlxgUA4+ykPZkRVuj4GS0KWDOpsiYkNOweO0Gqy23
         tm8YqHD+3iSPxkbRY/KpW6wxuORSeXpww3QYldkMES0Goo8U69ODwZUVUWyucFD/HYUY
         PWbGb2y1MZK7HHxxnms25J2pHg7HiWJyb7UC0y35NxTIbbIqZe4Gc21M1W+Y/7sgndhI
         +queZjl4D+4hUBVm/F+VPH4GZnEmEfFd6qqxHw0hSkLB+2zrb9b1ukTCCoW/h4M7gOyh
         mbUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=gQHcS0Zulo4R/LyMo03/XNTnPCP/zAgLWckCskRb6ro=;
        b=lQG2cgg8FyUapr0nqFl5Y5DtNwWQ/eECRGzqN+biC22NRXQllDtAl2CKJqPYjiB1Ka
         ClLSTIDufKTv0n0Xz8gpRyEPpqb9DK7qcxW/wrur1TVu44CNYOsMi90iy+nVAaf6iAHA
         to1ujGivMZw54QijnYXwG9Q9dszXwZ56jQxODzrmeFTocwiTEc9WLxhu0Voem2lbfB7p
         LdDuM34pR65F4ultKbfVtPsTllNIDOdBiZeEG89rTJxbjnW/GjFrgm0UqQDPTJlvht+M
         l1wMDKQR2QBeS+ZsiiZL8hAI+mMkl5F5f7KshAXzuAZWJXsW5TCRgGAuZm77BiG/WIsH
         FWFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vO7GGOQk;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id l22si505878pjt.3.2021.02.03.19.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 19:32:15 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id y10so1009132plk.7
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 19:32:15 -0800 (PST)
X-Received: by 2002:a17:90a:206:: with SMTP id c6mr6442140pjc.50.1612409535272;
        Wed, 03 Feb 2021 19:32:15 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:4d44:7b6c:ce63:a46c])
        by smtp.gmail.com with ESMTPSA id x21sm4296908pgi.75.2021.02.03.19.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 19:32:14 -0800 (PST)
Date: Wed, 3 Feb 2021 19:32:10 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Jakub Jelinek <jakub@redhat.com>, Caroline Tice <cmtice@google.com>,
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>,
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
Message-ID: <20210204033210.ie2a5zuumtlb4jth@google.com>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com>
 <20210130015222.GC2709570@localhost>
 <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vO7GGOQk;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-02-04, Masahiro Yamada wrote:
>On Sat, Jan 30, 2021 at 10:52 AM Nathan Chancellor <nathan@kernel.org> wro=
te:
>>
>> On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
>> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
>> > the default. Does so in a way that's forward compatible with existing
>> > configs, and makes adding future versions more straightforward.
>> >
>> > GCC since ~4.8 has defaulted to this DWARF version implicitly.
>> >
>> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
>> > Suggested-by: Fangrui Song <maskray@google.com>
>> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
>> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
>> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>>
>> One comment below:
>>
>> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>>
>> > ---
>> >  Makefile          |  5 ++---
>> >  lib/Kconfig.debug | 16 +++++++++++-----
>> >  2 files changed, 13 insertions(+), 8 deletions(-)
>> >
>> > diff --git a/Makefile b/Makefile
>> > index 95ab9856f357..d2b4980807e0 100644
>> > --- a/Makefile
>> > +++ b/Makefile
>> > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
>> >  KBUILD_AFLAGS        +=3D -Wa,-gdwarf-2
>>
>> It is probably worth a comment somewhere that assembly files will still
>> have DWARF v2.
>
>I agree.
>Please noting the reason will be helpful.
>
>Could you summarize Jakub's comment in short?
>https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.187=
5129-1-ndesaulniers@google.com/#23727667
>
>
>
>
>
>
>One more question.
>
>
>Can we remove -g option like follows?
>
>
> ifdef CONFIG_DEBUG_INFO_SPLIT
> DEBUG_CFLAGS   +=3D -gsplit-dwarf
>-else
>-DEBUG_CFLAGS   +=3D -g
> endif

GCC 11/Clang 12 -gsplit-dwarf no longer imply -g2
(https://reviews.llvm.org/D80391). May be worth checking whether
-gsplit-dwarf is used without a debug info enabling option.

>
>
>
>
>In the current mainline code,
>-g is the only debug option
>if CONFIG_DEBUG_INFO_DWARF4 is disabled.
>
>
>The GCC manual says:
>https://gcc.gnu.org/onlinedocs/gcc-10.2.0/gcc/Debugging-Options.html#Debug=
ging-Options
>
>
>-g
>
>    Produce debugging information in the operating system=E2=80=99s
>    native format (stabs, COFF, XCOFF, or DWARF).
>    GDB can work with this debugging information.
>
>
>Of course, we expect the -g option will produce
>the debug info in the DWARF format.
>
>
>
>
>
>With this patch set applied, it is very explicit.
>
>Only the format type, but also the version.
>
>The compiler will be given either
>-gdwarf-4 or -gdwarf-5,
>making the -g option redundant, I think.

-gdwarf-N does imply -g2 but personally I'd not suggest remove it if it
already exists. The non-orthogonality is the reason Clang has
-fdebug-default-version (https://reviews.llvm.org/D69822).

>
>
>
>
>
>
>
>
>>
>> >  endif
>> >
>> > -ifdef CONFIG_DEBUG_INFO_DWARF4
>> > -DEBUG_CFLAGS +=3D -gdwarf-4
>> > -endif
>> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
>> > +DEBUG_CFLAGS +=3D -gdwarf-$(dwarf-version-y)
>> >
>> >  ifdef CONFIG_DEBUG_INFO_REDUCED
>> >  DEBUG_CFLAGS +=3D $(call cc-option, -femit-struct-debug-baseonly) \
>> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>> > index e906ea906cb7..94c1a7ed6306 100644
>> > --- a/lib/Kconfig.debug
>> > +++ b/lib/Kconfig.debug
>> > @@ -256,13 +256,19 @@ config DEBUG_INFO_SPLIT
>> >         to know about the .dwo files and include them.
>> >         Incompatible with older versions of ccache.
>> >
>> > +choice
>> > +     prompt "DWARF version"
>> > +     help
>> > +       Which version of DWARF debug info to emit.
>> > +
>> >  config DEBUG_INFO_DWARF4
>> > -     bool "Generate dwarf4 debuginfo"
>> > +     bool "Generate DWARF Version 4 debuginfo"
>> >       help
>> > -       Generate dwarf4 debug info. This requires recent versions
>> > -       of gcc and gdb. It makes the debug information larger.
>> > -       But it significantly improves the success of resolving
>> > -       variables in gdb on optimized code.
>> > +       Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7=
.0+.
>> > +       It makes the debug information larger, but it significantly
>> > +       improves the success of resolving variables in gdb on optimize=
d code.
>> > +
>> > +endchoice # "DWARF version"
>> >
>> >  config DEBUG_INFO_BTF
>> >       bool "Generate BTF typeinfo"
>> > --
>> > 2.30.0.365.g02bc693789-goog
>> >
>
>
>
>--=20
>Best Regards
>Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210204033210.ie2a5zuumtlb4jth%40google.com.
