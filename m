Return-Path: <clang-built-linux+bncBDJI5MPT4AIBBJWITX7AKGQE3SLMNQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D742CB9B5
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 10:53:42 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id c10sf2166451ljn.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 01:53:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606902822; cv=pass;
        d=google.com; s=arc-20160816;
        b=YL6HSEKLZvIW9Dr+exSHKR6ZnVZ8a5zG2UeZOJkb0bZdPlJRlt5kMHNUjo/mf/qaGj
         VDWvFEhm8JHbe3z6QIZjvuujmWWTGLPNe/ORAXTbEQEMcgf/a4wTxrctgbkdxmIwTLvv
         XiUiul1c/xTAk4jd2OONYrQu5kFX68wfa0rN/fREzHyoC7pVM8YAraXi0rUjZeGqnn3w
         eLZw0W6FutmBPnWT+oxTu7mssj1F/+R5FgkawgvyCPDMlRV2tPmzsPaUeFWoT9H3Lmoj
         JJoWiHWtTAw71Lhc0SUQ5i9deNytTIEFtUd6RJNbwIuTMBPZkH8BCOrDP3fBCppVc9hz
         AWfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1l6d8Cjha2pFZrJF8niEXfetn3+R/5DexptrzvN9Y5s=;
        b=aZrhCctPxoXmZo9tooXH8+eKx15bQQ5uz/tbr1iFIXVF+HuUHTLFxh0jgwglDgtwP9
         fAtYkMntWDVJZ25EQEVoKy63F0WKLMHRn01X6kcDU6RgojTmMNcux+7lMVfiFNzWT20G
         uxhNSqgEf5b1qSiR4gSB6jGoWur5yht0mkZmTe/pcjLuDKVDkjtNjxYf5hojImqkOVNa
         z/Khj++E9fXNlIMPQKR1tDPCut717UTTOpiglLokBKVDlTyieuUCoVX9l/arKDV5PKhp
         26tmqLvxSxpMI/LCnjNIRmVWHtiMqcdUIAEF+NafLRp/gmOqrXtKl6iAj7cepcERoTfp
         8LNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1l6d8Cjha2pFZrJF8niEXfetn3+R/5DexptrzvN9Y5s=;
        b=hFuXb8E5nhvmUDBecdpNWSqJ6AE/nRP8/lyntHpQX+f1S6KM7c3CrMgr/iAEYPJtqg
         RCYl7ruvUy5v/TiHnSIookrIozc4+JgD+efnzAZQrIkVMwIE7+s7Z6yUwM8VBTSAD40f
         uoczM+1tLnurhYdCkT9bTuSchzZ8l78KpzBCEDq6YHHQTdKU0KL1rA5B7K1MleV9T3xO
         A0j8qQw9t24qL72eepV8NGrDhMK7WrE8Vm+hONbnT4PwkBJ0/Ws7RzN+ZDjDYVxDfVnx
         y5sRyI94e2q+MCPkYtZhx7X4wfbhYrQC/2oxZbU/EM8CkncJQq10GLwUQJqpd+JrsVQ6
         8OvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1l6d8Cjha2pFZrJF8niEXfetn3+R/5DexptrzvN9Y5s=;
        b=rSmXCjN9DxVOxROwb5u/DeM/Sm/UCer1D7G+C3AL8I7lZ+OZJ+piNkDhH/KEnsfXNf
         1R0s2CJr9sVXzPpctYxdUgnjqdKcGCjtVTPyJnOV7UEocdsa4iWpJCVpPJ+Wh8P/Q0sz
         RkWsu/DRqlcS8Nylx+rx5G/zFYhds3s+qOvu4nQVWMa3jrXVDNETYc2S5XnCt1sQ+qdz
         yQnUzTRK4JIYCG+s4vZSETQaQuAyf0YKCMJOajCn/UdTuBtg3WKU8sdkLygwOjeEpyp6
         P0v/baaNt0lzkS2jUOccLzbW/JLcHy1lDXz8eQaQlD+PyJz+ITefcQHyHcl7MIAn35wk
         kD0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HlRhOuqbU7RMH5XiUhukMHXQQA7ApfZYutCoGkvQ3PqrnyDkP
	coVefcOYyzzd01wE747hSu8=
X-Google-Smtp-Source: ABdhPJx+JslijIzrvbpWCZZdJFJAgG80Jv9dYjnwUoQNnIheEPeSrFI8Yxva9pJIKMWEadveRvZohQ==
X-Received: by 2002:a19:110:: with SMTP id 16mr844358lfb.557.1606902822382;
        Wed, 02 Dec 2020 01:53:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls781588lfg.3.gmail; Wed, 02 Dec
 2020 01:53:41 -0800 (PST)
X-Received: by 2002:a19:2247:: with SMTP id i68mr820373lfi.99.1606902821231;
        Wed, 02 Dec 2020 01:53:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606902821; cv=none;
        d=google.com; s=arc-20160816;
        b=hHYDroSWCWiGeNGzjJveODAl4VTlXROyMn/RGiORAEjZy9w63Msh+/wNjGiplZMCYF
         cm2jEhX7aLHaM82QmlMcgMGg5METmYZBBgxyp0cGhCVeuTRLhjgYzzhiv5hUl8x2OuGZ
         cG+nXWpvRJCuv6vNoPIAh4tngE3gwhKXhmkozAWRMLs9aDhs5NcIcIXW9PI9GagN8o33
         KrRC/21aVggZvWDNq4Djp8b8wJ9R5qYgsMVax3GAXFOsk5ODMLK2x/1niPPBd5M7kZTR
         C5c3YovoGIOO5+fzanCIgygC9ys7arlfIDZWkVztCXASJKMQ7c5TZdfWdul4rt2YpABh
         d+aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jzM6yzrWf6jGauDWmcqIdHReX2tepsK7F5z9vwHkNX4=;
        b=YNrRkEYS2NBClL5CY1bpuvEaU48VyQ8V1J+Iki1qQCA0rWD3tbdNuuJS9UzzxQbeSt
         DTIDheq8leZQLPVqJJ6g5yaCNGrbBT47/Uz5geR05DvcpVWS7W/yRstFjw21C3Li+x5l
         a+PqJe8TfCpfjv6l23SqXs8k8ifWepTe01jotNX2IWmU0wizEjCqfxOuG5MgSiGaJR/l
         RwVkJmx9PfrN+4Q9jObDVVt2Kd2HITvWu4mLjhpduZA3TZFpmCzobfNx6bIj4u+9ZXOl
         FK8Vcot3zTRN6IhK7W+yP3eM9LuA9RySHC1LfDpMySCbl9LMcBd5XZnO70YN8r6KpO45
         JL+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
Received: from mail.us.es (correo.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id h19si63886ljh.7.2020.12.02.01.53.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 01:53:41 -0800 (PST)
Received-SPF: neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) client-ip=193.147.175.20;
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 4812C82A0EA
	for <clang-built-linux@googlegroups.com>; Wed,  2 Dec 2020 10:53:38 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 39D8CFF2F0
	for <clang-built-linux@googlegroups.com>; Wed,  2 Dec 2020 10:53:38 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 2E940FF2D3; Wed,  2 Dec 2020 10:53:38 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	SMTPAUTH_US2,URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 7F1F6DA72F;
	Wed,  2 Dec 2020 10:53:35 +0100 (CET)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Wed, 02 Dec 2020 10:53:35 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (unknown [90.77.255.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 61CE741E4802;
	Wed,  2 Dec 2020 10:53:35 +0100 (CET)
Date: Wed, 2 Dec 2020 10:53:37 +0100
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [linux-stable-rc:linux-5.4.y 4127/5583]
 drivers/staging/octeon/ethernet-tx.c:358:2: error: implicit declaration of
 function 'skb_reset_tc'
Message-ID: <20201202095337.GA7269@salvia>
References: <202012021706.3FGjX7dC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012021706.3FGjX7dC-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 193.147.175.20 is neither permitted nor denied by best guess
 record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
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

On Wed, Dec 02, 2020 at 05:23:16PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> head:   12a5ce113626ce8208aef76d4d2e9fc93ea48ddf
> commit: f8c60f7a00516820589c4c9da5614e4b7f4d0b2f [4127/5583] net: Fix CONFIG_NET_CLS_ACT=n and CONFIG_NFT_FWD_NETDEV={y, m} build
> config: x86_64-randconfig-a016-20201202 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 2671fccf0381769276ca8246ec0499adcb9b0355)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f8c60f7a00516820589c4c9da5614e4b7f4d0b2f
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-5.4.y
>         git checkout f8c60f7a00516820589c4c9da5614e4b7f4d0b2f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/staging/octeon/ethernet-tx.c:358:2: error: implicit declaration of function 'skb_reset_tc' [-Werror,-Wimplicit-function-declaration]
>            skb_reset_tc(skb);
>            ^

commit 673b41e04a035d760bc0aff83fa9ee24fd9c2779
Author: Randy Dunlap <rdunlap@infradead.org>
Date:   Sun Mar 29 09:12:31 2020 -0700

    staging/octeon: fix up merge error

Greg, you might want to cherry-pick this commit to 5.4.y to fix this issue.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201202095337.GA7269%40salvia.
