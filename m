Return-Path: <clang-built-linux+bncBCR5PSMFZYORBV6NSDVAKGQE3ELR62A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D8A7F66D
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 14:04:41 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id p15sf3685249pgl.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 05:04:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564747479; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwayF5s5QjN3555soR/Hqz8Um+XG1fojtPlVphakx0KHgc0zOezVvEQ9lq9Jq63BjT
         GKVjZLWRZ4ioIWll828HHvH8QPb0HONfiw1o8uPAe1fuIMVI1k7+b6bWFC5RHmxvR4n+
         5nt/cY+xdBUqxKnPUurDaxa9waeKJH1m4JUDvZPG2QEFgoCobSYh1GWMHOJ9DvYKfnZw
         nFN7GehF2rfpvNA2MGSRlU5704w647EdTyFC9QP90CgydmS9xMKpS2QZZOo5YZc5tRjZ
         tinZKzZBh7RVtxH4vUK5c86QLtw8jNe1UnwWMwrkJMuTNHu02LsYfgPs1RYbkwLTYZGS
         1/Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=qv7iy674OeqwHtCs1uTsO/jWWO+LR23FCB4tL/A2l7M=;
        b=C1O3KUZz5kT2XMDlXwfihB+UjCCPQSYO3RdVANXbrIq8SeduRJ4IqpuR3KICNsN1T7
         KUSjT4I6ma5yksEZXrf9iCiL9Trnn3TCYqBAyUb109GnJBX+FIcWdhWqKy+v3c5cglBK
         v9w3niaan1Nrw+qDIcT65LMKjQm/OzINZ++cgkQBSFBMC5UaULddDyL/U1rW7rQmW1S0
         li8jvqoi3SgPXQqzZfWOz5MaBTyBTZtsFeE2GBjfxsTCUryewnz/AdVmPP1eRB73pvQR
         jwOFFMlMtfZjJYxUcNkpkaXoNsr7FyFYCaZitNspjNbrAAa26ZD6iJMFbUHVS7ddy+PV
         LU0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 203.11.71.1 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qv7iy674OeqwHtCs1uTsO/jWWO+LR23FCB4tL/A2l7M=;
        b=qfgOI2W57/2N4hxB8kKIKjnk0Kssa6UVaFS3qAKt06NkgsBz8gDV3rEpNVgCPPxEUT
         htg2Tad+1pYfc4DuW2OCDcfTbb1u4Cwd9hUvBliCi7/0iq8yKkwBTo3hTlQRT5eMLDqr
         t9f7YMoQR0lnZsxkabFgwV09Uu+EfAo5tpEAe4XtQqfiD8iIjP8ZjLHDA/0OoAjGl6uU
         iwWy6UYDUnOX67bBrGW3mPbR//E/VTCueMw7oroqt+EUhUC/cL1YNbqUFHBm4/vkxtCl
         AWPmvRnI/zjXXnR4lrIjQEXZLlaqd0Fg6krpxWmzQz9o1BnuMh0+kN2oeZmpM7Hn6ZCs
         fmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qv7iy674OeqwHtCs1uTsO/jWWO+LR23FCB4tL/A2l7M=;
        b=BMnVRdtpUbp6Bl+QKjc1ZWj8sM7sjKsZpW5LSVUPS3u80GaPYdB7TMjuaNHPGG8rDm
         9jQb3a/QsqoEm42g/0ze6YFY6TgqVpqc0vNRRGAnvHjhUVTro19rxLOR3AE1tvw8x6N/
         EUum4OFeDAVGS0lbyQJdsJ15LUySJN2ZDdQFB/t+UqRmtytsSQ7661WexHb0p2533rA8
         6LNIUrEVPo/DUpgXYj2MDlkNvy+bi6tpSaPvWxBLx7T/pPLPjRGZFcboOegds3lUvfMN
         K+KuF5MYm2UbEARdZoZYDtbpvnOFh9RFuWZlwxoqJkv2A9JpI4KHSBdcoqymkh7OIiM5
         Twiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWSJ6TdcW1Hh9I39Fv/sjJvs4qpXb1MAyDTtUywxzVLtOtFYPaa
	yfjW2DlZORd2U4G87JTnAuA=
X-Google-Smtp-Source: APXvYqzWtnHR5Zteltt9lfsQXQz817LuQCxMEaKnrMz4kO10rVBQmBzEIKlulk+l/LZqAYYHQxpaBg==
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr12764855pgt.73.1564747479766;
        Fri, 02 Aug 2019 05:04:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34e:: with SMTP id 75ls14640820pgd.11.gmail; Fri, 02 Aug
 2019 05:04:39 -0700 (PDT)
X-Received: by 2002:a63:31c1:: with SMTP id x184mr121067592pgx.128.1564747479361;
        Fri, 02 Aug 2019 05:04:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564747479; cv=none;
        d=google.com; s=arc-20160816;
        b=PmmLdtJTUPsiEWCqLAi8bcWzLRCebINT4AaQaFcowapEt8wLzg/t2Gvdtt1+PIEobp
         aIp11dcQlVE0KZWsXoglCPTtYyKfNrWun7Ej+wtqMBpv/bxbHAyg8gsp4uiH7oSwogFF
         DJYc4tldne44Pn9NvNo/ZBl5hH4Zch2e24xHpZmFFblMmikxC4cbNt/QyWlXefh83ogI
         TgqfRPZ+RgBBJv9iKxP50I/TCJ5IR+CP6PuuQH99bMIJf/tQW+/O1ftcfSPWaTx1zovM
         sSIm+h+DBQX+LTd0PtLgc8u6uB+ce96Llet4neSE0xWrwh2atdHEdFOu2oUCZilLnaRP
         oRfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=aM6kGxL1Jy+V7siSX2vUFpRVIOr+6GcX/Q7+v1yAnJo=;
        b=HbbRZLVlVVE/G+d0684x77gicFB5+IbnqcI7JiEcz/+L8zNarOvVPmk4ZBid+R5mk0
         QrmgbEAPACWv09fwCFnIR/Xv6V0IIDv7a/X+Y/R/GB163KOEMVslQnpTD6ISp8JLBlBn
         7kqf3ulbt+Y1QS+ZGCzIxURIwjgxLW8NPOIqGh0UUrNlEeXussWRTmN/ECo0PRTi92u8
         hOyMnTZLadBoUJ5HQGZnSGvOlPHi9+A1MS/h8UmAlavRzwwucUl3nCdH/Bk9lYMjx/RU
         KIWc9D5iCn28h9rK6cLn1j4oRJg1+A0qkcKKdNuXpni+t3QKZGQ2xzlhnLyPOy/4Owy7
         QKJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 203.11.71.1 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id m128si585684pfb.5.2019.08.02.05.04.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 02 Aug 2019 05:04:39 -0700 (PDT)
Received-SPF: neutral (google.com: 203.11.71.1 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 460QnX1zNsz9s7T;
	Fri,  2 Aug 2019 22:04:31 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Johannes Berg <johannes@sipsolutions.net>, Nick Desaulniers <ndesaulniers@google.com>, kvalo@codeaurora.org, Luca Coelho <luciano.coelho@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Intel Linux Wireless <linuxwifi@intel.com>, "David S. Miller" <davem@davemloft.net>, Shahar S Matityahu <shahar.s.matityahu@intel.com>, Sara Sharon <sara.sharon@intel.com>, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking debug strings static
In-Reply-To: <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
References: <20190712001708.170259-1-ndesaulniers@google.com> <874l31r88y.fsf@concordia.ellerman.id.au> <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
Date: Fri, 02 Aug 2019 22:04:31 +1000
Message-ID: <871ry3lqnk.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 203.11.71.1 is neither permitted nor denied by best guess record
 for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
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

Johannes Berg <johannes@sipsolutions.net> writes:
>> Luca, you said this was already fixed in your internal tree, and the fix
>> would appear soon in next, but I don't see anything in linux-next?
>
> Luca is still on vacation, but I just sent out a version of the patch we
> had applied internally.

Awesome, thanks.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871ry3lqnk.fsf%40concordia.ellerman.id.au.
