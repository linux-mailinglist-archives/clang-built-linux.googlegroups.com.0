Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH6JYP3QKGQE5AAP3NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4316F203D64
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:04:32 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id x11sf3805154oox.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:04:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592845471; cv=pass;
        d=google.com; s=arc-20160816;
        b=HO745E8ELj06hk/p2ZouiM0pyEDBCG7EsLR0jJwdBgcM4scdYtmMHkERp9SsBVuAcF
         I4nlpTs1Tj9lhXQvskqkD0NcVax6zv/iypK4+fgH7IdaNrkK5+7MrQphKb1iR9QYaeFA
         DzDD6GlVuJwt/O8UQwgvcEhyCyOSX34Sa8ie5Z3+6iv9xr2Eyeun2UAL7C7AR1dMDFlk
         weFJT7Juda8Z0Xe/N7T675e6kBf53tvXKEwrSPXCVHwZypaOkp0fEseLAXtork5mOpyb
         IVg0i3BR7hvfP8fVlpYOHLdUokQH84532opZ+DTlU4xkOe+GPfkvkPYshwjVlNWIwFEj
         LUvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G4H2J+T8/hs8dAiVBgF9l2kCeydf5o2A56/yEJVThnY=;
        b=h9rS/hhfNCZgjIK1q9h+Lp+u8NCms88aWZq+f8xlCTnFUoYKd5i7fBlNaajarmVyyd
         7+rvOTiUxgbZ7FcwzMC6ZdpuVbFzuTllZ5ZxU8J5PM07RSB+dOmYV7Q6jwmNThr1xER2
         /EceIYu+9BUnFLovT6oofJdjMtoEZvBmf7JymgIyB3xvszfwPnSzTJtAZZDpWOMi1DEF
         IWvRi+xMTzwXIqF1VoCX/GftKrto5xUjSaBiV+6YP4DvjH1FeodH5vYtbYOW0ckl0/mz
         LFvneAC4YnK8iRg9kXCJWTIWP6pbBfw9PV+at2kWzAiJZc1u46KgrFeQY5/3FoKzzIaK
         xGyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qKm/Whls";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G4H2J+T8/hs8dAiVBgF9l2kCeydf5o2A56/yEJVThnY=;
        b=ST1yVBWUNCbtYoNDnTSplnRokvK8njM7YSkZDOr8pxKRU/QSIQBJgYZ2tlCKeGn66n
         zOHxdqe9dHN7bQwq1a8MWa6E1AVdAdRMC8ZFS+gQcYowLZ4XWTFZTwyfqMSC7QmmElYx
         TQyIwi4xsuYAUICR+O6GP4/a1umRJSrS+jF0qC/jnedUQhvS8gl0yVRWwa0q5Fcy9HzE
         5kB66GmcSNDgU0ODlwsr5OtfE2WCaxlY3CbuJRTzRHmaqHSdOuO+45/V+smd5BeVvkOm
         KxFf3HpIBjN+DSZYKtmhXXa0AvJHduTCCd7WFo7RnCNbn8fHvoI8WkkZHuMNKKY9UIk6
         D/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G4H2J+T8/hs8dAiVBgF9l2kCeydf5o2A56/yEJVThnY=;
        b=q2CKk4cWG5rmvOCI8LVxTmWrc26HvFQckNCNprgT5ja04T35ls1pdp5m6YG6HTwWbo
         S7CuYT0TljqPFYtDM0Q3zRlLZH7Zt3DgKNrvUFF+5owkK4enQff+UuWkWLTdZUN3r2XM
         OcuQDuIKQj1wF6wiB6FPg5rnfplqxFFZ7Rzv88/QIOOg272tub6z3NAPK15dxV9Uwv8a
         WxVd0YeczeTsxIH+TSRTQPxtTSyl2+h6fiVYAtsKECE4dMUUeWEv04illXzOrs3SbyRK
         Xob6Ob+nJUbyMOffpt1KCMaCd5ccmtqUxOaaEbp80vxhf7jieG1Ik7w84sLBXu44tyUY
         N6kg==
X-Gm-Message-State: AOAM531OIhHHUYCPrUG4+KfWq+PrJ4yVh/lKD15njWNld6RyosQ2OJ03
	0zHpB946Wz9r45HlhMoLCyI=
X-Google-Smtp-Source: ABdhPJxavLq1mnlgQ0Jbf93JNU/xh7r/8R4LlqE5uaYzThhIJ1qBMb+UydsVpoyL7ylSXUhwDUKJhg==
X-Received: by 2002:a4a:8908:: with SMTP id f8mr15181873ooi.7.1592845471117;
        Mon, 22 Jun 2020 10:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dbd7:: with SMTP id s206ls3399773oig.6.gmail; Mon, 22
 Jun 2020 10:04:30 -0700 (PDT)
X-Received: by 2002:a54:418e:: with SMTP id 14mr13464294oiy.18.1592845470770;
        Mon, 22 Jun 2020 10:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592845470; cv=none;
        d=google.com; s=arc-20160816;
        b=IqBRH1Wf3JCbqkee+HLcBD0LdQeY+1thrWxCdcS9WlbhXtc7nhsCwMqqhWnvCk1tDb
         RNxVVU2mN7QA7LrUXRCG2NO9WIgPZrPxWr9T0cFS5pYJk++CEHHEw8N62Lnbn/jO3NWI
         k++3MwFkX4OV7uTghioJuTUNhq9PLAIIl8yz9TzpuJV+FP9SlQPlo2JN9NlhoS1TICNE
         BAWbCvk2jULCZxl0Ez7wzWWm9TBtgoQU+unlhC1u5pr8fdFiJSmYMdwROp4bvB0qC4V8
         jK1wejRsGGiFpv58kGbNvXSHyrhpbusBSMNfYouru7Hqq5Jb2NVF6qyuKd1Px+NEKDno
         FFiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+m5221Ut6o3WuT6BjiL72c05hVwdkXllFG7aX4yJx4M=;
        b=WMTskIOZueFcGbeL7sSR9CvKXuva1hvyKr9UYC22pyyaEuFA+wdNSJjv18SM5VROun
         AlHFuNtamRwWzwLw9ePVUr5Ee61+/2n6JTGgLT+yovJoQcQroRXTEu7gmpsDVATgxdbE
         U8addCCzgcRUmli1rh5JNaJX1oa2tx5HFdnszxlhbU6IbYp2OroMYJob4UKcJ9GL6lEC
         iIr9PP244qf6XsFsTI8E6IgR2na0/gJXLM0VJoP538QIXWSBse02ETEYMctRKdZexbPg
         hWlxjUFZHj7D8lVOzEgwJA7++qFBdl7MVAzVEMnA+BjJoYlog7CUjnL3prWXiKbqhlDZ
         JiTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qKm/Whls";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id m26si746138otn.5.2020.06.22.10.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id a45so147174pje.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 10:04:30 -0700 (PDT)
X-Received: by 2002:a17:90a:e2c4:: with SMTP id fr4mr19317188pjb.32.1592845469798;
 Mon, 22 Jun 2020 10:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org> <20200620033007.1444705-5-keescook@chromium.org>
In-Reply-To: <20200620033007.1444705-5-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 10:04:18 -0700
Message-ID: <CAKwvOdmsXuqx-3Rt_KNFq4psAeFjG2-7qQaqkJ7dDqqmscUFNw@mail.gmail.com>
Subject: Re: [PATCH v2 04/16] b43: Remove uninitialized_var() usage
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
 header.i=@google.com header.s=20161025 header.b="qKm/Whls";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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
> to removing[2] this[3] macro[4], just initialize this variable to NULL.
> No later NULL deref is possible due to the early returns outside of the
> (phy->rev >= 7 && phy->rev < 19) case, which explicitly tests for NULL.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Fixes: 58619b14d106 ("b43: move under broadcom vendor directory")
> Signed-off-by: Kees Cook <keescook@chromium.org>

I see three total uses of uninitialized_var() in this file, do we want
to eliminate all of them?

> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> index c33b4235839d..46db91846007 100644
> --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
>         u32 rfpwr_offset;
>         u8 pga_gain, pad_gain;
>         int i;
> -       const s16 *uninitialized_var(rf_pwr_offset_table);
> +       const s16 *rf_pwr_offset_table = NULL;
>
>         table = b43_nphy_get_tx_gain_table(dev);
>         if (!table)
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmsXuqx-3Rt_KNFq4psAeFjG2-7qQaqkJ7dDqqmscUFNw%40mail.gmail.com.
