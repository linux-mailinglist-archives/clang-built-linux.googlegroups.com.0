Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOHKSWEAMGQE75FIXJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 976503DC6D0
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 18:07:21 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id m22-20020a05622a1196b029026549e62339sf6058255qtk.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 09:07:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627747640; cv=pass;
        d=google.com; s=arc-20160816;
        b=NWQ97svV6DksYTVe1x47XhIwe24uHMMi0NlfVD/SZHxL1mzKuN32v1jGHm9BBRVhS/
         +Lsr89ArtQZ+2ATGT6Tm3gWvKmKiOHi+fBGQFbRmP33ZUWMJnlQEnoM0Rm6CmEINggjV
         YAlcEyvDBLYR2LYClTenmRzNPpZigALj1MaQuXv/X3BmJLzR0nY2pP+DSCjr2A/nyARu
         y/nWtZn9QWCu4jgSm59D7qEFzZFNpGsdF4V+xIcU7xANunJOB1smd5T9hr+TrVHXelX2
         iiVgJkeI2gPIDkiH2ti3sQhtCUTo6EOlNhJule66rVj8QN2n0tqqDGannmTKqjDi6baq
         mW9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9AAKMSMp3E2HcoKQ8Y2BNFLF8BciEvRBKgeUcZq4qgw=;
        b=hK9AkRs50eIFPg1Rfg02TJZ8YA7AIrb5EAl/0tAvb20hH//vZ/yMZy4CgXBXKBn+Vm
         y4h+7IBtxvB0oFDCEtvxK9Uiwz+aiVTM3lqVDQSLA0F5uT0HS4a+wI1DOtB32Xbirn0e
         O2pZM5ylsl4NDXNINhCuK1M4/Wk2n2TQJSjrK8phOY3k3+E7BU9dKHB4KoUReDfTVgJK
         lr2TssQmRfP5kFCRH+P5F+ZeA3vsp2nvtQbTgFIt8MBcDL0G/1vSBLlwstBMA9Xlej+1
         h8I+O6Db7tYiZ6YXUxq8HvhlDY/7P2x+oE7MSNkyjnuPke5tDCvCOWi5WCil9NUVlSBV
         Daog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lc3SluDT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9AAKMSMp3E2HcoKQ8Y2BNFLF8BciEvRBKgeUcZq4qgw=;
        b=XH46wv5Ty0usKTQ4KvZEjz65cpy22NdJcyCj0r7Hkfh80TDWv0gfbfd0JtrdClhH8l
         4iKB3L3zrUvlZN367mWHDEZXgx05dzJAi2+19VaQBtnjxmttyc7Kcs3H7x1IMFjOM2hJ
         P6Cz7iN47lihMhsX7x7yh8/qZuohavRni7Dv+/uhLr+B5izK30M++0cWhbCsHIiQ5mjs
         mgdffSQ94St0TZko+6Z1HYZo/vCNbQl7hVC0FkxeuAvL6jikfN0klgyAUe/j0uZaK7bO
         stO4MyPt567rghJ9cXFMnI7kvOA/E27R+JKzBEyI2jP1GQm63ugP5NepKgV4XbS5njOC
         YfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9AAKMSMp3E2HcoKQ8Y2BNFLF8BciEvRBKgeUcZq4qgw=;
        b=WTULtGoH9oGoXLhmZUtM2n5LXkM8M8fK0k9KJK4YWUapWCiLzI9nn5mc0CkFD58ihM
         C4Lg/UK3uYcZAFL8dfUEtpRCR+8fsyA6j5v5VNT7vy7Te4ASZBgVR1emkQ8z7VabnYM+
         rUmeyGT/Dx/DtPvEdMhfcrFu2YXxTHkldxQpnpvbw8RLOzE+byjEkSBy51ZxkJDOHBxc
         xWsEhzjmt1HQWjBVGerwGN+rcdUCKi+le0dSmawIDUbtwbV2f/TrMkQ5HVq24YDgT9Wb
         gFejALLX8gDmX32BuCYyXB1vMh7621k+JY7I0pMJQ7509yPwhezkhyEUNc47mM2xFfRE
         XP7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313uRZMmE6eW41tYhNze8ONWhgdZzuhAkZkfLSlw1w1eNuG3m5g
	9HQ1zBGLUsiuj6SBuhKZ9gc=
X-Google-Smtp-Source: ABdhPJw6zzaKCeVYTtlSigmX8Y5CIVsuW+mWBd5tupb0SnKIltn/JtpS15jw3lwLT8RFPNns81mLPg==
X-Received: by 2002:a37:a396:: with SMTP id m144mr7795032qke.163.1627747640363;
        Sat, 31 Jul 2021 09:07:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1002:: with SMTP id z2ls2387854qti.0.gmail; Sat, 31 Jul
 2021 09:07:20 -0700 (PDT)
X-Received: by 2002:ac8:65cc:: with SMTP id t12mr7199364qto.30.1627747639938;
        Sat, 31 Jul 2021 09:07:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627747639; cv=none;
        d=google.com; s=arc-20160816;
        b=b7v+s3mRRh3EGugkZV2HrEqGy1uQdo8MewxJ+1Cge3MOscQQ/MQjl4BoMbTXXo4ceR
         +zjPrIYN/bsdHMtrxdEYiwo/5n+u9vG3jKSNkBykgTB5Fv2DGERJ4wfGaiukTJhGXKUX
         +I8gUgChEg8GUKH+yH9tO5PS9HrkUlfV41ImXz3cu0zogm+0Gm3r9JfXxGSPLRA0wZfW
         aBd6xXlFbfQ1l321UpR50/cZy8lnnkqq0cpoXFDkyarFJTwU3Dy+OXmnth8oV4Vpa41g
         Eke9vN4OFMUNevtNXwBojRNsomUEtZA31gkPWQV8MkAQxy5oRnNfA5xWkR90HxpiaESj
         bSZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LG7zSyfSn36hr9Y31v8KfdvOMGtGx7avDWUzJUf+ldk=;
        b=KD7ZFn8Ibs3Lm1qx8oYrw++SiN2XLPHm/U3jxmMrB8eNkJxr9enfzYGKVlgL1VY8Qr
         llAr0b5vefliDskQcJmzT2DhWNT6KrguDQfC0Mn1YsTY6PX0/ohWvYqcEbnUkflCeTeF
         RDy8KxxMCbi3GMmZGmRtEmekVaVRyEZ5H5WDXccvRvz6FJRIKZyp7wwiBxbjTn5W7Nfj
         JWzTPpVXAQC0JpVLUmTXRvTdOWuqdRNsknFW3Mdf/mgeETqq6C5mX5Y1FXslg8uEO7lK
         YMntFnBFdaAKZYM9c5pmlE8L3fubLeKt7l0gTASmcxHKesLkgKm5fDuIPDpVUi9eylrI
         VJQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lc3SluDT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id h9si220760qkn.2.2021.07.31.09.07.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 09:07:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id j18-20020a17090aeb12b029017737e6c349so11481172pjz.0
        for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 09:07:19 -0700 (PDT)
X-Received: by 2002:a63:f145:: with SMTP id o5mr1713333pgk.273.1627747639422;
        Sat, 31 Jul 2021 09:07:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x19sm6346863pfa.104.2021.07.31.09.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 09:07:18 -0700 (PDT)
Date: Sat, 31 Jul 2021 09:07:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Ariel Elior <aelior@marvell.com>, GR-everest-linux-l2@marvell.com
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 42/64] net: qede: Use memset_after() for counters
Message-ID: <202107310901.CB470B8C9D@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-43-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-43-keescook@chromium.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lc3SluDT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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

On Tue, Jul 27, 2021 at 01:58:33PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Use memset_after() so memset() doesn't get confused about writing
> beyond the destination member that is intended to be the starting point
> of zeroing through the end of the struct.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
> The old code seems to be doing the wrong thing: starting from not the
> first member, but sized for the whole struct. Which is correct?

Quick ping on this question.

The old code seems to be doing the wrong thing: it starts from the second
member and writes beyond int_info, clobbering qede_lock:

struct qede_dev {
        ...
        struct qed_int_info             int_info;

        /* Smaller private variant of the RTNL lock */
        struct mutex                    qede_lock;
        ...


struct qed_int_info {
        struct msix_entry       *msix;
        u8                      msix_cnt;

        /* This should be updated by the protocol driver */
        u8                      used_cnt;
};

Should this also clear the "msix" member, or should this not write
beyond int_info? This patch does the latter.

-Kees

> ---
>  drivers/net/ethernet/qlogic/qede/qede_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
> index 01ac1e93d27a..309dfe8c94fb 100644
> --- a/drivers/net/ethernet/qlogic/qede/qede_main.c
> +++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
> @@ -2419,7 +2419,7 @@ static int qede_load(struct qede_dev *edev, enum qede_load_mode mode,
>  	goto out;
>  err4:
>  	qede_sync_free_irqs(edev);
> -	memset(&edev->int_info.msix_cnt, 0, sizeof(struct qed_int_info));
> +	memset_after(&edev->int_info, 0, msix);
>  err3:
>  	qede_napi_disable_remove(edev);
>  err2:
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107310901.CB470B8C9D%40keescook.
