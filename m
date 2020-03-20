Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRHK2PZQKGQETNLKTHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E818D4FE
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 17:54:30 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id d2sf5527828ilf.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 09:54:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584723268; cv=pass;
        d=google.com; s=arc-20160816;
        b=gZe7Ey+I+mmLsYPL5jlSRVamhakNpvUxHHyoXXpGaDdppxlzX08C5AaivWZoQwUa/Q
         LLs1LxBRa/i7pmncNrX55pYzAnI1LzgR9lDz9u40lkrHNId5d/k5ZCCiZFp/csWPQTJi
         2ScoaBvwG6sWT4Dc5GurKZ+DaNp96ffX83eNJ+FQ+nHNszps94rJ88DSOgEe6XXOSd8Q
         c2UPlV0nDOW2Qy25k062k584/Rf3E77tuJiXv/ddeFr0gGHEC/KS72T2xxgyD66XvKEw
         MdwMAOzj5MxCfVWIeMZi0ZRt+SLk/bSd3X+kDN7p/qrUFjdoKvUhXYmvjKniN2jyQLV7
         iI/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=98AWGecFu+HTL2+ZAV1vdySmusRJRppdP2T4Dou/dD4=;
        b=vHQ8x1n6FvSjkUu8p3iJZjzG3v+FN0YIDmg1Y+6w0insb7Sig0J9skVJjtzgljGej4
         71kNiBRcsH9A+gBqzUGVLYhYxrbWiVvw/TWDY+NssbmBkzuoGEwupPH02LGfPcTwNYTs
         NJdNHnjVAohIihwKFW6v4htBSIaS3AppLhyICmeZlEw+EOmH1XpNQjWSEeLxyEKM9o7S
         ZWpRr46h+eKtni02ipQ0Zq48zKx/U1Eief/XgOgcJImcGdsSqJZ8LJf4ryb4lh5Z0FMj
         nq3YrozCAoHdm3claVbdHXUOFpmnXvN5lE2vGERKSIfxIfAkcyrec3eDmUVSdrKR8p4/
         uqog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbKYU8h7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=98AWGecFu+HTL2+ZAV1vdySmusRJRppdP2T4Dou/dD4=;
        b=GkyB0XWdcrjOBHlJVIASwznPdLFsB9xeZ71s6+ZeVdInbxXjYolBvFThvzXG3xU4RO
         anQ8XT9LQcNw+50fqBgU0g00AXcrkoFHa++AQH1sjetzpw61BrwiozvVDHaKMmcCWWK5
         mW2z5yUC77Gf/W5MlwhVz9GpCKjb56OP8v8qdTmOjNBgluUXvdpXG5O/0UlyH95V2Nx9
         hN4O8yL+/kFZx4+cYgzbWMr3FrfXTOXw26q09vgwZA6IWGYRKrEWI5vwS8T7thC614IW
         9wtV710wyvzyU7NV3re9AlfzwYE/soyxSqw3Jq00EYcb0go5hHtf4IoHz9Yxd4GS9qIl
         3dog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=98AWGecFu+HTL2+ZAV1vdySmusRJRppdP2T4Dou/dD4=;
        b=upzpGDwnBn+zmmKeVZ/VBXtGCL0duXIUCNPEmi4lBBYU3iErzTkrSM4o6tblEH3C8i
         CNCdI7uaMn2lYKp8pgGQggPDohVn/S24wjgf4ll4DQ8XdNpWsMLV/w3la3bCAydaFJBs
         wZoyt4O9iD9IXvtJNQiKO6+aa6zWRd5sGslunijUJAkmdfjd6dNtUrRzMqdygEafLzcx
         cWTqa5Mwaj3XVEJGM8NYIEshkVri/sSYcFKQKCKWj5LEkeiZOhoDiYFSdAphmbQn3ode
         qG6L7BGsV1Noq3zw0HFqN4KUpHWdl0HEqOOaG6/xLWdLFE7uzOjPo9rr0jwqqSLzdgRd
         S9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=98AWGecFu+HTL2+ZAV1vdySmusRJRppdP2T4Dou/dD4=;
        b=CqrvweqKRep44BsnCp3rAShiIRXCFsd629L6807RfZKutkHkuiFj0mr0oP15lf0H2C
         lAQvs6JI9b8dx2TnvUAbVs6Ab/aRO2IxbrpRVd6GLRtwk4rDf2tNvwL15niQqXuWpK/4
         nqhmYG8PHXut4GgeiHoayftdNvCKJlxQNLhFcHoN8JjpF3zO2Z1Ni1YWKBfaviGzjHuI
         wFGKdfxImVSvX/XmJMCGu+nRAhKhR0CR060iTR4OItxdZSSv1fJwFoi7SfjN0ddCyk+3
         R7jQZwGct+VFt/SQ9MqUv+OyNUWqTR5FfSxj0tilmOX2EixcgF6uxkZNot20lXYIpQNJ
         SupQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1TW4l5R8EWDLVkz7tDeAS6qn2bF/osfe+BVfyLmqJZ1/OBvBGY
	fk1rtJn4o/3lz99zt4EDAsM=
X-Google-Smtp-Source: ADFU+vsr9MEBrPABi9CV0qPgQTLTnFcrHg7zx1PQUE0wjihnyL/TuoJKQ6EmDzWxGkm0dzZ9RQ2KnQ==
X-Received: by 2002:a5d:87ca:: with SMTP id q10mr8523019ios.192.1584723268538;
        Fri, 20 Mar 2020 09:54:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:d0e:: with SMTP id g14ls1636844ilj.0.gmail; Fri, 20
 Mar 2020 09:54:28 -0700 (PDT)
X-Received: by 2002:a92:8cc9:: with SMTP id s70mr2871360ill.251.1584723268214;
        Fri, 20 Mar 2020 09:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584723268; cv=none;
        d=google.com; s=arc-20160816;
        b=r3si0kBcJzetHqtOxAwdF9PsLDH62IEdQDvYgjW9CPk3nG5dTKg2dw2pyKmBBM/Pit
         lQs3+VKpiMJO8S1qYT8GoH91f/3NPccP+G2eHzwCMCvDC0awoSazbDi++/m0xw22hBD3
         H1mh5nAiunMbDx+AoclfI8FvEohs4Lnf1+HFGmm2vgm6ybXsRA06lSn+Qc82N1Xv+V4Y
         9JFtJvufe7pdBcAWYZZ3KHLwjjFe2PsoQqVbnchr/U7U4157DVdzdOB+X4aJ1346YKw/
         IbTLh//yB1mdPBnZCcqXnoT7misz4HKxesDdvI6Ym32VJ/xxLBFH9+1WARfjL+KSPt1B
         mm/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o9k5EH83A9nru5APz+MAd0QNEpX2EZ77G2wvM/N6lWs=;
        b=MoKCBZ/rJaBnyQQnnM0LHk/7ulmvtMX7YijElgNMg1VLshq3oeLuAImNx+mTueHCM+
         EhKa//qfASBHGgtVDbkw10uQ3k4n+uOmkJXJbNQLwh48JT1hoIPgX4gIC+pEIF+1x6qQ
         EDdWoGynrLPySTmL8dxOjobuD51SBVrAMIjvLmEEBNNP0eYWdw0Pnb1UhFERf5TsPrZY
         F31ac2RlcBVMzNvF1caO3Q+ntMF9Q474BYcOeILHF19xTGaN6dNau5vScSyL9sQmYUcO
         1MifmHe2b0faaXs6IgNznVNbJBEJ4mbcTr8abtR5NLUGbWGecpJy9qv1cp3ItW6iEm9A
         bMaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbKYU8h7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s201si397512ilc.0.2020.03.20.09.54.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 09:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id d63so7175796oig.6
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 09:54:28 -0700 (PDT)
X-Received: by 2002:aca:6002:: with SMTP id u2mr1756482oib.45.1584723267714;
        Fri, 20 Mar 2020 09:54:27 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 202sm2099493oie.38.2020.03.20.09.54.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 20 Mar 2020 09:54:26 -0700 (PDT)
Date: Fri, 20 Mar 2020 09:54:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Rob Herring <robh@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [robh:for-next 57/58] drivers/hwmon/pmbus/max20730.c:321:13:
 warning: cast to smaller integer type 'enum chips' from 'const void *'
Message-ID: <20200320165425.GA5484@ubuntu-m2-xlarge-x86>
References: <202003210035.F8fZALsC%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202003210035.F8fZALsC%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gbKYU8h7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi all,

On Sat, Mar 21, 2020 at 12:15:38AM +0800, kbuild test robot wrote:
> Hi Rob,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> head:   ac5fe2e6d8244c4d366f7f28400d891502e84481
> commit: d047cd8a2760f58d17b8ade21d2f15b818575abc [57/58] scripts/dtc: Update to upstream version v1.6.0-2-g87a656ae5ff9
> config: x86_64-randconfig-c002-20200320 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6e0aaafbc782bdd2852a48c87a3f6cc8fa667bee)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout d047cd8a2760f58d17b8ade21d2f15b818575abc
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/hwmon/pmbus/max20730.c:321:13: warning: cast to smaller integer type 'enum chips' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    chip_id = (enum chips)of_device_get_match_data(dev);
>                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/media/platform/mtk-mdp/mtk_mdp_core.c:139:15: warning: cast to smaller integer type 'enum mtk_mdp_comp_type' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    comp_type = (enum mtk_mdp_comp_type)of_id->data;
>                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/i2c/busses/i2c-pxa.c:1227:15: warning: cast to smaller integer type 'enum pxa_i2c_types' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>            *i2c_types = (enum pxa_i2c_types)(of_id->data);
>                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/phy/broadcom/phy-brcm-sata.c:767:19: warning: cast to smaller integer type 'enum brcm_sata_phy_version' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    priv->version = (enum brcm_sata_phy_version)of_id->data;
>                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/dma/mmp_tdma.c:640:10: warning: cast to smaller integer type 'enum mmp_tdma_type' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    type = (enum mmp_tdma_type) of_id->data;
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/phy/marvell/phy-pxa-usb.c:300:26: warning: cast to smaller integer type 'enum pxa_usb_phy_version' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    pxa_usb_phy->version = (enum pxa_usb_phy_version)of_id->data;
>                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/regulator/lp872x.c:876:5: warning: cast to smaller integer type 'enum lp872x_regulator_id' from 'void *' [-Wvoid-pointer-to-enum-cast]
>                                    (enum lp872x_regulator_id)match[i].driver_data;
>                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/hwmon/ad7418.c:255:16: warning: cast to smaller integer type 'enum chips' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    data->type = (enum chips)of_device_get_match_data(dev);
>                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/hwmon/ads7828.c:141:10: warning: cast to smaller integer type 'enum ads7828_chips' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    chip = (enum ads7828_chips)
>                           ^~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/hwmon/ina2xx.c:445:10: warning: cast to smaller integer type 'enum ina2xx_ids' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    chip = (enum ina2xx_ids)of_device_get_match_data(&client->dev);
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> --
> >> drivers/hwmon/lm63.c:1107:16: warning: cast to smaller integer type 'enum chips' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    data->kind = (enum chips)of_device_get_match_data(&client->dev);
>                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
> ..
> 

Sorry for the noise, these have been fixed in mainline as of
commit 82f2bc2fcc01 ("kbuild: Disable -Wpointer-to-enum-cast").

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320165425.GA5484%40ubuntu-m2-xlarge-x86.
