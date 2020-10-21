Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRPKYL6AKGQERGAVQUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 925142954C8
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 00:25:10 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id r4sf2686338qta.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 15:25:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603319109; cv=pass;
        d=google.com; s=arc-20160816;
        b=O20/ctW6lCANISoh8Yd68TT75Amy99BUxo4S9P17ki2O3KJ3NubKfFUEaOMKW+jLrx
         q6Ucq+rxoMjwbhXNNMLUOX0MaoVEn9cYRT5Lr+nxqpryPOh6DWN+NnwykhuQS2ahfzoi
         tAYa5qLPablPO0zjVsQMEShjs1kS6sZPBxMcxVk8QpHUvwmXky3tNjvbduGNHlkLRjo8
         CixnaMwZwEdjb+djl2eJcvxBv2SRmc4x2rQQuTSz1kcmfsPCbxv+KuWeL+U8vtgB+Fdt
         jjqQpEWIfPtvzt3TTpAnj9kLf5E/QqUtJYnmO2d4Okp3fDrSueCirdWtl07B2fEBBxx4
         0CUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BH7QgGK+B8f+ezC2QPWbLehZGACQjXOjGwzzYFTIDzI=;
        b=b5VqOOvmggbtkxT3Ust+WymH+hLV8RoLgpZ0NdlvgFlUUHwqQlpbNhuCtRZFabI0EW
         a6kV3kqpwGzQAln/7DL0jHuvF0IDE6Icm3JC1BWb5XYlTfuMq/7AHn2d5JeSK9wdzQi7
         UBVM8OayfXMrdgeSeNEkfMbSJUr+GCL78heOkWZCVzUKB7TGLq4heAmypJpVcdG6mdVN
         HDNW4BybGKT4lGhIz0eEUMfVNkhTZYu5xbqIFZcWqRBTKTHnaNJUEU8gCkqxab3uwF+w
         86/K2CqGyeKRH5NoYM+t5QZ487z4pvHO/+kLINYVDqS6Am9UC7P/XP+iE5rdEG1b32QI
         Tnig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BK+E+wak;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BH7QgGK+B8f+ezC2QPWbLehZGACQjXOjGwzzYFTIDzI=;
        b=RrfaTC1QF1W0iD0gzc4wj6HSeaR8nVFqupAceIwTpxNLLJtCmyPdSxI1Oqh7NCgydo
         eltJaL/BZYs11tS3vOioEAGEI9iYBODWBSN7QWXnP6nRRoTkxGScm2lL0A0hH5jpmZWP
         8ViMVIvbV7LXc0+PqV46FUqQHcAJxMLKsjHntf/4REk9hchIKVqAOvwWJhpw1rYJnI4T
         2sQD8U99aHC2L4Mil3ek0OWZ13JnBt56NLJMTtHldzGNhoRwdo46cwPl/SXQRPgOlOdL
         7ARiKtTggceQdEGpgWTEpijqAhbQ6gvs7w50+U9y7uByRwTvV+6SJONDYw6Fu3PyeneR
         AyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BH7QgGK+B8f+ezC2QPWbLehZGACQjXOjGwzzYFTIDzI=;
        b=eAYT2q1U9x7fBqsapKNDVD0y6VKt0IMSkekicbCGTPT+tM6njwgEeNBvSjZqBdUUuR
         AaqkgA3rC5tNqTCeyzs1Uj3emDEoZMpCXzyPekO97AS0OzhTtlnAOE+pYddPpLt3Z8EM
         tddMRyXnXNKgRqSGqcHEfdiJdFz3Eo4z/mtmaIruYwIIcwKZKOYCqb2T0gYoENemTfqi
         qYvUZ3EjTpUqlXBVe7m21vnvAPkPGPj/FzhbZgkOU6qSLZPJxtZ7iPz9PCNk0+pTgk2T
         iyaUSG6n6vIYWdLJehD/avED3K5yFkOrh+56l8Pc64EOiDSEOtkIxpxC2tBAU5Ao+kSX
         fPxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ocbdb42uKnHiDdWfyeD/xDQeL9F2e9BI3YFHFg0aHdxQ4+vvZ
	H2RlGRogKVnqNHJ4nO4HFtE=
X-Google-Smtp-Source: ABdhPJxqE5ohXp9AWMZuZPjqUFP+DFuPMFe/y4SfrnNJhNJ6hoVMNI9F5h9A5cKbpL1NcI/7UG7FRQ==
X-Received: by 2002:a05:620a:12ec:: with SMTP id f12mr5446410qkl.176.1603319109270;
        Wed, 21 Oct 2020 15:25:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:68d8:: with SMTP id d207ls643292qkc.7.gmail; Wed, 21 Oct
 2020 15:25:08 -0700 (PDT)
X-Received: by 2002:a37:6313:: with SMTP id x19mr5422380qkb.129.1603319108866;
        Wed, 21 Oct 2020 15:25:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603319108; cv=none;
        d=google.com; s=arc-20160816;
        b=urrJ3w5BPQZUGf1Xu/gTYIoNDzgHpDXgZ8tZiVtPLy3HcdF49MD1XspMocb7+AfZgS
         eBQW2UuGD4T7ktivT49PoOVGOIjxv7sYhZwZ8n+thQJgO6/Q6JwzL2E03OAAqBx7OPNj
         lhaM4fhrHZG8wHwhZ/3UepUGc7enT82lmsrq0QSGMaTKQmidc81PDe30mrsn07N5PjfI
         D1jlqgZIBUFoojygPBxuFv5dc9ZzHlasco5cdq/iy4cQnLiJ2AseK7ja+aJ4snD4gBsI
         RdofO3E6uzOok+wD+bEmcM215U7BJ5jvdk/6u1YPsSjF05xpeMqH0ufEyHLnx5je189q
         seIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=G8CEok3vbung1AhO88Lhvw62MF/+SVjC5VIcNaMPw5U=;
        b=Knhqq9BelSWR2luEK/lmXZa1efBuDV/oEE8qeEbyS3dm9eP68M7Y9A+FhQWMMs3ohm
         QPza/QPIfCfEmsTbcx23BSRzCxsU53cOMVtulAfs8vcltb/zmBkq4IJTRV1zQ15DjBr2
         K0O89g3cBYMKHTxg3/OKmuAQT2FzEBuIEes6CJw9IJC8UMfEIFXsy0RnAyvFT+2DXu2o
         Q5YBn2NkURaQWNOaGioGqm4nM44nxeb0MDX1h4mZGGnjfCePrd3aHyJu83RFR0AUdQ+6
         QreyC7IYLq/opxMHAp19D8u7cGJVPv4UTxElWQax/e1W3bPdDJe1PyrxGJ1U44BuqD5q
         kwaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BK+E+wak;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r40si247336qte.5.2020.10.21.15.25.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 15:25:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id l18so2361407pgg.0
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 15:25:08 -0700 (PDT)
X-Received: by 2002:a05:6a00:15d1:b029:155:5c2c:c28e with SMTP id o17-20020a056a0015d1b02901555c2cc28emr83051pfu.3.1603319108059;
        Wed, 21 Oct 2020 15:25:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z20sm3126932pfn.39.2020.10.21.15.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 15:25:07 -0700 (PDT)
Date: Wed, 21 Oct 2020 15:25:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>, Arnd Bergmann <arnd@arndb.de>
Cc: Ingo Molnar <mingo@kernel.org>, x86@kernel.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
Message-ID: <202010211523.EC217C9@keescook>
References: <20201005025720.2599682-1-keescook@chromium.org>
 <202010211303.4F8386F2@keescook>
 <20201021222215.GC4050@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201021222215.GC4050@zn.tnic>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BK+E+wak;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Thu, Oct 22, 2020 at 12:22:15AM +0200, Borislav Petkov wrote:
> On Wed, Oct 21, 2020 at 01:04:35PM -0700, Kees Cook wrote:
> > [thread ping: x86 maintainers, can someone please take this?]
> 
> $ ./scripts/get_maintainer.pl -f include/asm-generic/vmlinux.lds.h
> Arnd Bergmann <arnd@arndb.de> (maintainer:GENERIC INCLUDE/ASM HEADER FILES)
> ...
> 
> so that's Arnd's AFAICT.

It was a fix for the series Ingo took, so I seemed sensible to keep it
together. Though at this point, I don't care who takes it. :)

Arnd, do you have a tree that'll go to Linus before -rc1?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010211523.EC217C9%40keescook.
