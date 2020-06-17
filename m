Return-Path: <clang-built-linux+bncBCIO53XE7YHBBL5KVD3QKGQEV66ZFLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E561FCE0F
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 15:05:52 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id o187sf981263oih.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 06:05:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592399151; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z2fVcuynic3E9blKysC5+uqAdRUUUEjJ9o9higwYaR9pH8sMBIH4sT0k4YgvYNtDFI
         fncJyMNMDC5PJHeMAIjtw5rKDt6XIeD2BebBA9K4PHF0V+UK8YXxn9phrnxYgsBykhZH
         rIjiqRdIXTl9QSWQ7ua72vWJHqIC7rPKjhbPaA7punV0xKNXRIkl0IULSpzeX19y7Or1
         iBxADr5prO929httXXpQ3xCSIIDN8gF4iR63rV9y0wqRqyjMqUw5X0zKh/CvNkLuX3Yp
         WOFoG5JzaaHztSi4qgGBAzFt7wOBtVU8qHM1c3xZtWgr+zOflnhklrKuC+bzL1QaHGla
         ea6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=/qs28V0sRvIGbWCSqIdZPbtFXmGlOsCC+nwImaitaKk=;
        b=DslwWqy4KxX41vhkh1FEUDavTu6uiVyik+uYVyyhollWSwRkAqmFnMaY2hJE5L5G1e
         /6DN/N8gzQw1j6MRQs2NeAwaZ7mqfkaIceTFm2fLa6zgcJSQU1AEKKG8xm8A7eLB766F
         TIjSlaRbg6SpHFx88w2SMGyhLPWfPTxncA4gyP2UUu8Mzozc63REUKa79PegDKaM7rGK
         icT3ROsEcQmb0XIWHUHNuV+w0ZzDDplnFQ4C6RUN+mSVltMh4veSLNGoWOJ4SZ2Fyj/s
         RKFinT3spTNNNUZLVbPO4lyLecAmwR5WC8XjE/ibgC8xn8oPYXdz4M98evuwP78vks9H
         HIQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kbz2SLLQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/qs28V0sRvIGbWCSqIdZPbtFXmGlOsCC+nwImaitaKk=;
        b=EwLgPMATEZncvfO6SZfDIzC/krUGzHgh8s5k9GGybcY4niDQDtrg1VbXUQcqduHhO6
         ccCorM+MY7R0LRUelYAVQMHJ/ci/Z5qpmlpjPdesFsqjbwirbugjNw5Doam9g033nZlA
         mVsU6yp/nI7HlF1bR4WQYa6v3g2fYep6xqmfMymsWgqxJ+1tvQ84weWk+u4Hp7t4GVMb
         /a/0heuRLk/uaQKQKtEP/g6glAI5snwtdf70XZ6ftYxZTuAxw6srp5V0hJ4mQXs74DVH
         Re3aqUTlyZSnz/5i07Wy9ByqYkQGwDFITP2DluQX4k4UzAuxgqu12+IrFgvkrV/iY4dZ
         Pp3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/qs28V0sRvIGbWCSqIdZPbtFXmGlOsCC+nwImaitaKk=;
        b=VZNtAR/quOFgzOC6cRenOZuynJ66xO2k3Njm2q1LdHLV+zP7TmSe0po1r6vVTgt2Ma
         6tB696lJFXiuGa6SKeSF9mVSHR3JVMxuxp4Gee4LFI8DurLRbKxY+N/WRLQcvjpZlY9W
         rLkmfQ4FHUtREW7mV1umxbPolDkWei+ThTBW55FyhoD9t9K3Xs5mJghvUreJKBAq9DOZ
         5BGVPvhVSMtehVPrpT0QEusHPcLZO6G4w6X57ln3EopEeHTT9DYyYtb+tV3z91VMERA4
         tAb0KaRJzYLQQKNzeDvZr5r63HsUD5c6xc1MkXAuRgGgq8ZcaYhzeSoTLcnU85FNGL+t
         Gp2w==
X-Gm-Message-State: AOAM533Z6AExpkhKxRf2q8LdH+xxKpjMrapmRGF8i0nHcCXXSFC+Bb/O
	zTx/CMdcfxea6jL5XxC9Sfc=
X-Google-Smtp-Source: ABdhPJx9aJBA73LJMiMRl2Z7dYqGkG9DP37UNQ/epbYRqYQluCs5y7Kxr4q69T437Da25zcve2XFYg==
X-Received: by 2002:a9d:6103:: with SMTP id i3mr6428785otj.354.1592399151605;
        Wed, 17 Jun 2020 06:05:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19a8:: with SMTP id k37ls471904otk.10.gmail; Wed, 17 Jun
 2020 06:05:51 -0700 (PDT)
X-Received: by 2002:a9d:6:: with SMTP id 6mr6761665ota.140.1592399151210;
        Wed, 17 Jun 2020 06:05:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592399151; cv=none;
        d=google.com; s=arc-20160816;
        b=Tv3IdaQgy6vSn61W3SR+yYaUa/wRiJDTfSLzekjIkfdMTtMXStk2jMHFj5BWeppIDU
         USKOVze5oe/bBSj7fszDBDctS4ieroou9aoc7445Pa9YY8Ig4pOKLil2YlfMbbLMqkb+
         4S362EJcEBQxmJr5o44D71l2YnnKVzV7NMJZbgdqDm0SUkzdb0pjYE4ehHFJeQFiuRso
         gOfHXTx8am16S3BvwQf/Hla0rrlXVJcyzBrtjBSSFEWGCovcJx1pNMVcEw/Y57VL8b+H
         /AQklSPCTC+O9Qq66JfrIGBR6F8hBcgxlAknL06da++Avr3F/NZe2Gzy874zHXAa+rEP
         mChg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=fGZ4P40yZH2e/i/6pK1Ys7hvGHVYD4uMzfFcoQXvV5o=;
        b=pj5V9lh9RzMHIId6bNIt+IoGEIx9OJy8yFSpD6hhjSEnVUbAFU9Mtum9KOeK9khaGp
         /r9zyqaW4TvRWrbkN1cZC9j9ZsSN4zckHW7SCgQcCmpQbLXcv0fval4XzOMyVP/AhupC
         2+Ap/hQjkCJxY1AjKNnt+Alybg6yw0zKcvfSdSxpx+olr+S3umKiV7++1Q2hQqA6vEvm
         flAC1h5KUyRw9/c9PNO4fECZMaPv5OLm1/BqEPfu8l1N0pKjShvHOhTkCKYloQcjwFGj
         5TgnMcyuj7Vwmjx9wXgIYNwp4WwYloohYTUuMgB/OdkYMTyOQXHL1l/YtqevSm2/gdnQ
         Oh+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kbz2SLLQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com. [2607:f8b0:4864:20::f34])
        by gmr-mx.google.com with ESMTPS id m26si430221otn.5.2020.06.17.06.05.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 06:05:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) client-ip=2607:f8b0:4864:20::f34;
Received: by mail-qv1-xf34.google.com with SMTP id ec10so941302qvb.5
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 06:05:51 -0700 (PDT)
X-Received: by 2002:a05:6214:5a4:: with SMTP id by4mr7261985qvb.40.1592399150661;
        Wed, 17 Jun 2020 06:05:50 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id n2sm17735014qtp.45.2020.06.17.06.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 06:05:49 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 17 Jun 2020 09:05:47 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
Message-ID: <20200617130547.GA2489039@rani.riverdale.lan>
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan>
 <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com>
 <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
 <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
 <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
 <CA+icZUXacdF8Fvd=8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXacdF8Fvd=8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Kbz2SLLQ;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f34
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

On Wed, Jun 17, 2020 at 02:58:44PM +0200, Sedat Dilek wrote:
> 
> Interesting:
> 
> File "aesni-intel_asm.o" was built with IAS and I see DWARF version 4:
> 
> $ llvm-dwarfdump arch/x86/crypto/aesni-intel_asm.o | head -5
> arch/x86/crypto/aesni-intel_asm.o:      file format elf64-x86-64
> 
> .debug_info contents:
> 0x00000000: Compile Unit: length = 0x00002ad3 version = 0x0004
> abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x00002ad7)
> 
> Building with "-no-integrated-as" and GNU/as as AS cannot benefit of
> DWARF version 4.
> I guess my GNU/as has no support for it.
> 
> - Sedat -

GNU as has only recently gotten support for --gdwarf-{3,4,5} options.
Not sure if that's in any release yet. gcc drives it with --gdwarf2 for
assembler input, and no debug options for C files -- I guess cc1
generates all the debugging information in that case and doesn't depend
on any assembler support.

How are you getting some files with -no-integrated-as and some files
with integrated as?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617130547.GA2489039%40rani.riverdale.lan.
