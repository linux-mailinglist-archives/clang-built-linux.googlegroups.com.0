Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNOL4SCQMGQERMBLQ2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8089939AA8C
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 20:55:50 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id r15-20020a2eb60f0000b02900eddb317c52sf2805206ljn.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 11:55:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622746550; cv=pass;
        d=google.com; s=arc-20160816;
        b=0roGFuPQdO1DCWOlvZeWW6WMVYOS2knZUiCeTQf3CWpp4FBqM/XwwZUvxNwy33tpnH
         B+HTEwOWYUV2uetcbIrhioq9ypaBZhkyM27C3VQ1cKaj+Tb3dBlRXvdS3RzOg/museRc
         ukPXRCJZf4fPGCowLWQuARVaVx4IDTcXurWRqB6M9+ShWQJ0nouEss2GyTnMwfVFIKt3
         6PBCwKvO8YXZSLFGuUMnldCfd89Oi70zY2LThyr0h/NSe8t9ujErnHzAJIitPPXSqj/8
         cMr+pA+e66bOYn01DbU4/we5yWVEVArnF1wTrfJlVWXcWLnMI0PvinMK6OJGr442C1q2
         OOfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=KeJc74QKWxkRzOJPwXgry+hjgQKH01Yo3VgSvjfqnMA=;
        b=JkYDWQcNBOuBnpL/95FUu3KUAwm5Vcf9rCCXGny5TU3OOnSTKP7Xgt7OpvhXFOy84I
         rhCvuZeLjMsK+YXUEdyd9GYw8RvUCaRZ4KVCYUYWM89R4LhSOFF05xSbuc9mitCzYqrR
         zZ9hJHoLCoPhskI2DYC+7KR9jAYHjuUeV9mmVEnmNBt8aX8LhIE5ozBHxIyzaxxKOm+u
         ZWGxVgtWEILg91FkiOiuwmrywDgh15B8NhNomGsLBUB1nvLOIzM7rsF4pDw70tmqzLpA
         Dy7WGz4zuzIQNSqnDQdA10me1eqquv8o2BMYr9yDttF5YI24/7fF6z+l2caCvgF0WYMq
         VQpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KswaXb2p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KeJc74QKWxkRzOJPwXgry+hjgQKH01Yo3VgSvjfqnMA=;
        b=X/oCf4lQ7t+Q6vFuJD8VnYMJRvYkB86mN7c3qX1i0ZR32bz1pFmoRgpbXOyROZ99cp
         WUxGW70UA5fofV5RfkVd9gp2cJBv8wQ/DS1lgvOm3JrIP4yodtalysVUoVtanSN2ikYw
         fYGPBffjLxBpn9JPDC+GWDuc7xMWmYmjG4kZu3uv4SxQvcfOGpQPz6Yivg7brjdGEs+A
         wJ16TuJCzsYRhO1JJIaz8ljAOZI3U+HX5RD9cPL2cULOKsDQyDjgm2XxtmuEWM/7zSq1
         QHy67L7p7dFp5FPWEAGt49258a82nwkxF3sTDG0/h2AX5RhlzKZ7TezDRrP3VeM2XkcF
         1gig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KeJc74QKWxkRzOJPwXgry+hjgQKH01Yo3VgSvjfqnMA=;
        b=UehAehdvCjj8TymdJVFCR0dVpjbaUhne5wKioEa8R7QgbAt0oDuzWrjM2JQPvdC5lQ
         2LdCcj8fvG5HJjx9cFRKfBjge+Z/qOTEVQoKrpyh3hBl1PkgAGDdEVAI7LhxxDBeP1Cf
         24rvh+Xprkl9Xs7p9+ZMTuDhgfS1tfYQ0nuW+AlrVP6DY4zyUde9FTSMwWlu/0CfTBgq
         sdPaHqeI6Nb7I1xU/EXU+g6VxY2fuXzaiSL3vPQUox2mmF8hdpO9MzDLLkTD3KgCxEua
         tI8M8CECZ9G9vXCzIlMvS1GCkmw1p8tvlVGvApIT1wqstgksIqNK7ofjn2WtoD0pWvZh
         4/Lg==
X-Gm-Message-State: AOAM531DWbWgEOnUzvFZwVEkzEWcwIQWOIawUh+ExutofMlldW56k8AM
	kNXA3EhfmyFTllcz35wXb1g=
X-Google-Smtp-Source: ABdhPJyc5qqGXshzdkNpZRsnUSZ6yG2w3iQ18fMJXjA+fgcBIXGA++zdXK4PVIw6mN6Kx2O/KJ6EGg==
X-Received: by 2002:a2e:9f47:: with SMTP id v7mr576742ljk.333.1622746549927;
        Thu, 03 Jun 2021 11:55:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:591:: with SMTP id 139ls1019062ljf.5.gmail; Thu, 03 Jun
 2021 11:55:48 -0700 (PDT)
X-Received: by 2002:a2e:9787:: with SMTP id y7mr562046lji.65.1622746548832;
        Thu, 03 Jun 2021 11:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622746548; cv=none;
        d=google.com; s=arc-20160816;
        b=XUgsHDpqD9sOi1vK90vbRxG95w5XnmZELxgDmBIXIxRWW0QCBoz6C7fnV8l6HDb1e2
         aiXA7qI9d6RkF+BwNt/P+DJ2RzLo25Q/iVDJk62uISmg0XKkCFO8x7j9sjLSKYr0qfHG
         clj3woIS9CTfXOs7n5K9+JybNJD6r3vq7t597TxfxVrVSKhuqi59Y0bEzZoaLmIoqY2T
         2z0BDuV3XqDZBRStF55vYL0peolbnAYE/kag3dHRO+HXtsRH4oDO0O/bqOMXg3b32e7G
         aREaXU9E4CrpZK7v5YZ1zkR4Vv6gUfHR4Tgc37p+aw9T21TVyhhB8QnQ/ffOeyOxsJ37
         vA4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=SmeAAOS1Per/Afe/CVU1Fo9zqTcjKZvqS23Vj8pzznM=;
        b=s8gozoPg1Ihwibds2IiKO5dx2lnLboOrpoAdwLMuo/MCK5OQj+pGIsU6AWhawRFRW+
         nmPsYCVOr5ew1HN3z8VHRJn+a8xfb2/gg9Xc/bTg/j+xhB0VO91up3lY99NXA1XIJR89
         BRDF8bO0DI7Zq6HJW5KrmUfIldkCP+Sp3zqXkUTvRjknuFY9xGIEkDBj66p0X1O462/k
         e3msxnj6XwFik8N8VoRsydrH3EJ6TUrhdol0F7o5FOE9jzBuoQ6POIj1bwWr6MD2bQYP
         AWkXlSv09cVKkDJAXqyAsB6EY1hTajRKwK6/hWwDrBzWgwads9S29N+srdN3haeJpdjl
         7a0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KswaXb2p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id a21si167992lfl.10.2021.06.03.11.55.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 11:55:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id n12so3368882lft.10
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 11:55:48 -0700 (PDT)
X-Received: by 2002:ac2:430f:: with SMTP id l15mr228489lfh.297.1622746548268;
 Thu, 03 Jun 2021 11:55:48 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Jun 2021 11:55:37 -0700
Message-ID: <CAKwvOdk_7TrWdJWxtNmpvHptTA7cuRsmMrL-=8k=6_ZaRCeaWw@mail.gmail.com>
Subject: Announcing LLVM Distributors Conf 2021
To: llvm-dev <llvm-dev@lists.llvm.org>, Tom Stellard <tstellar@redhat.com>, 
	Sylvestre Ledru <sylvestre@mozilla.com>, Martin Storsjo <martin@martin.st>, Petr Hosek <phosek@google.com>, 
	mgorny@moritz.systems, Pirama Arumuga Nainar <pirama@google.com>, George Burgess <gbiv@google.com>, 
	Nico Weber <thakis@google.com>, bernhard.rosenkraenzer.ext@huawei.com, 
	evangelos@foutrelis.com, Dan Albert <danalbert@google.com>, 
	Fangrui Song <maskray@google.com>
Cc: "cfe-dev@lists.llvm.org Developers" <cfe-dev@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@gentoo.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KswaXb2p;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

Hey everyone,
I'd like to announce a small conference we're planning for those of
you who package and release builds of LLVM to additional users; LLVM
Distributors Conf 2021.

We're planning a day of 15 minute lightning talks for folks who
distribute and release builds of LLVM, with a focus on configuration,
testing, and unique constraints (or whatever folks may find
interesting about their distributions that they think others might
like to know about).

If you build LLVM for other users, we want to hear about how you build
LLVM, some of the unique constraints of your users or target
environment, configurations or configuration tips, war stories,
headaches, distribution recommendations, and problems that would be
nice to solve in upstream LLVM.

Some example distributions of LLVM that might be of interest:

Apple LLVM
RHEL LLVM
Snapdragon LLVM
apt.llvm.org (Debian)
AOSP LLVM
CrOS LLVM
Fuchsia LLVM
FreeBSD LLVM
NetBSD LLVM
OpenBSD LLVM
PlayStation LLVM
Nintendo LLVM
Chromium LLVM
Arch Linux LLVM
Open Mandriva LLVM
Gentoo LLVM
Google3 LLVM
your distro here; I'm sure there are many more distributions that I
don't even know about!

Please help forward this announcement to folks you know who might be
interested and that I missed on the To: line.

When

Thursday September 16 2021, times to be determined.

Call For Papers (CFP)

Please file an issue at
https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues
with a proposal. The CFP deadline is Thursday September 9; one week
before the conference. We will add a schedule here with accepted
talks. Talks are expected to be only 15 minutes in length! Keep it
brief!

Updates

Please click the "subscribe" button on
https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues/2
to get email updates, or "watch" this repo on GitHub at
https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_7TrWdJWxtNmpvHptTA7cuRsmMrL-%3D8k%3D6_ZaRCeaWw%40mail.gmail.com.
