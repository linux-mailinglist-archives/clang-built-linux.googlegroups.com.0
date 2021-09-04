Return-Path: <clang-built-linux+bncBD4LX4523YGBBKF2Z2EQMGQE3BMW2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 778F7400C13
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 18:22:03 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id a9-20020a5ec309000000b005baa3f77016sf1710319iok.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 09:22:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630772522; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Feo2s91C69AZheUKK8KGVZ73XCZAQ7MNp6mmxd75nyRDaSbAdV1egbFbyNvfSK/QY
         3d0qNObyh2FsFsJiYvoRsgfkNXH0VJgpi9p1GUNUqViqkPJJHDjBkO6GR8s9FoJ8AcDr
         KcRkT/KB550L3fOPKAL3Y6Ejm8WuO4ku7UjOR348aNo6K6IOd4R8ImGoE56xDWRAjV3e
         +Cq3KuqccxUrVT/oQHONihbr4qdYmdlxgxBP4JXyeOTh6F9h5ht33hdfbk14W+lrUdOX
         18GA0a4fBd8QMWu+5SfYLbxEp60Q7r5AhA/T9gIEpzNU9YOf/+cwkcr8xd8JMcNTb2ip
         VG6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PitHasPXUiZZaIQlM3dUTFKidxUDRfdPIbOR0Z3nIKk=;
        b=NzEDdJwSQ1MmbRccQzRdDDFEoSdgtqXHoBcq+etz1c87wpCl1qBUjKPnSUV7KajTji
         oC30G4o/nz+1ePx3kWVhPeY7ozl9DEL2xNVzI+BNGKAtP2WPUq4EnNullGLQlgiFPpgY
         BnkFctsyOGAIRfTs0D3MXPKJa+ILO/rKWeSrkLzwb96FCPzyNhJOCVbSQYys6Pyewpkk
         x4HBO0fDMFxH9vk1VhzSaOSjJQOmDJ3BI/exGXurlIdh9zRrBBsFPiSPJDEWXjjckQfe
         kkF9Udi0sybMc4IkYsBgz2Xp0YQSKmEkqCyH9ESoeGwY8gK6eUGTBMvBUXOG36kIcDuF
         3y6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PitHasPXUiZZaIQlM3dUTFKidxUDRfdPIbOR0Z3nIKk=;
        b=D0ShDbbztkpzZX7X34IrezidclEQGtyObbm/kPfEtiaogmIaQVFGMYziKGoHbG9Pu5
         3l8uL39Q1pOBKCSFw+IU+fP3Da4KdW9/O3WCGr24x48/S/cCVZ2x6e9Z0Na93N9BzFZu
         ZghPEH5ck2cBFhxVTaumthHobKYyWTeZIFEeXA0vTSJWQTM05ONm5mdorInKtqCXJKWt
         qA5kGt2w+nPEHlcgTF09POBx/Sn6g+77X1qZ/k8e5gmh18TgrVkeTuHhqwiMwVzW9wAp
         jwhwaURfZq41UEIEFpfvxIrGW8r1oOptQm8hGtRkrFwsutA/g+fQ5NypKHcLiQJFRMzP
         vmUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PitHasPXUiZZaIQlM3dUTFKidxUDRfdPIbOR0Z3nIKk=;
        b=L0HfCjnEssP0Jtf0ynsajj6Es6H8jnJAR5SzKamhxXE2OuXmnY09uKjqjuDPTNzkh4
         M5je3EsRdBt+uH4rjMMxAUMwOT/ferlZnr7hBglA2EeyI3yVh0Yok3CYAf2vqQMPhZcs
         fdGNLs6QOb/3nfbl4ZJXtGCY/zabq0QWXV8sSwkXFlV8TBSKy8EuQER4xyw3SqBblT7i
         vz4VEUAKpemK3v6cp/DjI++esYmzx4TryHxTHleJXBqV/Oqw472g2ILPpsAdyWjBzDkl
         OAf3tctR7+W1eqvfMhpu2Id7s78rGfFIC9DSPG+jVXV7UJ8DQUFoS5TaVwGO1ajH4yS3
         Ii7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Inum3YMtxzk3BfEQuOfcilJ4pEu/FiU2oDFTAzL/s0veTUrTd
	jAHAGd4zotEX4VKSC8YFCZ4=
X-Google-Smtp-Source: ABdhPJyofoB/NIWM37YXArOYaeGcRySnPjFUrgRWnoOxqgD+wFGJu9XZRHoNxe2L0RA/7pV9fuw40A==
X-Received: by 2002:a92:c9cc:: with SMTP id k12mr3109476ilq.316.1630772522136;
        Sat, 04 Sep 2021 09:22:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ce23:: with SMTP id v3ls170692jar.9.gmail; Sat, 04 Sep
 2021 09:22:00 -0700 (PDT)
X-Received: by 2002:a02:bb16:: with SMTP id y22mr3837759jan.129.1630772520580;
        Sat, 04 Sep 2021 09:22:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630772520; cv=none;
        d=google.com; s=arc-20160816;
        b=HUz3rwNl+8w2C0GxB+u3kbhbZtvytbzHegj616f95NT75xzpyAHkt4MKGhd+SS4wmR
         uLp1HUxlTgmzAPCOOoCLhwgVGwZp+gefUegF5OYPSxnZ0wBKOCIZI1o+M5PKXTRelRZU
         sr1JjRGJg6Ngfw3NwBQJk3I+11LxINSFbB+uJp+vqUwCqw7mlAaebSZ78aEL0To5MXjr
         XAxQHB9e53eai073WVdU/pu3Yx46Tx3HMiSuin9jSE4GpLznX1rrdvRsbfnNj7wKWApg
         pPkp/QlO9ow8gvq+cizXjeJQomRdVW3wbpMN/9X3qJEewA3Au4oePIDTTLnlnP1YGQyy
         /PeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=RVOzgc3bFvaGiBgrSCVqaXNpwe7osuYX+OCKQQwu5gY=;
        b=dw6kKvWi6wQsmWtk6B5+n+jo0obEo4oH9TfXt8yHs0IoaTdUk0LrvZ4ekqkRQ+dx2z
         wZWXNzeAYdaVuk04/0WD+7iR9LcVrxTRg5X+UDy2YafLt4SNiA0BGmnoYUC8yF2LrT5U
         6MrSg9aYXfGZ00Mw4p7ZPLvFzVO3gZvoPczyFWQbTEEONTln/nic3tQSXS7dLFKUic5Q
         D8+E8eZRpxxtrjLCCjHZxMdY+noynH/UgR84naaAGgGeNW+zz091ptCQNi/jBfeJnKyb
         J6XVDCG5kCq6LI8akWalY3yV9nRzTt0CKZzYrMDVXlI5lsaLTJh6nezdMvY8A58CaXo4
         1OoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id i29si77215ila.2.2021.09.04.09.22.00
        for <clang-built-linux@googlegroups.com>;
        Sat, 04 Sep 2021 09:22:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 184GJurq016488;
	Sat, 4 Sep 2021 11:19:56 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 184GJtXD016483;
	Sat, 4 Sep 2021 11:19:55 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 4 Sep 2021 11:19:55 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Linus Torvalds <torvalds@linuxfoundation.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210904161955.GR1583@gate.crashing.org>
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com> <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com> <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com> <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <871r644bd2.fsf@oldenburg.str.redhat.com>
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

On Sat, Sep 04, 2021 at 05:19:21PM +0200, Florian Weimer wrote:
> * Segher Boessenkool:
> 
> > Let me quote the original mail (I had to dig it out of the archives as
> > well, no nice threading, too lazy, sorry):
> 
> It still doesn't say why.  I did see a reference to fleeting reference
> to <stdatomic.h> and <float.h>.

Yeah...  I dug out the actual patch from linux-kbuild:

https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild-v5.15&id=c0891ac15f0428ffa81b2e818d416bdf3cb74ab6

The reasoning in there is completely wrong.  <stdarg.h> is not a
"userspace header".  Instead, it is a standard header, required for some
functionality in C.

It also says
"GPL 2 version of <stdarg.h> can be extracted from
http://archive.debian.org/debian/pool/main/g/gcc-4.2/gcc-4.2_4.2.4.orig.tar.gz"
which seems to suggest you cannot use stuff from GPLv3-licensed GCC.
This is just wrong.  The header in question says

"""
Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.
"""

And <https://gcc.gnu.org/git/?p=gcc.git;a=blob;f=COPYING.RUNTIME>
reads in part

"""
 1. Grant of Additional Permission.

  You have permission to propagate a work of Target Code formed by
  combining the Runtime Library with Independent Modules, even if such
  propagation would otherwise violate the terms of GPLv3, provided that
  all Target Code was generated by Eligible Compilation Processes. You
  may then convey such a combination under terms of your choice,
  consistent with the licensing of the Independent Modules.
"""

which says that if you compile with GCC, then it is perfectly fine if it
uses the standard C headers, it does not make your work GPL-licenced.

> After all, <stdatomic.h> is exactly like <stdarg.h> in that it's
> possible to use its functionality even without the header file.  The
> __atomic builtins are even documented in the GCC manual (unlike
> <stdatomic.h>), which is why some programmers prefer them over the
> standard interface.  And then there's the _Atomic keyword itself, whose
> use can easily result in calls to libatomic functions, too.  So blocking
> <stdatomic.h> makes little sense to me.
> 
> I don't know enough about softfloat if blocking the inclusion of
> <float.h> is worth it.

Blocking the use of <float.h> is pretty useless: it is possible to do
millions of things in the kernel source that are frowned upon, or
actively bad, or anything in between or more extreme.  That is what code
review is for.  If it would be a common mistake (it is not afaik) you
can warn for it from checkpatch.pl or something.

The patch is just re-implementing part of the standard GCC <stdarg.h>,
so that it will only work with recent GCC (and maybe clang as well if it
implements the GCC internal interfaces correctly (i.e. compatibly) here,
and the same for other compilers).  Almost all of the <stdarg.h> GCC
itself uses is the same, but it also is compatible to the various C
standards if this header is included indirectly.  That is all just some
ifdeffery anyway, so doesn't influence compilation times noticeably, and
all that.

   - * -

So as far as I can see the motivation behind the patch is a) a
misunderstanding of what standard C headers are, are for, etc.; and b)
a misunderstanding of the GPL and the GCC runtime exception to it.  The
patch makes things worse than they were.  If on the contrary Linux would
use *more* standard compiler headers, say <stddef.h>, then insidious
bugs like that fixed by c46bbf5d2def would be prevented.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210904161955.GR1583%40gate.crashing.org.
