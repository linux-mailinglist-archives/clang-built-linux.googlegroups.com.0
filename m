Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGXZ22AAMGQEGKGVFDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D712A30982A
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 21:07:55 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id j37sf8448710pgb.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 12:07:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612037274; cv=pass;
        d=google.com; s=arc-20160816;
        b=RH9a7w27YI9w42LYDOGIRO322VPouAMyq0Axly9CSmXJVp43OfxdnyR0OeloKFVz49
         Qv5km1z7v3u+IfLJiUUXrE0KnAoMdH2a5dg+7rypFYGpYvT+UZzFRpIwXTaIUwqNylFx
         D/iu+Pln0OCuXL8O9grz951a+hdWxsNigjiFF8yrrZ1rA0Fia+/0dSIe34bLnut3topZ
         yJ0Y23pMqDgOlklUp86iNkqwR73zkDY4/Q2vx5gA/t/4Qz79AprzvsmijpjGnAUQemcH
         jiOkX18hKiZlj+b0XZ4JHefTGLITnS3mysDcgRvPFn1UGGPe4DutLrd+p2aCV3NWo0LX
         B11w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9LaSUE1GJtnE5q9jHqr7eoqdhE6u/k9E4j4sA2+ra6s=;
        b=fR0a17ECL48wonfrijfYapYhbGMkgM65c65kE+mSd60fhOiGIVvilxx/7PV4v1fBqP
         mibYGDR8SoI8JyVqD3wg4x8yTTHWu9Fv5u3Kd9+o4fdrVybRPnVvWGtBvXNlUqVqq4tS
         6f7KIkHlFf8cYVEn5jsa94avSAtpR9SD4R9Av+OM7s3tsanLGgo5glYYxPY8eOCNbL4X
         Ro+fLPBBa2AvACCX0Q03wS+2rJ+urbKsOBOtxfgxMbr5ZqOuUSn11uhKugxk85eKQESA
         IEi2I/zVnzSvEC8mic+SKweLtNedrAwk6KFhZrnoVDQb9XAjxmulp1NswZnM5TQyVU+B
         LqiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bO70FB5l;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9LaSUE1GJtnE5q9jHqr7eoqdhE6u/k9E4j4sA2+ra6s=;
        b=o5t9rm2HFRFIznoNzszkkPfjPPUe6sS/7TVbBBnWHRpqTn947rhgKr8z+5CP0iM/0N
         iNZotfIaO/OdPB54B7XVUssTVDMauEeOTx/RBsYN3ylP/Mw8K0XWHCZg9/Mxq/APH/Fb
         yiuihzQgPnso0CjaEpUXePvKOA1Ar5a0FyVhe7d5O0acsJYdz9sBhJmQXfdfd3Rjo8C3
         1Y+thXa2uLz0l0deppo05zIvCwGmz6dIyxVowPRnrrVFl+DweQgrIg+/jRcHHlCmJn4X
         lC1EX9jpwt37IiPBi1zy22tPvp2uTp1LCzxT0nJdKpNEiWMHZxpHJ+OGVeKR68bEUoeB
         a9GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9LaSUE1GJtnE5q9jHqr7eoqdhE6u/k9E4j4sA2+ra6s=;
        b=lxs1jUKaCyL72WHJbI4nJ2zZg096nMN1jHgD38U765vhkvAWO2Yd+PA9RG5XjUKLcj
         F5CVd9v8qejrMgjzyt8EMMYOmaveUkshN4JzYA1PmGeWNej3HJkuGlUVJ4lTYf4qvQH5
         ValP9np9bftVJPqDuYJrLGJsabjW4W3inTyS6K6Vb8ZoT1tpCKzuWMLxoAbecXKeW4E/
         tWAK/e3atcPSI6InDJ1Lw7PEbwzm9ixwZRbQvtio+qLemREGYr+4lxGvKzsPuQXFOoyW
         qNGXtOhsWsgl+uIiKPekwxpYiPq7hcXl2jglws9GpZiRp22+6MOln5ue7YPt2Qwk5ePI
         Y7nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532868IYn6+2492+6ckg48BewP4OwUmn2pDjXKKiAKLVica1HU21
	zNsZy9ARUCkCsNSiQi+gUFA=
X-Google-Smtp-Source: ABdhPJyns6N1j/PMMMykDZduTiBtdFb/xJwqreT24UWTuZ4AMoA31hr+9LcqU8LsVrNzLmYd2HAWkw==
X-Received: by 2002:a63:ff09:: with SMTP id k9mr10175749pgi.175.1612037274623;
        Sat, 30 Jan 2021 12:07:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ce54:: with SMTP id r20ls4767516pgi.2.gmail; Sat, 30 Jan
 2021 12:07:54 -0800 (PST)
X-Received: by 2002:a62:ea17:0:b029:1ad:4788:7815 with SMTP id t23-20020a62ea170000b02901ad47887815mr9696065pfh.1.1612037273965;
        Sat, 30 Jan 2021 12:07:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612037273; cv=none;
        d=google.com; s=arc-20160816;
        b=aDwB4RIDb0ahIe5/pV4+nB+rwV0edCvTV3EO0rx/WLBTPIqYYx602EUTTg3YqKr5cY
         77JbnHxswx79z5VXbjs5lFg2E7BS/lB18V+3HPcsXFADxSul8Nqu8K7p0LkyZBZK5wn/
         uZsf0mKl3q1hXTgpU33daL5/KyC2fn8b/E9S11j/ycCjiAsLPDOyorXG84BqwjVz5mx5
         h1IWrnMeBq0tDFD4UApB35erbcjV5aSwwhJwyEPAxFOBKEhvwZ0muIk3ky2AciDhiV/n
         mMHp5Xv51ITr7NN3NHk95Wxf/1RObbQLIucAn+mn1g8s4xXG3fyuYk0B6p7dDfnOhcIZ
         eeyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Z06syCCsAOCc7Q31nmgALJ/CyXNHHdwbPU0MaoWcSvY=;
        b=J+zV8W9aOHEfmiVjNItO5AwfkGg8P4Fu4CLal2t7wKiEixGMZfiNWxsoQGopq2WSFM
         lXEO9jQ70r3KeAq81LclF8uIt7S0PwKPaplLHieGqaOpi3o5LYml8/ey1skcWmoAY5k5
         S5QleHqgRoYO+hJoGdbmb6qm1OHVzPT0cSx9xFa9+TDCEp73ZpIhQg8yD7151WswbJIS
         M2fm7XXfST0QGxQ6tYaTCYfvcIjdogZ2k/judtt1VB/2KWCiPO3/vWtC0ie0sDognh90
         3QWHygc8MIfG60Jyfd63rULqcAmFQLGGK8mWXsp9XRX0wrPYK3nvaE+YNATehHZiCPDv
         5xPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bO70FB5l;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x14si700877pgx.2.2021.01.30.12.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Jan 2021 12:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 011D664E0A;
	Sat, 30 Jan 2021 20:07:52 +0000 (UTC)
Date: Sat, 30 Jan 2021 13:07:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Helen Koike <helen.koike@collabora.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
	Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
 `drivers/media/platform/rockchip/rkisp1/rkisp1-capture.o' being placed in
 section `.eh_frame'
Message-ID: <20210130200751.GA2853543@localhost>
References: <202101310313.LdtIZjU6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101310313.LdtIZjU6-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bO70FB5l;       spf=pass
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

On Sun, Jan 31, 2021 at 03:52:15AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   0e9bcda5d286f4a26a5407bb38f55c55b453ecfb
> commit: e6938cc1cb7763a363f62b78147f1f2fb972f49c media: rockchip: rkisp1: destage Rockchip ISP1 driver
> date:   3 months ago
> config: arm64-randconfig-r013-20210130 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e6938cc1cb7763a363f62b78147f1f2fb972f49c
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout e6938cc1cb7763a363f62b78147f1f2fb972f49c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/input/input.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/input/input-compat.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/input/input-mt.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/input/input-poller.o' being placed in section `.eh_frame'

https://lore.kernel.org/lkml/20210130004650.2682422-1-nathan@kernel.org/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130200751.GA2853543%40localhost.
