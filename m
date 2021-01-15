Return-Path: <clang-built-linux+bncBC2ORX645YPRBRGJQOAAMGQEQCRMFOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BA72F6FA1
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:41:42 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id 3sf4181355pld.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:41:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610671301; cv=pass;
        d=google.com; s=arc-20160816;
        b=meCe8ZsC2Tdiq3/f3VzDwhKah7KQcUpki1U3TF2m7vUz7rRuIH3FFs7GKGnOI6Hs8c
         WIoR08z3JK2NIkMSpqcZXBgzDkWhxg2Jdt/HCk5xAy+KrCkHdXzhV6yX5Dpg31RI4oC2
         Qo09BfEBMB6i6zrzztt9rFb5kGdtd7c9AdAZu6Nl3x9BQ7PhMwWmz4dBpltorA0nnsRe
         Dt8MDOEI8t26dMteViiN+YLcQtQfjeH26NswnYCkafvuCWLfKy2hZ01pEtbVdDeNzeTl
         r8fIsjmgoeWDT4hZ2aQLA1wGIspUezz1jv5OQLgWICh83h8xqfvQfbZ8GyDEBwhf3eMt
         UqdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HWkqfWNSSMSUoEQlBdiKEJa0cWU1fYeQ+Hm1p8NQy+Q=;
        b=ujJvFEkyqEm3WS6D6vEKhSNBnxT8fC6s0q2pQO32833MfKBIGqZZTD7H/luvCYTeYP
         ja1bt1p5crWwgVwtAe4hPSAPzTJK5t0yPK2PSYiKsWghxmCvgIkEKC5K5l4go9YwmxdF
         rxARJmSwSMf+3BcWUDqDT+1uSVAaGS+FJJME4O2kbQeK/I4Coc6e+OYm6DZK6F9t2XcM
         WrK+dF+1xTRQ+nvdHsxaTDvaluzKQZbuvpN7jXaYyNzRdvBZlK6UK2MFCdooKBsQL2j4
         jY78QEBNhoItRcCpvtKuL1QkHzJ4FjSuWqCYGyp5MxDFyVZneCp5r1ibGkWfpN+t448O
         A1IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ksEpeZ2g;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a32 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HWkqfWNSSMSUoEQlBdiKEJa0cWU1fYeQ+Hm1p8NQy+Q=;
        b=nV/qq9pAfwTqeQOI6vHXkU3IVeN6CQ7Te8EeXgiUJEp6sKj6UnbTTefWUExgm8BkAG
         jwFhY0MCZ6F6rGf18oQIaQucN0XVusGlmPzY/YeVu4Jx/TomLBCfqAikPEximNmZs09E
         0dSZNk7q7djThq4jDmOsYjen4ctR1O8UdL1O+EUOjHDPkCigWWd7LbkWP9KWjB8Xvg3j
         G3xbGVwKFkCO5zLlru32yGKfcDNlwAmGGwmwhMtC51YeZ4STua3jxX7maOS4SrH8HOrB
         ekzXeum4Wcr3fRntAg8eX71jHAjM9wazu2WWCHmDa6MiW+3t8IThswWtoOWMrCNduSdD
         AuqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HWkqfWNSSMSUoEQlBdiKEJa0cWU1fYeQ+Hm1p8NQy+Q=;
        b=o4XwT1JJh06mXL7/0ed4wbmdD+oH+Cz4w+AU8tKnPVxq7HYHRIaC9e4KMLWXHCXI2R
         S9TtZafoRq2ZjB/JWHHnVSaWKfM83C0dCAGUw9X0U5V+lYUeGCS4IvsydTMcbgAxdISQ
         kHH6V/iv9SEKTtrsDYMXiUfiMTJOICK3o50qSvJGWDVsHb5YUgDcIwfUyjBi2Cp8g48S
         tZmXy4yfA4D3kQn/UJ+ocOIKlPMPaf+IsrpI6viQAfPneiw5R7vkHS4VV+5N3IPuVCr0
         7AARVeQ7XT8/bTcGbyHtYt+kS6AiIcDzMsikyCT7yLRMkn8NfrH7bRLRZfHMPc3vYNjU
         fr1Q==
X-Gm-Message-State: AOAM531xZ2c57SX6KPjfRmzRbJsN1pWIODZk5taJwV0JEPh8G/2r2/ZB
	5E3/R0ep/9cPLZ3ej9HEFVM=
X-Google-Smtp-Source: ABdhPJyM1pj//46c8yDK68bjwHQEabfJnlsTMYxpl389gZpjWNGSgpWH7bdcGp9BjFgjg+qVP7NR2Q==
X-Received: by 2002:a17:90b:346:: with SMTP id fh6mr7605332pjb.225.1610671301041;
        Thu, 14 Jan 2021 16:41:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d97:: with SMTP id y145ls2753874pfc.10.gmail; Thu, 14
 Jan 2021 16:41:40 -0800 (PST)
X-Received: by 2002:aa7:959a:0:b029:1a1:ffc5:531d with SMTP id z26-20020aa7959a0000b02901a1ffc5531dmr9992882pfj.27.1610671300342;
        Thu, 14 Jan 2021 16:41:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610671300; cv=none;
        d=google.com; s=arc-20160816;
        b=gyLLJoml3IfwRtIfrOebEi+lbC/7jFGZmQjYUrGBSRdwU82q10yiY9juBil74ysIeT
         2iORE/svPYPOlp5EBhpMNmB1eG9EqygYOFbzUg1BFjOLdKsm2KZHJnCGFIJfQbnFs+Ze
         mJex5WchLXDcxOEX/Xhuaz5aLKNSrQxFykvUTvz6tdfBNluUAiW1P58L+sA+ttaw0d7W
         L+krA43um7Js/xMyJWUgGF+vThjKsQP4URCO+75Lm+xd/mik/Utq9BQVB6qmYse5x+YF
         Qg1eEA/MfU/gr/EVtP9lsGfMZsmsugrLWuedKxNYvz4h0g76mt721NS+Km70wpRQ4Oxg
         rxSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ss17mtZnH2/a4fJewDBpR3Mu5Wdw8UA3YC60wTDpAyE=;
        b=XzL75K5oqO0FnvjJ9G0c4u4CXio6gIfKpjLA94dHtS8v0oMTOAvEoufTuupsCKZNRr
         Ycoyb7oNLtcTQmzjcvv+0Af6kg8bmHbYR1J7d1mwgTNxur3Ef0vYQGhdvqm65PgRLd7g
         jqbbW3CD4IkJ071Pcv2r6o++EyK4D2YBIeJDFxsRv0AKiWrAy1QmZ7BW0Wz5hzHSJSaN
         a1Y2HWHI5pbBdhCUcPSEUyATepr42K/1uqk/diy2GPWY6tQdSmBpoqT1THS0CxpkfHjI
         M9bwZgORSP6Z6u7JGMKOg8K311yyrL/gJ1TUQ19p9oksD31V6SO8Ck+pmwZNGkoidbPS
         ssFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ksEpeZ2g;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a32 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com. [2607:f8b0:4864:20::a32])
        by gmr-mx.google.com with ESMTPS id r2si369904pls.2.2021.01.14.16.41.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 16:41:40 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a32 as permitted sender) client-ip=2607:f8b0:4864:20::a32;
Received: by mail-vk1-xa32.google.com with SMTP id k9so1811599vke.4
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 16:41:40 -0800 (PST)
X-Received: by 2002:a1f:ab43:: with SMTP id u64mr8571920vke.3.1610671299229;
 Thu, 14 Jan 2021 16:41:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 16:41:28 -0800
Message-ID: <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ksEpeZ2g;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a32
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Hi Josh,

On Thu, Jan 14, 2021 at 11:40 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> Add support for proper vmlinux.o validation, which will be needed for
> Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> objtool anyway, for other reasons.)
>
> This isn't 100% done -- most notably, crypto still needs to be supported
> -- but I think this gets us most of the way there.
>
> This can also be found at
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
>
> And for more testing it can be combined with Sami's x86 LTO patches:
>
>   https://github.com/samitolvanen/linux clang-lto

Thank you for sending these! I applied this series on top of the
clang-lto tree and built allyesconfig with LTO_CLANG enabled and the
following crypto options disabled:

CRYPTO_AES_NI_INTEL
CRYPTO_CAMELLIA_AESNI_AVX2_X86_64
CRYPTO_SHA1_SSSE3
CRYPTO_SHA256_SSSE3
CRYPTO_SHA512_SSSE3
CRYPTO_CRC32C_INTEL

I can confirm that all the warnings I previously saw are now fixed,
but I'm seeing a few new ones:

vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack
state mismatch: cfa1=7+192 cfa2=7+176
vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7:
stack state mismatch: cfa1=7+160 cfa2=7+176
vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to
do_strncpy_from_user() with UACCESS enabled
vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to
do_strnlen_user() with UACCESS enabled
vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call
to __ubsan_handle_negate_overflow() with UACCESS enabled
vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected
end of section

I haven't had a chance to take a closer look yet, but some of these
are probably related to
https://github.com/ClangBuiltLinux/linux/issues/1192. However, I can
reproduce these also with ToT Clang, not just with Clang 11.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA%40mail.gmail.com.
