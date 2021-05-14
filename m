Return-Path: <clang-built-linux+bncBAABBUWR7OCAMGQE3B4EBBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E7A3812BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:17:08 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id cv23-20020a17090afd17b029015cdd292fe8sf458072pjb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:17:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621027027; cv=pass;
        d=google.com; s=arc-20160816;
        b=hG8XL/oyavd7/cDtUyBn6OlRKdAqLVCE/pZxuPNfb0Wvj+Snm7ekqO+QcK02eqcJ1v
         P1pJU6lTTA6cJxK+5Xux1QjhO2SXEKF6U2TNiVKVvjKYXdVoqsYcUmMVs3qMer21k6Mm
         QahJKUv7jBkrOIiojLtb4FvjGKWXc4nWGEUiOI5xJlJdnrzFEH805qHtCU/dR65axgHQ
         RD4tSQ+tdxgB8+3HyVVRacErGDGbHTeP6KCPcEVjD2IOyLfqb00e2pxP7Q6BhI3KEn3h
         ZOtJrjcak+NKgS4hTHlkdkQAin2E97IpyxrYwxzjjgkTiLbVvVSxkOCZU3ttK5OVaw1h
         aL+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nte/eeD+u2CElMT0H9D1JMpgdD/644xM4J8trWiidUY=;
        b=A+DO0XKcHMCihQjtCzG7ETJqXvlqfyWvbCUpp1Yp+htgjrgXnj01vCtcKGcvc+k5Ni
         isO+TlBQNKYpepIkR30L+/8GV4dtXf70yaB2SCMCBfK+D2Io5TxeQK82HzD5tFf8eeLp
         wjTcYewhgc/qGALhWCsYsWpzgSy6oo2R1j2yydwbtBdGZJrA1kuAZs6XalPRXKo+K8O9
         kve2jXht+myIpprolV10VOEC79pD2o1UKRVRolzfgAo564FIoMniejefysD7ZIvHI8/4
         gb/eFBgCT5v2G0ScqzKzS3k3hptSIZTpnESlK9r2obg/T/CuCtMCkCbnQ1kh4VDdBRIv
         9WbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="oy/zU7SW";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nte/eeD+u2CElMT0H9D1JMpgdD/644xM4J8trWiidUY=;
        b=jfRHcfG/vSwt17rkmfMo1isiRJRIeu88Hk2M6V5QQqD5T+Ua3Sa36Kb1PKp4h0NFZG
         zAofsCOJ/7Z4vANXGEtxeI0mdPPcp2XHW2i/qUsUvmHZp3ySGUj5lrs+TjodYCB1ENJE
         5UsOL+MSmSoaSQ8PjmivtCJg7/QVwH43plGA/kR/dFuY0Lz666crgZ5TgJ4wvdUa7VtF
         lgs1iHWTTxCAKcwQPuRfq4dOdxdMML/eOMOVYB7aPAR3e8xhFEwu8cDL9R3a/avEM7ir
         KiDKDfNd6XYti8pVnBH4Zz8XNfHgyXCgDT0noo0BbgzYcytFFlMFPo3HMyk5vYii1Jw2
         KiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nte/eeD+u2CElMT0H9D1JMpgdD/644xM4J8trWiidUY=;
        b=NMyIJIcTwhH1HHEbRLOn5hhBpcW96B07kFUxBl4Hoa3xHRaWtDP1ZSHbAHpi144mCu
         SxPrj2ErZjn2GvtyKyX84QJ9JdboVcmFnyvNA743ZHhPFDBjMARm6yI6VAfr0HUVFaDn
         NteKWVjFd0yQKv70wGyl67rL6UB8JmiPE9P+E8iUbRblTPnNvqdTfJxVjHXolwSl++cw
         scYV4yzqttai8d78jQd2mj26f3l0uFUb6xlSLd3jt1TIDtjIjVqe1bEkHz679k+YsV0G
         yZ4A+w/4hSQy/kqSY7lPwGnYQaq10oQD3vhFP5GN7L8/AyHRwj/9JzH4LBV2qIX9DPZ0
         sALg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pKC+QOme6CKpp5bVg97DOn+nHnFMmGRrh5sfVNGPvO6VJ1h7O
	/ctQJl2Rs1t0vGPbTDCOLFA=
X-Google-Smtp-Source: ABdhPJwJPpwJYqpKKSNkS4XjF8eidr2Dh9SbikbJ1J03FCqbxfzKwEw1fP3+WIRc8jTCpOrzNAgXcg==
X-Received: by 2002:a63:5503:: with SMTP id j3mr48893554pgb.256.1621027027052;
        Fri, 14 May 2021 14:17:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7208:: with SMTP id ba8ls5533423plb.10.gmail; Fri,
 14 May 2021 14:17:06 -0700 (PDT)
X-Received: by 2002:a17:90b:17cd:: with SMTP id me13mr13428049pjb.128.1621027026391;
        Fri, 14 May 2021 14:17:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621027026; cv=none;
        d=google.com; s=arc-20160816;
        b=uTQIsrTcs7OOldsxT5NISY8+BHgYHg9ZIoWKvWxdkl/GL5JamUB1P6rgqWID7YIlwb
         PSiZFJ5rhdSN70MrD5oOn/mx5SlHsyklOOxt4WdiQfQvd9yAwuvIffR/Uw1aQ5JVwwU/
         c369m/nzwWKNkKqgOVDIRPTpesBF7ffyv9IiJmDZO7xPYD3pPwnalX1V12f/k7bcmtXw
         OB+mhr3dz7M9vDbwimdTaGn+KERQMMmO1fcZxa1+Mh6w20mQjapopxbbRG5zz6M8JX1J
         jpnOSDiLi9gwP0ELxns7uBkOVl/xaDn8pXOY/ZyP2NMAMWbKbBmCV0Uwf0mbxVcbzMFH
         Krqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=41zkt2dIsP5TA7+eea1zwunYrwnck7oBuHHnKiPfLEY=;
        b=rf0W+etY3SejlIP7ZgxofhYjbFkQzUShRZyvL/wIjKR++ip9b6YMXJvjROopMuLm5D
         eZDa0F7ZVL/2A/4MsS/+jygLRveunD4bU3mZ+P8jbF40uEvJ+djW9EEeQv2g/rbrhZxy
         s967Uu5BzFARE56m3QGmKtaaLzDW89b6TIixSnseKQ7R90ZE1M6AxBZW/inFpKahV03f
         WQyT5pLUvyy9S40cOjRxihzEqWg29tRUTMEdF+PwP7R2WMBlicZIZ7SL2/cNYhMyTiiJ
         CH2Xlp1HZJwA6v64LF+74CpiTvOAS1EI9BNWzLinFkzqd4sQqbf4iVm6HBGCk0P2RUiM
         KXEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="oy/zU7SW";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si485874pgk.0.2021.05.14.14.17.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 14:17:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D7B061454;
	Fri, 14 May 2021 21:17:06 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id a10-20020a05600c068ab029014dcda1971aso2021322wmn.3;
        Fri, 14 May 2021 14:17:06 -0700 (PDT)
X-Received: by 2002:a7b:c846:: with SMTP id c6mr11049940wml.75.1621027024776;
 Fri, 14 May 2021 14:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140015.2944744-1-arnd@kernel.org> <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1> <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
 <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1>
In-Reply-To: <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 14 May 2021 23:16:02 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
Message-ID: <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Marco Elver <elver@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="oy/zU7SW";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, May 14, 2021 at 10:18 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> On Fri, May 14, 2021 at 01:11:05PM -0700, Nathan Chancellor wrote:

> > You can see my response to Marco here:
> >
> > https://lore.kernel.org/r/ad7fa126-f371-5a24-1d80-27fe8f655b05@kernel.org/
> >
> > Maybe some improved wording might look like
> >
> > clang with CONFIG_LTO_CLANG points out that an initcall function should
> > return an 'int' due to the changes made to the initcall macros in commit
> > 3578ad11f3fb ("init: lto: fix PREL32 relocations"):
>
> OK, so the naive reading was correct, thank you!
>
> > ...
> >
> > Arnd, do you have any objections?
>
> In the meantime, here is what I have.  Please let me know of any needed
> updates.
>

Looks good to me, thanks for the improvements!

          Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3O%3DDPgsXZpBxz%2BcPEHAzGaW%2B64GBDM4BMzAZQ%2B5w6Dow%40mail.gmail.com.
