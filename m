Return-Path: <clang-built-linux+bncBDRZHGH43YJRBNFD4T3AKGQEPCP66IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id D92801EE798
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 17:22:28 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id do21sf2306056ejc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 08:22:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591284148; cv=pass;
        d=google.com; s=arc-20160816;
        b=EqcdwF86S3Us0LUzGQxZxlpOx2nxmhMCYH6ZGVcEhNapWZOfb9isc7PepcV17UO7K7
         Tt7LTZeds5pQPoYuQ3fmZHjY2TqugDvTmPcSGSA8xVkrSPi2zqud9738IGuQKV6Mx8VY
         xW4jcQb1ygklWosO8dslgHRLhvdJ3xNSLuZSgqyeJEfIjhz1l+b9kHRaKRimOu6FHL7N
         nZPKwjc43RWkRreto7jdLpZJerK+QB8se+HZgtHrtOP9RBgEu7YhNa8U9Jp0V6B+1zQZ
         T1rbywIeX5WYXnCzKpnoQxKCLi+7ixGVQ4wpFGo8XSkOvDsG5J60n017LXyberEJJFgd
         oTPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1yUlWheAD8c+vsADnSF2MbdsSIyLJsQ/9OEUy5vDbp4=;
        b=souqPleKG/8d91KfKG1o94cy9j2yV9C/cwqwcR7rBFflGdHoXzXGgaMCgpP6U9Aq1I
         5U7gFr4LmYOOYVexmcx2xx+g9C5bgsdeRlXNSlYaKNB6Ld3l5Q8XO5UQ/Xo5vW7A/Y87
         KAYX4CJtVthjhgQOdoEPpsFHHow6yNGsFvgCMqAz6mfte1OXQxRpc3g+b/S0oS8qhP0/
         wKv5AY39sG2Ywj08tqbLXDPxyRxjVD9paxtZTpM+f1+pQaVPrOtGMn2mSpxrExLwsFP+
         r0jVRoaHzfCBu8RrFzF9s8+V7YeJgjAn7TDTc7lgKt/v5kZhxKgESb20r+xXn8HPhJlm
         F24w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L2DmN0uX;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yUlWheAD8c+vsADnSF2MbdsSIyLJsQ/9OEUy5vDbp4=;
        b=AA0ms8vFkHXQ+hg1JLlMssTRYqJUqnlshduHkYMu6jjPV6STW9NHMVKfNdACp9UqtX
         3xooO4xExSvikwBApeYxxgdNw4xuYDIrxohKo5TkGg2gzAGDT5AtwRP5zr4bY5Y3dx+/
         H2eAOAm027Tw5oI6wLHvFOKVAiMED8F7pZ7QbINvW6lxivWbMV/anTYfDFYYOjV+TuwW
         ue9BDaEYtoxsA+VcWu8jR0zpxoVh+tM3QobIP7BcrhiOaOAcZSPMteaVlZaLvqyMX9DD
         IBNXINFTzI4E4NhWUZRq79Ec7HUflTuW5el+dUn+yQFc9Gh5Q1+XUuaKQVScgZpDmAF2
         mynQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yUlWheAD8c+vsADnSF2MbdsSIyLJsQ/9OEUy5vDbp4=;
        b=N30OytRGWmKSZNFdeEx4hqA01PtiEnA3fri80bcJGPDrbV2uoqNCFkiGEyblNq5LFx
         JLt6U3cJqC4rMtptMFInEDgg6Mns7ui305Z4ZwNiW7VH+NMcix+PKiFlrspod9ASIDfq
         vIoGBLTc4yup9jOpKTgDGl9Fgm/qyeiJL8ejoyaajI58Xea+QiAYobpsme6L+GMAHnFt
         1R62Ui6u19IKaIHf4mzDrrg8dbZimPiY7RkYXympF5a52aYhaDMMfO2buCSU2csh6Q9x
         XRCsOQDBS+mAErWvbZtHpB0n/UA8bFVfgYtqAiNk4ZYPv1DbIvrLd7Hq2+gSyKjfxVm7
         3Prg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yUlWheAD8c+vsADnSF2MbdsSIyLJsQ/9OEUy5vDbp4=;
        b=AZ5XW0FKyrUzaG81WH7l+8JUbQP3b2c8UySx6OAKPdDEEWC/ODI3QTAZy7RJyHT7Rr
         CvbZ151/5Bk53O67FTwplGVZFJjUJy5weTfTGkdD/83+cJO1Hmh+arHRHWOMmL0bDzmg
         dFr6MKjU3lcVXq42oMIvfuT3S8oC1Cyf53LVXTXm3B4RXrrgVqwIeLq9KE6dp0iVwBhK
         xKytWAXyIwrCOHnAcR7pzpLsPPIXwSYDm1m0oA4Y34K/XltfIUzYrpkmTMquU3dX1HWV
         hcZY2H5v1IPmLZ5xH6T9NLO2bwIDtGWGG1O0pSlwnwY90UtGtnER1Z/lxHp8UvaJgBXv
         4RzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iiRTzDy1dfOLcelP1VvcbnWikgglaw+C1N9AI6QnK7JRO72Xw
	ockNAl4LrpZ+nSvCJZYk5lw=
X-Google-Smtp-Source: ABdhPJyaDS7DTonbIbOnjx2RsNAgTiTqwxiDZfhklpmBuBucyYUWtXmw3qD46uKbGETu0tVEGxA5dQ==
X-Received: by 2002:a17:907:2636:: with SMTP id aq22mr4242623ejc.384.1591284148571;
        Thu, 04 Jun 2020 08:22:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8483:: with SMTP id m3ls2645149ejx.7.gmail; Thu, 04
 Jun 2020 08:22:27 -0700 (PDT)
X-Received: by 2002:a17:906:e0cf:: with SMTP id gl15mr4499904ejb.501.1591284147937;
        Thu, 04 Jun 2020 08:22:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591284147; cv=none;
        d=google.com; s=arc-20160816;
        b=ern2g/cg866ZXn6c/vAL+i3NKggB/09Sa3udE/BEKE+dgy3ET5Gh2eoGU3GBGJTL7U
         oIXwRXo0zvo3kVLOYx6VeXi9SV2fCMVNh82OHq4lrpP+gb2T133JhBGGu6m2mElgQGDm
         NVw56VnZfO6T/nADSqEYH2JqW3NHC7wkF7QGB0EFlJbLLEJ+Uhep1qPqrXVvKKnC9esF
         Ki1SyENBZN7+3YYw/3uHJqGhQEzPUWUZBtDx/wO/RjfxLdyGZosFfavGPir85JqKAGwZ
         2n6Gi0OhhMzscXqTqk+MnhhP4kJg5VxcWUmN3Cj6kTsNmPDyq9nuSr+MaDfE686pLzJ6
         OAtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Hll+dJXiojyLXcK519mMreswBK6PHaxvzDLgh0p26WU=;
        b=NA/x6malQQ5DDn6Gm+82Eh1hpynIkLh8E29c09838g6pyXduqUiTPrBrdIRIMLa45t
         k6dtN6ECp4uaVGT4ekeuElH27+IHKd+GvC7WbiWKrdBFoxo1npycqS59abT3/KN8QqDr
         pu1fS/lXbAPm7/pGGzNsxVH+9A/fu9j6KpoeQb8XG6Y+TTQ/mZyjPFdEtutlxVEUN5BF
         A1wAL4Krp5T3mCF1oPYY20A+pu76aqjNwVDmIZigSnOSF9k/HkC2yQQrIgSZknX75VnH
         I2G4bm7DDn3Dk08IVCjOAiUcGLzBqSag9hQRsaIW3KSUmlHYJR0jsnIFm+RFyBr0kA4a
         Rnvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L2DmN0uX;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id bt20si195116edb.2.2020.06.04.08.22.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 08:22:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id z18so7751024lji.12
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 08:22:27 -0700 (PDT)
X-Received: by 2002:a2e:a544:: with SMTP id e4mr2625204ljn.264.1591284147467;
 Thu, 04 Jun 2020 08:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de> <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
 <202006040745.525ECD1@keescook>
In-Reply-To: <202006040745.525ECD1@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Jun 2020 17:22:15 +0200
Message-ID: <CANiq72mHhzfPMGbBn=NZfqLeejPG+t=GN++NJ-L0hg-2x4UPag@mail.gmail.com>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L2DmN0uX;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 4, 2020 at 4:56 PM Kees Cook <keescook@chromium.org> wrote:
>
> Er? That's not what it looked like to me:
>
> #define IS_BUILTIN(option) __is_defined(option)
> #define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))
>
> But just to be sure, I just tested in with a real build:
>
> [    3.242160] IS_ENABLED(TEST_UNDEF) false
> [    3.242691] __is_defined(TEST_UNDEF) false
> [    3.243240] IS_ENABLED(TEST_VALUE_EMPTY) false
> [    3.243794] __is_defined(TEST_VALUE_EMPTY) false
> [    3.244353] IS_ENABLED(TEST_VALUE_1) true
> [    3.244848] __is_defined(TEST_VALUE_1) true
>
> and nope, it only works with a defined value present.

You are right, it follows the Kconfig logic, returning false for
defined-but-to-0 too.

We should probably add an `IS_DEFINED()` macro kernel-wide for this
(and add it to the `coding-guidelines.rst` since `IS_ENABLED()` is
mentioned there, with a warning not to mix it with `__is_defined()`
which looks it was only intended as an implementation detail for
`include/linux/kconfig.h`).

CC'ing Masahiro by the way.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mHhzfPMGbBn%3DNZfqLeejPG%2Bt%3DGN%2B%2BNJ-L0hg-2x4UPag%40mail.gmail.com.
