Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBBG6QOEAMGQEIPUGRRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9082C3D8744
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:45:41 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id f18-20020ab010120000b02902a558226382sf919307uab.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:45:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451140; cv=pass;
        d=google.com; s=arc-20160816;
        b=yo7arAciP06+e7ldo7uhdbYBjPh4V4QiwFai0poonM1zZ2IGV2sfjfJur+8wyB7aTe
         gwOd+AkFj7ihm8HgFmi0JK+n4TbSvntFY25xGWJxkcFbrGs7R7O2yncPJCz3k+v9+zmZ
         0rXM8NIoI1OeLSKiMiVvBEKA3hNJQpB2BbtK47YXOfnbe8W1+EVG99xWFTn8EYzTEFs3
         CoBkGjovRSFCja8UIfMro0KWsA1ab99nwk5g5md8/XmMFUY8XAfocNbegDrMfL9JMh/e
         379uu2eWCuFgjws0RntG/rJO2hmLRZ5CiMQ8InZTvg0im1z4cFtTM3X2xr1c2tYgvClE
         MDcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h8DBc9/QqOiF/xGoDRzSDA1TQ0ntFiaahHQgc3X+T0Y=;
        b=nsElZQ7GRneMh8eHvAGT+5Ds1UWAigxSvlRcc2WkazQYnuzDNZ9eZs7v9g2dMvMGk/
         5VBCdlPOPAjYcBjoEBtAbP7+cGYnaXbum4xu/8FArZMOirHkU9tHp5oEICfcH03gPlbY
         fqeNbfrIa7z7p0y6ddP1QUa7yQuPnV3T2R5B5UuVnHkSsyL3odP1+MB9TN2cn9IkYlPl
         EcjqocEkywCQThcOkU96WcYRH83McXmN4yw1D6Suk+nu6+FCvxptpOysyMYF+25XkezR
         E7ksMu00xaz2AMxTY3mxtrJpJhGOD4B+4MWJQOR6R9uXDzmYimMFUSGGuUytiZvufHh2
         NOiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cSi5Yn73;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h8DBc9/QqOiF/xGoDRzSDA1TQ0ntFiaahHQgc3X+T0Y=;
        b=AN3NrmnXzIKj/FBUMvFHaN3AN8guCSfUPCjEH9nzdpfaXSNbVVoHtnI8NenWw2XpZo
         7XamTiFm3jEa+P7zZA8LtaM8x4PxFzJHvx7DrPL+MmtduWCLH37DoHbG7GWCuuGwlcd/
         YTKC4mi9pn6SNK3J037pLmttIQRxXhnCNKQoF+9KBux8brH9BpZeBvQgHmHEApvANYlW
         ux1exSjr7k9WlVIp8WXLi6ZIqpEDg55FxNe3ijJR6pHupiiqETWEfSombakkJ5NIuNW7
         pLhrfc1bZIrzzp9BSGBPz010tZZgmzd7eUcbN4QUXH1oBoxbiheZKXoDIe2MZwxQ4TU7
         69AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h8DBc9/QqOiF/xGoDRzSDA1TQ0ntFiaahHQgc3X+T0Y=;
        b=hB9eZ4mLTlmM8tpQAX84rWaHa1UyOqorgEJggetH0vQW2XtIcVRyTv0l1tcSLDnzQh
         CGzFl0so2RqYC5hqvQyhpR6Y5e2UI9wc8ZBqQgHgWdAg9j8+wAmhpZOCTA8yXO4IReVs
         eQ/+wbAO+ucwSKgxrK19MhwRnT35l0CO1oKN9yoHcjvl3SPSyOjWLudUmVSQjBVWULbH
         XZDYWvpW1BA/Pgy97LN0+u5WJj0FFFcjGDMKqkBP290pQ5VLPoPH5ZyJjFhKZLMUhjES
         JFsxSWoVBHfyL7lcCRkZZm5Qoxe6d5vCk+YgZBcIG6dkXw8lefRxtUKicvpkwvKBl59V
         CiVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o85shzRx2DDpUahi3a6vmn5gDkWEQDNB13un1YNKYBanuqJ0b
	YgsjkdeJUqhsu7Ts/byz7l4=
X-Google-Smtp-Source: ABdhPJwLherqdSa4ixw3xQyrFo7E9XWofjyg6Q44iKY41edkvu0qVd/0RDChYdjcDUXKBrxg95vEUA==
X-Received: by 2002:a67:d20f:: with SMTP id y15mr20125401vsi.54.1627451140547;
        Tue, 27 Jul 2021 22:45:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cd98:: with SMTP id r24ls167067vsl.0.gmail; Tue, 27 Jul
 2021 22:45:40 -0700 (PDT)
X-Received: by 2002:a05:6102:34eb:: with SMTP id bi11mr20650687vsb.5.1627451139968;
        Tue, 27 Jul 2021 22:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451139; cv=none;
        d=google.com; s=arc-20160816;
        b=US0BKWN/YYR4IZxPnEx+CsTdkyxCAp428QMZ876JQkziysqNokWcqmWgf+5vgOxbOj
         RRdF2Gul19sbHVD+axnS2prvb96vz/TRR0xoEpOLgG9k3pNWCs+r4NoffasaSlwS2jlT
         8gZGHcRfSDvUhUIsr09SFW92VK0RqVKe2Kld3kwfUHu6QvaGd2Pj9Ud+ArufFJxGwHob
         CSHX8GXqg51p8tVLg7ewF9c/8gWjx+EWmz3SvV9JChwi+AqPgHsH1u37e1XJt6KZaZLj
         2KVQ7UNdHpjOh+j1GSqrvW/r214cT0q+2wwFH1SWt1p25/3pMj6Q1VYYON0kedvEf33A
         zZow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sKs4ba1cAP37CQvL9U/gA3aazYDucAh0tBTbwPp8bnM=;
        b=qzPANj1vdMYgNrfW7Fy6tDPh05EQ5+wvlsRMnRJRTO4FxgAN3EZ6C5hSjfqjhlyQVX
         o+En6jmjrkMdYKgaOzh7zo79BOczw2W42CJf6bj516VOh07/2FLTJzfilirJ37xnMrD0
         MZ/d/Y8doxXwMOw+hpZpEYfl9eUBJjjJ7j1DIDvFZPAahT/dpugThmsGmrdJlaYdRhyS
         aqssOiSZYdoGD/DVKDwJRepKICNCW3VxQnYiwubVMVbuLY6T3KZgDJIGFIXX1k09u/Qb
         PPT6rofAFtKxlu16pNUdo68utInISmsrgq++c5KMfAGD6jGrIHh1HuAN6QA1lUNAyupA
         zMBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cSi5Yn73;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y18si441859vko.4.2021.07.27.22.45.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5EAC060F93;
	Wed, 28 Jul 2021 05:45:38 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:45:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 07/64] staging: rtl8192e: Use struct_group() for memcpy()
 region
Message-ID: <YQDvABSKqzGxrycR@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-8-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-8-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=cSi5Yn73;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 01:57:58PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() around members addr1, addr2, and addr3 in struct
> rtllib_hdr_4addr, and members qui, qui_type, qui_subtype, version,
> and ac_info in struct rtllib_qos_information_element, so they can be
> referenced together. This will allow memcpy() and sizeof() to more easily
> reason about sizes, improve readability, and avoid future warnings about
> writing beyond the end of addr1 and qui.
> 
> "pahole" shows no size nor member offset changes to struct
> rtllib_hdr_4addr nor struct rtllib_qos_information_element. "objdump -d"
> shows no meaningful object code changes (i.e. only source line number
> induced differences and optimizations).
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/staging/rtl8192e/rtllib.h            | 20 ++++++++++++--------
>  drivers/staging/rtl8192e/rtllib_crypt_ccmp.c |  3 ++-
>  drivers/staging/rtl8192e/rtllib_rx.c         |  8 ++++----
>  3 files changed, 18 insertions(+), 13 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDvABSKqzGxrycR%40kroah.com.
