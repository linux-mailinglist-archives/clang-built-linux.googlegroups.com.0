Return-Path: <clang-built-linux+bncBCHPNUVGUAIRBQG7Y2BAMGQEKVN7XYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC0133EA87
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 08:29:05 +0100 (CET)
Received: by mail-ej1-x63f.google.com with SMTP id t21sf6833013ejf.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 00:29:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615966144; cv=pass;
        d=google.com; s=arc-20160816;
        b=GWX5yX71c5Lrq91Ycz2PenfnOgr73qSGsCViJid5FlZ157M5mEFlGT7cSyQBthlLl8
         ZwCg33HLpzwowCU6SEF3N9wingABHb9owwqlf4ldfZigcWQz5HFyK35k8F/wRsJv97+z
         1xxBlGvtwJmRI6buERJmqLaZm2Nizwpfrm72F9f50fUwNzeEmbTegjg/urGVNKwy2Nvb
         qb6Rc5vAobkEiqH7a5cfmA0dvLvTdmplbptLoL6SQ5PgYT975475Ly/jTREjm0B17lls
         3nAs+D+MLcjw+7ofNfNmM7p7EcLB0oejVg61UwAhuyBNdteAVgWvQXgYRfTqTpS98SVC
         tCHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nGKQFJYszBJCC7AZGupeOxzbhwIPp+NKU83Bf8/U4aw=;
        b=iOkhU+lDS4cpMaXUrf+xI0H5Qmkkv6m/h87RFGKrkzaqC1ZNFSo6NRUA0oOQ7mJgcR
         GoRZ2LHzthXIGmx7CF5t7nHyfkGwer9p2YActim97F7wNuPPB16pX+xP1MvSzuDqUUcj
         4a1342nlOwoj0HTONjT1cu7mFwTO1Xyi/s2DIPSi2FxXJ2/EeUiQq8beZalFWMeLaZXT
         6sZarrAn0u/QUsIr6sdQMtIEEAesioJcfRdoj2udMjEP4kP0sn1o8vQFB1xoLqkB3VRG
         IcXKqJCmh+orKy6aF8sZAtNWoYawQMIAHzBViePLgODZAfHgodqd6MSVie3jsj1NyX3M
         Wf1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hPdwksnj;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nGKQFJYszBJCC7AZGupeOxzbhwIPp+NKU83Bf8/U4aw=;
        b=WDjX0bRb+rE5RaY66bun9FlblK3c3hFZGyXGx8NAnnvpXUJEsdUb3D9g+naqWMzx3E
         vOUjCKdwWzeXxregwRM4x0Zzd5nyZk4DFUuErzIKF3ydXzsmT2MO58pmy0zyCBgD6PDT
         keM9HK3OrZShovLI4SfF2QRwSqecuJwSBQRkTQ0DxioiR4aOO67VG9Hwu9P6qNGnCC2Q
         2yokdGmy6XMIRc2764oK4d++UmAEMnlgIS/hN7r9nAo/E76ztq7bbTa56BAOFDOFaoVD
         WQ2z0MzsOD9EmyLqBtIJ0soWCnRB8RdTk+wzkjziG+RaJ1Xd8LQjWsftOIqvCN8KrnlD
         ZcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nGKQFJYszBJCC7AZGupeOxzbhwIPp+NKU83Bf8/U4aw=;
        b=TBgxm9BaNne7WfIBwdQDBvv12i4xEaoH1ubWpYhMmknnEDN6r7u7FE+j+MfLfITUFK
         FcUpk4qaj4+Zb/MbSj8cT+NwhSPMP6Ia5lnMuukHP8iUGqJsKSw1h0r5xA7F0PwDdE1Z
         HdAFs/LKHBQ+8+4QRjx2QvGJJO/5zCCNw4Jnk57qIk2usy/Rts/VcO3ya6LCBXmo+xKC
         5cNYFgSVuW6okyf5Xukpilomyo1jsToTp9aQmNj+1jn7y2uUvP22cf6u0lopigS4L3PU
         nOiWF7QnAm3LEdXbExhTQGH7E3m0t9tv/vQnUHE3Umcw18t1d6kF1fzzIbrwo+Dgp22X
         PknA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cSI08bXxc06a+aIbqWSn6x49GO5hAQL0LMur80lUEDxvwwDh2
	T29TwgsRTZ9P5jSJAMJP1+Q=
X-Google-Smtp-Source: ABdhPJwJ78gXwIOteWqDNdDjJwrc1pyEkJL/QfikC7h7j9TCsTjlLnEUe6NHrZzOKvOBf5OBSnvyAg==
X-Received: by 2002:a17:906:26c9:: with SMTP id u9mr12632288ejc.520.1615966144837;
        Wed, 17 Mar 2021 00:29:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c653:: with SMTP id z19ls9413964edr.2.gmail; Wed, 17 Mar
 2021 00:29:04 -0700 (PDT)
X-Received: by 2002:aa7:c0cd:: with SMTP id j13mr41738890edp.41.1615966143995;
        Wed, 17 Mar 2021 00:29:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615966143; cv=none;
        d=google.com; s=arc-20160816;
        b=E77OS3cl5VJwErShXvu3er+Jv//KKQ3vrJhYRnG4AezDH1TFkISlusoS1wngnBLnCv
         M4pvhIsJtG+F3spWI5GCg6PBFUArhlY850F5lbdCKxb0w+yXjr6CVcmRrALRZd78WcSD
         7aTDezYdOBy/oKK37Xr3LlePVKHEbm5xK1yU/nTKcY9dGYeKlGUSdMq1+OLzfQ1ypkhD
         I0ZOa0Bsar9c4DyTvFaoqWTrMPfGEGQY/KWOoGqKJBaQLE+R9UU146/veQ/FY6iyG5Io
         FXb4Hpk0JECXSc0E5+DmXYrH3kujCno8VACZVskxE4EKtxe6HRebCPeEt4eFDSAgeCUH
         VFsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i0OFRZTfBcuhF9mbEa3NqSxhIwxiIzGwWQ4aEj58x5A=;
        b=YA1Dg+4M8ZaoIisp0z/nwkMzueLelyKIyABIyr5YSADnbDeFZBzc3H+WXrvj8WKlcV
         AvjOIdcgRljx1pU0TdbIxM7J9UZJScGkZg3NJ1iO6lFYnjBlVRspzeNU9NvomBaWuPNl
         KZ5zG1Gh/reyQO5iggiBzq1EOuoNOOOqdor/ZPX9f3yMvhc7metHZi+87rWHhKwL+eJm
         4waMpRwXHEsRKf5ArVBA9+6JH6PXMHjYbauzU+Q5Hjq6vyEpjmWY7gDaJEfUyIEXLdHt
         AkVER97dmJJR6FLolO6CXgVoAes2XiUzywN09Mii0VpIQCrq5Pl0GNW9B221LoO1tfQ8
         pvXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hPdwksnj;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id df17si901452edb.3.2021.03.17.00.29.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Mar 2021 00:29:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id 16so1878018ljc.11
        for <clang-built-linux@googlegroups.com>; Wed, 17 Mar 2021 00:29:03 -0700 (PDT)
X-Received: by 2002:a2e:8909:: with SMTP id d9mr1567566lji.442.1615966143493;
 Wed, 17 Mar 2021 00:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <202103170434.3XjHg3VL-lkp@intel.com>
In-Reply-To: <202103170434.3XjHg3VL-lkp@intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 17 Mar 2021 12:58:52 +0530
Message-ID: <CAFA6WYMs8ifW1sL24ky9h47nxAyhtiS_a5g8611WxLnaDy-QYw@mail.gmail.com>
Subject: Re: [jarkko-linux-tpmdd:master 10/12] security/keys/trusted-keys/trusted_tee.c:288:21:
 error: a parameter list without types is only allowed in a function definition
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sumit.garg@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=hPdwksnj;       spf=pass
 (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::233
 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Jarkko,

Please incorporate the following change to get rid of the reported warning.

diff --git a/security/keys/trusted-keys/trusted_tee.c
b/security/keys/trusted-keys/trusted_tee.c
index 62983d98a252..2ce66c199e1d 100644
--- a/security/keys/trusted-keys/trusted_tee.c
+++ b/security/keys/trusted-keys/trusted_tee.c
@@ -8,6 +8,7 @@

 #include <linux/err.h>
 #include <linux/key-type.h>
+#include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/string.h>
 #include <linux/tee_drv.h>

-Sumit

On Wed, 17 Mar 2021 at 01:59, kernel test robot <lkp@intel.com> wrote:
>
> tree:   git://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git master
> head:   8a3fa8ade8a35d8f7c178f5680f07f223da41b87
> commit: 2199c5e531b9630fc0f58da0d58bbd2a50f27787 [10/12] KEYS: trusted: Introduce TEE based Trusted Keys
> config: mips-randconfig-r016-20210316 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 50c7504a93fdb90c26870db8c8ea7add895c7725)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git/commit/?id=2199c5e531b9630fc0f58da0d58bbd2a50f27787
>         git remote add jarkko-linux-tpmdd git://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git
>         git fetch --no-tags jarkko-linux-tpmdd master
>         git checkout 2199c5e531b9630fc0f58da0d58bbd2a50f27787
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All error/warnings (new ones prefixed by >>):
>
> >> security/keys/trusted-keys/trusted_tee.c:288:1: warning: declaration specifier missing, defaulting to 'int'
>    MODULE_DEVICE_TABLE(tee, trusted_key_id_table);
>    ^
>    int
> >> security/keys/trusted-keys/trusted_tee.c:288:21: error: a parameter list without types is only allowed in a function definition
>    MODULE_DEVICE_TABLE(tee, trusted_key_id_table);
>                        ^
>    1 warning and 1 error generated.
>
>
> vim +288 security/keys/trusted-keys/trusted_tee.c
>
>    282
>    283  static const struct tee_client_device_id trusted_key_id_table[] = {
>    284          {UUID_INIT(0xf04a0fe7, 0x1f5d, 0x4b9b,
>    285                     0xab, 0xf7, 0x61, 0x9b, 0x85, 0xb4, 0xce, 0x8c)},
>    286          {}
>    287  };
>  > 288  MODULE_DEVICE_TABLE(tee, trusted_key_id_table);
>    289
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFA6WYMs8ifW1sL24ky9h47nxAyhtiS_a5g8611WxLnaDy-QYw%40mail.gmail.com.
