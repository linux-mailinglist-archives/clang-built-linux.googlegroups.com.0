Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZELTPVQKGQE2V2X47Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC75A0958
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 20:20:20 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id j10sf320340wrb.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567016420; cv=pass;
        d=google.com; s=arc-20160816;
        b=xWGI9dYKSSrcVGxCj0i0R1aZKoZOKnoYfUUCio7wGMCMNQg/J4DWNSZLHjcAmltc7k
         5uk6QImCYIdoZX6NBXr1rbz5ghFnso8suXh9CVtgJXUopnSv1itmtpblscM1EAhPyTIT
         jZW3YFf+NWE7XtHxVMjx0UsBHqOs37dWYd5BuSA6pwVrp8F1TsjksLUupi5LIS4fuQPg
         ukqZP1XO9B+8u9mkMBDDtOAKa8ztMhifgiUoF1fEAGe6GKKzWMNuCN12+1PpjagfRxRG
         GCMhggqkZ93rRiQMh5Xk+LE6nQp67YytCnym4pWMRydlu4MNRj0LcRwCw2Ne/Aj69+xN
         aaFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=KF+tnlKHOTJTHbq6thta3dejkga9tQGpE/85BED8wXs=;
        b=eKCYCO87cSl5W+fczyeZIfQRWRuz7D6c2b+Afz02jyULMYNMfJ5yHzO326xqosRwSY
         P6RKhjn7r+iuth8rP/AtDkQ9P4s/PEIwR9OOa8Of5K6nm+JhEdApwaGnNejfpwz4T5wa
         mFeWWDSQliE1NFcJy1Qev8O3HOFRVasQdrP5OyL32S/WGraeErrolj6hWHisDm0xFNH6
         Vv8dzsGamoYPE4kiba9FcCnD89uinUntrLQtHSKopl/dP8G60f8K6d7kDoV1qDiFqKJT
         NMFjF1l+v3AzrtbezWeycfnHXx80J2yySsBe4quRi6mslkuS6AT/qbDE3zqHfA7c5M90
         gNsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjH5XczQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KF+tnlKHOTJTHbq6thta3dejkga9tQGpE/85BED8wXs=;
        b=J7VBWe1A58dDP2NCFQPxW67yMqSABV5ohzUAb2RBDE6naeZAaMq+lirTL48RIDIwus
         beOUrRlRkjzAz39sKhT38fuKQuhnYadcjf08inoLYjyrUebtsuVGlhnZINvV0ORMihE1
         YNlKxl0dvuGjd9VnzusssBblbx5XqqDQxeEeheHelPW69Bjf8boxVO5FEB46OI5Q8TLy
         W8rhfCM5RfWU7p2UvcRjikgC844HsGf223wAkiHqbUeo4msbiflF5j6JtFY8MwlpHdhj
         npAvaQoOtNoVm0FZEqPbTKpscHTTd7CYce//wapgjJlshA6EatOxA1TIK8//mPn6uIXp
         k+/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KF+tnlKHOTJTHbq6thta3dejkga9tQGpE/85BED8wXs=;
        b=eT8swxftzOWc1qOAAGa8ZchsYluNe2jvj8z+BxwUFFHdiWs4CA04S/YsbFR62KQzoE
         6T1JX54PHyBlEoXMHERfJVe+faB57gBVrRdRcJbzR/aHzqOY+HwS7LermI+HCRU4jUTs
         5Bp3jU3sHL3pwL/upzo5xMBqLsnC6fGBFPrHql078J+VdfMmhajydatIrbo+dw25tREi
         k2zA3gyIQJnEj3vjERxwwnReTxP1mMv0SL+GTru+Oe60G2aGdcV9/gEDWt07I8tvjpGU
         zeRztcYzMlEMvUiLaNG0jCi7FDwiHIqpP1dVAomB8Ui3ek91E0c0YQGTMWIkphdMxtWe
         LXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KF+tnlKHOTJTHbq6thta3dejkga9tQGpE/85BED8wXs=;
        b=fQ5zjyv90wpwjOPwGlFsI7+GSIH0PmIoBn7NGkJ/i5CnW0oONB7PQYl55bLL8Djot+
         qbefTg7uD58yfmg9TU3MWJSomMnxf6eiNQVGwy6CI3d75l2jy9pwKUFm4g93U6ciKSC7
         Vdi4bV6Tvcmi+Lcxw98WwnwTeVOJ0WET99OS7tfG9vpR0huOylu5FazgyBr0Pn9viDKq
         DFOqGT2PZWrl5n8Bd9Hhmj4RAB6d4DApv5haRjjRYV8bmxdu8Hg873qiYiD37oJ0O8Ot
         OBpQIeaM1VffAr6fZyZ21os4e+ydRxnZOUrNnXJmJpwI1ZXHiBtNQO7ghcvkR8RHSycy
         ycPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXm1kZkQR9vKz3vu/AyqAmMDcVxx6ODCOPaK+Zhxi2FpJUVurGd
	xDounhithHtNddA1/CJLAnM=
X-Google-Smtp-Source: APXvYqzPbhY39APbZ/+vWx7o5NhzcYNKeywEYUjVcpUxos/fJmlV0aOFf4j38Mr4ggvN1/cMIXYHjA==
X-Received: by 2002:a05:600c:204:: with SMTP id 4mr6829908wmi.167.1567016420536;
        Wed, 28 Aug 2019 11:20:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb44:: with SMTP id u4ls4207wrn.2.gmail; Wed, 28 Aug
 2019 11:20:20 -0700 (PDT)
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr6690780wrn.87.1567016420079;
        Wed, 28 Aug 2019 11:20:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567016420; cv=none;
        d=google.com; s=arc-20160816;
        b=G7BpWDeVgbmR8XaJNCjGDhLCa4arFVgn68zVgPZmS3ojfhk2tbWi7Vj5LrRQQvSOoD
         a7EZ1zYwANekgF+ULptMprXY51lqETjQAn5Gt6tkIs9yIDYgRMaK9QCaufawifXxwUwP
         nxmVC7sYWmTX4wax/bLrR9vRjSDkFHz+S3sE3KVRbR0Qx8/zlLq3tPuPJxUcGHPBKcEF
         e6eFZET0bzx1MMHtjEqmhtaFXQQwqYvqf7+IHlAlw4PWldiFhoLhdcXaCzaLjVIDPhHE
         grJIRX+md5B0cr8siljiXCjxCl3XYtsfcj+dRsPTFCo9avGJJVCp3GVJgQ7NQVT/xPj5
         Kamg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FmZWuyzXgdUwXVfXnARqmGSbKSR4TizqVD3AQkgzi7A=;
        b=LwRx/0GXVKedOQBfLEKfE8OrfLu6p7+iaDtmXC0y6+yO8NqrQb4zZtwNGPxS+J3XDC
         0sYmOwuO6c5kcVgMJ8Vlh2O0cULoeWdzVgnb2tSaN9rFf2YCs093LPtsPTWtXLDpfuzZ
         Q0HCpPQ2cPzb5KwbGj/HhXIfN3XT+5DzcPA49nOLJhnBRDbRbgR7al2UKF09vpMEH6vz
         fQC/20haEKfGcXvjD/IjT+H6bDISWDmzrDXGN+zGM9ps51o6YHW//QvD9vyV1jdSINZy
         ckCwfILHhgVv7thATILRtLlsez8Qpw++GoKYMx1k40KnDaHOwT+iItOlChE4CLZaXscV
         Cd2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjH5XczQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w17si157918wmk.1.2019.08.28.11.20.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 11:20:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id y8so730414wrn.10
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 11:20:20 -0700 (PDT)
X-Received: by 2002:adf:8541:: with SMTP id 59mr6357653wrh.298.1567016419538;
        Wed, 28 Aug 2019 11:20:19 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id o3sm2017589wrv.90.2019.08.28.11.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 11:20:18 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:20:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Sven Schnelle <svens@stackframe.org>,
	Xiaozhou Liu <liuxiaozhou@bytedance.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
Message-ID: <20190828182017.GB127646@archlinux-threadripper>
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <20190828055425.24765-2-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190828055425.24765-2-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cjH5XczQ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 28, 2019 at 02:54:25PM +0900, Masahiro Yamada wrote:
> GCC and Clang have different policy for -Wunused-function; GCC does not
> warn unused static inline functions at all whereas Clang does if they
> are defined in source files instead of included headers although it has
> been suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> warning for unused static inline functions").
> 
> We often miss to delete unused functions where 'static inline' is used
> in *.c files since there is no tool to detect them. Unused code remains
> until somebody notices. For example, commit 075ddd75680f ("regulator:
> core: remove unused rdev_get_supply()").
> 
> Let's remove __maybe_unused from the inline macro to allow Clang to
> start finding unused static inline functions. For now, we do this only
> for W=1 build since it is not a good idea to sprinkle warnings for the
> normal build.
> 
> My initial attempt was to add -Wno-unused-function for no W=1 build
> (https://lore.kernel.org/patchwork/patch/1120594/)
> 
> Nathan Chancellor pointed out that would weaken Clang's checks since
> we would no longer get -Wunused-function without W=1. It is true GCC
> would detect unused static non-inline functions, but it would weaken
> Clang as a standalone compiler at least.
> 
> Here is a counter implementation. The current problem is, W=... only
> controls compiler flags, which are globally effective. There is no way
> to narrow the scope to only 'static inline' functions.
> 
> This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
> When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
> the 'inline' macro.
> 
> This makes the code a bit uglier, so personally I do not want to carry
> this forever. If we can manage to fix most of the warnings, we can
> drop this entirely, then enable -Wunused-function all the time.
> 
> If you contribute to code clean-up, please run "make CC=clang W=1"
> and check -Wunused-function warnings. You will find lots of unused
> functions.
> 
> Some of them are false-positives because the call-sites are disabled
> by #ifdef. I do not like to abuse the inline keyword for suppressing
> unused-function warnings because it is intended to be a hint for the
> compiler optimization. I prefer #ifdef around the definition, or
> __maybe_unused if #ifdef would make the code too ugly.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

I can still see warnings from static unused functions and with W=1, I
see plenty more. I agree that this is uglier because of the
__inline_maybe_unused but I think this is better for regular developers.
I will try to work on these unused-function warnings!

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828182017.GB127646%40archlinux-threadripper.
