Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUOJXCBQMGQENTDSWSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3AA3576D8
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:32:01 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id f28sf80089ljo.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:32:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617831121; cv=pass;
        d=google.com; s=arc-20160816;
        b=T8gD9Fd79daY6M3kBHv2HQwNItyAEBZ5vU+ShViZTtFgr69qh9LfGUF6FI93ubJ7UM
         tylE9m8OZgOP5Rw7YI2IvPRY5uLC/HD3ecPX2n56sq0wBgbLg0EV33ZB3NaeTnyrqiQy
         Mh9rTXQRSIo5pWYBhbM9cJbh70c9smopcsqWkkKumiyuTQHjYi+5UZVYokx14iSFJTlO
         36Jk59d2pyOIQB2odXihnv7wNYSWRPVBywEftpLSvwEUiXMRTsF7Th6SPVvFQCWI7qmC
         nKXvQIx39MczONkNNXJkk6IruX4X6rshxkD8lzcXjarRzffWffu7EeGT8wsF+6DBuixj
         U0zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aq/akGlXAb8rqMCu1uxz5PYxB3/D2uNrhYis1Dp66XE=;
        b=KrcEUz6YL768iEX+zQBZnKpVhzvcm7dJpCmFGx+LWTfgffmD+z5+nZNLNHkEUV3ExY
         yEHD8RJSELE+jmg0MxLc6lfsxmHU+NM6q06TSzyB7UMj5jtb+gJfEYMmMCJd4PjB37aE
         fiUjCLV5KI8NuRD2DGCzK2Va5TGQkp5mSFxGnEndkfuDKedyipRnb1BiLitQ5mTM6iXi
         XWQzGOxitoMsP5fOfql43261C0jvojq5O0EoNNrEyXPwz7JmyTWhx6ksetlWhGiyRGu/
         WqI5Zjrt57GB8RLfMAnORY+EgvH+ICOAD4kTSsH3t3SxxqATAIDwlUAdAlwpYqKppaPA
         IqSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M6BTfeF0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aq/akGlXAb8rqMCu1uxz5PYxB3/D2uNrhYis1Dp66XE=;
        b=BlkvD+ShajcZiCNefW7VTDS2pJ1OK9biNOFo2/p0B3pK2LhbJ4a7MtstTfdG90RrpM
         W+qJeR/XauG9gcIMwmeDNVu7en7pTPov3Czgkp8y/mWgN2nZgXlRTorHBWW6Ic8OhEac
         8b/nK0GMhMxJbSLLw0/qZVirz33rtgr0VJ4VuFaizahBPOaO4BcXF/XJ3813JfriwLE9
         8MAMQYpVVI6AmxctZl9MD/VztF+VMpBufrV/5ndetu1bUOcjiANIwqdp7fDG/tE6qb+x
         HEKfGh/4/6+QeBbf3YLoWxYLgE+SFYO+gSKA07Jyj+m0Gjzi5T/mH5k9eeJPF5qFhDpm
         xLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aq/akGlXAb8rqMCu1uxz5PYxB3/D2uNrhYis1Dp66XE=;
        b=sIHqmGU/2UKtJeyv9Ep8N+nXB2LT8Cs+w9wr9pNmKdwbBbXZzJbXL8kkVFYoMDNdY4
         oEs17K1YECsYYcDzwjQQojOQSghEu2MLYNADtE6sHzyx4au1tmtl/eZifKbI0dCkyTtW
         X/s27oCY+3sKO0aAJZ0QZiJHS6Wa80f9Efv3YWkwaEmgw9BOyh9GYIcytWWid/OhvEKZ
         JC00vLIwScPcGpynqyWGFh/Qr8BnfCpBz1by/mF5c+/UJLhn34K7yTPwLjzCjX4qKOJO
         9pfcvYrf0ixc0/566pQEoaEzxzcgIRffyvx+bRjqSu8XkJesdH0F5CewyShEZY0PHWp+
         RxlQ==
X-Gm-Message-State: AOAM532qNsRekD20oaoOQrDQPpJRkwRygpvf0j09JhaHA3ywCnzoktyE
	ujyysJZkUnqE3NUtzE5JGYs=
X-Google-Smtp-Source: ABdhPJzNz8LdKOIjo1Usgq77hgVTNjT+GHL95Yv+16a7uv1b4KDHuFflnRktfQ1wzKPpXVH0M1QpWg==
X-Received: by 2002:a2e:9b16:: with SMTP id u22mr3538036lji.184.1617831121529;
        Wed, 07 Apr 2021 14:32:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls112940lfm.2.gmail; Wed, 07 Apr
 2021 14:32:00 -0700 (PDT)
X-Received: by 2002:ac2:5211:: with SMTP id a17mr3748146lfl.192.1617831120504;
        Wed, 07 Apr 2021 14:32:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617831120; cv=none;
        d=google.com; s=arc-20160816;
        b=OkLwiTC46+wFq7gomHt10eDBFuKnr+Nz/8j6IFJ1e5g2BrL7vKH8BUdtBoJ9peLxqg
         bWkn+mLqEaGKDPbUpbvH+/wc8bQeKCJpOdsXwhhPO7JYOdsgxvBPtSi6aCZYTTYQErGx
         LYSbz0xKZo5LlqPytkNmR93HFIpV92BZAwmygWw7tv68Gpr15bXyj6LZBzWImJPDVw6K
         kdfJlhZUXTVyDyszLmcIi+MJFjnp5AMujJ6dsRUupW/EC1+PHIb2eQYNm1dn8Hq21z8f
         2aelS6+jw5YkmQEvAkVsXg5h4dIjk+jEbStmXB8C6Hh/JimOTlsSTbm/SUNjaUXxX5ns
         z9Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c7XbFRdOrSbgxAsfvMsJ/PdpQkSZRqfaNHt5MaBYo/0=;
        b=ERERQ9icKyuDey/W3htyH0PCtuPKNiLXIhZ9lfchJIo1uufhY109CnC5+eC5GpvRVJ
         Q02H33gXgbPKNMLCoAZmUptWOBGgBZSOBSgobhW+wDxNwgKimNSqkjvrnyzzmWzFAJ0o
         CPelcphshMy5/AQk7zN92E/V0VX9q4WmJLyGSa24CDIQ6/yhQAxng4ilTPHAdd1/njvF
         XhNDIeconPLpKk9TfohQ8Pf84CeT8bBfcFjN7SYqegyeOqmyBhfBtBiKr1yJ+omrg7WQ
         unVDqT10t0D7UOLYT8PrR8Y2qeXzB1REajgovJHSvVAPKc1eQXRS/vkxKVaNKocEH7id
         gmpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M6BTfeF0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id l11si1774858lfg.13.2021.04.07.14.32.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:32:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id u10so22468289lju.7
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 14:32:00 -0700 (PDT)
X-Received: by 2002:a2e:b88d:: with SMTP id r13mr3454991ljp.479.1617831119956;
 Wed, 07 Apr 2021 14:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com>
 <20210407120239.GD25319@zn.tnic> <CAKwvOdnuKazNhqXAM9Qj7DgCW=PqVHkyyfYWytmkyBzv0QeYsw@mail.gmail.com>
 <20210407190328.GM25319@zn.tnic> <20210407190727.GN25319@zn.tnic>
In-Reply-To: <20210407190727.GN25319@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Apr 2021 14:31:49 -0700
Message-ID: <CAKwvOdkzYOv15EWh2cPXhHU4UhqadWZMiiETks09ZXKnh_r5QA@mail.gmail.com>
Subject: Re: [PATCH] x86/kernel: remove unneeded dead-store initialization
To: Borislav Petkov <bp@alien8.de>
Cc: Yang Li <yang.lee@linux.alibaba.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M6BTfeF0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Wed, Apr 7, 2021 at 12:07 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Apr 07, 2021 at 09:03:28PM +0200, Borislav Petkov wrote:
> > On Wed, Apr 07, 2021 at 10:41:26AM -0700, Nick Desaulniers wrote:
> > > You do have clang-tidy installed right? `which clang-tidy`?
>
> Btw, for user convenience, that "clang-analyzer" Makefile target could
> check for the presence of clang-tidy and fail if it is not there, with
> an informative error message. Methinks.

Yes, that's a good idea; we had a similar discussion recently about
what happens if you enable CONFIG_DEBUG_INFO_BTF and don't have pahole
installed. This is very much in the same vein. I've filed
https://github.com/ClangBuiltLinux/linux/issues/1342
to follow up on.  Should be a good beginner bug for folks looking to
get started contributing.

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkzYOv15EWh2cPXhHU4UhqadWZMiiETks09ZXKnh_r5QA%40mail.gmail.com.
