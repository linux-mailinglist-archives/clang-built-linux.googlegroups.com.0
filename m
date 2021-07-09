Return-Path: <clang-built-linux+bncBDRZHGH43YJRBB54UGDQMGQETKZCNJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD813C25FB
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 16:32:40 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id x24-20020a4a9b980000b0290249d5c08dd6sf5590181ooj.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 07:32:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625841159; cv=pass;
        d=google.com; s=arc-20160816;
        b=AODPECOw0TcYheZFDoQTJxUtABZEgKb0o2dEEviCudaPvE8VsvYvO7KxSpNhPI+Eaf
         eHStl7H9qodExWqi8bmGRb/2j9in8DXuVMTvt10SmyVCI04MvWXnXT4KT0sLSIxUXChe
         qgLdbzIGTQicjelLWot6jH/7Z5sIWo6QBdBpsYOwsU/8qr/AXC50PV91Z4sxJBz41VP8
         wXJ0lKxBZYHO5gDDQqLdwHxCzdBE8P5HauCqMlnZtY7A3OS/V8NlBgoISGMu5Sz3A2SY
         uSCUW4znPOIXlK6iNRoWuEAE3dzTaDC/fAvc4r7iKadlrV65/O+coOGSeXa7PchaV3xl
         P8IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=E1U08Gstf1cCi2WxZiGdL+wSMJZGxoZdMaVdyByb5Ug=;
        b=Z24rTUN9XoP23lQ74n49XTbrjou1UpUPI004yiY+RBFScq0BsVoOFahHDyHSM95ZmR
         PSAZ8AYJZCLVF4DeAw00B6/w+zLJXUpnrvtGRgfdDC8qZtZuBuTxGt3zuDn8mmvqYuIT
         a87cRO1dX/R0tBvftluFIu0Ov5QgBEhUaDQaiL+8cwg6kM30q74fxYYCUfIdCPg6iiME
         6GWE7TpTIeXKIGHgifSnLQExsrhdwlqP06SkscD4+toz73LcKdCaLXeVP25auTEk5D+O
         OVKKBnVXuF4yjWD+hHxRjblr7YzuK5PhX/Izsf2QbxgyStS34iDHOFnnrGytkGDkQDoJ
         NzeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qTdTyUG2;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E1U08Gstf1cCi2WxZiGdL+wSMJZGxoZdMaVdyByb5Ug=;
        b=QJboMhPoI4MePTvUcEOjWR4ZYwIKw4BMfD3A08nfzhkmb4eOfc1C5LNAB9HGWsTdG6
         CbjgW7EbOAS3kpKF31luGelIip0fnhl8bE+kDwu6tZvzzDChsmZL+wrd8hu+ZsOAaIQk
         ucFtWP/lN+yGNrrpu8dx+5s6+r1ME1VSRma89lbN4cEyg5Z6mTR4MVPidMvRrJFVIwIq
         xW8FZ6UxR7sS/kzfeLMcvdLPfoO3TNOz71TBVJQ3sBucK9j/rMEXv8k6Uzw5h5+pAIXH
         l1J8Sbo5y+U88qOokn1WRuO+PeI4vHBlOCgK+NkqcgsV+MhEQg36UrHN6Kj0psn3w/V9
         IFnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E1U08Gstf1cCi2WxZiGdL+wSMJZGxoZdMaVdyByb5Ug=;
        b=HWUeDzfbsZxS56D4do9z/d5MFa1xPN/J9jPT2Cdg0hcapKhtv6TgeDRNXZPzgzZqQj
         qlK6DstklkIY2YgCmCIPD3Yc+RNQGhFBJNfx9uw+nVCLL8D40+f7/P67K5x4/ZU/Mw3Q
         1KVrV74J8zieMjfiHHi1y1ajJ4nH6fx4rFM/3zqpKYwxggBLWgiZAUQ2nlY5jBxZPGNT
         3kWr8Bmr9RYOstkUEtpzlr6bnN8AImdZFWAI9NuYF+z1F5VfM9VZ+HIDFX+MGSX1fT2q
         dJZBidVN4aLbNd+27hOKJDBylnUEvZ/PTnmpGjctlWLFMAOSKpIdXrK2PHQqhJbjsGyQ
         mmcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E1U08Gstf1cCi2WxZiGdL+wSMJZGxoZdMaVdyByb5Ug=;
        b=OUIxsEX13CMBkHcwNJdiBAmvkqlcGuTbWgSU398W219StAbQgIrdLtgGvyOhDKCFAo
         Us6cv7z0qpFmEJ7mpCPL9mKddNYcLSUqKwZ+VkIJCxHbPZdU/5W28Xk9MX5fOVqGBL8f
         4lLNduVTmC0JcxoByjkz+iQopDMdw4TbLJQtLM0Ce2H7eAo9ajdgEt4eBvFhduLj4W/R
         o2sVvZNdQFokyeyx2eByWqWGyLhnDDHN/tkJMiYlvBj5SjXpQG7j1PBi2v4ZSdVFlRzL
         RZPkX93aAQtEJLf8H7QY4fI/X+gnifQPfMC/qOa5E0R+3Lt+Ixbcs0lzm5B1avjHMcCi
         PXcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ofOPOqtViy5RNNVPBpdPQIoeoIXl/oCDzNV45XpNOEfsDvU/i
	jxy28g+MpAQnCz5junxedPY=
X-Google-Smtp-Source: ABdhPJyIUhMSYfOyefkbkbZfTtEeFc2pznVdqmHkLZwRYxI919QKJoCIxjrxClsppVm9QEaKoUQlKg==
X-Received: by 2002:a4a:8802:: with SMTP id d2mr27065513ooi.28.1625841159361;
        Fri, 09 Jul 2021 07:32:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls2013403oth.4.gmail; Fri, 09
 Jul 2021 07:32:39 -0700 (PDT)
X-Received: by 2002:a05:6830:3108:: with SMTP id b8mr3064804ots.182.1625841158989;
        Fri, 09 Jul 2021 07:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625841158; cv=none;
        d=google.com; s=arc-20160816;
        b=l7jLAWmO0u47IVDWjjWJS60YtzSpjjaAotrYT9F7uMyV9Wg43QM/8rFtqLVROzUlLl
         5nREKhMkQ8C7QJKwlAvoEWiN+GfnVQpFgKE9mLbyBUQQzw0qmlN1aSxbWmDcf0/WxIiz
         QnDCs8RSkefIHibvgKxX/vFK7JWqXHUQt3vJmXKjdgiNCkrNNoLXglvgzhe6uJeW52ko
         DXGzUQRC4k0EAQazFXOF3YC4Q4GB7jiwP+j8c9mw4zkT0WbcbFkfDnjLERresbNFMlhr
         wQcKoOARyn6ebuwDqopFYtIVJaoAWe11BYw5uyPxEXtGxMCcPwmVb9kf47TlVEUqwwZe
         U/jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9iI9BBIN5ChfEI3FnxPdXxRRh4SsTOQ85Lm4ab50ZgU=;
        b=fhtBGwDmF9N5hS/Y5DkjK1R+I++XVxdy8KXFz/wPrLfC7xgq2T1Lk6GwB1FtFkKqQ/
         +MtOmgmrUfRau3ZnECZuuNtZTqQ4Sky9myK7vHEliyFk7dXn2xC81yrNg3nRhZ0vdY2F
         HG2O2HMAzCHQvnSPa+WVw/tWxNWaRwbe7M0ZRKPUtD0vPBW18Aaxa/TSPq6dsB6kErJY
         g2vZw3L6iXFBbqXX/KarztCTQGNEpLPQEVxzESb0+zze7chZi+jT3BAjTNwsKyPyoU0m
         9QfwIgDEGC/URrxzKcjh4rlZxQ9fcoM6Zumz7LcnQkXOnJAN6hiZkccvEqObZ/hQBc66
         +2zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qTdTyUG2;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id k24si518245otn.3.2021.07.09.07.32.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 07:32:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id b1so12658906ioz.8
        for <clang-built-linux@googlegroups.com>; Fri, 09 Jul 2021 07:32:38 -0700 (PDT)
X-Received: by 2002:a02:a310:: with SMTP id q16mr33022208jai.8.1625841158612;
 Fri, 09 Jul 2021 07:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210704202756.29107-1-ojeda@kernel.org> <20210704202756.29107-6-ojeda@kernel.org>
 <YOV/oj0rjHhzluH2@elver.google.com>
In-Reply-To: <YOV/oj0rjHhzluH2@elver.google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 9 Jul 2021 16:32:27 +0200
Message-ID: <CANiq72=DSGH0PAz_oKDMG_YQAWbKLW_6jUeGCwdV6_ZnwPLrLQ@mail.gmail.com>
Subject: Re: [PATCH 05/17] rust: add C helpers
To: Marco Elver <elver@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	rust-for-linux <rust-for-linux@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Geoffrey Thomas <geofft@ldpreload.com>, 
	Finn Behrens <me@kloenk.de>, Adam Bratschi-Kaye <ark.email@gmail.com>, 
	Wedson Almeida Filho <wedsonaf@google.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Sumera Priyadarsini <sylphrenadin@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Sven Van Asbroeck <thesven73@gmail.com>, Gary Guo <gary@garyguo.net>, 
	Boris-Chengbiao Zhou <bobo1239@web.de>, Fox Chen <foxhlchen@gmail.com>, 
	Ayaan Zaidi <zaidi.ayaan@gmail.com>, Douglas Su <d0u9.su@outlook.com>, 
	Yuki Okushi <jtitor@2k36.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qTdTyUG2;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Jul 7, 2021 at 12:19 PM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> What is the story with Rust and LTO? Intuitively, I would expect Rust
> code to only perform optimally if the kernel is built with LTO
> (currently only supported via Clang).

Cross-language LTO is possible and is used in other major projects.
For instance, Firefox seems to use it:

    https://bugzilla.mozilla.org/show_bug.cgi?id=1486042

However, we have not taken a look at it yet for the kernel.

> Because if calls to every one of these helpers are real calls, I would
> expect performance to be pretty poor. There's probably a reason these
> are macros or inlinable functions.

Maybe -- we need to measure.

> I would almost go so far and suggest that CONFIG_RUST be modified as
> follows:

Even if the performance was unacceptable, there are other ways than
LTO to solve this, such as implementing the equivalent macro/function
on Rust's side.

Furthermore, we need to consider GCC too.

Thus I would not be premature in making it depend on LTO.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DDSGH0PAz_oKDMG_YQAWbKLW_6jUeGCwdV6_ZnwPLrLQ%40mail.gmail.com.
