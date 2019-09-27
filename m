Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ7WXHWAKGQEUKHFSTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF31AC0D0D
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 23:12:36 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id z13sf2764678pfr.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 14:12:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569618755; cv=pass;
        d=google.com; s=arc-20160816;
        b=eNCz4WTMPk9X0X63HmQpPOUCrdVdAyUMpPaXq44RatOAQlpocOk3EmC8+t+38k3KDf
         pUfY+0OjjWyS7+DdmLozNPYnE+gXMyfuoY1Le391D7mR8eDcNTV22GCFZk+/CWO79njb
         v2HqBiiNWDiZdymoatZY++2i0Jdq5EMd6amQMjE4C7WETxMiR2FHP4SPjpvX0ddDjcPC
         Sv5PU9Bt2W0kBKBLKVRGgONSFud907o3uakk5PQ1KtarcmFv9FDj7Wlo2xrk2+WnpQrz
         nc1BvFl3dymVUDeMOkc8jaQIU6Pc1ZWgVoDddficNdIsvGVD9nI5O+KB9mLsHwce0zco
         Zt7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YCSw7fRg5jFfKxk/dFIqyVmHQHi4xXKuI48EP+PUsEE=;
        b=suR72Y1vQp8D3AI/mIXuwz+mUoHf33U3kLXMy/PPZOJGB1nonybxs6ANZFtLpna5zb
         4urt+oydZlD2uAqVpJNIQQKcgKLSFrg3PVM095JJoKtDJCPWOaC1RxHURlVv6tNW+cHo
         hH4h3v/AK/HaysEaaY7Or5+OBfsZ39QcwRhPDscRBi+fwiF6acPnpr7ee2jxdRKZaTBb
         gAEx+xogdKdG6sc7caeNUC6aoYXpe7Z8mzywpjjkBk47mtt0m51KKAkuuIuNkwiF7PaX
         V3CPiMbydqL5QajjdjWHhfpMPb5caULrvdvA7B/04Wlktse9oHSAbbapOMvrRNrY4rfj
         EPeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HWrjXwmy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YCSw7fRg5jFfKxk/dFIqyVmHQHi4xXKuI48EP+PUsEE=;
        b=DLwto1z5HkhL80p5ghSryR3rPEbISXPMh4Dgdd75tBAn9RoJdAdRMOAnIbbSBuZciW
         05/NjAYOJb9FDUP8Nxh+gs+Mw7ig/FSDB5DOz6bpdPH1mZA2/YpB9FrjbgYQOW5R09MU
         eZaxPD0ii+wBbOrDxrZlhkOMsm7zvxpVxorG3BiEx/Hn0AD0F9I9RAuKTC5JiuR7zfR6
         8kf42QBU3q0iN8IL1QXXFF3gityK/pguKlyYzVrLzaJB1i18BWrRcPXwwxAaQHD1IxOr
         7N3qhPv4swKULTOeasSCYInRuUvlfcA/t89hI9+3iwByvKbIXeoc0lD4IrV6AYPfhOrL
         bKoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YCSw7fRg5jFfKxk/dFIqyVmHQHi4xXKuI48EP+PUsEE=;
        b=nIPMk7///NMy2wEFxySqwznX9/M4oleQlTn6gbZgLRkzw/7bWsz7S4hmAtdWZQ7Hb6
         UrrkngWTc7rg9nliPjBL7RtARqrdTY5vL7lgqhIeOyT97oParqj8FpjG3n+P5KGR1mGz
         pgnqtAivjfeFnQ52xsZAnrUdC2Ve+1hzgjb1TTad1ZQwci8FJyXCiyAVSpHS93ZF5voG
         6IDPXQ5NYkZqXsxh/ip6r5NSyPS7fOntySP3Kpr37met9r72+LSnHkHLPWbH1tokYdkN
         EmV63KzoT11cOK/N0vxF62StmlPYb1iXzUyDtIIdJ1RgnEApcAXoA850mhuuXZpj8eOC
         h3nA==
X-Gm-Message-State: APjAAAXnbvR5nB5dYCJGniJBvXmeEh8yDDxHsGwIkBbcIHcpuXAAOh6t
	XrUJlRZwV2qn7JMA0e/qQ38=
X-Google-Smtp-Source: APXvYqwuG6hDNWWd/BeAvWWqHJ3H3uS6JJ56XIvpB3bFz06N2vvHpPdHY+hE55aJ6H8hEln7ZqMX5A==
X-Received: by 2002:a17:902:9001:: with SMTP id a1mr7122509plp.148.1569618755290;
        Fri, 27 Sep 2019 14:12:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:80d1:: with SMTP id a17ls720546pfn.7.gmail; Fri, 27 Sep
 2019 14:12:34 -0700 (PDT)
X-Received: by 2002:a62:f249:: with SMTP id y9mr6745230pfl.147.1569618754975;
        Fri, 27 Sep 2019 14:12:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569618754; cv=none;
        d=google.com; s=arc-20160816;
        b=G9HcqHHN80pco/wcVruuosjh1FxXQjzhWYzR4ts/VyiFGi/wT1qL7GnFX/lE4pkAHc
         0AP2s7SwWYLerUyBVGbPfW3jXrcNr090YWiI90C8EfyP0guyA93YMarA7B7t445BAnw2
         7v8NMAwY7/WACdqzDE5fYVBlXlK80MgVlvYiQTWOGWV436GMtKozdpLQCq3RycrE+wlz
         /xNs5ewB2cz/ZdLXn9ieP5oA/UuLP438zzB4zSFriK9JceStcseuv1RtR4xa7yVkUKm9
         xR2r8zNi9agd2TOzp+QN9toACk9VogY2GDWXiExKYOhDX1wIyniCn2nkhbjoEOHdB+mR
         5pEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MT3rEIfaJgpzvHmFM2pWeqN2XOEfjsN3Ht7YF+hthq8=;
        b=IEvR1bAlxl73DwsGceRsa4UjtQj7jHMN3keMxY+Alrpx2T0fti1Gzi0D0bpPeh0RJQ
         fCbeYbDBv9MH9EjTl5SviJBrpe/Z+NjIPAWZNZwhQbL7ZSMsZlfe+pFf9S5kJue70PPL
         MtNVKjauI96Z0S7IOENrDZ3QCb+pQGZ8hcbygHPi7NGIf9Plkn8ESgk9wppiruCY0yz+
         7sMbOvhPYxRGIE3uHzLH8SbH7n72lBUF5qLwrfVOVe7hI6UJSqvDBzXY2lRyfas0zgWX
         S24a+wt5knSqNlui5zydzXZ8CZxRD+YFXRmO7Xmf+gwbtz53+LYWRjxp+tQlzkDYLrMJ
         RV8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HWrjXwmy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x137si141627pfd.1.2019.09.27.14.12.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Sep 2019 14:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id h195so2240312pfe.5
        for <clang-built-linux@googlegroups.com>; Fri, 27 Sep 2019 14:12:34 -0700 (PDT)
X-Received: by 2002:a62:798e:: with SMTP id u136mr6912504pfc.3.1569618754157;
 Fri, 27 Sep 2019 14:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569569778.git.Jose.Abreu@synopsys.com> <80dd26ecf7fc82c88dc378d78210df5dd4138812.1569569778.git.Jose.Abreu@synopsys.com>
In-Reply-To: <80dd26ecf7fc82c88dc378d78210df5dd4138812.1569569778.git.Jose.Abreu@synopsys.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Sep 2019 14:12:23 -0700
Message-ID: <CAKwvOdntD5HNb4Gg04YN7iZwvK3CB4enq4ZPhUM-Bd3huvR2pw@mail.gmail.com>
Subject: Re: [PATCH net 8/8] net: stmmac: xgmac: Fix RSS not writing all Keys
 to HW
To: Jose Abreu <Jose.Abreu@synopsys.com>
Cc: Network Development <netdev@vger.kernel.org>, Joao Pinto <Joao.Pinto@synopsys.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, 
	"David S. Miller" <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HWrjXwmy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Fri, Sep 27, 2019 at 12:49 AM Jose Abreu <Jose.Abreu@synopsys.com> wrote:
>
> The sizeof(cfg->key) is != ARRAY_SIZE(cfg->key). Fix it.

I think the warning was from -Wsizeof-array-div.

>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>

I may have reported the kbuild link, but scanning my email, there's
also a report from
Reported-by: Nathan Chancellor <natechancellor@gmail.com>

> Fixes: 76067459c686 ("net: stmmac: Implement RSS and enable it in XGMAC core")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
>
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
> index 6d8ac2ef4fc2..4a1f52474dbc 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
> @@ -533,7 +533,7 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
>                 return 0;
>         }
>
> -       for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
> +       for (i = 0; i < (ARRAY_SIZE(cfg->key) / sizeof(u32)); i++) {

cfg is an instance of struct stmmac_rss, which looks like:
125 struct stmmac_rss {
126   int enable;
127   u8 key[STMMAC_RSS_HASH_KEY_SIZE];
128   u32 table[STMMAC_RSS_MAX_TABLE_SIZE];
129 };

yep, LGTM. Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>


>                 ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
>                 if (ret)
>                         return ret;
> --
> 2.7.4
>


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdntD5HNb4Gg04YN7iZwvK3CB4enq4ZPhUM-Bd3huvR2pw%40mail.gmail.com.
