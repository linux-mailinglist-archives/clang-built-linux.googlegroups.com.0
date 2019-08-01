Return-Path: <clang-built-linux+bncBCR5PSMFZYORBCP5RDVAKGQEJLECS2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A757D2C5
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 03:21:15 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id m1sf30080414vkl.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 18:21:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564622474; cv=pass;
        d=google.com; s=arc-20160816;
        b=xSidoyGeGOuoMfFYTGwPUV9WJi1ykEWUDjjqC4wiyqK28uEQtJc7S5niyyVhDBRfmt
         prg+mG9sb3poC5lq85LndvnkgX5e1NqHHXel6BF8uT6VyQwMEegai85CAztkZ3gKd8QM
         +V7lF+GcnRtliYPRzxecGwHorSAjAzqiGba7muUtjL4PFyN5PuamD1qhr4GoJ0F6pUcy
         6L0dZkzliNS3u6lxrSMRMZ+octW7q0UWb/qkZva/mXWMcahvEQnOZV8GUXUWTGFU0hed
         dAnGHnKuGNqLG56Oz3k7lVQxezvNwyVPOCMPkCqx0EMiXUazvzK5lezGCEsRfwnNAwa3
         w1IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=JkIO5rxHo51Sjr5GN0jkgAgBkzu2WA6OSfBoFQd7guQ=;
        b=q6P6W21dMvrlSjaR7yM0B4vTqYHz/Nq1l7MutJE+qa6upG9rZwIAB2xNuVK7d963Gq
         PVelEhXdawz4n1FCJwFwYK0zr4dIs2tDznIRHNywMkpwvpFO9jp+iZ6uGH82p81lqUmy
         s3bVjmtRosoouhpx5frWBYDzKCxEzbf3nrkxogQJJu/nC90Vq776FL/mz31BwjzhO5Xq
         QakD5PIXRbdg/AP45Xx1BwCI64XDoF1UtrpF8ZK0HGQvJKYP/Mb7AyMIOupr+rPm/MvO
         CHwajHCo5ViDKsECV0pmnxLDQJtwihyWmy6IwmNS/n7MA32yhdIAOt5vOB+0DiBMjUix
         wEeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JkIO5rxHo51Sjr5GN0jkgAgBkzu2WA6OSfBoFQd7guQ=;
        b=S6V16yOYqYlxPQ65eUghEkyCRvJj2u4TChmQWmbOh0XHQSED6Elx3RQECckMEbljsN
         mbH886CyV3iwAnomswBHvj24P6mpvptcyGQCynrao8cvICclOhk5Lo7nNMH2BwF9HZBI
         S+iWynjGPSRBokJqQunAws8ksVWo2mTIIJkriJeHaE7ttuj19aI6OVzTz5eg7R2SZkdx
         GiRPuq0pLIN80VA4HsZB6BbGTrl620Sy9fKNKxwUfa7lZvu99j23McXvoqMKKN/Lb1lC
         DURw9UqLMOr5lUFBUA297zRYcLAnEaigX682lz5a3YCujhL1+iYYlQ/Nni+mqbd9izOr
         YK0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JkIO5rxHo51Sjr5GN0jkgAgBkzu2WA6OSfBoFQd7guQ=;
        b=jAOMQlNeJHMGWe0n+AyQm3MpLR7pcGvK7d2jnYC/q44BqCt3DLCuNbl7neqceHWfyv
         IIdC8WEOJSmYWCfFkUA5luPT7dW5DWV/9Bvm6gCfmDDvkkgs46IlryyjWe5kVst/tgqA
         fQ/Osi13cCHM/0GZwDl72aVTzm+e+N5HXxnE8Q6uWTMY0QyKp1IGSI13riR48BvlSSwE
         Bwx4B7HfZkz8yszmFtkBF4bOSVg60WDonK5IQodIcOCMXAhKC4nzLHpSYhaQVj9SqzRr
         0FbcdqqUb7WekhNSWwPokSUQPE41FPabzrQfEd41Q/HdEyCUnhpmPp+PKxbM19UgICe7
         AklQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3e8NYRw2lEisSnpJZRyS4cZ/kqkL8cZQtSCj9BMh6HxkN1ihC
	WlL3kuNga8/4Cj1wm5XJBBg=
X-Google-Smtp-Source: APXvYqzeWPQDwc8MWnmxUimxk9w+hiUJtY3xi21yvv8f6ZoejC/UQpMrPcLTaeLwNXsOriUnsPgKmA==
X-Received: by 2002:a1f:b552:: with SMTP id e79mr35249135vkf.90.1564622473924;
        Wed, 31 Jul 2019 18:21:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6844:: with SMTP id d65ls9310133vsc.9.gmail; Wed, 31 Jul
 2019 18:21:13 -0700 (PDT)
X-Received: by 2002:a67:f657:: with SMTP id u23mr45774844vso.154.1564622473688;
        Wed, 31 Jul 2019 18:21:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564622473; cv=none;
        d=google.com; s=arc-20160816;
        b=DeoCEO/Z5qgzlIzW4SI239tlZQLkw9Mgmf8n4C8ssq0hQjbzMgRXwIIm2h8Gc2IS/t
         oGcitX64wJo+Ye1q8sMPw1ACi+QqH7AXgeN1dYzk6SJOCpqyNo9Sa9rq07Obtnc7I54n
         6TjFlMXslZ8ICMlLfZ7S2ha+TISIBHqzd7mmgIXQTLHSlANPYaaO+VLwy3E/T9S/iqdN
         88vSQhKEfqyCNZ+ctUyybEvJc48eH15bW8jwLH/U5LRfjfvPWpEb4D0jQNuGprTJFpLv
         5F+nRR2sPeIWZSxLd+mOu3ZAnjfuTNeJfDJ0+7hmGVAz/td6KstNtXUJTTi4uVrDqi9f
         xglw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=rdCx9efad+T3f5J6VLVl5CE6S52WDT6nKBJyCp2e+QI=;
        b=YNcST85vupyUhtVKzoIP986EQi+DanKN3zijYp6MhmKyODaN54h84Ab1lWEspDw4Fx
         Br9g6gsYPeMXWe5/sTX0OgwLWCma9VjEfcgVxqunNX6IQFQneY+jBcgx4p01gp2+v1mK
         xCh6jd4FkNak+As/LP8x/aSM3LUiUTJH+TOVKg0XtNqJYEUaKBnDXsSwxDhz8Ixtonpu
         j4sqDDk19ugE/bh075XFEvRcN40fCBoVTkEyPFTfkSyR4XidzWaVsqdLFwV89H2w+Pb4
         jRn0bHyCkXDvs/s8sSR2f/gITDgVkK5M+DLKMmjO8NlaYYaFKCmisDnAaVNmH7bfrOxM
         An4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id d8si3377724uam.0.2019.07.31.18.21.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 18:21:13 -0700 (PDT)
Received-SPF: neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45zXYX3txyz9sDQ;
	Thu,  1 Aug 2019 11:21:04 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, kvalo@codeaurora.org, Luca Coelho <luciano.coelho@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Johannes Berg <johannes.berg@intel.com>, Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Intel Linux Wireless <linuxwifi@intel.com>, "David S. Miller" <davem@davemloft.net>, Shahar S Matityahu <shahar.s.matityahu@intel.com>, Sara Sharon <sara.sharon@intel.com>, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking debug strings static
In-Reply-To: <20190712001708.170259-1-ndesaulniers@google.com>
References: <20190712001708.170259-1-ndesaulniers@google.com>
Date: Thu, 01 Aug 2019 11:21:01 +1000
Message-ID: <874l31r88y.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess
 record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> Commit r353569 in prerelease Clang-9 is producing a linkage failure:
>
> ld: drivers/net/wireless/intel/iwlwifi/fw/dbg.o:
> in function `_iwl_fw_dbg_apply_point':
> dbg.c:(.text+0x827a): undefined reference to `__compiletime_assert_2387'

This breakage is also seen in older GCC versions (v4.6.3 at least):

  drivers/net/wireless/intel/iwlwifi/fw/dbg.c: In function 'iwl_fw_dbg_info_apply.isra.10':
  drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2445:3: error: call to '__compiletime_assert_2446' declared with attribute error: BUILD_BUG_ON failed: err_str[sizeof(err_str) - 2] != '\n'
  drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2451:3: error: call to '__compiletime_assert_2452' declared with attribute error: BUILD_BUG_ON failed: err_str[sizeof(err_str) - 2] != '\n'
  drivers/net/wireless/intel/iwlwifi/fw/dbg.c: In function '_iwl_fw_dbg_apply_point':
  drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2789:5: error: call to '__compiletime_assert_2790' declared with attribute error: BUILD_BUG_ON failed: invalid_ap_str[sizeof(invalid_ap_str) - 2] != '\n'
  drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2800:5: error: call to '__compiletime_assert_2801' declared with attribute error: BUILD_BUG_ON failed: invalid_ap_str[sizeof(invalid_ap_str) - 2] != '\n'
 
  http://kisskb.ellerman.id.au/kisskb/buildresult/13902155/


Luca, you said this was already fixed in your internal tree, and the fix
would appear soon in next, but I don't see anything in linux-next?

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/874l31r88y.fsf%40concordia.ellerman.id.au.
