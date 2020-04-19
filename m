Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKO66L2AKGQE63PG4AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C6B1AFDED
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 22:06:02 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id h26sf9641677ilf.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 13:06:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587326761; cv=pass;
        d=google.com; s=arc-20160816;
        b=HkmvJ2V9QCfnxQigMeDXbZXj85ToUf3Nngd2AwQxV/oh7Tj9oPPheyf60M4LGXds6y
         irqID+tm/wa3A8AQOOG0YIldA0ZAtk1uQFKBptj1Dc9yF3N61u+MTxPx6+njayuYotNH
         MrX8IQHZOpVppE90WIpzf7ntOU4zVbQLUGe6LSh0PchXiUFRUffg9Y3B7nAjQG4a0vtY
         YffUVqB0ADHwUuZWX9vB3kzdjSYXXmTzqsNdZ7sBQOOQDZxo1CigV2bnddY0mAqYQaPX
         wcePc3P24KhB5ATbDiKBZUyw3bGwpJGZX+QXliH1xjj6M5FOEx7cnMCZv4MdqD9ZUlM1
         YeqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ZpOIUCMtZTONKKoy+tpnUDBGf03/imQUocYj6osX5lU=;
        b=G/u0hM3zp76PipGFgPKHjGw9e7qxRXG5K79SVS0FYKRZNCtl+4KC4bzFGOGu0zvURg
         jaacdvAyWdPEKrBI9U29Oo7h4cRa3UggOaX52/yZUOcnFfoE6pkoylP+3da6uVDWqWoM
         yHQtrLFb8visVvXvNxaBg7bAWnKaNWqPb07n3DTJT7iig8dSDR8pXy203ObwFr1kByDx
         pBn+LmV7qwMmYMN9Lj4zXl9rFCNPEof4IL5TxSyjrcztMoiu3en2pwWRkdSauAtHXK9T
         7PR2eNA6yMikp6KjNiDlkim/gw5U1/T2RoaUort/MzzvkZXVR2RwXbzFFeiQFC7YVsVm
         h2Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unqQADth;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZpOIUCMtZTONKKoy+tpnUDBGf03/imQUocYj6osX5lU=;
        b=SjZtzm0DWzbLMo7jfmcWMnp3jx8CgiBA5S6R+OyWBqSZd9GRQSeWE4G5khEu4z+/gU
         x+bb3lLGZTHgngqcTKe3GmAfRCdEZa/RfOau0VwLuBShmY0XIVvJJSjnnA9fDTGgRZiL
         eCIfrBsVRA++CsId3gZks55ey4XLSR2wJQKRKX+HFuWaVQeupJm/yVX4joMAGx/XviqQ
         IkSNLGt8mxgXyMFIoTFk/3ho01apCQY0Zn8FcRSs6Wd2rrnUAceIdc7Bhb1JeRRSbjbo
         YWh8oDxmMlRpkgYFG0ab8EPHkDWz6RZ7c+Afzy+SAYcsLzOeqCVrxIcEjsyMxNidsuI/
         q60Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZpOIUCMtZTONKKoy+tpnUDBGf03/imQUocYj6osX5lU=;
        b=r+piN6/vSie/seiSIDMRSqLYyW4BThGMGoXYf4LAuGofus1E3vDEU/Zh3DAgyMJqF0
         hn76sDZXlFhr1f3/Mxk4vPr2JM5hlDc/CvbF8QAsuNOcqkiys+IH7cxsLytgYAioNuE3
         DeNujTrcq8tzOtMgZjl6ia+zy0bChmwPFSxB8PUcfyarV5yoJ1lP6pM/tGhF3H/GLY5i
         ssvyrr7qGlONH3Gmsdb86Y2IhWYguAvr1Mz+ym2DGVMw51EdgdrPtED2nXcY+ga1jcDW
         FHAN4RAB5kyStbIeBu7pjejabnpQu6SaP6SxC87VdL3KNTSMEZDR6oFxnA0nOBd7+nBI
         HOfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZpOIUCMtZTONKKoy+tpnUDBGf03/imQUocYj6osX5lU=;
        b=bfUFNI0Gm2Na5nyRsH1AMRZZiXOth9ZB4S+VqmULpws5DsGXgWuzZjtwk7DAw8HkSU
         Kea2bd2iOBveVXwN41hwoR/7VW1eVv/KAgcNJefzf8XxlaiUDI/Zn3hy3c8+Ec5YWJxW
         RPTwdJmRYWJ13lKdP35s4dLyD/K8pmlnIy4Pheqp+0++wLYn3R0D9HspjA8CRMBnhBFE
         +GM2fcHE98hk39NNGWr8VsZbXIb9rt1faeB95wdTlxad0gqKfR3Q7C3A51Qw3u+9Groe
         lR0ZGkEpyKFCUzMpaLtqqx9R8/6M/WrovD9P4dMEAgvrJtYaI99Ots+a1T7sMGsfvDkT
         VjIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puan/drIsAxazU98YgRGDfrLiidr3GZaoFbi/N5BghDdvdJmgcZC
	sqKGxN675gXIMq20Rghnu6s=
X-Google-Smtp-Source: APiQypIXEbYmYe8cpZFSM5eWQbmsu/dbc/PW8yjd2ZR50qUdE0u2AMZA++zoVdU1kX9BSViy607g1w==
X-Received: by 2002:a5d:8744:: with SMTP id k4mr12630100iol.62.1587326761656;
        Sun, 19 Apr 2020 13:06:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls2544568ioa.9.gmail; Sun, 19
 Apr 2020 13:06:01 -0700 (PDT)
X-Received: by 2002:a05:6602:d:: with SMTP id b13mr12665446ioa.176.1587326761312;
        Sun, 19 Apr 2020 13:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587326761; cv=none;
        d=google.com; s=arc-20160816;
        b=xH4PQOWDeHzNbHJtY4Xm15o9PniKP/Z9qeYyq59iGHMbma1FQ6IJoqgxJpLWjcjyqG
         uEtt8MhcW5zQb9aDR2/2RGJ6S7krWpoTs/yuBenAFRhELzJ+vnAjQ4u6X8tlb7YOB0PS
         Fq7LkEQednCLPeD+6YdurgkpeNzs9d4QfRNowcMZMSzSG6f8xG4qRFvB4GBCX6Ie1cl1
         6rM5TsVFXuzLZSkxDrEITCAAliNf17pyj+/ZxazQ7eVu+V9nPHiYwuVIIERXFATmRupt
         GnWaOGp8yE4G8WpBWG4b8Ye6SlqZRYIDxkyImGcy+106Oa4aKF0o5SeJ/XqNa3VdPTGg
         qcEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=c83bq8ed+sqgwSVUBCBP9r/j44GMioCiEFSCJDfpF7U=;
        b=XDatuBUUeYdDqDhwflhKAqBiAawvvVVGKrtv0691RGJy3oF88KppOn40dvJuc9UqDA
         gHLGalfYKOCAo203OaaZzdu+klNyYZfgRACaLeEJJ2PE0NjL1c1HIKqQjwTyKPPVFIV8
         ynFMH2mbTX+8K+EXkgfOCnNHkdpzTxowwo0oUZLvK3Pdhj2Ab7xAjlhhvcmXxDw2uWlg
         7vGdqRPkhjvUw+Owy0zwBQUddr0+CQcFAvXeNznt5HMY1D6uNc7H/BIch9pDsT/CTTE0
         G7qibVd+RKEMBRzkm8LF6dunlkF9QN7nJxHRoupGjM3sG2ByutCcUMd8c4TU9opak90J
         UYcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unqQADth;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t125si2760833iof.4.2020.04.19.13.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id r20so3891198pfh.9
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 13:06:01 -0700 (PDT)
X-Received: by 2002:a63:41c2:: with SMTP id o185mr12868739pga.139.1587326760839;
        Sun, 19 Apr 2020 13:06:00 -0700 (PDT)
Received: from Ryzen-7-3700X.localdomain ([82.102.31.53])
        by smtp.gmail.com with ESMTPSA id s66sm10858784pgb.84.2020.04.19.13.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 13:05:59 -0700 (PDT)
Date: Sun, 19 Apr 2020 13:05:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	linux-mips@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH 2/2] MIPS: VDSO: Do not disable VDSO when linking with
 ld.lld
Message-ID: <20200419200558.GA13017@Ryzen-7-3700X.localdomain>
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419180445.26722-2-natechancellor@gmail.com>
 <20200419181715.GA36234@ubuntu-s3-xlarge-x86>
 <CAK7LNAS7QHB3GuBeLDh66OHbYRMzmNQNwiueU7jH1i7v0UTAAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAS7QHB3GuBeLDh66OHbYRMzmNQNwiueU7jH1i7v0UTAAQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=unqQADth;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Masahiro,

On Mon, Apr 20, 2020 at 04:32:20AM +0900, Masahiro Yamada wrote:
> On Mon, Apr 20, 2020 at 3:17 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Sun, Apr 19, 2020 at 11:04:45AM -0700, Nathan Chancellor wrote:
> > > Currently, when linking with ld.lld, this warning pops up:
> > >
> > >     arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25
> > >
> > > ld-ifversion calls ld-version, which calls scripts/ld-version.sh, which
> > > is specific to GNU ld. ld.lld has a completely different versioning
> > > scheme (as it follows LLVM's versioning) and it does not have the issue
> > > mentioned in the comment above this block so it should not be subjected
> > > to this check.
> > >
> > > With this patch, the VDSO successfully links and shows P_MIPS_PC32 in
> > > vgettimeofday.o.
> > >
> > > $ llvm-objdump -Dr arch/mips/vdso/vgettimeofday.o | grep R_MIPS_PC32
> > >                       00000024:  R_MIPS_PC32  _start
> > >                       000000b0:  R_MIPS_PC32  _start
> > >                       000002bc:  R_MIPS_PC32  _start
> > >                       0000036c:  R_MIPS_PC32  _start
> > >                       00000468:  R_MIPS_PC32  _start
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/785
> > > Link: https://github.com/llvm/llvm-project/commit/e364e2e9ce50c12eb2bf093560e1a1a8544d455a
> > > Reported-by: Dmitry Golovin <dima@golovin.in>
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >  arch/mips/vdso/Makefile | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> > > index d7fe8408603e..f99e583d14a1 100644
> > > --- a/arch/mips/vdso/Makefile
> > > +++ b/arch/mips/vdso/Makefile
> > > @@ -65,9 +65,11 @@ DISABLE_VDSO := n
> > >  # the comments on that file.
> > >  #
> > >  ifndef CONFIG_CPU_MIPSR6
> > > -  ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
> > > -    $(warning MIPS VDSO requires binutils >= 2.25)
> > > -    DISABLE_VDSO := y
> > > +  ifndef CONFIG_LD_IS_LLD
> > > +    ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
> > > +      $(warning MIPS VDSO requires binutils >= 2.25)
> > > +      DISABLE_VDSO := y
> > > +    endif
> > >    endif
> > >  endif
> > >
> > > --
> > > 2.26.1
> > >
> >
> > Hmmm, I still see this warning when first runing make <config>... I
> > assume because this Makefile gets parsed before Kconfig runs.
> 
> 
> I do not see the warning for 'make <config>'.
> 
> Could you tell me how to reproduce it?
> 
> 
> For cleaning, indeed, i see the warning.
> 
> 
> $ make ARCH=mips  LLVM=1 clean
> arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25

This is enough. I think I figured out how to avoid it, I'll be sending
out v2 shortly, I'd appreciate any comments that you have.

> >
> > Perhaps it would be better to check if ld-version is 0 (since that means
> > we are not using GNU ld):
> >
> > ifneq ($(call ld-ifversion, -eq, 0, y),y)
> >
> > I am open to suggestions though.
> >
> > Cheers,
> > Nathan
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419181715.GA36234%40ubuntu-s3-xlarge-x86.
> 
> 
> 
> -- 
> Best Regards
> Masahiro Yamada
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419200558.GA13017%40Ryzen-7-3700X.localdomain.
