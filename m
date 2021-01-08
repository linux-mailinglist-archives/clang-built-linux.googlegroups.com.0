Return-Path: <clang-built-linux+bncBDWIJUMT74BRB3GY4H7QKGQED6FC5YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2432EF3E9
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 15:30:11 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id v9sf8385227qtw.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 06:30:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610116205; cv=pass;
        d=google.com; s=arc-20160816;
        b=NnSWG+Ku8Pl/5a4NotvVyMil9Y0kG/mZnK3+tbyA6X3ZjGLR6tPemEME2WE22ooMRV
         WFME4TXlsB3DypGNX409rXlKx25B1sqs0PAFe4by1YGk9K0HWz8i3Co1JK3za8b7AoiJ
         xpRcwgLa9Og3TkTZ/FfnxgTSgHYanVSBt6UaiB8JZAHeQXBf3zZjOA53Yh+wkQA51qMD
         uF+BkVn/hvg0LQ9Vg9vqp8ingPh9QvPvrOym4fK5K0m5UYX7cJgmTBiWzaVuKlM9o2mN
         QhHLnMMn2JHanCNGCAUwbNb4Xv566tpIShoY+PVpdit42v5QaY/4O8YXvgtdliPq69DW
         B/Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=u9YzXRlfAsVJSAjQLjxBOAHw+yxiD2moZCOfofyVvgw=;
        b=pKiMIOlxQ2KKtmleWv/Plt95wJHZCx8WDbUnFBCYDrBCqEUHr+76axq1JsSL6eJgGl
         WTmiuFUlvdWHAA0P97lU1QGCh6T25wPsS5tAG3JcZTteVJGEZ9XOvLy8P0HEKLgQoHpG
         7A5Rkm4ZDW4yqgBCz18PHalV3dY/o+GFG3ac048eVeOLi7jj8xB8KDQc+jZbPWuJO84V
         4EMxSagAT8Mczzvq0Q3JmkiDRyZfrNjZ9SwDzGS+cvDKPEsF5dG5kvxh/lNvwU5UykGb
         0Y3pKtYnfwjjiy0ur1LntGLR26d2nZXzLblDZuAET0aOoZnftHGUT1yc/4YfLUTycqYx
         FUYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u9YzXRlfAsVJSAjQLjxBOAHw+yxiD2moZCOfofyVvgw=;
        b=Wk+T7278MJRfQPOpE4gMTN+60nDLLp4nZL8nc/Itcc+pSpeOR5azQanJygco3e7zUx
         l7rLx4gZzyCec20wMwEvNGDZL+18WLqajeis6symfOkgwQ1tL01mMUjFzPpAmIWrPoIs
         FuWoU9FqO8Bz09kYkE50Aq9oq851goM26UzKJ8PPrblL43lOEU1aklp5iUakm6DyvqTF
         /yqa/zHqgMCzwnRTuFOPDVWhhhkQEcuVsBzSU+mxZYJ54vBzdCj1C6BhtQP1ZpPVbJKu
         2vFw0ZoBnb3IIKt1KIjK3PP4Kxe9MDR4SDmk8ol1IN4pMwS1lhey7QygdoH9niVeuOIb
         H1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u9YzXRlfAsVJSAjQLjxBOAHw+yxiD2moZCOfofyVvgw=;
        b=gSgWHeOPyEEc2+9L0sKiHnt3Efhmeg7ugu9639RwyADfU3jAe2zYU8/D9iJHB19k6I
         XWavc0eRmv0HG7vdBM5e6t01VbdzXku+hWjzQGWBQKmcf7k+2BEu/QAFvsUUnSrCkDuh
         zkPRf9hl040ajyhFbSvgxWnFNw+SPIR79UYcAIni2gcaiqMyqIOnrWf1CBW4VbJ8uv+Y
         QRSPtw2HX5BDXvBr9b/xzu/bRHhu3V+ls7Ap+UXGdnzwGI5CdKtvldxUkmX7maUkMzVs
         +W0aO7/cWiryu1v99yI/UnEGpRXzk6F7sl7i2id4D0p67o7LQlXWeeLP1AvVvXWBYsHv
         v+hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531I4yBg12hCciCDF8CsYcMSDatnk6OUziS0KW6iR6n0Bfcq/mP4
	u/vNZf/ZCRalZAdRpu9zMf8=
X-Google-Smtp-Source: ABdhPJx0KowKIjumVsOeOZSRbic77EdL8CL8qUWcNPHzVpC7OtPN5g7OREVOFuZFyE3TSt0wXukfVA==
X-Received: by 2002:ac8:4b50:: with SMTP id e16mr3652723qts.205.1610116204951;
        Fri, 08 Jan 2021 06:30:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c2e:: with SMTP id a14ls2616902qvd.9.gmail; Fri, 08
 Jan 2021 06:30:04 -0800 (PST)
X-Received: by 2002:ad4:4e4d:: with SMTP id eb13mr6935421qvb.6.1610116196490;
        Fri, 08 Jan 2021 06:29:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610116196; cv=none;
        d=google.com; s=arc-20160816;
        b=qwv2bvY7Idrwjp4NgatdnDretParuh+u+VlW3fL9TiiA8yd46wc1Df4G/sCSPp9t6W
         NhAiwOexNvy78O2VHYATETcEZH22ATLhJ3zNWZbi+ysO9ZwxE+lUW5UqHfQGRqGa6x4R
         axKbSzKiud7yMbZVnDQYbn9dtmZWG1LRtmfLXa5T3aiIxMvrbTXH+u0xnYhz2jiO1NZG
         qlPMkf/KMPnLnNEdgUc6aSxDhT29MKbAz1iR08N8yvo26h9VB47PKyB/LDw1h0y/+HCq
         A/13I8IDMke/uUSsB9CsfFGKA9Gopo8WbuUH8KJYt8QLi4E3rlYgrhxRzEw0RoiJTJiz
         qrCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version;
        bh=8ssA03k/zO3N0Azt7gjmPM1uK3HdrlgblN+oh22XBc0=;
        b=J+H7D8MTpdkIiLvj4gbaekXAm4Ij5X/Br2CfYwU9jZmYMKPe2skmOF4tCJf8M4bog0
         kaHmg8yKyL2quScWiRdQ+AVM772jD9yJoTucX1+ICWVTG+9d1xjJYMMAXCdUQvxD3SWt
         106zYVzuMoryrNlJSXTW8WeH1ZKGtpDJ2t2GdNIq9UvcIv78WiwQbZzyFXEcRllor28x
         vTSN8sH3pmH6pfz+mnUpPXyAznf9Zfugpc82OHbCNGO669yBjxIar9Tg6fhpfLttQnOV
         QXRdAGiFhCwrk0Mm2zOrK/yPgZkvNWR/tXgaJMaSm1AwBi4q/OuGysGIWKjLYGtvbTzz
         32JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p55si979319qtc.2.2021.01.08.06.29.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 06:29:56 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3763C235FC;
	Fri,  8 Jan 2021 14:29:55 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1kxsm1-0066AE-95; Fri, 08 Jan 2021 14:29:53 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Fri, 08 Jan 2021 14:29:53 +0000
From: Marc Zyngier <maz@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [arm-platforms:kvm-arm64/pmu-undef-fixes 29/30]
 arch/arm64/kvm/sys_regs.c:1544:13: warning: initializer overrides prior
 initialization of this subobject
In-Reply-To: <202101082253.LtrQbZvn-lkp@intel.com>
References: <202101082253.LtrQbZvn-lkp@intel.com>
User-Agent: Roundcube Webmail/1.4.9
Message-ID: <074e77e62c94400da4bac17e1aa137e9@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lkp@intel.com, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 2021-01-08 14:18, kernel test robot wrote:
> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
> kvm-arm64/pmu-undef-fixes
> head:   248735e2001115f36e70105cb9dadff95a9fdb42
> commit: 9bde3c476c881793f310f38a5f705b0394283f8b [29/30] KVM: arm64:
> Hide PMU registers from userspace when not available
> config: arm64-randconfig-r012-20210108 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         #
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?id=9bde3c476c881793f310f38a5f705b0394283f8b
>         git remote add arm-platforms
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
>         git fetch --no-tags arm-platforms kvm-arm64/pmu-undef-fixes
>         git checkout 9bde3c476c881793f310f38a5f705b0394283f8b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
> ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> arch/arm64/kvm/sys_regs.c:1544:13: warning: initializer overrides 
>>> prior initialization of this subobject [-Winitializer-overrides]
>              .reset = reset_pmcr, .reg = PMCR_EL0 },
>                       ^~~~~~~~~~
>    arch/arm64/kvm/sys_regs.c:1543:4: note: previous initialization is 
> here
>            { PMU_SYS_REG(SYS_PMCR_EL0), .access = access_pmcr,
>              ^~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/kvm/sys_regs.c:949:24: note: expanded from macro 
> 'PMU_SYS_REG'
>            SYS_DESC(r), .reset = reset_unknown, .visibility = 
> pmu_visibility
>                                  ^~~~~~~~~~~~~

[...]

No, this is correct and done on purpose. There is a default 
initialisation,
and some structures do override the default.

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/074e77e62c94400da4bac17e1aa137e9%40kernel.org.
