Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA5I77VQKGQER6NZTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C051DB4048
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:27:16 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id u12sf452325pfn.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:27:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568658435; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtZAzdx06ZxuBxXgCVOP6jCNFlEjoAaqBsivrj7ZpWe1J/IqadfTosyX/mhBMTiBOy
         0Uf6XKR39HqOiJ69gdIi5rWlB4dyzexy3vcqQebPHLohZ8KQ3TGB042HVHATlYcg9ZA8
         wmCPROU6coHk2UM7TQbn2VJB2RGFVD4RwiWdp2g21pdBZouGpl/6Xj0BTU7ALQxLEyHB
         9faJZDPwDSafL2JGwZixqNYJH1Ok7db91m6NnJpdCpWZSwDnAAhYqcFfVSNUsAcvOJIK
         WLSVL5obEx2S2rBCeJBAgThy4YGWgSA7BY/w+ZvB8r3l9KhlbrAHHgeYog02xNGXqucY
         whTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HgoWWzfjjnQcmamQRwDycpDaPLApt+RW7Q32jBpK+Ho=;
        b=Te3xTeV8gAjjBEZKgDVIdwbIEE4jt3N2dZ2einTstNYZvforaCeP3NLpulPtjI4Mq7
         lEkeFZPoFyT10ZdyZazdDz0dZApx2FPWKNIAWUYk4prbtzzOZ3oBTGlV0QxN4skiOJ0V
         A9ONSDFD8lt/55Dx5sVwBeHurGMRnFQSFpB9Pty/i2cWhXI+wwn3o4QoHKfdpZ3+iS3o
         jWYNN7eLZBpP6waXLohbtvYG3NB7AZQCJCOT0XnHbmnzWXHqTQ7XVkr06iLLGhk+Quiu
         cHNcKFb4KHTAheEhCbsOfEEmBp9y8uREDhbHMLn8J1wjGqJJ/soY/hmHsyCxhcPTf0fq
         6Lrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KfPHlbHZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgoWWzfjjnQcmamQRwDycpDaPLApt+RW7Q32jBpK+Ho=;
        b=ZVLMNLY9T60+IU7ZHsVc+49Qv2ad0tSBHC7VHShhxDUf1UbhIqaU/5a2BF12e5v0aO
         sOg1gO3M4jRUK/PS6pw7KsFMokL2bBJA2IWpMyCOZxoUXE0eaNB5FRWBxmc56O+vx556
         7p4nZhlDMEryMdFP7ADbEe5FvBOGPUkOR9XVI3H29sO8yck+Br9VSe3ruUe/SIHIU5k4
         7yGfBBG4HGdb19dfp71yiA2TkMkySSke7+V+n3vE8GPoWGp4c+1+zrpDDNQlt2PIWbGL
         nCrC42AOY6IYPnSKn2VOhmBumSvNno6tH278zB/8BLEc4wUKNYIkd6BaY5JnSNosT8q0
         ZeMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgoWWzfjjnQcmamQRwDycpDaPLApt+RW7Q32jBpK+Ho=;
        b=Zmgb+2aNyzvfSM5m/g31OvWy1DUPsGbtLjNdsu4+rmvB2HGXBdFnmaQ+8C1vDr0nMm
         n7Ibtnl1S60DTqGlm90Ifq322dpV4awNophM8WA9jEeDu1ECmbPAWu0z+skWBtPncw8G
         I+ysozZB9Rd29W2RUl5E3eia6tSJZwWQ0Jm+ResQk1LGWbBUr2nx3Yspy3QsPKLVjTLt
         mGGRQr6N7AqJk30LvEtUFwAmqrsQKwHp3TOh7PdKNtEvh8BbqSNYHidFo9Ia1zo5mKZo
         FzlwwfxCy6j17ytO4XoTNFOtR6Ad39LcMx5vecg/ag44Lt4w2TaZiZ1no8AQ2a0b9yWy
         ygsA==
X-Gm-Message-State: APjAAAUa8GZmlcOtc7lMVcf/xC22eJOyuNdShdjj7RBkPzUGdD3PyNnp
	fL+2EL8GEp2WbhASOQhwUzE=
X-Google-Smtp-Source: APXvYqzPUIzBTTrS+chkgkJBXcAeExd2a7tg+s3Q2mmcLZW6fF80+DDWI5vgmIUpnkiCkAfbY3BsDw==
X-Received: by 2002:a65:5c03:: with SMTP id u3mr430096pgr.417.1568658435391;
        Mon, 16 Sep 2019 11:27:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8e86:: with SMTP id bg6ls138629plb.5.gmail; Mon, 16
 Sep 2019 11:27:15 -0700 (PDT)
X-Received: by 2002:a17:90a:a4c3:: with SMTP id l3mr627665pjw.46.1568658435075;
        Mon, 16 Sep 2019 11:27:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568658435; cv=none;
        d=google.com; s=arc-20160816;
        b=bmm5y3BwpDVTuuChdLgwahlRUjuLBduH58DXzmhndekQ/lIN2RV4YK3A3RzfeDD/Xz
         SJtqIfXWHBX0VcWJzZ+Ozz4riHiBwcAJhpZJQefkapQc4e87DNsoeXHcTg5b0LoCHylA
         f1EAMBDZro73aVxcBfSQ5WTUF1WI4dXRxQ2GcM3BTK3YtZ66Gbk2j0OMVD6wIXpnuH3d
         4uoHEhmzKlJ5y76K+cCCdZu0nzDIoqTLCZFdSCc+bBDg7ta1nbHKfiU/MLn6GSA+IMWH
         WyifWY5zY4nUJuXuB7qddkMVvhBpk8x4TKuEZkT0GjSicPmWPEubiifCREMH22TM5xjv
         TVLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ELZ4fz65+u/rpfU/8HcYtb1DZF3WWwWyMXV/bhAw99k=;
        b=A7oBGY2uaDjVXeCJAMvH/cdkR1pOLOUHHsnUywVUZQdA/cT2WbN5U7D2x0KaA1Uj6q
         Nz2l9gbXdWB84kku7tZe5IZwZWQwDmkURF1HUGPDzNOC7hflTySHFMEvg1j2ulQ0PQUZ
         ub+aMd2kFhFhqHSSh1M8QLCrvexvhRT2DF/HkA0GuwyKLCxhjfpoTGLyk2gN2B8wz1Kl
         aMPeJq6DGi6rAoIOeJMxKCIABcz4gAUeB9JKtHF4ysjk+82ddepgixupTHtZaY5Pu6Nc
         hh3weiiMfnvISj9cILXua/q3nQuXdvMNsxTMEufyfiEdpMfUnn/oX8eW4AiiO14K2C+Z
         5cVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KfPHlbHZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i4si11185pjw.2.2019.09.16.11.27.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:27:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id b128so440512pfa.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:27:15 -0700 (PDT)
X-Received: by 2002:a63:d909:: with SMTP id r9mr417459pgg.381.1568658434346;
 Mon, 16 Sep 2019 11:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <201909161757.UnInWHxq%lkp@intel.com>
In-Reply-To: <201909161757.UnInWHxq%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 11:27:03 -0700
Message-ID: <CAKwvOdk-572gDUjc0jZAWBVJPHqahM=m1_XHbA+kzDKvKDtvyQ@mail.gmail.com>
Subject: Re: [ribalda:unit-size-v5 8/8] drivers/media/v4l2-core/v4l2-ctrls.c:4054:9:
 warning: incompatible integer to pointer conversion returning 'int' from a
 function with result type 'struct v4l2_ctrl *'
To: kbuild test robot <lkp@intel.com>, ribalda@kernel.org
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KfPHlbHZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Ricardo,
Another bug report that looks legit.

On Mon, Sep 16, 2019 at 2:35 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Ricardo Ribalda Delgado <ribalda@kernel.org>
>
> tree:   https://github.com/ribalda/linux unit-size-v5
> head:   f4a1e054bbadb3607ce06a5a5b6c59d4a10b584b
> commit: f4a1e054bbadb3607ce06a5a5b6c59d4a10b584b [8/8] WIP
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout f4a1e054bbadb3607ce06a5a5b6c59d4a10b584b
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/media/v4l2-core/v4l2-ctrls.c:4054:9: warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'struct v4l2_ctrl *' [-Wint-conversion]
>            return ret;
>                   ^~~
>    1 warning generated.
>
> vim +4054 drivers/media/v4l2-core/v4l2-ctrls.c
>
>   4032
>   4033  /* Helper function for area controls */
>   4034  struct v4l2_ctrl *v4l2_ctrl_new_area(struct v4l2_ctrl_handler *hdl,
>   4035                                       const struct v4l2_ctrl_ops *ops,
>   4036                                       u32 id, const struct v4l2_area *area)
>   4037  {
>   4038          static struct v4l2_ctrl_config ctrl = {};
>   4039          struct v4l2_ctrl *c;
>   4040          int ret;
>   4041
>   4042          ctrl.id = id;
>   4043          c = v4l2_ctrl_new_custom(hdl, &ctrl, (void *)area);
>   4044          if (!c)
>   4045                  return NULL;
>   4046
>   4047          memcpy(c->p_new.p_area, area, sizeof(*area));
>   4048          ret = set_ctrl(NULL, c, 0);
>   4049          if (ret){
>   4050                  hdl->error = ret;
>   4051                  return NULL;
>   4052          }
>   4053
> > 4054          return ret;
>   4055  }
>   4056  EXPORT_SYMBOL(v4l2_ctrl_new_area);
>   4057
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk-572gDUjc0jZAWBVJPHqahM%3Dm1_XHbA%2BkzDKvKDtvyQ%40mail.gmail.com.
