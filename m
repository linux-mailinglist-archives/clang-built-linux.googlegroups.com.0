Return-Path: <clang-built-linux+bncBD2IBN4NQIERBI6P4KAQMGQEABEEAMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D018F325E69
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 08:47:47 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id z67sf3309572wme.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:47:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614325667; cv=pass;
        d=google.com; s=arc-20160816;
        b=oyap6eeFSFWpjwUfQmt7D7NfJ/arFQ4lXrICvmkU/7boDUmMhp86tJyeCpKsnml4uD
         0pXjhlHB+yBG6S5V6HTapPGklQXBO8YEDogbR3BeSJgCqSjviEdcmgkBq+ADuWpyzBBi
         8M4UrjKJFnmFHLlioGpl1BVT993FiiteykcDj4SNB/52jOYpZzYxDOkROtre4tJtFFSb
         IS6eMjdR+dBFzzhoGQN13cmtVzHA4WIY7EB/3ne4Dt8UaN/Lf7QgHVUMDH5OT7xXt1Rd
         9okjVpHdawPtzqNGcmu77dsYAgftgJ5Ql+wEcpuZpwP6mUlwnBq6Ne+Yy9mvo4+Jpt74
         5KJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=w8uit2RLTo4uYWd2O7pdBAWs8p2MlBZ7CD2GVWmNya4=;
        b=aZfjcgW68vPXiylSOHdsrd9VgXZx0FFO4pu5dhFNSJ8gP9Tn4YLe7enHhqa8p5wuP+
         p2PHHeSJFaMWo8brW3IAs6x3JHLcpAhl+OGDceRimyFuCCwBAvz8IQEqpgqhn8cPtC3u
         omG/4AUD8Tju3AAEUosfu0TOyffP0P5fsdZfRS97CmkBZlhX+vtB7SNWRN2vwRB8WheS
         aEj7WTn0nuAdZW33SGZ1YgKNU/z1b6b/AaOvw0DPkp36ovF6DXlbX1FJt9CzOwybDykE
         L5vh8fwvCvhAavA//sINrsXuR9Etmj6WEsbKMfTpFrdAFYEyP73Q/Df3l+vFBlnW6FEw
         yREw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OoI1pL7l;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w8uit2RLTo4uYWd2O7pdBAWs8p2MlBZ7CD2GVWmNya4=;
        b=kw1yC9J0uv24vtjf6Bj56sFiW13ClTpB3X0JOvMtgMtdbX95M66Q/w8kUUy9Ms2G+G
         Gwj2ehlozuQKd7WY5gylsCocozsZcGtdh02XaifDz6KQtuQpOZRuFbQnII2q3jXdMBXp
         1tYep8KVSQlxwfrDZ/pAMoISafgx6+t/tDhn5T2PvWaRcbU5vWuiQtQtnZmgzWe25eoW
         g9QeZB90ZvjP1iFSjhOLU5ynC4vDAExrfuyGeLKU1jFTOMSqm+ibYKDsfpifDj+8GAuX
         FfsBR/gxuZi+y3LY8RpU7woxemquwyVk0v73+HRNBN4BgCxzIqXuGWRCbzpFtU01Y4q/
         n0mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w8uit2RLTo4uYWd2O7pdBAWs8p2MlBZ7CD2GVWmNya4=;
        b=YtWG1ngpY1MW8LH5r3WiuZ/FOH8FaGOTcJKuCxRUWb+Ds74MTHoCYwGn3tliT5dZ8z
         hsi/RZVN304ATRvZe/dt49GokaDeDpZCJAYtgVytpznvlEo7zDmxSz/oJHKi25I0+3VX
         qTp0oMOyVgu3IMgCrWqXwrtAWqDUw7iljaYa3KlmaAG9AQ8QlhNS7WqIvZXv7br+MQzV
         oTqI7jgycH8cGnnz6yb5z7nrCNIhn2WC8Bhi2Soz4wDzhGI247/3SCj3ZGXMGLtCsQXo
         hJQ3rRTbPhL/1GqpBK/hKnu6YkyfXqQMNLhW2caBG1tnXQCxRZ0kQUzv8pU6XSLFDSte
         WhgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w8uit2RLTo4uYWd2O7pdBAWs8p2MlBZ7CD2GVWmNya4=;
        b=ECaLdyMQSOWS/I55p0y1U6rbcJQLM/A+up4Igooj8HkYCEWATmuGK+PnY678E9GaET
         mJitpVLVEhZ1ZyftoEJjJidrjLE0/eO67lDqGe3DvJZddC4gzfO5RVgmG9hvP0Vh9Nve
         2kyzW5CYlSUFfpAkum6212rpeLiZG96T7k/u0p0El3fLghDWcvcm8zbtL8pY/o8XyZfZ
         y9GoQZ/fR3kDwE/+OlTXhFH969L3DqwfQ2jNXgUKE4+pSEm22UqhrCgD5FXWOeGoCUyg
         3N8C35wjfKXYlp9H+Tj1i86ZIOPUHqrIRhRK8IRv20MRW68ETPOZd1Gta50ur/UJoaJA
         vRhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530di6x4DdKz3ERL5ZI5rIYCYcEDNKfzaXNxGst04JrTtpL3O+jj
	NlGEn4d1cIt2ofpCEUlfR2A=
X-Google-Smtp-Source: ABdhPJxrccfDcasfUnDj5tmPEytLJQ4pHLBZVXFIPRoIpqn8X0yHOLIJHfuhG9SBNtgmQnPP8moqLQ==
X-Received: by 2002:adf:8547:: with SMTP id 65mr1788564wrh.269.1614325667541;
        Thu, 25 Feb 2021 23:47:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls858999wru.2.gmail; Thu, 25 Feb
 2021 23:47:46 -0800 (PST)
X-Received: by 2002:a5d:4705:: with SMTP id y5mr1801737wrq.313.1614325666544;
        Thu, 25 Feb 2021 23:47:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614325666; cv=none;
        d=google.com; s=arc-20160816;
        b=mkJZTZk0ccvTOJ51mq12xyOYM3F5Q9uAXf3h15LiiUh19nbLja6oAKgQbI6BCqWq/I
         HJSDaHXZTQiqnOm6jLxd8NCaZ/HiUzr+C2OzQZ62hxuXXKX1H0HbtuLkfJBULQO2ZyOv
         GBFiX1hSy4PSQIcoDpczH7TNK4S2rSVK29iEcxLXq6s/Fw3aMvt4RVvqUC1CaewvM0//
         PoRwq8b0LRoVS47i//MDGxMIC+vqLA2whHG8hpWrXGRBTtUJiBer7Ws8CKJBDCTDhSrF
         qT1OJTJs7/W0E9t8NP0Bf03xuySpfBjY+vK5uvEjbCCRkk4dukWbjUBznJZPUJ3CbNxd
         /fAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4DN+A5hkNrzxN+WZsFV8KY0Vzh1Hlgt+doIBF7EMR7I=;
        b=ZVkuezi8p3mJUCGbCwGZzbP48NL65T559K53DKIIwk64/QgVGvg80IpoEG1Z/jxM+q
         vubz4yOgS6uLFcXFSMY3icT6QQtOcUff5PWId6qAacHjJkyBcKbJTFKEkpa/OCbxRzld
         JIfN2rq8NukTwYlYJqK4J4xJjvV9WF5lVvx0fE/TyF11Yl043Z973gPP/Tx+bXNXaa0E
         wgTQee58g/Um/Pa7t3a+EeZQD2xNwDcFG1QinTqSIclXyEHk5g00XpscBz8o+ZXXlYDT
         VaeVGFqsv5RgMwZl90q/b12BTvO9rhjE9CkV99cROMVHqqVWm4a8xDRnVr4QeklRmhmY
         kV5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OoI1pL7l;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id g17si341160wmq.1.2021.02.25.23.47.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 23:47:46 -0800 (PST)
Received-SPF: pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id gt32so1638858ejc.6
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 23:47:46 -0800 (PST)
X-Received: by 2002:a17:906:4f96:: with SMTP id o22mr1846571eju.511.1614325666360;
        Thu, 25 Feb 2021 23:47:46 -0800 (PST)
Received: from mail ([2a02:a03f:b7fe:f700:b14f:9a2a:80ff:1887])
        by smtp.gmail.com with ESMTPSA id t27sm4650257ejc.62.2021.02.25.23.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 23:47:45 -0800 (PST)
Date: Fri, 26 Feb 2021 08:47:43 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda <ojeda@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Message-ID: <20210226074743.krd3cixaf7bt5vsp@mail>
References: <20210225164513.3667778-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225164513.3667778-1-arnd@kernel.org>
X-Original-Sender: luc.vanoostenryck@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OoI1pL7l;       spf=pass
 (google.com: domain of luc.vanoostenryck@gmail.com designates
 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
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

On Thu, Feb 25, 2021 at 05:45:09PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  include/linux/compiler-clang.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 6478bff6fcc2..bbfa9ff6a2ec 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -33,6 +33,16 @@
>  #define __no_sanitize_thread
>  #endif
>  
> +/*
> + * sparse (__CHECKER__) pretends to be gcc, but can't do constant
> + * folding in __builtin_bswap*() (yet), so don't set these for it.
> + */

This is not true anymore since 2017. Also, a much recent version of
Sparse is needed for _Generic(), for example).

Can you remove the comment and the test for __CHECKER__?

Best regards,
-- Luc

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226074743.krd3cixaf7bt5vsp%40mail.
