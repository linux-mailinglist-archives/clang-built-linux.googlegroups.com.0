Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7M57WDAMGQEUEKXZXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B57F3BA3B1
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 19:38:06 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id z2-20020a5d4d020000b0290130e19b0ddbsf531961wrt.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 10:38:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625247485; cv=pass;
        d=google.com; s=arc-20160816;
        b=RRhR3fbaw5ic2gK1mF0dXhVjrAfcdWWeexTdSRKfA5tmLRHF9yF17Sfpf5EEnOfSY6
         PJPO07czMwPMenX08IN0YQHezSW0FjQGRCAapXQGTE8/Fcd4ur2cWqgTzLtIzl8aQ/zG
         Aa52uEP3/kLeOfXvjS+4dZWe6VlPej84oNpd5GKMV2i2liNI+3SXWY6z0B4VLs7t3OvR
         /sZEyM2lOytCRNqSplVkED4+rKn0LoDPzLcUUcz30GArOvJ+sqvYiBqTXEb/WejaI9ev
         ZRVZgfDHm5auxnqQ73b7ws2XzzFmnyWeaijLLSIG0CxeU4TZ69rE4iadZNCQ4wgwo9LM
         Uudw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nySc+ooutYYwqvZD2Rm/UaaSuS86BaT/vv40sPlUAoE=;
        b=QR6qp24vjQbK83S6RhskbtW9UhTl+/oDEEpKrgskjHYQL36NnB4UchL73/KaDAPGdU
         Msi9eAQzHpnXu2RZM6x5mI+q3hQLrKuXJgbUoJC8dsGuf6IGJm1LS5KfbJ0GnG4q1lXA
         BZ9PzgiwBOLp7gOELdHmXBWcoO4eRvRCgiYuP58eTBN+KOMEqIjtUAgFtxPO7J6lqKPP
         YuXQVUyJOA0hc2PF5gkWshr4iMQK5/PZeHOzQnpQ3vTEC106CQWT1jwt9k+CV7RTBgFZ
         DwzEtlWfkPz9Eu37D5yWpuPm8lru6UQ4YIGeqHqXbMjMPyrtAWXYEG/0cvw7N3W0hSyv
         4YjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PpN2fsja;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nySc+ooutYYwqvZD2Rm/UaaSuS86BaT/vv40sPlUAoE=;
        b=qDCPP//M8qzSpUdpUYev1pUY/rRucwWsbMYJClQyQaLvzxbhHO8UPOxD4eDnUJ+w+z
         M6duRnnp106QODHWrnII41r0EZ/bFASLeiou4cQDIec6hMrmwtvDE/xjcvLN9fbT9QVf
         /3V6g4GZmwG2sszZz382RlWXHA+CiI/cAdO+cIt2RffoEbL/aGci9e16pZCHg7+GzQr3
         Iaeufi5KLqyF/JDL3m0fefErJuTNp0ak71czHs4hXoSRmw1swHo94m8TUH830/Gg9u2f
         k/l/Dq2JBCYeW99omM00ZvPL1zfKC6J1L2EAVuK3U/0gWc3L0O6zcAf0CJl4uzQAo8aJ
         KSig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nySc+ooutYYwqvZD2Rm/UaaSuS86BaT/vv40sPlUAoE=;
        b=LZ+n36VxnAdNvw1e+ty55V9mTKxAy/XDN9mm+EU1WmnHFHi5re0vLyBNTZtx5rz3Yi
         PmAKf/RGwVI/6ZBTZV0tlWeS72RKi3AhpFMTkFmwYtMZt7By1L0lLVchASNgQXU77Pti
         WKTacmEbxn9JzqLQSn1ws+S0X9alArCMVf3SLB0PplLKR7Henic+drCT6TGYqZAWkNRp
         6YWzyyk7qyLIHcMfIjm4Y1/Rlo2B6KgpChLwGZQEg3OAZp7+KVrnJmwoVeZeJD3VLpNP
         2Tm1KnGM0bRSQqqbV3ABLmQacpLLpL7WjYc0TSE/xicsi5ETQo6EAHm93D7/XKhzPpg/
         EFaw==
X-Gm-Message-State: AOAM533jeU/92TOu1J/Hv3GJcVWc4CCrSyP9dmFxn4BcjjUSDZ5510hr
	C8UAGc/qcRWLvj6Zi1oUknQ=
X-Google-Smtp-Source: ABdhPJwXQ6WaWpayYbTJPoaf0p1GZJ/S9ZuMPpmMXhC4+cAbwk1zR+1P6SWMr97jsvex5mnBgQr+xQ==
X-Received: by 2002:a7b:cc8f:: with SMTP id p15mr949270wma.19.1625247485815;
        Fri, 02 Jul 2021 10:38:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7909:: with SMTP id l9ls5779657wme.0.gmail; Fri, 02 Jul
 2021 10:38:05 -0700 (PDT)
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr980855wmb.142.1625247484980;
        Fri, 02 Jul 2021 10:38:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625247484; cv=none;
        d=google.com; s=arc-20160816;
        b=HWnxz8C4g0VITSWzh0E+w1btt8Nr9qJE3gqKNXIvBH0V0c63boN0aUMOxsz9jvgD5T
         9mbPrafl1x3Z9wzKXe8kNSKfr98HlBRt3K7lp0kZXWi8dQ/WJVH6z7HTLtJoFV84tA02
         qYmN03xd3EFmJ0YGn4Z3bStf/MeJ2qNQ8xZHN/zmEB5anuwhI1+9j/TYncgcpEssdClJ
         G2dHbqZiX5kW/6ukF0Qjr3BhASJzeWN9a2e3i7NdgmbOS/EVmO8tqO+yXItgQ9nbqu0C
         TfN8+5sslGTzchO1qgyXj5KqbEOIQrE6KbzwvtKGXx+T8W5CbucuHW/qK1NGav0CeDC0
         cAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WpdDBxDMBs/WCCCImI7VyqZUSL1kP05tbh9WXy7wNK0=;
        b=BbN215uEZ17eu7jeWfUPLFh54ZoQEUIVJ7wYkLPcT7SqWoUgzx7FFiuEWb/otmmApP
         DV9w6X7Fj5oRJQAxPA+VZJrbYfxmP2jTTMP2cJTKZFlKZBqdPlsZNL/9hehGZjZVo+My
         2pLTu4wBXUicdlIvKfOxd/B+ySUp7sZdvvNVxvClnKF5EiyhnLMye3iE1RIK5nuERsuo
         758n3aTiZEgSABYIdgX3E1ftOJOusbjVe7CsxRYVgCmjCr2JzWrBh1LPKdLX3L9bgSJD
         XdQZGdS1J6kTleUpyrIT5OthofNwhjj+bJ8CuNTho8YV4sJMt44VbvIds9q+w/g0OnD5
         gXEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PpN2fsja;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id z70si688972wmc.0.2021.07.02.10.38.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 10:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id f30so19470488lfj.1
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 10:38:04 -0700 (PDT)
X-Received: by 2002:a05:6512:ad2:: with SMTP id n18mr531247lfu.543.1625247484188;
 Fri, 02 Jul 2021 10:38:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210701235505.1792711-1-ndesaulniers@google.com> <bea79143-b2b8-b7a4-0456-4a593f03907f@redhat.com>
In-Reply-To: <bea79143-b2b8-b7a4-0456-4a593f03907f@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Jul 2021 10:37:53 -0700
Message-ID: <CAKwvOdn7QgF2OS_uvV+-mg-7ZeaL316TXhZYziVBbJctyWZGXw@mail.gmail.com>
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Tom Stellard <tstellar@redhat.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arnd Bergmann <arnd@kernel.org>, 
	Fangrui Song <maskray@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PpN2fsja;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Thu, Jul 1, 2021 at 6:05 PM Tom Stellard <tstellar@redhat.com> wrote:
>
> On 7/1/21 4:55 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> > We get constant feedback that the command line invocation of make is too
> > long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> > target triple, or is an absolute path outside of $PATH, but it's mostly
> > redundant for a given ARCH.
> >
> > If CROSS_COMPILE is not set, simply set --target=aarch64-linux for
> > CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS.
>
> Are there plans to do this for other architectures?

Yep, just starting small to collect feedback on the idea before
blasting maintainers with more patches. The goal is to handle this in
a per arch/ manner, rather than the top level Makefile.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn7QgF2OS_uvV%2B-mg-7ZeaL316TXhZYziVBbJctyWZGXw%40mail.gmail.com.
