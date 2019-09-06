Return-Path: <clang-built-linux+bncBD4LX4523YGBBTNPZPVQKGQE6HN7P4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id E93AAAC24C
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 00:03:58 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id l22sf8025834qtq.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 15:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567807438; cv=pass;
        d=google.com; s=arc-20160816;
        b=UPikUXBv2nC2nI79Zn9youzD/eJs6yL1Vtm7/wJENNoxIu552tVqEHKM7y7hHRCuJ0
         TpAePrk8dADONF4j2HEtDX7k3m/pNX2SzjrZEEERqy16XYLgHFK2DBcCj9I/8WW8TfmH
         m0zPWCPMht/D+n8nOBDfShEXQdZ+K0QFVoFY/WQUAOoyMjEXPIfeUeXZ/dkUGIW1TQef
         3nf3KkyKjZMlKFhxYOEIIOp0AGuz8PkRipZQe9a4nNnREt9bb22hAsK934bwiAW2y7jF
         4VB5S5Mni8hon94115d3mYlA628uDPVaJH0IflABryov1Veo2FpCFO+KzFdtlJamZX5a
         V+EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Q3ghOH5mHbEXspWgv8Xt0n3C+jbVIYtb57ZSOfxMDhU=;
        b=fbJSlO9LJZEMuENuBdzJasFKF01ik131MBRTTcgdbnniGuTtL8yk+npgELgBlkQFsn
         5W9Qit9M0UlVLV0sES5+vlWBBbtTTxzfGMSKgkkdrVBBDmkycpitMvhvorB4TFmDXe/k
         8RDGPqVpl7mCZiUw1OKVBSPFt6k2yQO9QZkiroq5tjeP/GYDj8OkLyTkwuNl2MZW291V
         51ykbuBLlbm6ky1l9htF6PyBcqo8jPiXimLg008K1S4P5vED+4PH35JT6tAZANCnDeVq
         c9EN8ZwjxZpK/spTL9G2TPsA+aw18RropwjdCO/TvrB1ApLkkQb7kPqhOInyMatnk3xy
         DAyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q3ghOH5mHbEXspWgv8Xt0n3C+jbVIYtb57ZSOfxMDhU=;
        b=Gv14eTdgTfLEjtT0CN7wff/5TN7AibUfx8jOsWwlShBrto+sevK6QfJNIsE9Qs6Sz9
         gxpALwxoN6AubBoOemh+DULmoe/60+W5H6QVuwONQF+kSeaKoXab/UZ+EQ9KOkylAWGb
         3hoMXa+DYh61KElXnv14m9xNOYIP6/39iEPyy1bH1wLqVxrseoHNUX1XBke+dWWbwQCg
         ZtLnseldeyhIUgiERj7ktDnGLfJh89g3gFDSiD48WCkT1wNXnI+0PgiSYtnJI3k0WOVV
         AH4OwypfWZUAiKEG1V/cm4NlTRVHh2HpL1UwRM1IqUE0WmbTht9rmF0Ps0PbTZVBevtX
         UN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q3ghOH5mHbEXspWgv8Xt0n3C+jbVIYtb57ZSOfxMDhU=;
        b=ZxWBom9++4LYap+9x5g3EWXgwtZ/3+rDejbOGeKievBpL9hmyaUTJfnikt69f62a+a
         3UIxNO9hnzG581E9ZPyym0EFwKEhM/zpi6SdG5pxZyw3y2qIxD/FnIWSZYrQqiu+Iuqi
         ojfELIm0x4T6wxYAuobvG5W7DkXHfsaZjWUTtbNT6QJuF2IyP9wo0CJ0LSjqeDj9mQ+/
         NYWD1MeDFHgepr35I86rdmjQ1o4PN5hUouZab9/trZyulvteBFU7eeffpBBehojbbPCQ
         BYiTzPq3/3kaFZVa8363bgcBorfc34zkaxu+ae7EQ0p8xkm7VxRAlbYBO8+wnmcwF+LW
         HTgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXU1GCVgtVom8rcgoGSeh9fYmDUWvQismi2tI6CFhQU7YJXZbtm
	0+wAMWouti17eH9i2yi+5Zk=
X-Google-Smtp-Source: APXvYqyyYF8lpi16qNTI7M4oEpmPJJKtyAYwFW0irzGbeUDfFHg+dBqtZvJShRfil4NmtIWpJNLp+Q==
X-Received: by 2002:ac8:340d:: with SMTP id u13mr11586264qtb.103.1567807437865;
        Fri, 06 Sep 2019 15:03:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ade5:: with SMTP id x34ls943064qvc.10.gmail; Fri, 06 Sep
 2019 15:03:57 -0700 (PDT)
X-Received: by 2002:a0c:fd23:: with SMTP id i3mr6999998qvs.12.1567807437567;
        Fri, 06 Sep 2019 15:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567807437; cv=none;
        d=google.com; s=arc-20160816;
        b=va2xxJWD1rAT1Kmdcjggp26L9r3DZDHiH+eIZORA5Ovb9Nc+rAE3htjOooLKdMohHh
         5t9UiUKdu/xPYqrx9mBGMOxVjQ2639l4/dv2G/vYOW5YylJr2B5aA9Uav5m7QMhgTnBa
         2QPJ/x7z4MzigYD76JQubATTHHQ1wLhdfnFYE+QOSS83dYactbjESArt4lmYZsLYUHLr
         rhTNojfBEbdGPeuLW60C6XG3f7V1u/zwAelKBcuVq6bH613asXmBpC9RqiDrFwpZfEBE
         Ud9aW0Hh0ffS2yuE9cO7Y8++MBcAEbW7/a4g033Hy2D+HYo/3B7ev9ibWu/WsygIDB/t
         eiPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xw3RsvJetAvrVEIoF0WjCpgkviQRGLIqU4PyjA3T8xg=;
        b=p5i22j+UN8cGfdXXoJLcbCN9etBYtoUcVs9GlqetZtDXkfZ40W73HKrW/TVYtjMG1b
         RXTr9T87ei5m9kKjL3ur31PBBsmwDlJ9KyBDCkkOZfPOIAaFhFPIEVlpLeed3iq+OLRq
         hSP3uJ90uaOhRAENcSFyQCnOcgiaop8x5VxhAymxlQYYrzsf44MhSAZwT4Y3w+I8IEDQ
         bGQhiReXTeztKXOLuF7VDbhwcxtdAjDaK+/4o5xQPHD2dWOEz86r5NvgFMtpe0Qz7/ZR
         k4qMrFC0x97MkeHClmW8FrmxM7W0N+sGsLtp341SxmJNGjVoOnuPKPmHmd/Yb/lQ+qU4
         36+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id w12si352645qkf.4.2019.09.06.15.03.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 06 Sep 2019 15:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x86M3mnb024175;
	Fri, 6 Sep 2019 17:03:48 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x86M3lnA024173;
	Fri, 6 Sep 2019 17:03:47 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 6 Sep 2019 17:03:47 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
Message-ID: <20190906220347.GD9749@gate.crashing.org>
References: <20190830231527.22304-5-linux@rasmusvillemoes.dk> <CAKwvOdktYpMH8WnEQwNE2JJdKn4w0CHv3L=YHkqU2JzQ6Qwkew@mail.gmail.com> <a5085133-33da-6c13-6953-d18cbc6ad3f5@rasmusvillemoes.dk> <20190905134535.GP9749@gate.crashing.org> <CANiq72nXXBgwKcs36R+uau2o1YypfSFKAYWV2xmcRZgz8LRQww@mail.gmail.com> <20190906122349.GZ9749@gate.crashing.org> <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com> <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak> <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
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

On Fri, Sep 06, 2019 at 11:14:08AM -0700, Nick Desaulniers wrote:
> Here's the case that I think is perfect:
> https://developers.redhat.com/blog/2016/02/25/new-asm-flags-feature-for-x86-in-gcc-6/
> 
> Specifically the feature test preprocessor define __GCC_ASM_FLAG_OUTPUTS__.
> 
> See exactly how we handle it in the kernel:
> - https://github.com/ClangBuiltLinux/linux/blob/0445971000375859008414f87e7c72fa0d809cf8/arch/x86/include/asm/asm.h#L112-L118
> - https://github.com/ClangBuiltLinux/linux/blob/0445971000375859008414f87e7c72fa0d809cf8/arch/x86/include/asm/rmwcc.h#L14-L30
> 
> Feature detection of the feature makes it trivial to detect when the
> feature is supported, rather than brittle compiler version checks.
> Had it been a GCC version check, it wouldn't work for clang out of the
> box when clang added support for __GCC_ASM_FLAG_OUTPUTS__.  But since
> we had the helpful __GCC_ASM_FLAG_OUTPUTS__, and wisely based our use
> of the feature on that preprocessor define, the code ***just worked***
> for compilers that didn't support the feature ***and*** compilers when
> they did support the feature ***without changing any of the source
> code*** being compiled.

And if instead you tested whether the actual feature you need works as
you need it to, it would even work fine if there was a bug we fixed that
breaks things for the kernel.  Without needing a new compiler.

Or as another example, if we added support for some other flags. (x86
has only a few flags; many other archs have many more, and in some cases
newer hardware actually has more flags than older).

With the "macro" scheme we would need to add new macros in all these
cases.  And since those are target-specific macros, that quickly expands
beyond reasonable bounds.

If you want to know if you can do X in some environment, just try to do X.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190906220347.GD9749%40gate.crashing.org.
