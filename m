Return-Path: <clang-built-linux+bncBC2ORX645YPRBENI3TWQKGQE6ELFJZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 42258E75E8
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 17:15:15 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id w14sf4918081oih.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 09:15:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572279313; cv=pass;
        d=google.com; s=arc-20160816;
        b=BNVKu4EMjzPVbRroqNG8YPSUk5PVP/20OrAqfNLlex/MrujDg0/r5qW9nek+vNUcuG
         5oxD5vPEdLzyRitar2VAViLzspw71qOlZ55N+5HvaVZTiE8iNyeZvKz9/XkdqhT8sHis
         DhW9jMHRZ23D6GUk733uckbZ2Cv4R4Qav33pI7mhLeDDTr6ljspwQLHTJ1OZBVou+wFd
         CMu+PUK82NHD0BDmu9KLNGGkQtnOjieLLpuIydFl4P5TYGREY/dV7Z0Zmbz6VuPlfX1k
         dSky3F77T6fk9cCAaE5Rl4U3zD9O1mNQ2dmrTTthA0nn/2Hc/J32H/vYkfNTRpP1pgky
         lWOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LnfGgPxYT2rivz+lWroM/9Qi+pAJeDKYCblRy8NoVrE=;
        b=aeOumkPP1FE6dA4KMZtMISH5qbDh1tXXHBg+9UL3va4NcfYlZgEuHYPA+mHioI95+6
         Ij8jK8ijshvmhkCkhGS/UlizmBUo21WpJ4S7EdDYwdzwrTtuHHgggNTjS5NIDQm56ITM
         RgslEj2cKesT7IynlLB6xRrsLZiICDr4HJSVQhhpx9pAREYuadoTOaQgcI7H//2Vv0QT
         IE32XdnwanCiDDCnyZAfEIbqUf1zcUerlCJik/Y7GX8nGFiorCr+H1LFWqv38rKO2i6s
         a+xuttDI8rH6mfkQy6Q5ujBiRgid5y1AUaQCivExwnyvrFrBFzCK6lXeXpGt01IUqAe5
         lvhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cRlJ8go8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LnfGgPxYT2rivz+lWroM/9Qi+pAJeDKYCblRy8NoVrE=;
        b=LO1AfE5JHHNm6V3jA4ME4Se21KvqOJKfKW+sxnlpp/WIkdVCo8pyQjSys7gOjRsIPo
         i5MHIIYt/He+Ig8eCP7YbB+sY6ZABh2Na8DXzs8gp2FG55xeN6n9GAJBIKgRmBADdzrZ
         mr/QugULHBpbbmBXRPjCP087jrujUSXdQlFZ+A6Ti+hpRH2yE/Kb3AUCqvO6jK9Fm7Go
         3nwWWjmhSjXhqhbBx3WuX8qQiWv1TIEyMOXavlgNjs4IkuF12bjHjJwLN5L2ZHTBptWj
         cExq2E/HtbE3ovoorT0ZnvKc3Pzzd2+PTkgoCEs03ha5dEf0OK2eJjVzDQ6mnbRXfWcb
         4HwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LnfGgPxYT2rivz+lWroM/9Qi+pAJeDKYCblRy8NoVrE=;
        b=U2ygupnr6M1SBHxSbuw48LKN5OylHTtcIAFiI5fUKJj5qBqgIuRHvWp7nE8juPG4h8
         x1CrNWK3B7jg89maCnAYSwtRv8KTzFu2H4EKQ4NUHaHFvPsn77nKktjwPNtzbkIswDQ5
         hXujEhKwowlfbgdVZCQtC6EwvjBq2cwFtnB7xam4bz6YCiHL/dw7u5PKikQ1TbnGadg4
         KtEHhaRhXJyO1XYRU/T/jPDkCRnlXqwCIgAdt5m5O7gVq7lVZl0zrA2gsNAG0dbfQ//f
         grJo/OfM5HL/wkHF863bk2MQHMAItKt2vxJTKeFvQow8vkO3PNM0qLmi6bX+7Xx18uWA
         sIaw==
X-Gm-Message-State: APjAAAU5CYMJoFPq2AJkh2qf758ccF5uR82tXguaTnYO3fb6ZO/TOjex
	vgLEHyN9AFWhmomvJ2RXvS4=
X-Google-Smtp-Source: APXvYqwLaJSSp26Qsn4tRNAlJRhPILSl2yCsTWThNhtOUSgZcSRqOqTpA6uRmLiJwoK4CXv9vPThmg==
X-Received: by 2002:a9d:7348:: with SMTP id l8mr5468018otk.99.1572279313731;
        Mon, 28 Oct 2019 09:15:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:126:: with SMTP id 35ls3774528otu.15.gmail; Mon, 28 Oct
 2019 09:15:13 -0700 (PDT)
X-Received: by 2002:a9d:5e12:: with SMTP id d18mr14265772oti.220.1572279313264;
        Mon, 28 Oct 2019 09:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572279313; cv=none;
        d=google.com; s=arc-20160816;
        b=mSXivPqjkHUF21raq61kyjhQjN8nHjqXAbBh18+1AbLw3Km1N5ZFnd0GAS5XlUOV1D
         7OZIDhg3MekB9rsbHOifRJkDDQwklOq25nFOjo6Nj7HmnSTFMouz+JlGMNKBJmVXPNHe
         uFwWYMHzFuxbzIGGo2Y5rD072udUSd/P9S/KwibDIpIJmiyacezECmOd/8Ipxm/JGHY7
         xPHHpW6SR/NrletbefxvId40mRpXtz6VE7DbrUJJICjv20bRk9mYhXh7V8x2FNA1jjCx
         2pWHHdIyD52EHX+IlgtsEO6zDmabjlUBx1yL7wAXH/YBhFfxATnib76kFXqVQyeFjE+W
         Pn6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NAeDGv4mmTdcJjmFC/Y5EqwPqrlxkNMDKmTxGtNGkZY=;
        b=j9g0zCwZ+bupk2PwKq+uTCASZDd2gMCr8/alcbeXDNNWq1gXg/Q5Xd8daPJc/cIe2j
         zn1bgMOltUcStE6dPS0cYsNWRwiQEI8Ir4MgAK4LEl8zOW+rOMCsDykzWqXGuliJzOUa
         WelX0GTAxfM/VfICreyoS5uHPg6VN5iDkYopu5WAlswvKcuqwEtunScHcH5qLjt0hRu2
         NvsMJ7DZDKWnBKsGiQf7f4PXPUuWMDYRvaixau8hR7Fniiog/wG840CL/NSrol8R5glE
         7B57LWTkQc/zrnJIZCUoISjdeSs6MTRSsnXdKMbfwWEDa0L17AAeVuMXol66gUUF8e+s
         Q8bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cRlJ8go8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id v3si514350oth.4.2019.10.28.09.15.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 09:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id l5so6680745vsh.12
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 09:15:13 -0700 (PDT)
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr9278938vsq.15.1572279312128;
 Mon, 28 Oct 2019 09:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-6-samitolvanen@google.com>
 <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com>
 <CABCJKucUR=reCaOh_n8XGSZixmsckNtFXoaq_NOdB+iw-5UxMA@mail.gmail.com> <CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAhKvdzzN7v1tNontCQ@mail.gmail.com>
In-Reply-To: <CANiq72n4o16TB53s6nLLrLCw6v0Brn8GAhKvdzzN7v1tNontCQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Oct 2019 09:15:00 -0700
Message-ID: <CABCJKuexT3-AMiziJdDjKgW2iBW-aBuBJCTRFLK71wvpBkZ5Qg@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Jann Horn <jannh@google.com>, Joe Perches <joe@perches.com>, 
	Kees Cook <keescook@chromium.org>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, LKML <linux-kernel@vger.kernel.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cRlJ8go8;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
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

On Mon, Oct 28, 2019 at 8:31 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
> We decided to do it like that when I introduced compiler_attributes.h.
>
> Given it is hidden behind a definition, we don't care about which one we use internally; therefore the idea was to avoid clashes as much as possible with other names/definitions/etc.
>
> The syntax is supported in the compilers we care about (for docs on attributes, the best reference is GCC's by the way).

Got it, thank you for explaining. I'll change this to __no_sanitize__
in v3 since Clang seems to be happy with either version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuexT3-AMiziJdDjKgW2iBW-aBuBJCTRFLK71wvpBkZ5Qg%40mail.gmail.com.
