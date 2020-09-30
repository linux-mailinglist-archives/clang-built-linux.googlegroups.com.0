Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ7D2L5QKGQEIQCSF4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F4427EF1C
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:26:45 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id w19sf1269877plq.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:26:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601483204; cv=pass;
        d=google.com; s=arc-20160816;
        b=OuxdzWGZ3ZYzD0BVt4tfwuCbeSJBpKgc9WIRm88L4HxtU/VR70LOr6+e4v1i1DyOAe
         1M+wsFAqem5YpuOdf9tDXTZUErt+QteDl0TVLu7AJ/iJavmj8JQKhH5mHcG6cOBy29+D
         DhWiM8DRPCDbQ6FVP0eQQmk077odWlOotL1nnnqRdlRbhrDlLiZYjENPASGIpZf+AnBf
         Yi4z2ao5ZTIHpRaEAYnBKDFHyLOVJJbo81ucyYYn8Q5jypfEzfC6SEHDjAJUl6dMgI4s
         mRyBKhCmXNGjvlIY4I3BQzmvQLzYQb1yd0OVAIGks5a23lueHRkbnClAjKgNtdWhjxcu
         khNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=eox/Zi/cRN3NZWMEAzG64cUMQYYFF7RBaVywmuilvB4=;
        b=SFYKmE7KfgmlsLOmmRflqZ/SJWWEukgJUTh1tXg0oNVEuObX98cJsdkUcP2y+Mm4PH
         T3JeMhv/Mo7BZYjk7ZsvJoFkCNFqF9VSo61DTlVgA3RTmR6S/fCQFWff6uyv5ir2F5cz
         ShTWxLmNdZkaSefHJ6Gux35+1BVwf6yTiTpkp/yJpDNEBNexpc19rwVkEKeAf7W+pCgQ
         hF2tuDZWKgTXkTpmKJYEhIckkhdGbgdPMJhrZTzBC8FKEz0KkPYGRu3yTxiI8vIo96Bl
         7G9Tgq/giAY2u4xej6HuKM2SE70Qv+1wjOPtOj1PLmqJUE8Y2Ej9h1gf4o2NoPYIhhNR
         AgUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b7dWSB7F;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eox/Zi/cRN3NZWMEAzG64cUMQYYFF7RBaVywmuilvB4=;
        b=TPm3X80dL5jXLOAvRm9nTCY+bAMxJzZZYtUeVAhXmGHENJtpUsIqzfsCIbGLyOQB9G
         Bo6i6o8obwoMvieZBc3GZ5RYgDP4wUrHNebZUNNgujzUxr/KxuR3KgHwZ/j39tqmwowo
         ahgD2NFAjq/4504ENF5eaM/3pugN829tLJRmhoCU5O0bIp0mrpPhFwBSUGtGsLD80m/r
         OO+WvLGbsB17yzXOhjE6F+OxbLf0hWZsxeRMIDojwDjVEAd75KkuJA67zoznGtL+8Dit
         PJvw01EN0N7UajFFR3ect6t6NrpoM/oDAkZR4JvU7JlbrIKwXb0OSnknwqQp42vUgtD1
         5GAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eox/Zi/cRN3NZWMEAzG64cUMQYYFF7RBaVywmuilvB4=;
        b=nuBuuRIj12vwhdTe4UL4CWRfOysl9eYHnkw+wtdRnS3hjHcI491SlfP9VcJa8vSq01
         CYsPq551Df7CUrq+KVUdJKbkR8W1WYPjMv/REApbIJWRTskFO4MZ9ybuRT7WxzdEMgF1
         IM/RCFDEY9n0lCkK35VH/gJNWKvg5bVTPqJBiU0XxBwFqrWDn8oTJ8vWUDhhkMMDETls
         tcUis6kLVjJBJmfL8iWzJAz7XySqP8CF2A4jnNa1MwegwABsp6VPPCEi9avxGqcg2uTa
         CA6/AFB51L1XEnKewE3O86wY/bzQoUdicfQao/jcLg/lUkBa6clya7MCRMkDSYVJDY54
         Gcnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eox/Zi/cRN3NZWMEAzG64cUMQYYFF7RBaVywmuilvB4=;
        b=HtHOSpZf+ceodDBpqlRFzx6UVQml/exatezad3m7FBMe478Bg5IQh42lZVy3rYWvY8
         Z8EpNLj+/MPwIEx/achC+Gixka/GD077z6jYkm9+S8PROmBCu0DPzXoZI+F7VIagLdcU
         d82jFPxq3FvixgjEHnVXwSDXwqqgaTTs7vz6NtlqeHlaed5xIGy+As8+r4EApCHiFoKZ
         JYYyzH6dxxZD8iJLdziho29w6iDbIYf8CBhoyNOxqhsOZKoCwpwmzrR0MwKvva4anjXN
         Q4rOsY5ilrQO77y3P9Qy1kOXg7/2PRXWsymkj9OYgYxIeISOLffn3+lNAJIyMycEpmd1
         fubA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328txD6Zq2k7TOyKBgj/ZD85+Oc+5UVxx4cfF7dvHiVzweZprQe
	phnc1alo5exwjPzBovuvgEE=
X-Google-Smtp-Source: ABdhPJy5p4Vyf2zGw3+UkZR/FCh/gwnDNPtUgm/peyRUDafStUwlZwnIHrHqAF16vO+z0vyikWAZUQ==
X-Received: by 2002:a63:dc0a:: with SMTP id s10mr2671194pgg.295.1601483203855;
        Wed, 30 Sep 2020 09:26:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls1258466plf.4.gmail; Wed, 30
 Sep 2020 09:26:41 -0700 (PDT)
X-Received: by 2002:a17:90a:e093:: with SMTP id q19mr3183811pjy.98.1601483201809;
        Wed, 30 Sep 2020 09:26:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601483201; cv=none;
        d=google.com; s=arc-20160816;
        b=FpJJ57EoZjx1L3LT83jxWaa0AWUnewFiHH8hwNPafjm+sBmF8EgIniyND2gJjepX2Q
         Jee0PB3mbEiy66K59KgB7aykPdQPGt1kadO4Iw4WxjVX8ufSgMjH1QidhRdJQEfh9M3y
         9PaLtJXZ+J3XIpZi5IgfNLEESZHF8kp7B28dPOYQ5xKcp9Awn5CMsVz7l2tLkMO8FgYq
         8B6UK9RPPwilBKT53kSEwzowR73oxpnoHAfTCxss8Wn9xCf5TkLsgaV9plc3XKjU0fAB
         2q0L1hcXnhvO7wAMgo4N18OtZMA1s//uomdsk3EHWqLcn7GQYQ9RCPg3Cha4g6asFb7Z
         iArg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=euGAurZX4qBq2rTxk1sS9112OK7Jtn1PkFhBEzUnB4Y=;
        b=QJE+xtaKQJZBdW69AQDv9Xy9qiDDAHLSpJ5MbkuuO2kF3gouhH+hMXDW2RgJhTDQEx
         pChcxu6N2rWDg1Bf+VMLsDCo7dv9aQhnSRc/c4WpL9A4Bl4N7Psy+48/w+4yivHVdwD1
         RoSUnoPzKTmah4kUwmf3GJRQkLuwEPHlX6mzO58TXvBa+PiBtW9OXm0oSRm6CHxhgEtP
         yEMe9wfYJrHZbdDoXctNeBEw0sfC07jIQD0TwBDQo2U8hJTagOr77n4AXc7DaKn5W3FS
         R7NYRiACZvHwp/W1p7r5wW0Q+cCLqLej1woHIeoqQ6K3P2GgC433Z/GZ2l24i4+SzcI0
         nKfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b7dWSB7F;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id q125si221595pfc.2.2020.09.30.09.26.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:26:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id d19so1336454pld.0
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:26:41 -0700 (PDT)
X-Received: by 2002:a17:902:778f:b029:d2:839f:9198 with SMTP id o15-20020a170902778fb02900d2839f9198mr394206pll.6.1601483201385;
        Wed, 30 Sep 2020 09:26:41 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id f9sm2754947pjq.26.2020.09.30.09.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:26:40 -0700 (PDT)
Date: Wed, 30 Sep 2020 09:26:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	kbuild test robot <lkp@intel.com>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Matthias Maennich <maennich@google.com>,
	Jessica Yu <jeyu@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] export.h: fix section name for CONFIG_TRIM_UNUSED_KSYMS
 for Clang
Message-ID: <20200930162638.GB236767@ubuntu-m3-large-x86>
References: <20200929190701.398762-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929190701.398762-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b7dWSB7F;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Sep 29, 2020 at 12:07:00PM -0700, Nick Desaulniers wrote:
> When enabling CONFIG_TRIM_UNUSED_KSYMS, the linker will warn about the
> orphan sections:
> (".discard.ksym") is being placed in '".discard.ksym"'
> repeatedly when linking vmlinux. This is because the stringification
> operator, `#`, in the preprocessor escapes strings.  GCC and Clang
> differ in how they treat section names that contain \".
> 
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Link: https://github.com/ClangBuiltLinux/linux/issues/1166
> Fixes: commit bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  include/linux/export.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/export.h b/include/linux/export.h
> index fceb5e855717..8933ff6ad23a 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -130,7 +130,7 @@ struct kernel_symbol {
>   * discarded in the final link stage.
>   */
>  #define __ksym_marker(sym)	\
> -	static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> +	static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
>  
>  #define __EXPORT_SYMBOL(sym, sec, ns)					\
>  	__ksym_marker(sym);						\
> -- 
> 2.28.0.709.gb0816b6eb0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930162638.GB236767%40ubuntu-m3-large-x86.
