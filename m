Return-Path: <clang-built-linux+bncBCR5PSMFZYORBN4TXLVAKGQEWBIGS6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D6E88A33
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 11:09:13 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id v49sf73886270otb.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 02:09:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565428152; cv=pass;
        d=google.com; s=arc-20160816;
        b=fNgxePwcazrU5AEtNu8PtAOtwDeU25Ep9Xk9DkytLgl1zrUiPfMBBAVnCQ2dAQBozZ
         EmL2WwV5ZnwZfKEu0tcmEAL+2bz2yc6ufh/qrQhAgV1IsOD9zS7/imSsteet//exZ2Y4
         sxMxSCE607caFNsCC5X7e1AfZJ/curPsJ0aQH/G+xoCJuH01xGnw5abasz3ZbhfkQwIO
         dmTStIw3C+XccvY1s64KsfFleZPiSZ0enQa/N/y2uZEAOcEnNk1pCKWi0cBYCeEE+nqQ
         dg9Z+7KBjuEcFT21rTDigtIeUfXFTxKaJoLRDhpthOqSo6KMi5uieHIYwfcv4EOhkKmN
         eAXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=gtmNNsOsYD0mlzjv7Dp5Z/N65iCRBODqHhAbUQ/Gm2E=;
        b=DKggMkY7ij6wSIaLHW7MLcxQWYD9Nz8REVykWIJ0sRvT153dIPLxXBXlvQfUnStkwF
         FoB3rDXAQ47MayS25/zEoS+u+K5c8sIHUB6xzLL3J+VP8lrwE2DpXnBbfqXcbblma6cv
         jeFL9Lgz+zFAv3vybviByCeAW0rhKmTQBLoM225ec5iiOPv2V1nBOiwwKdYoaF/BI8xZ
         XBI98Z/8+YGxfX04L+mgIQE0rTyKjxkhgOwRVf/IMte8a3zSV9Fe+UmsfCCw2FXsg4dG
         EFT9sXmHUnrdWJ7z7McmvAmBzJdF6fbl8/3ea13KCqYyvGQlW5Tmc2J2dUaNS5YeigkU
         EhOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gtmNNsOsYD0mlzjv7Dp5Z/N65iCRBODqHhAbUQ/Gm2E=;
        b=FNk8Ngv9O5IXNn7bFcnQPu9N+9WSHG85rL8WzetIXtHXhELn9JjouVO0vFCQAtpoEQ
         r5vHQ8hWTG30JhCz9cPReUYyOfQL0zx/BzkOTO7+ZK+Vs4S8L2qNwMqcl9II6EpXItQf
         3otJXR6lHieD1WM4wrWqkD967XCHve8HHrwucU0RqCayJZ0ibqcZM+CJfTqw7TbIbJZ6
         mDL6z12NbJYL10A0UxrfsKewpwt1ILrYWzmToUy6JNnPKE+8HCJ2STslE7jC7M1xQmzX
         9HAbAdutznkzyOTfqvqTnW5On8RJWCWEESy/DTtVyM5PlgyxfhQOXW+K8qHu6l7DUaU/
         SOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gtmNNsOsYD0mlzjv7Dp5Z/N65iCRBODqHhAbUQ/Gm2E=;
        b=QoS97Gxvsu6wq/Jb2KZls5b2BBHyqllFJIek5FvlHJlSNM9Orr5soMu5BIENfMW5Or
         uFFWRNh4NCsUrF/LMdmy1MLzFs/eg0wLxIX6rIOBvgZk010mIH5wnfBYQnVgBCf8459a
         S7T/msqU9k0VNaluuUriRjfEyF4OkdBuKys7vXn4/9BiF1Dvr+F5OnbaTbtxCpEbL4v2
         Mpi+f3+G46OITO8V5skCo6odiNr9JpBw43X4RcIQLowvWexRchWGLfkM2Nc0xNjJusTP
         1rHPGgg9gweqCmo5+HZkmLnF32VcPg9wXEOqm3mfmxrObyY8LxELrtWOQe/nIce4Wa7h
         mtDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/hiNiGgz0BUJ39Ju2BumiowBRFZGczfs1ApYnJ6tJm5GNMMnS
	JBqJmigs9wduzalgWPbTW+I=
X-Google-Smtp-Source: APXvYqy5f0jR/qXwWlDVOidhbZzmVhBn2fwlVtUq1MQ57MteMDIc1fkzcSlH5PmFtDj/P01DrfiJNg==
X-Received: by 2002:aca:56d2:: with SMTP id k201mr491882oib.171.1565428151959;
        Sat, 10 Aug 2019 02:09:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ac86:: with SMTP id v128ls2659771oie.10.gmail; Sat, 10
 Aug 2019 02:09:11 -0700 (PDT)
X-Received: by 2002:a54:4188:: with SMTP id 8mr9621453oiy.138.1565428151452;
        Sat, 10 Aug 2019 02:09:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565428151; cv=none;
        d=google.com; s=arc-20160816;
        b=z/NZbDsg4BV3XioSxFdkWGrPruizklBcuOOsbGCJIsx+aoRsIL18ZTcTV+9hjTaHMH
         KaYJvHhk04Ftplc17FCspi1vjkAGimlywpbGJeY3G0Mv9uWQc6U1m1nNohfS1gxKIw/p
         B+xp3td0EOyyHxBzIBvioGXUHPP3KBdSrVrdPxt49NV9t7jwhz1PYYN4elwRWZEyLXey
         gWN9f2cpohabFkNNZfGUmOUZkHJtj9Cj7dFlXKqAyBfZpUFbZqmeB9oStc51TdD2ibQ2
         dtXEFS0I5LoS49zcGD2SH9WHMLvkiBd4R93PTCR+WrLm+qGSbUowzGLRZObY7lIBwXTw
         DByA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=vOpQMgWBTGZbpRcjHjMLo+4vrXNNShTCOqQnX2+D6+o=;
        b=chTm0g2xglNHpUG7XLFbdTNEF6PuM4hg2gUUYHRs2+kHRwOR1K1V9mh2cE8ROhktnN
         l82Dygn2H55Vp8f3yqS5Lh55c9qEy2OrLxm+JN4RduVYTUFJFqAnJ573R3TWl5QJtxgU
         x5M9gO+r7wGFY2n8iGfLPXj+Qv1apOfFKXMr58oJUqdJn/v9eyvwYfF957ibeKYamNKI
         CMt1U7+NAl4CrKmhCJvf3VQ5PUyiKxastknInPtRbwT1DC6TMyL6jY8M2XNtlk0h/s8A
         TH1fMYBvSoWLsU8hbWXXK1/uZzzdLqS6MfvHWH1+coATlKG6G+XsuWxdC+IBKJXiEswb
         t0JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id b17si4781134oie.4.2019.08.10.02.09.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 02:09:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 465GWN1PVZz9sN6;
	Sat, 10 Aug 2019 19:09:04 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: christophe.leroy@c-s.fr, segher@kernel.crashing.org, arnd@arndb.de, Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] Revert "powerpc: slightly improve cache helpers"
In-Reply-To: <20190809220348.127314-1-ndesaulniers@google.com>
References: <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr> <20190809220348.127314-1-ndesaulniers@google.com>
Date: Sat, 10 Aug 2019 19:09:02 +1000
Message-ID: <87o90xs7yp.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> This reverts commit 6c5875843b87c3adea2beade9d1b8b3d4523900a.
>
> Work around Clang bug preventing ppc32 from booting.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=42762
> Link: https://github.com/ClangBuiltLinux/linux/issues/593
> Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Christophe Leroy <christophe.leroy@c-s.fr>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V2 -> V3:
> * Just revert, as per Christophe.
> Changes V1 -> V2:
> * Change to ouput paremeter.

Thanks. I actually already had this revert in my tree since ~10 days
ago, but hadn't pushed it yet because the discussion was ongoing.

So I'll just use that version, and ask Linus to pull it.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87o90xs7yp.fsf%40concordia.ellerman.id.au.
