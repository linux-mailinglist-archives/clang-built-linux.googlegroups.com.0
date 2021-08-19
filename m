Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBW6M62EAMGQEWV6XJYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A683F0F7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:31:24 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id a13-20020adfed0d000000b00156fd70137asf985906wro.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:31:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629333084; cv=pass;
        d=google.com; s=arc-20160816;
        b=GDLNeOnA8WX8nJMYGguEkreHhOoXeqFe9J3vwRBi2z0I7dc7pTkdyhPC9plVu++ZXB
         6sFiuEpWTEq4TU0hq39tGC5iVxdNU0eWbmcfcibzatkK+QJLj5n3vnYU12z/2z9F9FpW
         2+hc759Xb+X/sNCZH8JFQRadkSxs/Www8rEhLrV0A3pceOYC1OEQgrfxb60aPYAyfnW8
         DBOjqhp9Qs8ymM7in/hSYAOJD79yrCTDOGhsJ/FMdgvAc0BLygCtT6yKvkK4jHLtD+la
         wxuMiL83X8j61IlcAhvtAV7oGI8CTc74sR9VtgRc0lFwoSBA+PeXpPRDcsQNr65z/pYD
         EfkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1/EsOCPEwA/IHrgvIo8xRNIsH2DEcBHoQhd5pkFxZn4=;
        b=ddzwWBVqu5SB1I759wYZvtnslsA8AKs2PzQt0e1w1SDFQI8eXCAs2NumZqYHzZMruf
         O4q8ynLBEN96JutIX09wWavsVhMsyLAIVQaWKJ9YK/+t9VNjVMOkmDQsYjHWj2bx/W/X
         5imiS09B8R1DaQdJRJm02R4ETcwIBYLGVlwTL881aiqAMHR4JwmgmERItcKRfiiMPMGX
         sdZo7yrKmXFsOgGbBASx3C2EWxiAfsGPZS4xwgIErPNhUtdNjc75J5Pqhc0Jw5j319bH
         JhvdhB7eUxiqTVow486/1kqauUD8uRyOTqHtkmHoJJ0FXXYv2Y+SKgd3L/4aRz425OH+
         ryfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=YBhDgQ1p;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1/EsOCPEwA/IHrgvIo8xRNIsH2DEcBHoQhd5pkFxZn4=;
        b=l393DXk9IUg6xzdO3srsi8B+Jeai1bY0VrInB/yHIcwXv5khQqEXY9FoVgg4lInqkk
         yrX3iRde642yRPmoCZ1AcTUMjZ4pY7HWTdw1DjMgIGM4Pz5mFoVyQI99OSvQrsybzC1B
         KJ50ORnJhOwWKI0Lg1GLW/qmksFy5O5BDY05v94HACWRG0r9GeB7ucXr9yj8cSwJhiob
         nwOas/RthLDKG1sFTpKOIwohhBeYoRuu5RUc8acPmPxOrdeGAEgUKCEl8QV8odvx5aJu
         CeoCgfIzFPRMLUyCzOlJ/cM9I868I/5qcz7h8bmURrblbmKPMrvhq0PhdLIPJC8akSRH
         B4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1/EsOCPEwA/IHrgvIo8xRNIsH2DEcBHoQhd5pkFxZn4=;
        b=g2rSMdO0wwh8K4FientQQ4SmWcIYhDlOBQvfz4rnj13ULp2bCfMXw2M0WLzaty/3V6
         3vHrUidoS3gPFYgSKISCQW1Elox60pRMU7gyi46wtCAkuaR+dhGdZg5fi7XExnDG0DeC
         BxYFUs7J1xP6banzrDKa3fb5cAWEN1vh69mOHOZtKqnWedIAhI9CRg6fwgq87n4Pqw2u
         zvvXlte7pirN/52V/Mj4vM+Qg9s2V78rlNNh99Ohaca1jJMeBKi8OREaAdQ6clYae4sh
         R4JzAlDvz9piz6JMfmVRzW0nUU84V9mhweldxMGpBlL5zPevF3F743hZUg7zS2T57h2B
         gz0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zdnnATyFQsP8/4YahR5QbNuuBBXCfybRdMf+EMTgQcpR5fWg6
	UKVAJYOYbuepUcTVd5ZJhIA=
X-Google-Smtp-Source: ABdhPJyVliPeRFHZuj60rK9nkAMjD/8aQtkxGgpb1w8FtfE4yTxJx1NC8S7427WKIbDRSQO/vyNSVg==
X-Received: by 2002:a1c:27c5:: with SMTP id n188mr8427512wmn.126.1629333084048;
        Wed, 18 Aug 2021 17:31:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:3b1d:: with SMTP id m29ls78956wms.0.canary-gmail;
 Wed, 18 Aug 2021 17:31:23 -0700 (PDT)
X-Received: by 2002:a05:600c:245:: with SMTP id 5mr10785253wmj.71.1629333083187;
        Wed, 18 Aug 2021 17:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629333083; cv=none;
        d=google.com; s=arc-20160816;
        b=ODOE/HhUt76KXnYcdgaaHbeutL87aLH74wsb4cawIlc0p1tTJ1oV+XocboyW1DzwoV
         VHg//1Qd2ieUQwUiMKFiUqfb9He8dJKMLujr62KRxbDwfnc2IsD4EWMLOMSJl1TLa2OI
         7lDsxrEhRpNxFhDPOj6bYwMeC/8X8BwNRrFP7kdlqxn7ReVZLKQ9eaaw48a7Dw0kUQ9V
         NsrRdQfxnk4MFMv/IqP98REt76BjZggsnfa8cqI6va2IinkP7fx8p9MV8GXElozlqccV
         jeO2A7u3oOoXWCizDJo/5Gp9wMKChYkwdL6UcQ240PMNxvPFpXJdMYR9DVkpGegMuBWy
         d+9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SYTkN+XVkEdV/u+OxTKinuCFAobXZwOiwDBIdlXk06k=;
        b=BOmJuAgPDnxV89nG1pkx57iGcA+kau3+G5A24Y+sKfsl3zK7C+clL4yoYykcr6vpwi
         8EdSsbHTydt6Y0pbvqdqWyvk5XQ69o4s7xCQvA1ND6r2IYSWIbCWv+fDCmOZi6sE+uAm
         Via7vpl7Dik3Kik1Bd2UzhJ4kAilgUIggNYcMjk6y/ojPZfPlkzura/y0NrzoBqEXjlR
         CBHUyejjBo+hTdtmlEhqJqfWOt+me/RNjrdgsUQEksA5IGn9DGUMHYTe5K9zo+WaX1Bc
         2dHQqYjjZoPcrrzfnia2UlUocOydNszn3IxEkyo6b6Tbc9xs+iC5RNR0whj9Ryr8bh6r
         38KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=YBhDgQ1p;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v10si433585wml.2.2021.08.18.17.31.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 17:31:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGVuF-004Qmy-PG; Thu, 19 Aug 2021 00:28:06 +0000
Date: Thu, 19 Aug 2021 01:27:39 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Joe Perches <joe@perches.com>
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds
 checking
Message-ID: <YR2lexDd9N0sWxIW@casper.infradead.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
 <20210818050841.2226600-3-keescook@chromium.org>
 <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=YBhDgQ1p;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Tue, Aug 17, 2021 at 10:31:32PM -0700, Joe Perches wrote:
> Lastly __alloc_size should probably be added to checkpatch
> 
> Maybe:
> ---
>  scripts/checkpatch.pl | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 161ce7fe5d1e5..1a166b5cf3447 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -489,7 +489,8 @@ our $Attribute	= qr{
>  			____cacheline_aligned|
>  			____cacheline_aligned_in_smp|
>  			____cacheline_internodealigned_in_smp|
> -			__weak
> +			__weak|
> +			__alloc_size\s*\(\s*\d+\s*(?:,\s*d+\s*){0,5}\)

Should probably be added to kernel-doc as well.  Any other awful regexes
that need to be changed to understand it?  And can we commonise the
regexes that do exist into a perl helper library?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR2lexDd9N0sWxIW%40casper.infradead.org.
