Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBB2V4YDZQKGQECLDCMTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F94818770F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 01:48:43 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id g2sf3568198lfb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 17:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2UfiV2S4Lk1JyP+KOSaA382JZ9tPQfs8Rpbr2tYNZAE=;
        b=p78ZpDlLrdXG8AgQ7NDhgFtszRrfjJwKYMJ89wgzcKx2+subsFidDVU/T0M8LeugvZ
         fYbdRtGsIgd6lbc5Tdh2vlj+wEMmcGe55I2dm5Gb96biHnlSiqVnCtIUAgcJR+D6AFRf
         r9vhhOGND00WFN7Hc+4VK3S+LX03/6dE2YnRzINckS5S/pGF9xad+s1Fkmu9eWwI5CHS
         I6CAbzFweb0i5O4tfSz0gAXPeFtTyvXVwpuYQIBPN5rCSLfWlMVhjxcVDCCmQOO9epX7
         oQhMv1eF+rJcAbh+Kz6p9NJ1K+Fzu7wOpTYF4PV/U97MUawYX5akrq7is0eiHvze6aks
         oY/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2UfiV2S4Lk1JyP+KOSaA382JZ9tPQfs8Rpbr2tYNZAE=;
        b=MdxsR/H/ycTak5hXgtrMRdx665iypCI+gPIbjzztkvXRlCUx3fKActJbT8apRk+6uX
         sK9PIfJZxUV3inNnWJz/pWSJqKOwZNhk9iJlVuJTJ4vboA5Z9oHFBHkrmLgfWDvzJDNa
         za17ZnvrXrcVeymJ7L8zNiZxWXSJ80DsQOLX2qSnc7EJlTpePR/ouNDfQ/rRKBLaAC3f
         4m0s3x1ma/SOppcRPeZRkcZIw3jX37C1AHxMa/v2T1yxbkW1/XXXJByUrs1AsGppfY+d
         MgzW2ZKTvkw06SK8MoFp46VNJuTk3GSXLmZOCOIDK4UmqcuqfcsGnqvhPI2R7cDNBmOR
         ijQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1NqGP8H1kSA33EZIIFeNtk2hQV2GT+8WLt6ZBmICKMZ6OVa6M5
	jlfzjBJQgkNsQjjk2ndtxp8=
X-Google-Smtp-Source: ADFU+vsF+VmMKxU13ItrI3E5gTPWhfA2gKpO1grDorGrpMvovUKj6o73TlhDsM1xA+7WiLafk22HsQ==
X-Received: by 2002:a05:6512:3044:: with SMTP id b4mr1254641lfb.10.1584406122637;
        Mon, 16 Mar 2020 17:48:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls3871680ljp.1.gmail; Mon, 16
 Mar 2020 17:48:41 -0700 (PDT)
X-Received: by 2002:a2e:3608:: with SMTP id d8mr1135249lja.189.1584406121868;
        Mon, 16 Mar 2020 17:48:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584406121; cv=none;
        d=google.com; s=arc-20160816;
        b=zlfEKJmqKBKhin/4zfdD0R+mZW232KcyA/neSGogUyx91woKGEFwxuQJ8uDBf/Fjej
         xKcUoHTZqVOd1q9rm5E4eL7U+ZCvHMI6o1yzMi/qX7J6qKgcNfJqoNVPy1ZUikK2gGkl
         uVVn0bNmuJb6Xw7SM6wjjFWOXMsOe0Ctn/Nm0FeYA2NH9fm3U87pwwujT5gabXUm0DLJ
         wVA1POJtCji0bS9QedsM/Y6Pc9fwiN4MKhNSviVw5oh7fUzLKHyLeO0wqwzHdGzZVZI/
         FyLPX+ZcNEU1HR2wZkXx1NUVsujvurW0enznxhmdgAX1B3VuF5xEyP391iUQIiUXKtpP
         +YGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=2UfiV2S4Lk1JyP+KOSaA382JZ9tPQfs8Rpbr2tYNZAE=;
        b=AQSUUMRj6kEnpIVQngqAc81wV/KKvZ/2FRSxGvApk2bTwjcebgY22k8r3b29PZRpVG
         norW2lSvGQLRmzKXO58dnjsYY3oL7tLBwsVarTmS+ETZaSG8/lkfbxK7YlkpAsu4JcFf
         6irieKI3DYCaYDakghByNgDxqlIqLZZ/u+Wzwo6A8b6VRqEbcPZDou7dlL3M9y3ZfP2S
         5chXpcNe2zKwbUhXwsIRgASO0XF8szrEvBK7EMZTqoapmLL+Uw5LxTK5OMkJpuFCVaNO
         rguy2+7RbU4J5TLIXtp+WwDkzqSvVr6ZTEbKuDEChRHlKNZl3KHkn7+NQefuAbZhKwPE
         1LkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id c15si69858ljn.3.2020.03.16.17.48.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 17:48:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 9CCDA1579A147;
	Mon, 16 Mar 2020 17:48:36 -0700 (PDT)
Date: Mon, 16 Mar 2020 17:48:36 -0700 (PDT)
Message-Id: <20200316.174836.1008034012256551916.davem@davemloft.net>
To: masahiroy@kernel.org
Cc: linux-kbuild@vger.kernel.org, sparclinux@vger.kernel.org,
 clang-built-linux@googlegroups.com, viro@zeniv.linux.org.uk,
 ndesaulniers@google.com, ilie.halip@gmail.com, natechancellor@gmail.com,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] sparc: revive __HAVE_ARCH_STRLEN for 32bit sparc
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200311223725.27662-1-masahiroy@kernel.org>
References: <20200311223725.27662-1-masahiroy@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 16 Mar 2020 17:48:37 -0700 (PDT)
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

From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 Mar 2020 07:37:24 +0900

> Prior to commit 70a6fcf3283a ("[sparc] unify 32bit and 64bit string.h"),
> __HAVE_ARCH_STRLEN was defined in both of string_32.h and string_64.h
> 
> It did not unify __HAVE_ARCH_STRLEN, but deleted it from string_32.h
> 
> This issue was reported by the kbuild test robot in the trial of
> forcible linking of $(lib-y) to vmlinux.
> 
> Fixes: 70a6fcf3283a ("[sparc] unify 32bit and 64bit string.h")
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Acked-by: David S. Miller <davem@davemloft.net>
