Return-Path: <clang-built-linux+bncBDRZHGH43YJRBCVIZOCAMGQENUIEBDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A1385374368
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 19:21:15 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id h12-20020a0cf44c0000b02901c0e9c3e1d0sf2187298qvm.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 10:21:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620235274; cv=pass;
        d=google.com; s=arc-20160816;
        b=bpsV1jz6kBomNJMjzpRfiUEiEaX2jxjACVmoKgDBotN7eINi5oeyM4QC5o7Pd/YAkL
         CNC39bMMVfUvZqG0jZksJDCopu9R81AxORgomyx52hCh7nLboKr+k3q8u7pKmB5+q3wH
         vfSb4A8mbgjjGDvO1gZ98ClxZwV3spVa3kAY1sz54clC8qDkBGHiHIhuvxqF8YHYMgW8
         Qte7yejZvhMgxS7XiMTTo9Agf753GokwGPurs0FdwtsntUSQLe+WAKQ2BmhbZm33m+lM
         8OKxyYCUAO1viiwSUox6pF7RetehO+0Kf+q80WGTtgDE8ZVWmfj4iEl37HVDnf4+ltFs
         +Faw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=LWcalo4ZCEwz1aZ5KnXyhaUT6rznMwf90ZizE8o6s5w=;
        b=rVWKqWpWtOlcJ0falB2Pyr750il5Y7EtzOyb7Wv2ewzCO3Wd17YwkHFHBZjb+f5ikm
         QjVr9+E78Vb6RwOvieF1J3H5y3Sf1UHztBeWBzziVFNYBYM5+HaIEkERz7ylfeCrNNRv
         Z9b7iRMthKiiD/jqQyu3GyR1+x6LzvZzwF6lonF+MNzGFDkWAVEsvA5jYVN5Ty9W3NW3
         zH+AquhndU8EPulwNuK6QH4EPD7jFjNo2ZWDLM/aWnpt2AVFrwvgjQBQ5rt4EAK9qpgh
         03SG4ZNLzYe1cfgmlWAcavmqmNF49Imfl2QL9JBXd3jXgoYz1+/oo7Mn4zP8yZEELrKZ
         MrcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZ+cK+xg;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWcalo4ZCEwz1aZ5KnXyhaUT6rznMwf90ZizE8o6s5w=;
        b=IgyULxCvVBkLiSUvIxVRG2ucMPreO9RTnl5BByL12j7aZaP4rRJ2VEaNHZDo55NLh3
         uWtePHHOjfYVAfwlP3sQdTHu23KbuMgQziNqYlQK9Dru1bt+7c4HrT1PJx0Vq5DU2NR/
         pRxrWr4Mv567VRCukZS5WU7uyDepm9qWckXXW8k6fw4unTXo/Yb+liBx9tiszdPXDoZ1
         axAq6vRE35SLSOvappH5XZMkN8xd9uVO5jRbkOV1Fmxs7NcJwdYdvvqQqrRPhzeWp7Dk
         W4VW76ONzXe1IvC77KXWaWD/GEHGLsVRVUOaWqfMY2vK2JCO+xkwu+v9Fi0QUVmaFdNS
         XfUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWcalo4ZCEwz1aZ5KnXyhaUT6rznMwf90ZizE8o6s5w=;
        b=AJQvj1wks2PN4xSIVG08piNMk7kVtAHKrI0q5oGEOXEd7KrRwV9MOrg/wu9OzmvX7F
         mfnZyACO2BMyv7jVVug90Td/oO7FGYx8/t3xdKolIwc9/X8aPHvZtYPlEbsjmAylMeES
         ZDEtxX4LVhiiYoBJevra8tRHxFe2TbsszghoHAcWXxqGqnUgLYCQ/vaX2yoFs3UMOEt5
         BjiE8SQY/EUZg1Lz7takPSrbeGD+PW+rdYwfntK3AFJORD1AF4tFQCWKL4tWlh8TCAGl
         n3cX09yrQtbVAdn/VtWQFsJ5ljGhAVRBJdRqjvYCm3NYPjRcmYbHz2yZzYeFWSf86IBd
         7Tfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWcalo4ZCEwz1aZ5KnXyhaUT6rznMwf90ZizE8o6s5w=;
        b=NXLa9ajbrLhpIohKLTa9tB+qJNzyXbdY4fQjBQV7JLJt7otGtl+12zRxmg/z9o4lAB
         OSX6om1aH/VxaTvG0//p1mM+T45c09htbOrd/v9wZKyDGywByKJIl6v2scGl3Y+kxqQy
         2FzCiHmKMYNKPghcDBOgI56+eUashA+Sc5g9+VUY9kytXuBlBhgYMx2EYf1U/QM+viWg
         2ghl647UQCA2vMMOAEHytrAOnyAhONKHQ7p2VFGDq0IEnGDr/Niq5Or4w8rT4JQmAe4P
         EngoEmUAusOAUpPyjqz+bVSxr8DbQ6pquQHbBs2F7QFVKJjSx070Ms2i4g5rhgSevr3y
         qhGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FEodEOvyrFLoo1xWx0obpFQ7zXNiDM3I7YRmysfN3eBFr208A
	W+iYdBqngUlmg6ThLGPnzrs=
X-Google-Smtp-Source: ABdhPJx1WI5IzekkXeTVSHap1SvpVGLzXDUUNMtiGth6KiMx5+Psgb7j8j4/3cJRDLnLAFzpYnXU3g==
X-Received: by 2002:a05:620a:15f7:: with SMTP id p23mr13520197qkm.178.1620235274776;
        Wed, 05 May 2021 10:21:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7684:: with SMTP id g4ls2565285qtr.9.gmail; Wed, 05 May
 2021 10:21:14 -0700 (PDT)
X-Received: by 2002:ac8:5e4a:: with SMTP id i10mr28642057qtx.341.1620235274361;
        Wed, 05 May 2021 10:21:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620235274; cv=none;
        d=google.com; s=arc-20160816;
        b=UmRiFsW7YS7bWvGCs3FqTVaWGZB41dkt9c2WjwXzjIokInm0rWe0VYA3MDFmwDCI3q
         mrXx3QQ6eNFz5daL9weJtdd7tod7V+X0w/Pg3oA0Uqb917PXZN1GhBJJVEdyl2EC/MVz
         cvMg6EKGr1R/HCxurVvcGxn9YKwVR3cYn4GWsvQKSMU6HhyHcASnf8VyIFcYDSDWHKQ7
         hsUdB3g0QUkve3puFSxRGbxNwgnQOtOTbiF6msvvrd9aUR7jVVtl50BHg7USEPuFTMDV
         TVhEmgFlzjvoraP5Ll78iOnKX9T8bbHyS/71dWkYqEvbvTvtNqc20b/Ebl75Vy2biX9Z
         e2tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=whIXjs7HREiiPRAWZX/G6jQFBwJD27ZgekNpzmde44g=;
        b=bKr9yaZjQ94Q1lBSj7WJBCCXixDyYie3p1WzMk1GeTWhhWyh5axZ/5di2HisuH9N07
         tg/TumLwn2tTGwE37qWh4YPp19w9L6TJPKbxYyrmk+In/ZhSG3nFabqV+2gni7CBYuwT
         IGS2godKfZLfNaivn+I+/3qjuWpVZF/V5u+oS7cn6I8pgH03hmNHXop2BbQvXfDJS6qG
         fgCf8ZnNrxnXDtSn91sv3hhiSPpLKUecv18wIaYowRggHAHJVvt6ufbzGgzUPdxLRuja
         eqy3f9h2DoDC/R/U5zrd8BPMZdRoVHQ8SsvQYCDOX+H93qvUcuY0PvtFq0OOM/+ogPcr
         ZFnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZ+cK+xg;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id y8si2958qti.5.2021.05.05.10.21.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 10:21:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id e190so3641739ybb.10
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 10:21:14 -0700 (PDT)
X-Received: by 2002:a25:cccd:: with SMTP id l196mr46524836ybf.26.1620235274101;
 Wed, 05 May 2021 10:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost> <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
 <20210502164542.GA4522@localhost> <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
 <20210502175510.GB4522@localhost> <CAHk-=whTjJwCt2E0_JM2dDq=+UybvJN7QK+6K6e80A9Zd8duYg@mail.gmail.com>
 <20210502214803.GA7951@localhost> <CANiq72=5766fGQjNoMoOxrywoJHQ+-i4U+Nb62MeEaRok4LCFg@mail.gmail.com>
 <YJHto1KaPFey5irj@mit.edu>
In-Reply-To: <YJHto1KaPFey5irj@mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 May 2021 19:21:03 +0200
Message-ID: <CANiq72nJadi6X4BfFv5yiqNAZX9rwUT1zovhw6awGueLOyUYrg@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: Adrian Bunk <bunk@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gZ+cK+xg;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, May 5, 2021 at 2:58 AM Theodore Ts'o <tytso@mit.edu> wrote:
>
> What does this mean for enterprise distributions, like RHEL, which
> need to maintain a stable kernel ABI as part of their business model.
> I assume it means that they will need to lock down on a specific Rust
> compiler and Rust libraries?  How painful will it be for them to get
> security updates (or have to do backports of security bug fixes) for
> 7-10 years?

That is a good question. If a security fix requires changes in some
generic that an out-of-tree module uses, customers will need to
rebuild their module if they want that fix. So companies providing
those modules will need to understand that disadvantage if they decide
to write an out-of-tree module in Rust. And to support out-of-tree
modules, distributions will need to provide the generics metadata like
they provide headers etc.

As for freezing the compiler, some distributions already support the
Rust compiler in LTS releases etc. But now that the Rust Foundation
exists and gets sponsor money from big corporations, companies and
distributions may be able to ask for "LTS" releases of the Rust
compiler, or ask for sharing some of the burden of backporting
security fixes etc.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nJadi6X4BfFv5yiqNAZX9rwUT1zovhw6awGueLOyUYrg%40mail.gmail.com.
