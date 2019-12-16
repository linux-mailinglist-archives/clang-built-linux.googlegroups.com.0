Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHG37XQKGQEEJGGGJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id F17C1121B92
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 22:12:33 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id m26sf3214889otk.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Dec 2019 13:12:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576530752; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2MCkQXjQui33iOsZFGJys1A18WNshQ39jiR/3HxMtI8u5JlHWc0OVmf91rSTN5ah7
         2qekcLrLp3k+ShpJyV7gqLDjmt+7tlBsgNtodBq5sWxYL7b+enoKnDLQMptzErfLYfPw
         BAzM1aGSmpFzJmDN1paOg5nnhYcvblhs1LYlxhjdJePjB7dLqR0uLJUFxkZ5gE/oTRGm
         CV8QDI6dRxwASvR0PH1vwL1cc61Zssu9zKZ05sEGy99XnQ1uMocP8rBILgw4BbPJJsLL
         nDWYzv7G4fHft9OukJDhIyHPQcUARoCiFwVkphwtCvTs4xBah8T18getK80T4RDdhawH
         9/eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=VIyXSKphf69gaaT3lGLyppaxHt407DEFUtJG4i86ZkQ=;
        b=eWlPCUY1OTC6W4tdRvJxDJojPoMK7MQF+ogLueHAg2sLZWjKlaP08ykLJTgL8VdsL3
         VMOKgLlJkedVLABfohCkw87wdhe+61scYssmYn42ivpgVnAf/nOXIxSWvsHAdpqez4dk
         Kan/b41dI376YWh2XjSIYW1lCsxph6zfMXWAru0BCrYNK+Ajh+Yr9igANhu/L5SpvAnV
         4lK2X/3E37BGElH+HhXwM+KBh5rKdxFpxUkv51QBng9FrVF+xiBztU1UtiLxUb03sSR8
         Uh1WeAAyNLSeczH9DKKh+oG8s2ZPYx52IiZSWX1KNeHdfaoXntwoAqr2w/ShripA9PGb
         nlAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cYa9EI27;
       spf=pass (google.com: domain of 3p_p3xqwkapopfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3P_P3XQwKAPopfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VIyXSKphf69gaaT3lGLyppaxHt407DEFUtJG4i86ZkQ=;
        b=Mk/3+Fpoj+GfNPlkUsAApqlDZtplX2blF5OqHWcuneX6By7/FydL2eT5H7ZWw4xLND
         iVGa8HPni9yv6Dexzlywg8V0CgBPpXJnFzc4yTZ9g4MENsIpvyjCrEGXyIKnK+HsKSW3
         rQwdOOeIbZfUK2JXR2GZ2K1IJmQjXx10x7abtQP7q6du2Go+3Ed9HTqZ7NCcfppTgD08
         khJTEd+q8Z8UwdHYKL/Kh/3dH6T0FHvuH8t4b4kel6cCui5DhDaih7XSyXYXp4FIaeRo
         rWvKzw8NdrnIIpMEFxbLR0fMGreRuzLoCJjIJNIYYyG7N861EoTExMdJJ6OCxyMn1RTl
         tmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VIyXSKphf69gaaT3lGLyppaxHt407DEFUtJG4i86ZkQ=;
        b=eixkX+vp7LyMIWg2jyHkXPMTFqm1xDYHZeoPNPnQeJUWEaElvQQsG6JwUcb+DePeuH
         mn6GRIS0FaniYpmZi08pqcV04AsSUVKr4hRuwvHNo1KBdx4LdlXQ+6RgLM/pckmNsnL7
         lxwaeC2B28hWN77StA8jMmtvDzEV4HOysUFjU5T6Ho7cj397CFnFBDuUmdoXVYBvQMCh
         LxhzSvXyPobBNgUj0oaQzChtFoQb5ZQ7qxvgQUZyP1O0DI4l1symsZIzatV4VGqQ2X0K
         SOHlgHR3SzLWFBabOB0PiPvuhc8Edc9UN3BnKy1F3+o2k6gluSUP2g6fPhCbo+ev/NZs
         6A+w==
X-Gm-Message-State: APjAAAXJcHgsau39H5P2uN5dxtM9wDf5JzBkLFOlp3QC8kZ5aUyDGT9j
	6pcGOErqH98tFdvixcgSA7Q=
X-Google-Smtp-Source: APXvYqw6VlHyJ3tXog7nZ9h/69rStQcyXk7jcc2hglm63Udd111fXWTqGV4TXOrnd+0G8tRdanRLpQ==
X-Received: by 2002:a9d:27c4:: with SMTP id c62mr34675794otb.292.1576530752444;
        Mon, 16 Dec 2019 13:12:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7059:: with SMTP id x25ls4967006otj.16.gmail; Mon, 16
 Dec 2019 13:12:32 -0800 (PST)
X-Received: by 2002:a9d:6652:: with SMTP id q18mr34362261otm.321.1576530752139;
        Mon, 16 Dec 2019 13:12:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576530752; cv=none;
        d=google.com; s=arc-20160816;
        b=Uw3E4shNoCvTssFiV6yTBy4+B6vvn71hBzxruaHkXQ4hEO2bXGvkiw9olqqIaAGVBn
         DJhhk/NKCdH50CHwYcXo08uqbiwUO8odOeMVQeds4Tvy9FMSDisSC0LiksFNxFeCaOOm
         e47LZo9ArNrgaeUGrOPDnnaGj4DTpev/+Czqao3rrz2GqRoYffbCl5hEBwF+YKIqthfj
         qgzGuZMjRLcywSlG5EgoEctRnWsS7eAgIJDRvNzVHqYFfjC3F8qIT2Pm5WHSVepmIOb9
         LkIy/XhkILbimSwTHqb241FZgoKnCdy5dRy77zkeaHgFoGUelViU0Ng8vSGxZ0ybDFsl
         YNIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9y78Nkgcr0rFazEi3lkzksbWvy3PwZ64nocKC8qyZAo=;
        b=G1/b81Shld8szOT2iJmeIWtxuKRxWWyzBicWrUNQf+S+iEhkPuPtUNjCyYN4+udAPk
         f2tzfiv77F2XRkCsk5Y1M6zbYJx5Mdag/1trrq0rp4KGLmAzXoQostR0bYP3/CefqO04
         blTYe40IMQJyv5yoF9Jz4RVn1xRNn/tg52oouJPIvcCXm2VFU/4hsEevgQC5FIXCPRa1
         uOMhomU87YsO/WplTxRu4Ca+CwfaIbkHfHG6kzNHp9dYFEH4Z7PQbDOEBV2pfG+absYM
         7jigkbhDuxR53fnbOJO2BJjOobtKbG3aZjgz7ifvSwWOwr8Ij49zOkxTShwHagTA2J5o
         34Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cYa9EI27;
       spf=pass (google.com: domain of 3p_p3xqwkapopfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3P_P3XQwKAPopfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id l76si791809oih.3.2019.12.16.13.12.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2019 13:12:32 -0800 (PST)
Received-SPF: pass (google.com: domain of 3p_p3xqwkapopfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id v14so7658635pfm.21
        for <clang-built-linux@googlegroups.com>; Mon, 16 Dec 2019 13:12:32 -0800 (PST)
X-Received: by 2002:a63:5b0e:: with SMTP id p14mr21436286pgb.315.1576530751321;
 Mon, 16 Dec 2019 13:12:31 -0800 (PST)
Date: Mon, 16 Dec 2019 13:12:28 -0800
In-Reply-To: <20191212135724.331342-4-linux@dominikbrodowski.net>
Message-Id: <20191216211228.153485-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191212135724.331342-4-linux@dominikbrodowski.net>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: Re: [PATCH 3/3] init: use do_mount() instead of ksys_mount()
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@dominikbrodowski.net
Cc: akpm@linux-foundation.org, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, mingo@kernel.org, rafael@kernel.org, 
	torvalds@linux-foundation.org, viro@zeniv.linux.org.uk, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cYa9EI27;       spf=pass
 (google.com: domain of 3p_p3xqwkapopfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3P_P3XQwKAPopfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Shouldn't patches bake for a while in -next? (That way we catch regressions
before they hit mainline?)

This lit up our CI this morning.

https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds

(Apologies for missing context, replying via lore.kernel.org directions.)
https://lore.kernel.org/lkml/20191212135724.331342-4-linux@dominikbrodowski.net/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191216211228.153485-1-ndesaulniers%40google.com.
