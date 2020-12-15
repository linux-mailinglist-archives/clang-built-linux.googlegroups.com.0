Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBC444T7AKGQE52I34RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FBE2DB473
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 20:27:08 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id v9sf15038002qtw.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 11:27:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608060427; cv=pass;
        d=google.com; s=arc-20160816;
        b=jReVYYDfpsB9+bHk5AKk3I1hhLZAugo2YYW2bBn6gr7Xolw/kxiRN1sOmAkDMtxysT
         JR6F/Xhdyy+5BAP9ogVVJMihGnhHljl99F52huO1500QvbPPy/KCGtBDbI+aq+cv0TYd
         /KCc4wKMVAHt6ldrXd7/2u0p8Lkhre30iDeh77X1iPJz9Uk24vp4oXlzb3fsPMtbjnbj
         QCqBgy9qLpnmpXVN3e1+SH4rEYmEMQLqiZ8qOlBix5h+vaxQ3kNsasp2zSYTnYZv/QPw
         R5K1iFKkgcj/WE082g8EB0LwaEyo5rTWhQKVHviBX73g/NmVNv1Ji1bDO5jSx6EI6+wl
         l2qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4Qy8KX9Y+7V9vdjqRZ8pmd9bcCQkUIhXiZ1wBbHMKPs=;
        b=roq91ix6K4fhuzoSlY2NsqI0wTjgcGxOADysJ34fTIESKf1dNxtCrxN+xfIAXRkp3g
         kQB4DbLBCAlRfM8tnKCZMgRmhCgl9qDo2hf+qKV9r5+bi6q7KQlZzTysiVGPgUnqgrIM
         NLhToDq/RZpojYIrbRChTLBBtWtoLA3nvdcoUE7WDq7jdz4ffLvnF/gwo2ELnQXEUEb8
         zp0g0KqlCiZonrTau0TBcAGSI/eF+arPHHbICWiWAHAeJHy2yTBuU5LpZ2U0UftFegBk
         8x6MoxSvBA+tyoTbiLA1go3uCjDfwJm1rNUrAEcXL4MJsBgBEXt3njJnLiTGSGLoH113
         T5pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nWtahZRf;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Qy8KX9Y+7V9vdjqRZ8pmd9bcCQkUIhXiZ1wBbHMKPs=;
        b=Ja9cSQjvcDQ/teMZ9vh8X17OCmeCpSXRH6Au1VcGduQvNqa+CEM+9dDshROS8aGWGS
         psvWKbYLWR1qk6ngFFm1CKLs6xA/FjL0BDzRQXRWp1xmjYwJoumdDXryByEfjXA8eryd
         YHdxDdkUI8j22f2sh+k3tpBuvTVMdfLkqDTNsGEzvR5vQAZvuuansT1GN6GI1V+W1qGK
         55BYAD1bR7zwbStyZhs3UlqGaUGOpVoEnhJZmyxOvtIzr10s9sXIPwmQMXUGBIOPqlAS
         BnZQZBU6CjjMZ7zRmaSrTrP8iObvmZOLM9PPE5tSem/ndzpx/GnVN7S+2nCk5s7B8sHJ
         DO/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Qy8KX9Y+7V9vdjqRZ8pmd9bcCQkUIhXiZ1wBbHMKPs=;
        b=GsJ2AgqWKNc35hvb0F5zZebrEsvYJZoMOuIub/QchAN2R8wyr5RS+V3KVaT+vmYoRU
         GR6E/KShyzMvV65rLp9tEZ/DUvgO/OezZ0Pod8Xj4ZvtdibMMQoojpccjKfiY8FuNgUi
         J68bRfJUUQ2MIUwXxyJ6wJFd02HA4OyZaWaPI6ySyEN6B0Isgd3ySCMUV2U+cBnNDTbb
         rA9TNwxAkfP6XtOvwHUOUdNjYueHHmlpQ6Rc1Oj5BIK5DI0XWUfRQg0ASraVQWT33sUb
         03jmQM7kUNr4MGhhz5+24c+VZbo76EdnF0w1qfMLl24wo1azJuage6JrdcPi2exSHjKN
         gZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Qy8KX9Y+7V9vdjqRZ8pmd9bcCQkUIhXiZ1wBbHMKPs=;
        b=QteiPLbJuwCCWGhnOtk7ZWk6kM7ckvL+W2YlW8cujbXy9JOLbdFx0hy9pLeadvLi5W
         lSGtm/xe16H6hiEfBu48yd5ecMF4aqsclsNli0LA4IKv6yYevGaeCrCvuatL4oZ6wWFI
         EQKnbr3gSDgwNYV6h5veKNH1fmzWn8j3Y4pe4qWDY79hcTXtHzKWvpWrSl3lSYr12wPY
         0dy8jvbGSuYzIu7Cw9qFsMtMlm8moc1dqIOFfmcecwKiULqs28u7EajXQbcug909x7Nq
         iCjkAau7aLK9lOYh6D/5l882pmPOpzF0Rl/8jPY6YbCu4JPGnN2YS/i3WKLlxeK0XUMH
         LcZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Yq3QX4Kx3kQWtVef3sCDe7b7AhDyO/y8r3z1hVoa9IomYBKAw
	Ykx/C95tOu4WZQZPAxu1QCQ=
X-Google-Smtp-Source: ABdhPJyCWdN+dQaP4Yzz7x+yTl6HCsHCmTAxs4UDidPxAJ00U+W3DqfdrdmUvvoX506Pk1hFFjhL0A==
X-Received: by 2002:ac8:a01:: with SMTP id b1mr39026181qti.217.1608060427121;
        Tue, 15 Dec 2020 11:27:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:70ca:: with SMTP id g10ls7892686qtp.3.gmail; Tue, 15 Dec
 2020 11:27:06 -0800 (PST)
X-Received: by 2002:ac8:47da:: with SMTP id d26mr32196405qtr.4.1608060426738;
        Tue, 15 Dec 2020 11:27:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608060426; cv=none;
        d=google.com; s=arc-20160816;
        b=OGAo9heupFbQvvrZ03SRGSyRR2WWTPKYmTQJGI/rSgbVvlwcMAQszvqYED5IxeALLU
         du8+Uxjzj81tBQF1KlJ3j7dtyYJn+hO1hDSIWVI18oPS7z5MGKWTgKg7YDxDTsZzTRsA
         Kz9J3mKSLS6b0hcZZ46fbsQP934c5mHfBl53A7TbEhO5RLo/RK4WpJ5cqVtVdONZOV9D
         Z6mEqpT0S4B8G1cdGR8GEGO/iCCWshA0awDAMDhkGFN73z0pF6Kc5mkpTHrBK7XEv1TW
         9GPi8zQC721J7963go3EKT8TZkL02cWr7JJlyomECgNgh0RTw/Zcxt+5OTN1HDErnQLM
         7yUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jHb6dN+Dvm/IF5o3+njURnTnHGjGNTXkMWxk8SrY1Wc=;
        b=RTwnGUHJrFT1GxTfkuM9AEAxhVUUsHkUeq1/cRPtVhnXzJ9uTwrS+iuwbtmZDeCvln
         sB1raP/UIrSrnEa5h/WGJO2VZmJp9zASZL5p36Gboowhlnp+fMASuOKvACPy2rDhSvoE
         xJ6+jrPzJ+mmh2L4MihY+NueHo5pG57/GVxg3ykkZ+zEYyG/WsyKndZh+4lRB7oIpZ1g
         kP0VUprRn7s1gyGzU+FYfVZKpWu+DTzO0np80bxuKVWJLaNbW2qQJsHKRhFIVXLizpT/
         5VlEpLls6ZMsRhSLqGK3o30vh+Zx7FCoVro0/QuKvYDkJhE1Zv75H+wc1I52yQm5pJoX
         DrzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nWtahZRf;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com. [2607:f8b0:4864:20::e2f])
        by gmr-mx.google.com with ESMTPS id y56si1607887qtb.4.2020.12.15.11.27.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 11:27:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2f as permitted sender) client-ip=2607:f8b0:4864:20::e2f;
Received: by mail-vs1-xe2f.google.com with SMTP id e15so10105706vsa.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 11:27:06 -0800 (PST)
X-Received: by 2002:a67:fad7:: with SMTP id g23mr29499930vsq.9.1608060426438;
 Tue, 15 Dec 2020 11:27:06 -0800 (PST)
MIME-Version: 1.0
References: <202012152316.aox0aByc-lkp@intel.com>
In-Reply-To: <202012152316.aox0aByc-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 16 Dec 2020 00:56:55 +0530
Message-ID: <CAFqt6zY5v+pi3uWFrKWE6UukDvq5EuSLDPwD64ApUQfFkhx3OQ@mail.gmail.com>
Subject: Re: [linux-next:master 11518/13311] drivers/input/misc/ariel-pwrbutton.c:152:35:
 warning: unused variable 'ariel_pwrbutton_id_table'
To: kernel test robot <lkp@intel.com>
Cc: Lubomir Rintel <lkundrak@v3.sk>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nWtahZRf;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2f
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Dec 15, 2020 at 9:06 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   9317f948b0b188b8d2fded75957e6d42c460df1b
> commit: 3d82a4d736a662e352027686b8a373bf3e70820e [11518/13311] Input: add driver for power button on Dell Wyse 3020
> config: powerpc-randconfig-r024-20201215 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a29ecca7819a6ed4250d3689b12b1f664bb790d7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=3d82a4d736a662e352027686b8a373bf3e70820e
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 3d82a4d736a662e352027686b8a373bf3e70820e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/input/misc/ariel-pwrbutton.c:152:35: warning: unused variable 'ariel_pwrbutton_id_table' [-Wunused-const-variable]
>    static const struct spi_device_id ariel_pwrbutton_id_table[] = {
>                                      ^
>    1 warning generated.

ariel_pwrbutton_id_table[] is not used. This can be removed if no plan
to use it further.

>
> vim +/ariel_pwrbutton_id_table +152 drivers/input/misc/ariel-pwrbutton.c
>
>    151
>  > 152  static const struct spi_device_id ariel_pwrbutton_id_table[] = {
>    153          { "wyse-ariel-ec-input", 0 },
>    154          {}
>    155  };
>    156  MODULE_DEVICE_TABLE(spi, ariel_pwrbutton_id_table);
>    157
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zY5v%2Bpi3uWFrKWE6UukDvq5EuSLDPwD64ApUQfFkhx3OQ%40mail.gmail.com.
