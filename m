Return-Path: <clang-built-linux+bncBDRZHGH43YJRBWOO3TWQKGQE2DBGR5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F69E77B9
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 18:37:30 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id t203sf2579869wmt.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 10:37:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572284250; cv=pass;
        d=google.com; s=arc-20160816;
        b=svC1UMXNeBVR6V7Uo3fDUbcEmVnhmEG9qPhOJRwOqw3h/Hp0lB1RF4bo9gQ5+ujYTM
         PVolZhLxJXTqRYWydrrx5EfOa7YsNXVmMahyAnrr7k+iKBhaS32gq8mLJPeSLkAm9A7a
         9NkVDYFXnFJWci+EDIxZyquoGaxuXr4Htr6i6tJbyezDfnQ6pcnA/pKYXtmT6oeJ1VD1
         KvzVaiorz8EYXp9qCjIoWRcL+yRyzOrFikp/6ZefoX8d5kNPWqmFOtq3iALrYEVBu+/t
         ryBBbTezO2GobIRWu9204Vm3Zs+aJt6HvZ8Qs08JaPWcaDGzA2ZX4Dp2yZMpnmIatAzZ
         OfOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=C6NaC67ug+ysIm/WuviafgQFeVU+B2Q9eyN1wZoVoxQ=;
        b=cxsirgMkVKwA+egSnD0+1gOmt9sz09JF5qLctgdW41RQbOTCdJRawA8zAs/FXbb9pf
         hg4je9oWIAMKFr5DdNMnrjU0INFspj890k6m27Hfzuz/gnaBdb/hEUJ4kNVPeG+ksiTD
         kwk39/enJsGWkZ46CfMwQIKnaz/ECuwESWhkodZ2jG668nOsf5e5twpxzYywJqNh2Pe2
         /eswhG8ZTjuzxDIqpY1lHanUu/iCZjYSbN1Aw9HoulnLISV86E8DhbT1Wa13iv4uIb6M
         b0l5Yg9m2+WDngTFN2t+Xnyf6eAgrWwj++FdtP4ZTjf3Ct0lmXjdhY8BFZ/tjhV3SgOx
         IUrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0PUA4Tj;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6NaC67ug+ysIm/WuviafgQFeVU+B2Q9eyN1wZoVoxQ=;
        b=Fa4n54D6k7m9QIDg49mnC5PSyghhHLmptlbm/v58VkfjnqnQAl5jYINffqmMO5cTTW
         eNqAddilT7Jg8RlFXElzliB03uPQmPdYEfHsDJ6EtYQ7LT86zDmIQivWt8Ec710XPMfx
         DYqXkbjayzQoVh6LkuaOgKFt0HshhAJdljpszrc6wqs8iVjFIpNEpel/WYZsFag6jGwO
         kTc8B2g3wDQr9g6yx+qDijcGbkGGrAzIltXGj8yC0t7KqG5h0jZY7SgJStLxxJgdiWwc
         AKAPiyibFvI6lR2sIe+y0v7SUleTIAxQ7/KstlLq/q08EUMk/ULE0Dib8oINQ+zy1v4+
         tJRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6NaC67ug+ysIm/WuviafgQFeVU+B2Q9eyN1wZoVoxQ=;
        b=aV7ESr/nFQlIMFaXmjvFpv4A1Wc5wusmA3Olip5UuHE+gyUs/5/Y8aamekNmKAHWwf
         ZKU+MUhQEwiwpAzZ8cxPssgoq1zO04/34iL38hl7LAclvmPjJXoLW3kXHiIUclYaLIOT
         Txy3cVbRPQY3el3T+bohUcG8zPwT+C5cWRRQPU7ReoTUC+ys4gWXfAUulEh1Kv9Kysgv
         DFOBlVjDKWhG0qZgs6a8yiTacx2X+7sksy31dcoDsOmfO0QdI/fZNYJ3PxR7Q+04R58J
         uKiVXok6NruK/Kkntn1VHyVTHQ9/VEVBaunQQ4eynQjGG/qKtLJD5jN4ubeUv76xtA7q
         4/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6NaC67ug+ysIm/WuviafgQFeVU+B2Q9eyN1wZoVoxQ=;
        b=WoTa5qG8ytwe2eG0c/5mRZ4v9Xu/jvqEsQJClU6mkt907GtrEO2W5STEHCVa1Oq/jm
         Ju7f9ImilpCilsEx4bsPwSYCOaynMoh6QLhsjJQCe4R9djKT/A+qP98K4Xg1zIwgBbTu
         oYwDpAWX//Ke+7WvSNYmzgrquqaz6BG+/op2Qh7rxSssOqfNzkA8Bx0dIT1YhPwpbFS9
         njXPAiMdBSnTmsQfb8sACE/+Vsj7WW+mLhkgiS8CbbfXdwhAZFi6SIpWyopq/aXpNtwb
         Mbtdv3h04Ci7+y454fbDO6FNB0AQLkSXZsnKSkllGxY9K6gELCBnjAhCc7vtJXphxzAo
         l+TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXVTf4AxVuoai1VrIi5QYidspgDCK6U0P25UaeG4vk00boF7frp
	uDe35ETegLi7FrMWnwQBZj4=
X-Google-Smtp-Source: APXvYqwsnD5HmenpGzsh2A38WCv5hOmDAf0p2xwLBtEAdV0pvBvCgpIQYoguOx7TH/SOwwEt5TnY6w==
X-Received: by 2002:a05:600c:22c4:: with SMTP id 4mr376946wmg.177.1572284249975;
        Mon, 28 Oct 2019 10:37:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9e01:: with SMTP id u1ls12638673wre.15.gmail; Mon, 28
 Oct 2019 10:37:29 -0700 (PDT)
X-Received: by 2002:adf:f0cc:: with SMTP id x12mr5491167wro.326.1572284249361;
        Mon, 28 Oct 2019 10:37:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572284249; cv=none;
        d=google.com; s=arc-20160816;
        b=dmq/FDcRtr2tAAFYgr5RiBHl+azdMgpM27dgxxMo14ZjLglEeSokMBrjHeCeEgph0T
         FcKTYEpPIBFvrPKJZc60kGz6qlB790HWB1JumrWXL1cr/an3hC/qn9Uqx76pQwc6WkxK
         rOqANiVDxT8ZgKDx8eCEQksBolUty0t+TUEeaupMc6Cr1VTmnbfwkXzVt/f35n0++eqQ
         00tDBm+b4lGX+yMLEsc0PktTKkSSfln7tfKle+YlopEL0FRy+DXdl7J8Lv3x6D3HBhn0
         CsjJWp6q8LcoVLPujQAAGUitlB/nrkewW1Xxyi1S555t0IZutgObXn1c5dj77e+W1BaL
         UCjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VuVinsI/3uiMH/uRjW5JsSQsBaqr+Zj6YBmT9PXcHok=;
        b=wbTJY+EzvAFMhJoqAqGjMNVrD+YhO37fmAPySIA2z0AhTZ8jmd+A1EuVBesZU01Daz
         LTTIu38tRqOETic23fUTqwpnxqU7gNsdorB8LcbRgrepvKLFJTIj4AEj4XnYvaRjaCEK
         bbVme1El4GQTcJx8dn/MpAB8GTtNlPh0B9vF5Q5EseRqOXhEAU806UTo344YKudmtJtr
         dU57YDfutrGmKJP9/Q25QJxI2Wnp+o4nLYAATkIWdv/8J1nAGRn/6eNnP60bv3lBsBu+
         4F7NG8U+dR9nQe39mYaBC11CgT49qOFr2K42qRDhhLLqDf/9iCDvE+wtJpkYeo16HT5e
         jrGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0PUA4Tj;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id e17si10430wre.3.2019.10.28.10.37.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 10:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id w8so7762182lji.13
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 10:37:29 -0700 (PDT)
X-Received: by 2002:a2e:320d:: with SMTP id y13mr7421528ljy.145.1572284248866;
 Mon, 28 Oct 2019 10:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
In-Reply-To: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 28 Oct 2019 18:37:17 +0100
Message-ID: <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
To: Joe Perches <joe@perches.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M0PUA4Tj;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Oct 28, 2019 at 12:43 PM Joe Perches <joe@perches.com> wrote:
>
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 72393a..b8c2145 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -5,27 +5,27 @@
>  #ifndef __ASSEMBLY__
>
>  #ifdef __CHECKER__
> -# define __user                __attribute__((noderef, address_space(1)))
> -# define __kernel      __attribute__((address_space(0)))
> -# define __safe                __attribute__((safe))
> -# define __force       __attribute__((force))
> -# define __nocast      __attribute__((nocast))
> -# define __iomem       __attribute__((noderef, address_space(2)))
> -# define __must_hold(x)        __attribute__((context(x,1,1)))
> -# define __acquires(x) __attribute__((context(x,0,1)))
> -# define __releases(x) __attribute__((context(x,1,0)))
> -# define __acquire(x)  __context__(x,1)
> -# define __release(x)  __context__(x,-1)
> +# define __user                __attribute__((__noderef__, __address_space__(1)))
> +# define __kernel      __attribute__((__address_space__(0)))
> +# define __safe                __attribute__((__safe__))
> +# define __force       __attribute__((__force__))
> +# define __nocast      __attribute__((__nocast__))
> +# define __iomem       __attribute__((__noderef__, __address_space__(2)))
> +# define __must_hold(x)        __attribute__((__context__(x, 1, 1)))
> +# define __acquires(x) __attribute__((__context__(x, 0, 1)))
> +# define __releases(x) __attribute__((__context__(x, 1, 0)))
> +# define __acquire(x)  __context__(x, 1)
> +# define __release(x)  __context__(x, -1)
>  # define __cond_lock(x,c)      ((c) ? ({ __acquire(x); 1; }) : 0)
> -# define __percpu      __attribute__((noderef, address_space(3)))
> -# define __rcu         __attribute__((noderef, address_space(4)))
> -# define __private     __attribute__((noderef))
> +# define __percpu      __attribute__((__noderef__, __address_space__(3)))
> +# define __rcu         __attribute__((__noderef__, __address_space__(4)))
> +# define __private     __attribute__((__noderef__))

Just in case: for these ones (i.e. __CHECKER__), did you check if
sparse handles this syntax? (I don't recall myself if it does).

Other than that, thanks for the cleanup too! I can pick it up in the
the compiler-attributes tree and put it in -next.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DB6XKwfkC9L4%3D%2BOxWtjxCp-94TWRG1a%3DpC%3Dy636gzckA%40mail.gmail.com.
