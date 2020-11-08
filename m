Return-Path: <clang-built-linux+bncBCIO53XE7YHBB2XIUD6QKGQEQQTKZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id F03D82AACBA
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 19:09:47 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id n2sf1956039pjv.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 10:09:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604858986; cv=pass;
        d=google.com; s=arc-20160816;
        b=zzBo0s5+pWbSJ9g9iVeMUYvocqUrcTpMwxRgfusgV4cGwZXkl77pEUcr5SIK1g/RvS
         bCQ9qRT9GXEtOHVSafr1qmIrDEGoTDvMUqV3lO8qhJ8HXj0NrAQ3YBZzZZS9M6cvuHyZ
         n7QX8kb7+8JvrLe8Hxu5QT4/ZpCAZfNSac1J2W12hQ0kp+PJKt1iWB0TAyiYAuDB+ffu
         kuu2r7ZUW7qQtUXrLtdFkee/48VHCw06C+/AcbCl5FoOYUPwbklLcqfaehVnyGFWx5Rt
         G65XGeVy9314kvQ8vNjwk87KsJcxSUviG920wlMALBfAqx9Pox8W5xnOv2RhgxYBBCmU
         8UVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=GRfGYlDPRq/TOQdy55xxsrIejpdvtGt0LbdZLg0SX/I=;
        b=TDZNVfAiorZYHXM7zs5TTwIPBaZmHjj4TphM8aa7xFt2PsXkqbmD3B/7yvayV+tvfn
         2mKbq3UUMl2AXgcDjVI+C8bx9R4KcI/mDxqZZeI44uhCfXkmYajn3xvucCd8T9zFpb0o
         8VJoHvrfWB98leiNqUHnrf54i1GUj1Szf2Ec62begFPGfalMnsPrMRUz1yrPM3JKSkDV
         7AS2gk2fCLvRr4G0xvRWILxwRe9Nl/w0euU10/J69s1g7DXCNuKoHc5FH83gwhqKn4IA
         2q0BLGrT1jHtG5gt5sSjtQQ+yDqwmi5z4+fjXfDcGg20l1KLc1mGxQ2ph8jYn5hS6HVS
         EYyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HjUj3vk1;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GRfGYlDPRq/TOQdy55xxsrIejpdvtGt0LbdZLg0SX/I=;
        b=g96/b6sp2twPGo0wgXmBVwVkjGLdIo59B0lUBKw5VnGcYCXkNIkP9eK4m5x28wC+tg
         vDmNvgI0bJ4w4pXbk9DtibBQGoSNMYoylnC0Y9vir5P70+cXNiVubaJ5gdqsro+BENA4
         KOXBfcbEmj3lVcA1sK/vJzqM/99B3J12rc7wbFmAC1Ls4zCDJnRjp5Djlv+pH/ctb1cm
         0lSdUVYjKwX93M9WudWNxTnCmdw1WGCDV1ibU8FUQDDA87f6cLrW1MQZ+JttMdCgKG6f
         +H7aXKRKALw1iRq05NSZF5SxKdDKFniZ+6HmHllyljeVh6vKjHVBNbO1qtHKuYZKbdFu
         oMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GRfGYlDPRq/TOQdy55xxsrIejpdvtGt0LbdZLg0SX/I=;
        b=b4fRUY1wAjWfzpYvjKYWXLpoGej4f1jZy8lGGzhEZY6TrFvVQfNF7XTDtG4b+tG/I5
         PURt3LbUIf8sd1gKcvT8SuVRTObrBEZUrzrJm7k0kMmgosEpq1rnZ3uWRQEBdxwxw9lW
         3lXJOP3PPGzf/Fldg6gOqaUZqAIF3C0evIxajfHEaKlqlKowqD0ERz+gHEgkge1QjXUs
         7t3VKvQV2oXdZw6Oi0NtCiBBkrpCGORjzUM10b28w0tGM1DsOMsWt4xiev9wj7DZVKbI
         F/v4fcZ25rZOvYSJwM6vvr+vz0xbqdm8swXZ6sWfyZI9iEMWmBmBusEbJe4gXLVGsHKE
         bWqw==
X-Gm-Message-State: AOAM532lgw0j4M6qzDPQWrLQQZFNAn28Ha8C8p19SCuCecA0c0TJo8pV
	uOWsyZAHckllv3cm2bP0JKw=
X-Google-Smtp-Source: ABdhPJwO5LB3h/DEEaz9zaQQkFGVYgyrSDBbtVZ0MMqtnEAupRMX0LQAktAr/t4SjrLo/1HV2ATfUg==
X-Received: by 2002:a62:3286:0:b029:18b:3583:f4b4 with SMTP id y128-20020a6232860000b029018b3583f4b4mr10210228pfy.59.1604858986429;
        Sun, 08 Nov 2020 10:09:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a8:: with SMTP id q8ls2522574pfs.9.gmail; Sun, 08
 Nov 2020 10:09:45 -0800 (PST)
X-Received: by 2002:a62:25c7:0:b029:156:72a3:b0c0 with SMTP id l190-20020a6225c70000b029015672a3b0c0mr10651024pfl.59.1604858985690;
        Sun, 08 Nov 2020 10:09:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604858985; cv=none;
        d=google.com; s=arc-20160816;
        b=sL1F5wXtHP5+IPTSZpkRmcmSFs6WwKUV+wNmTSD9h2E960FBqGhxnHcqAlN2O5uMcJ
         NHdBXcvddIy2SzOj5CNjeyb5ClfJmGi4IFhB/CdBW/BqJcIP8FGtd4Qa9SoWAM0dwzyj
         NpdHww43kEZlrwqXeWhJKcwWEiFVPej1u64Ui0hHi3qI1UJKS/89halE0ZIhasUwhQ5/
         jUfTAf90e/wwSgchLkipvlUYSEoZYgSNcw5QUXHbOEkQYsQE/FWDaZru5UWBHEraIqhg
         Gsz8LzgU/c3oBBRCNAOSf4vEWD0de/gbAbcAtE/bAagZ5s0cgNjReFWhM4s3Chhato8j
         lVUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=G5g4G9/pMoKvIIjm2dH1OzGwv4YgDFb04vpHh+6il6Q=;
        b=q3bq43xHen9qC8JudONtmlV1bpyZMkC/izVBKpEOc4kafCVAv4qJylGq7tvIehKt7U
         a59XZwPD6drXEFbnBhYtw+XKwGAax/E1uqfNQlEhTxjiQ4cb+hJOk+ckgD9DGOFEjK0P
         mtPW1+Mj2XEhWjjHjJ51U8wc+2RFzyLjAkSpaYxv7QI1i6nD6pyT/UNXJFm7cD4Gz7ad
         r0+iScN0WEd61ZxdY2Je0iXYbHOeNHfHBfKQ+cIC/0sz2/zAkmYTIMgT3VLmj4ZXcsZ7
         XC5OdfG2hEDZ3F3LtN5GZF//MbuVzheSPbAgEkLsdJQ52xE50hZqMy1o6b65SEc2WXqv
         Wx+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HjUj3vk1;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id iq1si516444pjb.2.2020.11.08.10.09.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2020 10:09:45 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id 7so147028qtp.1
        for <clang-built-linux@googlegroups.com>; Sun, 08 Nov 2020 10:09:45 -0800 (PST)
X-Received: by 2002:ac8:b87:: with SMTP id h7mr10068398qti.87.1604858984780;
        Sun, 08 Nov 2020 10:09:44 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id q70sm4790359qka.87.2020.11.08.10.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 10:09:44 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 8 Nov 2020 13:09:42 -0500
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201108180942.GA226037@rani.riverdale.lan>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201108174014.GA219672@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201108174014.GA219672@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HjUj3vk1;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, Nov 08, 2020 at 12:40:14PM -0500, Arvind Sankar wrote:
> On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote:
> > Due to a Clang bug [1] neon autoloop vectorization does not happen or
> > happens badly with no gains and considering previous GCC experiences
> > which generated unoptimized code which was worse than the default asm
> > implementation, it is safer to default clang builds to the known good
> > generic implementation.
> > 
> > The kernel currently supports a minimum Clang version of v10.0.1, see
> > commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1").
> > 
> > When the bug gets eventually fixed, this commit could be reverted or,
> > if the minimum clang version bump takes a long time, a warning could
> > be added for users to upgrade their compilers like was done for GCC.
> > 
> > [1] https://bugs.llvm.org/show_bug.cgi?id=40976
> > 
> > Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> > ---
> >  arch/arm/include/asm/xor.h | 3 ++-
> >  arch/arm/lib/Makefile      | 3 +++
> >  arch/arm/lib/xor-neon.c    | 4 ++++
> >  3 files changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
> > index aefddec79286..49937dafaa71 100644
> > --- a/arch/arm/include/asm/xor.h
> > +++ b/arch/arm/include/asm/xor.h
> > @@ -141,7 +141,8 @@ static struct xor_block_template xor_block_arm4regs = {
> >  		NEON_TEMPLATES;			\
> >  	} while (0)
> >  
> > -#ifdef CONFIG_KERNEL_MODE_NEON
> > +/* disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976 */
> > +#if defined(CONFIG_KERNEL_MODE_NEON) && !defined(CONFIG_CC_IS_CLANG)
> >  
> >  extern struct xor_block_template const xor_block_neon_inner;
> >  
> > diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> > index 6d2ba454f25b..53f9e7dd9714 100644
> > --- a/arch/arm/lib/Makefile
> > +++ b/arch/arm/lib/Makefile
> > @@ -43,8 +43,11 @@ endif
> >  $(obj)/csumpartialcopy.o:	$(obj)/csumpartialcopygeneric.S
> >  $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
> >  
> > +# disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976
> > +ifndef CONFIG_CC_IS_CLANG
> >  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
> >    NEON_FLAGS			:= -march=armv7-a -mfloat-abi=softfp -mfpu=neon
> >    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
> >    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
> >  endif
> > +endif
> > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > index e1e76186ec23..84c91c48dfa2 100644
> > --- a/arch/arm/lib/xor-neon.c
> > +++ b/arch/arm/lib/xor-neon.c
> > @@ -18,6 +18,10 @@ MODULE_LICENSE("GPL");
> >   * Pull in the reference implementations while instructing GCC (through
> >   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> >   * NEON instructions.
> > +
> > + * On Clang the loop vectorizer is enabled by default, but due to a bug
> > + * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
> > + * so xor-neon is disabled in favor of the default reg implementations.
> >   */
> >  #ifdef CONFIG_CC_IS_GCC
> >  #pragma GCC optimize "tree-vectorize"
> > -- 
> > 2.29.0
> > 
> 
> It's actually a bad idea to use #pragma GCC optimize. This is basically
> the same as tagging all the functions with __attribute__((optimize)),
> which GCC does not recommend for production use, as it _replaces_
> optimization options rather than appending to them, and has been
> observed to result in dropping important compiler flags.
> 
> There've been a few discussions recently around other such cases:
> https://lore.kernel.org/lkml/20201028171506.15682-1-ardb@kernel.org/
> https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
> 
> For this file, given that it is supposed to use -ftree-vectorize for the
> whole file anyway, is there any reason it's not just added to CFLAGS via
> the Makefile? This seems to be the only use of pragma optimize in the
> kernel.

Eg, this shows that the pragma results in dropping -fno-strict-aliasing.
https://godbolt.org/z/1nfrKT

The first function does not use vectorization because s and s->a might
alias.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201108180942.GA226037%40rani.riverdale.lan.
