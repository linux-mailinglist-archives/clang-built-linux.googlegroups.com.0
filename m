Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBAEXWKDAMGQEEDWJM3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBCE3ACA88
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 14:03:13 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id t144-20020a3746960000b02903ad9c5e94basf5227351qka.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 05:03:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624017792; cv=pass;
        d=google.com; s=arc-20160816;
        b=JOMKktFjI6rD4qONcajTd3Ra2npSDW2WbH89OE/QRPz3N6EDtVQFOS0WEiwRv/wuLi
         HLJHwxlK7q5+NKVOrCEJNCfKMns1EPoROVWZodB80z6ZiiugYVs96g+eF0xBIS/6eBN5
         sTgjsraqRq81B2Yk0w58jEOuPwCzTOA9ik49COCEKi51UAQKRnTO0QCD/uvOx7FoQLLc
         Td17dIOIQBlJMZAbXRpzhNtL1GV4iLi2DQiESOIJJpqtF389tEnYR+vsg3+cYoqQ2lio
         UymrtWvTvzj1TEtXi0mG2V3qkzD252XXgJpKC01aNsDeDtT0x2S3ZlB8y86EiaXbmDAA
         Vu7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YwiiJTUpfhYWYeJ9XZMbgk3ZYMWDjpZRqxtgHzBBvdg=;
        b=H9mfkL/CsBX8U/PQxI1QQ6vkAGCOgXiL8kT//JlVDI6E8UNaPfD8BBSZX1QF5UkNdn
         x2mqZ0bPzgRa4b23i0tJq0xFNPX2SgXhTFvQE7L+O3Rxfh3OJj5TQIQ46I8FDhD7czG9
         h09AE7huwY887niz6ktl6X37JuVBkHYnEgsAzg+Y7V2AQ8TuXe1Z/cnSNZur21RfkyYq
         agJSZW06g+ZvtPLypE6GCGHsD/f9ribAn42KNolxXTYpKbszKRDpngC0bnQaGLDh/XGC
         nTyfKRQslMnQAd/B3IJipJgaVZMQ8n2+jny6rfQxxu08Q12VIDqf0FDQXeWBY23v3yqS
         2gIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gb36UT4i;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YwiiJTUpfhYWYeJ9XZMbgk3ZYMWDjpZRqxtgHzBBvdg=;
        b=fQo//acz+FAgzdeAd2kinPvJDQwNg12v+pX6FvL3D44GIpH6ULaS6218sB7RgryESd
         1gdDBAE7rV7XwLdyezbT7aRXrhWGLA2rbydc4Vxtt4i+nclhEGgHPflEOLHR/5FIOnEY
         5Ty3Swk50254lK64jT6Htrvv82RbT54XNc39RS3vdmGNjx27JkS0h/cyNfaRG6G6kgTL
         xFCfx6fntk+r13OOGNXudiIhUvae8lowwlrTN1jFiU4NW7mTLNWNGXOLeBcjaxZqKAhQ
         zgC73uwVM7Qhrwks+UVkXwYcmEnzOjSX2xzLILnMUsR22idKni/uMDc7iEzgw4YdxnTR
         BEwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YwiiJTUpfhYWYeJ9XZMbgk3ZYMWDjpZRqxtgHzBBvdg=;
        b=YiSVHzV9PI8hnINOLzc+WhsqRRNxJJNRlUbLn2R49syp4tQERW0MxrgR14yzC9ud5+
         +IukHY9PbeKgo0btUj703mp7QHzQ+FWIb3JO2HOtcyI1P9g6RjbLogxQialnJKVilnhH
         ERw4J7F09hV4rWc4qKPc/kpoWySDojIK7BhipAH+lEJp7L7s/Ekks9ww4R2wNbR3sJ/x
         n2Q4UMpyGs5oQ+03i+8tLfHfenlO29ONOWdw9PqncmGAVejjRjBSvTGFWhHvLDe6g4Ic
         ZNCvUvCwWdKB6NY8BWAJROmy+0YU8OHWHcVATouArlwObYhv9VE9/UaKaCz4U/EqUzBB
         5X6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YwiiJTUpfhYWYeJ9XZMbgk3ZYMWDjpZRqxtgHzBBvdg=;
        b=nHXPJoVkNO4KyN3OM6GvTvfvZ27zfV1/frqs/UaGRbgSopv9o6oneRCUp8or+0qBbf
         IWQXNugl9YqRUe8byR/gA8dVs1ESalsQ+P2R+oT1zZRk+u1Lld+d5b6Pz6V9Ydq81Uzk
         2Ecq4UpibbEmVOHjMKW0qVMFjETSd0tI1lY+et3LuLu+jU39wBzcylwuIJofxuXHcOmw
         8Ebtxryd1iASdSl4MRiI2a4eNviZ75FZ2MGgR5etubvsHGWjFFY2zjW+bVcdHwFCOyCH
         Vb0mFqCE83Sx8KynYJROamcENfMuImhNNVp2wCJY8YRj55dfqRkE08TLZCCiHRR9oJVd
         NWxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tdg+HoJUj/7eqR+J1WRRfdqfHVd6G2is+SX4fth2uXTfU3I2X
	7S1ETwV+axICIzpjAp07nbo=
X-Google-Smtp-Source: ABdhPJwQbRSbarATyuOE//JtO+S9SlYLBI5bLSZhCuqZDh7YXcAtDkMmwAWndhRC/HKXT+4OjPQhaA==
X-Received: by 2002:a05:620a:543:: with SMTP id o3mr9319186qko.80.1624017792658;
        Fri, 18 Jun 2021 05:03:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4049:: with SMTP id i9ls6729428qko.5.gmail; Fri, 18
 Jun 2021 05:03:12 -0700 (PDT)
X-Received: by 2002:a37:a393:: with SMTP id m141mr9140191qke.164.1624017792089;
        Fri, 18 Jun 2021 05:03:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624017792; cv=none;
        d=google.com; s=arc-20160816;
        b=CE0GIVO/Zhh6fvUbk6RTLnb+OdfyUjXydP9r8g/8nsRgn6qjjSgEXi+L1qw2SifHfR
         6vcYbXXEDXayz7CezqSl3VyYgD+W2W4w4nsw4rWsHLuw7ZVy+4SKoDqx14qqGNP5sN4F
         ZHxN4CyJ0ggsCvA+cmp+j8FldEaptZ/gvJ5AAO5U0tIKc7Rmqk0tfvvwB3l8K7jVUUve
         PtvZvAE7N789a7+HCASpX5Xw7XxIzMGHS1ogBZpAs5+wG2Z0AMN4Wp+TeEV020naEeyg
         uyFZdLiPKoVJvVI4OhDklt6MUbxtF7ymf6MUWLP9/kVLsSW2BUXFzaYHywkHZmcGoFPv
         Irig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BS3omeOppyoShd1+LwrhmXqufv0Lv657lMEmOyaYMYw=;
        b=pToWk8Ee3MLnJd2f/4P4kDhpl9rV01Ue1nFDTEL5XUi1kSsAkPFpCastOlHK1S+0vx
         3nnYtFjKlMDeAF2FD0JsSOGh58T1LFhb+PNTnKJBi1h6t6AR2m6EOKeh+yPfEvFnP826
         CwJ4U8iiZt7cPhEYGs+aNwljJ0mPC4C/duus7DLkxhJ0zKrweMYpV8WHvAGsuZYOVAk3
         +uAikYXPgfwJB8AOTCGsCofMXzz6c9yu2cu2lRZeQyzpqRSdY9a/EcDH7WWiou64u0s8
         Hc79f0vinF9NTVcUm+ogzxikdtaBP4YBNRIU2Dee0GUi4VdEAIodCZ0QtOk5eLPHJixa
         qm3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gb36UT4i;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id f17si186626qkm.7.2021.06.18.05.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 05:03:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id bj15so8670160qkb.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 05:03:12 -0700 (PDT)
X-Received: by 2002:a25:8b86:: with SMTP id j6mr12009074ybl.470.1624017791766;
 Fri, 18 Jun 2021 05:03:11 -0700 (PDT)
MIME-Version: 1.0
References: <1624013943-13935-1-git-send-email-gumingtao@xiaomi.com>
In-Reply-To: <1624013943-13935-1-git-send-email-gumingtao@xiaomi.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 18 Jun 2021 14:03:04 +0200
Message-ID: <CAKXUXMxyDaEnWeGNZpCmAFG-5OG0JVrHz0RPk18n_z+ZDKQ-cQ@mail.gmail.com>
Subject: Re: [PATCH] slab: Use %s instead of function name
To: gumingtao <gumingtao1225@gmail.com>
Cc: cl@linux.com, penberg@kernel.org, rientjes@google.com, 
	iamjoonsoo.kim@lge.com, Andrew Morton <akpm@linux-foundation.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Linux-MM <linux-mm@kvack.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, gumingtao <gumingtao@xiaomi.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Gb36UT4i;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::72f
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

On Fri, Jun 18, 2021 at 12:59 PM gumingtao <gumingtao1225@gmail.com> wrote:
>
> It is better to replace the function name with %s.
>
> Signed-off-by: gumingtao <gumingtao@xiaomi.com>
> ---
>  mm/slab_common.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index a4a5714..36127dc 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -381,8 +381,8 @@ kmem_cache_create_usercopy(const char *name,
>                         panic("kmem_cache_create: Failed to create slab '%s'. Error %d\n",

I am just wondering:

Can you also make that refactoring change for the panic() call as well?

How about checking the whole file for such patterns and doing that
change for all occurrences?


>                                 name, err);
>                 else {
> -                       pr_warn("kmem_cache_create(%s) failed with error %d\n",
> -                               name, err);
> +                       pr_warn("%s(%s) failed with error %d\n",
> +                               __func__, name, err);
>                         dump_stack();
>                 }
>                 return NULL;
> --
> 2.7.4
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMxyDaEnWeGNZpCmAFG-5OG0JVrHz0RPk18n_z%2BZDKQ-cQ%40mail.gmail.com.
