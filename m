Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL674GAAMGQEDP42QTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9774930B1F0
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 22:16:32 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id q11sf8460029ild.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 13:16:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612214191; cv=pass;
        d=google.com; s=arc-20160816;
        b=bJB6bSyqR14TffYPD/b6InEFT3yR5fRfVyB4i3rkfVeaJdqYqKGns9JOnhzwl1HBhQ
         Bk7+WRkrfVBAv994gChpEG2oo6zv4k4O+027JJtBozJtETT2ANsu240QFK3PrgnnX/PP
         pOzFqJcrxlO8x2+jSJyVZ5CpJFdHv8inBbkeuvHq7VQuz+w2+16lAcvMmBqh1Kdk2yQd
         RQ9a9mzMTxhWDj+FOG9X9KkBJG8KbrRl0OA8E1vpb/tLkai1Ji/4dCrnNspkikqAKFgZ
         4Vx69JUdUuqaHoTCMLFcrQpyyXHUz7EsSFLY9XeaEZkdWx3DahhnHt6ZK3wbXSsxb+yw
         4Whg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mZmR63EvW3p4+2s4z9/8AzQfuQdu1hkfdyae6pshvE8=;
        b=04g1d+1jC9lnhiaCiDfXzEc0TipfyA/jhsIxbQOwwtb+k6zxgn/JvMTiC6jO15mGr6
         uAb3z7qZ6w8KxuZbQ0sz/W98BsvBTv4VeNO8odz9QeI1/eVJGSgQ6LeT8XR+WG/HfnRQ
         ODzWtu6qqyzVmF3zoipPVGVQwnnje025J9EXdeO9bVkQ8jXoztJ6bh9bBvyCRSv15ygM
         ENCr/xTvge3qajy5fN+ZzT1pcE5DiqFmxU4ACRqZ/OOOkBA34ZggkThnvBz2VkD1fS20
         T+i81eAh+/MQQXg7BmvfaSZzGXlr2OHqGd0coETc1+DwSssIg/GmIZx70iGgw4N2V/1x
         AaFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iHWQb81/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mZmR63EvW3p4+2s4z9/8AzQfuQdu1hkfdyae6pshvE8=;
        b=hkqMO3FZXA9OlCeAo2F2yYGahv6NPH8QTsJNndje41RADfukhtX624peGM+gSVMgso
         WkVGoNPZNmFMP4VVsT3yMs1SCZ/OtyAYeV1l/cFLse6qaeEggzY0GIvIneyFKM2WnBGZ
         eMS72dntSljYwe6lbVtGu/QfXWupy4zyMVppSt+7H32nast8w44VEbO1IFFkzCjElf9P
         YoZXI6e/lP9nT0MhsSivGklrtHTLi7umM8l2p78hyp+h2zHK2LB4XKbm2cJj9NVhuYJu
         5K6M4DU3AUxhp3HxLTAcfTd2Z3JRQP3t7sVeY6wfpXL0UH21lHxttD4AjH4xcRt+NOYY
         jEjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mZmR63EvW3p4+2s4z9/8AzQfuQdu1hkfdyae6pshvE8=;
        b=knLOa7Em88PYPct4FpIW36J6CLCGsJ0AjhUjqOmcw4R/caCHbXpBJLtU/MgBOndnZy
         zNUc/1URTRXt7s14bqkWCMES15EFDtgynN2a9Gok5QdNnJHOJ7Qec0T047Sg0FZvIGx5
         +ArRFUbrAfwrLbz0TiMacJ4C3kq6SmowjH1HVCvmLWrT0ot6AgIF7L8A2KeP+MlhOAQt
         z2A5pshvj74oboQh13QACyoyMJXfwQ3zh7fv7iAMzpSC9m/+NxGDwezS+1CFUhGX1sdH
         MVXYIB1b4xFq7vYkmARWL4zru5WJRxe/jxQWFn2kLDYHDpABW6s68F9wsU26ElBZF+DT
         vnIg==
X-Gm-Message-State: AOAM532FffLohJ2mJutHbqBRHosx9Z/+1fdPr5DTrL8V1fminXDI0bqp
	c4JIxbnPsAC7LddYEEE//pg=
X-Google-Smtp-Source: ABdhPJz0wEqbe22qYN0Iou/7o6aBdo0FD5XPoe025gvfi4NmIKGvZKtUh9M0QeAWrZCyPja9r5Ao3A==
X-Received: by 2002:a02:3843:: with SMTP id v3mr16393461jae.70.1612214191581;
        Mon, 01 Feb 2021 13:16:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6d04:: with SMTP id m4ls2165023jac.9.gmail; Mon, 01 Feb
 2021 13:16:31 -0800 (PST)
X-Received: by 2002:a02:c724:: with SMTP id h4mr7453671jao.69.1612214191109;
        Mon, 01 Feb 2021 13:16:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612214191; cv=none;
        d=google.com; s=arc-20160816;
        b=ZE4krxjXxD4eSVZFS4lx2JyflN94EtESNAETIFZVT/W0uMmHp3ll9n8JA3vl4UZqUr
         sC0hJaD3nDbvBK9bm0KZGz6czum3WQxp2iRUBg0xewYCzJZspmhjvi90jxK73nhTZLiD
         VUkXz5sS2LX+MXYLVB46dWP+tDcZsuPkpgs+8uZiOTV3+dU/wP77PcsvcwvwySxUfC7u
         gCg0NegMsOvdXLRaH8x+x2fTHOt6iO9zdT/MIzxZaL6vooe1sLw5MlCUnbET7B2nJDys
         fs/gWtlCceErv907nEcFfFas3y2Bu9trwhCAenJAgv507mNpMp/SLqHLL++vSJH6Bwt3
         6knA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tPbcRaX1SgEZLu4YCv7l4zPyyMW8dttxgAN/QGCyppw=;
        b=sNo1MUoD/9WMO7D9qzmstABsKIGgFPoQnw1LsiNeE67RP0H8QPFGafeck2EaXLHO6O
         6eX9k9noO8vQc2EAnRngZf/aSKrx5BNVfzl0i3aaOxjnMZQE9JV0yjilZR5edGjN88ER
         HMHAHusJ6jdzdfD1XW6tWqf3sqc4dlAXZqScgUwpj7FABD9kM4OgTwzrdLofQPfZcrHg
         Ffkh5yhM4Mlc+vb72y3ZpKXv9BzjB+Sw0/gYEGAT0cHk3KF6QRBkdWfPYejVuDHVU55a
         OaOY3O1plvQhQdHLwyMe5KKZU/iYf91t8WjXIwiwPoNWRefuUod1RsH5i4ShVXQqtXWU
         bReQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="iHWQb81/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id m132si251645ioa.3.2021.02.01.13.16.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 13:16:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id c132so12976797pga.3
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 13:16:31 -0800 (PST)
X-Received: by 2002:a62:7896:0:b029:1b6:7319:52a7 with SMTP id
 t144-20020a6278960000b02901b6731952a7mr18577965pfc.30.1612214190673; Mon, 01
 Feb 2021 13:16:30 -0800 (PST)
MIME-Version: 1.0
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com> <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu> <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
 <YBhuHJgZ3QPqHheV@mit.edu>
In-Reply-To: <YBhuHJgZ3QPqHheV@mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 13:16:19 -0800
Message-ID: <CAKwvOd=ny2TeYV8SGZMD+aj8Yb6OSYGKAzSb-45r-HKk6WTUCQ@mail.gmail.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Dilger <adilger.kernel@dilger.ca>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="iHWQb81/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
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

On Mon, Feb 1, 2021 at 1:09 PM Theodore Ts'o <tytso@mit.edu> wrote:
>
> On Mon, Feb 01, 2021 at 03:41:50PM -0300, Vinicius Tinti wrote:
> >
> > My goal is to avoid having a dead code. Three options come to mind.
> >
> > The first would be to add another #ifdef SOMETHING (suggest a name).
> > But this doesn't remove the code and someone could enable it by accident.
>
> I *really* don't see the point of having the compiler whine about
> "dead code", so I'm not terribly fond of
> -Wunreachable-code-aggressive.

I agree; Vinicius, my recommendation for -Wunreachable-* with Clang
was to see whether dead code identified by this more aggressive
diagnostic (than -Wunused-function) was to ask maintainers whether
code identified by it was intentionally dead and if they would
consider removing it.  If they say "no," that's fine, and doesn't need
to be pushed.  It's not clear to maintainers that:
1. this warning is not on by default
2. we're not looking to pursue turning this on by default

If maintainers want to keep the dead code, that's fine, let them and
move on to the next instance to see if that's interesting (or not).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dny2TeYV8SGZMD%2Baj8Yb6OSYGKAzSb-45r-HKk6WTUCQ%40mail.gmail.com.
