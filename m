Return-Path: <clang-built-linux+bncBDNONOHMUUCRBS542X7QKGQEV6JSB7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7942EBA37
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 07:52:59 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id a19sf3317939lfd.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 22:52:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609915979; cv=pass;
        d=google.com; s=arc-20160816;
        b=nTcsqt5WnXzn7HB/PMB1YT/mfh/wWZQ1PKcnc/iPZyaNyRsu4LWL821Tv4HvKRlNhU
         OUC3FC15tVlM2X+lxK47phq25/wXN513SFXhdiMHp9U8z/yy56FgM6RdgUkxiS6gNiH3
         29/j5YTZ+F4rR/tZ6UFNoyRV/GyJhY7tXwVRT5QD0lzAnZWb1O7SHZP9cjwW8mHlqpqU
         Rodkg3gm3Cdxc0OuzhNX4yThaDcSH8lzv4j6ouKmWldEtbtZigA/SPcEn6OUVIOQhpVA
         iH5KJduhBt27nJSgBfbjQpa5exuGFPLGqr11VoxaSmKzJuQY9SP2t9vIqgwseFQ6byRJ
         2ExA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=c0Wrik2yHYonlFKmSOLLhnl4ewa5ieNtLJXL34lj0Uk=;
        b=AYesrfuYYFPQtr8vo1/xPiROJ1aEJ3fO9231gWtlqlhWh4KDd+pTYD+yi7bw29+MWd
         dQrDPRCk0aUu4gkwJeY4MxfefXLeBs8a1Dy+ck6/nYI5CHNlVvf8MGIDJ+Z5MXehk2rd
         vsHHr9w9PVaI+Ua4YcNAUCCmPelptMNMg56v8X0apvTafICGJ6M8A/g/1YDxcEzLT7Az
         Xu2uOaCk6Skx8BfMcJ1WiCyF0JWo7r+DkpPRtHpRlfy5nJ+SlZwg8G1S1i5JtQDtixpY
         Xi3mgjRGpXeWyntuCgMUrqrPkYc9zJBjdD9dgfBgFB9XVTRVTK2EB+ti+H29F6yz8+q6
         H6CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b="0/uMMMlT";
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c0Wrik2yHYonlFKmSOLLhnl4ewa5ieNtLJXL34lj0Uk=;
        b=dBjos3H1jUOnJoKbip9/OlSO2uC2mcwWNh+hAeNY/knAfBpwszWnULt7p7lM817mCH
         +caqPebbj9Gig6PJHDS7kPyPjgRDSn3bW80h6LiypWkADCLZdRqx6SwOG0L3zFmnIbRT
         xlBxJILRH/GiG46KSlmhFwDL2JewyA6iPPjSViLTXOuWC6kGZwR6lPEECVryyBzwy6HB
         peizLoonMIqEfku8Z+Lz0+h5A5A1xcim+sC1zRJB6U5lGiHKYJ+dHOv0fJuqaxhDg2F4
         XFA/KrPJzC1SyJ+xPWyMsyFFRfT8t4YyULHI4mDVBHm5OhvXHRhRyjz6zgetbrmqyfak
         PWXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c0Wrik2yHYonlFKmSOLLhnl4ewa5ieNtLJXL34lj0Uk=;
        b=CNfKzE76yfTG2p2l/w8IuAzWPNjqeCdWptkUKr+hAC1i/1Rf8eeWfaCbg9uRIcIQyD
         pfAb2TwiwpT/2g09VgNe8WqlYG16fmFxkoN8Yl0SCp10rDGIHwliqfBKDJdgzIRSn2MM
         dvrHDeiAzBknA5LR06Q0i0LPPnHFPb98DUqap5/FIq1D4ZThDToQVxaqkQVtjth6z6Yk
         GKm9uOd/QLun4N1LHIYEJWSnmSOmTCUDjiLGZaasdr+WVpGWNzRKvAhm36FJghcHAeks
         4UPK8MEYjjamQfPRPYLHAhxxy0XIFxpmt1+IoDLh+0xWgmY5J/7BdMppxnSEet4klSOq
         DQvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531H4dRw8KVWDsz1GWJ+E6Lo0o44ZwWKtr6+gF7R9cWYDK1Oag47
	92O1BloyHqLD58fRt2lH4VA=
X-Google-Smtp-Source: ABdhPJz4sDbq2vl8r0jIl5SqGUOFfyAhL9EAJjkJhz4AlHEeFqfGqt4+NqQC6w/Ofkh+OOsdiEyNrg==
X-Received: by 2002:a19:4907:: with SMTP id w7mr1278591lfa.198.1609915979317;
        Tue, 05 Jan 2021 22:52:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5816:: with SMTP id m22ls383194ljb.4.gmail; Tue, 05 Jan
 2021 22:52:58 -0800 (PST)
X-Received: by 2002:a2e:8045:: with SMTP id p5mr1530850ljg.289.1609915978303;
        Tue, 05 Jan 2021 22:52:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609915978; cv=none;
        d=google.com; s=arc-20160816;
        b=lBIBcdTAmAw3SEX32GV746Im/4GWlDtodcxx2Nh2JTezyJ1JQ1JfwdS57BdEh8NlBn
         0WABlC7OQAKRWStM9pQKTnp5mEsCuJGyIl7OjMVMq3f2ozb6ys4wecTGP+/+qju7mT/r
         PG+cTbUD2TVnrWLwq0hVxQw1gk2EAW4bYfZVUz7NKp0+Jdo76cvy5yjYptfN+DAUthx3
         KZi320mzphSLQD6ak+lVe3LHfAiTmAmEKuvfykhsCDh8iPU7cDp8hCjYLVRhB/IYvZ5N
         KDeH3jpCHotcz4h35GjN9MQaL/e/ZgHUqPyTZXsKCQIApCU6YVAqNY1qkYl4mg94ZPp1
         QkMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oZy7Sz3n8S2tjruUbeBIOImdiAfddQyS0bUKqfEICmE=;
        b=jdijF1R+7o5HQcMkpN9QHrDPRfxS1psrtwHXb4BkqE/Z83kcF81zHGyw70SnMJU28o
         i/z+ghJxNcTJQG5F0IIFccOduTH4w1j8hHSdOXYVeWfHsNJIhvjwJfG7yoPN3WTfFk24
         3OScAi1YzIxQIvAr9h3lk6qREsOCvrRthlwcnJeSWyakqQroLUpThWUbfzL4R7auvB9z
         FBo22Yaz0XQhdTZmXzg0OUbQa+Kb4hwQZF1BfQjrMDTCPV64CiQIvGmpxqlBwbMRJwDx
         SH9lK1ZMrR4tlFfKxZMkXs3GubjWcDUNGOt6L+HecpU53r0CKoAYH1Ap9Af/cgB8JXZu
         Xzsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b="0/uMMMlT";
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com. [2a00:1450:4864:20::635])
        by gmr-mx.google.com with ESMTPS id r26si44095lfe.8.2021.01.05.22.52.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 22:52:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bgolaszewski@baylibre.com designates 2a00:1450:4864:20::635 as permitted sender) client-ip=2a00:1450:4864:20::635;
Received: by mail-ej1-x635.google.com with SMTP id lt17so3763047ejb.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 22:52:58 -0800 (PST)
X-Received: by 2002:a17:907:b09:: with SMTP id h9mr1967943ejl.155.1609915977620;
 Tue, 05 Jan 2021 22:52:57 -0800 (PST)
MIME-Version: 1.0
References: <20210105134424.30632-1-brgl@bgdev.pl> <202101061453.E7YDzBDz-lkp@intel.com>
In-Reply-To: <202101061453.E7YDzBDz-lkp@intel.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 6 Jan 2021 07:52:46 +0100
Message-ID: <CAMpxmJUxKD9-J+MESZMxMePZX4WO_QFj6FudrAKS=Tp_kW8iOQ@mail.gmail.com>
Subject: Re: [PATCH] rtc: s5m: use devm_i2c_new_dummy_device()
To: kernel test robot <lkp@intel.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, LKML <linux-kernel@vger.kernel.org>, 
	linux-samsung-soc@vger.kernel.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bgolaszewski@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b="0/uMMMlT";       spf=pass (google.com: domain of
 bgolaszewski@baylibre.com designates 2a00:1450:4864:20::635 as permitted
 sender) smtp.mailfrom=bgolaszewski@baylibre.com
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

On Wed, Jan 6, 2021 at 7:47 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Bartosz,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on abelloni/rtc-next]
> [also build test WARNING on v5.11-rc2 next-20210104]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Bartosz-Golaszewski/rtc-s5m-use-devm_i2c_new_dummy_device/20210105-214736
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux.git rtc-next
> config: x86_64-randconfig-a004-20210105 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/21651184178d1001f3bbc858c9161f1b7fd65321
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Bartosz-Golaszewski/rtc-s5m-use-devm_i2c_new_dummy_device/20210105-214736
>         git checkout 21651184178d1001f3bbc858c9161f1b7fd65321
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/rtc/rtc-s5m.c:773:4: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
>                            ret);
>                            ^~~
>    include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
>            _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                          ^~~~~~~~~~~
>    drivers/rtc/rtc-s5m.c:719:9: note: initialize the variable 'ret' to silence this warning
>            int ret, alarm_irq;
>                   ^
>                    = 0
>    1 warning generated.
>
>
> vim +/ret +773 drivers/rtc/rtc-s5m.c
>

This isn't caused by this patch, it seems to be an older bug. I can
try to fix it while at it.

Bart

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMpxmJUxKD9-J%2BMESZMxMePZX4WO_QFj6FudrAKS%3DTp_kW8iOQ%40mail.gmail.com.
