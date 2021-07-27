Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFFUQGEAMGQEQ6MNKEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 039FD3D7E49
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 21:10:14 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id ep15-20020a17090ae64fb02901772983d308sf114724pjb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:10:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627413012; cv=pass;
        d=google.com; s=arc-20160816;
        b=pyOabAVLALK974BToKhLlj0PTkqeGefjEb3CsBhVP8ijrEdvFyNkJJGRQi1N9A6Uo2
         EnnH3nVL6sH8BWSaLBmFAouNg/P1u2ZQzK9fa/IFxYDoqSATaCcply28MYznzCiJ7C84
         lfx9TNvh/6bi/hd+YWXsEkNc83UpnydtuFDxOkT5rP/QPRL8IlgDHHMIkAKgCO4BfiJr
         SmHPy6nP+yR6CTXn1KRlNNuRkLcPYLhV7DdrrU6tMDB5uRBb3XRCAto3AFuJ0/s4M9F3
         eNhD8NO9uSJpi1qG5FzL6EpuVdQK0/E7Ff8Y/S81i18fjdZxuiywWcOiNUf0bAnib32k
         Iy+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xotjH9oC/BxKeaSU5V/U7LlUD0VlqYkA7mxmItb+GXs=;
        b=SGs6at227apWw7QQBrEsvt9u1/Fiyf0WjMX/CkpfUB4oxBaXg4u74h1Lt56NA7Ursg
         RZkfAOiRkL0qi1QM972n14TIx7PgPxMOHC7mpo1uzJ+7SV3scKYIjBN+3s5Z6TLJOnUu
         q2cjWIYTFkshytyZ32mB02KmZ6VrlSLrFFLplpjatkk2MOpgPtAXZtf77aWA+O56BN9C
         e2N437ImJs5d7o4bt9g5HelAsSG06c1tplkfoW2MrZDU2Qzf4gIdmGzuJLkJFvEAOubu
         LpHgtXuQq42K1oYakhtVQrNY2zHqpCGKJjr7YrZeI/G4XLNmUWL/5fU3NT3XxWPhPg8L
         IOGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZzN8+XtW;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xotjH9oC/BxKeaSU5V/U7LlUD0VlqYkA7mxmItb+GXs=;
        b=KsXsc6qoXwOJiKKf8u85cSJ6yPN96EgROWkNsPMUjk71n+YikqZyUGFPvnicZaVVld
         N0h/5paXHLKYN8oMD4qvCDTJj1Jaj21v15PhMqDxMdSpcqCX/TGOkAm0Y6usaqTBK8M7
         hI0McvpBul99o7Yhrxri0FDpw1g2cKrcUo1bTYF26Bnrp1SK3K+JajF6AzEisY0krR9H
         XCsxCH/7FOwIt8yWXosoaHo8rkoSfK3Lw84CtQzXFTxn4X3MvwnrwRZh+N1QRxOBCAkF
         oEz7Nx8vwNfbSGPbFI2F9rMTZbdKPf6xVvMokp0YByiljJYEGnzQ2xPrYcxe6w3vINvH
         W22w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xotjH9oC/BxKeaSU5V/U7LlUD0VlqYkA7mxmItb+GXs=;
        b=p1/T4sDZr9BjNBKYmPEHX4L09adK/ppFrcLkpQ7I+YzvwNlBYH+kOqeuRZo+aEfkge
         Man4qT4gaQqf1uCC9J64dGqBmTuM3OWPF0TflL8NGXAa4aInbtC0PyoNO6wZt6Al277N
         aHp7NTV7vtBqZYrKyHKUk/OfkUCA053R4CsQskvwvVEzxNgdIgsDGFgT3NApASH+niqu
         KMAE2v7c31s83q+di3o0si7HpPSfQpO0tbSvHgVTts2YWwn7b1DaG4qV+B//WjkkWwxb
         2IkU4I3tyWSlgMBbmM4Gs1+n+pZ+pWUGQYV8Nhmn3XH+0D3OB0+9n4aC5rSIXfmp7Pqc
         eauQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53059/07Ioe95+0XwNUee/bdNrk0yLfKLUNwHpGgVSqA9Ghyv0gw
	YB0Y59861GV+4q4gswuju0s=
X-Google-Smtp-Source: ABdhPJwODkOJXl5HQCvMKidJ9gyx0L2C7ZWUoF32+7dhu78kaTmwEHCZAA4Pnll4fGjUCq/YHZ0LyA==
X-Received: by 2002:a17:90b:14cf:: with SMTP id jz15mr7752550pjb.129.1627413012594;
        Tue, 27 Jul 2021 12:10:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:815:: with SMTP id m21ls9843348pfk.1.gmail; Tue, 27
 Jul 2021 12:10:12 -0700 (PDT)
X-Received: by 2002:aa7:8584:0:b029:363:7359:f352 with SMTP id w4-20020aa785840000b02903637359f352mr24653620pfn.16.1627413012022;
        Tue, 27 Jul 2021 12:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627413012; cv=none;
        d=google.com; s=arc-20160816;
        b=hN/NJbQnW5QaXucF4B3wze9B3MiJqKe7C4rF1jx+9l0jyTSlHJcP769NCTKkgcn1DF
         UG2QQYuk731oju/x5KYDRd/Dmd/+h1s/ytx0oMlZUP/SARB0HKsxqxp8rlt9dbq6imoq
         hG01ImtCkVjCIMJrAXCVSvpGrqh03r31bnVE43PfDT2sCLJoleOw86kwXWP9ENZAUvKs
         h9TlHLcoRFAJYKsKeSNoaNRaLukeE/tlrthtOE7hpxYTsJKuJM+VGxo4kbr5n+OtC2ZE
         NJPegl5Vzp9d/APz1ZBl29tek2Hp9dMoERX4WA/mMby7DA5xE0db1bmfX6YCST3J8LEe
         1gwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rgZXZPoFYMm5YPK1fR+eJ7D1ln26Rr49W4Snp+/P698=;
        b=LgFBvfHXCe076YUKiQwjPjYfqZ0fwU5Jl8+q3O+Se7SXYH+TeVUtJcA7x8hs6a5WuF
         hDHaq2RkWU0a+KDrX9EJ30vE/x73o9UkJQZR0JaWOZGs7FDSDy39KflBvEOiUbTMINr2
         G6mtsfD1LEEGF4LVqI6/qyPi1LeAD8Wn6teta+86JN/NhS8e4D7jytqlK+ybpAw4y/VI
         8VL675JaseK3bIU0eNNg6hzqj3QsGH8ORN+l+t/HIE8BkoUYVjb5Xbw/w00ZUVrudmoU
         /lgrF56VkB8PsyaDFZqUuF7A/W/L2yAKI6pBZFx3NfsqtYfiKB/GMUQ5xRGEoxHNSv6N
         OvHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZzN8+XtW;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si278304pls.5.2021.07.27.12.10.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 12:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 31A9760F9D;
	Tue, 27 Jul 2021 19:10:11 +0000 (UTC)
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Nick Desaulniers <ndesaulniers@google.com>,
 Bill Wendling <morbo@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
 <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com>
 <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com>
 <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <0fcf5740-2e0f-4da7-be58-77822df54f81@kernel.org>
 <CAKwvOdmMpLcYEKSyTavUmK-CxuR6H55ogwLQzRA1q12RuUYNNg@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <aaf432cc-bb42-bfee-dfe6-ec0c4c9d87d5@kernel.org>
Date: Tue, 27 Jul 2021 12:10:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmMpLcYEKSyTavUmK-CxuR6H55ogwLQzRA1q12RuUYNNg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZzN8+XtW;       spf=pass
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

On 7/27/2021 12:04 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Tue, Jul 27, 2021 at 11:32 AM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On 7/27/2021 10:39 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
>>> Isn't -Wunused-but-set-variable enabled only for W=1 builds?
>>
>> Maybe Bill's tree does not have commit 885480b08469 ("Makefile: Move
>> -Wno-unused-but-set-variable out of GCC only block"), which disables the
>> warning for clang just like GCC for regular builds?
> 
> Looks like 885480b08469, which landed in v5.13-rc1, so that's a
> possibility.  Should that be sent to stable@ so that we don't observe
> these warnings for non-W=1 builds of stable branches with newer
> versions of clang?

It is already in all supported stable versions.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aaf432cc-bb42-bfee-dfe6-ec0c4c9d87d5%40kernel.org.
