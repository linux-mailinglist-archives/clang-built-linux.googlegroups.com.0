Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBVHN4CAAMGQEVECDDAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C46F030AD83
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 18:13:57 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id i7sf14369460ilu.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 09:13:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612199636; cv=pass;
        d=google.com; s=arc-20160816;
        b=gAHpl77fuXt+pRII8wR0ZVwy/18q+bEC9uIbdVY6CEwCvdUdTyu+eaT2fPidaKNDde
         Df8U/aOloQjJN5I8bAEbB31GFm6EfMQEPiqumaSX9fJlBMmiLO9ZwGeN4LiHsZcAFCE3
         cQut0ktyLjc+x/eN6rAm4yHBog0WwgKqs5U6kw67PliufRzVn0H+nm5TfqB0wm8kORnv
         uS+47iq/UHzeTj1D/tZZ094geOIphZYokXTDot22JTJJw0xJU0ZaPb9rHorQ7TLpndGV
         WvLcLo3tJRyidFfFU3o89nzJa1DfUfdhEyogca1N6xOQ6jD1JUe1MxZuRoeAbMrX7nvh
         3uBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+N0jQ4z6WiL29tTeZFxJD8H+vEdKSdUrcs0XqsXq1eo=;
        b=woXwiY+EYkuf9ikByZVRvQU2ILkPecYxPU73xBdpEdEHCx9tjyuKIRTbspa2hFLbrX
         emR6t+dhsNSKxzlacMJ87PBfTR7IXVMK+ts+8hLrcHfEElUqgfQR6jSSVVh/Cf3H8az4
         VGpF17HE6IpRbPBAk9ryU3Bu2UcYyjxO28nmHetJ+HlVJ/P2+uAMRJJr2UJPBllnxui3
         2SW7czTSv5BqFUUTcTvGT9XVDFPD+VNzY0tSw6S84zKk7gSpczfxSGvZGGStB1w/nG4C
         1TyTNc+cEOqnfC1PWzadZxKykKDp4tHYvJt+ToOynzc6pczYDb9ELloaLThzl+ZJ3t0p
         UA6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+N0jQ4z6WiL29tTeZFxJD8H+vEdKSdUrcs0XqsXq1eo=;
        b=WMii4yuh9NwzQWNBCU393u9VWvqb1LDiKorq7NNKMTcyr0Mx9ascQGuXbRBZTzUgbf
         pkdcFu0OZ4r3T09c2FCNDIMT+cpF4fXWIgbseRHVP8HfsIqbbZeBc0u6IjndfefOalmo
         oH6ylOu4aWtHFHqWFI+Fw5ateK6k4LCGf5QpvxSivCE+f+D9rXICiqI6Y9kGly7Z3CLZ
         NgaulnVH8pU+7bRxMdjfRb1IhIOUN/kPYqEX5ZU+M9zpXMAF+h27sgo5DTgKCQk5O+cj
         Ig0ay2E0gn1O8J3qReEdOTxRzY+/isTKLncW7XomPtowhGPJi7vwhavXdOmNQb+fDnm5
         BEXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+N0jQ4z6WiL29tTeZFxJD8H+vEdKSdUrcs0XqsXq1eo=;
        b=Mepl6+jHqKjeFkjI7/i+Gc7dYrjQKojXP7QvT5F4uPRWlm7OmP8HXZQpn1CeCjoy2F
         ZSO36AkFc8LKriTElVodW147EyOXLAniCJqwO486h6DsDFCVH1r18tVtHGDwTgyn5zkw
         pjadfy/yBepaKFEQaIu+AiOJhuEJy8kR+5MIsxWO/gtRY9ZqzDErXcbcCEVJX/BvLa/4
         0X4coClYP23B3pt/p59xUJlW0GOiYuKU0HCMvQEZ9xJJN+4ONRo4GsbLjZhdN0WRhNxC
         n1uIJDHfw1gpA0etFkalG1e6gJi1cwYTiHgnJgEHjMBgvnBsVMT3eIY/G71QnwHl+EXE
         UIMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LIq/8yGuXNv+ERrIF8ZIuaaub5cJaoyJ1KvMf++HJI64QaZHA
	Ps35icFuEbZmOqx/jD3m2Sc=
X-Google-Smtp-Source: ABdhPJwtRAM/hjExOxKaHymR3Ly81EYwVRSAAhj8XA/KVaNLQQWeYCTDtbC3ZYRQo+m8xJKhwpoX5g==
X-Received: by 2002:a92:d3cd:: with SMTP id c13mr13574096ilh.49.1612199636509;
        Mon, 01 Feb 2021 09:13:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:5a03:: with SMTP id v3ls2067806jaa.0.gmail; Mon, 01 Feb
 2021 09:13:56 -0800 (PST)
X-Received: by 2002:a05:6638:3795:: with SMTP id w21mr15357818jal.65.1612199636103;
        Mon, 01 Feb 2021 09:13:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612199636; cv=none;
        d=google.com; s=arc-20160816;
        b=Uu4fYHJyA3eyD/60CYrmuHPS9qYnMuRsljFkH3C5iiZfUdIoBR6FEU5YCmukJAfABl
         XZOeG+91oIlB2RWoqxEmM6HMsM3GjLvg/gNqanxWlT5cVoSQJ/21SR88Pd8FfjFhdHjp
         wSYppp+L7aTTNg4XcD788BPExWr4DkUhZsXXnaZiA05kpVg0+wqFq4Z0lGj8VylEOEbF
         uY1/A/pEJHEvm9NHlJY+C9ZKGJJX1T1l0vqviv0VdEyA6hv4fV2bujlAAsWH4ymT8XJV
         lH5N+mjl6sijqQCwMYdEqc9MJcKSpwF1HqyvMhtjBPy3xwduXmMPMO141nh0S7KlNFac
         Izqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=YNvBd7o3JQWV3Sz+1sbOk6eCXwdJ9hr918I+tZWrXWA=;
        b=wJJFa3kVWmunE+7MGn7DLuhSvG/IU2zf9LBxDasXs51r9ddugebS9vwkjoxN3TUapl
         qMhhx0/VeaxFz38Zc27PFPJQOD3IIwn59X+jWvXSwWMsKH+LwRgju88MvPNbBJQmosp7
         TkKfpPvueGsQJvTTnfjwRbLXKXnJMjR8eZmbFzwfgUH7J1No1rVzqBzpnK4U/DwPTVJ1
         +ThR3kV0B18+dTYJuMtGRAn9LSI4lCEYxmLnOUUoZ11jzI6iBHJCPbnSZmlu+AEfxN7P
         s+l16awK6XakO2huMWuMxpqSpSJDI+JDxQ1pswAegH5IWy2FfmL/qAfCZyuEAQl4ATjN
         H3mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id o7si690577ilt.4.2021.02.01.09.13.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 09:13:56 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 111HDqQK007142
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 1 Feb 2021 12:13:52 -0500
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id 2C3B615C39D9; Mon,  1 Feb 2021 12:13:52 -0500 (EST)
Date: Mon, 1 Feb 2021 12:13:52 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Christoph Hellwig <hch@infradead.org>,
        Andreas Dilger <adilger.kernel@dilger.ca>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>, linux-ext4@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <YBg20AuSC3/9w2zz@mit.edu>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Mon, Feb 01, 2021 at 01:15:29PM -0300, Vinicius Tinti wrote:
> On Mon, Feb 1, 2021 at 9:49 AM Christoph Hellwig <hch@infradead.org> wrote:
> >
> > DX_DEBUG is completely dead code, so either kill it off or make it an
> > actual CONFIG_* symbol through Kconfig if it seems useful.
> 
> About the unreachable code in "if (0)" I think it could be removed.
> It seems to be doing an extra check.
> 
> About the DX_DEBUG I think I can do another patch adding it to Kconfig
> as you and Nathan suggested.

Yes, it's doing another check which is useful in terms of early
detection of bugs when a developer has the code open for
modifications.  It slows down performance under normal circumstances,
and assuming the code is bug-free(tm), it's entirely unnecessary ---
which is why it's under an "if (0)".

However, if there *is* a bug, having an early detection that the
representation invariant of the data structure has been violated can
be useful in root causing a bug.  This would probably be clearer if
the code was pulled out into a separate function with comments
explaining that this is a rep invariant check.

The main thing about DX_DEBUG right now is that it is **super**
verbose.  Unwary users who enable it.... will be sorry.  If we want to
make it to be a first-class feature enabled via CONFIG_EXT4_DEBUG, we
should convert all of the dx_trace calls to use pr_debug so they are
enabled only if dynamic debug enables those pr_debug() statements.
And this should absolutely be a separate patch.

Cheers,

						- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBg20AuSC3/9w2zz%40mit.edu.
