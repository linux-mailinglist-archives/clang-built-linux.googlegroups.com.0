Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBX5V5ODAMGQETVPIZPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8E13B6F77
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 10:33:35 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id x5-20020a0565121305b029032696702876sf4895659lfu.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 01:33:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624955615; cv=pass;
        d=google.com; s=arc-20160816;
        b=Typ607lLm2YASvV837e8Jz1ryawOsV0o+44CwxY9VO1sq6To+IhAGJktUTnWrR4u+f
         hZqlCyvHUJA1twCzaaBrmGIj0zUGnhoffDGvAEM7/cLzls7YzPYJLYJcse5PuX9MNB2e
         hwo9QyjPU35/ZSFgBsumMEB5p7aqd8hLAeVYeazSiuoV8G724gkopGsWcEa8kTYe0WCT
         aknREk2IkZP/3YZNJH6rhUl0mfmYquBVbeeKJtXE4E9PxFhZlPcNpP1wIYwzbEBLUmMn
         zdT/eaKIyNDy2DLKHM5Ixf4bJ5G2JIqDdB7K1IaWDV+JIDR71+9nUwPg23C5oKtCt9NQ
         aqSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vMUZzPPQA7GOPmUl/nkcHoyObp0zSZWbxWJp8KrsuTQ=;
        b=EbimuR7Pq3U2Vi77I4bnyMuoqWjvwHzeRK0mzf+OFGRwOv/71mtjyG5yHWVbtYxnRU
         bLz4RPBk3ury2S79rPdY3a1/ENsEgk9Pq3x/nYzAz4iZV6scd5sI1um7JK6mcv0ZRICY
         aQG6N7qQeQCUA+4QW8pBP81wXid1fjzUV0OX+8w5xFTwhT3NFYVKC83M7yegPXn89AyH
         ufnGZa0+D5dvzqV6IjrSPw2e9M4CLWXKX/xE+L/7OCZYtDFhMxSPhTMc6ke3/20BjAEt
         WZM2jHly01WtJH5rzrr8XPguMwc9hG6Ooj1+X3NmrZejZo+n38+sQ5j169I+/zGRLo78
         S1pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vMUZzPPQA7GOPmUl/nkcHoyObp0zSZWbxWJp8KrsuTQ=;
        b=Dn0Yi2Oj53xGcagKCa7t3LyRoJQM0/e0bzO5z/Luk79u8Y+VPxNrLk7Edm2Dfnr7AB
         UrXgDThJWktwCa3w5rHLwZKA4pS/SBEWhrppi+7RWfpuZusMl3p9yyUutBXCGtzAuGRV
         PLuvRVLTke00LmcYob3PK0LAbJlIxTRDDUcPQpq4NPol+uuCG7j1Tlqde9CD/eMPHGCf
         jzKe1ooGLZs+Vo+OABhDqq6+5HQfZRkxdcrIdPkPnW0MnqM8AR9T9oCTGOhWTaUyXHDa
         mbXi2N+0T5ZKlsBnqbsxRPR1jlsQM2aS+n5kcsEVMPfHWKEFfpUhJwp0rfhxGhisVe84
         u3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vMUZzPPQA7GOPmUl/nkcHoyObp0zSZWbxWJp8KrsuTQ=;
        b=nFVEdLoxowBfCKObi2U19teWC6TUaPG/GcfMY3VqsLVKFFPeWOQZVCqRP7xpG+Alm0
         V6jp4j6dFbuFQTfROgD62f5sGrDFEgbGQ4/TmF7ygV08yZZ7lMEkND6q1flNOr2o2YvU
         PEPzu4V7l6fF581WKdZiahCkjc+rbTmH8/F18sKX1E3gpULYQUEOMN5MfPNEMIHvBDuy
         DCJiMWa3i6jtPJH2dRaGjDDAV4lEdPFkk8iWNN1x/Ef/ycPdsK/ZJ7lCdxLN+hDnMMse
         AJIdgYvq0i+C7MLROkMvsItufHbYVE2MdnEeIU9xHPfG+ABNyhpwSiYe8hMr8PQAvWcj
         MHQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53030uRGShVu7Cd6hR0y2JTmmuA3AZhxcxZG5fdisEPdfaEaN7ts
	8Z6Ec06Bom4GmgO7J9N1lpQ=
X-Google-Smtp-Source: ABdhPJz7P8h53V2T6scYq9K9ZFOceopjamdDGffACmKXAmkX4wgNfGFxTN9LWhiRQJAQ9qcemT2ZVg==
X-Received: by 2002:a19:f51a:: with SMTP id j26mr23156391lfb.390.1624955615480;
        Tue, 29 Jun 2021 01:33:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:a04:: with SMTP id k4ls1103166ljq.8.gmail; Tue, 29
 Jun 2021 01:33:34 -0700 (PDT)
X-Received: by 2002:a2e:b5b9:: with SMTP id f25mr3086736ljn.317.1624955614383;
        Tue, 29 Jun 2021 01:33:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624955614; cv=none;
        d=google.com; s=arc-20160816;
        b=eEHVhlEnEg/TC9ilkrW7CWaAqbKJK+LnRTaBnSM5p1bxBN/Dv8D+TmqC7ojodP8eyM
         3wONcIi5uyYQyqIzNbCjq9H69kC3lVfCm9UL0KeufWal8wl06mJ3UUAN9LyFInVSG3Cw
         MyKhtHI2g8v/G6yHrXzI90Rw4HJfegKeMC5qUY1Z3nTr1Lc/OqazU6b375oL1tlOEa3z
         5lXmsf8XFJ49ytWShamserDVQ7G2P66gsKjLet9ITHYfyCMmK9tNNjqqlkbGXpi2v20d
         XZGbh/AebaVtlPtpRKHwOVkmWWWYW2zMO1ySLoYXIqys3EMuZX6uV6wjVLN5y8gSh1Qc
         g3Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=mKCI/W7s4fjeqhrZqLy2MHkZH7x4WEwgQb9Yb7L0zTg=;
        b=z5CaJPbo0BbWJVg34CcZ846x5OZPtg+CSqDRFSY0W1PKq/7l51IopmGEXORJCqQ+li
         RVNAXxM7dGz4mr3wM4otaxFl3H0DDez0Au75SyH9+XUBQB+j077zYaPHID4zlmj/6Wuz
         C4IKh0h8PX2r4oMwYt63q2zOQNAiDf3WvEKPt74azqE0Deyu3+VgOU+WCKyADfAAWYOf
         3LwroUwsHJFuRLzvdjsQ0lRdfTkSZ0sr+TzIDS4zMrGRJnjCPfwzOyQ7nhaCbrs+cbZ+
         DBnm+Nb4V1AeF2QmmkdVJZxlRuyqF43W7trCnRDScRh09ZGa4y67qVVEqw7UEvUpoV2R
         4HfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id e14si546844ljn.2.2021.06.29.01.33.34
        for <clang-built-linux@googlegroups.com>;
        Tue, 29 Jun 2021 01:33:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1ly9BU-0004qC-02; Tue, 29 Jun 2021 10:33:32 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id F13CFC073D; Tue, 29 Jun 2021 10:33:19 +0200 (CEST)
Date: Tue, 29 Jun 2021 10:33:19 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Golovin <dima@golovin.in>, Nathan Chancellor <nathan@kernel.org>,
	Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <git@xen0n.name>,
	"Maciej W. Rozycki" <macro@orcam.me.uk>,
	Tiezhu Yang <yangtiezhu@loongson.cn>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] MIPS: set mips32r5 for virt extensions
Message-ID: <20210629083319.GC4650@alpha.franken.de>
References: <20210628215029.2722537-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210628215029.2722537-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Mon, Jun 28, 2021 at 02:50:26PM -0700, Nick Desaulniers wrote:
> Clang's integrated assembler only accepts these instructions when the
> cpu is set to mips32r5. With this change, we can assemble
> malta_defconfig with Clang via `make LLVM_IAS=1`.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/763
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/mips/include/asm/mipsregs.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210629083319.GC4650%40alpha.franken.de.
