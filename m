Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2FD4X3AKGQEKHWKMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DC41EEB5F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 21:56:25 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id e1sf1595030vsk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 12:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591300585; cv=pass;
        d=google.com; s=arc-20160816;
        b=tHVcWJxbSDnDwCFSLKv7EszPea3J+e8r+9xDSDlOgSekbq+h1+RhBZIrH11KaTzaek
         5PezatnjmcGE6AHWdhO8m3UULvPl5Bj+wfyw9i7w1F8WaEo7jwSpYyaDjsiH84TMu5iZ
         /CC27OEclhuFUXoI3LN9BicdDDUmOnYKNi9yXi0TCkGDCDIDb2v8rtmG76MTHaIu4TaC
         lKNcJ4uWkKnCsBjY1yBJ8Vn4MwyNPznCWfewvPBNyPZ3apcOnHLaUI447Cs/XswowgKJ
         VrEzzpe2e4If0vnNW95gOG1Dg0KD9mGBl5BLDcumXh/iSErQ4Ls/kNgWsmK3uAvdP36i
         Z8MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o4pfsz25v5JgeoJqbzes7Se1puy679WXLyj/WKmQ+Z8=;
        b=cB+of1RJlGzRppqKL624igRfeAHNJxJliO/Y0FyWN88muRMBWYgKWMKqNnhpumRBeQ
         xs8mlYjir1hyoJf7NVjbYBr10fjVs34g3UzSTU+869VsiP7uENt/a+HaKOxWAYTlnCZ6
         liju1ImsI0Wq4P3Umy98+7AZnw20JMfR8OMRc6rcbSJ7wpjRix6XNvueKefRE884IDM4
         mqRcC4XFHCJLP3EJbiYKnxDKbzEIWzcoO6SGRws7ple0+JH40PmHcDwtPXZdc60p2Adu
         dPAwg3Xw2fhPD7Wv4qSkK8mzD+nLmZE4+g4HZOY8a3LU88UNg9qLkqDzVXCM6j1fhtvh
         WLQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qPGYj+Fa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o4pfsz25v5JgeoJqbzes7Se1puy679WXLyj/WKmQ+Z8=;
        b=aajtvBDJhGfuUnDWOMHFadoM13hP1e+CjMb2AEIWtYfWq+2b+bjKrigwdLpY5MX/Mu
         7Mgg/5qr9c9S0803bXZjUu+jRgkhzYPmftJWeX9x8N8jA/7GAnAFkA70TzijD97wTjTo
         98ILOCPSgp5nTCEr4TdxvjIfIj8/0hXsaqalN5ZuDQU4uZCcZxSSkBChvam/k1MhqZ3L
         I/P+Cm7vpUJCCFfPH4gVVVZ1TeZN2qhl9mIVcaQlt+fU7UwCXiFWKXqHQW5mE9LVXf9w
         x15briGV247M/OAMv1GbDUKe3gtindyoK0v7OTRprSheFMGpVxlk97SXZ/JE0EFuXJ7I
         6AsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o4pfsz25v5JgeoJqbzes7Se1puy679WXLyj/WKmQ+Z8=;
        b=Tq972nuWRF+LCD8sLm3Zah6m+khV4wyndA3N1W0BFF9KFkEZnFw1IbUTrehQOlY3C/
         9oZMgQz2W+TO+PCCPTk+resUjMMoGxa/zTd7Aj5A8yDB7BS2l7lGXDkpZ82T7SzzSK/i
         Arblpm6bihzcsT8ONliAqdQPVCsWXfGIEKXU4gv37Txn7dbr4ADcv/+2KayFqgDtBvHK
         f3J2ySrye1D7ovcJuJaGNvaXsNcrQzUyI4Kbel4TO5y1qc+a8wuYGOpHWTV+IgTu5DBb
         QfIS9tuFZ1gohLRuJ4X4Ze08YXXilXEHuhReMQdPICr3rnm0iRq8lQwBGeNtbiHl526u
         h4Cw==
X-Gm-Message-State: AOAM533OOPze2C53zXFJNavXidXqDTKl4Dx0OwYfWwt6Gaz0CX+IKe6n
	Avw0avIpfLSPMPBhOIiXQV4=
X-Google-Smtp-Source: ABdhPJzrQ1+OOw9qJkf0+451brSwNOJyw0I/WaRjnkmq7ef0GCo3i/9pnbslzSM+sDuP1z0fW+7Z0A==
X-Received: by 2002:a67:f54a:: with SMTP id z10mr4179303vsn.121.1591300585003;
        Thu, 04 Jun 2020 12:56:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3091:: with SMTP id h17ls565744ual.6.gmail; Thu, 04 Jun
 2020 12:56:24 -0700 (PDT)
X-Received: by 2002:ab0:69c4:: with SMTP id u4mr4790551uaq.5.1591300584643;
        Thu, 04 Jun 2020 12:56:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591300584; cv=none;
        d=google.com; s=arc-20160816;
        b=Qm4WyIG8i5iY7ln1KI/G82Ftyy0MElfcTIBifNDfYUyt5q1yvdEIqUOyGa/WepQPWL
         XMoAPxsvJieKzMWnQS6L/a+onjRNI/N6M8+gxTXvLRoWF39I0MwmyWCqk3LqWK++xO4h
         D4s/+nokq2b3rdsPyflWpKVFElBdoYxaXpFdHto7XJBGn4AKpei34icQjLqOPRi4ruOb
         bFTf+CRp4gjddo8hydxgX/9qKfkm94u/VdQOiaCBRtkgTTml1XtFubMItExdEq1m4JOt
         6W/DEv96H/ly1AKPlt0CCir5Rp1+N2s3msNLQLnXJZge5KuX7Dd2kcVnVURQs75zxdY4
         1jWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JchjGYZl0wqUOrU5YQvGeZV5DROtdtYOgYQQhEiIskY=;
        b=fWpkB80qLs3movbv8h5tzKV7rH5p88QxWhTANiw9r/WkhQFotD75g+i/SgjLefw54E
         dbiko5JmydB95NuCIrJ6MkWsHwpfsJ/R6NdkJ+qybrY7nNbX5IIZuep+IA5qZ+b/B3M6
         B/6Blc1E/P3aV/bOo827zoSjXMpqim7/9CXIRlUfk2kTuXb85mZUiOzi4B6EQN/WqHFs
         s1ntIUoJHeYd8I5kINXXjAQj2OqfhituMBm0WvXmTSiKqbsZZJop7zhd5Q+lIV3Jj4xC
         FDiuuRXRaQYi/SX6zWiv9w58e/h9bsDU4qXIeEdSH0Wo0d+4E9kSTryDBcZE2y+ZbxGj
         g7gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qPGYj+Fa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t24si392653uaq.0.2020.06.04.12.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 12:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s10so4037843pgm.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 12:56:24 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr6167247pgh.263.1591300583418;
 Thu, 04 Jun 2020 12:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org> <20200603233203.1695403-3-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-3-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 12:56:11 -0700
Message-ID: <CAKwvOdmfOSGAZiuapXOaiU74AQVMDgimrnCiRDjzw4p4oh1vaw@mail.gmail.com>
Subject: Re: [PATCH 02/10] drbd: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qPGYj+Fa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Fixes: a29728463b25 ("drbd: Backport the "events2" command")

> ---
>  drivers/block/drbd/drbd_state.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/block/drbd/drbd_state.c b/drivers/block/drbd/drbd_state.c
> index eeaa3b49b264..0067d328f0b5 100644
> --- a/drivers/block/drbd/drbd_state.c
> +++ b/drivers/block/drbd/drbd_state.c
> @@ -1604,7 +1604,7 @@ static void broadcast_state_change(struct drbd_state_change *state_change)
>         unsigned int n_device, n_connection, n_peer_device, n_peer_devices;
>         void (*last_func)(struct sk_buff *, unsigned int, void *,
>                           enum drbd_notification_type) = NULL;
> -       void *uninitialized_var(last_arg);
> +       void *last_arg = NULL;
>
>  #define HAS_CHANGED(state) ((state)[OLD] != (state)[NEW])
>  #define FINAL_STATE_CHANGE(type) \
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-3-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfOSGAZiuapXOaiU74AQVMDgimrnCiRDjzw4p4oh1vaw%40mail.gmail.com.
