Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDWKYX5AKGQEK3BXWEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E433B25CCB1
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:50:07 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id f5sf2822153pfe.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:50:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599169806; cv=pass;
        d=google.com; s=arc-20160816;
        b=mTy25XLU2OVdK/BmHJga3RI3IIPOnznqZYFVNQUVnG6M+wjfHKRem3eDobwluMaoTt
         HTjgkp6LDi5BcdRHZ6U1EyCDnSPM3MiOVvEhxFWCM4xkZ8t+6buvv/4GHMmSGOIfJFtv
         x1Qh09p+oqgnt79xLdyRdFbZkpisWI99xfZ2pJytv9Uecrju4rIFpBZhUq536XrIx6ER
         pIHWsCNHw345afSIsMW08aoYNrjs/b7oRBqgKlAwwnLCBHW5GMyPhCRAmhAAO1FUuNdu
         sHRc5hcvep16OjPXZPd0N5Gq/kUAVez/h7Y8rFZ4SGPv91iwILm9PA7QRrGhT2XrXfrN
         RIzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=obXbNTmR/mI9NYO2+P6IoqB0gMiyyK1GSG+7C9jZhEY=;
        b=O4I6f02ucMw2XfmZzzm+2OnA9pKFbl+oc+dihzqF8pT6n5d8kfRINsGqMoNmGgYGQw
         WWrWgNZ44O8HhGbJrOK6h+FktyvwGITyynx/4h3nX9IMNA/mv4qqM5Z7M4bzIM86+b9G
         1DcS8bE4NqkQt+9xU03/JZpSED5otIA9nxP/+NeSA3wxb5rkBPUj5fW+axQvexU6nKY0
         /Mxmg89Hda8wVslsH68D69LvpKsVaFUe3Tkj6wh3iJAgc/KYN7lZaEDo8PyYnaMANyJ/
         voHKY3rjYaK/Mrr9g54n++9OaOBkcw+mLM8P0R+XjDTKQVCzzlxpUr3UQPGqW3hSTJyg
         sdaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SlD5lTtn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=obXbNTmR/mI9NYO2+P6IoqB0gMiyyK1GSG+7C9jZhEY=;
        b=BxUd9RtHA9G7n/yCkLf8HrT63IUuW04j8AKc2wXrZUguKYF31RG3dkJ8LOdmoHdv40
         X5OWDu5t4fYBaZ/8lAsH9xHNY5ArZ0rFX2u0CXtR4dS5iTFuNsVToInbXQEhb/u0GCAb
         s9fuyj2cDUuzVHep+UJ0WL9PTj0vJJAyUy3I9GsyDDX0lAlz7R22bBEMkZPBjCoSAro9
         icQxG3AS1LYob13tUuxA9RPfO2ngymDB1zmf+C++OAcrQkZ0YTyv21YnZihzUH47zpYw
         KMRh7xDcuxHh+CJXQtlpgib6fAw3LnaeU3QTGMKd4HRzK6KVlNklGUTZoZ6PLL8lr+Hf
         a80w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=obXbNTmR/mI9NYO2+P6IoqB0gMiyyK1GSG+7C9jZhEY=;
        b=dIMTxhpsrUK0BDMPr55Wxbj+U/a38wq6PDL+TRtYxgchHF0KxSPDl3VbNNVJ1A9sNq
         cC28ZDp0iHpSCaClm1Hh5n7yFcKvNJey23gsPekEPvUXwFRYQ77gpXYXfHq8CRTwA2Kb
         zTn0a8LCQNGZwOwJ+97ei/60KtLBpx7updQrx2NbgPTTqfLKFi9vn27Rm3N/iWlRGdCS
         M6LcSHxqYFtNpAIiMWvtKKLIVz7gIfIruKgCgoHDctFo/w4srfoVotBBfXLPfxoj/lZ3
         PDLxUfOckjYOcVzZmErGuOyfWRs2nqfyBSJjgZNo9gxJv277huD5+mja0CxtbGCpCEaD
         D6cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yA9tIg29PDD8tuIbEpxzDS6OtxV5ocZOadROZjSd2OtjZcgf3
	SxabB3EPu2ichL6bzV7Qz9s=
X-Google-Smtp-Source: ABdhPJy6l5cc5wvFv4OUCHMfMUqQrB/J+jdbpKNR4yNelDgs3YrDVQMvm67LiS04YBP8MlCvBAbF0w==
X-Received: by 2002:a17:90b:d90:: with SMTP id bg16mr5055794pjb.199.1599169806571;
        Thu, 03 Sep 2020 14:50:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b90:: with SMTP id y16ls3598126plp.3.gmail; Thu, 03
 Sep 2020 14:50:06 -0700 (PDT)
X-Received: by 2002:a17:90b:408b:: with SMTP id jb11mr5384161pjb.164.1599169806150;
        Thu, 03 Sep 2020 14:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599169806; cv=none;
        d=google.com; s=arc-20160816;
        b=a1SXgV/Ql4MJkIVJke4V8RRxzp+p8ltclgDyOT2Q2fPnIzPGu+lnYF2TeXEsB4MY1P
         /IA3RC1k+VPcHHBhOoK/1DPxaWaq/IeIV2AJt1OvWQBLYJNZ+ZHEur2B2Xtn0Ew9eGdr
         y/rwXJ4bLzvpWimrbilmubJh+Ok4f0tBMNMkXUdGy4xp64xocV1jEnA4AQpnx47jDtG9
         j+czuChsrv5i7rzdWClXQFNEAT6AZXGWMGQOu4SAUKVqwBNlsdRWltABoJx9bzr6X4Uy
         LsZzXvQbVCDYX9dmIsN5ONcZwzp7ojb+9CNGKkMsFnl/3OrW0eKUll6hFXlGxt2/vRHs
         AIcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9OR6JT/gDQkiw7Q3Fa+IeISt3W9FIEoweyBz21QtHYY=;
        b=xMVGtbcbsW4alV/3imWs2w7K1O85hAE3R2zPK0Q78tfgKOKJ8JgsSSjGbadvxzTHia
         jQBhzjDCOvcC9XjlmObhszyJTJ3FNyTcsQlSzqBZNRToL6prVo+VKzC1C0iq+NfpKYOb
         YFtrQmTotvUTNTYpkDCp3cTQJQv3PV13EJLa5m+TPXuswiBTFXsGbT0vwM5WV17gxLGl
         QKLrszAfWhS0rdMda6sWBegJxBKD/u6qqI06wZF9KYfWydi/83CyaLq6KlXZ8jwWrd9l
         0ztBjg1vx1/zyjaS69VETwqcVGiiB55TrUcvw/JV4r9UETQ8jH12ll2V2nyNyv3wVyQr
         1SWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SlD5lTtn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b9si220857plx.0.2020.09.03.14.50.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id o68so3422843pfg.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:50:06 -0700 (PDT)
X-Received: by 2002:a65:648c:: with SMTP id e12mr4696062pgv.57.1599169805900;
        Thu, 03 Sep 2020 14:50:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s198sm3628323pgc.4.2020.09.03.14.50.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:50:04 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:50:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Luca Stefani <luca.stefani.ge1@gmail.com>
Subject: Re: [PATCH v2 04/28] RAS/CEC: Fix cec_init() prototype
Message-ID: <202009031449.287535C@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-5-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SlD5lTtn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Thu, Sep 03, 2020 at 01:30:29PM -0700, Sami Tolvanen wrote:
> From: Luca Stefani <luca.stefani.ge1@gmail.com>
> 
> late_initcall() expects a function that returns an integer. Update the
> function signature to match.
> 
>  [ bp: Massage commit message into proper sentences. ]
> 
> Fixes: 9554bfe403nd ("x86/mce: Convert the CEC to use the MCE notifier")
> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>

I don't see this in -next yet (next-20200903), but given Boris's SoB, I
suspect it just hasn't snuck it's way there from -tip. Regardless:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031449.287535C%40keescook.
