Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWECRH2AKGQELRFQVLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id C824E1983D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 20:58:33 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id p13sf15658379pgk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 11:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585594712; cv=pass;
        d=google.com; s=arc-20160816;
        b=0uMJD6f0InHIAbxh3s9HcaVU61VRh402ODV6usxHYvVmC22IK1uLevsz78BEzJQG36
         g9+hqPfCctX/PQBfoewPV9OBTWz/XNNVRhnV6Lc2q/BnAupfRVyRXogmjZap6HRMKAaS
         clLu+prHMCbQKhHZ1DBYIV5TNEF9Ps3EsDTzgxJDY2uF5yiCRt8iTOt2DL6AE+WpC2Xf
         yFYgYTr2XFtHM9dlh+Lua7RK4qIjTDy2kyey74cxcF6r/eEnqXLxaXNSSISh0kRg8z5y
         H4TmJlB+CJd0oa6g+ippe2tEr7zdtxN6fLahsyX3oqdB94merh1vnNxjHHEr06oTX/K9
         ZRVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UmEIAHwKJO7Zus1V4xpBkoT1CMCk17roSzr7gAhzhdo=;
        b=ZXR/u0vj4tnl3nQaz7hW/ZfSIS/1BEU0sBFeXz5J6iGMg94oBAEsM/JTyhvAnDNCUI
         wjYZ/54Ws0qxMDM9tHGsfaUEIMyWM25sZXsn4r5kMq5LNwWWjs6GwtEEHchHOxFRMyHM
         T/fTR4bU4UGGRKwEaGcJUSfFuwRL1k/zVrYWz9k0OnJVtYyjors8XwvEkXpatwjPs8nh
         PcrSiiU0Ff+73DscUF36cUfqdlVEU6CRPUUt5mZuG+ogaPZire06XPDhk/1EDpQe+0id
         q5tne+maKhzxmmSJYsWyHx8U1RVZZZ44Glc6oNAJQrrEizxwYzBazLZbPX5AjyxU6Uii
         f7oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PsHW7I1f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UmEIAHwKJO7Zus1V4xpBkoT1CMCk17roSzr7gAhzhdo=;
        b=Ztx5PPW2duftJG99P0dWz1Amjpz2vZEp9t2FFQcYwNsR4c5geLQOmW873XRCnrARRh
         jCZDfJEJ9FT3lQ9kqXvSh7HoFse8MFzyruFRff/U3QDPWlxvpNXsjdbD3n7inxx1MMUU
         Wx0bTUqPbgUDFpXl4JN3t7PjqCFlmPuwtHps8vi1AYQqpBWKaM5QxMRtlTjug42ZhNGx
         EjyirmasgIMPxfwt+psiYX29ZaG8BmCyuFfJUJKdUQLQvMrlOnFp1Ue7ehM+bl1kgjIP
         6gcr8XHQwIUi9t6tHW3lHAicXM8F1OUTuPkhOoBaXWNsQypE/RhjSDOANRo9/eOMsGrF
         tHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UmEIAHwKJO7Zus1V4xpBkoT1CMCk17roSzr7gAhzhdo=;
        b=hO+v19bSqZSB4P61NT7d8D71y5ZwSk7eT3YZouA6SsVJe2gjxmc70G3w3nMjCMfn4D
         mLu3+KR4/6GC52tfI0ozJKjNcf3IodqdE17tImd01Zkn+5YwcPBKREtkfPsaAFRiskew
         TaaNqGVHvHXsrO2CtIoHc9qg/wJ9ypj3GqZvgMpnLIltOPD2y0bNSFKqQ5amcHlz0GNe
         cMHaEwHsOBzFbUx75WZG2cB13BQqNCkg0kDva1lqPtVK3f/TP/iiNOj/TE/hmwgSUZXY
         LlbBaI/eVdsSwPxOhUjD3et8q6429iIEsWdr2qWRCgFedjr4gsewvOr3NJr23+677J3W
         MnYA==
X-Gm-Message-State: AGi0PuYq5AYbAkgvNgws6F7V/PhAx7XG9f0D09tvXDDhVmDNUNxmPUwi
	oP6armRYuCl8//LFXyqFBG8=
X-Google-Smtp-Source: APiQypK1oFhDL0DbBDr3/Z8dDsr7FkZJsgy7XI4BtBeX1qnJcY8pdyve/+9atZK1o7uWu9kPzciBxA==
X-Received: by 2002:a17:90b:2351:: with SMTP id ms17mr570025pjb.163.1585594712288;
        Mon, 30 Mar 2020 11:58:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f58:: with SMTP id t85ls5383270pgb.2.gmail; Mon, 30 Mar
 2020 11:58:31 -0700 (PDT)
X-Received: by 2002:aa7:99d1:: with SMTP id v17mr14968323pfi.165.1585594711868;
        Mon, 30 Mar 2020 11:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585594711; cv=none;
        d=google.com; s=arc-20160816;
        b=MhJNXees5c04rGjqnzN4BUn+fLVE9yMej58t9gKgjMIy1nk10ZjOrh9jElJUFKiFMQ
         ApG249aVdQCR1CmX7eYY4hEF72ueadzNkq12yzpoiXbCr4eaMlgqkKBfD+nTnlCDbTWD
         od+U/GTIWooIdhGjMyxaIYw1qABfcBXKMA9KlYQXIwp4EXkFJV40CPjkSgL+MX3Jzb/z
         urtjlaLEBXzcCisK9fCgN7ZWcnOOzmhOOupwdatwJwVuz0BgGYbArIGXxJ2RXHsM7TSz
         k3qCw9t5ZXnWcd7KQzp5ctrZp5sdFjX1fHBcBwZ0YHLhX1IjsVj7hxGiCziwRZU66PIk
         oIgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oaymTvWhl+uolecE6yhTgiJXYyga2SjGtw1lmCMSDqs=;
        b=C2IFK+DU9XkRQoI/m9p9ZFwMowt7VLmfEp4/vonOtWSZS0ymq09ho/eLU98vGmFCye
         9sW1ZNjKzv8TSWMoPIK09ZQJXAnQ6XwhZD4aRp3zC/99dDU783WP7U6z+6M6x+WidPef
         JN5DpG1mNjiadgbr3DH9rnf6fMdvtlYoREyyLPQSMXN8RHFYoyS/ym2btZH4WkMPAWYZ
         Zuwhpiwrmy/5N0cmWTvyM09KXpEcsW3oik812UOGcdXb/WOkc2TzZFdLWMWQB1zOgNZt
         1ciiLLziBcsTkxmUg5bGMILOUrBc5K8tAVv5mNaB9pRbOij6szbwIJrfUD6FfHU+n9lm
         5ACQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PsHW7I1f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id j14si797133pgg.1.2020.03.30.11.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id c12so4265980plz.2
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 11:58:31 -0700 (PDT)
X-Received: by 2002:a17:90b:8d2:: with SMTP id ds18mr531303pjb.186.1585594711248;
 Mon, 30 Mar 2020 11:58:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
In-Reply-To: <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 11:58:19 -0700
Message-ID: <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PsHW7I1f;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Sat, Mar 28, 2020 at 6:57 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I also had planned to provide a single switch to change
> all the tool defaults to LLVM.
>
> So, supporting 'LLVM' is fine, but I'd rather want this
> look symmetrical, and easy to understand.
>
> CPP        = $(CC) -E
> ifneq ($(LLVM),)

Yes, a simple if statement is much simpler than the overly complex patch I had.

> CC         = $(LLVM_DIR)clang

Do we need $LLVM_DIR? Shouldn't users just have that in their $PATH?

Also, I think we need to support suffixed binaries, as debian
distributes these with version suffixes, as Nathan points out.  Or do
the debian packages install suffixed binaries AND path versioned
non-suffixed binaries?

> LD         = $(LLVM_DIR)ld.lld
> AR         = $(LLVM_DIR)llvm-ar
> NM         = $(LLVM_DIR)llvm-nm
> OBJCOPY    = $(LLVM_DIR)llvm-objcopy
> OBJDUMP    = $(LLVM_DIR)llvm-objdump
> READELF    = $(LLVM_DIR)llvm-readelf
> OBJSIZE    = $(LLVM_DIR)llvm-size
> STRIP      = $(LLVM_DIR)llvm-strip
> else
> CC         = $(CROSS_COMPILE)gcc
> LD         = $(CROSS_COMPILE)ld
> AR         = $(CROSS_COMPILE)ar
> NM         = $(CROSS_COMPILE)nm
> OBJCOPY    = $(CROSS_COMPILE)objcopy
> OBJDUMP    = $(CROSS_COMPILE)objdump
> READELF    = $(CROSS_COMPILE)readelf
> OBJSIZE    = $(CROSS_COMPILE)size
> STRIP      = $(CROSS_COMPILE)strip
> endif
>
>
>
> I attached two patches.
> Comments appreciated.

I'm not sure the second one that recommends changing cc/c++ is the way
to go; I think it might harm hermeticity.

> If you are so addicted to LLVM

Lol, maybe?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA%40mail.gmail.com.
