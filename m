Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAWZ6L7QKGQE6WLWVHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBDC2F1FDE
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 20:52:35 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id s17sf55506pgv.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 11:52:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610394754; cv=pass;
        d=google.com; s=arc-20160816;
        b=gVPNcaAeyaJNNzNe7ue+9AGpw9DmjSPc+yzdrzHuM3vjcwfquQFLSzV72Kq2wSO5al
         XfIkh6SELbxQJq3geaO3/e5h6F4eENKccQnExwznU+16pQeIP2aOonVdK9FHNtfKNODa
         owSs6k1Lz6AQX8/oflhyMuOqqRKjIeWqNbgHEj47Cd1CgOEhrFtcX6rT9ayIK2rmww3r
         kO8aERwBeStlOOWRbYJSi0rClpNX0PfrF29d+A/BjPrsRHH21ZGnE8kDe2W1RmM5ZE5q
         VE2OauQXG0eEDpdfc3IN/pPY2vV7QpBV7DBWd167azz7ZkyHo5S19VnmzXjtdxAjof9b
         1Mmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FQrTxOrtEhQEWG5ykbWh6Y7+FK79ir9/eae8EjlBrNA=;
        b=gYMCnz4VtO0MIGz2y4UFPHocuYZoa8nl4VfRkBVJC6ogjFgv1X2zdcIW3z8pZdgZJ/
         Ji63KaG1y3ExHe0Ta6TbD3F6aVRhhe3TgSdpP42KmRd42e2UryHxy6Nz1XObWidvoAEb
         w864/y5JtgNbjolbaC3IsmL6EzOzrPYU/wgaLvEGgAAqXD2o/l9dCDk09I9CgvSYnZIl
         8kiCWO+dFUq9F8Beu55osfB6CbCbfRMcd37pbpsH6M9W8RPBero968XqKxORvQqDo4Ro
         tWvN9BconkuTPQihRXjC4QOB49mQQ2zOmz0mYTM+Vf8Z43Dwz3VoRely9EJxxMtPyWav
         9ZMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dW6jgffv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FQrTxOrtEhQEWG5ykbWh6Y7+FK79ir9/eae8EjlBrNA=;
        b=nubqsfaK++kGKXk79Cxr3frRBFzBEgQX83QdSQ4OGP6UZgehEk0bqWeYRC2M5hZlIT
         cNM87TxjpNxaAKm6joWuhu/na4YYGqfqXxqRMNHXhiJAhCjtR3vYk/pHV9+/Kn2RFbsj
         Vld7lHsnRDIFfuExEUHua4zvA6IsFJ0F0Rnre2vjUU+qbZfezQVkSYDgGZUi05qcytQX
         31N9r0a7VifJ0NN5AiTMogcEhu2tFOORj9TZlDD0Dc/wHcyFHDbvxyUwsO1HSzdICtWf
         7ucy/z36GRRrf0dmMwDYLEfiAJxajU0VIx22R6mDovYKr2tmx0wCcfGTu2hxNGyHW5T6
         vuoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FQrTxOrtEhQEWG5ykbWh6Y7+FK79ir9/eae8EjlBrNA=;
        b=cULRjPG/tnMoVLP9jo1ocarfA4nInjkAjcwwPxW7WjAZFkObNATTQRa6HnPdeWXBLh
         kBV5OgVGwvnj6y1sdA+q5b7HA2X6sY0Sr9keNjKdqAj9phV8dkl+8l/updvRE6L8qMJk
         Lsr49R12D7WmNvIlEr0262PMTGXXeWkGMiYzpOuLp07g6J/QiPEPpzqOgBEib2RouTga
         WjUyXAzzeV8rgmpIU9PwSsYgfyBZWGwmII/xLgemyd71c8ur4xiZMlDVJikv9+DNqJWJ
         4knfZQE5K1URox1kxGwplVEP322NCWY+4atC5br/gaDUQdGvrnIuFBRxs1XJiiYdOuzK
         zmRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53348gQBe+AZ7IftlY8odpxN4oVAycGDZVD4mv5RCtxo8iZFRxRo
	NquqqJ8SNnSOQMl9K7l/Xs8=
X-Google-Smtp-Source: ABdhPJzQ6HdKZsxvWHKy/uIX8wv18H1Z/6bOHYmMWeXrZSGxOBkBt87Y8tOPHxpyQOY1c5UqKkzKpg==
X-Received: by 2002:a17:90a:f694:: with SMTP id cl20mr472798pjb.179.1610394754447;
        Mon, 11 Jan 2021 11:52:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls194184pfi.3.gmail; Mon, 11 Jan
 2021 11:52:33 -0800 (PST)
X-Received: by 2002:a62:79cd:0:b029:1a8:4d9b:921a with SMTP id u196-20020a6279cd0000b02901a84d9b921amr967761pfc.33.1610394753833;
        Mon, 11 Jan 2021 11:52:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610394753; cv=none;
        d=google.com; s=arc-20160816;
        b=qXTaef+VbwqGM6l345zQr+f2jaebYFlK1M+fM3mTcdTwnvSptiwYwEanlymslm60cR
         QMRwf6BC2Yc5ORkJI7kvKJzmGMvJ8WrZRlr1ikzEaNwfuJo47bP5dfgETAQ8Q0+6oBbj
         qEjVXFYYUUt2YJAcoQrRhpT+YYUiiopcbqNVvu+v4GfG1pML/VYHqF8QKQjVFNlasZ/2
         TF1RwPf3yh91HJlXDmfR38zTbmbFxr5TmXoZfsf5BzVD5KNDrNk68CDa3t3XL5GCsc+n
         YEsNl5G8xIehKbVsglr2+GREVLwvmwdyUgSQwVvjUD7x5xRp5YZXJPyc0bewlouZi2zC
         lYwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=b3ASHNv4fQafYtJYhutvA+h2vhozaX/2DMehAnSz5ag=;
        b=zZDG2Mk+45TMgoouMs5vNjmQFvvvGubpls9d+lGNaYnNcnxFSD2AdFvJCwAts8mKTM
         EHlkvdn3DiJ7WG6bwMYXQZGfzDH78n7CnYEJ8sFl97lrLzNvXmpb9tFzCUasEz12EF4Y
         l7rrESU3YYMn6CYT1I40/RogFQyR2OpVD3VlhCU5UtrACfhck/IRp952p8PdmoUxKXOK
         +66CKkY9mrwt74Hrf+zdNe0pPOtf78qhyO+v96DXoIp70aJgWnw0JbEwADBKFjlvDXID
         /0pPw5bj69eUr7E37TWcncZMt1Z7b7ky1eTUNCKBYk33M11XrW5r8EDpJTLgFEgcgWoa
         rN/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dW6jgffv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id kr15si57606pjb.2.2021.01.11.11.52.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 11:52:33 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id r4so44012pls.11
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 11:52:33 -0800 (PST)
X-Received: by 2002:a17:902:5997:b029:da:a1cd:3cc2 with SMTP id p23-20020a1709025997b02900daa1cd3cc2mr916063pli.80.1610394753608;
        Mon, 11 Jan 2021 11:52:33 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d10sm420631pfn.218.2021.01.11.11.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 11:52:32 -0800 (PST)
Date: Mon, 11 Jan 2021 11:52:31 -0800
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jinyang He <hejinyang@loongson.cn>,
	Ralf Baechle <ralf@linux-mips.org>,
	Matt Redfearn <matt.redfearn@mips.com>, linux-mips@vger.kernel.org,
	stable@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH mips-fixes] MIPS: relocatable: fix possible boot hangup
 with KASLR enabled
Message-ID: <202101111152.CBF4BEDB@keescook>
References: <20210110142023.185275-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110142023.185275-1-alobakin@pm.me>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dW6jgffv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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

On Sun, Jan 10, 2021 at 02:21:05PM +0000, Alexander Lobakin wrote:
> LLVM-built Linux triggered a boot hangup with KASLR enabled.
> 
> arch/mips/kernel/relocate.c:get_random_boot() uses linux_banner,
> which is a string constant, as a random seed, but accesses it
> as an array of unsigned long (in rotate_xor()).
> When the address of linux_banner is not aligned to sizeof(long),
> such access emits unaligned access exception and hangs the kernel.
> 
> Use PTR_ALIGN() to align input address to sizeof(long) and also
> align down the input length to prevent possible access-beyond-end.
> 
> Fixes: 405bc8fd12f5 ("MIPS: Kernel: Implement KASLR using CONFIG_RELOCATABLE")
> Cc: stable@vger.kernel.org # 4.7+
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101111152.CBF4BEDB%40keescook.
