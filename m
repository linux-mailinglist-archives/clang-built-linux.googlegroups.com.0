Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5HC5SAAMGQEIMPFJCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id CF90530E748
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 00:27:49 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id g20sf116815vsb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 15:27:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612394868; cv=pass;
        d=google.com; s=arc-20160816;
        b=knEIjVqhcnqOj/1AB9icq3eenrgUCcmIvIj7d2VZccyUX8QkdXxZ4hy8eq0brs3Cld
         i9+uYfv4AVJWd+knNcQrGTtoALxn1gFXwV9ZR79YmAIo4ipY6DBEK+w2qK/kQcMnQEKi
         0g5wBqdySr9nLaGfcouaEuRsTMQ5rm+OFwXq4NQRa+s+en4XSB3K7y7RhwQ4e58dSO32
         OtEh56QZQ792eOW5dyqz/6AqCAd1iQasZ1mlYxg7KUX5JeVo1JL5hTqNwevV8a+YEHc/
         FIJAgxdz2qqHF8mzgO0PAhjMEBVJKTZUI5SYznFroHyB7FKTB+9/VdM1jB9NYAifJlNH
         ot9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5kxcPjtomtLuUull42InxrwhwWaLhzteIps5kMunzkQ=;
        b=j9hu1/1HsloDQbhAzyRoBp2iNwmOtSMWvNh7Cv+DqbGx25GZN4HQCld409cCXnhrki
         M8HzSyN+yrMu+JCpxPmsoqGjpNAGI/NahAlS/sqTNVBReK7ljpAJN0gEaIxJ2+7Qs/9+
         YM3jhEcjeyeeN+OT8gmWW33R4hZj1V9tNTjrNJEJ6qnzD7xIejvxq+cST05pHHb5MiA2
         qPPnTljYRZMbi1CUeJBetnoYzq1KhiLKOqw0pdsjN84nClsAgbnae3wUhjplpyocr0nv
         p0IZT9MVqBGEDOv1Z1Zz1glhJ3Ndn7S39ZaOWtyE1+iTvaPl66ILaajg8a6nc5NYqR/e
         D54A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GCIJY1mP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5kxcPjtomtLuUull42InxrwhwWaLhzteIps5kMunzkQ=;
        b=Dlb3WM+g74wADa9H0r7n/qM9gNb+E236C/8Qt4AB7wJJzDPteSzBrYqzZFfk983f+6
         xM2Y3Z7KgV4Nabm1q4wAcDjjJYQyyGbZVZJdRAt6342VClag/C2aHmdmdCMaeq0brPvF
         T08mR4kM0/3c2G+ggi74frED2SU7Ccq5GS4AKP0WwJr7HGABJxyDOM3FjcDAIZH+nWO6
         sn9akrabP2TpabzcyUiYJ9mjmAPUgoYbUUQ+UgiO1ePB3jB4HaXHqXh20WZvztJJOxK3
         4L/V4VYdkpTXvctLe1nHHw3xphfifRbXw3Mu7sKbnJdQVIC9lxlTnEDGDFbHw1dNVga9
         wzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5kxcPjtomtLuUull42InxrwhwWaLhzteIps5kMunzkQ=;
        b=Is3jyyh+wRIbAD+dSwmlSDWFfdWTC+OdQlCiOINnnbRcmkePEr1mN4i656mWaCsPMp
         ooujf/v5C5iBt5UdJTs/9yX5lvHQ3OMihBYfSHC4vwk/P/aqGuRmdqESRCGyGy4hjQX3
         oT71+uhUyFrN2yUgr57x6u3IfysuZnlCkzTLptM8pVzyRTZIOfgLe6Hj5Nb6+oBLOZmL
         07wonmxZjh4DswqTQVL0UArCfIFYvZWMh2xSJSC+Jj3TUliXLIGSPYPJOiXB67hBi+oF
         s9hIhpo/fq4Z634DXmoxUR3xQii1qfDG85p6L0iBuy3uiGAQSIRIZub8UwiaCecUrv4E
         4IpA==
X-Gm-Message-State: AOAM530qOK+7IQo+AQS7Wz+vZe9ScK5A6BNP9kADSODWsEeOIJgcMnVt
	tAyyTuTVNqr11ya4oPl1lg0=
X-Google-Smtp-Source: ABdhPJxydDtz/9upIlXpqaXLcCjThVHd0jTgq46ewXYL/rKgNAGtMzjlJY78TZIlBCRXAL5U82Yb7g==
X-Received: by 2002:ab0:36af:: with SMTP id v15mr3591318uat.85.1612394868691;
        Wed, 03 Feb 2021 15:27:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:eb8c:: with SMTP id e12ls452329vso.8.gmail; Wed, 03 Feb
 2021 15:27:48 -0800 (PST)
X-Received: by 2002:a05:6102:754:: with SMTP id v20mr3365116vsg.55.1612394868249;
        Wed, 03 Feb 2021 15:27:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612394868; cv=none;
        d=google.com; s=arc-20160816;
        b=b0hdBJ6dOO0pq5bX0/phxlkQXRx5bOta4/Q6ssjtzpOSWDVBcq02H638BLCtKWvv19
         UQ/OzH+MRV5IXUWGO8D78dB+qRtzbm3g/ivgzDmowkZ2Xqn+YeNsmOpMn9m2ZQwWlIgm
         /xCfcEySXl9l7o2enXFAE35JiEFP34vjfPuhQ0Ecs9mNGsYPeH2U7tyOKP2pDao98DH7
         yA7PGs7tDfk3994/WQZJxlbKpXtI3t6Z2RNdHLqxxqLDncz7REBSwr4Wkv6jHzEYKnkz
         yCvOrSqTUvqiKlpFL8q94IFT77XurnuxXIOe1uETmXebyRRPzDfYpHUT6hDv6TSERP3t
         ezpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+eX+hFOL+CzxhxR9XSBHmfjn0y1EEXuMNIwlju1/yaQ=;
        b=S8iVP2FFk4PGSz5VIcXzQV61AqdCOpDXm/xkoYjPiH96eu034xuhpytplTcDZ92gna
         njJC0AKOVKvTiiBha6RaqK4oge9lG4zsCpDccL5ZrVQSVBgNbIs7xqy/HufTokHf/YI7
         TQBZC4Ge59XS2sjUn7uretZM15toLpsFlp/uUZcNrMmuFRtbWcEuPrIv3YMJ3eZPQf4U
         Sj6Y6oWLOoMbTEIGRO3lEjjSqJW6EYDjEhgwflqAv+JksLhYAs/0gEVC8xx+WCOpxCJc
         IxCK5UQeT5/l7qkqe8aV2xW5YRkltx5WTuxlnoCh5I2cj/hav0RnJuCRv1ZDK95FboM8
         bRNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GCIJY1mP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id j25si249422vsq.2.2021.02.03.15.27.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 15:27:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id s15so713205plr.9
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 15:27:48 -0800 (PST)
X-Received: by 2002:a17:90a:db05:: with SMTP id g5mr5573673pjv.32.1612394867235;
 Wed, 03 Feb 2021 15:27:47 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com> <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
In-Reply-To: <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 15:27:34 -0800
Message-ID: <CAKwvOdnFQ+Y+QzHLVs-XNFtbNL8s236x6zS3QAkQ-unPvhbfEA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: Masahiro Yamada <masahiroy@kernel.org>, Nick Clifton <nickc@redhat.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GCIJY1mP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Wed, Feb 3, 2021 at 3:07 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Nick, the patch set is getting simpler and simpler,
> and almost good enough to be merged.

I agree.  I think Sedat pointed out a binutils 2.35.2 release; thanks
to Nick Clifton for that.

>
>
> Please let me ask two questions below.
>
> There has been a lot of discussion, and
> I might have missed the context.
>
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
> >           It makes the debug information larger, but it significantly
> >           improves the success of resolving variables in gdb on optimized code.
> >
> > +config DEBUG_INFO_DWARF5
> > +       bool "Generate DWARF Version 5 debuginfo"
> > +       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> > +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
>
> Q1.
>
> This  "CC_IS_GCC ||" was introduced by v4.
>
> GCC never outputs '.file 0', which is why
> this test is only needed for Clang, correct?

This test script is only needed when compiling with clang but without
its integrated assembler.  It checks that when clang is used as the
driver, but GAS is used as the assembler, that GAS will be able to
decode the DWARF v5 assembler additions Clang will produce without
needing an explicit -Wa,-gdwarf-5 flag passed.

Technically, it is unnecessary for `LLVM=1 LLVM_IAS=1` or `CC=clang
LLVM_IAS=1` (ie. clang+clang's integrated assembler).  But there is no
way to express AS_IS_IAS today in KConfig (similar to
CC_IS_{GCC|CLANG} or LD_IS_LLD).  I don't think that's necessary;
whether or not clang's integrated assembler is used, when using clang,
run the simple check.

> > --- /dev/null
> > +++ b/scripts/test_dwarf5_support.sh
> > @@ -0,0 +1,8 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> > +# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> > +# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
>
>
> I saw the following links in v6.
>
> https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> https://sourceware.org/bugzilla/show_bug.cgi?id=25614
>
> They were dropped in v7. Why?
>
> I just thought they were good to know...

While having fixes for those bugs is required, technically
https://sourceware.org/bugzilla/show_bug.cgi?id=25611 is the latest
bug which was fixed.  Testing for a fix of
https://sourceware.org/bugzilla/show_bug.cgi?id=25611 implies that
fixes for 25612 and 25614 exist due to the order they were fixed in
GAS.  Technically, you could argue that this script is quite GAS
centric; given an arbitrary "assembler" the test should check a few
things.  Realistically, I think that's overkill based on what
assemblers are in use today; we can always grow the script should we
identify other tests additional assemblers may need to pass, but until
then, I suspect YAGNI.  Maybe there's a more precise name for the
script to reflect that, but that gets close to "what color shall we
paint the bikeshed?"  Given the number of folks on the thread, plz no.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnFQ%2BY%2BQzHLVs-XNFtbNL8s236x6zS3QAkQ-unPvhbfEA%40mail.gmail.com.
