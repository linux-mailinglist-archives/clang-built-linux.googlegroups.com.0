Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYFN3H3QKGQEOUJ77WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C67620BA0C
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 22:13:22 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id s18sf3328436vsj.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:13:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593202401; cv=pass;
        d=google.com; s=arc-20160816;
        b=GzH76MZYeipQWpoVvIOvo3vbn32wVGJLvL5bLwfFoxwKTHG3FjygtaxOVxTil0SzaZ
         hyD83nxOduq3I8B7iEUYxVfN59z+WyJRYn/7F93XkgbfY3ryb9oERMeXW47vPT5VIo0c
         P8GUrIUIejrfAQusc1o1RuGyAss+njE2MJBJpPUOb4U0VLLoSbiISKH5DAXpAzsHhQiu
         vh4upZye/5tYyWztmUD9bWlSwlLeZ0jHjnzB6eqTa25qWIxAopjgdCNPRErO7iK+QlwS
         vqDDP6Pb4jJ41hJkM5y1zCLcVFpjL3Fu+nW1yrx0dwO0u5HEe6m2YFSAM7rgXz0D8irS
         pEPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ihC7P4GzTeWmysHK5tmjs+fUfGirRgU/WRVvQ0XEAFk=;
        b=wOAkhkzRp/DiY7Kct9c/2Kw58tMB6UNcgNL8+OCn/0LlMJNyOHfiwEPoGcV4114/0H
         yU5e/gZkn6D5JR1TrdT6HYDob7QwjAgIGOgfVZ6RKQq92tbagVdWtIJabeWKOsvCSP42
         Lno1vk3Bn4LfDSXF5jmycoThTsVe5lxCsceMydOklS9i2sBV44WABUCCQG1WgdWfZEon
         kXP8Qm2Q7HtvBQYb44WtiYRI4/YzDX8wo/M2dWF7dOWXhVoLbi54EqHOumxx6KGzs4lL
         khglot6k2TxuApje2/rcfRlt/HW5Pd6hbyQ5qTS0uHdjKjqV29dh+B3RjgmZWNyWS1/R
         lnKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kaoCNqPS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ihC7P4GzTeWmysHK5tmjs+fUfGirRgU/WRVvQ0XEAFk=;
        b=bK2jtJroymZZ8U7z3bPZFlk98kt77S2VSECXXSthmSdBwSYwpEuzARbQC0NzLR87v6
         GtPk0CTVKo28UMqRza9FNf3AoqAUkd3xb85ruf9bqXGPWERHTLEXLtW+ibaDgF+/oaY1
         ZpQE5c60abAJsINmKsJBxG5jBV4E1j9WoZOwryEeAP+en1Ag4c6Yl5rWdSWnU31iiXyY
         JqL9zthmDniTrISEUng8wVKKkDXMoVzmQuPdG7J8Lo9Ih399ASPRwrs4B0wi7FHz4N5g
         72cKBLFMNFajXWPKWPte6WWA6/LyTVbtK45DvdKsf/zIGrAITtwzj4znUs9KC9z2c7sx
         urpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ihC7P4GzTeWmysHK5tmjs+fUfGirRgU/WRVvQ0XEAFk=;
        b=ObrvvduTqUMyCZfjWBlg0FQMQpQtK+5vbQXwalS2p0b66WhqK7dSEhchEKFoG6dBYt
         TrpQGd6yLTOYcByCWBkvJh/sAXkIggYApgLtVC8ScMXvZra5O2j9/nfazKEL7BXvUDCy
         ra9L+io/vbjFsJA+SN7K+K63YM6wIZG/4Xjexq+LyOfYfHpCOB/daVClJ/IVlCAiy0kN
         czcNNg3VUmjWr2SvFzDF929kucbCSbIJBiL1+xZlkThHA/imOU9ULEZHfBL6y4B0CgZv
         VvQ6mq67uwv6wKoBJxc9VL1YliMpVG6p047/tk2JPRk9usK6t1tJJUKzBaRQi8RqlRNz
         IOYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305VaoEqz1/xX9UIrhrT/5yRXVckO4BYJY0ZSBu8R4Up6YrgFVa
	6Y3zYsniAuvaNinoPvVEzaw=
X-Google-Smtp-Source: ABdhPJxin/q66KFj6eO114gxDCJ7hnDgd1G4xKXRJkPpPps9ZpMnUbJy/5m4spKi1KqvV94EUdfwUQ==
X-Received: by 2002:ab0:63da:: with SMTP id i26mr3870809uap.68.1593202401066;
        Fri, 26 Jun 2020 13:13:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9c01:: with SMTP id f1ls517804vke.9.gmail; Fri, 26 Jun
 2020 13:13:20 -0700 (PDT)
X-Received: by 2002:a1f:6084:: with SMTP id u126mr3559855vkb.56.1593202400751;
        Fri, 26 Jun 2020 13:13:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593202400; cv=none;
        d=google.com; s=arc-20160816;
        b=pWcEPOZc9zVHL53RM/YGieXAWWr2hhJlXuPMhAyh9M6jLKUqK42HZ9dsKTgqX4JfWl
         JY0SS33T/Zm0W82e/CntGj3Z0CxoMppP8phFa9ErNRQKTFkN0dNRZp/H3TURa5B0Cwui
         +bwBGnVkhdcGQaAxCuWsfgnoSg+y+W3TRcMYhWr6H3AZDLREQmv65PJMM11PIdM1pjxU
         N8qq+CPX/KwTuY4owb0E8XSxIUjti7J7aTPM+gYT/kk6Y4ZoDQi7r2O0IUJP/LFYtkyd
         C8FsoPpxzcROHSjfbP3ofKP2XSlqlgA5bn+QmAdLeH71rb1sDWw8IioQiM4rmrrsYCX8
         W1wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Az9RFFYtn5C7TmV4P2ySXpJMS+ldXmIwmwoLtzgDuS8=;
        b=XWSY8srlFCkCuNtGCC2rVe4Qt1r8N0YAwVl+e1RGMPirnuzoSXZ16NKQn7Agvtmmq0
         +ozzB7sCtjmgEfRkszBvm8dov2HwblXCdJ6HYc3erIW4xVSxIGz/jiNUKEQ8i64rOqPs
         lnG7DiB/1lGhy3uOQ0L+dTRbwLgJeWn48NGNwxF/03YlC6KO+DiAlzJEj3RjWwHGD32/
         R12ygRUbq0g+OanyqtkfCjCmUXVXSf2nZbUmV4YaQx9+Wx24OAc2mizoZWH0y8iNJDkq
         m5WuGe5ALJ6JDwXK+HQabjaBqISAOE1KzdKeJOh1yfl5kH2mcuGWQgZsVc5WwNOvsi7s
         2oKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kaoCNqPS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id y197si749372vky.3.2020.06.26.13.13.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 13:13:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id d6so5378180pjs.3
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 13:13:20 -0700 (PDT)
X-Received: by 2002:a17:90a:aa88:: with SMTP id l8mr5328566pjq.145.1593202400000;
        Fri, 26 Jun 2020 13:13:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y187sm26950121pfb.46.2020.06.26.13.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 13:13:19 -0700 (PDT)
Date: Fri, 26 Jun 2020 13:13:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
Message-ID: <202006261312.560B045E@keescook>
References: <20200626185913.92890-1-masahiroy@kernel.org>
 <CAKwvOdnK4KZaE=D40UyKHN-nB1Y-oXXJUcVv08cGJNsExOs-Pw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnK4KZaE=D40UyKHN-nB1Y-oXXJUcVv08cGJNsExOs-Pw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kaoCNqPS;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

On Fri, Jun 26, 2020 at 12:09:37PM -0700, Nick Desaulniers wrote:
> On Fri, Jun 26, 2020 at 12:00 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >  CFLAGS_NO_HARDENING := $(call cc-option, -fno-PIC,) $(call cc-option, -fno-pic,) \
> > -       $(call cc-option, -fno-stack-protector,) \
> > -       $(call cc-option, -fno-stack-protector-all,)
> > +       -fno-stack-protector $(call cc-option, -fno-stack-protector-all)
> 
> Just curious, looks like we could do the same for
> `-fno-stack-protector-all`, here or tree-wide, right?  Wait, what
> compiler recognizes -fno-stack-protector-all?
> https://godbolt.org/z/QFQKE_

That is from ancient times, IIRC. -fno-stack-protector should be
sufficient.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006261312.560B045E%40keescook.
