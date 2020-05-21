Return-Path: <clang-built-linux+bncBD26TVH6RINBBLFAS73AKGQEFV5RXWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A491DC42D
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 02:49:49 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id i4sf2565554ool.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 17:49:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590022188; cv=pass;
        d=google.com; s=arc-20160816;
        b=hz5byC5EKhdAsOzGn/Ecro1MsENCqr6fPikMz7ExCb2aWiz2NihoqMAZtH2HP/sIgt
         OEasptxR8ovoIpCDb5sg9DM9U243jwWWCbYD/z/XaybGKp1zo+D73Su7oWaNnkiwQepg
         ec4Qzy9OtaQ0CsXfjsuD8p+pp5Vyj5YrQ2R1nYr02XAK2a7iVPCrHqV9P3FWNTQOyNab
         c2/3k+wip+L+KElb/xVAtBuAhC2vDpZXeaSZVMUp494u6yycropsiuJqb6NuAEv2d8KC
         gUIDfdkamQvxPRUqi8Lb4NIm6Ch4DHCKa2gw8NjqiohaDWmg4DVLUYHcRC3jShhXscXa
         o8kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=jdqOos9wpJuRP+CKLendtU2lfA/0WNnfULKYXVmoIf0=;
        b=VL8dRRvE/kmPFrJcGQUDB9HaX5SK4UhyyYlewjzfg8qKGQ6Sa7gs5XVYzXMlnKFiJy
         zsUy14H+oHnjeV4fpDdsowAOfSQw4HoRfsX047lyx2DzNwGqKDm2xo0KufY+MSO/2+GH
         QnHV3lWtrjVznEuABOZvJA2VrezwfKN4Jb30P/iBBlMMIxtNgJC1FgIw3WmLLctUJioz
         L8A2Wj16QCXSFfJGItWbdNYf5RhNacsvXntluOTK+r25Z4ffZaEJvUrrRMWX+WgMfijt
         Y7Pud4YL6X99I24oKK2iYLQX+nRczEFmvJLTZIZJNsejhBIFhDwtRNuFyMt4B5iO8x/n
         ZggQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jdqOos9wpJuRP+CKLendtU2lfA/0WNnfULKYXVmoIf0=;
        b=ULuthIxybdfyb2fa9OnPBVkmuz/PAdU1JJlHTGmbk/pULbTbqP//zv1e31Sp3hbaEq
         bggp1B53eygJzU3q6MrQx1LYr9knnnWxR2PN16mpeFiBJCNj2640tiTuz578C53nL6Wn
         umg2SUNjct4BLT9q0kc8kOfhNFvuprAj44QeiZvzaQPzUCp4XTNgsWg9ME6oV+/n6cTB
         V8TkeUEF764acmRlrKr8vC1zctxdVkmE8HWFBXWGiW+rIiNjof/5N6mQ9wO9vzwZdH+m
         jofGYPy/ELmVA/25M9EMLSKxwSbEOVHl7fOqGqXoM6VLcm+I7ojelMD1GdAdBEUQhIZ8
         bf6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jdqOos9wpJuRP+CKLendtU2lfA/0WNnfULKYXVmoIf0=;
        b=iOttNP6a971eT0swtsN68aSwp68y0F0TS7CcaYtkjhSYbEl3ZVCSNzi/yrJOSR5WrU
         y6zbHKTCqXV0aQMXy69RaAzUDNLm8ET7KENI0eVRb45ojMqJNVu1rKV9Xq27jx3siDD5
         4HTQ8U4nUtmsQp621RtaqEhjESyKLTbP7UnBa/LS2AJ+cEvDOF2JIVV1umPoykuiyJqs
         Gu8B+21F/fCtWOM0ugKoViZQx4+OsvZJnSrOUMUqUHk/XL/1bhmR2v1fOb3fvPMwKqpy
         mC+UtzOe/EolQjmeH/Lsbh2pUu4jeAwjdVuXKw+ucMaSvoJr5XwkL5PYrNqarQvI5eTH
         8YQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532521dD9Grp3gNOTWlO2cREbAZovzlkrmgp90Vc5U2M5RZlR2ib
	TQVxrjLmKus8FZMq4xUurlU=
X-Google-Smtp-Source: ABdhPJz+MP1TJQuahBapqXeYWi0oasPDC7TvMrGCO6BYcM6iXraqxhrz7n96JDvqFdue7RTG3Z9Cbg==
X-Received: by 2002:aca:3a55:: with SMTP id h82mr4852018oia.135.1590022188343;
        Wed, 20 May 2020 17:49:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:86a:: with SMTP id 97ls116892oty.9.gmail; Wed, 20 May
 2020 17:49:48 -0700 (PDT)
X-Received: by 2002:a05:6830:16c4:: with SMTP id l4mr5534395otr.161.1590022187969;
        Wed, 20 May 2020 17:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590022187; cv=none;
        d=google.com; s=arc-20160816;
        b=CzZImHSaK8CKmTHfIj35VjNgnWtad+MqUo1CRmk7/LlJwRUWYXJ00urTfE8IwA4vwZ
         ppl3qKa/xakHC3nOHDL+MCj+6aifUWPWMfhRNljmCCigYNcawfdG3b85gduI4OD//az/
         6JdkJvfFIjjfYCSYseShr6cF9i1oNJfb0sf4GP7xyxi/IkAw5kVYkwESnXp7AAgN5ZkN
         +zbvk6uE22u9gPVrBfsCdpFcD8QSRHwHVfI9ygPfcVjfQdFWDyGURxRbY2vLVq01UfPn
         EC5cF4qfs4WfRxGnwVaXh30c2zN8lRdoi7q9VEo4MiAH95T0esjj937p4dN9tKhm8LLy
         5g5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=vApIEUIUuu1ctXGxOLoZ8FxF5TBCGyPSpe9GtCDsbDk=;
        b=pDBVIIpo7p/bsm7XpdS/nluMwPwBmxa93/L/0+fZbx/yLGjYOt0bGOSnBZYRY6XXp+
         BjbtqhYeL/igGYAeFp9n3ZfiwYWs65Dxr+0pzN5LDHeahZzyGKXGtX+++qhwDmhlsKYj
         c1YAjCZNnpOIdr6850uGH6sHMWhbVEhfjQI9B1fWchA/iCHhf0K3Mqe3279RuAk/7r/z
         o5TcluA3AU7yHlub0NyZ7eu1cFosO4OEes6U52tPuS8JKXH34HH+T/PvJ4anL8xrrMl4
         gX41CyZmCI3wKJdgqnGK6jmbIkmabBjfc9uqas6OEUL4+m24Yh7W2kLRGQyLC/inxvM6
         XlGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d4si301364oic.3.2020.05.20.17.49.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 17:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 0LfNb/OznzI1t/UpWglywCyjGSUfFk4XjiaeGZCUYRy3GgrPKhzLlw7MthiNmtzJbaf1ZQOeXH
 lVqXt4WslWBA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2020 17:49:46 -0700
IronPort-SDR: 6E0IBxpkY+VJ42JgoXbx9EzRYlAshBy2wGLWL1jyvkTwXGlJ3CXUCq8kgeKVamAc0PuRhqYRBV
 lfABdxelc30w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,416,1583222400"; 
   d="scan'208";a="440248313"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
  by orsmga005.jf.intel.com with ESMTP; 20 May 2020 17:49:44 -0700
Subject: Re: [kbuild-all] Re: [linuxtv-media:master 440/495]
 drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: warning: address of
 'config->info' will always evaluate to 'true'
To: Nick Desaulniers <ndesaulniers@google.com>,
 kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <202005210222.fkqS2pnd%lkp@intel.com>
 <CAKwvOd=TcBkzbBFX3EFK5VgO8JojZjdRbozHbew81da-wKJ3hg@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <f082d48b-a173-3607-60d4-285baec9b022@intel.com>
Date: Thu, 21 May 2020 08:49:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=TcBkzbBFX3EFK5VgO8JojZjdRbozHbew81da-wKJ3hg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Hi Nick,

We ignored the "warning: stack frame size of 27088 bytes in function 
'create_pipe' [-Wframe-larger-than=]" wrongly
according to https://lkml.org/lkml/2020/4/13/629, will revert it.

Best Regards,
Rong Chen

On 5/21/20 3:42 AM, Nick Desaulniers wrote:
> Hi Philip,
> Any thoughts on why this wasn't sent to the author?  I know we
> restrict LLD warnings, but this case doesn't look like it's from LLD.
>
> On Wed, May 20, 2020 at 11:54 AM kbuild test robot <lkp@intel.com> wrote:
>> CC: linux-media@vger.kernel.org
>> TO: Mauro Carvalho Chehab <mchehab@kernel.org>
>> CC: linux-media@vger.kernel.org
>>
>> Hi Mauro,
>>
>> First bad commit (maybe != root cause):
>>
>> tree:   git://linuxtv.org/media_tree.git master
>> head:   960b2dee908b0fc51cf670841de13b40b44aaaae
>> commit: 9d4fa1a16b28b1d12b0378993d2d48f572a045d9 [440/495] media: atomisp: cleanup directory hierarchy
>> config: x86_64-allyesconfig (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e6658079aca6d971b4e9d7137a3a2ecbc9c34aec)
>> reproduce:
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install x86_64 cross compiling tool for clang build
>>          # apt-get install binutils-x86-64-linux-gnu
>>          git checkout 9d4fa1a16b28b1d12b0378993d2d48f572a045d9
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>>
>>>> drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: warning: address of 'config->info' will always evaluate to 'true' [-Wpointer-bool-conversion]
>> if (!&config->info) {
>> ~ ~~~~~~~~^~~~
>> 1 warning generated.
>> --
>>>> drivers/staging/media/atomisp/pci/sh_css.c:8621:14: warning: address of 'pipe->output_stage' will always evaluate to 'true' [-Wpointer-bool-conversion]
>> if (&pipe->output_stage)
>> ~~   ~~~~~~^~~~~~~~~~~~
>>>> drivers/staging/media/atomisp/pci/sh_css.c:8629:14: warning: address of 'pipe->vf_stage' will always evaluate to 'true' [-Wpointer-bool-conversion]
>> if (&pipe->vf_stage)
>> ~~   ~~~~~~^~~~~~~~
>>>> drivers/staging/media/atomisp/pci/sh_css.c:2460:1: warning: stack frame size of 27088 bytes in function 'create_pipe' [-Wframe-larger-than=]
>> create_pipe(enum ia_css_pipe_mode mode,
>> ^
>> 3 warnings generated.
>> --
>>>> drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c:148:35: warning: implicit conversion from 'unsigned long' to 'int32_t' (aka 'int') changes value from 18446744073709543424 to -8192 [-Wconstant-conversion]
>> return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
>> ~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/staging/media/atomisp//pci/hive_isp_css_include/math_support.h:35:52: note: expanded from macro 'MAX'
>> #define MAX(a, b)            (((a) > (b)) ? (a) : (b))
>> ^
>> 1 warning generated.
>>
>> vim +4278 drivers/staging/media/atomisp/pci/atomisp_cmd.c
>>
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4260
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4261  /*
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4262   * Function to set/get isp parameters to isp
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4263   */
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4264  int atomisp_param(struct atomisp_sub_device *asd, int flag,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4265                    struct atomisp_parm *config)
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4266  {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4267          struct atomisp_device *isp = asd->isp;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4268          struct ia_css_pipe_config *vp_cfg =
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4269                      &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4270                      pipe_configs[IA_CSS_PIPE_ID_VIDEO];
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4271
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4272          /* Read parameter for 3A binary info */
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4273          if (flag == 0) {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4274                  struct atomisp_css_dvs_grid_info *dvs_grid_info =
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4275                      atomisp_css_get_dvs_grid_info(
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4276                          &asd->params.curr_grid_info);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4277
>> bdfe0beb95eebc drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19 @4278                  if (!&config->info) {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4279                          dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4280                          return -EINVAL;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4281                  }
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4282                  atomisp_curr_user_grid_info(asd, &config->info);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4283
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4284                  /* We always return the resolution and stride even if there is
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4285                   * no valid metadata. This allows the caller to get the
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4286                   * information needed to allocate user-space buffers. */
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4287                  config->metadata_config.metadata_height = asd->
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4288                          stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream_info.
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4289                          metadata_info.resolution.height;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4290                  config->metadata_config.metadata_stride = asd->
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4291                          stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream_info.
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4292                          metadata_info.stride;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4293
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4294                  /* update dvs grid info */
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4295                  if (dvs_grid_info)
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4296                          memcpy(&config->dvs_grid,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4297                                 dvs_grid_info,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4298                                 sizeof(struct atomisp_css_dvs_grid_info));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4299
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4300                  if (asd->run_mode->val != ATOMISP_RUN_MODE_VIDEO) {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4301                          config->dvs_envelop.width = 0;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4302                          config->dvs_envelop.height = 0;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4303                          return 0;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4304                  }
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4305
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4306                  /* update dvs envelop info */
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4307                  if (!asd->continuous_mode->val) {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4308                          config->dvs_envelop.width = vp_cfg->dvs_envelope.width;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4309                          config->dvs_envelop.height =
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4310                              vp_cfg->dvs_envelope.height;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4311                  } else {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4312                          unsigned int dvs_w, dvs_h, dvs_w_max, dvs_h_max;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4313
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4314                          dvs_w = vp_cfg->bayer_ds_out_res.width -
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4315                                  vp_cfg->output_info[0].res.width;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4316                          dvs_h = vp_cfg->bayer_ds_out_res.height -
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4317                                  vp_cfg->output_info[0].res.height;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4318                          dvs_w_max = rounddown(
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4319                                          vp_cfg->output_info[0].res.width / 5,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4320                                          ATOM_ISP_STEP_WIDTH);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4321                          dvs_h_max = rounddown(
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4322                                          vp_cfg->output_info[0].res.height / 5,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4323                                          ATOM_ISP_STEP_HEIGHT);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4324
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4325                          config->dvs_envelop.width = min(dvs_w, dvs_w_max);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4326                          config->dvs_envelop.height = min(dvs_h, dvs_h_max);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4327                  }
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4328
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4329                  return 0;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4330          }
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4331
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4332          memcpy(&asd->params.css_param.wb_config, &config->wb_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4333                 sizeof(struct atomisp_css_wb_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4334          memcpy(&asd->params.css_param.ob_config, &config->ob_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4335                 sizeof(struct atomisp_css_ob_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4336          memcpy(&asd->params.css_param.dp_config, &config->dp_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4337                 sizeof(struct atomisp_css_dp_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4338          memcpy(&asd->params.css_param.de_config, &config->de_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4339                 sizeof(struct atomisp_css_de_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4340          memcpy(&asd->params.css_param.dz_config, &config->dz_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4341                 sizeof(struct atomisp_css_dz_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4342          memcpy(&asd->params.css_param.ce_config, &config->ce_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4343                 sizeof(struct atomisp_css_ce_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4344          memcpy(&asd->params.css_param.nr_config, &config->nr_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4345                 sizeof(struct atomisp_css_nr_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4346          memcpy(&asd->params.css_param.ee_config, &config->ee_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4347                 sizeof(struct atomisp_css_ee_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4348          memcpy(&asd->params.css_param.tnr_config, &config->tnr_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4349                 sizeof(struct atomisp_css_tnr_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4350
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4351          if (asd->params.color_effect == V4L2_COLORFX_NEGATIVE) {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4352                  asd->params.css_param.cc_config.matrix[3] = -config->cc_config.matrix[3];
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4353                  asd->params.css_param.cc_config.matrix[4] = -config->cc_config.matrix[4];
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4354                  asd->params.css_param.cc_config.matrix[5] = -config->cc_config.matrix[5];
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4355                  asd->params.css_param.cc_config.matrix[6] = -config->cc_config.matrix[6];
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4356                  asd->params.css_param.cc_config.matrix[7] = -config->cc_config.matrix[7];
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4357                  asd->params.css_param.cc_config.matrix[8] = -config->cc_config.matrix[8];
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4358          }
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4359
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4360          if (asd->params.color_effect != V4L2_COLORFX_SEPIA &&
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4361              asd->params.color_effect != V4L2_COLORFX_BW) {
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4362                  memcpy(&asd->params.css_param.cc_config, &config->cc_config,
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4363                         sizeof(struct atomisp_css_cc_config));
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4364                  atomisp_css_set_cc_config(asd, &asd->params.css_param.cc_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4365          }
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4366
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4367          atomisp_css_set_wb_config(asd, &asd->params.css_param.wb_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4368          atomisp_css_set_ob_config(asd, &asd->params.css_param.ob_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4369          atomisp_css_set_de_config(asd, &asd->params.css_param.de_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4370          atomisp_css_set_dz_config(asd, &asd->params.css_param.dz_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4371          atomisp_css_set_ce_config(asd, &asd->params.css_param.ce_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4372          atomisp_css_set_dp_config(asd, &asd->params.css_param.dp_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4373          atomisp_css_set_nr_config(asd, &asd->params.css_param.nr_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4374          atomisp_css_set_ee_config(asd, &asd->params.css_param.ee_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4375          atomisp_css_set_tnr_config(asd, &asd->params.css_param.tnr_config);
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4376          asd->params.css_update_params_needed = true;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4377
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4378          return 0;
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4379  }
>> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4380
>>
>> :::::: The code at line 4278 was first introduced by commit
>> :::::: bdfe0beb95eebc864f341fd0c5e903672b90b1a2 media: atomisp: fix several coding style issues
>>
>> :::::: TO: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
>> :::::: CC: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005210222.fkqS2pnd%25lkp%40intel.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f082d48b-a173-3607-60d4-285baec9b022%40intel.com.
