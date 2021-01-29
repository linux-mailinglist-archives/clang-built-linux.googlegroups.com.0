Return-Path: <clang-built-linux+bncBCS7XUWOUULBBOX32GAAMGQE45XTNSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3A4308F46
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:27:24 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id e92sf623937otb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:27:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611955643; cv=pass;
        d=google.com; s=arc-20160816;
        b=wNDSakBbhaa495bSVW9YDxub/1Nzph0HoALgTOOcwtaWiI9GeU2Sr6ovfHSxnEmNb7
         MEQf+FXhzIOQi/ikuLs5SPA9ZODbqORYWeogLacTYwMgL8FCZmcIGo8KplmHsgASZShw
         wj6e5dhboydOD6iqPOQZ7nZFUjJQ10CmJaFgcwY9RY9ElXWdnKZ5/QFqaCx1/G6H8Ie4
         puv2WChd3yDgrMcQ8Oi+H4ktTDG0S37LMTorC/RPMivPfNyiXrPx93PuEbNbCShIevVM
         ZHCiI4jjEPfFEJ42I8dWC5t3+58VBLt6Y+s8llH0h/8ZBDkb5ygVEpXDwH5/fgJOQ8PY
         m/Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sOntPYLwN3kqxXdHzf1hyVgU/Z8Tt5PymrLQw4zJ9cQ=;
        b=eUaMu1EgZC6TxTpoCGgwLbHWOTURCA9CeCwQZ4hquFVSHlErxIaGyOZRGkglTC9Evq
         YxjLW7iAJQCexXYmxDJ3ZbGhNIulsJNUBsWONONMMlUfd7D2VzXFwxLVBbvirA152XfP
         Rezekzbk7SYbwH2a6fPqD6Ab6lonXt09E3LL6LcqgjdCH8ntjRFo5Ool/RYpZk47bT6Y
         VIm0BXxz8G1b1YQERD2u67cpYsVUvi3PxGLGxaOqDRM/GCB2KMvQbdl1B0yjXjAtXQaY
         4ekBl91YJJysFgIkAXbrfoHzWk+hpdQJ1oJiEUrm0EFnKBS3NMjGgR7C2UC+X6qqAMqK
         aGIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dX37CiuM;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sOntPYLwN3kqxXdHzf1hyVgU/Z8Tt5PymrLQw4zJ9cQ=;
        b=bVvyU51PFynm4j/M/DT0O5IeyDt3XqH+ZAutaf7ecqqxVxX9pR11I2ouiNXjAF4jY+
         RBOxh+8jBlKWcp1aPmEtqq8CwsdQ8wjv4pw6FhHs3zTYm7RDWhkXO9RUtFT928nZQiaZ
         JbWvUxquIO5a6ajvCPPc35f7LPgrCfex2CgHDbRhhgKSdI/xHsN0y7+kwS4LcJwI6L3l
         bzpJF1OpECMYAp4yoL6hSB49vsrpoC3DVbJwQ7MIsc7pbNoBS5pc8AY6sB8RH77UR0Py
         Ri1HvmhCmQl1SU4OW5qHXGqILMizdsWwRs3OvptWWBKT7i4IXaqgpjyFUh6tgWJ9FRN4
         bFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOntPYLwN3kqxXdHzf1hyVgU/Z8Tt5PymrLQw4zJ9cQ=;
        b=SdX8PAWnen2fEPI7cCjJNzr6MjCkIHiwhhoZSfBuT9GN+kXZ3DbBNv9R7s8JWxi6Kk
         7WjKk5DZJS+f7xL2hkmF+TNLiSRZI1htjKbKvXooNTK962v2g2BKu1p9VoLAcBIRP7tk
         LBiPJs2dKQBr18QuAhOxoDESb4oKBIynYmLYDjuW92vPYZgSK28d/2CEq2VvTXkxgvUS
         dy/eyYh00NZ6jSf6atPt4XeWv1Wj1sNchLSVuz8YKImPkJHn3wkgleP807bAy2P/tZ4M
         QYEmMvRkkB/knvrTcD6kebUyE3zFLg+DFeePzp7WDm4nS55gvr5pKOYUmfSqFKJGwfOl
         cAYA==
X-Gm-Message-State: AOAM532Y5c3MIDoUHD7yAr3W8fS8UMwhJPvcvDogRPdtH4T4a20u/Et3
	+PbhxmbLjIZ3BuH13baP4xE=
X-Google-Smtp-Source: ABdhPJyn0XLnmYjXhZo4l9FWWjqzP3J+CaYIfV9sAhvDKhp7yb+WFDPqXg7v7oO+Qn2KqdB9dGTauA==
X-Received: by 2002:aca:5a57:: with SMTP id o84mr955094oib.0.1611955643064;
        Fri, 29 Jan 2021 13:27:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69c2:: with SMTP id v2ls2477561oto.5.gmail; Fri, 29 Jan
 2021 13:27:22 -0800 (PST)
X-Received: by 2002:a9d:84d:: with SMTP id 71mr4219666oty.338.1611955642657;
        Fri, 29 Jan 2021 13:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611955642; cv=none;
        d=google.com; s=arc-20160816;
        b=hB+vuEHiRKQa2IeopuQzSsyMZd1eHycGpkLNfaRPfUME4OiZsmB6o2dsP3TB/6Tw2y
         Yz530Zm8B88sPfcAFBYJP1a9Usl0AYPghlOH9awwNdYHDZp9dJ7rduOmi+zR8akZCMR+
         6GbgHgH+dVGlJfYAHhKzAyL+C2KNA5LLWm7UQxovqasQM/DKyWm50AVyteHSjJKdbMKj
         tE4oJF+7UgQZZHx/NqKz8DpVlybOccCbBnUcKVQZgGyOIuCDxod4GaVrLUGqqlfNtqhK
         W0sz79KuJXOtLr7zmDxG/Cx51gehEnuHxNHKioWUTi3ew6HxgYb+9joz1QV1anLSiweM
         JcQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H9w4bRYBU76OhsJf1ZTWPcMTo7sL+1mxGISEO7vuja8=;
        b=NIjqenLdHqmPgmViOOZrN+4SirNAZpTftf28Ghir2X8Hr/Y4Dng70HFaDcIiAxISaj
         rJKLXwY0EBv/rZ+NX7oE2dpdDDnTIuAqjxWkpI+SXxbiIB6JEKG7DwBVZeg6IZBAdI7r
         Qy1lJNoj6vr+84JJ0vLW/GdD84+79C9u/2wkLWG4Ao2/+RIUftSEQcFj71Lbp/Vkwrd0
         Z8xHNp9o1xSc8ondG8Q+oJm74vWRxe2eP2iK3WFWqSrDjIx7+yMMR6pmi94iBsD+sa16
         BbZIjRFYxd8QrK/MkFAsTW71JTszww1Luh3e0sMcoSfNOY2tzAFT6wRsaypCyoZDOU4P
         UGBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dX37CiuM;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id a188si589422oob.1.2021.01.29.13.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id c132so7529328pga.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:27:22 -0800 (PST)
X-Received: by 2002:a65:4c4c:: with SMTP id l12mr6376812pgr.361.1611955641890;
        Fri, 29 Jan 2021 13:27:21 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id o190sm6607952pgo.50.2021.01.29.13.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 13:27:21 -0800 (PST)
Date: Fri, 29 Jan 2021 13:27:18 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] vmlinux.lds.h: Define SANTIZER_DISCARDS with
 CONFIG_GCOV_KERNEL=y
Message-ID: <20210129212718.lf7kdw6d5rrtnt4q@google.com>
References: <20210129201116.2658179-1-nathan@kernel.org>
 <CAKwvOdkoivL4+HjXi4aKQbQ7R2J_oKBcMKrSsdxuOGLpseQZcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdkoivL4+HjXi4aKQbQ7R2J_oKBcMKrSsdxuOGLpseQZcw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dX37CiuM;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-01-29, Nick Desaulniers wrote:
>On Fri, Jan 29, 2021 at 12:11 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
>> even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:
>>
>> $ make CC=clang vmlinux
>> ...
>> ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
>> ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
>> ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
>> ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
>> ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
>> ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
>> ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
>> ...
>>
>> $ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
>> CONFIG_GCOV_KERNEL=y
>> CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
>> CONFIG_GCOV_PROFILE_ALL=y
>>
>> This was already handled for a couple of other options in
>> commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted
>> sections") and there is an open LLVM bug for this issue. Take advantage
>> of that section for this config as well so that there are no more orphan
>> warnings.
>>
>> Link: https://bugs.llvm.org/show_bug.cgi?id=46478
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1069
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
>I suspect we're going to need to add module level attributes in LLVM
>IR for these options, then check those when synthesizing new function
>definitions within LLVM.  At least we'll be able to point to this file
>and say "hey, this is a general problem in LLVM, and here are 3
>specific cases now where it's a problem."  Not a large problem, but
>would help us save some bytes in the final object.  LLVM is not
>producing data in this section for all code, just these synthesized
>routines.

Maybe. There are also a long list of security features which may impose
additional requirements. Adding a module flag metadata for each such
feature will be a long battle. For .eh_frame, I think it is
important/generic enough and can benefit other applications that
deserves special handling (and I can look into it). For .init_array, I
am not too sure....

>> ---
>>  include/asm-generic/vmlinux.lds.h | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>> index b2b3d81b1535..f753fd449436 100644
>> --- a/include/asm-generic/vmlinux.lds.h
>> +++ b/include/asm-generic/vmlinux.lds.h
>> @@ -988,12 +988,13 @@
>>  #endif
>>
>>  /*
>> - * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
>> + * Clang's -fsanitize=kernel-address, -fsanitize=thread,
>> + * and -fprofile-arcs -ftest-coverage produce unwanted
>>   * unwanted sections (.eh_frame and .init_array.*), but
>>   * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
>>   * https://bugs.llvm.org/show_bug.cgi?id=46478
>>   */
>> -#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
>> +#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN) || defined(CONFIG_GCOV_KERNEL)
>>  # ifdef CONFIG_CONSTRUCTORS
>>  #  define SANITIZER_DISCARDS                                           \
>>         *(.eh_frame)
>>
>> base-commit: bec4c2968fce2f44ce62d05288a633cd99a722eb
>> --
>> 2.30.0
>>

Drop -ftest-coverage. -ftest-coverage just produces .gcno and does not
affect code generation.

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129212718.lf7kdw6d5rrtnt4q%40google.com.
