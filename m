Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUXVYP3QKGQEBEPUBRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 633FA203F46
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 20:39:15 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id o12sf12605006ilf.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 11:39:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592851154; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWd//aYY6Cm5IL/MVtOC1D7L3ZkWh01/z/paDj46117KnuBimSyfutSFHL1ZkxMB3E
         eeODVL0b2zAy73gb4r77T6weCyyfY1ZflSWMlzhw470tsYImAac46XIeDdp+L0Phz8kp
         +2HYH0UazvDAxIFzFIs7KdYsP1+kVT37FPQkT9++WueUcifyrObm0IyZGW+LUAErxq8G
         aGkg6znMDO5OjGMcbRaFYkJB1U0QlHzY/QiAMSt0shAY1tk8tqEv36NAgCDhRUZOaQ06
         dv9p2cF79swTNr7Vw3ZYxg3dPRTZtkJxWpuXv6I4QbInbPGaGgwDbJlz6VmXtjsJa9HE
         kJew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wgxkUijzSwP/Zwh+K2QaE4Rh3sfPa1nSFgMyCLN6M1M=;
        b=ZsSgGXWbyrZmcpH7gmbSP/Z44N05YxSaYTMMqGLfbjfWvNJ0T32zdBYy+2gMRnKVoZ
         BlLhF6Am6gth5t7gezPdGSVX0DyX8uU893rG3D0FeYArPIIXj4VYOBb/xrCxUeUWOrwl
         tI31MwNkwZ8X2077qhWR8aq0rh5BhxGPPSWa+fu1pzD/vZPYQ5/0d/B20zNkREdRTtfV
         ZrLwZd+p9ykwrKQ98sS1YvYviL5tKg/UPDU+llwyBg6x3BBXI3EQ6kkkKXEiNfIV8FYi
         mRXklcr1y1hkxnScpjIIWx269In4LqRYKoUWSfOi6IBNG2ZcDSjXskdDC6h6XXlt4OOK
         EpbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g47As6pT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgxkUijzSwP/Zwh+K2QaE4Rh3sfPa1nSFgMyCLN6M1M=;
        b=DP1DB23hnA0u+k0xvdxHxYvoWmtarGt2NwlyyET/xldGLNyCv4cwiPu2EfFPOi73m3
         s/mZ+8q017angKcX3ms1DN2ppj7jPzcIk8sMbyMCl8pGK8LRtEPXS4rtblsW2tgtKSVw
         machoSXpkbzPRtp3ZgmtR7PlS/q+w3+mLO9uiCKajUJKHgFvZmeWWvv68KdhSJz0hBQE
         Vf/zCFzfa7HdHLRBmbobJqEfKlGas/1CGLQVKgtYkQiKtHsTv0BXA7eTlWbtsDa5NuGo
         ivVk5M1nUnYQSTiFcxUItoVCHkSrpJ0MmnZTwyl12qA/IujAMqGyxpu6pL76IcaBjP6o
         CYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgxkUijzSwP/Zwh+K2QaE4Rh3sfPa1nSFgMyCLN6M1M=;
        b=FU3SgdSA0YKQgBiHv1U857OdTrq+IgaosOU3t3UhQdZe9ZmOBxq+qPbOnJITcAN02y
         c8sg1s85Xzqc+c5j4vLyN54wF9mkRV02IeCrz0qslQ3SHLhHCmiJqQwHi+GnOXTaMZz3
         XTf1jHMBvTxCQSFhRcZm7eVnJpjYZaKtkfKsF0ys8M8jJttvd678mOO9dCu6rsn/HieJ
         4Dh5JKZh1xjzLXBnSzuMHzo6lCLCRAFMYr4xtA2PexglmGDLZP4+GYT0pS8aHw/ltNbo
         EZ6cHtLoT2NUAmkLcGwHFOM9tF9eTaFqc/Q9EbF+PSiD4zm40/bf0z7ddFkvl/csKqR8
         /ZQw==
X-Gm-Message-State: AOAM532VnRoa6Dmg20Gdr1N2QuNN5d2v5tcVRjp/r1eZlJ48v5Wnom+D
	XL9nXWOEflD52Zh1gWBwR0g=
X-Google-Smtp-Source: ABdhPJz2FGtgAbHjzA+COFGMCaBbfG88XbgkV5KLw6Oey69zP7V4Exl3Yx78QQQCT0NWfdZ5XH9s5w==
X-Received: by 2002:a05:6602:2dd4:: with SMTP id l20mr20733235iow.13.1592851154072;
        Mon, 22 Jun 2020 11:39:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d0a:: with SMTP id q10ls2313522jaj.5.gmail; Mon, 22
 Jun 2020 11:39:13 -0700 (PDT)
X-Received: by 2002:a02:2417:: with SMTP id f23mr20082309jaa.28.1592851153776;
        Mon, 22 Jun 2020 11:39:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592851153; cv=none;
        d=google.com; s=arc-20160816;
        b=NeqdjlcgnjgjqHRmOP/9EHSKvvcPibHrqHByaJqKafWDs/pwgSaP6NlhE75kyfoM7v
         4AzGor9YbQkVUvboztjpx2I0TpkaiQj0I+O1BdrIKZ879Y2zHuCZf/0ypzibEV6j5n1B
         cZ27zlSMq48/svqLEiCz/Pgkw1abmfpZAkOZBGHpkSHJApu7i3aJdkwTblRjGDI9IwQX
         esL099ZxwyQzN8i0nNPBsvieAYyA/Bkc4XP+K/gmjwLHm7dYixRwRkVQO19AeI/pkVBA
         SuSEkYIPwjoRQsblWl0smmSzAnp7L304XJik+ztJapLetkF5IO8M+fp1ev2VrGFr2Ftm
         UZBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gb+JetmJfxvfJpxHC8m6WwdUvvjtG/PEO/NrvZ7SUq0=;
        b=N+cNl7ZwHLRG9GtTTeTSsSrAbR0wcjS5lO37jLOVfnilwz40+85ioez95/85VnZ32+
         bFH+C9kAQN/jszj/Ihw/n0UpvpDv8/24Tx3WJSAg6dqoj1B27kY8+s9M5FPMURlIBvMt
         r+8OOGq8S60V4rFFExJMheoA3hjODRuvXVWGrENPgH4g8X/Hg+YclID17gAeIUQFRSy6
         gWAC8gNHIdfLBpH0TLtM9CczwPayKUXu+P7gkpyaCKneDchCvixMsoyxZYLJFg9vMIY9
         NFuOtPTCn6DU4ATBVQZg2NUOOIwve3HG8EZ0QxbrudUCy86ur+9kP9Aw5wQJT2fen918
         ZVdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g47As6pT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q80si212400iod.0.2020.06.22.11.39.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 11:39:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id bh7so7921469plb.11
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 11:39:13 -0700 (PDT)
X-Received: by 2002:a17:902:fe8b:: with SMTP id x11mr20457257plm.179.1592851152937;
 Mon, 22 Jun 2020 11:39:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org> <20200620033007.1444705-12-keescook@chromium.org>
In-Reply-To: <20200620033007.1444705-12-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 11:39:01 -0700
Message-ID: <CAKwvOdm7+8xhbMZRPq0+2X1hez=cNGf=psX7ofNUfqq9iY5ScA@mail.gmail.com>
Subject: Re: [PATCH v2 11/16] media: sur40: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g47As6pT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Fri, Jun 19, 2020 at 8:30 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:
>
> drivers/input/touchscreen/sur40.c:459:6: warning: variable 'packet_id' set but not used [-Wunused-but-set-variable]
>   459 |  u32 packet_id;
>       |      ^~~~~~~~~
>
> However, in keeping with the documentation desires outlined in commit
> 335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output"),
> comment out the assignment instead of removing it.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Fixes: 335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output")

Probably should comment out `/* u32 packet_id */` rather than removing
it then, but that doesn't really matter. Either way,
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/input/touchscreen/sur40.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/input/touchscreen/sur40.c b/drivers/input/touchscreen/sur40.c
> index 34d31c7ec8ba..620cdd7d214a 100644
> --- a/drivers/input/touchscreen/sur40.c
> +++ b/drivers/input/touchscreen/sur40.c
> @@ -456,8 +456,6 @@ static void sur40_poll(struct input_dev *input)
>  {
>         struct sur40_state *sur40 = input_get_drvdata(input);
>         int result, bulk_read, need_blobs, packet_blobs, i;
> -       u32 uninitialized_var(packet_id);
> -
>         struct sur40_header *header = &sur40->bulk_in_buffer->header;
>         struct sur40_blob *inblob = &sur40->bulk_in_buffer->blobs[0];
>
> @@ -491,7 +489,7 @@ static void sur40_poll(struct input_dev *input)
>                 if (need_blobs == -1) {
>                         need_blobs = le16_to_cpu(header->count);
>                         dev_dbg(sur40->dev, "need %d blobs\n", need_blobs);
> -                       packet_id = le32_to_cpu(header->packet_id);
> +                       /* packet_id = le32_to_cpu(header->packet_id); */
>                 }
>
>                 /*
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-12-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm7%2B8xhbMZRPq0%2B2X1hez%3DcNGf%3DpsX7ofNUfqq9iY5ScA%40mail.gmail.com.
