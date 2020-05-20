Return-Path: <clang-built-linux+bncBD63HSEZTUIBB45OSX3AKGQEIIV2QDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4531DB910
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 18:14:45 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id s126sf1974382oos.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 09:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589991284; cv=pass;
        d=google.com; s=arc-20160816;
        b=Of4LCIe32aMhBgNL9hG7HtTbNuDNcsqzOWuIU0Hh3ynO7P9fx40mg0+5ynjbUW6AQA
         MOt2umQbGl/Kajuh7diVfoxVTBInNoQ+jS1Bg8SnVkxNCyAY2aFKiPSswlWgvClxDuYM
         eOr4PIt+M8er1CC4G2AOYuPPA9JFFvi72OPRrODr88vs8Enyr4brL57zHnxSp+9f2Fll
         5dnjzjocEaDaelWLyYQ8sQ6DYgB4ks7sxDIyKFFH4IcRz9q8F6IPNUBtapkfYo6SjjFh
         lQxzR18R1tGDiKD0Z+Q1nOaregEptbcTPWMDBwcmEiFMJLmPZpxDqSeTjc3A2o46WIrV
         buuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=EXv78sKSAyuqoLCYfb57k2Tg6ikM9fPtoyCGZQP6kR0=;
        b=r316feOdT/l/Z+VxDliJN4aHMjaXz5wZyoD9vGofIZ6QzKiJ+8xvJjrM8JTcDqB3Gq
         iuxqxfZADhIQ/gGJftfO7gw+1aL5aRcMwTrx2H/rmG6W2/l1+0RbyqWUpYlbxpQMRXp2
         SUksjBjmaKmE85WMgoJquOMVK8M60dTYoxNxcztHsvGETfL7R5WxRZ0Nak3Zz25uHlXN
         PPXhWRBFyorm6VROaObr1UzIJbhO2OazYc28Cam5QAQ88VJMb7/iKkdl6mVOWgaMDcs3
         A8qVfUz3afyFAiUbQLPL3QZf0gFIaGOdsKXkyFMW7AmD2kPaNI4dScNz2gzCJOn7E9bK
         39Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NDdTXOCd;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXv78sKSAyuqoLCYfb57k2Tg6ikM9fPtoyCGZQP6kR0=;
        b=FgTxvCsiv8ezP0FOBH/g/lQQq8kGG9BHYIJdz86GSkt3aQ0Jut0F5tqpSY3GC4ypGn
         tiRJZVrWy+7Kk510qUuT9anqSiTWisE0+i8EME7ETbBvsLoGAMrGoeQsuqCEgsIrsELg
         nM/Fpf/4P5TuVS0dvGMKNMpb6ju9oiWZwGMGjShK5St7HRn+nnUIZF8Mj+p66Om2cbym
         zmqG71TcED+1KzyGwSMgJrYBiQFQ+K+FTm0FPwVxixPi1+TCaEkVnvJONjNFLdz2ad2y
         2V6Ra5OTisX6vbNABtkn+y8W8L80KDIpHMYGUOxuT7yrjz8XQ8jd/BtZiCzfFQ1CEavv
         JEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXv78sKSAyuqoLCYfb57k2Tg6ikM9fPtoyCGZQP6kR0=;
        b=r4Z8u5LYr+1yyVuz5kO+gXoo0Qe2khOh4j7WmBnQQSZB7XcshNKITdhydKq+TC4WLx
         56UPrD3vu+XKXtTHRBOreC3pwBB7y+jyQin6CICANDMmgn/lbhpo8jDqRjrC0LqklGEm
         qtwdDVnkFAqeTo23swn7J+vKH5aPHVH/1B1oPZOYBS3vxCZeNQJ9AzZKLN9ET87pZuRg
         ao2RP+cztTT31uAyZvAc6DUCc9PF1JshBYmB/fmBnnuy5d/kyN8uG2M714mYoDpIafCG
         i6A1/sHK647U98iNGFPGVdylXBDNxocqdKpeNTaBVvF6LYMIVl22O2UfofkARnNqKgFe
         Uafw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bd2Jh/6axKsBri2p9sZKq/8GL449iIwaeyjIdmqmjUXHulpXN
	9MA08cqnF6XNadYNPJe1FIc=
X-Google-Smtp-Source: ABdhPJwNbLW43ZuL2nvAca53mNwFYuPfr297z9sgqCwg4mr1niH99S3ql8KfvcDIlZMkRvD4SoC3TA==
X-Received: by 2002:aca:5152:: with SMTP id f79mr3477298oib.11.1589991283948;
        Wed, 20 May 2020 09:14:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf10:: with SMTP id f16ls606674oig.10.gmail; Wed, 20 May
 2020 09:14:43 -0700 (PDT)
X-Received: by 2002:aca:f12:: with SMTP id 18mr3788227oip.171.1589991283665;
        Wed, 20 May 2020 09:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589991283; cv=none;
        d=google.com; s=arc-20160816;
        b=hCk4knZYMlcyRLcUz+Jei4nZPzlSUoY5BJuAIgWncV8YNMewSfQAVovf5ShN2sE0x1
         qyj9eUspxAolIJapiQV3kRtGz2UMNtmTrFH9QzhAiFyo6VwKB/FbeKjRrbsGAS+FCiPM
         ZIP9IdXdwuUts5Lwr1GUULya6YL1UK30Rh34+281eK7Mh8La+tjLWxJ4Jp5TzA3MWZbI
         fy7+e4TNLVtHqFtdYLxatPbKU7leYmA0hwSKL0yMS6sCXZE6U7GZU5glTMoQNqz/M7LP
         zyhkvTBTQCJqsAhg+3C50NoMdIAHa3MpqbENp+XxrYqAw+KP4/FPNPBGoXO9OZVazlZg
         JJsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KNuYxsATVKhhyD7fWen85339IBQfkYBiWfijxE+mWW4=;
        b=TXNySxxhS4bPCchZQct8PIg1qsZDkkmyGrTqdjIh5+t3ac3OkmMVziQ6Y3QSTAmW8U
         /sd/bSm6CokiV5pZ/CP4kFLoU0D40Qs7vxuUah4mrvRPWZNwtMPwuCRksSJbkB5y8rW0
         UqHJLaSPA/C1aEyQLixRpXzC0cqoc0N8f5gRZ3RbjriVB7+iUiEHfjDhIVUHLaI8dHtv
         cVGC6ot//Amz034LkUrTvadWyriT1qJ64DLhflSGJLpYoJ1bmFddpwMmnjV7YY7tpkHx
         AtGsUE2QUdyYJ1UQ2jb2RqB0tOwkjVJ5+pfmYuG1tzN1HJO7zfB32nkR2sWxs9YbTuuS
         B5Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NDdTXOCd;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k65si291443oib.2.2020.05.20.09.14.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 09:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF197206F1
	for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 16:14:42 +0000 (UTC)
Received: by mail-io1-f53.google.com with SMTP id q8so2366975iow.7
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 09:14:42 -0700 (PDT)
X-Received: by 2002:a02:c48b:: with SMTP id t11mr4854694jam.71.1589991282210;
 Wed, 20 May 2020 09:14:42 -0700 (PDT)
MIME-Version: 1.0
References: <202005201012.pqmB8hA5%lkp@intel.com> <20200520155352.GB3184088@rani.riverdale.lan>
In-Reply-To: <20200520155352.GB3184088@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 20 May 2020 18:14:31 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
Message-ID: <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
Subject: Re: [efi:next 22/40] ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0):
 has non-ABS relocation R_X86_64_PC32 against symbol ''
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-efi <linux-efi@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NDdTXOCd;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, 20 May 2020 at 17:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, May 20, 2020 at 10:28:13AM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> > head:   e5fbadd1179cdadeaa44d71a9ec068c5bc100524
> > commit: ce5e3f909fc0ed67e58367b9c56a54c20a51080b [22/40] efi/printf: Add 64-bit and 8-bit integer support
> > config: x86_64-defconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> Clang folk, is anything actually wrong here? This seems to result from
> use of unreachable() annotation, which generates these
> .discard.unreachable sections apparently to help objtool.
>

This came up before, and IIRC, it has already been fixed, only this
branch is based on v5.7-rc2.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGNmDPQRCCtRYFRa%2B0NW9kADnx327FzPbNge%2BMU%2BNFoVg%40mail.gmail.com.
