Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXNZWWEQMGQEWNXPKAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EBB3FBF02
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 00:34:12 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id 70-20020a370b49000000b003d2f5f0dcc6sf1010829qkl.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 15:34:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630362846; cv=pass;
        d=google.com; s=arc-20160816;
        b=vWfYSJTHljksovbjy4W06FK8MFreGep4kemrfZKaTaIz4ocnraWpr15rKg7Kn9fL92
         xVMIk52l8pgLurM7t6inCWD3KlalmYvV26gsO8Ua0ocHnnYFmhjhtlfHwZ26aXd2lxiC
         64b9QTRw+5e6kqh9CZA8VwqZEYKnXNEV8rZMvKdZeyxAyWl+d++yRo8X3rVTQm2hZwyK
         bt3J1Bqyhf1KelWXS2yXhYo2iPblv6W7MYm5fOW7htDlWeHIrsi4tUa9c7wzlfnVodl2
         emdlXfRJDMTr+6xgkG+0tHTb7fBJEs2l6siVkEprWYJJcFRRbTZ62FQQqy/kY1a7+cEj
         4qGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+yp3+plqrYJKG15oXBJLXanWN7rBbx8o/u+0YB/zla8=;
        b=utq8cmhKtvKzHANKtIO2yqirGDhiCw/tNNwwnE3X/UaKp+xhxA8fgN6wL5UjCvOb0x
         XeZSzFcbckdQE/6lY9jCOM7BpjnRcFPlPYfbZLekb0aVkVVx39Njr9LZ0ByYYwg65P+j
         5Q1uUV7zFrx3d5VCeGiuJ2gB++df62b5Sllq5U0tlmLdX76K4ObhN3HtLKmVhLLxuv/9
         wsP59Q5XL3bila3eWhz+YfXtQEPe9C0ZXQoxdPDDS588LD4caX38xgfkmHe+XB4x6otr
         kLguseAgOkqjGM+x+3IqE0OcIPw5zsWEIlszp7030vH3E1zHAGPcSXn1kxTl5WL3yXAH
         eYQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WvvNsgss;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+yp3+plqrYJKG15oXBJLXanWN7rBbx8o/u+0YB/zla8=;
        b=JLPT4O1xpzXPE/17gvOBKgc88ok6/Rhi8RkXnk51aarh1WTU37tQokA4uLoIPN8gyV
         bk0OgANjGEqZykH/DKgyXI4s4ioHTOMhygymbS7FxvuONZ5F5x7OIfRXWdE4YJo6e7TI
         p7fnGEVVXQXCQzBqMB0J/iF4OPeJxu/WI7feZFe1NclOJ46yTjBj1LtzVJQHiQp6Xj4Y
         UWafpLa803Iaqhr3fajDk+PU96bNyP60GQggdaan6IgZzPUmpeae61WWd4WN2evyBRTH
         OlS6KYhxVXsHxg6MuK2o6j/Azav+l9pEGrBf2PoqlG07+a1QpHoygmqHXi33Sq9ARkcO
         GZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+yp3+plqrYJKG15oXBJLXanWN7rBbx8o/u+0YB/zla8=;
        b=BonXOWi/9CTR95egJjOA7k7xruOi3VXadaYLGEWi2DzM/16cNbWbPQt4uBOPKeYQqh
         oCUPG2GD5lHxD9RC0hNs2wljOCxvT8OXlPCH5/AZm8yHx4UFHDNVZMCpagpeQg1cLoTj
         2w8Rf6btmBskNSHYHde7ydyjyUrG87Er6rUaH/2f74lEaISTdwkNvBAQm8nAVGV9gMVa
         zQntC1Y8+FFJXY+ksQ3O1fvSVjSIpLJn7zeAPLs8Sq195Gilwqbr84HJhohAdNSsbXGB
         3M/KztRVa59RNQnMrhlTWlIT5gPS1PySioHrlJuMbnIe56w6agDiKo+mb4bp+1ieY8X4
         wRXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HTO3wljzzd/CaLGH3eB91vg2CnVFht0BHM1Nds0dvzhprFLQu
	GPhVW17ugTFLH0O8In98YyQ=
X-Google-Smtp-Source: ABdhPJz2WGemveLLLgUbV0O35nd0s0EN5dCytsXi+nMCSLfb4oSiKz30F8ZS8PomrZzP3zE3/rn5KA==
X-Received: by 2002:ac8:44d4:: with SMTP id b20mr22604641qto.235.1630362845868;
        Mon, 30 Aug 2021 15:34:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a8e:: with SMTP id c14ls8502110qtc.7.gmail; Mon, 30 Aug
 2021 15:34:05 -0700 (PDT)
X-Received: by 2002:ac8:7194:: with SMTP id w20mr22763223qto.217.1630362845422;
        Mon, 30 Aug 2021 15:34:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630362845; cv=none;
        d=google.com; s=arc-20160816;
        b=pnfS8UUz018DsN/XsHe03uqRNApxDQRdTU2K/niCHb/r+Gezsp+8gf3WHq5Luk8gqj
         SUZlTMPDAIkz0HflvHWk/g/pzwgSay426ZaRXUNNaLmROzvnrJ9TLS+QSpC+naVj/Inx
         FFwxJTGCm/NmKqfMYecJAOvHRATImT/SA69HLidWeVwvgfJr6YR0eZdiUaXPb5Sif3Yr
         h4e+hLmpDt0wlo255iMWwuaZzlc4gUnI6DlIDqpU1WCObMlqpUVK5PQOlM2DuV2CNy0i
         POQJ3amJKtMtwbxUOa7UI0YYy1e2R67CR+3MPec2nm3rq38+LIgpwRDwxd3sqdvr5WAl
         T8Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=C1K89/GRflau61KvtpP2Z347/fYfeoaBoKAXNIK40Kc=;
        b=GOUbzFT2007+9piV430N+VJJMJy0VqKv+ZMwesrtCXQ+QBLIleoiuwijS+y3LvtiX1
         9cQFKRYgoIZgO1j6bk4sVQh5b3x3MrmWay0aHXsmbobIayfa1tPGM4psErBLteMjvdgS
         I/jYxEXPYXNQAEoGudeTSWlmmVHVoQKsIvkqriDe+jgQtEJoeh5f5xNPoJtE27YcJ2m0
         F7md97XCNm99A3/oTRm9mYvxnfiZzux2bj9M/gQNEOj5IH1fkLfCZqeqD0RyRnesGgKf
         QrAUpik4jzVDPpCNL7Yx9mAG96GFbDaoixLjsxuHleIn+d6DZX0GHlNgWAK0zfmBRlhT
         e4NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WvvNsgss;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n78si1287492qkn.1.2021.08.30.15.34.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Aug 2021 15:34:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C1B5460E98;
	Mon, 30 Aug 2021 22:34:03 +0000 (UTC)
Date: Mon, 30 Aug 2021 15:34:01 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH v3 0/5] Enable -Warray-bounds and -Wzero-length-bounds
Message-ID: <YS1c2UE487rkGnya@Ryzen-9-3900X.localdomain>
References: <20210827163015.3141722-1-keescook@chromium.org>
 <YS0nJtNDCwfbaubZ@Ryzen-9-3900X.localdomain>
 <202108301314.22B3CB015C@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108301314.22B3CB015C@keescook>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WvvNsgss;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Aug 30, 2021 at 01:16:41PM -0700, Kees Cook wrote:
> On Mon, Aug 30, 2021 at 11:44:54AM -0700, Nathan Chancellor wrote:
> > arch/powerpc/kernel/signal_32.c:780:2: error: array index 3 is past the end of the array (which contains 1 element) [-Werror,-Warray-bounds]
> >         unsafe_put_sigset_t(&frame->uc.uc_sigmask, oldset, failed);
> >         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Or is this a Clang DCE failure?
> 
> #define unsafe_put_compat_sigset(compat, set, label) do {               \
>         compat_sigset_t __user *__c = compat;                           \
>         const sigset_t *__s = set;                                      \
>                                                                         \
>         switch (_NSIG_WORDS) {                                          \
>         case 4:                                                         \
>                 unsafe_put_user(__s->sig[3] >> 32, &__c->sig[7], label);        \
>                 unsafe_put_user(__s->sig[3], &__c->sig[6], label);      \
>                 fallthrough;                                            \
>         case 3:                                                         \
>                 unsafe_put_user(__s->sig[2] >> 32, &__c->sig[5], label);        \
>                 unsafe_put_user(__s->sig[2], &__c->sig[4], label);      \
>                 fallthrough;                                            \
>         case 2:                                                         \
>                 unsafe_put_user(__s->sig[1] >> 32, &__c->sig[3], label);        \
>                 unsafe_put_user(__s->sig[1], &__c->sig[2], label);      \
>                 fallthrough;                                            \
>         case 1:                                                         \
>                 unsafe_put_user(__s->sig[0] >> 32, &__c->sig[1], label);        \
>                 unsafe_put_user(__s->sig[0], &__c->sig[0], label);      \
>         }                                                               \
> } while (0)
> 
> if "set" has only 1 element, then _NSIG_WORDS must be 1. The warnings
> are coming from cases 4 and 3. (But why not 2, which would also access
> beyond the end?)

I trimmed the warnings down otherwise it would have been 400 lines long
:) it did warn for the 2 case.

Clang does not like the use of asm goto in unsafe_put_user on powerpc it
seems:

$ cat warray-bounds.c
#define NSIG_WORDS      1

typedef struct {
        unsigned long sig[NSIG_WORDS];
} sigset_t;

int handle_rt_signal32_bad(sigset_t *);
int handle_rt_signal32_bad(sigset_t *oldset)
{
	switch (NSIG_WORDS) {
	case 4:
			__asm__ goto("" : : "r"(oldset->sig[3] >> 32) : : failed);
			__asm__ goto("" : : "r"(oldset->sig[3]) : : failed);
			__attribute__((fallthrough));
	case 3:
			__asm__ goto("" : : "r"(oldset->sig[2] >> 32) : : failed);
			__asm__ goto("" : : "r"(oldset->sig[2]) : : failed);
			__attribute__((fallthrough));
	case 2:
			__asm__ goto("" : : "r"(oldset->sig[1] >> 32) : : failed);
			__asm__ goto("" : : "r"(oldset->sig[1]) : : failed);
			__attribute__((fallthrough));
	case 1:
			__asm__ goto("" : : "r"(oldset->sig[0] >> 32) : : failed);
			__asm__ goto("" : : "r"(oldset->sig[0]) : : failed);
	}

	return 0;
failed:
	return 1;
}

void normal_array_access(unsigned long);
int handle_rt_signal32_good(sigset_t *);
int handle_rt_signal32_good(sigset_t *oldset)
{
	switch (NSIG_WORDS) {
	case 4:
			normal_array_access(oldset->sig[3] >> 32);
			normal_array_access(oldset->sig[3]);
			__attribute__((fallthrough));
	case 3:
			normal_array_access(oldset->sig[2] >> 32);
			normal_array_access(oldset->sig[2]);
			__attribute__((fallthrough));
	case 2:
			normal_array_access(oldset->sig[1] >> 32);
			normal_array_access(oldset->sig[1]);
			__attribute__((fallthrough));
	case 1:
			normal_array_access(oldset->sig[0] >> 32);
			normal_array_access(oldset->sig[0]);
	}

	return 0;
}

$ clang -fsyntax-only -Weverything warray-bounds.c
warray-bounds.c:12:27: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                __asm__ goto("" : : "r"(oldset->sig[3] >> 32) : : failed);
                                        ^           ~
warray-bounds.c:4:2: note: array 'sig' declared here
        unsigned long sig[NSIG_WORDS];
        ^
warray-bounds.c:16:27: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                __asm__ goto("" : : "r"(oldset->sig[2] >> 32) : : failed);
                                        ^           ~
warray-bounds.c:4:2: note: array 'sig' declared here
        unsigned long sig[NSIG_WORDS];
        ^
warray-bounds.c:20:27: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                __asm__ goto("" : : "r"(oldset->sig[1] >> 32) : : failed);
                                        ^           ~
warray-bounds.c:4:2: note: array 'sig' declared here
        unsigned long sig[NSIG_WORDS];
        ^
3 warnings generated.

$ gcc -fsyntax-only -Wall -Wextra -Wpedantic warray-bounds.c

godbolt link: https://godbolt.org/z/8xYojs1WY

I've reported this on LLVM's bug tracker to see what the clang
developers can do with you on CC:

https://bugs.llvm.org/show_bug.cgi?id=51682

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YS1c2UE487rkGnya%40Ryzen-9-3900X.localdomain.
