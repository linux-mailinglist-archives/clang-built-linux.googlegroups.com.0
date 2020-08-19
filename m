Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB7N26L4QKGQEBSMXNXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3F824936E
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 05:33:18 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id p12sf5061961lfk.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:33:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597807998; cv=pass;
        d=google.com; s=arc-20160816;
        b=RQlHIPDpS3ZUiVcM+zv0sGeN5670KtBT9I7H2e4V4uVQPc0ypRcjSTi6p3rJ9s+fO9
         8JF1nisqj0QEyQ/TI3wNKn7PrAzqdPIK//TgW9/BzOxb6YljQ+3BlgC1ZuVztXNqz1M8
         dH4j6uW7QnnL6cjU7BIVmksRzrV02YrXv727J4ZSFqlMXckT10gPyh6g+LOTt+PF+dW4
         aVHHP1FYVXz5eceAubipD+H+t8bsBfUQ1HZoZijXJO9tD3SBxo0WVdzvvGHdU2G2E6vH
         vtDRGOYT4V2OGhjNzoDpltLcrpvRBJ5MkeVpxF6Pe0ilB773sJdDm7nnDcXGAYbdnKGR
         LDyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lsqLjs0YJDOLmvRkAU86CZmQmFD4Bf1NWA6Kn9UwEDY=;
        b=OqecC5ny0ry1iZpkRF/rJb8uuyaC0A85uB+MAxc+UbVye+fRAi18zk0dT3LXV9Tjy/
         lIetwkP8/VTpI9EnGwDrKbasOWBEG7Alz4GYnvAt8qDIgoVPcUPGVW/sJjsW4b8s4Rr4
         9z7ftxPAtNtD9FvCFR/08MpUhjhpYJZc/Dh5tuoxhlxVI5eZiW8UrXFt8MWN7wR3+Gk1
         seJ+1vY9Zc/1T9MH4vE3wRTKQI6SUgAEYuYsRy2tsy7/yDrpfNUY4hm6Ze9MDTzyC9tv
         Z26So6ow8LwVvOuf3VQEj380+6Et5ECc0MJc4Cet3n6cQtPM28CTZQtv5iIfjr+m57IX
         PbDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gdBMzTnB;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lsqLjs0YJDOLmvRkAU86CZmQmFD4Bf1NWA6Kn9UwEDY=;
        b=SNjS3t2NfyMtZyNr1p+gnpeHS0RxcN9YZKMfan/Q35NuHfs4r/1EozHd3RkbB3jij3
         HdmFvwjueqI/vhzhCq62FakrumyqF1uDCpwWsvcF3K9uPexz+DmcQZjTuiku8O0f3WtF
         yqcy8VAX0dGqRtacL69evusfGxduS/BVX1QLGbkd0tQdaQ3DGsNOkbZ+rLIoHVl/r7at
         EnlxGYsu4VaPVIdeQPRowaaJwQaTABMdU/J+jyIaSUpdbGzBND1drh+X3lFkQKDJxzKl
         ymPdlLnaOoCgfwpu6lQvpORSkT6Rv1w5Qj9SLljkaEPAl/NciVXdcgzuaPmQ/dqAG2Kh
         8WfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lsqLjs0YJDOLmvRkAU86CZmQmFD4Bf1NWA6Kn9UwEDY=;
        b=YplNozV/riWXD/pl31CSLGl8eE3h4nvcv2e4mMPDnktGZBW8DioeI1oPOc3p9/sqqa
         kMie4N5tKU8Tl0PXp7aAr3ik/J2xK8qLN9qG1WpO3EUqQgdVgK9Ly7tyi8YZVjzlM7LT
         5Ohi1Hm434/pRgxJ8+QhhZHYiNATVJnfFyf9132miMtwjAwqu0j/PxiDf4XEUotN/JOr
         7q7pjz4nXO5gj363vGAbrLyg4O88F5OBd99MQflpA7WlQWJQWH/AuM5i+5+KRRbsTN7+
         iZj6mJ4jQWJNkKwHZqYv4Y890s2ViejUMupGiu+Dq3tf4ZoxDXFxlyjoT+8K+pmB4cgM
         VY+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wiouvFcGmRmxdZdhKiuqpmS3QyNNBXwhBC2mKYiqESqFFERF9
	pLpp/RTclRGvaqF9+vfOTa8=
X-Google-Smtp-Source: ABdhPJxJZoBw/Lpk/ifcgcuq069GlYjFUIn8cfZQb8tjbMp6RShkN0WyAJMXzaNKwu20s2jzYdjvdw==
X-Received: by 2002:a2e:8697:: with SMTP id l23mr10722824lji.190.1597807998204;
        Tue, 18 Aug 2020 20:33:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:294:: with SMTP id b20ls1306100ljo.9.gmail; Tue, 18
 Aug 2020 20:33:17 -0700 (PDT)
X-Received: by 2002:a2e:555:: with SMTP id 82mr11477263ljf.337.1597807997232;
        Tue, 18 Aug 2020 20:33:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597807997; cv=none;
        d=google.com; s=arc-20160816;
        b=pFGLCqUAAyDoRF5sbXdm0mnHC0aQax1/zsjRkkNtq+ilLZyKSoJPxyOJ0SfpsElEv4
         X/0O/wQUSohQEeuTlhuk4pwBaAToZGFuHOliaaqkJiC5eYhC0Uk0zjJVSY3pZ7nci8Vt
         DuGexeBy9wqbyDLUKfRFWa4vOw3eWHF/epfO/V96VhdIpDT50nCFO9dLTlTNEI1jv+kg
         dJQy5dnrU/JJM09ltHqUtpu9MtwquLKREsV0spU9NIY1sOAC7i6g7j49gtyhckjbzV9m
         9WXhCYHnbZt1Ub76MCLwIDcCTwruXNPn6u+kjs5yl2sHLCqjLGWEucAsz/3+40g1tn3B
         ln6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ao/sHNcaqVhQQMi80lMo4XF+FLR+4Bj6pKAQTXaD+hQ=;
        b=LaCfxI94d0QqK8/Ia0iygnjU2WybrtkeVtftnWbfY4o5PzRFxIxqdnM3+ykhjbrDIs
         uXpvQ7Jwk7olpQ/whsoXEJwDkjkKP80vvQry141d/dpm0laI19TEY4C1OVsChHHf4wjk
         ZXeaZqnqmGht5avoD9ZpFFETJX4JfEhCb6y4ADvhLDQdPhrOIHUppZE4RywWAVty9pWv
         Ev5HbQ2vBT3xXmcQzXVRKJl/nTGOiXtmk6eheNbMgsqme3w9Az//eJVYp4ZqdXMdiBlZ
         o3Ixkgc4moOOiGFTzaidOcPXQ58Ibnc++Jj63jwDdhOtn9Rj5BjFkQSiAgzAdjaKk0Qj
         RH5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gdBMzTnB;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id t3si629617ljg.1.2020.08.18.20.33.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 20:33:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id 140so11317012lfi.5
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 20:33:17 -0700 (PDT)
X-Received: by 2002:a19:c852:: with SMTP id y79mr11089547lff.37.1597807996398;
        Tue, 18 Aug 2020 20:33:16 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id s2sm6376401ljg.84.2020.08.18.20.33.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 20:33:15 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 185so23734771ljj.7
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 20:33:15 -0700 (PDT)
X-Received: by 2002:a2e:7615:: with SMTP id r21mr10463304ljc.371.1597807994822;
 Tue, 18 Aug 2020 20:33:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200818234307.3382306-1-nivedita@alum.mit.edu>
 <CAHk-=wik-oXnUpfZ6Hw37uLykc-_P0Apyn2XuX-odh-3Nzop8w@mail.gmail.com> <20200819030442.GA3396810@rani.riverdale.lan>
In-Reply-To: <20200819030442.GA3396810@rani.riverdale.lan>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Aug 2020 20:32:58 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
Message-ID: <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
Subject: Re: [PATCH] lib/string.c: Disable tree-loop-distribute-patterns
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=gdBMzTnB;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Aug 18, 2020 at 8:04 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Aug 18, 2020 at 05:44:03PM -0700, Linus Torvalds wrote:
> > Using -fno-tree-loop-distribute-patterns seems to really be a bit too
> > incestuous with internal compiler knowledge.
>
> Fair enough -- you ok with just the -ffreestanding? That's what protects
> the memset in arch/x86/boot/compressed/string.c.

Yeah, I think -ffreestanding makes sense. It may not be optimal, but
it doesn't smell wrong to me.

> > Looking at the implementation of "strscpy()" in the same file, and
> > then comparing that to the ludicrously simplisting "memcpy()", I
> > really get the feeling that that memcpy() is not worth having.
>
> I don't think anything actually uses the generic memcpy, and I think
> only c6x uses the generic memset.

I do think maybe we should just remove the generic memcpy and memset
and say "hey people, you really do need to implement your own".

Even if you don't have this "recognize and recurse" issue, you end up
having other issues like just tracing etc. Yeah, we've hopefully
turned everything like that off, but considering that no major
architecture uses this, I wonder how many small details we've missed
with ftrace recursion etc?

> Might be worth optimizing strnlen etc with the word-at-a-time thing though.

Yeah, possibly. Except the kernel almost never uses strnlen for
anything bigger. At least I haven't seen it very much in the profiles.

The "strncpy_from_user()" stuff shows up like a sore thumb on some
loads (lots and lots of strings from user space for pathnames and
execve), but the kernel itself tends to seldom deal a lot with any
longer strings.  Stuff like device names etc, I  guess, but any time I
see string handling in profiles, it tends to be in user space (GNU
make spends all of its time in string handling, it sometimes seems).

Of course, that may be just me looking at very particular profiles, so
maybe I've just not seen the loads where the kernel strnlen matters.

memcpy and memset? Those matter. A lot.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiJLvqS1_O%2ByAQSZr-Lj49HdJyLpt3J_nW%3DotHLfEN4RA%40mail.gmail.com.
