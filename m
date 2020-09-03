Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLXCYX5AKGQEIGYO54Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0111B25CDC3
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:41:52 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id c3sf2661528pgq.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:41:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599172910; cv=pass;
        d=google.com; s=arc-20160816;
        b=ovP7hKVUfS3OpHqwQQwKj1tM00Hjx1bDYLOsSMEA2SSebS7TOUEYaeeb/LWS4kLdRQ
         YSnb18YoAw5h6QKUCk9pkj5MKSUIuupJiH7185hC6wQ9smhDMRfPZ9U5wqxc8WpJcGq8
         VbggZ6abeeAjwyTCLL2MipVbdijSvXqU5jdCYpcEBlxQIvz4tf83kAHQ1Jc3gRA7skpw
         atqzZ9kIONIzDMuw3xisOZ3JZ7jp4Bm3AxIUaeifLhi5wOtOhQKtnOKC2llU9lZyffTf
         fW9uU0ZhUjULaop3+Hmqc72+FRio1rStFDRE1tMtVgHqtsmtm1QT/sU+SkPM1OtJqSUp
         QAww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BIfBj/L2R3HT4k7MsLUKN6PKCVXY89Cxf5R4GYj5SaI=;
        b=qXMqq7JBlrkXbzCgFoxGA5UYAlMLMg3jwSnN/fRej5NTnji1MymmdYow7l99T3v4q9
         K5yVz+dRqQezHQ7x5RzF1ymSsgxlJgGeSbJcr+cYZwkbZAE61NpQtj3eMfe5Ipx0Ewlo
         dPEwQw869jWbkh26GvbkxfDPw+uu1J0uS6YJ2epefRx0rDv84TQzgbaBPDROMmkzbnXk
         GBqdLTnpRBFz0tp0ClpQQ49pjneGw/gZynTgOk6Ay2iLETU/h6qCv/D6c+rGAp9r2E1/
         jcLQJeedI3Gckx3UYuu++VjtIAkNQOi/H9awFhGUYfCLIDqCtaZXwwFJGEp5ZKJJs+kD
         zvOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GWCaNT3n;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BIfBj/L2R3HT4k7MsLUKN6PKCVXY89Cxf5R4GYj5SaI=;
        b=tGUiw7d66KaEnz8fsDa9FhE1C+jd5WA3UWEAb+uGajZ8Hga/TgWSgQ7MxBgEe2RuqQ
         c9x023r93GYZREM4wAILPKEtauTYA2T6Rge83l632o18LHi9pvHpNS6SnTfK76LxylTN
         LAET50K0Xm2FLj0cb6J1ltjS/HKWvDCBnQ2BqRG046veLBplcPqfXXbCwfEi+N4OTwab
         cnwc0sIDLuAIlnGGjx3Jz+34xzYJwIymBklLLEfP2J4YeKVyKBBQ8IG00maN9W3CdqD6
         cUjicltn8kLP0LP6qChlOPfBXQ7OeASkbyBP9XzhXjn1Dd95LyCIzC05Ky0Saw7/BcaT
         FrLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BIfBj/L2R3HT4k7MsLUKN6PKCVXY89Cxf5R4GYj5SaI=;
        b=Mbxe9fWhM56ZIO3Rx0yUQDP3gwmIhS1nEURHz1Mk8rnYqR0qSoEILFoBCHY1TfcOj7
         98ijis5Jddlq1IMfek1F1bKaJ31+fRYkw/ZHl3pa1uhNPTcMxxvSYyHPGupe8TV20BbQ
         kHGj1c+UpZgdaHQ/BwNuYl/kf4UDAwPLs8e7lmZ27qtgmyMStEkw4n10k3j+xBYMRhdg
         AE1i1kpS5ipNKp4tXTCftFoTta20jOxhcbl710J/GbG3bqb6eVFYTlvdXQY4fxwFaPOJ
         s519Z4FMcIlRMELMl+l/Ts37HKhmPdEnllKEBdFU1Sl1Iypm5efhGXU4Dguz4IWhAtaD
         dokA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YeFbfAvUrPcBX06Z4JjKyb4atLXtreRzoKWQuWhVKNdWhnKVu
	jr2GCYjtEquY7G0lk3XkOKM=
X-Google-Smtp-Source: ABdhPJzD1h7Z9SKNIQozJYJ20xUr6VANKf4ztXYEqzhphoZc/SKtN1ms2hoDPAxA6IpeTECJ21FVNA==
X-Received: by 2002:a63:841:: with SMTP id 62mr4911792pgi.429.1599172910717;
        Thu, 03 Sep 2020 15:41:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:be04:: with SMTP id r4ls1904604pls.2.gmail; Thu, 03
 Sep 2020 15:41:50 -0700 (PDT)
X-Received: by 2002:a17:902:ba87:: with SMTP id k7mr4513179pls.133.1599172910288;
        Thu, 03 Sep 2020 15:41:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599172910; cv=none;
        d=google.com; s=arc-20160816;
        b=V1ixHAADm4FNfBlSosEuHQk5OJIQdlkw1mMTXr+3cOJREqshAjgT6JmFw7GUSLLr5x
         oCNoy+K/fBLDxKR0s9V6e6c4esmpbCMCHU0bXv2wPyKYiBwx6TdQ8VEoLZvWnZhsHi0V
         N+Abvpewv6tnNLr4wzNq9RZeKjzUxdH8mCWAM3dJ9TCBg/z6f4LaQHyJYGxYZMo4493x
         167vJwBLC2KtSllu+Hut+R0dN03LX5D7dY6yK4h5CJnEp7j/4sIIRPbBSSqB4FAgp2V5
         N5eegelXkADp2ApCDqsJMo1+F5uPWseF8bteduSbXvvVp4KC5dL5yJE0quxieu7LmtvH
         36mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t/oG9SCdq1xWr+ov4DXCG17oZgdOZVwWJcpUXXDNoEo=;
        b=JstqjVXGy6Nz3o7SFZjz25/VcVe5TWs69q0vdJAt2KAbcqZFKwry2e/rHuKerBVotI
         R0sXkBUkyO4iI7SKQcZYZnb+nR40bz4vFxrWpCA4JxR4E5QVyGtkG1dCtm7ypLbS3r75
         WucyhgFI5Pp5Igt0GDIrM5zG8NN+JRqU8ZeBHT6Fql/6j5niOS2XZ+miwNfPTO00lbLr
         8S1Q++XjRrNIoqD6fgi5D/4T/PTJcyyIcy1F/hmU6Q0K9Gj7vwYysvUC1n1TytG8+xf6
         uM+gH7xq3NW+OM+aMPMAHt9Z2A9gERBR1Zm28R1jrt8zfyRPC/Zs26XIcGKRfhfprho5
         0fng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GWCaNT3n;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id bg1si266156plb.5.2020.09.03.15.41.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:41:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id gf14so2144021pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:41:50 -0700 (PDT)
X-Received: by 2002:a17:90a:f298:: with SMTP id fs24mr5478610pjb.4.1599172910026;
        Thu, 03 Sep 2020 15:41:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i24sm3641252pfq.38.2020.09.03.15.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:41:48 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:41:47 -0700
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
	x86@kernel.org
Subject: Re: [PATCH v2 16/28] init: lto: fix PREL32 relocations
Message-ID: <202009031541.40B54A2E51@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-17-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GWCaNT3n;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Thu, Sep 03, 2020 at 01:30:41PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> With LTO, the compiler can rename static functions to avoid global
> naming collisions. As initcall functions are typically static,
> renaming can break references to them in inline assembly. This
> change adds a global stub with a stable name for each initcall to
> fix the issue when PREL32 relocations are used.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

This was a Delight(tm) to get right. Thanks for finding the right magic
here. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031541.40B54A2E51%40keescook.
