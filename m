Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTUVW6FQMGQEKCTGNIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 404FF43278F
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Oct 2021 21:28:16 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id e186-20020acab5c3000000b00273804e72c8sf501786oif.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Oct 2021 12:28:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634585295; cv=pass;
        d=google.com; s=arc-20160816;
        b=qUq+8N4HThf0O54NfJm3NpTU6e14FPm3ww6S+it/A1oeqe9jIBZgib4MIQRUzF5mha
         Tk2YrJIPmpf8c2kPVXw77qzIFvfEDl/hkI7fYYuZdsZAcul+oSnMKXcXL1qMo4dURk9C
         bOK2WbTigJzyczN68UvYWooqJX7CRmWaHDrusalB8a039GbXPsA+SlGkkQne0BFwciUM
         SA2TIU5fmNAny3adfE2ypcAzOHsLFdToShU+w5OGf+dgwlgtO4oww8XuDMaQZ4L7zI6G
         KPcQkJk9VMaclP0ysM9Cc34mSClZ4QRkLsPsZwD8ECU8leRi0vQi9LkJEIth/FKiKJrm
         p8XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x6B3XfqffTtKcleOkw424XdaD3RlOnLJ2VtPkJHcTXc=;
        b=A09fJAybGAGEb7JcTNavtghNIWoHLTnOrZB+xNIWYXgqHM6nDuYOOQNEcsaCgu9t29
         msbMqnytPfX9wMKe00pSLueZQ+U9PSHUJFMuaakrTx47dVQj/YcypgMJvLrmrQHBhiEi
         WIr+9k7FF2fUq/VyalboEHACg8LOO1/j+KVGQc0nrAFSUCeCMZ6zdgIm+DvlavhPiLdm
         apW0c/P4xhCfk9KYCRD5s+a3f7fE55hjJ/DWxiugzPIYgte4vbq0InjoE6a5GW4AwYLe
         smS2EkmoCC5mEDIjZM7sguADx25Q4HMebSEQ8pof6C8YwKoE0Y+gLnuVOie256Tgji5i
         NrpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="TZ1/KPtQ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x6B3XfqffTtKcleOkw424XdaD3RlOnLJ2VtPkJHcTXc=;
        b=peRnYBYkKai4p925L/RA1P5zkFHiaAKuhy8raSQ73n2UIebMDaOO8mRq1fQrNWUUrG
         V2B7wldrBxo75zfxBPnTkfIXGuaKm4dWR3dwCCpDGuP3NGjlx8dHkk42VsXmh0fF22Qk
         Fjneyl6XjcYuMEVDMl6tgdLS5BF8ZhCyUa7Y0jH4OBPJa+E6/YsTHuUMtIQyKxA+V961
         drxfeIg2nkjNiK7AxDzODraC+O+BewysX3lhrXp/VhcZTWkYS5IoNFLHm9zolqfeYnFK
         1j32R1V6FIKyxd82nCj898lfOMRjRWFqGKmyTuQeaCQuF0eEaTsXoyKp/WH63DUFbX03
         rKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x6B3XfqffTtKcleOkw424XdaD3RlOnLJ2VtPkJHcTXc=;
        b=qYkokZo1AbZJ5ZIz0YbyTnV15LErvgCybtw9D5JkffA7+NzV3TnStS13PxabMrw8ML
         PcJWp7nDLdjIFQlZxQYI+bfIGeGH3ixV4ClG9fOGEOnmrPpb57cglow+dfwm2SelLu2B
         CW6ezj5rBjzocohLM1AjG5z7ZfYcxzT7ww27c8wUXeDHY0eHFurKjv44JBJN16X9154w
         jGZTnz0807eZOv1kr1++wBjbaGJoSW8piJtCkBlV9zj3cdqPU4lw9YdWKTm5b19ceOue
         0nHG7w60OYx/gq8iJmskL/XU/J8eVnuggSUYpqgz20W5F8pBEcMDWJYLcvE44QVfMV68
         /Gsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+tTdHwb8IAI4HLvPYOx0xTvoCapfC9sqJNwqnFKTc+T33TLiR
	edVmQu1NAwg8SW645GnNWPQ=
X-Google-Smtp-Source: ABdhPJz+laRNtzQnFK9YYZ1wcv0rziVawUtbKhZP3GM2A7hDz1RzCJAJ8VBPrB0yzjXw4duG/sBmFg==
X-Received: by 2002:a05:6808:6c2:: with SMTP id m2mr687419oih.8.1634585294943;
        Mon, 18 Oct 2021 12:28:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4486:: with SMTP id r6ls5355767otv.3.gmail; Mon, 18
 Oct 2021 12:28:14 -0700 (PDT)
X-Received: by 2002:a9d:3b8:: with SMTP id f53mr1501447otf.253.1634585294612;
        Mon, 18 Oct 2021 12:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634585294; cv=none;
        d=google.com; s=arc-20160816;
        b=q3FRJpwWFTbYQ0NUGiCUC9l6i/sZGAYtHafiYFdwlBWg+kd0/H1aLKhusOdVlZ9nH9
         2gCkvgxArNAaskjWXdyRmD0rD8aKuwkEKQMgZ9rRCp+7HRu1O2OHpmFvstAEf5cCkEaF
         Tvs4Hf/g6oE72VZXZB/CsGlEWoloPp5enLtmqqYSHqR3t+VYwUktD8XKLjczJOzmg71X
         6tcPDWZq4HS2XIq8QTwsetQ9pioDlVlPTJX1iP5iGnVqNljI8+U7eMdIcAi3kjvHPEI1
         nfQry/ul/fV8kE5ALAdO0kAiJVmG6SnATa2Qmt33QEGbZ0omfPpWXgKAhoZoLKCmAvQ5
         l1tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T17Zx5b+9cZpZ2b2XmW+zfPtibEmmpshlWxKBV4MDzM=;
        b=eMvOi8u1h3lJDuhqWk1xx2f0aB2YqaB2kzaZ5DW32LKALcxO0/fRF9G+FGQCglBJgY
         URwrDTBnHGTYOE7WlpTugsQq1/SO+eA3slQCpJjFJTO6IFxYhgyLS2pDS34rNkhGfLhT
         SgjGHbyHrlT3ZsODKb9hCLdrpxoQB8IyGcPiSnG86J1zxAajiPFsXDikrFTEm1CwYegk
         B1qJVFFDnR9Q6KtBhxGqfrNYMoJqRkpU4hGLyCDG90cusnvq4ZLe3wK2FOxMnuw/lSkl
         k/7ZxAq7PuPJ8YRmYfHhh+7jh2ozJSPlgGVgnxnJIf1/WBIaslq6AkmguKU4mzDJ2FpT
         ddtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="TZ1/KPtQ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id e12si170940otf.1.2021.10.18.12.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 12:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id q2-20020a17090a2e0200b001a0fd4efd49so522212pjd.1
        for <clang-built-linux@googlegroups.com>; Mon, 18 Oct 2021 12:28:14 -0700 (PDT)
X-Received: by 2002:a17:903:1112:b0:13d:ce49:e275 with SMTP id n18-20020a170903111200b0013dce49e275mr29826166plh.5.1634585293673;
        Mon, 18 Oct 2021 12:28:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ng5sm211359pjb.51.2021.10.18.12.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 12:28:13 -0700 (PDT)
Date: Mon, 18 Oct 2021 12:28:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>, Linux-MM <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH for-next 21/25] lib: Introduce CONFIG_TEST_MEMCPY
Message-ID: <202110181227.534491C34@keescook>
References: <20210822075122.864511-1-keescook@chromium.org>
 <20210822075122.864511-22-keescook@chromium.org>
 <CAK8P3a1o58qeUsn9_+o1v1POZ9=3p17TCEba4-TRQ7Hf5mRg1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1o58qeUsn9_+o1v1POZ9=3p17TCEba4-TRQ7Hf5mRg1A@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="TZ1/KPtQ";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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

On Mon, Oct 18, 2021 at 05:46:09PM +0200, Arnd Bergmann wrote:
> On Sun, Aug 22, 2021 at 9:56 AM Kees Cook <keescook@chromium.org> wrote:
> > +FORTIFY_SOURCE
> > +M:     Kees Cook <keescook@chomium.org>
> > +L:     linux-hardening@vger.kernel.org
> > +S:     Supported
> 
> I had added you to Cc on a patch because of this entry, and the email
> bounced. It looks like you need an extra 'r' in the address.

*facepalm*

Thank you, fixing...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202110181227.534491C34%40keescook.
