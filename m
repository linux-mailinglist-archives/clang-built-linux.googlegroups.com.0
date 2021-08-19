Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX4L7KEAMGQECZJERFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E61DB3F1DC3
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 18:25:04 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id b32-20020a4a98e30000b029026222bb0380sf2882142ooj.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 09:25:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629390303; cv=pass;
        d=google.com; s=arc-20160816;
        b=fuObmhNIWuTLnYM55/i8qXKRlA3QXLCSEeAxxEfq33wsbFnuSQConBZ8i/8aiCud7+
         KFpFFx99hvKLF9gX3DPhee8nbS1PvXHqY5D25spjo0hTjbYh4cjyiWq7K/gjQ+jtdP/7
         BcOV1pqWvIoUYdE1LcyptLrwS2+6rB7PthOiuJPg7HCIINB6YXfQ/J+2GgIvvRJvvM02
         ZItRDOaqAfXJPsvZTWbiWn9HkWYenQitCPVxylAYi5UmA9CIjlFFZIvL/PQeJQogUqWH
         qbcSvNfb39ZtzJXuOq6c6ha/ZUZFOhBdt/faAUfY7+9hT4ZBTBigAro+ikJ8zoGtQF5S
         6LvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=967CgR9uMqrWtxxKs4immUic/gBitK+r0UhQ42zWsS0=;
        b=bADyoCzmP0anE1X43I17lbB+UsizsNijTDhkUWEi5FMU+W49PLoonT6fM6oxSsIT5y
         hUvNZVCmkxITYJNFTj1uAbTPIBg4WVmS5TMJszZ5uqTl4M0oyjUn9h0Rx2EGFLPYMVKX
         hPdDU51QQnpUNQ+3atTStGy6eR1+ujRyRKjCaEmHtF7WcuQnWd+UieqmTgJNATrWSgfZ
         kebOavkftcIxDf62TolpU9Hxa3YyLFFh/cwNAEz8WOn9LZksRmDoq1BQFoGBz9sQW7MV
         bZUA9SxitbCi7Wl57H76w+qD5S8kCQITmTYTuUgPmfRgXiXmfLupEQwC7rKwW2wseChM
         /rzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RCXKCYv9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=967CgR9uMqrWtxxKs4immUic/gBitK+r0UhQ42zWsS0=;
        b=AHRZvOvLKLUaA64PWLi6r3hfBb7BWPFMwNMCd8WAhIbmfWB5Xs31wdCGMVPrEi1/R2
         b5IjlfMIGOczpuNU/OCdrmgfZmQEsPGJjswC58IfgY87fO9af1bOiZZ5Jwbm6oJQ7F8C
         XK8jMFlxeQqK7hev65JmWkRd2ErjD93I8OrTHbyTSToLnHJV3FgGKMOnL1qXAm5akrs/
         mmxE7a+fRJYnAflWHvSnPUyjYQj0YZ2qOZqAlCCSB+NDOothW0DV8n0Sp016A6CWZLxT
         cu4+zbfViW+QrQMUMPTpobvui01Tq0DOlhAsYQUa1UG5aD0pCbQybsMkQvdq4lo+7Vbu
         T8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=967CgR9uMqrWtxxKs4immUic/gBitK+r0UhQ42zWsS0=;
        b=Qiov0ckTDnQX7/zBh3J6dMlnQLiA7aoL6wqD6tOHqBWQ17jvjjXMSmt5DX6Cb4R0QD
         XvP1g9gA8BiZ2XTpP0GcFODEJFuI0j4K/XpULNdB3bV/T0UDuMJ14Ec/Od7b00ng2EgP
         W8lRKFEaeyVG+3H4f7+vr+t8X1+dVcWf9limI2PQ3/v4i8MEV3RjFAtnHi37qcfNyh8t
         G7T95vTLuKmqXBBGSSeDv4GyPX0W1KQSPjvyA0VAh7GL5bJc+fl7YlJCClDYiI+o2qjx
         07YUC6MMkUBv6mO/QcU8IevcQ3LoGVERRmgPvw2FBEv9gMKbyuM2xW705mLgARYK0ymG
         id1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nG50/EcYFrQRbsRuYfB2dOmtVdv70jDreLKyr3b8pgJuXaUN9
	WEx1acOOrJlgc2Fp75dkoe8=
X-Google-Smtp-Source: ABdhPJw44nNGuTL2Rc3wcCIyJzG2iMSNI9s545Q1DXj4cOEphOvfQEacMyGfrJQIwhz9FC6D5F2/2A==
X-Received: by 2002:a05:6808:90:: with SMTP id s16mr3222514oic.100.1629390303697;
        Thu, 19 Aug 2021 09:25:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c15:: with SMTP id o21ls926356otk.11.gmail; Thu, 19 Aug
 2021 09:25:03 -0700 (PDT)
X-Received: by 2002:a9d:36d:: with SMTP id 100mr12573763otv.237.1629390303311;
        Thu, 19 Aug 2021 09:25:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629390303; cv=none;
        d=google.com; s=arc-20160816;
        b=s0hcbX6lr4fANuzZaZPXKyVj5aGfnbQgG/WiYOBSca6v3F/lerxd7cugz2lfxqDfrt
         2N9CGZhX+rR/VSKPtYC0KzaW0qihGAXR5JBUAbdBkbtSTrIfvEa7qtTP2KuL11ZDbf8C
         0MvPrIDlfcvU+vkLWsyU2J8/+EIJF3PrpDPaNfcoj7pwB+EdcFs5BhUi2HSplkFQEtW+
         IJ13HgAYrvgijdveocLw8eVVgv848fF5leoPQgMfJMnLTA5pu6uWAzH7NSecqEdLosUC
         MrQ5D9rHtgHZM5oW7Wk6rpMiwh1tBFMcOKSChs9oF0sm4NyolL4hJKeDRpC+f41hm+Te
         4mLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UyAqbe771W+Lff6kTHtxqnAb6wyR4jVkJwEdQgLmwXM=;
        b=gTcbkYS2z04tcYH+X+dFY+ADIfUBPrjyMAgM6SdHLj5jNZRn/KPgU2qIvkLYbwku7V
         D5JjntouugwypUhG18PlYg36CyZJi6iAXB5TrLenZzsSiazrQVHnihIB1baqShex784/
         CbE5YGE/fkWztNnW6L1VzQ1Jvk4nBNhs1etKgQAaQ2fqXBMvEF2Hu9MYtBfo/oDRqK0x
         UU5kIED+A3Yp//7BykNKJUukcvTzNzA9FjNTnatFOyrDgyuDvUs1bq66UubRjRH5muU7
         9p1Bb3xL0ldzgugcMdTnovgs7LPFNZ70+THacKmTToMrBgiWQ+KPIMX1z2sL/XI9AnGg
         h4Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RCXKCYv9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id bf14si200254oib.0.2021.08.19.09.25.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 09:25:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id om1-20020a17090b3a8100b0017941c44ce4so11690866pjb.3
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 09:25:03 -0700 (PDT)
X-Received: by 2002:a17:90a:4894:: with SMTP id b20mr16180176pjh.13.1629390302929;
        Thu, 19 Aug 2021 09:25:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id nn18sm8165841pjb.21.2021.08.19.09.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 09:25:02 -0700 (PDT)
Date: Thu, 19 Aug 2021 09:25:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, ath11k@lists.infradead.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 45/63] ath11k: Use memset_startat() for clearing queue
 descriptors
Message-ID: <202108190923.30FD4FC6E@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-46-keescook@chromium.org>
 <87eeapbmhi.fsf@tynnyri.adurom.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87eeapbmhi.fsf@tynnyri.adurom.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RCXKCYv9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

On Thu, Aug 19, 2021 at 04:19:37PM +0300, Kalle Valo wrote:
> Kees Cook <keescook@chromium.org> writes:
> 
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> >
> > Use memset_startat() so memset() doesn't get confused about writing
> > beyond the destination member that is intended to be the starting point
> > of zeroing through the end of the struct. Additionally split up a later
> > field-spanning memset() so that memset() can reason about the size.
> >
> > Cc: Kalle Valo <kvalo@codeaurora.org>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: ath11k@lists.infradead.org
> > Cc: linux-wireless@vger.kernel.org
> > Cc: netdev@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> To avoid conflicts I prefer taking this via my ath tree.

The memset helpers are introduced as part of this series, so that makes
things more difficult. Do you want me to create a branch with the
helpers that you can merge?

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108190923.30FD4FC6E%40keescook.
