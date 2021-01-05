Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBHWL2L7QKGQEVBPWYYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBB02EB1AA
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 18:45:03 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id f11sf345086otp.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 09:45:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609868702; cv=pass;
        d=google.com; s=arc-20160816;
        b=EWbYLp1uv+8bvgVgQpA44pk5s/5HeAVJYAM7GZvQ72G+Y+lakH2Jbiwx3mZhC2xRrj
         SM7fYIAX94dTvJL62adsQQM5vmMUW83mxNE3lrl7Vr/jhc0ggpBfVi/fwNpBRC+If3Px
         oTIWlvdpq6C/hVem5767CpU4t82l0G2XYO9WL/8FJI7I9L6v+PjBPKaB1R9JOJS7qJWC
         tNRzN244nSvf9NEunkY4ufZ+YQoQG4tsgqdsYT1nNIkLZSKOWF4slk0HNmIZnx0prDMa
         rQMV+Plu2IBCePPR194LKvauW4zspiQe3UMxZeZWOWujSybL2U8vigxEvCgVhSGYi59T
         zwiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ck7V3etIN17tOCiQYmoSTodZNIn432Wr5Xqv4DxT4Xs=;
        b=AWz1vjB1x12wj0U+8UgKb1+4awF5yjbeVZoBm88Jo548vcKcRFQ46U3NP9OUypQj25
         MU0jYbCiIuqfZS7NDvBI0bYh+rZ9PAJq8jTps2iF+1b1mtaJZsYMpwOCjUeDUA9uJeEu
         MexlTsRR8VUUfCZRR0H8jcmuw/4zATWENWItiPF/B47kegRkcbw9lUk1Vn5lV0XisLP6
         f3HGOPs1SyNRUWZAh7rkYvjC4dSvmlGCf9EMrQc0+dlttZLFPDepnsYaQ24MZocMVhQw
         eplG8DPYjQ9KmrHxQ1zyAGftCizPcP6bqRFQ9vILtBduxJYAHu+Cw5VV8Shjc68D19H3
         svxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="P43/otfz";
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::929 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ck7V3etIN17tOCiQYmoSTodZNIn432Wr5Xqv4DxT4Xs=;
        b=V5IjzUeu9R2Xxm23Sgqc7NZN9Yxb7OR/5pVRej8HLrn+xb3tOvlC741ca50bFx8+Lt
         K3v3o4QgXywUMxvg7knt+VanIXy/Ernk2mWdYVjvwCRAsusiEh3eAaf+GrxT8SQ6w37L
         xoyTWGcqs5wrO5S15r8U8X304oiZQImuxxWDKkT0wXQI+t/U8V4LMzfCpVi2zm1yNfRr
         ehYXQPSXOaz3QKQjacVJWN+U15B0yIfZS1yzYQYsmgvFIRAdqwAcvF1MFadaEUsCFdvs
         oM+dUK0+7RHOvLwaZWv8m7XOHk9jyfPSy0N+kB6wxnVkCZeSMDd8SdT7gNI2osQWTxF3
         Pe4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ck7V3etIN17tOCiQYmoSTodZNIn432Wr5Xqv4DxT4Xs=;
        b=c6XQqTfLnc5gUgRvZ2oYVvjd9MhqfGyn0eHkay8wsD+3POAGFCliH4XwjPZkXpjCHb
         3H0e/voz2FFnRq63qv66Cg6yk9ULJG9WwybmJj9zLbNg7PBuI3ZHMDxDaUNbRsaTzh3P
         t89RDwCBO3yL2QvsJCNZ5cJnUvHHZhvSbA5n4y2pLSf1b2NbC42JMKVddwmKcZw/b8ks
         uLiOlm9uiHr4GcS4Pt8eSeQkctSBlA/6YQaysAZY9tPmtR9R0ZdNtJaFgvxx4GDk+RSz
         gpiCMb8DRVHVIwFLy00AkyCf7aWykF4CHM5LwbwAWY1SqkNfjrPo9lISvo/CcIegQpzc
         djig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rp39XPgPd114oXtBYJS5AaWS8Oiyj+NRIG4zHgNdP8HAvojCS
	kw9px+13hZz8nJFYpav7V9M=
X-Google-Smtp-Source: ABdhPJwaVfp+1s9TXAHGNWR1i+qzjNbWPS4nvnFYIZ3+nrhx+RRLq/vLWkdUjqbA695nKtrlY3IiZg==
X-Received: by 2002:a05:6830:15d6:: with SMTP id j22mr462718otr.34.1609868702596;
        Tue, 05 Jan 2021 09:45:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:aad2:: with SMTP id t201ls16779oie.1.gmail; Tue, 05 Jan
 2021 09:45:02 -0800 (PST)
X-Received: by 2002:a05:6808:118:: with SMTP id b24mr501031oie.17.1609868702225;
        Tue, 05 Jan 2021 09:45:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609868702; cv=none;
        d=google.com; s=arc-20160816;
        b=PYN6BbW/k6iaPfvc4sFovfRJ01ll3B1VSAFU3cfXqLTvF32nhGQG9Ljv9B6d7h3Ckp
         bJyCYfrwRVlacroAZ0Rk9p5slphGij1+vuuaDaQB1nRULyiCKzMvSYG0KTZghZjGtSwM
         +fnt6pHmD7H6iuaG71NRAXIHwHWRr8tml1ZUkUQL6UBom7XMxTI3FjLq0EzYoNqjuEgC
         sVRO4EN4h75TLwVJbPzMTeAvqq5gi/kGjiZlsSx6c8KGgM7wtkQmQqJZwKxIYpBnSvoH
         ypvPGkxi1KQmj1SVn0qWz6ELH9FEKMDhHCCGgJXOtqQY7DJuUqcb5mvkAFTou52AhvWF
         Ekvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2poEGmb5do8w/L6iPewO1Yp5f3/JnzeKXCH38sWzZXQ=;
        b=UfPEUJy/TxvA3ttcjBEm791FIX0pgrEd7majNljS6swW2K5fpaCXPqHOtPLj5+WVrT
         2ndRmpcja6wm1xMV5aSW0NAwRlGbX2r4vcPig5gsmgkS0i9b4dksQBSFUZZQKYY5f66k
         i0oR6u9b/VnDXW6RdjDAva13lrAz4kWYiI3Gq7l8f6FzCHCv14dhwkFM/iMWrjDVLdJL
         xO0iutYO0sVawFBmiimFr2AndsPFpu6QUbRQ3jKGCuh2F06ZsmIzLR3U4TwT8ZNRBRx6
         LdW/K1OMa7i5wfQvfif4Um4CK+QlEaGq2A8zB8T9DfbaLD2Sy2cVMADXJ8NcaHNyZKqy
         HYDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="P43/otfz";
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::929 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com. [2607:f8b0:4864:20::929])
        by gmr-mx.google.com with ESMTPS id u2si77960otg.1.2021.01.05.09.45.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 09:45:02 -0800 (PST)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::929 as permitted sender) client-ip=2607:f8b0:4864:20::929;
Received: by mail-ua1-x929.google.com with SMTP id y25so159091uaq.7
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 09:45:02 -0800 (PST)
X-Received: by 2002:ab0:65c2:: with SMTP id n2mr757923uaq.73.1609868701284;
        Tue, 05 Jan 2021 09:45:01 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id d142sm7130vkd.52.2021.01.05.09.44.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 09:45:01 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id j140so368899vsd.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 09:44:59 -0800 (PST)
X-Received: by 2002:a05:6102:21c4:: with SMTP id r4mr461281vsg.37.1609868699223;
 Tue, 05 Jan 2021 09:44:59 -0800 (PST)
MIME-Version: 1.0
References: <20201203202737.7c4wrifqafszyd5y@google.com> <20201208054646.2913063-1-maskray@google.com>
In-Reply-To: <20201208054646.2913063-1-maskray@google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 5 Jan 2021 09:44:48 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WWSniXCaC+vAKRa1fCZB4_dbaejwq+NCF56aZFYE-Xsg@mail.gmail.com>
Message-ID: <CAD=FV=WWSniXCaC+vAKRa1fCZB4_dbaejwq+NCF56aZFYE-Xsg@mail.gmail.com>
Subject: Re: [PATCH v2] firmware_loader: Align .builtin_fw to 8
To: Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>
Cc: linux-arch@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="P43/otfz";       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::929
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Mon, Dec 7, 2020 at 9:49 PM Fangrui Song <maskray@google.com> wrote:
>
> arm64 references the start address of .builtin_fw (__start_builtin_fw)
> with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> relocations. The compiler is allowed to emit the
> R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> include/linux/firmware.h is 8-byte aligned.
>
> The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> multiple of 8, which may not be the case if .builtin_fw is empty.
> Unconditionally align .builtin_fw to fix the linker error. 32-bit
> architectures could use ALIGN(4) but that would add unnecessary
> complexity, so just use ALIGN(8).
>
> Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> ---
> Change in v2:
> * Use output section alignment instead of inappropriate ALIGN_FUNCTION()
> ---
>  include/asm-generic/vmlinux.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Douglas Anderson <dianders@chromium.org>

For whatever reason this is hitting developers on Chrome OS a whole
lot suddenly.  Any chance it could be landed?  Which tree should it go
through?

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DWWSniXCaC%2BvAKRa1fCZB4_dbaejwq%2BNCF56aZFYE-Xsg%40mail.gmail.com.
