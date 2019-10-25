Return-Path: <clang-built-linux+bncBCU73AEHRQBBBU43ZHWQKGQEOLDIA3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB39FE40F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 03:20:20 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id k22sf142826vkk.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 18:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571966419; cv=pass;
        d=google.com; s=arc-20160816;
        b=cCPaHOKaNzn0k/g/X0QD3vC0RucDQsnV+xs3eBcOcJxSRa7CJ6W4TivcwGtrOf1XFq
         yYAlJNw2XY5yNf5pA+JUvV9Dpmyi+HjTMzdd7QgMt3vfMNb/UHkCflgO+XLQ5M3LBFI2
         ZVowLKqF7aqBhkt4k259apoVmsFuE3ughDRmEqLYYk63DCVwK9g4tDeoRCGPj10VLGok
         Mu1Nc6O7YM3oXr1k/ob9jHFmEZW49GZvf5JRYvXDOFH+u/vxYI2x2VZZh16gIh+r/csw
         opN88MB3eW8/CpLY30VgTpabQOTIxq/1zvvxqmzgXqBRP8poGKzB3a+WYg2Bb1rBQZgn
         75oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=m3sAx8m6ssCqz/Nqs58FTUtBVAoZYItMpsv5lsx2aQE=;
        b=DweL1HOEdiYhROTQq7JpgFaMCWYejVX2EeT4cqGuSNu61JxMVaJgNmM9m/mRm8HQq6
         DScq0FclC9Y8f6Mch6GOWezffMEZWBQ3BeSg9igHWnxo1rWQ1u0pVShExEdafwYMgSKi
         0TEZ2MCs2yNeofiI1RXCBHBqTDDtoNXTsYH1Iwj9p60imhOlAExqS1NT1NpnBCSsg8My
         ZhU9RIYFnH05UKp0oQyHP7tCPTZEotlpsUn3M10XTrHREkXheb1JEHakuALkp9nB0DA6
         YWnrhdtkr28MVqer63mK/5qOztVOrv2pRY9eC7i0XzEPHIV0o7I11lkgEQ2ZtRz4Z6GJ
         rSXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mph5=YS=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m3sAx8m6ssCqz/Nqs58FTUtBVAoZYItMpsv5lsx2aQE=;
        b=a+Fc6iF6BR3rzBfCdqdZCHYVKKwgtakUnu9GzOtQqRpTewZYWwQr0FsYEeGHtyOCyy
         0M9oWtL3PODVUgEg18BEEKsoXkg/panpkesDlKhsewOuAtPGsJEzzQuXZldOwzc+P8mH
         P0P84EQr0mRntR3ZWi+AoTmRUf+VilgO5Lm7pmvuoNUOVLQir+XEFnbGqIuTKP7oHEpN
         JTRlThPxBaHeI/Gs6IjnF6LaWr8YF+VrTq5vg1EZsB7eTV4OAh3iiYRKtYPsFRzNjTvY
         fyKPQyjh/ikzJbkpUy8AQHsL416OrbUCEGqpfhzU3Lu0R+TNCz0WxDSxMyVa01cIfXev
         bcFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m3sAx8m6ssCqz/Nqs58FTUtBVAoZYItMpsv5lsx2aQE=;
        b=VOfOrUqQ8o1coN50Jl5Jw+mKjeabsSslqSHqhxT7VYCmJjlk2LduPI9p4INf8j2KJl
         NwrCu5fu+ymSh2iDCZr5dBwpJSmeV3SaHVruDDZ81uF8qm3vscYPFv6QhPJzA3y8UCK6
         hEtew8aM6aO6+9aQucEJJo+7IbZ8OqX2USP5zbotxZcoVoLX3iH2toGQatr/aVsCqEkf
         iacwBKkbPa6ug7+GFC4gSgrXWX6U6gc/VACD2SzsJm7K5MucYWzQtpFifGoxx0Q0IQ5n
         TOYBAEOSs85LQbi7LwFerdcpoluFn9EbKDILmNBDWb5O5OSl9UEzoe8l804N0aof4c7t
         q5yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVKFXOPLUwlOFK+bBR6K/y8FWmlViygY7unq+XW66XVs53fOVIN
	uD6lD666xsW8RXRWpCv+dNk=
X-Google-Smtp-Source: APXvYqz1ZOsY0/vJjgBnJ297sCM7ZHmSSTZ+xYVaTegUfa0wBAFGL39kj7Uoec42MEFyvoJKvYyXzg==
X-Received: by 2002:a1f:c604:: with SMTP id w4mr810825vkf.6.1571966419472;
        Thu, 24 Oct 2019 18:20:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f491:: with SMTP id o17ls784611vsn.16.gmail; Thu, 24 Oct
 2019 18:20:19 -0700 (PDT)
X-Received: by 2002:a67:e290:: with SMTP id g16mr659729vsf.54.1571966419145;
        Thu, 24 Oct 2019 18:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571966419; cv=none;
        d=google.com; s=arc-20160816;
        b=GlEPzXQQgTnTt3kkAF7ckPt9zzYVJ0mTQXzmJOKCK/dMsXS0SFk4O127MYrsTL7AdD
         FsvbKvE88/3ZZktXYAXw01zf1Kse74Zx3gDp2qnBANG+79mYq2ycZq1+bLWcAJXnmZ3H
         e9Dqlvv68Yls4RIzRV5Sbx8e1H149+asCvHf957ccLnrxKKysMx0Wb99My6lcTsQhYwg
         rmCKfcf0YRjN2RHMpBmFl4ty9jzJAcotkQat7I43zdXDQbE72coWEXC7v/ow7EfpcEr7
         AsYolPdiQrMQQBrLXMao+TpZLF69HNUQ991VTxlQb4X6UrI012Vie8Iub5DK3wVlnqmq
         B2ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=h5Yl+cRGGSFC186d9g3r7yxPpepmklZmzTlzkGQ2PjY=;
        b=yjG7unbrxuy7nr4CLnUOEAj68OTsy5m1gD1vqoyKLVljDvypkl3/tIloCcga663HUr
         zV4bvA4K8sn9FaNfav0kktit1ixs5IeZm1KzRU66XQEl3lh+7httfYhB0MojojfhELau
         lnzNW837/oQ8T1xZohgrRtebyIC2TyEll/yDuLkR8Dnkb6aYcJqShPDUrSBfWgFzLzcn
         PJJ1g/hHuStDrYxsj9Q/zR1tm1ODJTYVRSORkmw1jGv6tnBD949vcz6T5e7CNlAOv37s
         5eBac5BbA1BE/nXjxny1hba+nK+ivX1WXaFh7EH++gNm+QedvI/LrLqGDEI11ble0Hu3
         pchA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mph5=YS=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s197si46641vkd.5.2019.10.24.18.20.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 18:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9E12521D71;
	Fri, 25 Oct 2019 01:20:16 +0000 (UTC)
Date: Thu, 24 Oct 2019 21:20:15 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Mark
 Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
Message-ID: <20191024212015.1c9dd0e6@gandalf.local.home>
In-Reply-To: <20191024225132.13410-17-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191024225132.13410-1-samitolvanen@google.com>
	<20191024225132.13410-17-samitolvanen@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mph5=YS=goodmis.org=rostedt@kernel.org"
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

On Thu, 24 Oct 2019 15:51:31 -0700
samitolvanen@google.com wrote:

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

  ;-)

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..8289ea086e5e 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +ORIG_CFLAGS := $(KBUILD_CFLAGS)
> +KBUILD_CFLAGS = $(subst $(CC_FLAGS_SCS),,$(ORIG_CFLAGS))

May want a comment above that that states:

 # remove the SCS flags from all objects in this directory

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024212015.1c9dd0e6%40gandalf.local.home.
