Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6PK4X5QKGQESLYJG2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4F1282953
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 09:10:51 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id s138sf1540809qka.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 00:10:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601795450; cv=pass;
        d=google.com; s=arc-20160816;
        b=nA+ghK0rwSuXnqDzjrJEGV9cZHslWVhePGywjUY5MIt/ojiSJTcMH2scP/FVmDaTme
         A8pVs16r+6j896OwW8bTzkdWwzjR/HHmfdOxSB8Gy6SIrQNdoZMJBDORRhqeoLkn4hrZ
         qdx9i6ZWrO5nSIruMnTieB8yo3RMITcE+NyjpqYAKwImLMweNCROL2hXnk4HCQsDj++o
         9V/IVfaYxSMCouZBz9D9CBPAzQaAsGbNf+0fzgLFhuJ/3fNx9FnJ4xVGsoFSE2wkxWts
         MeKXqvzgGdA7qIV9ykmmQ0nq/ukMWIVuVJqxI+olVdFGETpY9RySbSMqbHC1HoaKvAHm
         867g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=QJPUuBLpuyh+hBVICkG8v6BWxyhOn5SaE9nBXInl/1o=;
        b=0h76yxaXP/CsHmWoYudAL5joQF7/EY2G6hF1UaqUW2ZTqChtA7J8VMO8CygBYAIibO
         NObePqV2/Mim5SVjIBx5mXepWo4DkeYjvz2a53slUt2uPrMJ+I+TQfhGPANtCRft+4fY
         iCNNg4qN75wNtZej8+w4MrYnOANTQgBLuDpA6GbVEewiw55KrF60xfpX+tDXTBoytSHJ
         8hLmZndx/pq+tEvCt6t39mbyLOU6c5TzUIKi8bW7zcUvp36Z72rCRZEPTx4HpyjUmGoE
         O2KIu7hIfmxxVhOgrPXzHqiiUL2WX7JIPPXohxWfdDu2q58a8JR5vOB7K+jw/f7m8nrI
         UqxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D5/KwKAu";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QJPUuBLpuyh+hBVICkG8v6BWxyhOn5SaE9nBXInl/1o=;
        b=ZTRtWZeAMhamflmqHRrKzf6b/NO0f6GLyfgUnNOQ0p/zjqn9wyxijTnyPiQ+vADdjS
         +1R4NWZg7yJ5xK2dWol1ox42pgNLayeIDm/w8hoOQZY8LielKE/wiN/EJubPlkqWUqd4
         gg7frzSQHgsu1Fve7DO8IoS4jVqo7hfXGpXNYILDRiZdHc8OIXITfJmfRrLY6z+lNg2r
         NiEdu89a9y5SSbvvc4LdM1ZYPP4lvo+ivKCOcC2CnP23NSWevsTe+LpD9auNQP2qd6A+
         AJ62LZzjeCqd1z7UJK8cwjbO6tDCbeE7i3INiRxdc6wIqbeMB29HKijyt5duP2v1lXkg
         R1pQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QJPUuBLpuyh+hBVICkG8v6BWxyhOn5SaE9nBXInl/1o=;
        b=pS/aMxIwIG4dLdTA8qos3Nna9pFaahrBf4I7islGStHFnSp0gnLFgvbWuGfR9Ugm8v
         WFB9VWlM1vjxWiAkYD2BB/2yZmUD61uRBpSNDUxpwdytqzfiN9CON3Dt4C+D0sS2mV3I
         0Ud0YIEWpqOSkpjvnxWTDnWHf1STJVriFy3I98xIiybRXOeA4qB85XriWXCg+qIy9YTL
         bEnwCA8eQDpQvAbr6FLjN988VOQ0VPa1lJU4XybEN++HyGueTjNTqASBQOptxVwtP5a2
         NH1cFnpY3+nMVNW7N5O3pov7wbzDD3SJ7gOvSomGYNexY1cDjap3mpkDP0bw+OKbbl8l
         XM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QJPUuBLpuyh+hBVICkG8v6BWxyhOn5SaE9nBXInl/1o=;
        b=iiL3HrcK62hXMPoJAJnahN4CQPHBUf3q0oD06CzzaQ4jAXp9jz/va/U7K3l6JuyW+8
         hrkkleWn26rpSRdwxOhkQSiGIm4RI17h1yfTLe5eOCM9yt8wCnI9WjKCccXLEK/cqQhr
         Pi3hzXvNP5hA8ebl+emBpyl2vTG0Ez0QBl+mQG8YmB+5nNMX6vlIzVWVbC82EtZtaTti
         0ipJ9tp7WLWV43o+XFiEIcwnCiuHy6o1Wb8km72/eqBi8+aTSKoCIh0IbC6Vqgsewolz
         meGlRtJFQyAZRlboCIE8zwhpe91ujV3yWV+x+7qqq4L+ZsKzsyMpMOoXhLZtaYG049xZ
         0zTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UTj8OqJa+qoXS2447xjG0+JCzCsC2J4EozFV9n656CdcSWBlW
	HRWgJIMz9v+TxZmQMPqvnJo=
X-Google-Smtp-Source: ABdhPJyrazoXv+kLcRIW3p7V9Rfstg9+8zzdhJGb7L/+fDcDJnPiMmj2bqfbNAl5PzqUqReHthGckw==
X-Received: by 2002:ac8:37bb:: with SMTP id d56mr9025082qtc.222.1601795450031;
        Sun, 04 Oct 2020 00:10:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:42b3:: with SMTP id e19ls1489684qvr.11.gmail; Sun, 04
 Oct 2020 00:10:49 -0700 (PDT)
X-Received: by 2002:a05:6214:1181:: with SMTP id t1mr9358210qvv.11.1601795449556;
        Sun, 04 Oct 2020 00:10:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601795449; cv=none;
        d=google.com; s=arc-20160816;
        b=dXJbsANsA0G06fY76uuGEjLk0xoKAW/xDWe6CuBgZymlHlbaMeZkqL//LFeK24ng87
         hPhWnoiWD1VVe2S8lyZE3bjCkV//69HdQQtIoyKNMYG3sXzDp1DzdurxGetLw2XUgyVu
         S8KehszLf1kES/8FIDJYUzeL/zpKAU17NJc8c8JT6IFPTbyflh1sQDeYG1FD27evDBtO
         r+usyLc+BtT47BuOXZuvZXYN+nL6HtpSQX9qs2e/TJJhOvJkhh+fJq9N4JWNIba/FwbD
         M/V/bdIy6WmNqkWPp/p9srvOprk9M7VC3HkUwfxs/xdPZEVXl2Xm4X7ZFllet8Gjcftk
         +sRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1lp3ONKRIcSr1E/HUlOYkge7MJGQfoguGKaYXDrNni8=;
        b=kW6wbR1/ircwzIHao7d31btMcq3Xp031QtnVl2mQDrirL6JKrCQHcg62RvBBEDClO3
         Uid8xM43REfGxyT+bmWcTGt/F7NwyhFj0IZYYtZWl9q5pFvCY9s40XdLi4FKjlj3xXy0
         elVu70RoXcGm+D+FfdwKp4aroyTPt9W74ep7w7yxX4DLl9+ZElfLvKa+9r7ZR5AoFF4U
         ogdC4JHbKB7L2g8UxbDHJuEf67hZBEv8GIRr+Zi4skMo03twWdOTnNjdELo2JcJ83iht
         Pa/yAro0t67q+mqMx53iTRLaM5DvQqY5hpOJPUH81Fc8HaRKrrYm/duIVXFZXorgTazc
         A7EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D5/KwKAu";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q5si333567qkc.2.2020.10.04.00.10.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 00:10:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id o20so4387967pfp.11
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 00:10:49 -0700 (PDT)
X-Received: by 2002:aa7:93a2:0:b029:142:2501:39f4 with SMTP id x2-20020aa793a20000b0290142250139f4mr10611073pff.67.1601795448728;
        Sun, 04 Oct 2020 00:10:48 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-3-136-221.ph.ph.cox.net. [68.3.136.221])
        by smtp.gmail.com with ESMTPSA id i17sm7755066pfa.29.2020.10.04.00.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 00:10:47 -0700 (PDT)
Date: Sun, 4 Oct 2020 00:10:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] ubsan: Disable object-size sanitizer under GCC
Message-ID: <20201004071045.GB1650@Ryzen-9-3900X.localdomain>
References: <20201002221527.177500-1-keescook@chromium.org>
 <20201002221527.177500-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201002221527.177500-3-keescook@chromium.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="D5/KwKAu";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 02, 2020 at 03:15:25PM -0700, Kees Cook wrote:
> GCC's -fsanitize=object-size (as part of CONFIG_UBSAN_MISC) greatly
> increases stack utilization. Do not allow this under GCC.
> 
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Link: https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  lib/Kconfig.ubsan | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index c0b801871e0b..aeb2cdea0b94 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -104,6 +104,9 @@ config UBSAN_UNSIGNED_OVERFLOW
>  
>  config UBSAN_OBJECT_SIZE
>  	def_bool UBSAN_MISC
> +	# gcc hugely expands stack usage with -fsanitize=object-size
> +	# https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
> +	depends on !CC_IS_GCC
>  	depends on $(cc-option,-fsanitize=object-size)
>  
>  config UBSAN_BOOL
> -- 
> 2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004071045.GB1650%40Ryzen-9-3900X.localdomain.
