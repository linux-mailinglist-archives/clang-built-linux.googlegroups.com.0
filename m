Return-Path: <clang-built-linux+bncBCR5PSMFZYORB3MUXXVAKGQEA7QGC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ADD88EB4
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 00:51:27 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id q16sf1212261ota.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 15:51:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565477486; cv=pass;
        d=google.com; s=arc-20160816;
        b=HruSXRxWG5SxCc6F/vKgSqhk0gkNgeJmy6qMwIogQcvzHygnnE0qDnctJm4HDG6Lcx
         jXRd1T09X5A5c89KtCza7EMrWs25c9CBbqK9KFsdxlKWgSJ1XX1tHERTG+EPyWcOvMHt
         wBwcjtUCscEdwREAf7RI6dMLqVDIHK6NWDuTUT/TTMrEhRl51Odi4UZ3nx9pxTIfraT2
         4sAcmsgGd2OBIHQ2rg/uRRnR0gwA7WuFgX2ZQ8rcS6lwNE+zESLmzbXldwfdnS1TDuTD
         V3ZX+brG3PdKb9oJydD4MwAYkQ7Cvd3CidZGEJQT8HPHAt/AsJeZIzXfdHb9Qu3zGNY4
         hINQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:cc:to:from:sender:dkim-signature;
        bh=Nh9FUbtix1GmbrLU4DW/ckPoB0ZSNXmhBvqc9L3GABM=;
        b=ifko5ZEysAfHDaQ8S3laM2wVj22TcyivwhlNubaH4a9R7TwbWS7J9xe9VHdpTrS+Us
         17Or8xopD8MkzO4BadaAadfqnTf5xEw+RPdb1r/LJaVinZk6NJUUI48ByQGvn/mB/tKF
         RB3gASQF08FeUfTCNQMPaOsa5qVQkiCWGQzmDkJ7Safh8m5XfZ2Vx6PJqvfXnWBYrSmP
         yfgfdMei6PDSK+ESc2/S4uKdTTQIiqDRNXx3hiIIuJEC6bC20TYcPt2UDo/uxj9hFTq5
         L81ukZM2zJ60SefFaNi3s/RRrGgVtU3RJSSg/tdAtQkI7lcBLBTq7FrK0HreuBrfOiL7
         9CMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nh9FUbtix1GmbrLU4DW/ckPoB0ZSNXmhBvqc9L3GABM=;
        b=njknsWhOv3eQor+3AGhSDO4+Uq2nAyAbFafaHguxCXDNjaD3xsWDbOWbNxf1jvj4Xg
         NFT6D8S9gvhGlKiqIzVMlcRA1JKJT7E57AttaZUwvja9kvF1erANDtAtT307y+8yRuSH
         tAgIEBTUtMCZwCWmfWchWyOLm2NEXlqVg3BrGD5zKHqaWD9K+56HXpEqZnRG86DXa8Ps
         T+bdcREwDSWqWNtc0MVU62WSH5ShZguKpBKcar5iodmmjIC41MW6RF5RvBrTtlhPnvzb
         P/5EmfcSkttVBSaT0Ef6umSnug64haV4Q1FVOY8C+rHeuFqkf+uhGMpCq+FmfUf3SImv
         cK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:cc:subject:in-reply-to
         :references:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nh9FUbtix1GmbrLU4DW/ckPoB0ZSNXmhBvqc9L3GABM=;
        b=omUkKY++Ij8JI2sJCz6rlhdE24xYv+P3ZUqKW8u1m9/+VIPBzZ8jsE0keQpgdinmDy
         HiJ+J0Bk7/TnmZrZchi5IGDYD4TuYdoxES9uHwfaPo5sLL70lTK5cTJOKlUEhllLW9Vh
         8vNQe+WZg+gmr4F6rPJVCnQtSykpaWpvTldvDOfCt3pXHB74YKNsFBEN/dIOLPHpn5S5
         yb55T1fCMiJCcQYj2Tx+bu/Q9eCKppeRYCFcd9AmMLr4FWUtb3SaJ6TXmOxDQtr+ZDcH
         kYUsKin5HoKidk+pOzMdBJ0h/+a0QIUwh5ry1fX4d5wbVAD8kxR7TeIMkd/xd/VYM+gX
         j7uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjxal+Dwu740MZeuRinzFesUEau0aA9UW6f4SverklpKhVaSOY
	F11USePaZtrB87+g9IlVgZU=
X-Google-Smtp-Source: APXvYqwIW4UV7oRmBAOYRQqjoFLTOPrLfJzcfcGz7Heolj0frWtoBup91hlz4naVKxOe7en54v9osg==
X-Received: by 2002:a5d:9f43:: with SMTP id u3mr8784492iot.301.1565477486119;
        Sat, 10 Aug 2019 15:51:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6303:: with SMTP id p3ls5003472iog.11.gmail; Sat, 10 Aug
 2019 15:51:25 -0700 (PDT)
X-Received: by 2002:a5d:80c1:: with SMTP id h1mr6075063ior.268.1565477485743;
        Sat, 10 Aug 2019 15:51:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565477485; cv=none;
        d=google.com; s=arc-20160816;
        b=suRLiokJaK1blDH6QY7OKYCJjtngErfHcpwvKDe6ZahAuwmLTtDrb4aodlFtQM/u2W
         Lc8nQQd80JWRcD+ctZW75ZOBX772L5hwMDH0Qr7MOSP2KJWT2K6FLa4dqBq1r02Bx4YF
         a1Eg7bGE8ZbP5HrdemenXahBP+656hlBfTqCegrIt74mtMEVsmnXjXJYyUaNvSpss9C+
         d6jHWR2d9Mxn8gH7iS5j+II0sbKqJ484P08gk9H+UEGqvXM3xmLSzpmrNRlKcy/oWSLL
         FPlZarcC+fMA2jTBOvQbjmz1D3D0GbxkGM64Rm2zpYK+yVw1Pb7JHDK7L/TOb7kpOUWx
         cghQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:cc
         :to:from;
        bh=ORzhR7rAn0OwosEPZrw+CSSufcCeYM5x+jVFqfQTPMY=;
        b=HpGRfmP2D92ovqTMAL6PZyPZ5BuXNfDozSZ8kvJUJGMzf0gibveImh/HC4uoPHVFwP
         HaxZMMSAKFSJdrJjiVL7hA0MDNZgko/ArJbq0TpFeD5Q2u1FDlkwhlXIxlRLrhZDa2Ty
         0fr8HuH3+v6kb0Ew+85g4r4gbOhBhLj019H58iynqYKTeUbZo88zVXg8h+85lCnGjCmS
         jSfC009rfUM3AaEeHvGgiBQt5zkNGdRYqLJZn2beE2UDT/f2Wy7SteqXPKv4f+4X6tip
         FiycJVPv+Qb6zClTn8GIO0Ic33kFjMcyBGkibqnZ4hYL9+/qLpnExgRKFRahadkJoKUj
         cE4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id m190si4047537iof.3.2019.08.10.15.51.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 15:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 465cm81cblz9sN1;
	Sun, 11 Aug 2019 08:51:19 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux List Kernel Mailing <linux-kernel@vger.kernel.org>, linuxppc-dev@lists.ozlabs.org
Cc: segher@kernel.crashing.org, arnd@arndb.de, Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, clang-built-linux@googlegroups.com, Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [GIT PULL] Please pull powerpc/linux.git powerpc-5.3-4 tag
In-Reply-To: <CAHk-=whnEp5+EM53MaT-3ep1xjhrUqCdcfBfTF9YxByGsmDMRw@mail.gmail.com>
References: <87imr5s522.fsf@concordia.ellerman.id.au> <CAHk-=whnEp5+EM53MaT-3ep1xjhrUqCdcfBfTF9YxByGsmDMRw@mail.gmail.com>
Date: Sun, 11 Aug 2019 08:51:19 +1000
Message-ID: <87ftm8skgo.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

[ expanded Cc ]

Linus Torvalds <torvalds@linux-foundation.org> writes:
> On Sat, Aug 10, 2019 at 3:11 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>>
>> Just one fix, a revert of a commit that was meant to be a minor improvement to
>> some inline asm, but ended up having no real benefit with GCC and broke booting
>> 32-bit machines when using Clang.
>
> Pulled, but whenever there are possible subtle compiler issues I get
> nervous, and wonder if the problem was reported to the clang guys?

Yes, sorry I should have included more context. It was actually the
Clang Linux folks who noticed it and reported it to us:
  https://github.com/ClangBuiltLinux/linux/issues/593

There's an LLVM bug filed:
  https://bugs.llvm.org/show_bug.cgi?id=42762

And I think there's now agreement that the Clang behaviour is not
correct, Nick actually sent a revert as well but I already had one
queued:
  https://patchwork.ozlabs.org/patch/1144980/

Arnd identified some work arounds, which we may end up using, but for
this cycle we thought it was preferable to just revert this change as it
didn't actually change code generation with GCC anyway.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ftm8skgo.fsf%40concordia.ellerman.id.au.
