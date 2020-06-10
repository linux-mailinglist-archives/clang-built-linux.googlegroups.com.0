Return-Path: <clang-built-linux+bncBCS7XUWOUULBBCOOQX3QKGQEPRJ6RCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA3C1F5E83
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 01:04:42 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id p22sf4251281ybg.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 16:04:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591830281; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8MY5GplGkVTVjUawRUovrIIe3uGVvOHfgnlygNkKRI3zfyXgxKIZCW+aUtQhN/hN4
         6gP4cLhJB22GnEZd/N6exrnd7AltFKpqlN+lIpyX6WAn2GEWqW291G0LLcrfntK1OO8C
         Kvc8CUbJh1EXa5VJx1lxqmpacP1PzKWiwgDYEnqk+NLPz4fdShD9dn2D13nspgCwR12J
         8otv8/+uwqT+RF+LMAuJXkMCigXEuY5qaWP170rliGeCOks6vtMa5SLL8sf+A/E/tehQ
         c8RfsVMXR5SyuipZRrc8SgbphY5bLQebrOnz5ImGC2nj4LBBgGEVPqZttD7sLhbIvZjj
         NatQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=K8xrC1+V/Xlj+YreIll/7GnFJz5xxvSSH09hzUFGh90=;
        b=T0eIVYXBuaWUfPxHbdhPiveqB6D2VKgy5fuvUsdT5Ne0Jo6RL+Xd//vwRE/zGlQMX+
         p3ZhHcFwObyM5eyOMq4PfaXdANN8VySbisCOEECXPt5YKzSucJltkz18S1h5ES+zoWKj
         4sz793Z+++rdMc75HAaXD6eXRtP3H0z+XacyhUzs5hmluwVvMgNeyvLOSs+ZBY5HpQyv
         gtQzEs701wn6OKYQP3CJsyPoUuAGI/WQ6G5LVPOEWmNUvRYPkFq3YYHvq04RRtjkKS7a
         VeBLT8WCjmoOSNd7VTi7KOY/oJudVuL+P8zymZMcJ6yjarStCkDN6Zgk5uyik5ii/762
         tJiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hMPZkwLZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=K8xrC1+V/Xlj+YreIll/7GnFJz5xxvSSH09hzUFGh90=;
        b=FF3uzL4z0dVUso6k6kKDM8gPyIKTkADuDs4NRfP+vFoL+sK+rO8W1OjtdTESz2lOKZ
         3qjNZncL4nSYIgVJdb3OlCeS3HYA6Ra+1Rh3JZjE00Prx0J4VUTVVoJwP3tWrBOku+vz
         P9AhH8cjsQ0eEe9Z+wD5Y6rh5eT2VfjG3nvN4mOXIG8eKl57oDIKfBT3D6l4ca+fPIev
         Y76S30XN0KPnw/zN4uuwavsdBreXsGQ+dCRtMN3N/ddBnnSnkBa0Q7cr8FVtX9WeTS5J
         /sBrOB4gGDoiOrRlgfZVxMmLFXuL0t4GbFShIb2H0XPcvQEd5Kz+IPLjm/00uYBpEWpR
         4qmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K8xrC1+V/Xlj+YreIll/7GnFJz5xxvSSH09hzUFGh90=;
        b=WppP0u6PKoIjNjEg83x62Tu+r/GgeuOkvz/noBpz0D8QZYbMJ32PRc9EdsJL0btuuZ
         /XR6BRgs09xFSeKUShKaxf9UAZSnku0o4yJsKuJpurh2ZCOlHP2RZcJaS0hd/CPc8EEn
         aUEFGYn+qw2bSBpkMbJebhu6ZIY1tlENwiJQhCI78/kinCiRbO2V1HueoSxEK9RRCYP2
         DdiP0XsuKcUw2kiXeJ3Pa3i93oiuZqhKmV8e2JIHeMvuCxwek5ZkiPm9at8Jf+17SXJx
         w8vK2epHqXYuLCxOVYqVbI2z0FrEymBZZEytvYyqLFA44tJErrUQUyLxR1loyEuwgxaa
         rRQQ==
X-Gm-Message-State: AOAM533zumml7CMo626ET6o0jljP5OkEfQpLO2t5t5YloIN2UxhK+fH6
	RNf6ctR1atDRXYLf9vI16Do=
X-Google-Smtp-Source: ABdhPJwr25KyRL7j92EqyWLeZzAPe5gCKV5mVYhcZMoRKD3O/plhPU/y2EGOSa6C4UA80lQsqdRfFQ==
X-Received: by 2002:a25:af06:: with SMTP id a6mr10270138ybh.271.1591830281757;
        Wed, 10 Jun 2020 16:04:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6602:: with SMTP id a2ls157152ybc.0.gmail; Wed, 10 Jun
 2020 16:04:41 -0700 (PDT)
X-Received: by 2002:a25:c052:: with SMTP id c79mr9411961ybf.23.1591830281387;
        Wed, 10 Jun 2020 16:04:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591830281; cv=none;
        d=google.com; s=arc-20160816;
        b=cQmxhs4xFdK5npxjGrhq5YQZplS3G0qk4PbZ/ObjOmaefD55NbdaVRxb2TwV58YdXx
         EnviXrGTGia5kk88gjKo0365XqKbHXKWyX2Q0hRR9Es8zf1G6blwoKwvRhksI+mSG3VF
         T/sIy6DeZ95XJR4TFl0pI2qVxQDRwDEXNKCFbO6kBlI7CIh6DKF5a9ZaFrwaeIzo1OV3
         9xhd9ePlFS8egON2fQk+ho1SC97T7O8S6SB6pjUyqH/6tO+cHP4sDYpRXd1cFessDrfM
         N5eEOo+/43Pb3UvF60l0g7GHjMXWhwirmlVKPkZx/Almj0YF9jNKfl17PLcsrlSy0QSb
         Xfvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nBm51y60yR/Pk3nxfyHggliAr2pS7gWMY1SaoPDzaP4=;
        b=ViyJLbSX1CfkVWsqqyCbZXL7F2pjmcUcAUMPQI2jWVELU5te92Hiax7c5wp1AZ+GQ2
         +ikpWOOvmSUfIRRQAUy92OFU5+bhwfj61aQFM2tD19bzVLdm5MMm68ZNkGmFwmAYNedN
         eA6JprEwaRdw7uU8rm3PP8kcMrR141SYYgKrPQPP7XHA3LX/gpppkTp0swJ0wkytxgo+
         H2RnT++kq8cH6peiD/3WJDUI5rW1wCLcBiA1KBS919OD/SzORsyRt9uvHj3Rxah5GV1C
         s5S0PsQjfAKetdybX/8cV4IcBvflg+OarZrVrya+iqIel5oE3IIqJhD5T4IrnFOGNMgm
         qYWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hMPZkwLZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v16si124349ybe.2.2020.06.10.16.04.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 16:04:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id r18so1645716pgk.11
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 16:04:41 -0700 (PDT)
X-Received: by 2002:a62:1407:: with SMTP id 7mr4528519pfu.282.1591830280313;
        Wed, 10 Jun 2020 16:04:40 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id y14sm707907pjr.31.2020.06.10.16.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 16:04:39 -0700 (PDT)
Date: Wed, 10 Jun 2020 16:04:37 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re:
 [linux-review:UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
 1/1] ld.lld: error: unknown argument '-fPIC'
Message-ID: <20200610230437.qjbgzv26rcwczyxs@google.com>
References: <202006110336.RmmT7Cye%lkp@intel.com>
 <CAKwvOdkn4S_BtizLrur_5S-QT4LWrNn4mOfvw+H9Z2rR9f9nFg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdkn4S_BtizLrur_5S-QT4LWrNn4mOfvw+H9Z2rR9f9nFg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hMPZkwLZ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-06-10, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Wed, Jun 10, 2020 at 12:43 PM kernel test robot <lkp@intel.com> wrote:
>>
>> TO: Nathan Chancellor <natechancellor@gmail.com>
>> CC: 0day robot <lkp@intel.com>
>>
>> tree:   https://github.com/0day-ci/linux/commits/UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
>> head:   b19361026b76f9167c9206f654b12f53023550d1
>> commit: b19361026b76f9167c9206f654b12f53023550d1 [1/1] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
>> config: s390-randconfig-r021-20200607 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install s390 cross compiling tool for clang build
>>         # apt-get install binutils-s390-linux-gnu
>>         git checkout b19361026b76f9167c9206f654b12f53023550d1
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>, old ones prefixed by <<):
>>
>> >> ld.lld: error: unknown argument '-fPIC'
>> ld.lld: error: unknown emulation: elf64_s390
>
>^ is this another inconsistency we have with emulation modes, or is
>this completely unsupported in LLD?

LLD does not support EM_S390. I don't know anyone is working on it (or
is interested at the support).

> ld.lld: error: unknown argument '-fPIC'

There may be a build system bug.

In GNU ld, -f --auxillary is an option. -fPIC is not:

% ld.bfd -fPIC -shared a.o
% readelf -d a.out | grep PIC
  0x000000007ffffffd (AUXILIARY)          Auxiliary library: [PIC]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610230437.qjbgzv26rcwczyxs%40google.com.
