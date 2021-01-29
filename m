Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJUF2KAAMGQEQ67S5CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF41308F95
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:48:23 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id w4sf8024488iod.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:48:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611956902; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yz7F7w9hGmSy9NWjxRDFXLcDiiOl2i7Cg+wU1vspnu+buFWDP5cpaLx69lE+xwc4Pf
         qCEogEtUsmP8nNbig6M/7j8F6VTFPwQFnY7b1z3toVPEQGrRqVlfRrxlgHiBWiHgJt01
         2zXcecM2m1jHWJLPpx1rT5raPxf3ucnzfyMWcpqgLy6YNc3d+r3ZT7FUjn6t9krnxFxV
         FfvGXi2dS9Jn2siosV+/rG6RoT3j14v49NsWXZLCWApkr80qWYj6qnKqwEHGkgYHNz5M
         OAhKgi6nMncjuxcGVfiPrdfTEPK/Aq/tM6/t/5gg518ssBaLFAhYOfU5vl1A7icLBwnE
         wPEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=htoy0ZMcgouITTD5X9gMrCg2aJ5tLsN3e+umS2zs950=;
        b=GbxtwPNNwfrNALNbjwfCfnk4tb/qA2faCHvvZxHW0QCjAgerQwT7pnUb+2YJBdhHmh
         TzND7ZklLetWcURh5FTZmELTQ62viSHgAlL5Rj/im62dtbPbwbFsTNogJERiN2nK4vzl
         lAkTnvI4Vze3j5Z4wxfTpFHqccisW9HWceHGbgw7pWTjjujZGmGB1jBFsE+FSdD10qxI
         x0J0LtTPSnNSiUQe24qPEDWGDnv6jT4N9PyOj3wICnFLQixVtfjA2F3kktWnvXv4HYkd
         SCbeNz5QzzdIDtGd8aa3LjCG7ruPGzXU1ZgOqPdvnLj+0MaqFSxfXsU/kDRupc84lB5p
         g7Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eGTW4MG8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=htoy0ZMcgouITTD5X9gMrCg2aJ5tLsN3e+umS2zs950=;
        b=oxL7SLK+D0XoEyVz8cUd2jHjw1sL67UgCZ37JNWmIc9SkAknCharMJWBzC6Km0IPWx
         ndkh0aaSfIZcrlJVSD5rcWr6glkDmrHbuix+50rviQ4Rjqz0JlPw4gUSn8jL73ose+Ei
         qRwuyf0YNxV4a9+QowvIVAp3TvGxfZKVBiMCPVcN7O3oFijScEML3KzhMCvBnyrHFzuF
         zlUuwv9hGuxj/qQ5H6jW5FZ2gauJ9G5nvzjgPjHXgLv1L1mzSroCz3RLGmLvCmPdm0vL
         QP+ffNsa9EZTHdtVHi3t+N4CTTJ80JwFmEzWa34ykvNjqmv6sdjT/2WzTAFregoRUnFr
         2jUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=htoy0ZMcgouITTD5X9gMrCg2aJ5tLsN3e+umS2zs950=;
        b=H5bjOS8lqKVHCtfM4KbwxDi8PCwbU0aZYKYuEm/4ZP9/YCX6E3qjIc0AEHo3tvU8wk
         7yViHGAwBjkE7kyWcD6qNMT4si37Cg9T/OulW6pyiz8xi4xwSsZsjwR9zTHk+IyQDK4R
         sjYGeoUFigKjhAeekzvOE3TlUumbObw3UG4ubT9LfLgF1tw+8puo33jNLvic1HO/4Ji1
         K9bo69UNx0Gs14WndfJy7R0N1FwqYzq8uvLztA+aIBH32oJY3cxyN3D1ik0dbK/t7HyQ
         dKNaqBbdNxg8/YzFd94lLwCfAlxgzJIBDXZXPdpHOE6q8di+wltMXoV6R4QYKnJEJl3I
         RMeQ==
X-Gm-Message-State: AOAM530ViAUGEbzaQQ/zN7vD0eVJI8TfxyBNv9BYyiw/sTF4m1zxK9CF
	4NbQVZMCi+FCX695+alju7M=
X-Google-Smtp-Source: ABdhPJxJHNlid+S7ZeccRNAvcjlzjiBXIFGdNs07bi/NJkxnX4F/k7Rr3h3STDDXOhKapoUfI0DP0Q==
X-Received: by 2002:a05:6e02:1d09:: with SMTP id i9mr4713878ila.207.1611956902242;
        Fri, 29 Jan 2021 13:48:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8216:: with SMTP id l22ls1538955iom.9.gmail; Fri, 29 Jan
 2021 13:48:21 -0800 (PST)
X-Received: by 2002:a5e:a706:: with SMTP id b6mr5133227iod.69.1611956901875;
        Fri, 29 Jan 2021 13:48:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611956901; cv=none;
        d=google.com; s=arc-20160816;
        b=kkt+OmX4EqNZ+2lj8Oc3UlCFudTg0xpVH4PyhbHu8C09gDLgDGgaDDJ6xZBebBAXxd
         GasuLtSeRAZ3Jyi4FoxR7Smj5YFPYe7E0mfdfly/ce2cpJtRpz0SbQQzrKUUczRN03I0
         5j/RuPduBuYXal/YAi8I/ZGvWDJ/7nxodZHmEMwTzuKf5C84gBql7gu0zxmIon481/7B
         LRb4hlqFwWv01LXdNASzSF8RpZij1a3U9dueZqi2CfUTkKSOWVU7bEfo5Uw6JGuuG8uc
         cN4G4Co9E7B3X1naExeea4Xa+TS5VZCUffRJXRYqXdj9TNnXMBPseEO2c+pTrCxiWUjB
         Jivw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nDCl0b2Dk+cS7GVWEWeoYxC8mwKbqEi6yIqTF9Oo/qE=;
        b=ynuXPJGpZgcAlQK39yoD+0LFCcTecvIxonaNbx93xzAY2UVFS3jLy0oAUhjEt7LZui
         LKE1f/AzD0T6xJKuZ0fVVKBRNKGmL9dPruxe0egDRQgKZ+G5igVBTT9QZ4gvpPX5bze1
         T8+wM0RK6n3whFOzR7SQOGePjFdviQBisepZ+dpIz2XAuzUwOV2JP5IVahXswDSlBfMb
         sC4+Oh7MovNKliq/biJcyoBLXqGkXFCz6/A9RCNMEPw5e6FUylXdiWCCPVp5n4nwfr9f
         XNIz4xdmRo37G7Gzzz1vVCAEsxYhriuozW+y2ijbdxJtD+pJDWHgTx1qalJkDaA5PfMJ
         Ye3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eGTW4MG8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id s187si435026ios.2.2021.01.29.13.48.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:48:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id a20so6477085pjs.1
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:48:21 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr6338917pjn.25.1611956901187;
 Fri, 29 Jan 2021 13:48:21 -0800 (PST)
MIME-Version: 1.0
References: <20210121082451.2240540-1-morbo@google.com> <20210122101156.3257143-1-morbo@google.com>
 <CAKwvOdm+3o8z2GivPjSJRa=c=UKdfkiY-79s6yn2BxJkFnoFTw@mail.gmail.com> <CA+icZUVbdbkboYNztXNtRDR+LH8yQbhZJ+Nw-h91TQRr=Z08Gw@mail.gmail.com>
In-Reply-To: <CA+icZUVbdbkboYNztXNtRDR+LH8yQbhZJ+Nw-h91TQRr=Z08Gw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 13:48:10 -0800
Message-ID: <CAKwvOdmyerPPJo=m+13jtWR_kPwrmOeb89jh=qgGzEaPhKDOLA@mail.gmail.com>
Subject: Re: [PATCH v7] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eGTW4MG8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033
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

On Thu, Jan 28, 2021 at 11:43 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Some comments:
>
> [ hash mismatches ]
>
> Observed identical warnings when doing a rebuild with GAS or Clang-IAS.
>
> [ Importance of LLVM_IAS=1 working ]
>
> Clang-LTO and Clang-CFI depend both on LLVM_IAS=1 (see for example
> "kbuild: add support for Clang LTO").
> Sooner or later we will deal with this issue (hope it is not a local problem).

If you're switching back and forth between GAS and IAS, then I would
expect a hash error if you're trying to reuse profiling data from one
with the other.  The profiling data is not portable when switching
toolchains between when the profile was collected, and when it was
used.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmyerPPJo%3Dm%2B13jtWR_kPwrmOeb89jh%3DqgGzEaPhKDOLA%40mail.gmail.com.
