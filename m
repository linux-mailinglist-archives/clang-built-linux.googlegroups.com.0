Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQXMWCEAMGQEWCTFOWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A403E1C08
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 21:04:35 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id s20-20020a17090a5d14b0290177ee10728csf1055439pji.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 12:04:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628190274; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6aqFmZP1ZcNogvrtZPTLk1ksrJMeeBbrlbUlSO7q5SEeQZCdwJGGiC3mzHvKaHVQ4
         2rWJPwSTsTKJe8CeubUkOfxej1zh/hmop2hzqZfpirdhXk3EGYu7moqjtJ0sy5T6IlaS
         6dz/2rNds2zJTiKik+OpzkzkE3N79xUfV1z6l5ICdDL81TaZu8JUV+NGu3hb9IVxbQM8
         9H9/ETEDe1MQpBzDLJhIEAkzBF7z6WYwDOCntnhqJmKGXpsSYKKvb/7MB2mfnI6vYzWG
         wNtLPFa7C9Xh9B/t+/isKOHSOUl3ColNGw9ziCJeAZofwTSW2hSDTcM7LErYbNNiqZOs
         c5uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jCHCHt+2AzQ9N3vI9RV7WritW38J/+nBWvx9GWCLGV0=;
        b=ztecSGT8fE5BBHxZsPXzNtMZ0R8L7vw14BaPIvR68vEyqwe7pQa1SFcfeYUHDrm0tV
         MI0U+WMS/ADT97hli9IYRQGu7D1qkNZFJSG/yX/VOhEYsq/v6ze1lVMaZ04/qZboHFlZ
         iWk7kAWeU9NQuU8cNYQxWhWRe/LRQoJafYxZrZtwzmWn4mu5ih25P5C5G4lZupB+SMK7
         1kS/f3LXjtDUkwpjp2iVJtb9UyC9d+KhQpt6Ohl5CIsAZRL17v0yqKJ3IhWQnmyezWAO
         L98gAvUo/0dmn88AeerYri10qxhiGk633oAMWWL19s4xrcHYW82V/Zj38z/48NQPt+kh
         1+BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eSHeL83k;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jCHCHt+2AzQ9N3vI9RV7WritW38J/+nBWvx9GWCLGV0=;
        b=MQ1K0+KbVA7CizvWDhhny5o+c8kT+R2UCmr+WcTwev1tCbBm6m00i7M38eyOqh8n/e
         1vtsvu1KdmkQSaYzTSDSVKe7r583j0gzhqH80bdjTKjvdA2PVoMu+ZR/AxEmWP8q5DYS
         xEswdAZkJYNY5OG2dqwpEF4djnr2pPlhau78Qle5N7dfEp8w2Q1JQECA80iQY9y0U5hG
         5YcfPBVpxdsY/XQ8MpBrQYEkhTHnBL+6excuRuRg/HLWKi7OoJ6173Vl2GKJAHZuNrvD
         DSjaV+uA48CzM6r7xSoD/io1NHhOe1vDIIFvljUZnXwI8p+qFHwtR+J81CyLTQMdEpFP
         /qzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jCHCHt+2AzQ9N3vI9RV7WritW38J/+nBWvx9GWCLGV0=;
        b=OGMXgHUj4uNUZFZ/Pcp6mOWYPLBQD2nnCYSrNGmtcBupsLH4kaPtZbcFRln+ZBctcf
         fxS/dl5z+U+mUcf+qa4P7kkKg57Qcl9B8lfPgFUEy6ozgWWHiVx3lFn+KmBKvIJ3ApXX
         vyXZzROFV+2VvaX+E3A6WrlopwuuEKQdwXzW1LDy/HKqjw2mSkrkm76x1SdDqCT6LBXO
         dOufKsNrPkIUoYmm4OufeaKno0UKzHjwdPO/NJ+KOIdrtiZKyRgv2rUNABWZHgee3LjK
         bpNzaT8QD4g+Jla4NmKJGKtAw/swDAjJJPLmfvJcsji9xZx0SvrrjgzKIgz8SMPwy7CT
         ZN1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lXDAgWS8E1D6lMu/0cSjHYhQg51VLox4upGBwhZ9Dvhvkmnsk
	wAECSW/BbMSXcrLyfVBjA9A=
X-Google-Smtp-Source: ABdhPJwNCedhEsdxyEwLmXQB9hpe27gH1QvPamXbh9HfLfOM5csAHGM8d+YneG/Af1QYIBnNfSe9CQ==
X-Received: by 2002:a63:1709:: with SMTP id x9mr419140pgl.28.1628190274435;
        Thu, 05 Aug 2021 12:04:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:cf09:: with SMTP id h9ls5903951pju.1.canary-gmail;
 Thu, 05 Aug 2021 12:04:34 -0700 (PDT)
X-Received: by 2002:a17:90a:448f:: with SMTP id t15mr6126253pjg.21.1628190273554;
        Thu, 05 Aug 2021 12:04:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628190273; cv=none;
        d=google.com; s=arc-20160816;
        b=A8i8QsN+ZjUaFXJ64qYfrh/yQwy7/Msb5Eof+Zg+IxGxlEYdK4GiUT74zK+cGlNZn4
         8SaK/rnjvGIAItqnXMcIdRwYDCC23dPSfXDyhFw6FyAMZsMjvDYRkmuzG4wAzsdrqmGH
         2UTT5V2N6/hH9hMIosz7L5tZXAhgf1S/vAseJavV2UMzGes5IR22tC+fpbBVlFIyXllC
         4rSy4oh/LOdIxvEzW74oxBClmVSKZ6nzdgbeKdblFCafg5Cou6lAmztFZWt3ysTwyqBp
         zYQ1+EH4ehjX9SXRGaRJ9fwyRDtrbZy13FLCkVTlL/Hy9we4VYlFMebuzITL7JbAsgX1
         h+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Nk1eyoWZLRLqWjJszIuPDrTAz0hvu0DjRH9VlFtufpY=;
        b=BmxsocwiNpPc868dBaHKgavh8Kvtkd/mivKv5kPbeQwGQ1qo1zyG36dbl/w79u7Z5K
         Vv3lHFB3FSSSg+FiOr7luiUs2OjpC5H/Sy/8Lyoc+BgDhRkVm7QvmzHiSN8VDP+QR9CG
         lP+LYaP817XW8pX0A+K5ofhM5Eo8kxycdZpEslxerTvvzMxIeWEX2JtS+lcWA6qGEzQa
         y8wprzcokGmGXKFkN2bszXIZl3noDKJPVuljfi3+45A+5vDcCHBSiQM/nCrTnjD5wKHK
         tYuLRQ1sQmvqczW7Ie96Erpv52irIUzkYFPZKR/bsZemTVu3Z2qoXexA9kmdrKkfHE35
         na/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eSHeL83k;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g4si262299pjt.3.2021.08.05.12.04.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 12:04:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B181E61040;
	Thu,  5 Aug 2021 19:04:32 +0000 (UTC)
Date: Thu, 5 Aug 2021 12:04:31 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [gustavoars-linux:for-next/clang-fallthrough 1/1] warning:
 fallthrough annotation in unreachable code/
Message-ID: <YQw2P8esj8PMNRQn@Ryzen-9-3900X.localdomain>
References: <202108051403.tBfqfI49-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108051403.tBfqfI49-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eSHeL83k;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Aug 05, 2021 at 02:21:34PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git for-next/clang-fallthrough
> head:   58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00
> commit: 58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00 [1/1] Revert "Revert "Makefile: Enable -Wimplicit-fallthrough for Clang""
> config: hexagon-randconfig-r023-20210804 (attached as .config)
> compiler: clang version 12.0.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?id=58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00
>         git remote add gustavoars-linux https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git
>         git fetch --no-tags gustavoars-linux for-next/clang-fallthrough
>         git checkout 58d0d2d2e7dc1b1a4997bb9c47d6cf428f2d3a00
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
> >> warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>    2 warnings generated.

With a newer version of clang that shows proper line numbers:

sound/core/pcm_native.c:3812:3: warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
                fallthrough;
                ^
include/linux/compiler_attributes.h:211:41: note: expanded from macro 'fallthrough'
# define fallthrough                    __attribute__((__fallthrough__))
                                        ^
sound/core/pcm_native.c:3820:3: warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
                fallthrough;
                ^
include/linux/compiler_attributes.h:211:41: note: expanded from macro 'fallthrough'
# define fallthrough                    __attribute__((__fallthrough__))
                                        ^
2 warnings generated.

Which is already being tracked: https://github.com/ClangBuiltLinux/linux/issues/1429

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQw2P8esj8PMNRQn%40Ryzen-9-3900X.localdomain.
