Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQP6XSDQMGQEZF7E5LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7FE3C8EBD
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 21:47:14 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id i12-20020adffc0c0000b0290140ab4d8389sf2097957wrr.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 12:47:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626292034; cv=pass;
        d=google.com; s=arc-20160816;
        b=MawyjPWhTvGJC5k8qKvPKJlS9pJ1/NVbZdujSrMzAoNZs7582wPGD678Pv59u1awJG
         O/FnJGTyeeulxzS7i/uktY7By7b+Ycnspla46LSM2qbpPdte57lyyocnmkOHP2isVjOV
         TKiOz1bJMzd6YtqznSegutP0vFludiLG4u66xC91wCmkWexOsCaoCSqApsUsVjsm95Dq
         fBOuEy9rauZkFjD6bRf0EZYOWy2MsIbgIvB/VMFlHSKxEJzRDV8RBzpbN+61jaSErJLS
         dhfKt+Sp5+D5qxjI5fwfUgNyibJrj4XI7NG4rNsU+IC7nKeXnpqzcecybgM5nomTY3vt
         eOhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+pLbx6S+Dvg+wNWcfBRYEHE18L++O9JmFOQoXNAbAt0=;
        b=0Hr9gtjMS5eNhZEEB2aNlT29oAoLlz0f+yOWnP892Dl1ts+oc3afdPrDs3srSBOJDK
         fx6gnwKiYCxU1QoBgilcs5GGDHdRtrmXUeRMQrSL02i4XD/mj01MkCYEQb8z3wB0ATbf
         EsBLKyEprv5mLahJsJH1X3XgdVCCXzvp1Idkoiwbws+1gDrt49PKJ0ofAKdG+z4qAleY
         AY2IRiLtz2SQIsQicp+7PhNxCOxRhMd1rif9SOrbGt+eFJ5oV/IJeGZKF8fdNQcHTyl5
         mLynnMylYS9/4gZ3U4tWjCESg2g7DQ7KqXku7LUxFofm0ktw7Qucyf1mcSBt3dBBQqQi
         FNzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9X1Akkx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pLbx6S+Dvg+wNWcfBRYEHE18L++O9JmFOQoXNAbAt0=;
        b=TlseyIv/Tb8+F2g/ud4NedRRXObg7rdJose4tprwxcwc//cGZpbwhXEGo57nvoJ6Ud
         kkLzEduJmAPoLxMirEupz1d/Vf6kSJYzBJRXEQ4+bro5pzCYc4zW2YpUwmCJ3G3QRN3I
         9mhmAobD3QxcT9ffRUE15take6e5ljGgS5Ub5WeR5DLTzvftmuB81QszQfpaIqI7NTWT
         wQ8JsfsBTs99kfII9cp5bTfsWlQwroBvB0T+xkl2SuepHDEddih/MnaYqz0ttEs1kWmu
         kmdQxSjqkDr5Cifue4d5v9RBIt1akrPp6gKqgZBlSxiBcqUKdobX6bPMZP1YpJLQ3ef6
         EYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pLbx6S+Dvg+wNWcfBRYEHE18L++O9JmFOQoXNAbAt0=;
        b=M++owJ2XUdCoXtm35SlItBzordeEQ+w+ksFKjlzcZQ9f1VZa486KGZqicnT2w2vz/c
         35kykiZkOb2iDRugDClHqSudzvN8vF9nFd2iigxSdutT2PtsVIJZCkWhxuasxewbDUTe
         dznbgucg2wsOZBSqw2fGOicQu5c1Dkt53W/SzPeFBR4DRKehkiDQxA79f+lKcvNFyIk4
         urM27sKy0BiIDUUGmWjGlCfR5jgPxv9E40babXDzRRPCPk/ZOQAv6syDe1ti1/6AEM12
         1F2WDr41rsGPOlqhDAC1VyNk7EE6v8ccg3Ex0sZu9fVm3MjvNiDBdIAbOLA0xBGsBqhH
         g3rQ==
X-Gm-Message-State: AOAM531zA04eCvl0VafNXvbEYymUlgzPNTzuluBMWG5VBoQsO5LCwECT
	TI7NE9aS0x8KOU54B5toTAg=
X-Google-Smtp-Source: ABdhPJzWxkTiko+bMcuTaKcjqNZPGy0FPL3swTzhXArSpPIYQ6w9VxLuq7v5wocZHnmmX/GMSF92UQ==
X-Received: by 2002:a05:600c:b42:: with SMTP id k2mr6070901wmr.45.1626292034107;
        Wed, 14 Jul 2021 12:47:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls4815219wrr.3.gmail; Wed, 14 Jul
 2021 12:47:13 -0700 (PDT)
X-Received: by 2002:adf:d08f:: with SMTP id y15mr15598170wrh.266.1626292033314;
        Wed, 14 Jul 2021 12:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626292033; cv=none;
        d=google.com; s=arc-20160816;
        b=VJaE62LRhDhWH2xd2GAyvO+S183zPaa3sOE84VuwuSOTZ0MZA7ko9gZ6pBh8t5mT1G
         R4BBqAspwLo3alApyBpi564J3WBWpXND9IfY4RqJ0yQ/vuloih7Zj38KiIrhfuUdshnl
         bqJEIyJEYRX2ZA1j9+51XJTE8UnMQ2H99ITJkPc0FNZEmczO6K3XHLloFfqHgZmeoQLv
         /h9xDxJKDlO+5lHeb5mD/fdqp9/zng081runNu0yhUIyeXaTq7JDe24YmpN5TAQm7m9i
         OgYimEn951RuFlcBC6mn4Cor3RTz7Ql3HFUa4uHSwJNP6vTpZemDcqrLRDdqme40M8VY
         X4XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wpYUDPD+jJFa/2N/K1bMkRrbiJB4ktLKot6CPD1nD6M=;
        b=puN2wpuK/cf87qf9btVG/kMiYEtytYF26caEVrXmsh+obdsWJxT2SeazvH31b+G6Px
         ZUKdzpDLVE8BfQRY2IwMLRkbd2OGY8O456AZT8dOnnDFP7sTbQHmve8f70GfyqfRaGlv
         9Oq8+6TuecSEBTJ5uhSSIcUUTQD/x8o2MqqHYjB1Glce5G9OORE9ZATwJy/Ebw5lW5px
         0EWglOEErt92aGlXN42PHUNI8/c8llxH0ezwpjH37WskfHyWsiOMti4g1rpVTpSWFKwI
         CMIrOEIUBov+yXvZq8EuLAXvazDZ6/MRA3Jo2MMEXxAwYOHiAoiKCVB9V41IQ6RbfzMb
         /gGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d9X1Akkx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id k14si88863wrx.1.2021.07.14.12.47.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 12:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id i5so5633053lfe.2
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 12:47:13 -0700 (PDT)
X-Received: by 2002:ac2:4ac6:: with SMTP id m6mr9577331lfp.73.1626292032772;
 Wed, 14 Jul 2021 12:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210702044950.10411-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20210702044950.10411-1-lukas.bulwahn@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Jul 2021 12:47:01 -0700
Message-ID: <CAKwvOdn0DPA2sk8MtmVa9shWDH7GL4t2X5K0V4T=+RnpUKJGOw@mail.gmail.com>
Subject: Re: [PATCH] gcov: clang: rectify gcov_info_add's kernel-doc
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d9X1Akkx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

On Thu, Jul 1, 2021 at 9:50 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> For gcov_info_add, ./scripts/kernel-doc -none kernel/gcov/clang.c warns:
>
>   warning: Function parameter or member 'dst' not described in 'gcov_info_add'
>   warning: Function parameter or member 'src' not described in 'gcov_info_add'
>   warning: Excess function parameter 'dest' description in 'gcov_info_add'
>   warning: Excess function parameter 'source' description in 'gcov_info_add'
>
> Obviously, the kernel-doc's and function's parameter names slightly mismatch.
>
> Adjust the kernel-doc description to make kernel-doc happy.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Thanks Lukas!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  kernel/gcov/clang.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> index cbb0bed958ab..214696e28ec1 100644
> --- a/kernel/gcov/clang.c
> +++ b/kernel/gcov/clang.c
> @@ -264,10 +264,10 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
>
>  /**
>   * gcov_info_add - add up profiling data
> - * @dest: profiling data set to which data is added
> - * @source: profiling data set which is added
> + * @dst: profiling data set to which data is added
> + * @src: profiling data set which is added
>   *
> - * Adds profiling counts of @source to @dest.
> + * Adds profiling counts of @src to @dst.
>   */
>  void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
>  {
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn0DPA2sk8MtmVa9shWDH7GL4t2X5K0V4T%3D%2BRnpUKJGOw%40mail.gmail.com.
