Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBM5Q3H3QKGQE4727R2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BF48620BA23
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 22:19:00 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id i6sf6553680plt.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:19:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593202739; cv=pass;
        d=google.com; s=arc-20160816;
        b=k9pIILyUXeBqLHpZ6A68jw+OKbb1hI1/bnTXMCqosrInQo0b2b9VKbBVdpeU8HSE8z
         1FkvvQ6k3gqb2PcjFPOSuNFHbjiTjP3hh2bZzSIt8wbMSwO7eyIJMCIAXI0KDjhTmHZz
         BUttDU2sBAF3V3WOxqygmqWuVz0rGK+S7NdN3mSG8MDBOIlMTViokj9+TNHQa92rPRt7
         vrhYMZkF/7easXVkMxtbnygvFtIjlsyfjPoWl4ZmHRnHQ0Lm/qEVgTSx6PzL93Krzqss
         SZBTuHMvpH3nSe4yortxFcid1s0k85DBgnG2Tm5UkRXl9uhXH0FXYoSV1F5OYc7SDf4e
         DVrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SzQxE7a3wkDDOsGbxHp03iOwYAxwvWfcSX0FAqzM6xg=;
        b=N2Chm8H2VnM2YLB77NS/5l6ThFD6/jKzY1Mg8r9xw9W4YkMnps5FVUvLTreVumH4z4
         qYd16VeMDXN0vjl9YrxwHyqXJKcDjkrsyovEasu8rBHE5G43s/OXW8s9Bn6l2JHQ5q41
         7eA5GgdSx3MwjwV+Za1rMx0ZeqOW0e11Go66+cInWlDmQmYldaoa/1j2SYpkUouKqpsB
         P0Uv557UHkK61141A3k4cJupYGbOzJk5AzgHsMhbioxOEqtUaRThBaVEpUyb96zahDI1
         fjqgA4Eu3wpSB9QvkRPXDP4K4//7btBQi+OWCyd51nTM9DMRGWN/YY/OxjQC5391rqke
         BxKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Tm6uhy3i;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SzQxE7a3wkDDOsGbxHp03iOwYAxwvWfcSX0FAqzM6xg=;
        b=cJ5gM2atdrfdMn09zPLU0G9n15MYLtZjDEZAVZhLxErLpsiLdbDj2uYyaaa3/w4hv0
         nyUAmp4jN8/tSFspGPiciNLTTWo2y3KR6SviaV0ZJSLz8RmbAc7lyfkN+jvjMrnPC3z6
         2NDgW2CJiYt+POxSHRCvSYx2Ih29vJFQ0yeK4SsXBy/8gdnFEV6lD2tR1rilt+flN6mG
         jM0x6+p1XHyXbeVY1N1bDV0kDcD5yIhIoga6Sm3mU1g71fJtbXyPlXmRsV9PdHoNrPhA
         BnOdmNafsSNKViGjyssfpWkdc6+robvPjkUz28LElLfWVQPBVio78M/BEiYY27hYjLv2
         cyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SzQxE7a3wkDDOsGbxHp03iOwYAxwvWfcSX0FAqzM6xg=;
        b=Aek8RNUUnWjbi8T4xvbLhTOvdvx+i8KsCiZe7sX38Voc50ZiSPGMYdy/3ldRduu725
         7+EXHLdZtlA1h2fhCQW5G4f6wzT+9f/n338dyeDLLWNnRg73JhCQLePOjXKivO20bmqX
         zvMwWAg8346x3msTu68nZGcUo1PN17k52CJlBNgdPIbRhCuirnIPRue3FIiKdcUbYlHK
         7Qaef5LMdpU/jb1crwG7clyL/I5ZdjiTjMItObopQWlAxETGWjjtondLDp/cqKwf9tT6
         cZeqrIXze/cg2TT6h5jQZsHEP5vWVa5oR8meZHga9A36q2LwYAbo5HQupmt1E8FX6bz9
         aiBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pRoXuFzgo5keabCgaxDu2bgsTcFeG5CxhmZgSZxTW8vDdVxuN
	bmpmWOxPsS9LldUaaf43rwo=
X-Google-Smtp-Source: ABdhPJwPLsR1P/hjs6LNhDWYvHlAswsFO8dg9tU9JQkyeMPfU5yfcm3xU/yU3HDFiTGcXBY8BohKaQ==
X-Received: by 2002:a17:90a:2367:: with SMTP id f94mr5454316pje.20.1593202739508;
        Fri, 26 Jun 2020 13:18:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b584:: with SMTP id a4ls3869249pls.5.gmail; Fri, 26
 Jun 2020 13:18:59 -0700 (PDT)
X-Received: by 2002:a17:90b:3555:: with SMTP id lt21mr5602991pjb.234.1593202739145;
        Fri, 26 Jun 2020 13:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593202739; cv=none;
        d=google.com; s=arc-20160816;
        b=fYexOw5Y25+XHgVvmXqzt/cSQC+SUBdkzyCh+3/rJma0o+tYrTgd3xoLUYqw9zp6+2
         nKfH9DcOCrgsBQXCX6VweBhQ8x6JxvGE7XTe2NVJWe1+niBfywA0W1uO8eO8WXRIdTPX
         LOKm1vyWykXoxNaKC/ysbuPzSo8LbtRToFp4y0/IeQTM0dpqZ0Bk3ZB4A0EUiZfTzBB8
         Ee/fnzbY7J8upgvsN6f8xdJSTq1MQR+ulhVirm0eDLDuN/FNKNn2QtgJSd3+5o9Dtnx+
         Qf6OnQ4rbN+ubH0u0f/wfgxDcfLXwn8TdI7ihDvBOwNkzZR4tDS9j6V+iFokJhMycLZd
         M2ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SjdKzeH7GW9tQGsunBGfIcgoB4TuWBhVIwFN+ncvBXE=;
        b=HuRp9w/b/KvP26olW4rhPn/g56T4KniNj9tKDVzu2Z99kn9REmRifXy7cWy/JlMI+5
         Y7RTPhw/jJuLf1mAtcNWE/lWialf4MuFFNLf4zJbXFstMzjpDnokYM4S9DhwLQholGKE
         elBXTLbgZmvERy1MGfHpTTZZb1H2nioobpLhfB5dHw7NhKuAzpB4gDkAw+CRHhLBKEYb
         WXAPBH5+lPZpqllHg/FtI4UQotw4NLHxy5RjhgBksCgww7MS3VTsJ1oK8tR6jAj7hygI
         w2KfxiYn6nZyVXELkBR7A/SLmjfqfzigcwn+30sUaLPsmaAf/5aY9CsC+522QvE+nOvX
         61ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Tm6uhy3i;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j23si1372432pfr.0.2020.06.26.13.18.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 13:18:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id f3so5421407pgr.2
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 13:18:59 -0700 (PDT)
X-Received: by 2002:a65:4c4b:: with SMTP id l11mr411781pgr.123.1593202738300;
        Fri, 26 Jun 2020 13:18:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p12sm23389172pgk.40.2020.06.26.13.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 13:18:57 -0700 (PDT)
Date: Fri, 26 Jun 2020 13:18:56 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, linux-efi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
Message-ID: <202006261318.75C7FE339@keescook>
References: <20200626185913.92890-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200626185913.92890-1-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Tm6uhy3i;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

On Sat, Jun 27, 2020 at 03:59:12AM +0900, Masahiro Yamada wrote:
> Some Makefiles already pass -fno-stack-protector unconditionally.
> For example, arch/arm64/kernel/vdso/Makefile, arch/x86/xen/Makefile.
> No problem report so far about hard-coding this option. So, we can
> assume all supported compilers know -fno-stack-protector.
> 
> GCC 4.8 and Clang support this option (https://godbolt.org/z/_HDGzN)
> 
> Get rid of cc-option from -fno-stack-protector.
> 
> Remove CONFIG_CC_HAS_STACKPROTECTOR_NONE, which should always be 'y'.
> 
> Note:
> arch/mips/vdso/Makefile adds -fno-stack-protector twice, first
> unconditionally, and second conditionally. I removed the second one.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006261318.75C7FE339%40keescook.
