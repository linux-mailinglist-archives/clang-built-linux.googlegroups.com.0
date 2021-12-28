Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5GPVWHAMGQEHNTUS5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEBD480CCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Dec 2021 20:39:34 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id w17-20020a05651c119100b0022dcdb204b9sf3034782ljo.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Dec 2021 11:39:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640720373; cv=pass;
        d=google.com; s=arc-20160816;
        b=KlEJqQpNgq9HhkvIgekevx51tOs9xRttYd9v5zMQMlowcXlynjXhMWKDrLNsOXVGSN
         9v8MNuJDYOEz5+4NzWyMvP8sHr18UOFWyz6V1LJGMT/R3OrxpQ68gLMo+UITHAoDQHla
         G5XqM3ygCRH1vKaoOWAkQ+c56iXebMozfyw6b8K1jCmmqd9YdT46a6+a/qtGGQAYGmKk
         +Tqlrbxpy7YROho8pWZP7AyeVsf51msrWxNuSZmFlE4psoaAbNGx09BX/TaG8uhCodnQ
         cKxqGik0aOTNvBDKEVMyeJEYi3LbbxvjVZXLPx6Qlf2i7aEnLOMYdXPyseNa1LIprDg5
         UmSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=i00gHHlM7fJ63r6ktfsuYyF+DmZ85/ntsbig6chhba0=;
        b=UVv+WOnaioClneqxlpysMKcB1Ow6cnjuzD7jeUatR6SigXdMz80oYNFXWZUrU1bq9l
         c0HQ7TIu/Av3JbRT1T1ztVQwqeElCMQgiKS4ATLEIN2WWfvUdkQBLOj3fkbnVGdFWQY2
         2Bhfx+LsEFHN2yq0NZy264PRUh0bxGgiM/zrWItYyChI2IZ0t524YOHTkuUiRLOONmkk
         r9vnT3m9ntiUjmBgtKXc2zesgacvRcX8Zerge6+TR9vBnwvyqGXPyfRTQh30QYQSOWoN
         M8/esmPx/XLIkICDNtDCoSa44ZoM7/ECHym+e19Q318OrcAuZptRA8DSsb1F7VPJv486
         BCCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=NOqtUUNb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i00gHHlM7fJ63r6ktfsuYyF+DmZ85/ntsbig6chhba0=;
        b=Hqj7QwVMQx0CYqz7bU9MDBeZe78KxiMt9uwKO7xFR1MFCdTsSL4LjUHvgeApkJ+e4/
         h1ZplI1BIwwIA8xfZNxQrj+eCa1xUO7dDJs/a8ynHWRtbcNtlqoYUTOzkF1eildVgTj4
         N8xEHyv1kk1Ygo5kOuM7lqqyXJVtdm/LaIVdurFqUVCWzIBb1XK59RbQ9GTP/5LRLylE
         o1kpruMTIzlNfZvGES67hUpEPpe+9nQ7NWvkKssl6BJ1Wj7kCJVeSdEdNANjsI+kGDkH
         HkD7VHsKu/yQ0iVsJve3p9wdT62ZMdqTDw92Xy7oYMr0iSCkwK/skynoGXaZiG+n2XDd
         1yOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i00gHHlM7fJ63r6ktfsuYyF+DmZ85/ntsbig6chhba0=;
        b=idkP4RG9FX4Le8dNLiwAdtp11KAOkXzub/tFwIZYvnUaenly9DrWh3+hUl2iKk8GA1
         YOOXFGUjpK7sa2lpq8g1yyET/6gF4SwxBMM4kayVAWMfCynw713pLLEA5L6FquNcb+LD
         4X6cegZNooT326ASEon2fWVMEwNL4uxM+OCB+xo6+F283awRW2ofzXJzr50EGbkEsuNs
         p0UB3Gkvt+oEX0u+gCsDu6QNYUfNyJqm5/3KF7Ee7eW6Y2ZIe3v1xZz7ihyH3qT33uVy
         BoJ+E14jv/XU+H6OqUr894bz/NUYI/Z+OET34gvzFbDxxMOUdXYn+/UxLlD36eBue5EV
         QRRg==
X-Gm-Message-State: AOAM531phOfohPfy/eGPnm7nBPA6EwrpXOQ3UxdP4Y9Gmc4ADzPkcb3s
	mmYnhkx3oOBoNmq4hWuTOZI=
X-Google-Smtp-Source: ABdhPJyS+1z4rTjA/zQatoxTHKvU8/jCHp4J+I2XKcyEGTzQfAbKToR+JDpORFrywh3T/cxFnj6+TA==
X-Received: by 2002:a05:651c:1411:: with SMTP id u17mr18788188lje.483.1640720373050;
        Tue, 28 Dec 2021 11:39:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:158e:: with SMTP id bp14ls171465lfb.2.gmail; Tue,
 28 Dec 2021 11:39:31 -0800 (PST)
X-Received: by 2002:ac2:5445:: with SMTP id d5mr20847824lfn.349.1640720371528;
        Tue, 28 Dec 2021 11:39:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640720371; cv=none;
        d=google.com; s=arc-20160816;
        b=QdzEAXvWIwZIujLBtxBwyxC055S/WqAqkXv7iQrPwBMqLNGreqZh+DKBBW8/kld+2t
         CBq8QKgOT84xz9qImNQW60x/c5uwY9G+DfT9euaYSThjbwbeYqZbOshkV1UW244UQKcT
         t79LHNlNqUHddkT7mYMzxrZljboW78U5Ho3S+yOO/rxefmQzdGdS+BWog7etLslloYR+
         3S+xZ/PsEkBXvtTq8wSb6Zt1foQ1KuyrX6PHKXPyPyx0nfBHBYTn1DElfhg3ADbyXMyP
         QWgR7HUFYkz+7OSyM/Cz0BxgavpNMmgxJy+I1Sf5PekS+43kJfK87+55sziQcCj0SXLN
         DL6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f0mf13mpCBlZzVJGnXhAHxuRbWYoDDVS32f5pj7vN0A=;
        b=Cot6kYJUFO1kKG01uYzOtx2STrgV9DgU44fj99jcrPEfXnOeJLCpl8mu7pO0G3sr2+
         mn0u2obVa8Pt0JoueyoYdYnzLz2DORDXpAh8q8jUQY7FEfENcJy2OEURbQPnt8Zkkn0+
         J1hk5zizFc9VmdedD2gnVZvvk7b31EBheRC6QQIogCOjKNZDGRFW6I/ICHFfX+2FknLA
         OLUzLkFeYOaP81+FJNC8uWVLctlyuzO2EF73cJC0tNwRz7M0mKdgRmpWbpaYo8QG/mTu
         9EYAMoalu3cjpZpgunKBJc5A9jBxfJKcMpUuIeM4SidkYz670nFzyS8xUR7EN99N24dh
         GmbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=NOqtUUNb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id d1si662941ljq.5.2021.12.28.11.39.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Dec 2021 11:39:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id s4so14227492ljd.5
        for <clang-built-linux@googlegroups.com>; Tue, 28 Dec 2021 11:39:31 -0800 (PST)
X-Received: by 2002:a2e:7c0b:: with SMTP id x11mr14607183ljc.198.1640720371126;
 Tue, 28 Dec 2021 11:39:31 -0800 (PST)
MIME-Version: 1.0
References: <20211227131041.4668-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20211227131041.4668-1-lukas.bulwahn@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 28 Dec 2021 11:39:19 -0800
Message-ID: <CAKwvOdk68xzVVCCGgdEDj3fSD9nwgh8=7zi6QGa-hhxweRibYQ@mail.gmail.com>
Subject: Re: [PATCH RESEND] taskstats: remove unneeded dead assignment
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, clang-built-linux@googlegroups.com, 
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=NOqtUUNb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Dec 27, 2021 at 5:10 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> make clang-analyzer on x86_64 defconfig caught my attention with:
>
>   kernel/taskstats.c:120:2: warning: Value stored to 'rc' is never read \
>   [clang-analyzer-deadcode.DeadStores]
>           rc = 0;
>           ^
>
> Commit d94a041519f3 ("taskstats: free skb, avoid returns in
> send_cpu_listeners") made send_cpu_listeners() not return a value and
> hence, the rc variable remained only to be used within the loop where
> it is always assigned before read and it does not need any other
> initialisation.
>
> So, simply remove this unneeded dead initializing assignment.
>
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
>
> No functional change. No change to object code.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

I was going to ask "what happens when the list is empty?" but `rc` is
only used in a loop where that's not the case. Thanks for the patch!

It looks like
commit d94a041519f3 ("[PATCH] taskstats: free skb, avoid returns in
send_cpu_listeners")
from v2.6.18-rc4
is what changed send_cpu_listeners not to use rc outside of the loop.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> applies cleanly on current master and next-20201105
> Resend: still applies cleanly on next-20211224
>
> Balbir, please pick this minor non-urgent clean-up patch.
>
>  kernel/taskstats.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/kernel/taskstats.c b/kernel/taskstats.c
> index a2802b6ff4bb..bd18a7bf5276 100644
> --- a/kernel/taskstats.c
> +++ b/kernel/taskstats.c
> @@ -117,7 +117,6 @@ static void send_cpu_listeners(struct sk_buff *skb,
>
>         genlmsg_end(skb, reply);
>
> -       rc = 0;
>         down_read(&listeners->sem);
>         list_for_each_entry(s, &listeners->list, list) {
>                 skb_next = NULL;
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk68xzVVCCGgdEDj3fSD9nwgh8%3D7zi6QGa-hhxweRibYQ%40mail.gmail.com.
