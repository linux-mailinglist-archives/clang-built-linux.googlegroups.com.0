Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB24X4P7QKGQECBIKX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8FC2EFA21
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:17:32 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id x191sf7197488ooa.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:17:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610140651; cv=pass;
        d=google.com; s=arc-20160816;
        b=AN0sukD4N4hm7OdVKwqrcUD/pCwsQ3p87orU4x2/5bAMXVU7+++C/Jnyddbnq/9Jht
         GeymY0OEsDmmRH6l7uh0TOTOdLcOwSk5D4qmydxSPHL33xUF6VoV8H2glFU7BktiHFUk
         MEeJwSrRcIN512Cb1edjSm7iJMSGIo2PaHzgXzTw7muYiRMpHKCyx2Jg2GIMr49rbhfz
         eorWJs3U1Iw8gemw+G6j69UyRai7tD7sreL/q+9fiBX7iSXQuaspSrHWyuKpdqptEDC/
         724XnWno/HH62fkqLkZ9Q9uMttvLx972w6YPvIn/ECeNB3t4pzkv+8mZqIpLeT6NRIOf
         mKKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=e5tHje6WWSk2KZDNtACKcIXrStHt94esCwotF7oSg44=;
        b=AIpFklHGesKEC7WcCUPkwATfkDNYxNPyeSanIsj4fHj5KCxraSn6LQ6CmwBbTgVr/4
         j6q8BXdNuyMRw6kY3KC5817JpZD1LG5a4GEFpD7qnwcst/koF41crJWUd9yvqINbbUcA
         9RAgWksV5Vcc2nTvW155oBkbC9CN1FIgPHc/SY+qjJUNcRCs+wATLT80iRYTdqHxTGxG
         Hzhz10p/P4JipORIBOz3+mAFBwQuvZxkJTxKWWHmJcajl0uf0TP3jhkgoxbSvIxq+2Dv
         kXMLv3a79+3+5SZyUG7VULFchpYWLWfRJ0I2wj1lU67HTWjfds7n4hAo3gbHdGr2rhN1
         PjLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmZdsAfK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e5tHje6WWSk2KZDNtACKcIXrStHt94esCwotF7oSg44=;
        b=lq6lGRS0VgC0vSU/Nik0+mcTRgAfCHu96qjPtfRqerwnsN10WrdSsNo9ZcFqz+4ODb
         FwopI0S7LoTFNgfhIZ4JtKgIraUeRVQiaX0Qfa8WtN2EYGICiapbOsiGLMD7mVL8KRH1
         9g10DYzYtIGKPfFgfhGvcByhBKpo4vE4yDwiHzlMeQdVwQDNuFfKUBTH3pGXYx7kAwrB
         UDP1izbJywrXDU2KzqThRC3kZM/AxkSb5twLnkPaCz/TjKrbQ9al/fH/EWVuoDpJxkkT
         uIMLC/tAuf+f+v0w7Lkyj/ZxX2B0YCo0/ATqmkur9ajFaBjdmDk0qWpsQAd8xgQSGLiY
         +a8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e5tHje6WWSk2KZDNtACKcIXrStHt94esCwotF7oSg44=;
        b=ImKm8EtxclsfAA7aUCf3Eh6LIlZk5FLIVEG/hzJSm86MTRkKaBeVTCIgHgqDRqMjaU
         iPRfo32MdwGfQ7uW/xYI2jQv651gahB0M7PGsD90Fr/v69V5jQI5sP4CuBJEUSgHuyHP
         zSrsLeLMDuYd8GF/uKbCoGVo43/+J7ab/YU86jKgL28xXeIHSQQvs2SubFGpk8srxfqk
         khifzfQfKkyWK5zcczEQ/hKWe2ODaB7ezxSlqOakNh/ejXo4lDXS+sd34oh5PRxObytE
         J4WNKPjEwE4/yn0ekS+tE/X8ho++vqLwFSZgQuH7WWYkxN8842CBMENfTx/3sz9fhg/u
         Hcrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e5tHje6WWSk2KZDNtACKcIXrStHt94esCwotF7oSg44=;
        b=um89l+VU5Cfl9b2H/7gqpY2DMggfkVyRzDilba+Pu7UmUYNExxi1OYuMt0BWhCqSGx
         Xt3CfGWs8Kjmro5fVgM0jsvNmImLHnasVNCAOiDALxmlDUQ37c17x1k39RNMWRqUG2bY
         a9Y6paBkn1CZaUWCczXPViQjPLWCyg44PilV2a7vPiJbN3wxlDkms2h7qN+xGTA1gEyX
         bPl5rFXA6T0fp7jsVggxqP3ItYJDci+kXsRTTLNoggver6k0Zy6+QxKQ+2xV2e3inDBy
         S0qRwRubHAm1VdmquvzJRz5Axp1IVpPNUXCU+KZ/Whdq03VqPhBL6UyiLBpmEB5vxbAW
         2Tsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fkzEwP/U9/D8gk0AftX++3ca3jo3hPnWcBL5Psjcq5iUC5pHC
	VFxmgi1KT5AglvWCRzRHheY=
X-Google-Smtp-Source: ABdhPJz1LWv84Wah91EhKEHdMKxjH/4BBNxQbTljlDrvv6VuxStHLizw/qoScoAev30Xw73qFxjC1A==
X-Received: by 2002:aca:5d09:: with SMTP id r9mr3516691oib.25.1610140651541;
        Fri, 08 Jan 2021 13:17:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:b36:: with SMTP id t22ls3247455oij.8.gmail; Fri, 08
 Jan 2021 13:17:31 -0800 (PST)
X-Received: by 2002:aca:540e:: with SMTP id i14mr3502415oib.57.1610140651161;
        Fri, 08 Jan 2021 13:17:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610140651; cv=none;
        d=google.com; s=arc-20160816;
        b=gVlsKIK6+a2ETtHWKVQX1eK5kSj6XmUyYhMAUq64T8YOJzMl35cvxfp8s7e25r8Avk
         qj/UBjqJoc6QCSCr9ePAZv1+nLiCGJhTByQvNIqtbNwYaJOB+jj8krwfykOOwDPiDNHZ
         nZhYji8KdCNZl0BsiLbA3hnTZ9IHJBJHP/ODO0jY1MupcSeeyehD7vIRspfxIZA5/0DP
         Q4LEPNBs4Tm0ZSa5nZwO5Xjo/dK1IDUGSzeDuO46VHU/JLwCrpa8xZvvuTorkTlh2/b6
         8iMYModOLqxQ5kobUqDxAhhHT1pF2h1Lv5kAo3Ql6gGKAdvzzd1Eu0iXvrAQMf1gqmRR
         h+IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CwnmURqbXWi83+YJ2u0BfQ7YOsLloUGg9mtui9lPXE4=;
        b=qi7FZ6G4O5dUfQe0CvPgQDq0mvTiEztil4VkPAyfEnFfnMjT0ud9qsdIRTaAjr3n70
         9x3+wJBGkOGJ6f1AEZFQVkcpEx2V8Jvacar4NSG0oLISZNKW70rnTqNkuxDqBYHXi5nT
         /h33jmkdbPdpPUnSLxRM9F9Sl619VNU44oWT6oohai8+tLypLuRZvFJzo/YGLftoMLq9
         W5nI8aFrSCYe6BytG0ILyhLPzYxxRf58aalJF6E4kcNuDb694XxJ6b/n60Ba+dbNeG4U
         8jl5HeQsJ6q8Y/S+sASBz4sXRfJisq9Iv8dIGNq/mkhrGgXRHlfl8hFs1rYqNwJMMxw1
         CXYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmZdsAfK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id x20si1169776oot.1.2021.01.08.13.17.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:17:31 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Received: by mail-qk1-x732.google.com with SMTP id d14so9730102qkc.13
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:17:31 -0800 (PST)
X-Received: by 2002:a37:c442:: with SMTP id h2mr5841601qkm.283.1610140650847;
        Fri, 08 Jan 2021 13:17:30 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a9sm5412026qkk.39.2021.01.08.13.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 13:17:30 -0800 (PST)
Date: Fri, 8 Jan 2021 14:17:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
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
Subject: Re: [PATCH v4 mips-next 5/7] MIPS: vmlinux.lds.S: explicitly declare
 .got table
Message-ID: <20210108211728.GE2547542@ubuntu-m3-large-x86>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107132010.463129-1-alobakin@pm.me>
 <20210107132010.463129-2-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107132010.463129-2-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NmZdsAfK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 07, 2021 at 01:20:49PM +0000, Alexander Lobakin wrote:
> LLVM stack generates GOT table when building the kernel:
> 
> ld.lld: warning: <internal>:(.got) is being placed in '.got'
> 
> According to the debug assertions, it's not zero-sized and thus
> can't be handled the same way as .rel.dyn (like it's done for x86).
> Use the ARM/ARM64 path here and place it at the end of .text section.
> 
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/kernel/vmlinux.lds.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index 0f736d60d43e..4709959f6985 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -69,6 +69,7 @@ SECTIONS
>  		*(.text.*)
>  		*(.fixup)
>  		*(.gnu.warning)
> +		*(.got)
>  	} :text = 0
>  	_etext = .;	/* End of text section */
>  
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108211728.GE2547542%40ubuntu-m3-large-x86.
