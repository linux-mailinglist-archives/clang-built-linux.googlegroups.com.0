Return-Path: <clang-built-linux+bncBD4LX4523YGBBPPT7CCAMGQEICSQSPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEC3380583
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 10:50:07 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id z15-20020a170903018fb02900ef27498ce1sf8683344plg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 01:50:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620982206; cv=pass;
        d=google.com; s=arc-20160816;
        b=PD91BzWvpODK65voUorwemIhZzfL/K5m7njxBi7TUXSkspZVCObP42yZerb1+KxA4M
         sGmaQ29vznr0ubJBgx269OvWLAj0kzzC43qSNixjlVQpPu0Tz6uVRTdnlEV6rcP46xj7
         65Ou4j9UjB6OlJ/3ZI8zFf1N+ixqmc9q8nGa791iPA9OLEKrR7NtVSYEWX/ZWFz95Tqt
         LDkInRiPBGEKEShiMgwioptEcZa1xYyKGmlj/1vjqRXdVaKI18IgxYt2iQCJ/c6SbUB5
         +r1KwEA0Ka634DXasB2vDJXawz32ZNToGgJQ71yaNn94N3NxT09cNBJbQUPfBWDDEjm2
         /MSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qS7LKCrvm4jil4Q6RQaKnZeQ1IJhLQHC7IoVjZzfqd4=;
        b=aHsTeZE8PuWNB867+Syi6dadaqBj1FNikD6dmOTQJ/tD3Kmmpg7fn9XlGqfMa8aL/A
         oI9pc3iaDKffw0M6cFflekb1Aix/4cIppCsXDWjixEZFr09AAr8ks/OsaIyl6iEsci7C
         w6ymiZBVbEeu900fkiYu52wO5BgBI/oWxlCSk4VYBjmmSk7lLEeehJttWKifkqRYPiJ1
         Q6oVtSTFIKiMoQQa+hawm1kOONmpfeMrt0U3pc5fA30jyJorcpZQilPS4059LehOZLtC
         OTmIZED+aWOd0iClm3P5skKgPf0+bno0E5VHb6WDty5ohREoxm7n8kzirMofwiq0Fe+c
         tdBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qS7LKCrvm4jil4Q6RQaKnZeQ1IJhLQHC7IoVjZzfqd4=;
        b=F/wSuikQiY9gkVLesuUdmMP9yEmItXeaVTplO/lycU8dMwoUOY1LEzmH1dCvGRF8eH
         rCkuKxsXIKvcp/afN9waQO3ICBM9o+2rsigfqldzX/Ybg4Fbc4eseuX5L2dJKT11VtsO
         J7jQDFiNOutS5XwEHnjybSfOWPoxK5DfFbtPTySrSIj9WWmMsVL8cRF2oMVf2bVLlyS4
         9WXFlUZ865RqkNDIIE5RpU0er5+laU3TpPTUMMg2NXAbWAFwQ+pTcisQR4Wf8Stgj4Uq
         dy1yrTwDObKGeUpJhGBDRV5fOGy4BCSbPOXi32As4CHifJiAVD2vbUCdspx7WGHREsj5
         HGNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qS7LKCrvm4jil4Q6RQaKnZeQ1IJhLQHC7IoVjZzfqd4=;
        b=fcJm3VuhmCJmnd/vtKVKE7MEcvHrlDwO2cHB2TbQngikjUvSn4lccCUeGRLL3FnvkM
         AfwVGXUo0KXum8v2zI5WDSUWRl79oKeSAcJ739YxjKIIUcNOnQIBTP7HgV5Bo/b/c9Z1
         jLAqMSPizj4Ei+8v+nNxohgcx4uJi3TYU4dEqkcMF6rGeAuFuIVwN3kO644D1KUuSswk
         bz4ILsw8knxvGIAwH8/oRKaMq00Hkz1KzUMaatUv8bwWN//wdMmdtZu2jQKnf/1SpS9/
         LiL1v+ZnpAeQ9MUCN5Y3NuF6Yiedafh4uC8j/gqrF0qzTpTPNHOzcq3eCkwHUe0KQLBn
         W1ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FRmNUZbp5RgIixWqoiWAzMBl+S13MUDZSKje4p1/qQiSRGbNt
	80mPT4X+BOpimtsT7sCHxXA=
X-Google-Smtp-Source: ABdhPJwwiC2EGDxhrJGNSk6QOlGOhxynLtWeTxSFDkBtDjupjYHPNJuYI7V2eHjo3Atc07XwTzNMZA==
X-Received: by 2002:a62:60c4:0:b029:2ca:ebf7:cd0d with SMTP id u187-20020a6260c40000b02902caebf7cd0dmr16352497pfb.71.1620982205910;
        Fri, 14 May 2021 01:50:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:530e:: with SMTP id h14ls3829619pgb.11.gmail; Fri, 14
 May 2021 01:50:05 -0700 (PDT)
X-Received: by 2002:a63:524e:: with SMTP id s14mr39254973pgl.403.1620982205173;
        Fri, 14 May 2021 01:50:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620982205; cv=none;
        d=google.com; s=arc-20160816;
        b=spMNHlxfbnu9xKU8DdquoEE9xnm0++ymy7lKCVt3TfSdFFB7+74M8vdO1OJMRogD4T
         TvJ1FnanvNoSFVZrBFaKdhl/icLBk0lkvTsdnuTwryxIGn4WWnPrRISHO0EwadZQcV4a
         FkDP41B/l1iCBk3WkyLPfQdcSxtIoo1BmhNur0TB+3xbgvf78HbvVJysBNu5WbrxrvQ/
         jZITwdkcasPz0CW+tPoR5/vC0ItBaDdzdcALpLMdkNGgRiFVDpbX9eU5eBm22GBfIS6d
         rBgHNpDcuyOKr+92SvxnRSACvOKHVRWprFrGt37ELhK724aSUItD7ChwNUyopK96/tnV
         JBYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zBFlUkDQn9oE99QjTFeyxNqRg+KDvlhZNdwm+dEWs1I=;
        b=vg2lX9tbNEOgRHCSz3+Afuxq0BpChnlOvD8AiYj2kIh2ar3nLIsT97SpIfIyuiGnIi
         P9wptBdZZ2B3aq0S7lajUf4QNHNY0cwJeKIBX3dN5OD4O5pMlDftrXTybCPYxIfsqgeH
         CG9DwGvjapYgtcpz+6lr+28shCROzGKDQ7DThCpf7Omh730YkPdQh+ino/FSNVkvXZdk
         gy2FXloR8Ry7Tfxq6fMlvYRtyh4KTnbXXBQ+tZ05SYrw/XcZTZ+5si9VFL35GDszjlCv
         orCVK0Nf6tp1u+u/SggAMoAjeC7BUbFwCaZPzvRpIH8ZNU6uPqJKq9j389ot2kAg+RGB
         QQuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id x27si99195pfu.0.2021.05.14.01.50.04
        for <clang-built-linux@googlegroups.com>;
        Fri, 14 May 2021 01:50:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 14E8kuAV007787;
	Fri, 14 May 2021 03:46:56 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 14E8koYF007785;
	Fri, 14 May 2021 03:46:50 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 14 May 2021 03:46:49 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Alexey Kardashevskiy <aik@ozlabs.ru>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for preprocessor
Message-ID: <20210514084649.GI10366@gate.crashing.org>
References: <20210513115904.519912-1-aik@ozlabs.ru> <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org> <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

On Fri, May 14, 2021 at 11:42:32AM +0900, Masahiro Yamada wrote:
> In my best guess, the reason why powerpc adding the endian flag to CPP
> is this line in arch/powerpc/kernel/vdso64/vdso64.lds.S
> 
> #ifdef __LITTLE_ENDIAN__
> OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
> #else
> OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
> #endif

Which is equivalent to

#ifdef __LITTLE_ENDIAN__
OUTPUT_FORMAT("elf64-powerpcle")
#else
OUTPUT_FORMAT("elf64-powerpc")
#endif

so please change that at the same time if you touch this :-)

> __LITTLE_ENDIAN__  is defined by powerpc gcc and clang.

This predefined macro is required by the newer ABIs, but all older
compilers have it as well.  _LITTLE_ENDIAN is not supported on all
platforms (but it is if your compiler targets Linux, which you cannot
necessarily rely on).  These macros are PowerPC-specific.

For GCC, for all targets, you can say
  #if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
You do not need any of the other *ORDER__ macros in most cases.
See "info cpp" for the sordid details.

> [2] powerpc-linux-gnu-gcc + -mlittle-endian    -> __LITTLE_ENDIAN__ is defined

You can just write -mbig and -mlittle btw.  Those aren't available on
all targets, but neither are the long-winded -m{big,little}-endian
option names.  Pet peeve, I know :-)

HtH,


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514084649.GI10366%40gate.crashing.org.
