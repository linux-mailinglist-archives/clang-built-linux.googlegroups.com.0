Return-Path: <clang-built-linux+bncBDRZHGH43YJRBXEERGAAMGQEDGNRLTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 533912F8A7E
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 02:33:17 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id k187sf5036154vka.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 17:33:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610760796; cv=pass;
        d=google.com; s=arc-20160816;
        b=lksJUX3yxnCGIhPnvt3IDkQc6xTcYNe/Iob71SbHYyvIhlwzzYtns4cahg4amLlWhQ
         +lhbDIVgT6caM7sKAEJm0wnIcXUcHbPnhWxYVOlGBaDeq4OzaP0F3r3OPNQZjpcRnsK7
         xjJD9EvnNsdsBl8YhlQ99qVOpDkgoDWrHm6xVWSyWIP3baWLVnD56rCjJPLpten3g8b1
         TrzD36oobXB/aO/vOqnm0YLavwj36bJyOwq0FlLR40Dbv5qO94n18mvtGRzP8QgoU/lu
         F+o7ym9GrC8jgDQFiw/keh5T+gt6Xz9Z/q6R7nqqAo8KK+IsTkz3vLv+F3JH2rMYalu6
         gCoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vwnViPP9cEQdKbl52JtyCJ4MkzUdBRvBmzCuToqyDM8=;
        b=px4+ok3APCtNiU+h486K2kukgu/u8Gf3X82YizInKbGyjuG+7o+JBnnWrk/THdxDp4
         UohnBCzFD9Ry1aDT6m7oILiHLHtyi1xkarXRXUl6ee8MhtT9dsAA59DjlQ5jrfOMFC8r
         Rh6WV/USPuCZ64SaxT9yi20RTLVPpjJDOYkrfD/cJnmd//IqVMehyEFrgRYhn9jeh+m0
         wm/223GWwe4rGMmq7ZR0ltWjetNOZKeOzpjUuYBZMZzPCb5FUZTNb8T0oI9NR994CsIR
         EYtjuHblFb9vLHgtgW7J/3P7Nlz8KO8OIzBOucYbIsgQTqTtXrGId3x7IyQkCAJwrdyC
         bd/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QbqES6Qy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vwnViPP9cEQdKbl52JtyCJ4MkzUdBRvBmzCuToqyDM8=;
        b=OMLs/Rx6NBZx4mE7mm6bV+hNVzzhlH/KAzYSduLpT2YQlbvT8LVH6d9WspGGzois+0
         Skw+1PtaxX8mGGbtXXJ3l+y89RQgGF380ENtVvZToV4KlbinGVeuLbwqn58xsAFFhtkE
         kriK4cQ4fl3Fv7ANOon6fDFRWTMVK/b2YKrJI/3ovMKlbTVxXPF4JTV6cMcPUSzC7gSV
         +pzoW1QdijkuMEcEN+WLVyGduWfmSUbAuHy+3AQnu3TS8vK/IaA0dh2jWtv+fAjZ95uq
         qzVK7n9frotqV8A1qjAuHvxSdoq/oUNbwDsGgZs1HBJvEM8YDUOIRTSG5pP7AL60sghY
         GlHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vwnViPP9cEQdKbl52JtyCJ4MkzUdBRvBmzCuToqyDM8=;
        b=JWXdgATaseS4FfaHMiw+qaqOlRxoinuDRyCUoHJ8F5vCPFcNOoa7G2zX0sqZhERQRo
         m8JeM3uwQssrO+JD76bm2qAAtZHz6p9JqTMZWUAY11t3OQXBU3+/zaV8GXvVsIWWE9rD
         bp89snDL8SSurpGQcZ7XsCRBf2rGptgObUBnogHdaca8Fa6ZDiktEG0a4v+j1Yo4MQXn
         tM7UAAR307zaC5RWRGfvI0CKurzUGn6mSOEyJCuMWRjJ7CkOKnmazTsEahfhf8qOfxfz
         2bsG37JM4xah0UNJMgApPqKD3iAnIqvyu4y+bLE2YeWGzgxoqBFPL2NAByXnkg+FAGbi
         I9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vwnViPP9cEQdKbl52JtyCJ4MkzUdBRvBmzCuToqyDM8=;
        b=aBXFcYJhShkPw4Kpxcivxr5K/yPvo6hOU5kYfsomLx59aMVMh8NGfoG/0c8GvUMTk+
         kmBFbfZaWlYMkDIxgzY6Kali4LDFOCOFcIJwkn6LALJbACzBe9iG/Wndtc/DahRgBts9
         YaVmNfkj/mtsvQgrT2f5wkitFY/4fcxgsze1CFCaMg3T5N1zVLuzd3xusVNHAzzDUZIk
         oVoUi9oE92PaNnv46+2+Jy55iVgqxLykKsw3ooAQWvU3DiGugHyqtve+otUSFZfZIRhE
         Nt6IEvP/e6cO69wnkeWjAkdNx9MwJ84DViGyp/CLP3ert2R1esJq0tqtk+KdsKG7Rboq
         KCxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZX1n9CxM0TjiDu57lAoZm3f6RS9ySwIEfleGQamL3dTu9FEWS
	k4+lfvI10UC7Ks/I5KJmduI=
X-Google-Smtp-Source: ABdhPJxuyu5TwYYTTtYH5h2mwEAWSvPyzgeiwhJdj/Yqhimx5pC8YHshH0TX02MmV4u2cl8HAVESdg==
X-Received: by 2002:a1f:9156:: with SMTP id t83mr13253713vkd.3.1610760796354;
        Fri, 15 Jan 2021 17:33:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c902:: with SMTP id t2ls645556vkl.11.gmail; Fri, 15 Jan
 2021 17:33:16 -0800 (PST)
X-Received: by 2002:a1f:5041:: with SMTP id e62mr12860294vkb.14.1610760795931;
        Fri, 15 Jan 2021 17:33:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610760795; cv=none;
        d=google.com; s=arc-20160816;
        b=W3toRaNhiBBI5jYBlNPRJkxistRggitIuAvGulrSGH/16MSVAjDrc9pbXP7AVboiSP
         KVntwBpgrWAUCg6DvEA//OzGM8wHk8IMgTVky1f5WIh65ekuaV75vbqtOR4EbAV50Ows
         riPrSnGOhDS3TMQ/bjYVWMA9g5Y54e1CZWvrHm34Q8r7zSYkvVkSCYBy2Pm/N+Gq7mnn
         nVQrjDNwp7orGduOvCQzGd9OPVqUpWnBhiOt8gEw32Er/Go888PglnS26hSC7luiJKiM
         DqoLXtIxVvt/lY+tr3KVoVqbtUD2QioI3oxPlVV3keBOjvMZRncBPGjo4pIvg7cEw+Ez
         sigA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EvTOZfW2FWE2ZdoJVQQoFg6/SB4fiO4KfILc0PWzOXI=;
        b=Rejo3zOo/RWNzbNBcXROBAEQTHVhAkvXD9NmY+8rFiw5SQMSNIk1gpdlI8BbCS2aMN
         C56y6n3nPG98S8T/9NqZQC/XtZ/ybW+3UFVAu58lPsLhqqJOpVqzwlwCi/+FmobkZoCs
         8yhvnzyPBvCHWdEtjJfnEtddJJEZhnED3vffIrWEffhDfJ08qk1oJxRLXjrMpDsF5WZ6
         nS8S+89hsKkiPJdvBArw8n7b4E0G2iU5cqyG9pVZz0wS3M7Su3iTbvkr4mYDAB7D+KtD
         KV7jPIJmUdsd+GnjiVhTCliKE3t2M1Dli4nJxUpTjTFAhLhssQx7rYj/CEAt8UkyemMZ
         JzgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QbqES6Qy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id m19si701447vkm.5.2021.01.15.17.33.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 17:33:15 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id x6so6814392ybr.1
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 17:33:15 -0800 (PST)
X-Received: by 2002:a25:ac03:: with SMTP id w3mr21214598ybi.135.1610760795582;
 Fri, 15 Jan 2021 17:33:15 -0800 (PST)
MIME-Version: 1.0
References: <20210114042420.229524-1-masahiroy@kernel.org> <CANiq72krA1VrVC2ecUCQFAgJC07od8POjpVUoGFYJOHjZ23ckQ@mail.gmail.com>
 <CAK7LNASc-3ADgKnM=GiHbXwAo1cYFVL3o6SuWcunsLcrTU8t7Q@mail.gmail.com>
In-Reply-To: <CAK7LNASc-3ADgKnM=GiHbXwAo1cYFVL3o6SuWcunsLcrTU8t7Q@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 16 Jan 2021 02:33:04 +0100
Message-ID: <CANiq72=W79sfEPN5VSPwF06rRoeZmdL0TLyHT2AyLEu5qsdD=g@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QbqES6Qy;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Jan 15, 2021 at 11:55 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Yes, I plan to merge scripts/ld-version.sh and scripts/lld-version.sh
> in a similar way, and move the version check as well
> once the following cleanups land in the upstream:
>
> https://patchwork.kernel.org/project/linux-kbuild/patch/20201212165431.150750-1-masahiroy@kernel.org/
> https://patchwork.kernel.org/project/linux-kbuild/patch/20201212165431.150750-2-masahiroy@kernel.org/

Nice!

> Yes, but that would require higher level acks,
> and consult x86 and intel folks.
>
> Please let this patch land first,
> then we will discuss whether ICC is still used or not.

I was not implying to delay this patch -- rather to start an
independent RFC to discuss it. This patch should go in regardless of
that, of course :-)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DW79sfEPN5VSPwF06rRoeZmdL0TLyHT2AyLEu5qsdD%3Dg%40mail.gmail.com.
