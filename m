Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBV6K3T6AKGQE6DHVJKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C54429971C
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:36:56 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id q8sf1173420ybk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:36:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603741015; cv=pass;
        d=google.com; s=arc-20160816;
        b=jbcUMxEb8C8VS/tE/N2AQTGfLSJtRWYfPOXTRfKymx3QRzB7YR/8ivCLaJsJwvlncT
         OXt9Mm7bLU28gB1jnNmZyIDhschLpjreNQriR6pAqL38TwsRzV0Dk4uS0S30tEJchOMh
         QMkHvYZ+HmGUdywnok+LuLDhZ4uG8yJni2IElG2V4xZVJVB2aup6VYVuLlEG5tqhCziX
         SsLPW9XpX8no1fEP7boS2Ox6eEwGJaO/Di++fzBul/VlzzUaLekN/Wce8JQjmCrKZCFH
         WYTg2qE7ATCEF/ogR3rSmo6+kCx2O2VFW172ZxNjLJn2PTvMBL48CuBdAGJ3L0VT6JuL
         gRUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uQWk0kiIc3pnqMJnvg3CN+LLRXSNJWsxieJfxg9BvGk=;
        b=frZdBVcopltzJvBwAIt5lskCPsR5ous/pUlz5ZIPZRJX0jByHD/64RXcZKdCkO116o
         2fRj0QITY9AaLQ/JGCB9FuFr6rVFzRygs0B8THpIsjj8fef5IwAFKc+KiyDVE+Ty3M5k
         vLaT9vx91Y4FlvqkSA9IwV7/8NLVtBpUw7Qxpk1K7/9RL4iBvyI6Dp1eSTgKqFC2V78s
         koBwlTabMwg4JIE62YwLT4v0Q0pFVL5qipXGmNvoYuecA9EN4TUeQtLGfKCnIq2s+QBH
         bZKw7pUkhQ2uKLMQuZ5c8E/dy1jGRpw1LOhMXbo6Hf4tbkCFm6HBiUJgp4Nx7EHdZ5Ii
         i9TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SDJXLDzl;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uQWk0kiIc3pnqMJnvg3CN+LLRXSNJWsxieJfxg9BvGk=;
        b=cWJAKc2E5/7PsIooQONVH2PAC+IdDbBozdd35tNyI5N34ErC7spevJ5vR4OZ/YP8qG
         XfurCK++DUNJYYYkhiSi8pPxv6nEidOs16ll0DQvUK9RY6oclcHh860Tf0778YptcwqX
         jgQx5WCTF+cWQNjVhljCInmA2FBxF5o+0miIGfedkThfVCQ1POFuVBghmAFcaowEG0FE
         KlFSOSQhrMXEHTtQjpy0KWjRjj4aLS6J9wkc0nWEdv5YFWOziMj+IHhZaYGEdUYsdser
         V1BgZRIvATHduZzpovgjaPAKZv5S2FMitck8Hbq/YsSx8u/lhzyI8L4sQYM7g7ULYzRi
         nKHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uQWk0kiIc3pnqMJnvg3CN+LLRXSNJWsxieJfxg9BvGk=;
        b=hrMJ0n24VEA2Tv7e33BfbnUlbB8hpIjp/wqmxJOiJ2dowEtcV21NrXbi3GNabvifOs
         rCbqwbPG/6GHTrDfnk/uoNeqd28n6FoHyWnvSn5jGfR5l5/LIe7x2C2NzK5xQo1CYGQs
         jO6Fm22G10WZKheAyyW6Yqou1so1xjNZqpIkhJ67i8+DmAigGBjpdz3Zwc9rO14iZ7b3
         fmAMO0IKaiT44y/BoerND6DUohcWHzuhcNpKBonpF/abpfddknyVKcyDRIK7mNQzUlkm
         5YIKwZGH0lkEn67Vz/AXh9JCAcg0dYyKeN1iNpdZmJERREgvOLw2WCYycD35EQTPOuqE
         fIbQ==
X-Gm-Message-State: AOAM530GlKrYlHzkr2kK4UxHG3c+E3xF/hWKJSI2O0fnDOEI7w1eSmVv
	3QUuoTr84CuwNHEZ5Rhk13Q=
X-Google-Smtp-Source: ABdhPJxVGQQuxT7etZuTEBWWIJpoLGfAe+mzUVjEbnu2NKXv6qdTQHfa0i4jGCRY+ZVyQ+ortdrtZg==
X-Received: by 2002:a25:80cc:: with SMTP id c12mr10179066ybm.415.1603741015418;
        Mon, 26 Oct 2020 12:36:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cf07:: with SMTP id f7ls4658242ybg.4.gmail; Mon, 26 Oct
 2020 12:36:54 -0700 (PDT)
X-Received: by 2002:a25:f817:: with SMTP id u23mr25978247ybd.466.1603741014856;
        Mon, 26 Oct 2020 12:36:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603741014; cv=none;
        d=google.com; s=arc-20160816;
        b=D443cER1EOdPi30QyFBU+STxzsMq7NbcpqW/WFwTrdtHl/EiCOSu6xHMLpMJL+aYTq
         lLYZecwYUi+3mxdRI3+XfTQZavU1WMuaV3hRqFXZK0XsfZ0BGG03CKAo2msbj0R9zO9a
         eJYonpde/d0wWhl8ueasBRmMHcGQzkCS4jqnzKjRriGcSe9GfaJV9aMCO2K8FgF2j5kZ
         KfVzY/jBWzyYDeA37NR1REi6QRryMfY/qKHKVYX/Pl7KMPiC4f3q04k79ohkbDcO41/k
         UFBha8iK7PF2+9M8yUi/ar3CXo4o+MifQrH6HCCBgdtUs45APbxci5Y18yEP1UTaFzSJ
         44Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=3ysSlN5Tw+8xH995xyNFoH11OC8nwORbFcbyWXKMjO8=;
        b=rSOiGGTOqoehE+Z4StYSPYJy7K2g06ooppmkgaR49HPmF1JU9lOVuadov/X5EE1C3g
         tbGI5szsxvkDD9l+rS3NVqTdhsj9KW3KFPz8JrjdOJpm1vYtSBaYX/W3xt79eegu5VqM
         jNxcYno8AOZvBfGQWcB/jf6WH2FtRAfQ+sR1WQqEtaqoFjUs0hPpQYdaZfKvc5WQp/wU
         +bEG5vseXeQQRAAkQuCWyvm9NlSKGMlQPfq2U424LDnebK/LcfrPVJdQlZdyBc2M4OJH
         FbMnnSU0uTrw7NdzW3GeQPr9BQWd1mLINoOCZtcKf2/3NHx4n0XmZ4Vssrti2UpJoUJU
         rDAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SDJXLDzl;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id i188si574436yba.4.2020.10.26.12.36.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:36:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id k27so11638638oij.11
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 12:36:54 -0700 (PDT)
X-Received: by 2002:aca:b256:: with SMTP id b83mr11449268oif.116.1603741014350;
        Mon, 26 Oct 2020 12:36:54 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id b17sm4769216oog.25.2020.10.26.12.36.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 26 Oct 2020 12:36:53 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Oct 2020 12:36:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to
 __section("foo")
Message-ID: <20201026193652.GA77796@roeck-us.net>
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SDJXLDzl;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::244 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, Oct 21, 2020 at 07:36:07PM -0700, Joe Perches wrote:
> Use a more generic form for __section that requires quotes to avoid
> complications with clang and gcc differences.
> 
> Remove the quote operator # from compiler_attributes.h __section macro.
> 
> Convert all unquoted __section(foo) uses to quoted __section("foo").
> Also convert __attribute__((section("foo"))) uses to __section("foo")
> even if the __attribute__ has multiple list entry forms.
> 
> Conversion done using a script:
> 
> Link: https://lore.kernel.org/lkml/75393e5ddc272dc7403de74d645e6c6e0f4e70eb.camel@perches.com/2-convert_section.pl
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@gooogle.com>
> Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

s390 (all builds):

Error log:
error: section .boot.preserved.data differs between vmlinux and arch/s390/boot/compressed/vmlinux
make[2]: *** [arch/s390/boot/section_cmp.boot.preserved.data] Error 1
make[2]: *** Waiting for unfinished jobs....
error: section .boot.data differs between vmlinux and arch/s390/boot/compressed/vmlinux
make[2]: *** [arch/s390/boot/section_cmp.boot.data] Error 1
make[1]: *** [bzImage] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [__sub-make] Error 2

Reverting this patch fixes the problem.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026193652.GA77796%40roeck-us.net.
