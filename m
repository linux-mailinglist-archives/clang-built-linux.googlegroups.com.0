Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6MXZSCAMGQEYUPIGMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id F09C7374A09
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 23:19:54 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id n128-20020aca59860000b0290159ccfcbd31sf1508670oib.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 14:19:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620249594; cv=pass;
        d=google.com; s=arc-20160816;
        b=02axBPhPgNKuppwNmP70EoOpUFyiaVA4iIaRv/VXJxec+drrPjRc76gwCcB2LaPvQY
         q+rXlvLkaKFqSeI94N3arix4Jz6LZM78Hod0xE7/cC/d+oL+YdlP5qPHpei7TKsxakhR
         +V+QbrdxBDdExTJL0cGRmXEdwRT9sWqj+YOZWDyfOK8yf5NPIB0Vq1FRxlVhaGicoZp1
         rgi/FRfd4lLnybO952URcHyyVOvVrSpTFdmBULvc6zURREMn8E5mS6GO8XfM6lWS8usu
         morx8w1HfEtNa/Ik7+/ehLPpWtS4H9iIPj1wLi9dXmp7ldyg10f7mR1MKcjVyOPIkPHb
         tlcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=d0eGlPpLrNC+rTynH/0I5hxmXHYfz81OXogHX3wWZlk=;
        b=xpL3TdJKTDjT64DdX5EHYYq24Ofy7fI71z5omTFZNLCFlj5LKGLxLIRwiLj5fuopBg
         DEm1bVCXJ5Rqu1xxyDLFVKwQl6UHmKGLiB+eVVwu2CGRJVe1UeCnM5ecuDRtyXmHg74F
         a5Yi2P2QZq+xKE5P0W+DEe37RARoZQWmIF20FzRa1eLP55x8TtD+CDpKZGT3kpwpT+js
         ndzJX24Nn+RNWv8iSfg6iAY0sBRG7b4J7BeHIN3DyZJmNjqma0tYfZnvd6ux8L/AwEdI
         3+5WZsswC78oUQkhGpFSZxkrrmEZAlslIkqjytinU1My7pIBs61uNL8UKB4zqfhcJH6e
         Ma0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kGB0dncy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d0eGlPpLrNC+rTynH/0I5hxmXHYfz81OXogHX3wWZlk=;
        b=mb0vL3DvbHMksO3EsTrM7XYh8Wt5mla7cktCUe3HEOKjQ1+NQ1BfJLxsGji1+2xbLI
         bEJX7d99zcQUaMF8kFx49iCGMZxZr3pXxyh0pEWALAn7B70/FtLrj5PsxwpxLgS2et1L
         sQv5gjseXGNEwNPXzYQVjmaYGCVAI9RnwS0zm21O2U91cFc5jkVvNniOicO8llBAbde7
         BuMEDgdco8tQnE17MXZ8ldONNVpftvWWlAgLhQxH6QzYHhPycqMA6q4rLgDxpM6dp5bU
         3pIRQsLHE7XOJoRJcg6BrbbZq3QAMh/VA60rFjJCwF4ioHFeDmoTjrGibY8CbVDh7Wop
         0uHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d0eGlPpLrNC+rTynH/0I5hxmXHYfz81OXogHX3wWZlk=;
        b=oFu51MY3JXv6MoOvPSsg+NsOcpWOmc7/K7EBnHzw7cXK4G7gbn2+/Q857WmvDWbrZD
         SlUIGjdn5cKsM1h0wNmptNAnDCIQrW9quXYu3L3DMcqlolDAmhrIuMlhhmsw6/ymSru3
         itpReyZPfKPkC4DGeoF6qeu+d9k+hRho4LWjQSgGZ+J3xx6LADL7AIWG4WUr3/BkEu+S
         BXhyg9rn4dUumHIftAL+iB2FI3co4CQvyvskysCmlXkymBdaxbxJFneud/BJl73lymMk
         ghY7l1rG9XrzdIRKLHut/Wt8Z30plSZVzcYKMKulPqJAp4PHlXeErAGo8FZHpk1PuGDu
         Fm4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53264T8GSI9O4jgEtmf2/UEjbjDtVC+/w9niYJ+BJoOD3uL1xflU
	rCdBPhrD9GACixIRaoiJPsM=
X-Google-Smtp-Source: ABdhPJwq08BBiMpWZBunEGg0lvVXbHZKEYLeT2cCgWTJgVyAD3ORz4jI+B57T1STytw2/hnmVjcLDg==
X-Received: by 2002:aca:c317:: with SMTP id t23mr8166512oif.159.1620249593953;
        Wed, 05 May 2021 14:19:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls109456otj.2.gmail; Wed, 05 May
 2021 14:19:53 -0700 (PDT)
X-Received: by 2002:a05:6830:187:: with SMTP id q7mr556626ota.277.1620249593650;
        Wed, 05 May 2021 14:19:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620249593; cv=none;
        d=google.com; s=arc-20160816;
        b=0M0Y8Tv7RQiauqni//jqmHRX7A9N+8YBnwZyvs+lAgUM5+0/7OajfVwx9QWhrY/zZe
         o2yjKRj1SbVGSsvtlAwhCHxhZMDzJ6zTBhhQfej9wigHovhp0phlcB1SB510xq3UysbM
         74F5SEmKA/uqrDwNbVkKJZ1JQ5Or8+rJcMRjWy4u8X4PkuWiCwZDjH+rdl0KGKQ0Lj5q
         xV7/6U2wKfObAYzS1gr8THjbDhGry9KW8HbTRytFB2hlW0MScSOKX67xM9+Dqe/tX8IL
         h2q0Wt9i1/xwWOpLBvINvDjnT1OekAdj5hheu6Lj/+7jZHUlFCcKyl4wMNgfGolQfx5I
         vo6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9nGzi5CNcRf8P6ukHnfVe+RHJcl1mNr7kPIzbkyiUvo=;
        b=MkPTjAynwmaUBy0nRXbZ4zFGVOZ+tRf6ygcRbgqVhFOYwn3+47PIcgS7HEHvGanMwL
         hmAvBu0TBX0afO8siPc3kFJcK75wxSGTV0onIvFiPrrBZ7uBqQcGPBRJsdQcsy02JZiC
         w9ekYbuBF/mxrth5Yp10OtmacBoDBHTIfQtLYbEuLfSU4iVxwUCdo5AL3AtzOGmfbUHb
         36ACA904iHQsNkpKRMmtVkS3R/5pJSeNLYsg1CQvvYHH4AP3ilrjvq1U8D8LkMpXm4Tn
         ZEMTT3FTWccZPbQgl6fKT1UJXuLwQqE9Xl20iX6M6r8bxdozFw6FdsGT8GqeZWmLSSzI
         ZVXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kGB0dncy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id c4si67479oto.0.2021.05.05.14.19.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 14:19:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id c17so3004745pfn.6
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 14:19:53 -0700 (PDT)
X-Received: by 2002:a62:8c05:0:b029:290:81ab:a936 with SMTP id m5-20020a628c050000b029029081aba936mr844363pfd.69.1620249592995;
        Wed, 05 May 2021 14:19:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a65sm149447pfb.116.2021.05.05.14.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 14:19:52 -0700 (PDT)
Date: Wed, 5 May 2021 14:19:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Elena Reshetova <elena.reshetova@intel.com>,
	David Laight <David.Laight@aculab.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] stack: replace "o" output with "r" input constraint
Message-ID: <202105051419.8F3C8EE58D@keescook>
References: <20210419231741.4084415-1-keescook@chromium.org>
 <YIIcoz4fHjVjWHTI@archlinux-ax161>
 <YJMKQFscszFcf5fE@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YJMKQFscszFcf5fE@archlinux-ax161>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kGB0dncy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, May 05, 2021 at 02:12:32PM -0700, Nathan Chancellor wrote:
> On Thu, Apr 22, 2021 at 06:02:27PM -0700, Nathan Chancellor wrote:
> > On Mon, Apr 19, 2021 at 04:17:41PM -0700, Kees Cook wrote:
> > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > 
> > > "o" isn't a common asm() constraint to use; it triggers an assertion in
> > > assert-enabled builds of LLVM that it's not recognized when targeting
> > > aarch64 (though it appears to fall back to "m"). I've fixed this in LLVM
> > > 13 now, but there isn't really a good reason to be using "o" in particular
> > > here. To avoid causing build issues for those using assert-enabled builds
> > > of earlier LLVM versions, the constraint needs changing.
> > > 
> > > Instead, if the point is to retain the __builtin_alloca(), we can make ptr
> > > appear to "escape" via being an input to an empty inline asm block. This
> > > is preferable anyways, since otherwise this looks like a dead store.
> > > 
> > > While the use of "r" was considered in
> > > https://lore.kernel.org/lkml/202104011447.2E7F543@keescook/
> > > it was only tested as an output (which looks like a dead store, and
> > > wasn't sufficient). Use "r" as an input constraint instead, which
> > > behaves correctly across compilers and architectures:
> > > https://godbolt.org/z/E9cd411ob
> > > 
> > > Link: https://reviews.llvm.org/D100412
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=49956
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Tested-by: Kees Cook <keescook@chromium.org>
> > > Fixes: 39218ff4c625 ("stack: Optionally randomize kernel stack offset each syscall")
> 
> Kees, were you planning on taking this to Linus or someone else? It
> would be nice to have this in for -rc1 (although I understand it might
> be too late), if not, by -rc2.

I assumed Thomas would pick this up. Thomas, shall I send this directly
to Linus?

Thanks!

-Kees

> 
> Cheers,
> Nathan
> 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > 
> > I built arm64 defconfig with and without
> > CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT with LLVM 12 (which does not have
> > Nick's LLVM fix) without any issues and did a quick boot test in QEMU,
> > nothing exploded.
> > 
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > Tested-by: Nathan Chancellor <nathan@kernel.org>
> > 
> > > ---
> > >  include/linux/randomize_kstack.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/include/linux/randomize_kstack.h b/include/linux/randomize_kstack.h
> > > index fd80fab663a9..bebc911161b6 100644
> > > --- a/include/linux/randomize_kstack.h
> > > +++ b/include/linux/randomize_kstack.h
> > > @@ -38,7 +38,7 @@ void *__builtin_alloca(size_t size);
> > >  		u32 offset = raw_cpu_read(kstack_offset);		\
> > >  		u8 *ptr = __builtin_alloca(KSTACK_OFFSET_MAX(offset));	\
> > >  		/* Keep allocation even after "ptr" loses scope. */	\
> > > -		asm volatile("" : "=o"(*ptr) :: "memory");		\
> > > +		asm volatile("" :: "r"(ptr) : "memory");		\
> > >  	}								\
> > >  } while (0)
> > >  
> > > -- 
> > > 2.25.1
> > > 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105051419.8F3C8EE58D%40keescook.
