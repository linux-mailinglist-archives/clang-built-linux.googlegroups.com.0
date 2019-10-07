Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4N753WAKGQEKYCU43A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6432ECED68
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 22:28:34 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id g62sf16187433qkb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 13:28:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570480113; cv=pass;
        d=google.com; s=arc-20160816;
        b=TD+lKvVbKiyE5YewyWcbVWoz/O5hQD4GYsmwCwgKKOJHy7Wmbcl1DB1MY15rMy9BYf
         vaC7D00Xskt5Nv+cf4nKP7UJ7+bGLJOXjG6vMNdv7kxx7zDq9aq1tvIlQRaOQkikW8tB
         zVa+9jwOD0F59JwyOUDG1tQc7LecnHk+Miq52HcvaNZtc8EOZPK4+YR3DngkeiYj/v0V
         wuWhizPmZVR30weroaeIuJ1xhXPqC2ntCyHwJFDEkObthXoGtYtrOysygRvhm41sIiFf
         F5Hv6dCdig5lsz5dg/gYx1MInQ56oMWtvDozcvHRUJqE3iT1B6rHX/7MmWecM9gnPpJn
         XOjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qe6YzpbNmXpb0fpJNDQfh0z+a6OsdSvu8GSfp5bnbU8=;
        b=DZGkPMQkk4m9Jj2pj0V1Ddhi71i3odLxCrvXsQnH8i5ZblWrmJ78y5JpWi42ZgEENt
         fE3B5OF5FVWdCoiA6irLNiSZWkP1QnyXvRwWY8RvEUjNtgu+rbgV8sVRA9cfqEnT5M1V
         CbohwqCO5CIoW9AsD8LnfX+O+2los9Nml0V09i4PhDYKyHDLC1qaDc0TNXcfUQ+y6w3M
         k9naPKuBKrhuaze8Rs8DazygIOmAu6LIEZIEHyLuN/+g6etOcns36wE2Knf2Hv+ecbFn
         zcugmI9mH5t0U7GfoMW/L//eVRhHmjhPQ7vVl8GHwuvbNovjdFU3z+mh6k+P9B86JeaK
         GNmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u1LrB81c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qe6YzpbNmXpb0fpJNDQfh0z+a6OsdSvu8GSfp5bnbU8=;
        b=nizHfWI2Tv6VrmDi6V1tvkTajo3pK0FopdkkM61QupkAfvWFleyOjnI5eCtpEi2BGu
         +vTf1RNxfkTieiCccvQjYO/epVrpzTR6Na5iVSM4oPpL+CgrcNyNV+CKsEUgpaockKr3
         qlGqa1DrxnxUVvS+8k+mvp1OyTLvnBBfAh4BADozJMtuSfhN0RTHyoQu8MZEl7A6rPj0
         jMiYWGvrGJqrhP9jSpllGRqkWipSSpiYewYjWNQWa5S2V2uoFXqKbfAISwPlpsgom9lT
         acDlVYpRFSnz4Cvgc8RgmDdZtKQzkRURxI/6HfQcuQAm18ADIdqBnSBc+ebJnu1KpaAc
         Gxbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qe6YzpbNmXpb0fpJNDQfh0z+a6OsdSvu8GSfp5bnbU8=;
        b=TJDiLJsGvEcF1V826xq61TTo3opefwKSnM5kkTpk8+LAVa9B+TGZGassMkAuipJfAM
         speYjhGMfzGSCDcIi0o+g36pgZjCHqaoVWBGWUTb8zYEuaKH1qMfBMeYjCYXE9wxWvSM
         uCAfAz/YJYBHitSJGtHKf1ApaD074dEfc8EIJgAxAXl/XpLWX4Y/1r5QID47ljnhIzuR
         61pt+fmswtwngQmfEg2Hpy37T6Ir03NO82yye+JSe/1NJO2e3Ym/l4me0n+0Wd/T0wsG
         KSCThwcLoZd59qzA6/jGhQ96UmQsk6xG3sI6aKUp/EMMP9236sGmLjeyRieKbmOhTRlo
         tQKQ==
X-Gm-Message-State: APjAAAUFmQI8mCWHHc5LUH8PkdRgvNE9i1tVKBVmofhaeeYqI3RDAfg6
	KUPguJ08L+WfKio6qw83yUU=
X-Google-Smtp-Source: APXvYqzr3rsSfZ2tCY2jmA2wYceS5QIFgp9cbYXDk6NtxVMKO60pTXsTnAh41orstMI/F6znu1j3Jg==
X-Received: by 2002:a37:8382:: with SMTP id f124mr25138716qkd.218.1570480113392;
        Mon, 07 Oct 2019 13:28:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a853:: with SMTP id r80ls427574qke.0.gmail; Mon, 07 Oct
 2019 13:28:33 -0700 (PDT)
X-Received: by 2002:a37:6787:: with SMTP id b129mr26172548qkc.60.1570480113034;
        Mon, 07 Oct 2019 13:28:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570480113; cv=none;
        d=google.com; s=arc-20160816;
        b=J8/JOm9CQ1mTef7WWHdw1qHvCSSNkwCbP85b6ncHJbkpbNbo8WRB5IWDP+PbH5RY9a
         BzrRXuOg2OkGd7Re2e3/lH9xoTMTksHnf56NSdCsRnMtUEsJL+hnJHHeGtjO9hKq75zI
         PHxLtsjo4uqWg5akKReXzLSB4Vym2Xe1UypVK0bZz6C3XGMeflZHCyTjcq1BywevcKvv
         3wYXdQkIPRpSqT3ID3O1IvUhSNlAhKhIDP1Xys+VgIy8htDGV5LcZZv3dPURMRQK/8ec
         bRD52yNqI1eXa9+jWSMwRuG1e3hEqZTAbjfFKlczIzoEWsgUMWkTZNTD4fbmR6vOXbH2
         2LCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q1nT5pqV4UDWiGVYI8ECyB7FPfmS2/KcyZkTgCypark=;
        b=ukDRBRirhEBFL8JRJ+2pb8uHzgK99jM+ahn8Jz+VU5SzMlhTocFF7uiBl1ACVKD90t
         3u1VTgeeyMAOtON7/btU30nzxliiHwvwFgeX0th9ZqtlTTpF+BUS/WN1tBUZktirIup/
         TIt2rI1HkAATD6sf0apMXrOdScMz7Va94swMgB+igez3GzElZS3f4d/pE0KRh8ugof/A
         zei5MJV76GkLPzb7hydqZe95Ab3neWabEibx/et6qPyp2BeCQn89rhNF70UEaRPFisTT
         VjTk/rd8yzFT17fgEs3PXZO9jGlzaNKADMWHWOs9qEJ2VudcF4GLvtFvBPA2uV80VzZY
         b6Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u1LrB81c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id l4si727046qtl.1.2019.10.07.13.28.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:28:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q24so7383619plr.13
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 13:28:32 -0700 (PDT)
X-Received: by 2002:a17:902:820e:: with SMTP id x14mr113358pln.223.1570480111571;
 Mon, 07 Oct 2019 13:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
In-Reply-To: <20191007201452.208067-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 13:28:19 -0700
Message-ID: <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u1LrB81c;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Mon, Oct 7, 2019 at 1:14 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Unlike gcc, clang considers each inline assembly block to be independent
> and therefore, when using the integrated assembler for inline assembly,
> any preambles that enable features must be repeated in each block.
>
> Instead of changing all inline assembly blocks that use LSE, this change
> adds -march=armv8-a+lse to KBUILD_CFLAGS, which works with both clang
> and gcc.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks Sami, looks like this addresses:
Link: https://github.com/ClangBuiltLinux/linux/issues/671
I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996
though that quickly ran aground in some failed assertion using the
alternatives system that I don't quite yet understand.

One thing to be careful about is that blankets the entire kernel in
`+lse`, allowing LSE atomics to be selected at any point.  The
assembler directive in the header (or per inline asm block) is more
fine grained.  I'm not sure that they would be guarded by the
alternative system.  Maybe that's not an issue, but it is the reason I
tried to localize the assembler directive first.

Note that Clang really wants the target arch specified by either:
1. command line argument (as in this patch)
2. per function function attribute
3. per asm statement assembler directive

1 is the smallest incision.

> ---
>  arch/arm64/Makefile          | 2 ++
>  arch/arm64/include/asm/lse.h | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 84a3d502c5a5..7a7c0cb8ed60 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -36,6 +36,8 @@ lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
>  ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
>    ifeq ($(lseinstr),)
>  $(warning LSE atomics not supported by binutils)
> +  else
> +KBUILD_CFLAGS  += -march=armv8-a+lse
>    endif
>  endif
>
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 80b388278149..8603a9881529 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -14,8 +14,6 @@
>  #include <asm/atomic_lse.h>
>  #include <asm/cpucaps.h>
>
> -__asm__(".arch_extension       lse");
> -
>  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
>  extern struct static_key_false arm64_const_caps_ready;
>
> --
> 2.23.0.581.g78d2f28ef7-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007201452.208067-1-samitolvanen%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmaMaO-Gpv2x0CWG%2BCRUCNKbNWJij97Jr0LaRaZXjAiTA%40mail.gmail.com.
