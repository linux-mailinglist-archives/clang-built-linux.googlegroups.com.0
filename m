Return-Path: <clang-built-linux+bncBCZ3BP7LXQLBBWGQ7GEAMGQEEZ3M2SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E50FC3F1B7F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 16:19:04 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id l12-20020a2ea80c0000b02900f5b2b52da7sf2177120ljq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 07:19:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629382744; cv=pass;
        d=google.com; s=arc-20160816;
        b=TITztsAJZ3x52HE04xLB/PWxGimnif/CgiKe28IKTAwFxtR07IFGCG8wh5zTCf8m7J
         HWdSiZrhZR9L6lb3Qdhj9KnMm7I3PSveVGGIXdc4dHRpnktqba+KC6+XBbxnUbWlNVh6
         qICtVYPFriALj85DMj1ZxD0h7DStIz77iK7M9Lo2knpxeVx2hrxa3oOHccj7rie8Lqk6
         6efI6VEgvG0bUeVCT224/30C3wTemDu/LUW52036YieHVamKVUqOPElZwCnvztOmG1+f
         wPP3ITcfUPOAAh86aCufRwFBTOhbJCfuvXiVsZ9RK7s7FWo2Kb/qGe7c+hd22phsz0ne
         vPHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DOquDtSK18kgQAEzYKFgVrZDanzlFx6DjihNySMxHj4=;
        b=MwYT2+h5CYe/7WztT0TLmWaYj9UUP/0D0n54kN1bhOfuXkdhPCfzpcFqYjeEPiwmJh
         ijC5TM73iPSu9b7JeimqzSzuK6kuvWzoNidofSm/PnnyicEaUMaDE0mmr72GF/IVBmqx
         W2N913weuGmAYzTVHrYLAyizS9BICBbefllkhjzdA7NfnQQ5ITIbdCA4y1vL7NaDa1MZ
         q+uOJBqTNJZyCryIDGRguiI7P6LL+xiyAZvIOKX8/oqimDgoohcob7tGzc4gPMGY6mz2
         0VaAzdX/rJXErHjzOZFy0h7bAfiacWtqv1LUhg+1+xaAd0effzuxeGpyxxm0LN0H5qs6
         ofdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sJy0lKg4;
       spf=pass (google.com: domain of danielmicay@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=danielmicay@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DOquDtSK18kgQAEzYKFgVrZDanzlFx6DjihNySMxHj4=;
        b=XnEHqDvgyx1rA9DzkEUzqwnp5FJWAxeOk+k/mNaiurPE9/FM/8wVFtpPwg0i3BEgGd
         i62nnbzMpz8wbiw28PHPR9x5W8TUI3I1zVQLiTI82pqPpBC9BSLodQv/NuP8/R9HaoPR
         v1Ifnb3g5N90bWggl6DPHndo/WQpIGk6FEJmdlgRXoNwqeas43Xpz0MN8fBlRrvDlLjR
         69TrvyetYD5TZYdLy0MUDzvihR9+gjtsYfDpzOtxD1/F73Vzt6dxz2Bxb/YMkFoVL0LV
         DHUuOV1I8eDsglr2HU+GuHBNc7kNuDFr6l2rtPUAw9I9h00TjrzshJaARhjhwlEadAUX
         P4ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DOquDtSK18kgQAEzYKFgVrZDanzlFx6DjihNySMxHj4=;
        b=gAKG4xyB7IlfVgYCyjL+uKikUvkSLxsmhipaQU2CHElVfhfK9nvmcTR8/wIuWOHDwU
         /gwTQsnJoETy1xK0YC9XJbO0ku+71o5B4EE3HSVPnGNRHL3D1Oc/j6DwAjCPmapv9/nr
         XruHXlzkKXZbjV1T6sa/0bF3sE+MZFiPSpfWSKRWMK7qieh8zr5G5DXeuo4b/UkPPYyE
         yVypZH9aloQ+27XOr0b8i1x67uaBcSv9yaxZ192s1yJmVGjNRkCA5rVepSlWb0iZVin2
         rvLHHMVYALibzYpKZxeccemdAefgVZtyDda6zwGwl4NOAHh4LnJgU19i1nuyfD6mOZTN
         JicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DOquDtSK18kgQAEzYKFgVrZDanzlFx6DjihNySMxHj4=;
        b=en3XOMq7+8NsR3zBUtSSszCmbYzo+4yPzVVkOzQeiVumhfkqO+UjvWuL4Hb2760sD/
         iSiy8cuscOgwmB/JU1XorrqPVZskbi4YXyoG78GS9tYRuKY+d9G8eXWNAaIDxZguiwx3
         000l5K740u6TnruxjeJCfUplM0NsG8sp0OYvOP099TeZzvUrpPZ/ZXoLXqOG8XGOA5r/
         58b93mnYZsupsmw3R+cijl2m6kHSZggTqXrTMoS6QqIZb4lcnpwkBEPpryJg+yvyy+CI
         op6yz0Fuv+FvyhJM4Es43sEfEEwT34ivMOHHSyjYxPWXMQxCVPMRM91pqmAi4O4zM8VO
         qCPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uRsXiBRjCrKPbFXWUNQj2lf4Zrt/Z2THu2vicYxLboi9swiYa
	CysIrOcRXhwrp+IJy+H/1tE=
X-Google-Smtp-Source: ABdhPJz5qV2qCR3iqqDP8Q9tHGk2FrJ0+w8km2erEKDaL7JUfTB4bR4lVpxYyc7+QXUHDcZLLUvJtg==
X-Received: by 2002:a05:6512:6c8:: with SMTP id u8mr11285970lff.130.1629382744508;
        Thu, 19 Aug 2021 07:19:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:c13:: with SMTP id z19ls807619lfu.0.gmail; Thu, 19
 Aug 2021 07:19:03 -0700 (PDT)
X-Received: by 2002:ac2:482f:: with SMTP id 15mr10619508lft.337.1629382743490;
        Thu, 19 Aug 2021 07:19:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629382743; cv=none;
        d=google.com; s=arc-20160816;
        b=xu53h/pgbcvxpJz8OcPJCp7wyt1SabGR2GzOCcl1kCrmdysOZkkR/qvQCDEEVe4NSi
         0eN2h4F/kZ2mLma+BahNQ7txBJqGUKyM//rBGWBxVeDa3qBumzAGoOJxX58mxW1nJpTa
         DHJTbwNk2qGr7sdfBlu4yKTxagSTSURuau8jUDWTEFQIlaDgW3vUpv9oaqwl5QqQvlAb
         PnFgk2qwvIF4o6+gYw4BzqSnw1cgyD672GbOvBTReAECAs7o8m9XAPPwu9/kJFPz5V94
         n1gG2pXBJOY8x7KbIa5IfL6rQipH/kfh6ikLO2tqO0ivrUPPpnj0ZcK3Zx9Rupc+jKLu
         Ub5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m7+BP1bcT0EhLLn/h4/nBsVXxgUv4mRHVL2f79asbyo=;
        b=GrE61TOddYIqHDdVaN8U+7cD5jFmj00B+/xwIzC9TvToNJMrVjr6aN/ofcQWKo49nX
         /78r78+r9srkw49xIFJKCbqsXG5VdipdKkUJfSUKX01MVHatgYQoVrWyJd1aQXOzVtTN
         zklUt3uoWrLTh8Dz9WXfW4B3VgNkZ+HBzSid8PjE4e3ebKedMoME25rtL7cWDMHjdWzU
         v/gTvqk+5h1Se5/l0BKQlv2EFpeid8rQxK69xNHL52ZOXyjcUKcr+tDOu04TUsouyaRL
         swhwvdVETKM3RhreDcMyDsKKlsVqhDHjr20GEiv0rol7y9Nr2geUhCHF+pE+g26Q8wlr
         BsPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sJy0lKg4;
       spf=pass (google.com: domain of danielmicay@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=danielmicay@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id g5si168158lfj.3.2021.08.19.07.19.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 07:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of danielmicay@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id q11so9379193wrr.9
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 07:19:03 -0700 (PDT)
X-Received: by 2002:adf:a29c:: with SMTP id s28mr4132793wra.318.1629382743247;
 Thu, 19 Aug 2021 07:19:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210818050841.2226600-1-keescook@chromium.org> <YR4frlpfJQonPuKp@infradead.org>
In-Reply-To: <YR4frlpfJQonPuKp@infradead.org>
From: Daniel Micay <danielmicay@gmail.com>
Date: Thu, 19 Aug 2021 10:18:47 -0400
Message-ID: <CA+DvKQL6pLfK1vRzaOkEWR7DQLgTh=WZTka2L5yuS8Lf_1ZmoA@mail.gmail.com>
Subject: Re: [PATCH 0/5] Add __alloc_size() for better bounds checking
To: Christoph Hellwig <hch@infradead.org>
Cc: Kees Cook <keescook@chromium.org>, kernel list <linux-kernel@vger.kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, clang-built-linux@googlegroups.com, 
	Linux-MM <linux-mm@kvack.org>, linux-kbuild <linux-kbuild@vger.kernel.org>, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: danielmicay@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sJy0lKg4;       spf=pass
 (google.com: domain of danielmicay@gmail.com designates 2a00:1450:4864:20::431
 as permitted sender) smtp.mailfrom=danielmicay@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

It tells the compiler the function will either return NULL or an
allocation of the size specific by the parameter referenced by
alloc_size. It could also be used for functions resembling allocation
functions which aren't actually allocating. The compiler will use it
for optimization so it's extremely important that it's only used
correctly. It only really has a use on the top-level API used
externally.

The compiler uses it for __builtin_object_size which is primarily used
by FORTIFY_SOURCE and also internally by -fsanitize=object-size which
will be available for the kernel via UBSan to find bugs or as
hardening in the trapping mode. There are currently compatibility
issues (undefined out-of-bounds accesses) blocking using
-fsanitize=object-size beyond fixing those relatively benign issues to
allow using it elsewhere.

For example, it will know that kmalloc(n) returns either NULL or an
allocation of size n. A simple sample program with calloc in
userspace:

    #include <stdlib.h>
    #include <stdio.h>

    int main(void) {
        char *p = calloc(64, 1);
        if (!p) {
            return 1;
        }
        printf("%zu\n", __builtin_object_size(p, 1));
        return 0;
    }

It will also detect an out-of-bounds access via the allocation with
-fsanitize=object-size including with a runtime value as the index.

It's not as useful as it should be yet because __builtin_object_size
must return a compile-time constant. Clang has a new
__builtin_dynamic_object_size that's allowed to return a value that's
not a compile-time constant so it can work for kmalloc(n) where n is a
runtime value. It might not be quite ready for use yet but it should
be able to make it a lot more useful. GCC also seems open to adding it
too.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BDvKQL6pLfK1vRzaOkEWR7DQLgTh%3DWZTka2L5yuS8Lf_1ZmoA%40mail.gmail.com.
