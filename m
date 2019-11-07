Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQFLSHXAKGQE2WWBIHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BB1F35C8
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 18:34:58 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id g11sf2100895plm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 09:34:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573148096; cv=pass;
        d=google.com; s=arc-20160816;
        b=BZ/6+BeV1qxHxG+r2U4fyTm6lTEHNFnm1Jolf20Y4Xa7uvYQX1IMOha6qTCwRrkvnp
         QbO8CBa8Ns/jIga5Zu9/ioXEIj4kWnz0bvoEX9DNgnZ5o3lNnY52lxR0NZKtcGLzySnM
         25dFMwVFVC6jaBTRczsetbE2ahZYdO3QVMBH1dmhEiUMbvSj55ADI1cl8HhSzx/UFWkF
         98H2Nbbri25aKCbDonEDzz+q528ecjtopWmcJKAByehp5SPSDAl5gm6WX9AZ0qKhOoAA
         D+B8WIWNQMpC0TKS8/pg9JDJLSRWueJoA2/Sxor+fJqWj/MKRh/JFVYwRgj1BxCzUb+i
         3QGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=rI4QK5IpjSc1W9eWO+km02/dgCrfYLS9gp/pNrfc7S0=;
        b=ue7hAc8CHpzuoTE3u/P7u6nti5P01aW46Uh7lBroObTcQE+tiuiVu5Y9N989+m03t2
         cofgTLEFziLVJkBUb49TxrlZLWNTifJUuxs0ZZYhVP1TwkkahxHMXTa3GZwzEuVIlZBu
         pQvb0vfshSyLdgP0EANxNVRwGiBF38p0Wr24OwaPYpVd/ayWP9uwzwGjq4Lz83QgxFmu
         sV3JEQOoMJhtST0QGv5AG0u1pawhNg2mzMSG2EcckL1rd9TrKmPrBYpJqUUbKJjNDsHH
         z9qrRAzMNQW5NRW6iPxIA5n8S6jjG01LScxokhvXNnwYVM9NctjMZJVEAvE18R/GyNcy
         8SpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=er9RCBSx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rI4QK5IpjSc1W9eWO+km02/dgCrfYLS9gp/pNrfc7S0=;
        b=CooWMp0GrH7hdcxF5RVOym1dCZyp/Bw0n1Oy9aEoXhILy0y0cvZWyjtBX9AtZlCjZT
         gWpo1u/NbQXVKIhEjo6N+6keqJz0WsZnidVY2ZFAWduc609Pq6wybOrxs7xw84n2eZI7
         ao8oQrcv3rx7dtUXGF2iZeHg8OpcdYQYkr1ZqgMdmxzz4RdbUHf+wluURh9GiSq0DTcn
         7VpubApUTUWLR0Qy4zyVh87K4akh6SAOgNbP1zQHOhWcptp+u6Lnf8RpISNoYsxSnmmV
         mlYAkivRjwkUqWnLMmLxbvIu64/o44B+7Ckd1iP9P0aiovvN3ottIEenVikGoaO/+2Ax
         c15A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rI4QK5IpjSc1W9eWO+km02/dgCrfYLS9gp/pNrfc7S0=;
        b=Qn3AdDLs9zrMOk2mtVjgx/lAyTt1xKOLyJvrHgP8jPuWx7grmlcGS8QJm/jIAEofU6
         tkemmi8/ozAWp7SMQ8fEb7cObq0wpGDt0X9T6LUuHEcQRqnA0Y75fAarjpOnejw6SHFH
         hFGZQasI+3PJQ9t+eEt7iKbYxrvvAWJd2EJDW+AKKrg9oHwdZZ0MgF9WW6tjBn3wveaE
         saoUkApTN0Oo62ILo+mcqscoNqLDah4+VKqXK49/ijqSM9EFVhS1fSOMMi9cSc9gBo2k
         bTrZtOm4O/Dp7zTTAhRQz0YVMrU+2MGJus5xJr6KQ+rLAUh/MHFsnNi1iFpG9Ked/+Jn
         v3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rI4QK5IpjSc1W9eWO+km02/dgCrfYLS9gp/pNrfc7S0=;
        b=O1gXdwhPAj534/yiRxiDPJOfA4+UtlRxE8+D3F013L9B1CMLNXFx1XaOG2fXghQxx1
         +GlZCIn5VvsiNh6ikvnnuPi4XUZvDo6Q/PehHG6YBRDg77ydTL7952cv+9CXMpCq/bRX
         BkgiZV1LlNOcFZc72osQi7onpqFt/3RQCVEJs2mpGJAuFJjUthuBf+dqMpA3D0fGzR1U
         hX4IWn7eUi7rVv6KHq3hb3eE/BxGEjVprliV+IJ5p4bVV2PC9O/FWM6ZDtR9Tk94/szH
         H/60So/k9X3sGM979jMRUl/NrSDe9aGJbEvNr7sxB+2jO6tW6Y6+MUiVLYy3M2ByG9uY
         aK3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIr4SUIwCechQmoJ8UnSLCHs+2sPx3UZW1lI/+0ifKI0altlLm
	Mxpl9GbaRlTzAxsJ9HLCbWc=
X-Google-Smtp-Source: APXvYqxAat51qUC/WlPNwMk/uzQxgqnKrWiK2y1P/Ezf1DDL3Nw1HIpJN+N7ZewnAlFSBt/UqMXYMw==
X-Received: by 2002:a63:4b52:: with SMTP id k18mr5734733pgl.394.1573148096511;
        Thu, 07 Nov 2019 09:34:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5844:: with SMTP id m65ls1642961pfb.11.gmail; Thu, 07
 Nov 2019 09:34:56 -0800 (PST)
X-Received: by 2002:a63:f501:: with SMTP id w1mr6054270pgh.307.1573148095988;
        Thu, 07 Nov 2019 09:34:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573148095; cv=none;
        d=google.com; s=arc-20160816;
        b=uWxCxgS1PGbHUAAHHSf629WuTLBYXc+cGJFUIff1kVeaC5zwLUA7y3T2EC+YWVIG98
         9swLhuRpSJ20gJ2B52cZtT5t/KMBPBbPmpt5gDkPqCfvu7zn08O6dpJ/uRtgsJYxGZrB
         9eGHxk2XLp7svYwPMEVijaovGvtKbQ/OaAOXV//eP1mxllGqT/UKpzlTaJbDUUF9wMLz
         FASwUJRC4/ATVp3rhT0u0VesLCNvvg3pmV60sm/DxlkHmOvWloGLItIfh36JYoXKvfVQ
         s42sQLdSXdgM2Jpxs0uxV6jiQs3vlkHZhAdgG3PY4K1kA5Xgsn+gfpI7YvjSMlN9G8PU
         p9jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=M5ILZS5HCjKiBAdOoFz7iYYZjY474AW9ndrnV+mws18=;
        b=tDnuE/8hc9kaPDMRQnOUVv0wFJEqUFica7ZfAe3kvp/HBtT7h//xJ2uUbUMazNSzTN
         h1MU+1jTt7k0s/0rdh6BwiMabuyTMpTDJLwJCzjgkFtJnheaTMcsg3NRZNKerx2vgsVo
         dbsJKhMeWsu6ywY30S89OPreJ77/xI+CnNtCx56v/LU7UYpWTgdJ0qbR1/TkPxjSxUI/
         x7KrmQFDvOqZcBNy9M1jh1N6qDZRGpluTkOcQQN1MizZ6Cf7t74OD23+jOurusKwrX4/
         ktTsI9zTfcTWVoQ4WCCNaR5scViFbVdk42qDDjIvWr1AzneGFVIctQ+ZXjkE/TPZYmwy
         H6Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=er9RCBSx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q196si241650pfc.0.2019.11.07.09.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 09:34:55 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id 22so2697241oip.7
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 09:34:55 -0800 (PST)
X-Received: by 2002:aca:b306:: with SMTP id c6mr4377303oif.84.1573148095413;
        Thu, 07 Nov 2019 09:34:55 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h39sm1004997oth.9.2019.11.07.09.34.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Nov 2019 09:34:54 -0800 (PST)
Date: Thu, 7 Nov 2019 10:34:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 2/2] spi: cadence-quadpsi: Add support for the Cadence
 QSPI controller
Message-ID: <20191107173453.GB9267@ubuntu-m2-xlarge-x86>
References: <201911071857.nzSPMryQ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911071857.nzSPMryQ%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=er9RCBSx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Nov 07, 2019 at 06:16:14PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191030081155.29947-3-vadivel.muruganx.ramuthevar@linux.intel.com>
> References: <20191030081155.29947-3-vadivel.muruganx.ramuthevar@linux.intel.com>
> TO: "Ramuthevar,Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
> CC: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
> CC: broonie@kernel.org, vigneshr@ti.com, robh+dt@kernel.org, cheol.yong.kim@intel.com, qi-ming.wu@intel.com, Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> Hi "Ramuthevar,Vadivel,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on spi/for-next]
> [cannot apply to v5.4-rc6 next-20191106]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Ramuthevar-Vadivel-MuruganX/spi-cadence-quadpsi-Add-support-for-the-Cadence-QSPI-controller/20191101-174846
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6cecd3c3dbef48eca6c4cf2dcc2df3290ab91488)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/spi/spi-cadence-quadspi.c:606:7: warning: logical not is only applied to the left hand side of this bitwise operator [-Wlogical-not-parentheses]
>                    if (!(ret) & (*irq_status & CQSPI_IRQ_STATUS_ERR)) {
>                        ^      ~
>    drivers/spi/spi-cadence-quadspi.c:606:7: note: add parentheses after the '!' to evaluate the bitwise operator first
>                    if (!(ret) & (*irq_status & CQSPI_IRQ_STATUS_ERR)) {
>                        ^
>                         (                                           )
>    drivers/spi/spi-cadence-quadspi.c:606:7: note: add parentheses around left hand side expression to silence this warning
>                    if (!(ret) & (*irq_status & CQSPI_IRQ_STATUS_ERR)) {
>                        ^
>                        (     )
> >> drivers/spi/spi-cadence-quadspi.c:706:6: warning: variable 'tshsl' is uninitialized when used here [-Wuninitialized]
>            if (tshsl < tsclk)
>                ^~~~~
>    drivers/spi/spi-cadence-quadspi.c:697:20: note: initialize the variable 'tshsl' to silence this warning
>            unsigned int tshsl, tchsh, tslch, tsd2d;
>                              ^
>                               = 0
>    drivers/spi/spi-cadence-quadspi.c:359:12: warning: unused function 'cqspi_direct_read_execute' [-Wunused-function]
>    static int cqspi_direct_read_execute(struct struct_cqspi *cqspi, u8 *buf,
>               ^
>    3 warnings generated.

GCC warns about all of these as well:

https://lore.kernel.org/lkml/201911012313.KsKnmC0t%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107173453.GB9267%40ubuntu-m2-xlarge-x86.
