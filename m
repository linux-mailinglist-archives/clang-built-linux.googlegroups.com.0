Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBO4U3H3QKGQERZ572EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 157AA20B93D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 21:19:24 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id v7sf8335618ede.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 12:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dU3cDDWl9rPh4ttuT16fxubeuroN9EVC61WrN8+OHdY=;
        b=gKzlf1yrFiV57/mEaZc7ykUoLwYvpQdMA+INvwBIW5NXQLZzOr7AxNC19TCl8xf5A9
         iMpASgWRan79/nQhLNsMu5e2A0uBJ92HTu1sBRoW+UBq5BN5WKVMoioVcEAr09D1EFE2
         5eCaJpstZAyat9OTilBKkxtuORvLSD7PgfZN2K2MMRz8ZUzdQJ+6YQghSeWPGvAM5fi9
         Ow7jf6qH8pmzXPVriEQfjxHYO87IjR+oAUb1aM/DkSewigD5SGH1uepyr/hh0KkV2UfR
         tOE8MMBFyemHM4Zh60cyEAOc7Ailb0JfRLM06S5Llxa6WyObxsOu3mvJIyhc1QwAgPxo
         Zjug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dU3cDDWl9rPh4ttuT16fxubeuroN9EVC61WrN8+OHdY=;
        b=hi6q+VUNymftCF/5sMgYG+Cn+r/oKfE2eyYmqI3yeiHwKABXAvSTz0hujsYkygPZkI
         hKHSUENOUDFkM/1k1kwZBAFnbXyNRwpQDwW25QUlrIm8ACu9bzsfLf53FZVIKJoSz8Q5
         ygmn884gE0F6EknpAT5Rhd+hL3wiuJZQLwxYL1gHW8rxNdB7IAZaf3DZqAZOJ91mYlFt
         llcJfw1tAP2ufqdyeBtmRffVRhGcFjlGhkAwxRBnNDKPPlseIRHW12oGR2SdKx7Tdo5W
         Abzh+8aKwFRkcRvY/KQVxeT20V5IdeL3BFKkfEymDoafZAm9xbvqipv77j+5b6anBQJ+
         mxDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310UhmK9EwJzW0MFbz5AFCEt2gFUtrvY2/BQZfxNa9bHGwp+GCN
	kpGNhuyEbgGIBrrSOKXR51I=
X-Google-Smtp-Source: ABdhPJxV9uoJoL1bRfHiqeXl3TavnOYgy/5brOXUY40bCqhlZ7kjvi4xjt8RqlD6duUyliMScNLIsA==
X-Received: by 2002:a17:906:1394:: with SMTP id f20mr4039107ejc.114.1593199163795;
        Fri, 26 Jun 2020 12:19:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c142:: with SMTP id dp2ls2122039ejc.5.gmail; Fri, 26
 Jun 2020 12:19:23 -0700 (PDT)
X-Received: by 2002:a17:906:f104:: with SMTP id gv4mr4081429ejb.485.1593199163299;
        Fri, 26 Jun 2020 12:19:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593199163; cv=none;
        d=google.com; s=arc-20160816;
        b=znRta8RsTiudkN8e1OhZfmbraYnhubj5EA0SYcXZZAR5VwBZ1oHH6kBg/Jrprs/s//
         GrOEoi05wBpqE9DGh7GaaIEXOa3Gxyhwh+28kgZCRBoBqhcuTCNUGHuJzFsELFBWs27t
         ZpyUNrrqME6bJ7Rc6RMGe/BSxJV3PDgdXz/9xwhDx4597sw19uw+sUNeDJlx+Xldk2mW
         pzWL1H4+t7KNYWotc+wo3u0/NvxrsdufsXAkSdBcX6s3I+REdxH9Gg2nvT080Vuc2i2U
         8hCNSu5HmjGfT9rQRGkT/K3ZkwYHLRUjXP5uMy1PSkQctkMpwvLX+oeCTGNFAvP2T+kE
         7FRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=dU3cDDWl9rPh4ttuT16fxubeuroN9EVC61WrN8+OHdY=;
        b=CQAYSwQfiSZKInIpHh9O3XJmtDY/1GkBBNXoIDjtmNSy4fXcIY0Tz5IxxT8WSXbEsj
         GCRHhBcy8NRXVdSVq2TXT69TW2hpli5IrMAgtzrF6hAR94J/gWXNWVrC6LjyrrWW9a/u
         gUrmEEN/gL2hI+708GXT05a/8G4JX1LS7AiXvljJUZ36BthcQhEG3YscUpIv7lNU9to1
         i5bqP/HlXxs82Yc8x8Y11CS7W7PkeOkFBLBcmQywwKptZ9vfTFe4tEdJlLiOfwodKQZt
         fN152V1LpRXodDQqbCrl4GNu6IK444mZDFcGvNgoeHfjhobItGrd5N6H1kJrqRYkkJH/
         K1tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id 63si43434edj.3.2020.06.26.12.19.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jun 2020 12:19:23 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 0E602120F19CB;
	Fri, 26 Jun 2020 12:19:21 -0700 (PDT)
Date: Fri, 26 Jun 2020 12:19:20 -0700 (PDT)
Message-Id: <20200626.121920.1999662353247081439.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: kuba@kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jarod@redhat.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] bonding: Remove extraneous parentheses in
 bond_setup
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200626041001.1194928-1-natechancellor@gmail.com>
References: <20200626041001.1194928-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Fri, 26 Jun 2020 12:19:21 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Thu, 25 Jun 2020 21:10:02 -0700

> Clang warns:
> 
> drivers/net/bonding/bond_main.c:4657:23: warning: equality comparison
> with extraneous parentheses [-Wparentheses-equality]
>         if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
>              ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
> 
> drivers/net/bonding/bond_main.c:4681:23: warning: equality comparison
> with extraneous parentheses [-Wparentheses-equality]
>         if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
>              ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
> 
> This warning occurs when a comparision has two sets of parentheses,
> which is usually the convention for doing an assignment within an
> if statement. Since equality comparisons do not need a second set of
> parentheses, remove them to fix the warning.
> 
> Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1066
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thank you.
