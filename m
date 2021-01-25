Return-Path: <clang-built-linux+bncBC6JD5V23ENBBO6BXKAAMGQEYLEIHLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDF73023C9
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 11:43:07 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id a2sf6093917ljm.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 02:43:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611571387; cv=pass;
        d=google.com; s=arc-20160816;
        b=fxfq2OILOxNmAf/TWjGwDj6gjDdzQXHUMfYVEIWN/bO6Js96FtXG+sk5vsEIrYroUq
         jYd0Wl99XrnQrzdDmaV3zHz1cXdynppoxVbZJNC4pgQXGeedEW8o4VH2VGU0fNgFoPCx
         ZcgjpXdAt9P/lZxikoCLqvmMKXuLB/3Y2nm4mAuGttdqOlUg2ic8mHhjvQfyCu+SWRbL
         1IXxXFv5vxyaPeO3FGiHulVmsm4LGcIzcsZlqZgiKeOIhCL8iAb9N+AL9eMf91dVy6WS
         nq5Fg6htt+hUQum172IFjSe1/XWYyVmRLeVHgcR+O6q0uTRwPG5YnD+S04CWZzJuYIqh
         0mAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oCy/WiMoxtWSJgiwgc9R6ak67mWtNGHF+47I6iF5CEU=;
        b=gS181pBu9fRi4n+fJ3Eq0yAaXr2Bv3EfH3xWHNTz0bgxhA8Kymu995kr7ZMcmhILMR
         bkzlLr4dnAV6Pg02zu6txGob73alvuFD4zzYNl3ZzgrbdKSb+I6Vj5dSk6f5J0kmUdUy
         ve3DZdK7USf/z3lkOuI5XNKmbhvDMa6dgD1ZvOQHh16mIV2R21WnW2S6zctwpVHoOGWD
         X9tRbl9ApU86LkqA8Rv5G6w8WC4FssrNQlTiwaM1HU9akbJX9+mvExG1/MfTHOMvtU5y
         geZR9rlzo+ZDd2XEx3N7LAKBKgsRjUYi/S9NfNGdkJTA+mLA7uywbl4asCnxy3tVZRIE
         WgOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.221.53 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oCy/WiMoxtWSJgiwgc9R6ak67mWtNGHF+47I6iF5CEU=;
        b=QhcImeHmxIxXSESP0QYuRB208F92Yuugix/mkYBAdhaEgova0fuSwQhzlNRUM9OBGo
         aO5l0YwIAOSeAELA1orHxwZXvFRT+BCOyOQadCQclbKnb2gwk+POwQMN4H1YH+ZKi8Tx
         ETM3tkLpCHCijxnkHTyjOghruh8XR8T4trxw5nqSy0XB1BnsWhlGB+Dgdg9xyBtlPQGF
         EXZJdXGxzbpTSfy7cKZN2avEp6U0MY8Gm89UzRuWw0Y6hPoHqZVwxt/x69rrfwrvKRHI
         70Ld6N0QBoIsBPOEEyKvh9b6vh01cCBZen0r8PwKEHm2ipUAILVbDk6ATSAiUKuCS2fV
         nigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oCy/WiMoxtWSJgiwgc9R6ak67mWtNGHF+47I6iF5CEU=;
        b=GQEStQk9A9+FM2Hbr7fgAEEQW6Z00ih+6M43dfCNqSuHcw1VSAX5V5wdQ1ceLYllDQ
         WAg/T+gAvPOnyGDZ7fg1iI+1JSS1fpZfdu0X7e7/hmIExZQVpJkFTG3qnNMhr/l20VvC
         ZhrPkZJSudRpfScVcRYndGP2zhJrsZGN/9rvT2QYjyfJLZe3GRC0jUilgqHih5UZ7/Cs
         78xH+QcgCPV4SKLXcMTbqN1DgonZAuUMHRk4xGGcn71jyDGrfQQOzuF0GEoqV+Wj65XM
         IUSba2gNFYSCso1V0io7WSN4wFjwg9MMLlmowrBxaiFBhXhEatu66vKB8aAA2IvQGs0O
         hKHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331ZxMm3k1kZuMa/uIX8Nw0pELN5TBfxZ4pKhN5aKzq3MwGPdxj
	q9xmlZ52xWcygnZ/Mm1lX4k=
X-Google-Smtp-Source: ABdhPJxdH6e3KeoW1lw0fNl3x7fI45iWnfFBZCLrAEduO01UUN9K44DDmhK1NBmOhpXH65OWwG4yXg==
X-Received: by 2002:a19:74c:: with SMTP id 73mr186332lfh.644.1611571387356;
        Mon, 25 Jan 2021 02:43:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls4066369lff.1.gmail; Mon, 25
 Jan 2021 02:43:06 -0800 (PST)
X-Received: by 2002:a19:e95:: with SMTP id 143mr1766682lfo.420.1611571386247;
        Mon, 25 Jan 2021 02:43:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611571386; cv=none;
        d=google.com; s=arc-20160816;
        b=OcHB8IRg50fnECR2ylZpZVuww20q3R3A9nW7bwBR1wj4TvJEwVHtRpON7FC/QMlDRC
         0V/Z7jQDojK8Lx8dAuzwmJzxgwxQRoZrIgafMKgj7XW3aLGpC1CGOtBAqaNezCnClol/
         QK8PNCrRlhHWIOD17ySuEUOCvNUGCF9XTNdhyDxOKAVm1VsuT9ZYTbbxHSnwW2Z2mkt0
         GdlFY5GLO1dNYc/oipjYHv9ELiXuKV6D9NGW9VvWsQsf07BplcfiFIxHwFLn428+OOmk
         1uaHQEh01lDdxYG0IO8q0bLzLdJu+geFZHZ2iquoDh3m4ffxr0S75wPCtEdQrJkXFn4x
         YpPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=9E38cRKRum0n2yiM7vfj7nk7DVKz9F66/OoP7mN7fls=;
        b=kHd+9o5GzakBLioUwg7yO7yWjPZD+MW5uCD2FXSL7hjkvoHmu83fN5UlXQOTOTbbR9
         ZuP/v2B0EblQV8o4u0QQWhd4YM7XH16MYVBRiDzmu64nobrYGzp9vZ4GqjEEFx4pCE1N
         pH7J3uRhoNnooqtb4BBrkIopR+t/Vwlix1uajemSLSW4D5xYui21mG/K0sp+pfrBtkx0
         nUY70nJf5KaNnvwW4OK7raXb6bD4pZv60a6rQ1ET2K/K7v7WHrVg4cP3xunQkaIkaKCT
         CUSCSUWTygq3I9AAboK3Q4Fa064+RvZxPI+wTzCCxzUgiOY3HI2HSG5QH/gGPnPOqjcF
         0tUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.221.53 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by gmr-mx.google.com with ESMTPS id i190si403607lfi.8.2021.01.25.02.43.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 02:43:06 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.221.53 as permitted sender) client-ip=209.85.221.53;
Received: by mail-wr1-f53.google.com with SMTP id m1so11061307wrq.12
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 02:43:06 -0800 (PST)
X-Received: by 2002:a05:6000:185:: with SMTP id p5mr144313wrx.403.1611571385656;
        Mon, 25 Jan 2021 02:43:05 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id u3sm24539809wre.54.2021.01.25.02.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 02:43:04 -0800 (PST)
Date: Mon, 25 Jan 2021 11:43:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Timon Baetz <timon.baetz@protonmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Sebastian Reichel <sre@kernel.org>
Subject: Re: [linux-next:master 1403/5542]
 drivers/power/supply/max8997_charger.c:261:9: error: implicit declaration of
 function 'devm_extcon_register_notifier_all'
Message-ID: <20210125104303.obcwbyomp4h2g4nj@kozik-lap>
References: <202101251647.kCTHB1IO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101251647.kCTHB1IO-lkp@intel.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.221.53 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jan 25, 2021 at 04:13:03PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   226871e2eda4832d94c3239add7e52ad17b81ce5
> commit: f384989e88d4484fc9a9e31b0cf0a36e6f172136 [1403/5542] power: supply: max8997_charger: Set CHARGER current limit
> config: x86_64-randconfig-a014-20210125 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 12d0753aca22896fda2cf76781b0ee0524d55065)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f384989e88d4484fc9a9e31b0cf0a36e6f172136
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout f384989e88d4484fc9a9e31b0cf0a36e6f172136
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Note: the linux-next/master HEAD 226871e2eda4832d94c3239add7e52ad17b81ce5 builds fine.
>       It may have been fixed somewhere.
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/power/supply/max8997_charger.c:261:9: error: implicit declaration of function 'devm_extcon_register_notifier_all' [-Werror,-Wimplicit-function-declaration]
>                    ret = devm_extcon_register_notifier_all(&pdev->dev, charger->edev,
>                          ^
>    drivers/power/supply/max8997_charger.c:261:9: note: did you mean 'devm_extcon_register_notifier'?
>    include/linux/extcon.h:263:19: note: 'devm_extcon_register_notifier' declared here
>    static inline int devm_extcon_register_notifier(struct device *dev,
>                      ^
>    1 error generated.
> 
> 

I think this will be fixed via extcon tree with:
https://lore.kernel.org/lkml/20201231085252.69831-1-krzk@kernel.org/

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210125104303.obcwbyomp4h2g4nj%40kozik-lap.
