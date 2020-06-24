Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBC4GZX3QKGQEUEI6LHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CB72072F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:11:56 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id v8sf1423124plo.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 05:11:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593000715; cv=pass;
        d=google.com; s=arc-20160816;
        b=k9QWNaEQzZdL/9P7qEZRtY8np5AZhRc+dnFv17bU8AOn3NzChast6xU6t2s8y4X3vh
         4UoQN7lhsexKnGbCBnRXBqHz6z9OvsWy4CmRsjsHo/bpkepjzT3RhviLaMfJlGjD9fl+
         dJ+K+mIYecBBTxG3MPf4KWXj+JpixMooLq+vakU7C2Hy4NIFOu8PrG/uZxM78OcwELca
         9S2quKgPpUoOr4eeDvwiCmWeArqN6xccDi6FgnSBhwyugl/FqWT+vDRSpkuWIxfow/rP
         wYLNuZ4cjtawIl3vFDGMOSMPvhpijcwPiyVs8oIHtMzD1uBDzz+C+BMnMcybyyShkfHN
         z6pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OywF2go5xhGyrOuLQu7upbRnsZbt4wb6kSY6dJIX8c8=;
        b=nJ28L6DKBUli9gLWQicAOS+m8KXvVugZUGKDxOYzAML1DyE+86mCpBrmVDnkcZDPcA
         He1AJYSwpRq1yqRdqkrzGwvoh7RLR502VYuZ+v9tftYn7MhAlIQ5wJqlp8fExmwood0/
         2wPFsHcHoXsSNCtJaWdeDXezCT7FSX6wnqHCGaBDHhLuccoTEJ6BP03EL+13MEdO3588
         MZkGEQe5d2YInYsTmgihnej4Pwv/xLtj50fsxsF6IicfqROqMN01nW0/IMaTO4wJ/erx
         QQqL5I+uVFuSPNK856HRqnhyUnVIzH8x+Sb1pQBuC/Bonq+uTm1MfkWMHPVVy4oZwNk7
         /I5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HFhhECB2;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OywF2go5xhGyrOuLQu7upbRnsZbt4wb6kSY6dJIX8c8=;
        b=dktRNdrrBgAoQifE0BdlsROOpVWufzrJ+GjCP+6Vcs34kJu+WjsBBw+l35EXihkTsg
         DTXwYVn5AVN4eEv6sSlQApp0hKO1rFE2sB7rEYwYUvt3SuqGL+8qjpHuqfNj2ghIcfKm
         0GjeuO2ylGG86x82bMExd8YJx8MdeFJGM4pi/+6oxkt9Kf0WM+7RqM2L/qbtLKKaR8nB
         o52PJMjJL284zWnNzMCAvA4IlSUqLwUjQrp2SeTjqRTGWw4FFOhXJhUgQ+PPd+nARjdu
         ynVf05lj8iKBJIbqmA2WuJc+wXBRGxwvwmLh946e/7G1bDGb7yzXpsOobyJ4tsdrnLWg
         EDbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OywF2go5xhGyrOuLQu7upbRnsZbt4wb6kSY6dJIX8c8=;
        b=Z2frxehB4r+ifqQFFEkLtGIfWdP+g5MzPu7DXPO5Wv8zDDg9+1CzciVwp155Y8zI0e
         jhu5djNnC/NpjBC7YN623OI5UxInu77hY+gdAp/Z4pFcov2BxLxN2bnpYdUY8hx3x8IF
         SZeNE4Kg8D1N4TWjvI5oKiE6kd/eIQKTIA3pCbD9VLNaZiZyPn+nbrZskABeALNbkj/F
         rCoNOwDXEeMQbxuJImBKYItXMwe08u8Nke9JRKZEPdTsKqsB/4uzRgpZCClDeWiwGYOn
         9drBv5CjfJZ54rpnOSHtcs0ICuKPlhx76uZAJtFIWKrlz5+yokVcyIvCzupjiQKELtfu
         FDlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nKLHnaJHJr+lDLxG3pWubed8A5jC8GUAp5yzrdonWNf2NK7Pk
	TkNCq5CWrnz5m209iomSTgo=
X-Google-Smtp-Source: ABdhPJwyfD1sk7ngoJ1cFTFpXwB6/nOrdfVxyUn5hbHFcBV4sC6VdX0P4Shtit/y+HoO2sNc00tWhQ==
X-Received: by 2002:a62:8811:: with SMTP id l17mr28864230pfd.72.1593000715359;
        Wed, 24 Jun 2020 05:11:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls926674plf.2.gmail; Wed, 24
 Jun 2020 05:11:55 -0700 (PDT)
X-Received: by 2002:a17:90a:a383:: with SMTP id x3mr29473831pjp.199.1593000714981;
        Wed, 24 Jun 2020 05:11:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593000714; cv=none;
        d=google.com; s=arc-20160816;
        b=sgM3hMbjTy+hcIOgeQ2r6OwaIWpWbsutYRYhAvr1Vc/BlgR7qJwSFXRvuovBb30iVP
         zPGL2YzRCkp+0WsXbbNj8n/R8fve/MMpK/+SX20Hjrjqt+jKMPjKciuEklZJ9r3dkkDi
         +tYEEyQBh9BFTeM9x1HlQp7a+BlTIKJln4Ie1Wux7+Z7DcYZ5+yv8qGG7TlMXcmmaEav
         02SRbBiQWkyr68c/4THmDPvtaV19fzaua2/gebBIwHWkzfztyuLss9LVkJkJ0U35OJqW
         ecivo/SHhfXy2FtqyzeuUWZ8NCv9K2zlUSuhTGYdkLgK+ukfTSXILpXn14YA0XK3ZqLY
         Ae5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4CZfFn1TJjzPjyYH0Q0aTmbNDNSj/tprHRHqewWpl68=;
        b=GCnxPGavPHUphhK/eEDyTtlwhxFHezm9STMl6niUNOiEY0Bk5n6LKyisk/jnP6gWQP
         1KRQoa9aj8pVHNKOSfDjg7AushfI2JBVY9NvqdFnpo1NRP5KqDfpoAodqEajDU7/RTRP
         y43RZFuJL92FcMReMWUM9CDYelqpxNC4o8BfeFrKEU+yKkjB2NPkqXrvbK0KTl9UzwEX
         kNi7cKCUInTF3WEBonlrZAiyu7juQ5VXj16KBYGuBgAq3qYy3scjjicpeyk693F89TcI
         3ZJeeTnphGwLSktN9GFpGeXfTSfWw+fpDR8xV/0uo99w4PobaMSssBMNW1V4o3nmuOvW
         sn0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HFhhECB2;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ds21si196420pjb.3.2020.06.24.05.11.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 05:11:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [171.61.66.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BBE552088E;
	Wed, 24 Jun 2020 12:11:53 +0000 (UTC)
Date: Wed, 24 Jun 2020 17:41:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] phy: intel: fix enum type mismatch warning
Message-ID: <20200624121150.GA2324254@vkoul-mobl>
References: <20200527134518.908624-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527134518.908624-1-arnd@arndb.de>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HFhhECB2;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 27-05-20, 15:45, Arnd Bergmann wrote:
> clang points out that a local variable is initialized with
> an enum value of the wrong type:
> 
> drivers/phy/intel/phy-intel-combo.c:202:34: error: implicit conversion from enumeration type 'enum intel_phy_mode' to different enumeration type 'enum intel_combo_mode' [-Werror,-Wenum-conversion]
>         enum intel_combo_mode cb_mode = PHY_PCIE_MODE;
>                               ~~~~~~~   ^~~~~~~~~~~~~
> 
> >From reading the code, it seems that this was not only the
> wrong type, but not even supposed to be a code path that can
> happen in practice.
> 
> Change the code to have no default phy mode but instead return an
> error for invalid input.

Applied, thanks

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624121150.GA2324254%40vkoul-mobl.
