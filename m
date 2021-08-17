Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ4C5WEAMGQEOFPGYAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3563EE5F5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 06:55:32 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id f8-20020a2585480000b02905937897e3dasf19045480ybn.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 21:55:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629176131; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZWdGEUkyhLMpTGGJ5f5wpflqLhAVGdTBz+O4YE30F9s/QOax4d1iBVGPMuLgPQ+McP
         kvFOiz92/poWiDC/46ZbUdVK+smZwtIKMtPr+o+IidMzpL5hM5CI46L6AqoUL6Mx8rEZ
         ic4ilM1G+o6vAKkcaFeqGCmCBD6tVTwE7dJ5yxrEGu341FUuiqAnzcg5hKE0LcZvgamC
         Iyd/GP/L5JDOEe5EleNxGHkHT8NMCrSqgJZ0vF6Jce0A9D5fVrjKhWFzJG41Irk4Fbax
         cnLJw8JHzyLKt+3rF4RpT4D+xeKWUqe2jJychNTUD4KcP7EmngncASh3+Q1MkhiyxR9W
         jU/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Pv8l65X2KM/N8/aayK42JHgmre6byXUYBnJn7woL9co=;
        b=xTw8RUskmeSrN8+wAtlFPFdCHIkvOKr9tO1yQdKC12c4Vm8dIdukCirixzP5j5WhMx
         P3x/0TE841KTfjZ5+mJYBw8mg6/Tifq07IaeSzj93FKmAnevux9XkcZxwBHfu45mSwlN
         YzOjII0wJZ3xN/JH3JheIwEfzEDKseWIvR8rUS/Qwl9a+bgAA9nFq1dRxTZ30KmHtqP2
         4FUPIBYEnD4jLsUzQbXqJPhoQaAg6XkkzCppQXzFKhYD4xwigTIIAe2LyKUaZvh2mxyA
         icAccTH7tKd3hNBXBucuXvjRsjeGeR8Fe9HpfgyBtUGoXPJU8tv73fCP+bZTbs2QfGIp
         lqAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KcIO1Mdm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pv8l65X2KM/N8/aayK42JHgmre6byXUYBnJn7woL9co=;
        b=UxcsX+lEYSjJrNEzlnfQheUIP3KY74RhPbAOAKfyWSRK3a3AD8UVfjzYfTLR5/6Cyu
         8EfwspeB8zxBWbimOdHNbMuflglufZRiM97Vt4Vyo0lLx4jNNJlM1XQf9v2nBK4hp0EY
         GypqHviQg5M+mSFdc8qKuDA5OGUBVvEGK122vUqAw5D/TR1oFHixp6MNl0kaBaW4SUCP
         ZSdyEK6Fq7yk7PopsGukqCfKSPo4okpltpFBlyQ0BuXkWUFdAbcpUuV0ZBZbapn/y+Ky
         /BFIGbKd2ZdRas9oVudLaGriWyeY0e8KnaM4PmjUGhcSfH3dPv7FghuTyZ2nwFMQtWSn
         RdrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pv8l65X2KM/N8/aayK42JHgmre6byXUYBnJn7woL9co=;
        b=hWufHINuY2/372LMGm9ZuJnixElpZ2XVprbmtViPxK9/qACDBmzoHOEl2SCYen0r9z
         HVkrHFV8c7l+wnRPIOXDaC6VPfw94UhMIzqYP1QEVEmbKHmPSPBFaM1z+YKr4XNaCa2j
         tRdkvCwlRJeORLkZCHgeKTki5AtvcWdkgaMdzyyd3fTwaDiEvMAdheZ+HNjRbm4pKWyf
         7YV8zCsagIPK3mtUD6KqOEojxbFd08OMG2/r0v0fcFQL86cc/ZONNA+tQNVEB0B6V77U
         iOC41orYm4GUuC1cHAy3GZkqSjZ2m5HTAxvUN2xwKgMdPjNKthqVyYQlmuyeWYt5MIoL
         USpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307UdbBFPX7XR5rTEQ9JIvKN+rC1w+NqeHFaIo7fhec2ZD9vf3x
	kv6q58pRHe4wGOY/yZCHpdM=
X-Google-Smtp-Source: ABdhPJx0QdzcbXg0KFSnzzlU+00t1hVj5wdPXuUyOt2MfsTm8r8s7e0RPtkQd+Ki/m3QegljcU2zvw==
X-Received: by 2002:a25:3108:: with SMTP id x8mr2187346ybx.386.1629176131693;
        Mon, 16 Aug 2021 21:55:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls491588ybo.10.gmail; Mon, 16 Aug
 2021 21:55:31 -0700 (PDT)
X-Received: by 2002:a25:cf91:: with SMTP id f139mr2175572ybg.292.1629176131184;
        Mon, 16 Aug 2021 21:55:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629176131; cv=none;
        d=google.com; s=arc-20160816;
        b=ibU93tx3fuLoLYq2/dSyITAtqnszQ+lERhXaMKSr8mZOYvq7fw6nUa0IID/Xb/REJ8
         2T1C2XxP5dxNL62rs+7/1jfG9rjwSKoYGhRBl0admR4hUqdFKKZq0KuV39YhW897Cqib
         PAcahD/PoPImjoHFzqw7FpDKnnl9wCGli7EOwJlItK9viYmWo8Gy0h0fEFiThEez4WD8
         fJfyUmJ8VatLGFxH+TyE2v3ZhMkbe4ziRCrFpdqMjdHw6SIxegizkUVPvJ4ts5nHzBD/
         bFHaXtAY30H5mZPSqTxDkwVbwTqlsRaVqNG5tg/BeDY6nWKqDNH+/W8uWq+273qah4qi
         PsaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=aAsaVGPqtLFq+K9meVm6AUEu1FnXH7vAIsduR6tmCdI=;
        b=MuxjL7KPt5O6IayBG0BqaNtBx+NCBtgjAPYIxiv5oFdQ4M0+rOVUnDXQdy63ZKYNV0
         md7epz7QvzJGzYocAUYlh+lfRWBlnaLP5LMpBx1f+vIODbLXjJjbn50+/w00IUhEwRyu
         /cMlwz1f9O7aiXCqjyRrtx6zf0m4WAxUDJ5oSQFWyeTSuj2UxT/hNZFNIOtmzJvePhr0
         Pjm62v+xYTFrKNOWLdnt6rk+ie9yQDnBfm50J2T1HhWfPO2GxrEK6Z6vZtQhg2mtG/c3
         UwteGeh9DeL+27Sooa+l7HMR61s1d92w4Ilzju88inLXGqv741x5Z84X8R6b2cpLWlx7
         FD7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KcIO1Mdm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si77246ybc.5.2021.08.16.21.55.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 21:55:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7AD7D60F5C;
	Tue, 17 Aug 2021 04:55:29 +0000 (UTC)
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Kees Cook <keescook@chromium.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
Date: Mon, 16 Aug 2021 21:55:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KcIO1Mdm;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/16/2021 9:37 PM, Linus Torvalds wrote:
> On Mon, Aug 16, 2021 at 6:20 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> Additionally, there should be some time for the CI systems to update
>> their clang-14 builds, as the recent 0day report shows.
> 
> What?
> 
> No, the 0day report shows that the patch is buggy, and that the
> 
>    ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 140000; echo $$?),0)
> 
> clearly doesn't work at all, since the flag is enabled on those
> systems with old clang versions.
> 
> Alternatively, the test works, but the 140000 version is not enough.

So technically speaking, the 140000 is not enough at this very moment 
for the fact that there are certain systems that test with clang-14 
builds that do not have my clang patch in it yet; however, those systems 
do update clang regularly (the 0day version is just seven hours old at 
the time of writing this) so they will have a version that contains my 
patch shortly, making the check work just fine. We have done this in the 
past with checks that are gated on clang versions that are in 
development, with the expectation that if someone is using a development 
release of clang, they are keeping it up to date so that they get fixes 
that we push there; otherwise, it is just better to stick with the 
release branches.

> So no. This patch is simply completely wrong, and doesn't fix the
> problem with Clang's buggy -Wimplicit-fallthrough flag.

If you/Gustavo would prefer, I can upgrade that check to

ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)

I was just trying to save a call to the compiler, as that is more 
expensive than a shell test call.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5c856f36-69a7-e274-f72a-c3aef195adeb%40kernel.org.
