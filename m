Return-Path: <clang-built-linux+bncBD4LX4523YGBBZUP6X6QKGQECPT4U3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 557EA2C2F31
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 18:50:32 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id s6sf3965544vsl.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 09:50:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606240231; cv=pass;
        d=google.com; s=arc-20160816;
        b=HKPrqisfNT/cQIUm2jCEeKaJ8BWOGrQDpOvznxlJmO4nXN+iXFnlcFvaFRR1vGwEUs
         NIJWkl8VTrZlW2Ew+JChm8WYuge6Sgr7HVIAtMW1MuwJRullcHSPzGCfFzQXzXpcxE6a
         pyO4mRfqEKGgqaOK1iMpwosM3ycEiG5PzV0ai48CssEW70xIpXfWzg7fEPg3jACmSn2q
         sCtN3Rqj1b4LEECzrKhmUiNmgK6+UBtr4fHbk1ARuUPeJ/8+WuNXq0eLfk5onbew/QAD
         eW0sn0AKA+CJILcwW50SNkJ5J6iNBIK8fB7ucC2d1Fvay6zZFpQGoOvHYZns1bGixQi4
         RlAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=W42lay9I5S7B/yt6TTtaaDTVC+WBpcO7GHwB5fboqQI=;
        b=r+aRhc/LaLVxcmiTp5Ilbw4OZPZHYAb5WVPTIiKbDpgQrPo/DDjzLdfpZn0b6ltSiW
         9+/hW24DSKRdpO/Phl53zFgI1i0kXdFjrfwJh++rncKxur6eA+X/WFcgfLW/zRdl4iCF
         1XR2Za2d03Qkw9YPLJrCNgpD5wdkIXofe848Ao2HzWXkLqLtcV2rlFR1GyMf2dSFgwX/
         bgrYmmlpGCuApYwraLYUvAg8aAng+owbHwDU+AgEjn8OfxVS5Wc2lGCsA7meGn9da7iS
         8j+7mAmuxNxiBgwwbgrdytQkViKY0UUtJ1kf/CGTppO9KMRa9FoHF0VBZfzeRVuVX3yB
         LjaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W42lay9I5S7B/yt6TTtaaDTVC+WBpcO7GHwB5fboqQI=;
        b=cmafdo28oX0jZUqTAtF1YXhIuzO8lskwyjxUZ7Aog418aNHj5OLWI1jPI3JpP/ygaq
         EX9IZh5ybnC90MptJ10uCM3vrnr6OxeRdXJkKWmLLUwEGpNzL6zhxJ2PrgyQeMUzwKcV
         TmQ46l0U5ecPKKSJHxMUsrMYAE1PF4YawfsA/NZHXObLor8zi82GGEilKq8B+ni3EWf8
         pawc5OWUtTSrIP7MOlZ+rVx0tzwXcOC9Rt4wicPyTs9x8PBOtoMNvgYCFIKTmFW4jUHT
         Mvwzi5Kq/yLmO7kT0DJqgv9y2wn5e2lX7B4dj6kB2UkUvwOG3uoTB70ILIh4N4Afb2sj
         Q5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W42lay9I5S7B/yt6TTtaaDTVC+WBpcO7GHwB5fboqQI=;
        b=W7la9WrXEPidsFpLoz+ffAxcRWWmRwq19JQuK3XcFST2hZIcFN7vOduCs+OJcFhE/B
         aA2H2Hdy44mUSoPQnF5GavrB5xq/NwWvjp/QwV4PyOK1EZdO8PGNHiXfwyZbztgvT/Ie
         vfrCzU1lNr5jy/193J0r9r6lBscLEPUcCEOHyGIM3HiVjFUHOL0PN835z5UijhupFl7t
         ey3m1J3zmXKcE3kQxbtCBHkEnyCuDZHOZh18nm7z5VO+sjmyEAIL50kDBLg0HlH79nxo
         GGQ6BgQToJWka9x/xnX97qWPKHsKrOIsSB03/FniBTft8sDHodOQ7K17NkIDcq3DJimb
         U90w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Jjywo2Ss9IdsbhgLSM0uHJxZFuoDw2QoIWX86ednkh1EAwt9I
	H3Uv28vVBsmNTShdvJfxs2Y=
X-Google-Smtp-Source: ABdhPJwqzruG76NA8CV1/zCbMBHCVa+sdPAdPCPYN8Lq7EqzW+qo9txiSkP0OkJzw2bD0RxnVHd6UQ==
X-Received: by 2002:a1f:2615:: with SMTP id m21mr5183268vkm.2.1606240231242;
        Tue, 24 Nov 2020 09:50:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:36ce:: with SMTP id v14ls1303729uau.7.gmail; Tue, 24 Nov
 2020 09:50:30 -0800 (PST)
X-Received: by 2002:ab0:5f9e:: with SMTP id b30mr4654139uaj.35.1606240230622;
        Tue, 24 Nov 2020 09:50:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606240230; cv=none;
        d=google.com; s=arc-20160816;
        b=HVtkbsJM2BAU+O6pNZQ7ciOkAz6KawomYbbpcFtqEh6JxoWTz4+Kfu2PkH49lAd8Nc
         6cGQqAS1kFrKyZLYZgu4HWn+VZz/j5j4qeU1Nd3N+KvXgZEtg5H/SXNMG4mgnBcnPBBC
         RjM1AOp1OuiECvDnE3LrJKfz10i/9Y3/nu+t4oq9lu4uCdXQYZKbc7/L04CuCYcqfGPP
         ePL2Ts+uigPq9XcIcKhdtPUdDzlUWv0fJl7zlBCdwPbz9HYFIr4B1fNVL1q9WdABSaJG
         Qcj2+ukBNu90GZfA1xlFgCl4Z0rB3xt9Wtm9ze8zZP+MJ+gpLFQgBzUYmP8hjNOK3Av7
         H8DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=av08sa+2wCSYFpBsaW17f8TO0N5UaGmMPFU3dE71xo8=;
        b=zxfCr2wavWI2NdP+W1cgNcA73VuEHFqpmaZjhEBbey6QkxgxtXWrEiyTlJ3eFnI8cX
         0n6CfF9WOkOVFe8ffEIZy2hS1dtxS6pT6GP287a/3y3nDoj3+z2eEgNVi3mWNJM133z9
         ZsOmItb8725tsw6guAYt2ETvqIJ1dBo3fhfSZpb6XJATPCHU1vXbbzrSl9vG7jaqxBxC
         aGuOtC98F6BNTQKvoSgtCWmRaKrhplDzRQGAc+8GjgoXCYEfuk4X1qW7khWvKQREPu3p
         CXTyiWqjva1YSydJ2J8zYQQUUs2SE++dVS8ihcOINqZwdzLjMAe7GzBEXvUkW3+FnQck
         K1JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id f26si707228uao.0.2020.11.24.09.50.30
        for <clang-built-linux@googlegroups.com>;
        Tue, 24 Nov 2020 09:50:30 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AOHkEuE024001;
	Tue, 24 Nov 2020 11:46:14 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AOHkDC4024000;
	Tue, 24 Nov 2020 11:46:13 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 24 Nov 2020 11:46:13 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jakub Jelinek <jakub@redhat.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
Message-ID: <20201124174613.GW2672@gate.crashing.org>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com> <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com> <20201123232210.GA208735@rani.riverdale.lan> <20201124003357.GR2672@gate.crashing.org> <20201124165602.GA343230@rani.riverdale.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201124165602.GA343230@rani.riverdale.lan>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Nov 24, 2020 at 11:56:02AM -0500, Arvind Sankar wrote:
> On Mon, Nov 23, 2020 at 06:33:57PM -0600, Segher Boessenkool wrote:
> > On Mon, Nov 23, 2020 at 06:22:10PM -0500, Arvind Sankar wrote:
> > > Btw, is -gsplit-dwarf at all useful for assembler files?
> > 
> > If you invoke the assembler via the compiler, with that flag it still
> > creates separate .o and .dwo files (via objcopy invocations as usual).
> > Whether that is useful depends on if you have any debug info that can
> > be split :-)
> 
> Right, the latter was what I was really asking :) We don't currently
> pass -gsplit-dwarf for assembler and I was wondering if that mattered.

If there is any debug info in the .s files, it will all end up in the .o
file, not a .dwo file.  That may matter aesthetically, and it can cost a
few bytes of disk space, but it doesn't matter functionally (GDB will
search in both places).


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201124174613.GW2672%40gate.crashing.org.
