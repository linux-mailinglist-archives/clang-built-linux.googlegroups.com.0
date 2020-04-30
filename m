Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7UEVH2QKGQEXNYHWUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D92C51BEE93
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 05:14:07 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id v4sf4119610pfe.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 20:14:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588216446; cv=pass;
        d=google.com; s=arc-20160816;
        b=UaMwmJw3l1y13CJ8Rn5BUzzIYPkXfuYhCAEeeVVHSLkEF5KEFQWlFZ1FwL4alAbeVQ
         VBUnR3x3Q7KJT6JulOGUL/hI9f3B8kB3ONojdv+F0JwG6NtS0mYb+IudIQcz/oA+/aM9
         O6w00BTTB02J3Zy7C08p9OpCNeuQKdRqlt3vWS55yjNEP+zZ5u5UVUjKC7D5mSFAmyEH
         N2jf1pZWTkFPrDSl1X+7ojXOLeZy3fM2nIIDJ7u1IPgRToHi12w8m71Z1XLQRjoXzJpj
         qtfm9S0cRy/3XCuu6ymRUcN8TaLeIQXmkWrodV88+0tTp2P8lxowfQrvO8Hd/A92JSO0
         EuMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Ms60ui44Xv8Hm3OXLur4JqTSmsx08lHsAvzzNqJhX2o=;
        b=ycaYMopbmWDTd+BNlKdpG5nCJPv7YvfzcDngY2w7c4wS112okefxO9FZYZNKjIc1YA
         ZYwMK3dJyrkV2/GJwdtYzKXqCjt/bqi9qb/3NthndlHFWSj1cO+LvpjfvY3Caq/H9Kef
         zp82y/MvfhF6Nsrxu2Y2l9GtuOetMMxABpHpVoOnZfoBmeOJocZTEbtfHR+f61BJ4GmJ
         urhkgatQcwSYM5XVTJeGYT74DAkdJ+0zqliazOAshfVVNj4T6rm634xiX2aek5jDMqKR
         fiL5ZPQ6gIIIC6IavIpfAlL764GpDUIfAM3kWunosVGHBHoPJFXtJno674bs2fwp0eHb
         pHaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfNtPjRJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ms60ui44Xv8Hm3OXLur4JqTSmsx08lHsAvzzNqJhX2o=;
        b=H9i2lyvE9TrNaMJ/xsHAatCwumC2enR2XH9i1MetsusJe62owwIB28slGJJHwwzNsR
         vuXhcr4saqBJiH5uDM4LvNMApMjzcP19cyeLKf+Ons1ZVmdRHHac2WW0K3+BUDYsLH1e
         cwjxz882ZuLgojoTz9nAuMTlPfKRQLbDuPQGOs6nZl5tSrF/+zgLUzxt77rT0kAbG0W9
         LsUPTMVh1cI1LE4YKGkqrH+tDUNgJC26fVX8vlOhyyB/qcBvCDbwnizQ/bY8YtwmfNaE
         ZQq4RuDDM36EG2jJj3PN/hUwnT73p3JoMRNdu8ZCsNm7zqm/A+5+g+ZS9F8HlmJXB8X5
         fp8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ms60ui44Xv8Hm3OXLur4JqTSmsx08lHsAvzzNqJhX2o=;
        b=jdv6wx9J0/3tS+u+5Mh4iazJdHw/RzbRpP3kHzpNvbzr4cKVGpDCr7jFsjlQFdC6Tn
         QCDfGxs/bqpcaiWPNysxkULNeT1KxgdMDaNsShGRmGRx3rHRPR9ZHZaaWWqdK0LRyOL6
         rfL5b8KRa6tzmfq5qvZA/xc4OkjCDAYAq/1AuwpvIbDoIUKDzTuM42NffDFpbAnzOViT
         5ktqSHxiUghHWYNiQx6eEu+EfZmQhVlrhsVN2m3Jlj0aR4TUDHcawjQSeck5/IJ7nH6/
         B64UvxTEsWsBBt6WhsjJV3upvYkWf42D4S2noH75hBR8HaaTtxJ+9itTAz/lOVDYd5Q+
         XHiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ms60ui44Xv8Hm3OXLur4JqTSmsx08lHsAvzzNqJhX2o=;
        b=ZJwbCD7nTmN/j93N6shRHXEoVynH2/YFENlAS40OBbF8KjSWc+gVEmLvVTK/v7Autj
         D2KDgIlD86ri7k5mgnRoHD89jd2vWQWQVZN9g/KkLLieCJoc5k02KyRRWZxdtltpWpGQ
         rNQy7RJVSaMx6XIQMmh4brw69g43s0ru1i2A0JAMek9KjX1fPiywTKzf6naZi4vu3PHy
         kMhoZINC438NoPHj+iNHnmrr7yVq6LKU1JAlw9httLID57NFtWevK8h7CiPl9wJnaPHV
         azOZNUEIpGEF2GNhYyqN3T2vvjFQBzXIROqlsYRvKrf2+Bg52mV9ZPr3y0tVu7+4MQgE
         YwFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYdKTkjGjUofbpA/n+YoFnkcxzj3KiJnpZLtwzgmoXfE1bzWDpb
	tV8Boz7uLgaK12rNUVp+rSI=
X-Google-Smtp-Source: APiQypLSAw64EfVFgRfbNxPYtl8yO0UudlgH79NhNmgbMYW/1iZOsS94GGGmaTi4bkI6agwlOjqXzA==
X-Received: by 2002:a17:90a:138c:: with SMTP id i12mr561348pja.36.1588216446608;
        Wed, 29 Apr 2020 20:14:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b702:: with SMTP id d2ls2249105pls.6.gmail; Wed, 29
 Apr 2020 20:14:06 -0700 (PDT)
X-Received: by 2002:a17:902:8d8d:: with SMTP id v13mr1589695plo.67.1588216446196;
        Wed, 29 Apr 2020 20:14:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588216446; cv=none;
        d=google.com; s=arc-20160816;
        b=sRaxbuYDppF4So1Knh0sl5Aev04Wli/owftsnuXphpLsvrckwg3KcdAwIge5pO/9Pe
         z3h+xjji69bVNPGMl65ZkVi2fibpsJIvGSY64t0IY9FVlVRn11jcB+zi78zlVDzT5vkU
         DaO6dAr0f/kh5bTYbvf/sbF4OEioO/GcglulofIX/8wEHjUkhrT0IWS7OSX3E55IOHTK
         DsvvBGkChX/JAFeHLJ4DbBqN8LByDm/8DkUNKY7Z+g9rAeHcc+ldi/s7kgR+BLNX97DJ
         /DM2ka4j0aqP6MsEK94x1q+4ABnORJCaIyDCGPXCJMCCGp8mirL3LO/kxmJJ4WGL+ay7
         fIkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Yk1qx7mYE1aZnTKQ+ngsNAgl6tNY8Bqpu8zbakapxPY=;
        b=bjyodohyLNNaunbwDf1U1AkX4ub3S9SlwuW2bazvNyAL239eWwCa7gdO9c69XufDNK
         lSO3U1ymWcoAnDd4bqaPrO4xLGm/REuNucPSjsm0awRrn3qauwygfTz5rkBjoMvtev1C
         B89V8ewN4BWayw2E0pCUWBSX3pIEqiTUWz0Ct6+o5kiYt7rTB3CYk/rsXuFzxMx1+BDc
         3DLG2EHQPYEZ0B9IoB7vb4KG98BxLhF3O9qbsfKtyyWhopBvoOCvb/cIBI4A1gQ1MLgv
         A6ydEzkT99QtCs1psXnx2yHg/9Sy2zbdVHrT9zcsYok9SW+BAPljp4POOZbplZH9GDIp
         pbGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfNtPjRJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a3si245765pfr.4.2020.04.29.20.14.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 20:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id g19so3721434otk.5
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 20:14:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1188:: with SMTP id u8mr891347otq.360.1588216445527;
        Wed, 29 Apr 2020 20:14:05 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t26sm914093otl.71.2020.04.29.20.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 20:14:05 -0700 (PDT)
Date: Wed, 29 Apr 2020 20:14:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200430031403.GC3546299@ubuntu-s3-xlarge-x86>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
 <20200423171807.29713-3-natechancellor@gmail.com>
 <20200426162737.GA9322@alpha.franken.de>
 <20200427020830.GA260@Ryzen-7-3700X.localdomain>
 <alpine.LFD.2.21.2004271712130.851719@eddie.linux-mips.org>
 <20200427232406.GA8226@ubuntu-s3-xlarge-x86>
 <alpine.LFD.2.21.2004291835400.851719@eddie.linux-mips.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.2004291835400.851719@eddie.linux-mips.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pfNtPjRJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Apr 29, 2020 at 06:46:33PM +0100, Maciej W. Rozycki wrote:
> On Mon, 27 Apr 2020, Nathan Chancellor wrote:
> 
> > >  Can you actually record in the change description what the difference in 
> > > the relevant link command is, as shown where `V=1' has been used with 
> > > `make' invocation?
> > 
> > That will be rather unweildy to put in the commit message since
> > currently, $(CC) + $(KBUILD_CFLAGS) is being used but I can if it is
> > really desired. Otherwise, I can just put it where I put the changelog.
> 
>  Umm, is the difference so huge?  I think a note along the lines of:
> 
> "[...] This change adds/removes[*]:
> 
> <part of the command affected>
> 
> from the invocation of [...], which is required for [...]"
> 
> -- only quoting what's actually changed will be sufficient.  Reword as 
> required.  Otherwise it's hard to guess now what the change actually does, 
> and it will be even harder for someone who comes across it and tries to 
> understand it the future, when the context might be hard to reproduce.
> 
> [*] Delete as appropriate.
> 
>   Maciej

I ended up figuring out a way to get the difference proper into the
commit message in v4. Please take a look.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200430031403.GC3546299%40ubuntu-s3-xlarge-x86.
