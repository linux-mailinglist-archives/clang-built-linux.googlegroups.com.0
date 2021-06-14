Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPGDT6DAMGQEKT3FMJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id A23743A725D
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 01:09:49 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id 3-20020a4a03030000b029024950bdb69dsf7886521ooi.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 16:09:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623712188; cv=pass;
        d=google.com; s=arc-20160816;
        b=CCfeGaBbXhZWnDPC3KnOvvi7PVYwS8hJsMat0rE1TosUvEVxBBaoHYregt+oaFPWrT
         3oFOOfP+olf9J/b3RjDlFjbaA1SqzSEa02vSDXdb806kMv+in7h6fzoZsUMaAfXRsBMo
         QbhVklONbAx4c9CLOoO9LXsshgNnLkKH1JN39lbwD62h3PofjDO/lCDRNe3xfVar4+7S
         324FtVECXZoGJrNZcdcGu362lD0r11M3MkRNY+hF7mpdMovesC1ZiwX634dclbckA4PW
         umloDldZcVrZzC59PGhZQg4xxHdl2EYQkTtKBLzWVlsD0RyRS4q5QhR4/oRfjyNoODnh
         BqHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NT+Sw37fGWYpoDtY/lcdX2slpTETMTNsGDQpm5XyHdA=;
        b=H6gWDz0P7YDk89uUbOXaGSh8awecWuiXVjlcPcETNWhPHSlmTT20RZNM+XyznVjlkW
         ZNDpU8b6fzpUEu/ycMGkOMjLOgjeUNepCwVTW6hKf9M6XGdYTHYfbcGx+VeK86eli38w
         Ma3iz7BctFokpCs7wAfWH83PUZIxiRDXkQhoxVnF7F1O4H1/2JQkSggBuHXFCFCgswSf
         FZZz25UuiLSOtBAJPzF0BJY0HOMb4CAjpkCS9Ll4A+45C/q4QvUlzmx89Mf7F6mESKEi
         R9dwFdQoh88bfWraNHJNO4V3XSKfSsbmonmanwz0Ssmww2KFhfJAENMuvPTpVxqvqMcq
         RrSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZbzriAM5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NT+Sw37fGWYpoDtY/lcdX2slpTETMTNsGDQpm5XyHdA=;
        b=jvNFWtFGcfGYJol5iDhPDJPY+bFnku6zgDZfDlRGlJryyiAQunUbDXSLWlI4/K+MTO
         WxZxGAwPhWmY13RZMkLv+Z1WQIC6gQpgCRw25AuU0GgsZIFQ3FEtvcqUQvU3r3ngtxMl
         kvBZoJcXkSOwQAjBOVe0nbMxV42lLz8FWEXsHZKz3AFq+mZUycuDXBNv4U7yBHGGw6kS
         a09OqiwmqSBX9jdxnlck2wYm13k0RAY0Ym5Vpf2SW/yvcrJJ2dc+N9RaSyv5FZAyzagw
         Lnnj2q8WhnegeWyhh8MWgDJObBqxx9fonVpGIARIKUtYRJj1QHIM170bDESMrzJAKAsT
         h0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NT+Sw37fGWYpoDtY/lcdX2slpTETMTNsGDQpm5XyHdA=;
        b=R/7ncRamdIwYop7Ij4CSLBV3JZaxpEvyqE+5mxZvHVix1tGlJt8NCxamkSTb82hFXA
         KfwCVFSTCIjhSJTU6tFRdCxb0WAJxlasCcAM7vKiGNezZlybGg8P8YO4PLlB0GNItFY7
         If7JPpzuQJ1ZNlKGhWrTIGHKrr6TmMUbFc7rCRSKii/+qEQGTM9L7iLNDTk+8QVzxfu8
         rO8HNLIt3MWm3eCKcVdBjABNRcmP/47RqKvvZg6iMJIamLvsDW5sRORCZBJ5bJAMuK3n
         E8EDY5j5Lq+eSGoACVyPxW5dx/UGhrzrpiodbhN3jy0UoMU5JPRwhcj5xYA3Lird/+81
         dmNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tDIJygVyG/Ufer0Og0Yap0oSKy+7ZJIvcaZtCTugXAgIe990Y
	dcfgrUG40Knat81OXBTDOo4=
X-Google-Smtp-Source: ABdhPJxdCc+JaADGaTotIrgmdE6PUzuVBokPV/I3zQA4Y55guDm5LsRgg89D+REJ7pxP80j2Hx2GqQ==
X-Received: by 2002:a4a:a744:: with SMTP id h4mr15019213oom.26.1623712188545;
        Mon, 14 Jun 2021 16:09:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6242:: with SMTP id i2ls6536487otk.2.gmail; Mon, 14 Jun
 2021 16:09:48 -0700 (PDT)
X-Received: by 2002:a9d:5c14:: with SMTP id o20mr15291537otk.328.1623712188232;
        Mon, 14 Jun 2021 16:09:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623712188; cv=none;
        d=google.com; s=arc-20160816;
        b=MufS3FZJXSEPIMpmeN2F6woEr5LywL3mAkt54Yc+Sb0QzQiA7ONq5dKziPQHsrkVTH
         UaMPpdYLDAlgszUFfbFAiu2tWmq1cv/ZSW/TpwOhXFtgO272A3AYPV3O1az/pJZRtJWT
         UPf00OiyJelWvKpIW0cTSNchDVBaWovGJo2pN9xciWzOmpL6kfGk1sbWtrHuOZIfUY7L
         6GjR1IMQlUBgmLCu4i/V9a4HP2fAitfNnui9KMcs1BCT25GP97tqWnGyMj/ycfVdryPP
         moGGWgALYCNUilDH5uqNWhf4+XkNrCZGaKW02cPSBh6FzggyHhgd9Il3afZ9IqUTaYnO
         32EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xjx68w65fQQOZjwsL4rBc5IndNejAizyHVHEks/ULIk=;
        b=bR209WLRkEWPXDDDgDQltjN3j89ynfbEeaozWW3ISxQErqq3eY0b2ttlGdmEpcg2Dk
         I36rB+67YdDfX65jPW5dAgZNurXbOvzD/mi3PMUq26EOC4ORap92GXsUtVV0Dt+qN5ca
         7sUKDikW8VE9ABcA/WFNyb47IM9n21mqIu552YFUOYKViBW1WDWaU+PyokmEkwzyPB+b
         DqatIZ8+Qsg4Jslc28qruow+1vecfTX8gxOu7Pbo+d69mUGvlpHZrdQ7p31NieYOTM+O
         HyF6JChhfLkADvkUuwSjweS7+j76eDDnkXDOhMOqbV57DR10PLGx6eLn4pBbz66jhE64
         GifQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZbzriAM5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id d8si95064ote.4.2021.06.14.16.09.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 16:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id q15so9879095pgg.12
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 16:09:48 -0700 (PDT)
X-Received: by 2002:a62:53c1:0:b029:2ef:25e8:d9e5 with SMTP id h184-20020a6253c10000b02902ef25e8d9e5mr1526062pfb.74.1623712187446;
        Mon, 14 Jun 2021 16:09:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z205sm13535380pfc.165.2021.06.14.16.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 16:09:46 -0700 (PDT)
Date: Mon, 14 Jun 2021 16:09:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, nathan@kernel.org,
	ndesaulniers@google.com, samitolvanen@google.com,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, yj.chiang@mediatek.com
Subject: Re: [PATCH] kbuild: lto: fix module versionings mismatch in
 incremental build
Message-ID: <202106141554.A2D26986A@keescook>
References: <20210614055109.28774-1-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210614055109.28774-1-lecopzer.chen@mediatek.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZbzriAM5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d
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

On Mon, Jun 14, 2021 at 01:51:09PM +0800, Lecopzer Chen wrote:
> When building modules(CONFIG_...=m), I found some of module versions
> are incorrect and set to 0.
> This can be found in build log for first clean build which shows
> 
> WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed, symbol will not be versioned.

I'm doing this, and I don't see the problem:

$ make LLVM=1 LLVM_IAS=1 distclean
$ make LLVM=1 LLVM_IAS=1 menuconfig
	*enable LTO*
	*enable a module*
$ make LLVM=1 LLVM_IAS=1 -j...

What series of commands (and .config) shows this for you?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106141554.A2D26986A%40keescook.
