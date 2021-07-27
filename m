Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFVCQGEAMGQE5JNHFPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DA83D7DB2
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 20:31:51 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id c1-20020aa7df010000b02903bb5c6f746esf4674870edy.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 11:31:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627410711; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJ8yLcg0798mLEqwy/iSfUg3FxxN4slj8FWK87vttDl8lzFHFAcZBmeQSqegSecxrF
         BRYLjx+e5AgKDSlxudsRS90TVgEpDDOu8wZNfGF2Hegz7EbkakTYIAjCtH0V6WqyWusN
         Kvj3M+bPAV739uL9OJmKE5E0CT0KcdBtcTp0KvsZIbFogVwIZs6nqmBldQ3tckKk6JHn
         ouRDLTd2ST2XPTDkemoDNlFeAZNvYNPpcBVF0P93yKsSGwZ/tAva1YqdyrdcW/uqEu4X
         Y1nlzUOJ4GT2tNyXtnD8voOkx/KOf0l8O4P2HDlYaATe+Plmd4kXT3uiynUtr3laH4yQ
         TyUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jTs1bn3iyHz2oV/iatDdFHu5UWIs+VTIJk140bpEUVw=;
        b=onvSw9Mg6tOFn08QjZoqLbJDRGZTHroFEJG6Pyf1jHDs5O1lM38ZuBY8psBeuaDGlU
         qU/Rl6w7uDXU1Cnwzz1tbobO73c936cYIev/hqZpnd9A9LsNFcbPc98nwNwg5syZ4EUS
         DXvzp4jvbanlgYxRNMdyw3AosxJW0ipEhFjzk0Hyd7PMCNpv5M6I57P8kiE6TgRdxcq4
         6qSNrzLVJsdOaM78HfObz4oYkt1hJ2aTF1IQsugBhYbA5NMUm20vuLvlus7EQ34YDabG
         XG7ma21oJ55D/kQgZqfcyQXlB5zts4XFJg8yiy6+wGSUkzmfjmWWF9jpTKwj7eXMlO0U
         jNDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LzpEn20D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jTs1bn3iyHz2oV/iatDdFHu5UWIs+VTIJk140bpEUVw=;
        b=nGht+TfKZYE7JUiCWKWhw7lfxb1hF304U0ngiPWtlbfOf8K3SFSI5Gz6h9HhJqQvMW
         auwAwWrordIlxRTNs/E+MNDBoWfSpWunYcmU4ZPLgYLQs/CYX7mMR3y0EDdUa1g/xiIC
         FskgyRsoUrC8/mUg2ytDEUzC3m7LUgvVRnAbKUFQv3C4PEbyvWjmiNax612sQeaU2HmQ
         P9TOI6ZQ4EFKOm9gdnjins2K3cSJ4VD62jrNGykOj5TXQff3UwA16lIAHtoyQHPMaLlm
         7FHbdHOBcxp8M2lSbhkTG2A4bfKOXr0Q0s6BIBCDOGoluEb7rEMcwb2KBLxtdRqpkPo9
         z03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jTs1bn3iyHz2oV/iatDdFHu5UWIs+VTIJk140bpEUVw=;
        b=nztPcSqElAFoQOP3hjG1CLRV+r4hMPHVqkFhzU22+6wsB4TD8g4QG1So9HCYVLp1x3
         7ayHbVbbPiuPsWwIWPtmL9FUY9S5JmQGON6FB1kVM+7ol8FuhBziC8kYWA8fzPySsxiX
         w+g1uf6torK/QiDLwhVlzDE4gssGpB4faWUC7C78iJMVJxDYv1VY3tzARZ6iixM2r9UD
         Lle7TdDRHZUSGPffeRuT00uYH1ZS3bD7itKbDA2kwVUzUkAmZFOhwkGTqfHgl+pPQp3J
         d8N7X8T7ayPMlAQpXMe+cCTLhYrmJ9XiGkJ3af0qgBiSEPFWO8UsxjHuqbaqMtpTEFg0
         ioaw==
X-Gm-Message-State: AOAM532EYNZEq5Dhun2RdbBsN3MizSorpqhvo/rgYGmKwGJGpl079N5W
	6v2J6V/h28GLa7dZXlajuYc=
X-Google-Smtp-Source: ABdhPJwYU8g0a3IpfHlIDacD2TPG10gOnXLMDFhzkDsYU5Op5Vz7BC04ZeKe0lbl6CixDi7DlC+bcA==
X-Received: by 2002:aa7:ca10:: with SMTP id y16mr20385282eds.308.1627410711068;
        Tue, 27 Jul 2021 11:31:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5604:: with SMTP id f4ls1235312ejq.6.gmail; Tue, 27
 Jul 2021 11:31:50 -0700 (PDT)
X-Received: by 2002:a17:906:4f1a:: with SMTP id t26mr23549150eju.84.1627410710179;
        Tue, 27 Jul 2021 11:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627410710; cv=none;
        d=google.com; s=arc-20160816;
        b=sUlVRQRQ71h5/S/VotRShlwE/CMIHdbK8QD9S7Zi2y8x/gO3FVS8FgtrGOY1Wa5mgb
         DB9ohrfjrFnB/j0z99r+atMO3K6f1PH7+KjvtlDnhq75ETFD8NKsIpRkGPWEzMhtwKz5
         34DMxKgKHU8DBPXH9ntphvJHPK6jsaOXP+GGLv1ZQBpoXE7/R0txAHEEuLGAoLRpbfjq
         R7WeJPL7kdMNve8bAqd5IXSsPnEakOMJ/sT2TQCRj5ZGFrnqFA2NDgerga1W7fDZ7Q3Q
         a63Vldw0jP4Y5hT6Xyr+jqB/kVVAcadcn8sHZkJ/U+KVT2UFeZ83cvaIhi5jue1B82/x
         FA+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WzCeD96mdqS8ayUSQrtfxYNv5qyDkHlLyxEuT5l/fk4=;
        b=aRQYBvy9BnSRq7OTTS98GEbtXv8p6zwW3j7NkgLMu/1plNDZOKZNiEHAnMwso6fLDH
         2WZCWGESnmDAbY7AKeazraHPIMdsQXY0/ebCD7jw0yl7s2Zf5rkj0lN3qpMHfts4Yodn
         MT2hGEZhxKY6gCXbnMzMc8Qdo9EUlsH1IkfUkGWK+8PCbLfEWmY8JfUQs+MLP8aoOJoH
         FtzBjjtxdNYFuucEcFi4jR1FMdk5bxLqmEUDBBEw609L7k62ekftt0LrT1q8gXzTbrKl
         dxcWVyoRZKvTvHETbAfPK342anWPwzUBhpl8cfVQj0/aGGrBtgkPpY+G4cTU8UPK6MZc
         QxSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LzpEn20D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id dz22si107510edb.5.2021.07.27.11.31.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 11:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id n6so17112567ljp.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 11:31:50 -0700 (PDT)
X-Received: by 2002:a2e:a911:: with SMTP id j17mr16271349ljq.341.1627410709642;
 Tue, 27 Jul 2021 11:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <YQBJfAuMJhvd2TcJ@kroah.com>
In-Reply-To: <YQBJfAuMJhvd2TcJ@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 11:31:38 -0700
Message-ID: <CAKwvOdkbgr5uPBUC815nrJ_-fHQD2KEYmZ0E8qZRBLL9uQ2WFw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Bill Wendling <morbo@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LzpEn20D;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

On Tue, Jul 27, 2021 at 10:59 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > If there are
> > cases where it's ok to not check the return value, consider not using
> > warn_unused_result on function declarations.
>
> Ok, so what do you do when you have a function like this where 99.9% of
> the users need to check this?  Do I really need to write a wrapper
> function just for it so that I can use it "safely" in the core code
> instead?
>
> Something like:
>
> void do_safe_thing_and_ignore_the_world(...)
> {
>         __unused int error;
>
>         error = do_thing(...);
> }
>
> Or something else to get the compiler to be quiet about error being set
> and never used?  There HAS to be that option somewhere anyway as we need
> it for other parts of the kernel where we do:
>         write_bus(device, &value);
>         value = read_bus(device);
> and then we ignore value as it is not needed, but yet we still HAVE to
> call read_bus() here, yet read_bus() is set as warn_unused_result()
> because, well, it is a read function :)

Such wrappers are trivial with __attribute__((alias(""))):
https://godbolt.org/z/j5afPbGcM

At least then it's very obvious if someone adds more call sites to
such an alias. Then that calls for closer inspection in code review
that yes, this is one of those 0.01% of cases.  Since they occur 0.01%
of the time, I don't expect such aliases to occur too frequently.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbgr5uPBUC815nrJ_-fHQD2KEYmZ0E8qZRBLL9uQ2WFw%40mail.gmail.com.
