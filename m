Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZE576EAMGQEUJEPLCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F7C3F3008
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:48:53 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id a15-20020a92444f000000b0022473393120sf5605247ilm.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:48:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629474532; cv=pass;
        d=google.com; s=arc-20160816;
        b=YSrENXqdhGK7kKAJvi39+14+IYLpfcre79DGNI557jiAD5rtK7zQHUBBoJmsP53CQt
         hcgmFk/fhVw+cCg3d2gSU/4HpBwRlqOPQquncw/NqDnJ1WBzVy0YQ4t8Rua/mqw9abR2
         tUFgU/Eolkom75aWZqGkMabJaOxjPJ9AkA5YdNKl9aGk0jJmLM2ex0u/f3WIN+zCMthO
         nCBzEJf1fsyXARM144/FOY9wObJDDBbcagriYjvCmIxAH3uFrE55zdHSnOCgxl/EVTQt
         61ZG/u0yYJpIQ5xQWfO5Dr45FngnN7lh6bUQhGqgvpI3ipyW9hypbn1Sm+pHC3z3655L
         vs1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sZLnKA+aI41Lc1ooNJu8nEK8kfBh8DuzKgxnhkYNoNc=;
        b=AghsYUFDziqQPGV6KqWYhPM8KHuRPjm+mUeqvmg0W5ZtQH9j24V7/e7Hmlof6wdUDs
         u0GweSbNQjEpiebv9xSm3rgKX08bgEsurgj7akIJHLqTFg/9KiaHObJB6iM7sef9TIQM
         Z9tVfxtNZnOfLbKARlPJg/53vLo0anI2c5kK/Xf110UbPRtq8fPlJWuQiM/mQy8BZaVf
         kvtiTNql4KQ75nLpJm/dLaBckUvUauyXvgQm2qEUigPlB1WYPjvv9bly5kOQV1Xr7TDi
         M5gIRGPyU8QsPwaVvoDBZ7vPghTtFVCL5lJcJ+WHPv9CB3bAFaH1Fz4OfXXu+W2yZGWt
         6UNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TQi9mHro;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sZLnKA+aI41Lc1ooNJu8nEK8kfBh8DuzKgxnhkYNoNc=;
        b=SxI0CDT/lXj9oIV+/E8U0DCcMtajy0Zx0SVbtshTBV/4tHw5/A3mDj6YGhVGcBxg9a
         swR7JMTUAAiohpgZ4wGtaIIanZdT/OrQmMCdZIq2MpNVH4RtLn1yUsixU4u5ZWxdaZb6
         bQ6AQ3Es+9aP2aBvOSEvRCvRkZVDo6LWz6qFryeFfKsS6WlZiQdlVcaUJkiXVxkdB1Jc
         CHPjEDEvNUZKWNBbDBZsBRg9Oddm90wFk+a3+sWzYbeue/oKE3+NKyO7ABD//x++BNEq
         tZte9e5DeaG5EqL5HNlr3gC7YqSuTnru07yqzje/Jnyj2vYdLxzKc33cnZYKQhYxCjce
         /wTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sZLnKA+aI41Lc1ooNJu8nEK8kfBh8DuzKgxnhkYNoNc=;
        b=R/+LZ/pc4K9xmXiiPbTKOWlTGDeO3PSAMU36zwyGRNtgEkYBoPjW0E3c8ku3jBo3M5
         n6eM24R7vpw7P7hQOAHXv5G8pUwohLXrT7WwdGCEXpjsAst52xOZf6yTZ9sIzH2PvKa1
         ux+hZdxpPZoZutOS1eveJL4jBW4Oyq2ihIpB9OS//VDAhn5/o3yhIcYWn5k6olekRSCG
         wCgeF63kEOXNSS6QS0YtmFfF28TfV+sIkefAuIJUqtrIXXjxPiyFf4cGwX+KOLUoKtJn
         2kMt8Qjng1huaYLgMZBvh3o3TeBJJYhdT5ppa9yHVIznvRDuxKE3IS92MqQR5Oqw3iIy
         HB5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WZBJBHsKUoAX8kGGWcLqlk71UUNRl9hElNW0AiGSxYQ2Yo+Ff
	vxCTivK1nA7nWfWzjndBzfs=
X-Google-Smtp-Source: ABdhPJx5HZ4RDgIfoRS+fwMv1dRfmng6M+EwkyafUIZdehYAMYYPZrCO3Ge2/JNmpI9UKiMA7cRNMg==
X-Received: by 2002:a05:6602:26cb:: with SMTP id g11mr16487561ioo.110.1629474532587;
        Fri, 20 Aug 2021 08:48:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:12eb:: with SMTP id l11ls1944063iln.1.gmail; Fri,
 20 Aug 2021 08:48:52 -0700 (PDT)
X-Received: by 2002:a92:d282:: with SMTP id p2mr11626045ilp.259.1629474532228;
        Fri, 20 Aug 2021 08:48:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629474532; cv=none;
        d=google.com; s=arc-20160816;
        b=W8McP9xRig2GblMc+5BuCD+T7wIdNPU2eDje+9xBzMMB0a8ZmVVe5rYClC9HcgbWt0
         L7u2EbmZx989/cT31LWOaBM+Am2gq5EeRrqXG+cLIV39DcFXB4nigjAUbzNgXuzINs2O
         N/w6E6sqzMO88ufmMEiomRAC05YljdUtp2b45UMXeWpLywGLsOVVtL8B4OG1rQahr1iH
         PjtYSwwaDu+f12/eqHb4HuvEIMbFIuarCHcYviwdLQT/C9LUNaN8EGmPBjJLA11NiUIU
         EleYExA3BhinsCh+RboxjP0j9RyP68tVDfo9Dn6vU38iq/ZxYwKaDul4ouLUtSn0VHKr
         TIcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+X4tplmtLpNByUEVXOfNbGWn8TfE6IQ/s3keb98s9Zw=;
        b=DMByTQxJyOcYbxwl4yZwIF61LL3P4NJJaCHPoq7YH2R67VSmku6bfvm/lXPsbP9L92
         BzSAYLuru8hq0/F4a8EtHcikXLHHKOlLH1IWOkHAuCVG0SGO1P1qAKEaSKzXaBLUcqrS
         ALW3SiV6IOcwfdWeBAEXXc3rbJYpH0M95OfSPYwa5a84coMZXMTGbUfmwHm6TIahMeGI
         U/R0qGVIjc4b7jcOguka1F9dbLbH3szBTHsK6HL7KWVrCgtKONNXB7o9iid3p39NpbhF
         w/EzZMyuLCdgOlShBNVl2gR9C1y3m3xCy9SqaEcfnaVSB0UQcnAXYjiH9oXt2UegNNIQ
         Yi4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TQi9mHro;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id c81si378400iof.3.2021.08.20.08.48.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:48:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id mq3so7552673pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 08:48:52 -0700 (PDT)
X-Received: by 2002:a17:90a:f0d1:: with SMTP id fa17mr1603893pjb.33.1629474531324;
        Fri, 20 Aug 2021 08:48:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q21sm6457593pjg.55.2021.08.20.08.48.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 08:48:50 -0700 (PDT)
Date: Fri, 20 Aug 2021 08:48:49 -0700
From: Kees Cook <keescook@chromium.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	linux-input@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 22/63] HID: cp2112: Use struct_group() for memcpy()
 region
Message-ID: <202108200848.E9DB1511A@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-23-keescook@chromium.org>
 <nycvar.YFH.7.76.2108201501340.15313@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.2108201501340.15313@cbobk.fhfr.pm>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TQi9mHro;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

On Fri, Aug 20, 2021 at 03:01:43PM +0200, Jiri Kosina wrote:
> On Tue, 17 Aug 2021, Kees Cook wrote:
> 
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.
> > 
> > Use struct_group() in struct cp2112_string_report around members report,
> > length, type, and string, so they can be referenced together. This will
> > allow memcpy() and sizeof() to more easily reason about sizes, improve
> > readability, and avoid future warnings about writing beyond the end of
> > report.
> > 
> > "pahole" shows no size nor member offset changes to struct
> > cp2112_string_report.  "objdump -d" shows no meaningful object
> > code changes (i.e. only source line number induced differences.)
> > 
> > Cc: Jiri Kosina <jikos@kernel.org>
> > Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > Cc: linux-input@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Applied, thanks.

I'm not sure if my other HTML email got through, but please don't apply
these to separate trees -- struct_group() is introduced as part of this
series.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108200848.E9DB1511A%40keescook.
