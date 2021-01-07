Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSED337QKGQEWXOUS6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 456572EE7D6
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 22:48:57 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id v15sf5228560otp.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 13:48:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610056136; cv=pass;
        d=google.com; s=arc-20160816;
        b=VZI//x1ivpGoQNP5z2XttnoJNRU+sHw4UKf3zXYgcRhkUr3l5ftnJk/HVVDOr4Dl5f
         0hUorH5VW6wzAcOh+bkIcLemhgcs0nVgs7CQsv8gXMl/nHIUJsKBuUSzKSBazjDKMcjR
         ILuuKx5zoIvITbD0Hny8fxObuuceK3gLETmXaFrrXq2g/fMOrinl3Td/cNYz/VYNRu6k
         6KvTh7gFrA8VKbJ/X0dOqvN7HZpPbK1wUOegu0nreLJFZAQObVPP9qZJnNkjKTp4B2Yw
         0dXBfI8dSGRF6o4ZH5BaX95W1qHQyAUis9Aelg3nUJcDssKDtsH+kS9lh52SywUq4EC0
         ufkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=j1LTOh4P4gzL0E1ONFqTQzZ2+0w0Wd1NqqjCjpuUgqw=;
        b=pFjAzOVA7XZYeuLfz12m+btpyegyUBuFWKHEH8Yrexj5vOTIWGnaxONRW3Wn4lmL8H
         lvikhSTNAJ95YjiuveTXb2UxH7GYAlUNbMr9JJ6Yaut27MCtanyCqUm128gPZrQhpdVJ
         8fiCX6SddWwdREswCZjPHVF6jtLcpJP1BpYhx/pwsQg/6JCgccGx1YtG1TH+TnxknjdG
         VPityW3Rh/wFLkV+A7V3lEuYdXoZWwMwok+XlMAvrrJpCnrIO95vAyJxbfqxL14sVhKl
         NJ4VrNZQ6so265WcaVglT2eQ+wk9QOtMuuwl9NSN1+gxp5phSe1bF525XuOhXEKs/8vH
         v/ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PV5pr53s;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j1LTOh4P4gzL0E1ONFqTQzZ2+0w0Wd1NqqjCjpuUgqw=;
        b=HNZ2ZBH7sOOTEQDOODzBMnbI4WKCBcru0FE5QpDjKeL18K/3MCgqqurIabC4rxzGrm
         05zHdQrMYxm3PENBmSeYBF7l9s4S9pgdFsRIP6ocnrAkDJ7ePbC71OihpRzARhufqqOB
         PY6QtAS3h4dUnGaxl9O2/Yz4Ad8iaPCXB+dt6NF6jpXcoMlP+riG1OhDh4gzs81v4lEq
         aFaokQlCaowKXFlj/6hXVYBDRZFGedErmhpOg146UoFQRVO+1fk5aecCjzZBdVj1DyZy
         G/ARWi2k2Q5/Zk+T2LVRQiWlRhmIekOH9C7uXwoJ1JlsZm7jf7mcRIPXhXGYle4H3FOJ
         SGaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j1LTOh4P4gzL0E1ONFqTQzZ2+0w0Wd1NqqjCjpuUgqw=;
        b=WDhGM1WjCQ52IsRHfCayIHnhFw2Udoxac4h2tAKPwmoLIODzhYbm2LqfzmdebIj/el
         Acw0la3E8VbO18SezlpCkxvmzrvMVp98OvvX0dNm9lEiOcZGR9mDiACX2gYjBAcTd+5W
         RR5mbg8q6G2X1QhUa/zOWeexGWSJ+0EGO4AcrlojzQTnH0V7RSW1Ac2k4ETHM3c+riaQ
         YaJ8L9NfyB6JH+spRC79TRKFXN2FTmG/vYjkY2UeUGMdInqMr+KkZi7cQIvD5pJNhtPS
         lqqaaRCXMn3o8VBY40z0xZqQJKGSrkwh9H+KbqQa8VhxMjKS5IoS7dlI+cXj7IQmZ6Gq
         qOZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uNOW80q5ylDzCaV0tggiWFzanZnheu3hdxWWWub0qwRT9g196
	aOfUUdOT3SQSCWsM4Is2v+I=
X-Google-Smtp-Source: ABdhPJyos+sB2vmUW0iAXkx9TcCTQoIG0Vj/pH6J6GzSLQmlzf6Cr+Klk7OjpvxxaEePxilz0DXiaA==
X-Received: by 2002:a05:6808:18:: with SMTP id u24mr402585oic.89.1610056136112;
        Thu, 07 Jan 2021 13:48:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls2330554oif.11.gmail; Thu, 07
 Jan 2021 13:48:55 -0800 (PST)
X-Received: by 2002:aca:4813:: with SMTP id v19mr404962oia.119.1610056135713;
        Thu, 07 Jan 2021 13:48:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610056135; cv=none;
        d=google.com; s=arc-20160816;
        b=P8JdL8wl70++3SCgTjvFmo2ihoTe2pdifCjzEO7IXlciUqn12S33XF1RSxcT+Sjqaz
         sKtePxahs4+qHhkpBrXLbqUjrElc3OZ9+h1SNgWYJM8T2g27ipK7k9g28YvyHKPoo/FA
         Sl2PRVowqh7rLYPQ8Yx6PdEvv8YwRnWehr2L5hm/+S6jQ0ttMkUIO30nKrazszrZdWU1
         1fZnJJLRdNCNZIgRGp5ZPwEC8yVclyWg5KlrzF0yVyr9lAkwSKxPKFHAK2946NXEX2c+
         7yuLziuZ208/hIiefDVO78vIG0kS0AnrRJ8xzYlgs6d1p+Fu+TlKAQHNoRkrkdyoI3ZK
         fX3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=M2y5ldgOdSGehetTiBK+U8i5swyTNR/kRJ3FUEfcFsM=;
        b=SCqM566TQX1mERIgmNiGbdV2Fhq1Y9jVoi1p2BUXE68aVa1vzd9iR8/PCmV5sQq7CT
         aC5AlyQcoh4I0Ay15CDwvQM7O2Q8NVOfxOsbK4dPmxJ/AfJFyoMpT8v+T1ikCQtCLqhO
         5nItinkWkK7Oqe4knoR6DvdeoRzz7lbFiTCXUK7ufQZ/no8t/6jfT2SjjQaL4bWo92Og
         lph9SB3xZ4Yq6GCMAgBcMDjQFr3YQVmnOe7P/hC2TZV53sKxRMfuYpvwygE7MdFO1c0y
         ySffkekiumpPsJnYxCi4TfUng4zjjXngnYI2h9OAyxSpRCHLgGZdfOBjaHtc81I5erZZ
         2Sew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PV5pr53s;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id f7si697798otf.3.2021.01.07.13.48.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 13:48:55 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id w6so4858089pfu.1
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 13:48:55 -0800 (PST)
X-Received: by 2002:a63:720c:: with SMTP id n12mr3815960pgc.97.1610056135097;
        Thu, 07 Jan 2021 13:48:55 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 17sm6393784pfj.91.2021.01.07.13.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 13:48:54 -0800 (PST)
Date: Thu, 7 Jan 2021 13:48:53 -0800
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 4/7] MIPS: vmlinux.lds.S: catch bad .rel.dyn
 at link time
Message-ID: <202101071348.301DA51@keescook>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107132010.463129-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107132010.463129-1-alobakin@pm.me>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PV5pr53s;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

On Thu, Jan 07, 2021 at 01:20:33PM +0000, Alexander Lobakin wrote:
> Catch any symbols placed in .rel.dyn and check for these sections
> to be zero-sized at link time.
> Eliminates following ld warning:
> 
> mips-alpine-linux-musl-ld: warning: orphan section `.rel.dyn'
> from `init/main.o' being placed in section `.rel.dyn'
> 
> Adopted from x86/kernel/vmlinux.lds.S.
> 
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101071348.301DA51%40keescook.
