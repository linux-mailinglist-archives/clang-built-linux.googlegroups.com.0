Return-Path: <clang-built-linux+bncBCWIRUXMXYCRBNXFSL3AKGQEAMZNWOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D2E1DA942
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 06:31:51 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id n16sf238516ljj.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 21:31:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589949111; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hqb36FCu+XegjkBKXU9kn3//fbGc4eqhyCL1TY9Kbad2vxUMq9rrakddrmRXt7e1+j
         BFUqficgnJvHY7sDOWCFWAGukiPIw0VgBphiDbwyailsUHM3ar6aCiv2hVVETvtZwk/L
         NMooQFKiX+6Zq8oVuHhi0F1lc0K51ISUyUcwlqjPIZZ9tCk3/dm7d+JK5DdEOJ2TaDFW
         bsaMJwidbLPYTUWbsQlGB32U0JxC0EvIKkbEm3sA+9TeMjF300CRDzvN1cavbu0nM8eX
         orVcqcNefzVQnnvy4WFCiAnqNpl/TFXym2ngQrAbO6LQdMkxNKhXlHJQhpwvNRqC6Ww3
         Mi1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G1lTUH5NhSlI2gGZE8jNyvDwCvRyUqLsWgMvVebq/gc=;
        b=s4TgDE7acutgQE0f3+3+jrRAIHd3poyo7QeMkUQNcxXDI+XubIT3T5r/Or71vX08W1
         uFIwiY7z+Ud0wvi5Z1Qw/Lk6CB2zkOAvfgu6MYY5Hqe0FF1tuuLOD46gP9oOZzGUCZRj
         u0BJF3nKxBIcsYVk7/E1oObXy8wV8L13g+V//GrHlzzqsOex96vN9QIK76KIi/e6A50l
         phAkjfYGJnBwSu5M8lpjS1STftL6ayc8fWxBOG3o1kadWSTTcSkPcGlKNUxJVtvDsWEk
         YeWM/bzjyJMELpcvxI/7wlUJUVwfEP38AqGjd+WobucATW3ivGQjN6ui0hdWpNkONU5w
         lBpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MXF0aD0+;
       spf=pass (google.com: domain of campello@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=campello@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G1lTUH5NhSlI2gGZE8jNyvDwCvRyUqLsWgMvVebq/gc=;
        b=pYgp/OUzh1TBEaG/r8iQpzZgoe6bzMuy2ztu9OiF2+yIl4IVSPXwVF/aZNA2VvbNU0
         EXle7clVd7LPo1hhfnAL8J73XypZsM3x+Ltm2HWng4BI8fFW2PIcTEUEclbW/vwnfLvn
         TCFag1CTEJpgB/Yd9sexIIpsy62Exko9JaDqoHnxD+YHM5lRKRtePIhQKCfPVuATl/Tm
         d8IcxTmQjnaSsMdXguSF98t4sHKc+qJyqFiHx+0JKdl79cwn73J9+SaAwq9qGHAswzY7
         qKjLbBnL2z+Q+ANzvDSJDry70uVObGd0zsNDkow8/i/NUGd9kl0P97XNr8QZ/WyTjTw/
         fEpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G1lTUH5NhSlI2gGZE8jNyvDwCvRyUqLsWgMvVebq/gc=;
        b=j0AvVYmNoKB8tILkqRj5UWM1Kjoqb7hpMVBqhXOt1Q/JYcEFY0wH9ec5M1bWBP2/66
         DP+bcReiM4wHLmwN8sbz4JkGJlZkukb6ZLqpB69VA2z9gm0d7N0/gej3ITQUGN4oryc7
         LZdeRqWKhAPzodbg84z2MQkHP42S+qkzAlznDPbl8qPtHjYGS0oGG8Ze2aEtq0uLAdPg
         0jPruNkPZSvIXoz/WLQPZ+sbL2WKJf8PiA42duDqPwb5gQ8MhemEEhrC532adC8KQlVh
         LmX5ORsJpHxRi0kmxOb9p0KcwZcNzRdQhVzZRlWM/5MrtlVwuG0o+PKQmnf+JZ5YpsYG
         04fA==
X-Gm-Message-State: AOAM533Rty5iJN8Yn7HayGjo+gkJJSLQLNOTuRS0qvFontYhBMlgU/ty
	AW+s6GJMTP7MUy2Mf+dsYMw=
X-Google-Smtp-Source: ABdhPJxlbf6YEQ0QrvqOGU0cQu8GoznZ2QhvDdLSjGDY4lStUOyxTTG1ZSm8ixq94Btj+8Ev7SHwKQ==
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr1386330lfi.45.1589949111039;
        Tue, 19 May 2020 21:31:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5de8:: with SMTP id z8ls231768lfq.4.gmail; Tue, 19 May
 2020 21:31:50 -0700 (PDT)
X-Received: by 2002:ac2:511d:: with SMTP id q29mr1406550lfb.24.1589949110338;
        Tue, 19 May 2020 21:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589949110; cv=none;
        d=google.com; s=arc-20160816;
        b=Uh1AwROuiAlI19tI14QUDPGooWPW1nkN6OaMGayciHUOLYPhlq1S6dlzNonsO/kDJq
         9x71WDW7YogwRAf9GvBmV+36RCkk9aB43EFUCnXjcAwJ/YdUnkRbtqdMX+lX6pWiO1PA
         v++LTo0tVu4yodhfhhqTDb3R/3Q4DarMyfVyutm334LgUSNnWjwV+L/jOIkCDQZSFC4s
         0kluY72JDQkpvfJn8KfbRUqTgCWA0LczYXfoHsiMAjNlBZAaFLtrpNFOZiR2UWsfcFp/
         EiLcWq13BpaxCzfAGt2GLeCVIW34D2yqxByBFtTEol7CXTuLDcu+EzCPlvN3/waXFKK3
         xUkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cs6Y94K0MjKRZilY//PWXaI5MqwOMNZPEI3iUlYRV88=;
        b=XOrA/6NUA+moOzwq8RzcTNTCSRUr/uUVqwsF0eYvxrCRbXcMzck3GNPxgM7W7pxzF/
         IWywpAA/iYVdAlhdiStZ6a6xmxz2j8OvZMBpi68LeF6DQWiLCtmFwP1TNi923mP1WWxs
         h5unSQzqmp8ZOV6S1x6RsXKnQTSI406oKhlr0bWjp9s5fp0sFMl7Om6Df2dbPnrJ+MQv
         XBqiyG2qdj0GUnO0vEzIRGiaml8L7edULNMJIND7yq0UVqhoGVQn7pVCSF4bBdwSsRSZ
         ett+EL23mBwq7BNIV1Mck0TYcfEKD0PgcYYH6Q75I04PeCRpJFhJpGgb6iO4wTNkxH5h
         h13Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MXF0aD0+;
       spf=pass (google.com: domain of campello@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=campello@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 130si85626lfi.3.2020.05.19.21.31.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 21:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of campello@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t8so2118527wmi.0
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 21:31:50 -0700 (PDT)
X-Received: by 2002:a1c:4b02:: with SMTP id y2mr2544038wma.115.1589949109422;
 Tue, 19 May 2020 21:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <202005200339.79I5oOMv%lkp@intel.com>
In-Reply-To: <202005200339.79I5oOMv%lkp@intel.com>
From: "'Daniel Campello' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 May 2020 22:31:13 -0600
Message-ID: <CAHcu+VYFDCVWrqtwSZz5_5EPXXh6V7iKpsS1vBZMEZN0O4budA@mail.gmail.com>
Subject: Re: [linux-next:master 521/10701] drivers/iio/proximity/sx9310.c:1040:34:
 warning: unused variable 'sx9310_of_match'
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Gwendal Grignou <gwendal@chromium.org>, 
	Enrico Granata <egranata@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: campello@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MXF0aD0+;       spf=pass
 (google.com: domain of campello@google.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=campello@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Daniel Campello <campello@google.com>
Reply-To: Daniel Campello <campello@google.com>
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

On Tue, May 19, 2020 at 1:33 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   fb57b1fabcb28f358901b2df90abd2b48abc1ca8
> commit: 72ad02b15d6367f9897db62313cc69fb0a20ee1f [521/10701] iio: Add SEMTECH SX9310/9311 sensor driver
> config: x86_64-randconfig-r023-20200519 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 72ad02b15d6367f9897db62313cc69fb0a20ee1f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/iio/proximity/sx9310.c:1040:34: warning: unused variable 'sx9310_of_match' [-Wunused-const-variable]
> static const struct of_device_id sx9310_of_match[] = {
> ^
> 1 warning generated.
>
> vim +/sx9310_of_match +1040 drivers/iio/proximity/sx9310.c
>
>   1039
> > 1040  static const struct of_device_id sx9310_of_match[] = {
>   1041          { .compatible = "semtech,sx9310" },
>   1042          { .compatible = "semtech,sx9311" },
>   1043          {},
>   1044  };
>   1045  MODULE_DEVICE_TABLE(of, sx9310_of_match);
>   1046
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Hi Jonathan,

It seems that the version merged was v8 instead of v10. This should be
fixed on the latest version.

Regards,
Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHcu%2BVYFDCVWrqtwSZz5_5EPXXh6V7iKpsS1vBZMEZN0O4budA%40mail.gmail.com.
