Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOUSUD2AKGQERGQBQIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7D019E2A4
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 06:12:44 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id e18sf7748268pfl.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 21:12:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585973563; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWfeaJ6X7Adr0bFvSdgDaBIDXYYtl9uS4cpX3r1IYrK1H2i7tJe6j7jGgMX0/HJKKT
         lPYTRbvB0PxWmofBO0HJcplJFuCee9BT5OeLBcZ61n9TMUdYN65FX8JAi27xvJFKHuld
         9AWCufv53KRE8HK5bxB3wU2ugDJYJOaixPTeihw0Cp/UX4xX8ddM1Qp4wTDrAqjqY0KZ
         okVVrXev0+K0vOisEOY7SKDJArI1qHyozkV30Ae9+0HYqsJ0cHasf6d8sHbzBgKsJnBY
         dvlNdC0pE+XnDjoWjMJGo2lR/feoafa6uVBGKpeQWkdvYW7pt3Mo7sxHF088xsCge+Xy
         YYww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ZWc/Br8lNfMuNpZFAsIMMREuPvu1huYktjGLdwY2wsU=;
        b=m3wugav+IdlM/GEaoYoD8IEdHi1SH90hfpMKIlcaJ5RDbNPv5xgnlLY/C8e1c/SdxA
         fihIUU2uCCwi57E4OZGlqhaK/eTWOwGoP4+ScFGW4P06742OB3n2Q3fw8a1jlP7hIEfP
         basFPCeNA8AiCebJz4L+9vtKPQNcI1lcbRkDUe2yNBgVrLG3n0mwdoOWO2tVSbwfnIaG
         sY3dT8QtWdPJOucygbM6CU7KJFtj62TRb1PAZadrgy+QOPVK59YGhNDREAF9ZrSDAgbx
         CK/W3syObd4SGDqhYzEIECrhhEpp4ox3ji/RBPEEY5F4kBwFbb8DAo6A8P6yqJtkXIma
         IzhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o1lCuvjn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZWc/Br8lNfMuNpZFAsIMMREuPvu1huYktjGLdwY2wsU=;
        b=nccG9JWla80W8y8TManGNY1d2wrEY+xA3kE+QAGNEZfrwZZWpQAeY8V4Lp13W8sFcg
         BummYeA7JpO5Rs0c0GRBIB6baLy2fxro62RV+rQhLla983AIvUi/VzsNg3g9WwM59g7P
         ibt2lnyaIbggp232TuLB/RXiEQ74y5jWwg1fSLGYZ4lyw1MppNjXKYXjyijVbzBE7H9C
         zsKQxnu/zBQfH/nqjbn6cnIvUiKY4qj2du2UXrzvG3hbBN59O1xS/otnvLgJo3uAXDzI
         ZNsVC4F6wt3dVvdFwiJux5mNDzaV7vfEG7fUaBGjn7cIugKdC4tSBVzu/bLh4J37644z
         OoTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZWc/Br8lNfMuNpZFAsIMMREuPvu1huYktjGLdwY2wsU=;
        b=Hysccw0DlvIF4QdyNAsz0lbsCQSxb9Gt0crlEDM84xmTQ53IPm/wbte+LLsglt8g/K
         VC4Tgu442xprFeOKuFaPHhXTbllPokK1a+jUgOV+hVAhrX2xHJRDGTH3cKT1zpJROawJ
         veCgWjvXec4jmp8s/WnLc+hlHsqhw+v15oIhfzNr0wZPbZgAkZjrTsy+DGTlX2tokjPO
         pe58xK0pIuPaqVTNT4J5oDTff016NhSOQvLzJAOqww/39u69hIOsltQM5e9mJtGraqja
         eh4FsL0l70jgQiCKauFPBMz6GAD1RaVT6/2pFHRGt2W/RdctmozLbES9PHLJjWvauiLa
         Xa+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZWc/Br8lNfMuNpZFAsIMMREuPvu1huYktjGLdwY2wsU=;
        b=qniNWh1Qhas55xYGBpAkqqjfKLdkqD+1VkZO7sJ+/i3PIMs9r8nJPU+bwpbxziHut6
         U6HLC99exKzXEQhBITlaqz/oD673CzRaGIyjpbZErwrRGgmEZO9tDh1tTvZLrykGdYIq
         PQ0bd4QkvZ38nsk7q3UEuuEh2xpFmYukzbo5LvAlNCxDf0wIV9Mv6QXFcjh5i+EZ8i2G
         QrzQfcZrx/houI6LJJol7qo0gJzYo9Kl5r0Itf7vUNW0ojGfBi7OtVRbvVcnk/Rk54oV
         jKSnCJw5GPVoduRaJARwyANC/MyheCrH4VqLg/qAmXBD5msXG0UoLbduCMYhE7GQAvhH
         cdUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZWNtS4i9Jlt5Xk0fllvZHS/e48cFDUOIwpWm8UG9t8nNd0odjR
	2m8GMtRBNcl1lUA2qFW2je4=
X-Google-Smtp-Source: APiQypLjlqCxNDATGjVN73y1heHW/wXNgI/apNIpsrsqd99aEXtz+CKzJZAJoWL2CIqSAst8GTL6gw==
X-Received: by 2002:a62:ed19:: with SMTP id u25mr11657408pfh.114.1585973562839;
        Fri, 03 Apr 2020 21:12:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:63:: with SMTP id 90ls6511745pla.10.gmail; Fri, 03
 Apr 2020 21:12:42 -0700 (PDT)
X-Received: by 2002:a17:902:14b:: with SMTP id 69mr11003880plb.121.1585973562334;
        Fri, 03 Apr 2020 21:12:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585973562; cv=none;
        d=google.com; s=arc-20160816;
        b=Vx/9NfmqhCLMGzZFC+WV2a5dLAmdHEQ1ITDmaV2krZDjZFfq17nB7p+NMAKsEe8YSH
         ONGkysftMvlKB5ICe+yYQ/9ucWM8qT5HNNdQjWJyQlwV0uN/ZD15jwu654Vc16tuEz2c
         TiuLLednr/n+3zkBLHF1/t0ayjkB5OPpGk4mFmgD6sE9CcJViN9BdDpJHMbRkd+U5wxM
         jPM5J9X9sooyp8f0Amg7iGVl5cUBpfhVfJl5h/pZZDS3GoGw2Opmqf+yq0/wrChXVS4v
         l6JArSjS9eOrhGwt6Kw3x9hKg6hA/00mDPu8S2suNIXnbUh4h8loeuxsRXotNdo00s2P
         gIaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cmhSjeQKG77i7zDxqh2mhGYQ9pPeDUqfuTnvW7lOV3o=;
        b=aKpBqCxWIqxjULnQKFsj+XUehMmNXUGMw+4D3cob6ZBLrCd5UlyfRJkhAiBexTpqCI
         ou7k+MeXcHfhWz5MxH8pqvUJZykOMDz/uL0DEfsbiS0PFC4cFNrti7Sktyd4Hscm/1Iq
         afAE2TrOJMmyess9PbOoFZ4fNBqr7PS64jhAAS9jWuWEmRz+2yxLlbMJZZtgM5Frrd4c
         egGII2U3qUheZKUQKohiCQEeTTyw0Q20+VhNBHkUTcEvcK7uTw8JRL0yigZmzyv5P8WA
         un24O3Q061m9SM3CFv11ZG3UZvlsyZGd+wJT7nnSWH4iwAGumPCX9oGeBXamR/DjjjBk
         ndTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o1lCuvjn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a141si855179pfd.5.2020.04.03.21.12.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 21:12:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id v2so9613237oto.2
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 21:12:42 -0700 (PDT)
X-Received: by 2002:a9d:567:: with SMTP id 94mr8331003otw.201.1585973561555;
        Fri, 03 Apr 2020 21:12:41 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a131sm2696928oii.30.2020.04.03.21.12.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Apr 2020 21:12:41 -0700 (PDT)
Date: Fri, 3 Apr 2020 21:12:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.14.y 9935/9999]
 drivers/staging/vc04_services/bcm2835-camera/controls.c:62:18: warning:
 variable 'mains_freq_qmenu' is not needed and will not be emitted
Message-ID: <20200404041239.GA38008@ubuntu-m2-xlarge-x86>
References: <202004041100.rvsmgIy4%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004041100.rvsmgIy4%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o1lCuvjn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Apr 04, 2020 at 11:46:06AM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> head:   e0066de56999ad01b6367b6a42064233ad8bc932
> commit: 88f7a6aa7fb9aa5076b65489146045dac865f1d3 [9935/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: x86_64-randconfig-b002-20200403 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 88f7a6aa7fb9aa5076b65489146045dac865f1d3
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/staging/vc04_services/bcm2835-camera/controls.c:62:18: warning: variable 'mains_freq_qmenu' is not needed and will not be emitted [-Wunneeded-internal-declaration]
>    static const s64 mains_freq_qmenu[] = {
>                     ^
>    1 warning generated.
> 
> vim +/mains_freq_qmenu +62 drivers/staging/vc04_services/bcm2835-camera/controls.c
> 
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  61  
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27 @62  static const s64 mains_freq_qmenu[] = {
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  63  	V4L2_CID_POWER_LINE_FREQUENCY_DISABLED,
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  64  	V4L2_CID_POWER_LINE_FREQUENCY_50HZ,
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  65  	V4L2_CID_POWER_LINE_FREQUENCY_60HZ,
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  66  	V4L2_CID_POWER_LINE_FREQUENCY_AUTO
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  67  };
> 7b3ad5abf027b76 drivers/staging/media/platform/bcm2835/controls.c Eric Anholt 2017-01-27  68  
> 
> :::::: The code at line 62 was first introduced by commit
> :::::: 7b3ad5abf027b7643b38c4006d7f4ce47a86dd3a staging: Import the BCM2835 MMAL-based V4L2 camera driver.
> 
> :::::: TO: Eric Anholt <eric@anholt.net>
> :::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Obviously not causes by that patch... Is there any way for 0day to
blacklist that patch as being a problem so that it stops sending emails
to the patch author?

I did solve this warning a while ago, it just never got backported to
4.14: https://git.kernel.org/linus/9e3701b3809ab3ef22235c96ea69510e26d18d30

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404041239.GA38008%40ubuntu-m2-xlarge-x86.
