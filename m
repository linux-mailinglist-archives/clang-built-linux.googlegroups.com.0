Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5452KAAMGQEYPKZPXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id EED3E30902E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:40:56 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id i7sf8819651ilu.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:40:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611960056; cv=pass;
        d=google.com; s=arc-20160816;
        b=g38RQ6Ss4cWoDmJvHlTSYWuwiQNg/5v6LdEai8/BITuWoqWpHjoSx8bJn3ozskc2Jb
         1tquWmvU4wtG/0acrCMNqxiPEEo63KRobEWmqrtHAG5aTjjFFnerEOK+7eWRmDBKyZHP
         uUVQqn+zgT9FcNUdo7R25ioFeJfe1As3bmmHDg9XQ8uC0iKoOnc2kCI/on5IdbfkPiru
         6T0y4CMfBdStNrMAe7zoKKAf4pCYgjbcEWoSxb6R1TBtAEXhBLDmT2PpFP9Zek5YJt/L
         r6ef/bKJfSC0YtA7N/NemEVM13dG0PoyoGsMo5MYDKbVjl4Z0Oh7QFRGA87DBQFDjVKf
         /JoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=j3QMLs/5YRC0zNNGuWGFwdHyKzOToX02hJpCufKx3RY=;
        b=HHykzkg7D5fRASx7v+5p+fj0N8idkcJLaLgb+3Y7Ci3Lff7yrUcVJ3bBxrd9LKMedZ
         8fZTEdVgK8/wiV8dSGif6ulYJ2WgD6eaOSumOi6QGq/LJ87p1dBytdBPy0I8NQNvlwcf
         yNCTrX3/7rNl9NTvYuZS+EjbEfc8A4hHkibrnv4mUNTQxusx/VOoZEhmQadYupD5S463
         IsCpMn+syecalv19GE3kzDmFUsfujRGXeJFgTTwqQiQYHl0y5qA1adeJwwohR4yqvGiD
         mYnSk68sSjNRf7qH/geUGIYK2ck1KhyoYljoOSneDRabIxxuudLYmpJg6XvBs7JLdY3B
         bWnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XDPPMVwe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j3QMLs/5YRC0zNNGuWGFwdHyKzOToX02hJpCufKx3RY=;
        b=BKgEqnVXDRDqYw+EUnwoHeRi59geo3lW98cP60KPD+K4n9rflchAIPWaiRjb45SWB/
         kUMisu6ftgXpsa+mU0fj1w8dKWltxl9ouiDB41uNcy7mqvigiJ2ZJN4UoOy/CUfUPDpD
         Ug8aga9vE+kXMxajFdQbxQmI1HZK81QcwuPAuA0A+xtANV6GKm5ZbvGRIvu1r4SrvOIv
         Po68ZgL0H+kV7UkewaahVjgKxrSVKXYNbzigXL4QsnIsj699m3I02AO8NNblaV2N4sXE
         njiK5PKOvDdO19cP01ToejZGF0PO0smDpSFMuXoZr4qfNKzb8cw+1X1BIHZixdoGRjm1
         BfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j3QMLs/5YRC0zNNGuWGFwdHyKzOToX02hJpCufKx3RY=;
        b=bhZGzh3VyFZBpbclD0btwLA4hDV0hrU/KdQgO3/aENc5RA975SDHHPziEFLdEwdtkW
         PtTKNi7EjnRwCBKNt84o/3ydCVtXYOEStUWQ4jSw/rTQM0YfH6JCRpSWXC24wQNHf12w
         BJmUkVJgkHT3nWgVwNFE+X3MfYCTbOsCwQL9ao3kzRJ7tn3Tgx9iMrsBL6w4JccKBaYW
         7LbKRuIPYSD5tk+7/saF7vfxny0eAV8PBsFdyP1opNnLNQNoWDDARV0m//umQLbwLqpv
         O+zqSQxt4XZ/Nj7eE6J31bh5EYmIZhd0n3Qj/DGkHmaensfgcB67c9s9dLk82nzreaIe
         3/qA==
X-Gm-Message-State: AOAM530l/ys08e54cTzyFUUbVznwuXgcg7ez9fLU+Z2qRDqoRD7GL+NG
	jiSqsBRZplwlCkm760wG2wg=
X-Google-Smtp-Source: ABdhPJwMfwLrFv6Z1XWaXK4bOpggR05rEmsr/O3ZnTOyBoeQR06DLq+NbXWl1awQ9kP6l7NJ3X8heg==
X-Received: by 2002:a05:6e02:1a6d:: with SMTP id w13mr5373611ilv.181.1611960055962;
        Fri, 29 Jan 2021 14:40:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ed0:: with SMTP id a16ls1566511ioe.5.gmail; Fri, 29 Jan
 2021 14:40:55 -0800 (PST)
X-Received: by 2002:a6b:e716:: with SMTP id b22mr5808947ioh.138.1611960055534;
        Fri, 29 Jan 2021 14:40:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611960055; cv=none;
        d=google.com; s=arc-20160816;
        b=BaMWsa4HG5gmlt0U/iHj4E0KieNmv6WkGXCUZUQFlLVihvBkrictnqYCBzzDwA9bL1
         cbSwfoV7siMQoGxjb5VEpu8vKNl2KaiqAMtlG+QmRHLS8ufzHlZgham0rJG8Dv6Xhj0A
         ySbkm7rwmWLRLeLvQqpKzx7L9xXVOV1bcO2SoBoPObeyZpGVKcLTyV0IlKAZxI6dyaHy
         TabhhQ4BKIlNrZFkV0trW02vmPkks18VFWi6rGq38etaIkepDxIhO54vJC1DrvjFpDH7
         XmE7qB3Z+vILeN9flFTGuNThYqEYSFnLCu/6sdO2wu3uLckC68lUWPN6rjG6XwJmg+Ht
         KTfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1UeqBHRfeHjW15Sm624b1sYTdp/IVH05rFvVMr6lwzw=;
        b=oGQ6hLs0T60WDk53JRzA0qFPTxbc8OT8sYBCj6N+iP3fIZZZNxDMi6EdbXXXTzJzVM
         4aVeT0Wk70yvJLKD2Bf8sByyDcXxlwc6dhI2PJQz4SJr7zT8WWqFzqHUhJYNiVIXUeMo
         CGSEBsPNMAYTYhA6hnR2GqzLC9ptnQNRYrmUd4iJ8DKWAIm8kyqimX2tsqQtLT1hrBRG
         Aiuzrvvtswj12/BOxjOkKGoYTTr8x7/+g+I0E7i0R8bQN8fLJ08Rvy76cRS5mWq7U7kZ
         WsB33MBVH7FnQ9KK9IoGY8NsFzD8/9b73gAxND2O2Hr+ulUn2l8YLFcFF/YAAqGBHsys
         WjgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XDPPMVwe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id v81si436203iod.4.2021.01.29.14.40.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:40:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id u15so6149031plf.1
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:40:55 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr6426596plj.56.1611960055108; Fri, 29
 Jan 2021 14:40:55 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-2-ndesaulniers@google.com> <20210129201712.GQ4020736@tucnak>
 <CAKwvOdkqcWOn6G7U6v37kc6gxZ=xbiZ1JtCd4XyCggMe=0v8iQ@mail.gmail.com>
 <CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com>
 <YBR+8KLWnjnMfP6i@rani.riverdale.lan> <20210129214137.GW4020736@tucnak>
In-Reply-To: <20210129214137.GW4020736@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 14:40:44 -0800
Message-ID: <CAKwvOdmqHs6xra3gD27XzbJ4DP2PiTipigmboV712bRqdVoo2g@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] Kbuild: make DWARF version a choice
To: Jakub Jelinek <jakub@redhat.com>, Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XDPPMVwe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

On Fri, Jan 29, 2021 at 1:41 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Jan 29, 2021 at 04:32:32PM -0500, Arvind Sankar wrote:
> > Given what Jakub is saying, i.e. it was previously impossible to get
> > dwarf2 with gcc, and you get dwarf4 whether or not DEBUG_INFO_DWARF4 was
>
> It isn't impossible to get it, -gdwarf-2 works, it is just not a very good
> choice (at least unless one knows some debug info consumer is not DWARF3 or
> later ready).
> Though, even gcc -gdwarf-2 will use many extensions from DWARF3 and later,
> as long as there is no way to describe stuff in DWARF2.  -gstrict-dwarf
> option requests that no DWARF extensions are used.

Playing with this in godbolt, it looks like the implicit default dwarf
version changed from 2 to 4 in somewhere between the GCC 4.7.4 and
4.8.1 release. The precise version, and whether it was strictly that
version or not doesn't matter much; the minimum supported version of
GCC for building the kernel currently being 4.9 means that without
specifying DEBUG_INFO_DWARF4, that all kernel developers regardless of
toolchain and supported toolchain version have been building as DWARF
v4 (implicitly, or explicitly). DWARF v2 is quite irrelevant then.

Ok, so I think Arvind's suggestion of "make DEBUG_INFO_DWARF4 a menu
option, just don't add a DEBUG_INFO_DWARF2" makes a lot of sense.
Will drop DEBUG_INFO_DWARF2 in v7.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmqHs6xra3gD27XzbJ4DP2PiTipigmboV712bRqdVoo2g%40mail.gmail.com.
