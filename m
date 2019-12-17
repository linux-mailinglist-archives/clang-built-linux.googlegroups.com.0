Return-Path: <clang-built-linux+bncBCWZBO5OREMRB7HR4HXQKGQEHJ6TK7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C9F1224E9
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 07:43:08 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id y7sf3584314wrm.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 22:43:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576564988; cv=pass;
        d=google.com; s=arc-20160816;
        b=To5YFBXFYYC+2aVQjAk04L/HFnd9DWee2JrH3ncSHAwUxnH5H7GerFKWlefRQeaz37
         Q9gv25RgJenv5EteaMWZp22ZAAof69ed+xMkpaeZu0Y/IgcoMgL1Kh/aTN6Cy14SJFSf
         f1I2m4Lr9yAh4voGbCNQ5gjiZ9YxRy2mbg7aRKwcecVt3uUG2q3i1WjPYhImUu4cCSBa
         XRlhCJW2MGfa5QTV/p8GB7ntgQ5SPf6OYiM8M6j2pjsc8pkB9HqYjcjc3SqMlfmvzleF
         /hTnXT335jlbIhmO8+aM2OFjn+SglqArHNU3H5p/uy8SVTkWABEjCd5rvXeZO9qjappo
         EjyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8KTPo9OQGgrgiTnFC52JhkwGEM2FhmjOpluJczCm0Cw=;
        b=djk1XG4w12CeF8Tp8kSlfG+atf0QPOVz1uLPpMm0nNbxo7ihYJpl7Oa27zd8w5JEuZ
         krox0JCXLy1BSwy3yMFJ7imaf55cDz5pn4x4az++8vPEyE8fH5X8cGUdMe+lOREwdEsK
         8dPv7Np8i4rEPyQNdJxXT84IaqjyAl9ZQP8M3JoVltE6bLFRfMsVpcYeSnAUytJwFXvK
         ux9bsXD/KQaa8K87AmAtaLv9CPtFfNe8gxucAao55q2dgTrmMElV0kkSz67sPxNM7w6c
         5uUSNNFTyRXnKZDa0OeevIEhmL+QRxmZlnoJbyOaqwW/1pPTFn9gcEgdm79RLn+6o4qP
         xGeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 136.243.71.142 is neither permitted nor denied by best guess record for domain of linux@dominikbrodowski.net) smtp.mailfrom=linux@dominikbrodowski.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8KTPo9OQGgrgiTnFC52JhkwGEM2FhmjOpluJczCm0Cw=;
        b=r9GKdw1PovRmjB3ill5oiN91KGbheLHNtob/XI0DPXy5g6+lJ4ABhI0WkW72bj7rlf
         f8xIQBHqOWaSL1muFTnjgEPzfJwaLunzcPzw73IIUL4Qx6N0qOmJyyM7Haioa4Nza+fm
         /9l1RuOXKvmrhROiH9JPvvQnZiyJhyIX5VCCqQ5sh8ykJ4YdAaDXeCuws7eq1nDlW071
         72BqsrExCfskUTRWS3/3Pp2P90yRhyaijPpKZ2geMjG/ggdGQEhZ7iYQNhpG+H8h428c
         63GXzV4+2ec+x0/P+jbXBH4b9s6nb8Kd1xSTC27O44hU7WltO77c3H2qV2U4nUjy6u6L
         YntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8KTPo9OQGgrgiTnFC52JhkwGEM2FhmjOpluJczCm0Cw=;
        b=JVer833SNwW+MWqxBPmW9VAicHWyvBxLDUOwLT92vnUMjHeC0r+FE4kEQ5PO2itAkL
         IbeiwkW7GgXnbA8Bb1655svq8hGSylXmjlvMuysECTeL0UV0gM5sY6k56oKWIUt75Ll1
         Bwb4yAbagTGjpt66MBfkhMR6VlK4NcP+2KgQloWbqaSo9X7vx5OWB/BFkNMgTd92YoTz
         nNdCUX+EKxkVynas4qELgn1yboK4xO9Z6eZWKDkL2rbOpQ9wZdbh7TpziOWtbtVC3o67
         Mb/6M5i//e6MXA6XPngSwyPKRizztfcBUiAFnfE/5601QvjkOHQaonAtRZKUuRPiSZSF
         s88A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8UMBbsalr71IiC01KZ8TGxd5OLpa+4xR3i9S5qwE0ZXUNnk2p
	dTB8Rxg9I5yX4tHcFrgHdYw=
X-Google-Smtp-Source: APXvYqw4TY/1llEgNuOHRYQOtuiIjTZHJ0ZCTFE7LDILxz877rE7kKmoml7rA22rnsUtlD+hKzG2jQ==
X-Received: by 2002:a5d:548e:: with SMTP id h14mr37833833wrv.380.1576564988533;
        Mon, 16 Dec 2019 22:43:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cf15:: with SMTP id l21ls686666wmg.0.canary-gmail; Mon,
 16 Dec 2019 22:43:08 -0800 (PST)
X-Received: by 2002:a1c:145:: with SMTP id 66mr3544561wmb.11.1576564987985;
        Mon, 16 Dec 2019 22:43:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576564987; cv=none;
        d=google.com; s=arc-20160816;
        b=pUvahXXKyCA0v5+6arWNUf6fHQdQxB+3Dr5r8m/XojSg3peZPM1Pjc8N57tEQw6Wpn
         AYvPRWCr0G5HdNvC9phQmyOhmOm8PZ0BO6SGIRVg8i7/UCWNJEJEsxwbC8HfK+XK4yVe
         NLgg+zrW8LIaQRDrf2VDv6VDjwoRetgylExMcCR5r6dTmteRP6tZhbjliMPDONUZqxcK
         zCE0ka8Vgzgg0PiG+BXRDF9lKgj+55E51H2zn9eXlSP7Ba/RNkRqdaohFhbkqdXgwLMA
         1hZshnDXuyLe71HmgNT3DZJw/i1GJ3v113KZCfYtjZb45jVxA6O1GLurD/Nyy3WwT0BO
         y3TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=gjZWyZxBwWEuNpHUgKqYdEHTzAK2WpDSApayf+fapL4=;
        b=JuCkh1njU1xV9a1zPsWhKu1YOvb3Er+MuQ9WGpkBy7TrN7PLGO4RKIfSkyNnINbCVS
         3J79YY90N46o9FFJ+DJTYAaFlC90wq/U6hF8DS2hPGgo8K3b5TFtrkRWW18kyAHky0uJ
         2w1l/2+3sLpY2sUA+c/VTHhb1w9QmfShD0Y1oSxGp3/+Q5xhrvj+k0l2+Y4mcIQzMlYb
         tdJsgufgfAy7b5TmEEmMk33bqlFprJ6/VeGFfw6guG/kwes+Cd9QuUCUxeh7mEq/T0rF
         8veMjfPPs/6z52O9+doSQfD5ugCF7kbRBm3unmx9ywGGABkZyRjUV8iH7ZE6yzIgxkiD
         zqdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 136.243.71.142 is neither permitted nor denied by best guess record for domain of linux@dominikbrodowski.net) smtp.mailfrom=linux@dominikbrodowski.net
Received: from isilmar-4.linta.de (isilmar-4.linta.de. [136.243.71.142])
        by gmr-mx.google.com with ESMTPS id y185si46391wmg.0.2019.12.16.22.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Dec 2019 22:43:07 -0800 (PST)
Received-SPF: neutral (google.com: 136.243.71.142 is neither permitted nor denied by best guess record for domain of linux@dominikbrodowski.net) client-ip=136.243.71.142;
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
X-isilmar-external: YES
Received: from light.dominikbrodowski.net (brodo.linta [10.1.0.102])
	by isilmar-4.linta.de (Postfix) with ESMTPSA id 4E1DA20074B;
	Tue, 17 Dec 2019 06:43:06 +0000 (UTC)
Received: by light.dominikbrodowski.net (Postfix, from userid 1000)
	id 488A120AFD; Tue, 17 Dec 2019 07:38:46 +0100 (CET)
Date: Tue, 17 Dec 2019 07:38:46 +0100
From: Dominik Brodowski <linux@dominikbrodowski.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, mingo@kernel.org, rafael@kernel.org,
	torvalds@linux-foundation.org, viro@zeniv.linux.org.uk,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/3] init: use do_mount() instead of ksys_mount()
Message-ID: <20191217063846.GA3247@light.dominikbrodowski.net>
References: <20191212135724.331342-4-linux@dominikbrodowski.net>
 <20191216211228.153485-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191216211228.153485-1-ndesaulniers@google.com>
X-Original-Sender: linux@dominikbrodowski.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 136.243.71.142 is neither permitted nor denied by best guess
 record for domain of linux@dominikbrodowski.net) smtp.mailfrom=linux@dominikbrodowski.net
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

On Mon, Dec 16, 2019 at 01:12:28PM -0800, Nick Desaulniers wrote:
> Shouldn't patches bake for a while in -next? (That way we catch regressions
> before they hit mainline?)
> 
> This lit up our CI this morning.
> 
> https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds
> 
> (Apologies for missing context, replying via lore.kernel.org directions.)
> https://lore.kernel.org/lkml/20191212135724.331342-4-linux@dominikbrodowski.net/

A fix for this issue is already upstream, 7de7de7ca0ae .

Thanks,
	Dominik

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191217063846.GA3247%40light.dominikbrodowski.net.
