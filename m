Return-Path: <clang-built-linux+bncBDV2D5O34IDRBP4D2P3QKGQETVEJH6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 238FF20A1D8
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 17:24:48 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id b14sf4863224ejv.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 08:24:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593098687; cv=pass;
        d=google.com; s=arc-20160816;
        b=IB1rKnO8krpsaj24GS6rk+OOp9M4AnXzLLAl8Jl3Z9CRu5I3Cumm6aSjQpDiUagDYR
         to8236BoyXc+QZ0mNe9EX+/vFzcRSVjNaAFg7DXCjy88LFro68N/bN0xh8sS3opjsWMZ
         q5fwvw4/Vkxj5W2HvrMrCrarW1LtrRuR+TSFJ/HvL/zA3Pkoxm+kbua7FSkMdXEHgbeS
         zRDGrh2gkxc5Q/hzQhOE7A22O7xLw6jX5628VpZDiLw6tMKPMFEVti+Nii4DrjlVgNGn
         fvXxRE39a4nrSoCCz1nrh/ZnywngnkIBFiv/oFzxP+LEYBNKMA78Ow5yl5jBme7LtfjQ
         qfvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=QBDapGTCDBGB0UvuvuxIL2qgtRmC4C3taXt/0XMkO4c=;
        b=AMARGy5C9vJ9gh9WcYZwAajBy7xbQFLg77bEeW5O9VZaMUeuRTE/4H/6XUG73Qy9Gb
         bhjYw7BjczWbNFhuXZni7kumyZzNep6did0xbeNVHyMu9z+riqcZvOpOiGDGi+jlMgWx
         OfA8LMTjf+GkKaJGow/Hz3GwnmHApZ7AOeSfd1lkgUzj4iZWnqfqGhWuYL/rgy6A0fKi
         nV+pWFrY29NeEaKAV41Ingnr+zDXtQUeG+AgMRsqiCkN+/fxn03WShWyWVU80Hx2ipfp
         bn0Ot1bttTOYFWUhjycLEX2o1deEyj+uDA2FFhzv12w93cTQ3CskykN2f2XjQ3Q9UroD
         YhjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=eSELIPPN;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QBDapGTCDBGB0UvuvuxIL2qgtRmC4C3taXt/0XMkO4c=;
        b=DLVX2ZKpj3ROvKOgAvF5TKOddZqYySI5Qew3K5yXWG9ENjvABGw6VGaX2wEYnOfXjH
         PQeaGpiXDcdC+37rdSYoMMwiOxZYx0RYqaIdsC8iJhxbmsWzdvxPf4RpTOJKUG7Lk5dE
         YfMFELQ8ImExDtoAVrIC7j5ernLCu6CuW3JH6Re5crJffmKuRclxQL0vD2qZKDush9vR
         EXYmmJrP8QbCU40wSjh12yciTnChQ8MpognSBCjkY4t+nfLdErqd/qgD+pyoGDvNB0Eb
         NXMSAIegcEDkKjZArUOYce40EgE7q/bb8Iy9BnKDreQGG3G05+FUswXdLg7ebU0qjtms
         AIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QBDapGTCDBGB0UvuvuxIL2qgtRmC4C3taXt/0XMkO4c=;
        b=e9t/fzI+rrI6/qrcz0Zp3ZfEJ4zgolE8rf9zP4lQLY/Y6cIm7JmMiJrYbudVGh7LxM
         gZwYlZV2RPdY3CY8yfjtPU9GFW0STEHGEBw+NlBNCPadBGSSo7D8KwVAbuRFOWIa94t/
         u/P2ktSEmz1vqv/pIQG8GvtPX35O2KZMKOdULarYetAH0Xuz6xpzIsaHqzQTayEIYNB0
         x0W8KvoQtmxDdQPvM8LTXqEisD3xXIZIvyQ501YYn/PnDVoDa445a/qtVMN1vuQFuhsc
         gbvcW7MBSFdPzOOAsuIafP3xwgWdLmht6IRlzbWJWmxvdsfAlpyRWe+fxikgUxQ+hFT0
         uDaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+MaqCUpfSZn4mcc7kmDB5yvBzmLNpS1QH/E3paP1OU8jrk3nR
	YQvmT9NIR7AtU61R+tISkHY=
X-Google-Smtp-Source: ABdhPJwd2m6OExz4s7fQqEdTh7+CXaZn1aSq2BbomKWN18yZDht93aR8Egsq6ciLYi9jJnukUnc31g==
X-Received: by 2002:a17:906:3945:: with SMTP id g5mr21743004eje.549.1593098687815;
        Thu, 25 Jun 2020 08:24:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1b1b:: with SMTP id o27ls351521ejg.3.gmail; Thu, 25
 Jun 2020 08:24:47 -0700 (PDT)
X-Received: by 2002:a17:906:40d6:: with SMTP id a22mr21421627ejk.133.1593098687295;
        Thu, 25 Jun 2020 08:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593098687; cv=none;
        d=google.com; s=arc-20160816;
        b=lYPJDExQSZR4fJxgIoB9VtjeqZJA7QyIlZ/hmCuzQdesQQFgYS3n8VGXfuCAKMQl+s
         r8kLW5R/DyoCtmLqcDtPl1qxYFA33WH37yfPU4Fzemg2i1DKx2ze37VgC0JnUrWvww7L
         YscBR/zM8M/CrhPcNPICHG3NUxGpm8C98umaUyUxLsotShET1vMsESs+6R0rJA07CJ1R
         z/OWCZUUpApXVeT4etAcOJ9ablOKoWeghAVxjFAfzpeS99vAeyjiMacST5U+IHJI3LPc
         /DJQfCaGyn+hTH+kKtWPxYhpVhbcpjoxhFsoh8PcmV7fqSMgZiBU7PkS8kIOvsXmQ9eL
         ni9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=a41XB4ki3PuYJQxiFFnzrHyY1AyEU1gPv8dZhWlqlVY=;
        b=QIaKi/bQua6KQ+7COWc3sl7H1jRZ9Y613SkavgsfYDKgvVjaGmCvrjoXlcKNw8bTzw
         V8HJkc3FmbQ/bwJJiQHjWgK4hi6mI332wQAR9ejGUt0pKWemdrdyyL/M9bH1Vfkc1vKV
         dbOYDhJhNhGU81X3g3qX9aQhAFqlnwn5P7CUMkAqGoE66B2rtEZvHupdRTCSNZGiq5vk
         uthYnhi/UM584zq5BGk8O3p2tP0J2jG4vECWFFUdjAguYsz+s1TIlOAhoE7Uyov4BImv
         6GGSFjLoLalk0R5hlaNh9oEXznTmlXtjAvM3e0X8VXzLPQQhIFDnv8qEqDbJHTiXYcU3
         iCLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=eSELIPPN;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id v16si158722eda.5.2020.06.25.08.24.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 08:24:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joTk4-0003Hw-5Y; Thu, 25 Jun 2020 15:24:44 +0000
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
To: Richard Weinberger <richard@nod.at>, Kees Cook <keescook@chromium.org>
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-kselftest <linux-kselftest@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006241335.2C0FB5DF90@keescook>
 <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
 <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com>
 <10f7c20a-0a32-f5cf-7fdf-761db22afcd9@infradead.org>
 <03486f13-b138-2fc6-4d90-2737d86add2f@infradead.org>
 <80f501f4-d4fb-1f22-5603-57b5490a695d@infradead.org>
 <202006242300.145D555@keescook>
 <1916262186.58280.1593066248850.JavaMail.zimbra@nod.at>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <65cfbfa8-bbfe-e0d3-0255-cd3550ff09c8@infradead.org>
Date: Thu, 25 Jun 2020 08:24:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <1916262186.58280.1593066248850.JavaMail.zimbra@nod.at>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=eSELIPPN;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 6/24/20 11:24 PM, Richard Weinberger wrote:
> ----- Urspr=C3=BCngliche Mail -----
>> Von: "Kees Cook" <keescook@chromium.org>
>> An: "Randy Dunlap" <rdunlap@infradead.org>
>> CC: "Richard Weinberger" <richard.weinberger@gmail.com>, "richard" <rich=
ard@nod.at>, "Greg Kroah-Hartman"
>> <gregkh@linuxfoundation.org>, "Prasad Sodagudi" <psodagud@codeaurora.org=
>, "Sami Tolvanen" <samitolvanen@google.com>,
>> "Amit Daniel Kachhap" <amit.kachhap@arm.com>, "linux-kselftest" <linux-k=
selftest@vger.kernel.org>, "clang-built-linux"
>> <clang-built-linux@googlegroups.com>, "linux-kernel" <linux-kernel@vger.=
kernel.org>
>> Gesendet: Donnerstag, 25. Juni 2020 08:06:18
>> Betreff: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
>=20
>> On Wed, Jun 24, 2020 at 06:45:47PM -0700, Randy Dunlap wrote:
>>> Looks like lkdtm/bugs.c needs to get/use arch/x86/include/asm/processor=
.h
>>> but it actually uses arch/x86/um/asm/processor*.h, which does not have =
the
>>> needed structs etc.
>>
>> Should I just test for !UML in bugs.c? (This is all for the
>> lkdtm_DOUBLE_FAULT() test.) I already do those kinds of checks for the
>> lkdtm_UNSET_SMEP() test. e.g.:
>=20
> Just had a look. Yes, this sounds good to me. UML has CONFIG_X86_32=3Dy b=
ut no GDT. :-)

Sounds good to me also. Thanks.

--=20
~Randy

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/65cfbfa8-bbfe-e0d3-0255-cd3550ff09c8%40infradead.org.
