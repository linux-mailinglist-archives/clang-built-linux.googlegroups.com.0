Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBFFNZD2QKGQEXMMHNZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D61C65A3
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 03:44:54 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id z22sf930791pjt.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 18:44:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588729493; cv=pass;
        d=google.com; s=arc-20160816;
        b=dLMZ1CNjsnrB10u03XokEJSiuEG6MhV5+54KCjRYSBIbO9/b9fPJJSF4Kjffv8rdpp
         sZ4YK7x5Ic5FEMvENp3JCKDYBoq25g6AyeE5b+fkkt/SLkNdZI8yDEb7PmYksulKV1T9
         U9aRVUCwZLtel0uOYZ3LLhEFcnP5/CeanfQ+qaSgN2O84jQ0weBFsQdeRKHYmChNEhjs
         b+dpxxTkWf9qVeGNu+1BpvHztZtftwhWk12+/oiV5HgkjUvYK5aj4CzoauMFzPLbyXSr
         D9AC/ZYbADgJahuXcIe4kQFsPMXeRMLhe42NZtbaAJxMo9KmpQj05uth/iXUBaSz0iMX
         oMvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=k0e24mk2S0YbMJTY+gWjhVYKrUHjqkMC3aCc8QYFtUU=;
        b=pVKoe6rYj3Ibzizbe+Az8G8CsZTM1t98SE2TIT1b9uj0nEXQl5TuZ6cAhJTHt4PBRl
         XsdyMJNaXa/5e1y/ULeX4j62WD29Biv0utSoOOvUzOoyVqQKXX4XYUD6xGBRMu2sQOsW
         K2Tp1J2it3U6qYNBUl1/UlyZbmzNud4YvKZ3H9ykVGsDB3DLLfPwtoUg8c8u+Ui30mj8
         13qflegs86VBnbJIQd4TT+xnF1SLWekBmqaEil+7LW2473EfUEGeZsKyNRTIW30+//Zt
         maXkjh9BT+LeQYTLYquoApSWvjRNMGIvRXsxRqqa6SHt82lpZkT7TgnWc6L3UfPf8iTx
         69iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0e24mk2S0YbMJTY+gWjhVYKrUHjqkMC3aCc8QYFtUU=;
        b=HSpewxtaN/UGZFb3XdIsQZ0n2dQRJwQgZbUy08VpvUZRNT0MiFw3LPGSV3aTQX2ZqO
         k1t3uTAVU5pDRGxrW/Tzo8OKZBYalQ9Y43b2h9d7v2pcnQCAQN08CNSKVD0XT11qc8w0
         P1i1YygydEE8mHpwWiJqSnlwEmG5F8HQPUyg0oRXPmJmeMtVSX/vFN3qWxSeGtemyHD4
         sK0REAKW+praFwnCb5Ee5coSq8dUzJnNM77FNd1lpWibVuYGRj3bGoQ+U2Cp8iZmPBnr
         BoA0hUeAMX7ql/A3x2D5IM5CvKwjKCvdgX21fOb7atHoiwhe2wRWz7f/khKqCkKWMecb
         0KRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0e24mk2S0YbMJTY+gWjhVYKrUHjqkMC3aCc8QYFtUU=;
        b=UbNrDcX4C9OBPaCk2CvZi0IVLX/DDn1kR7OPrJi85BOGkkfMM+qJVCuZGpvXKOFJJ9
         TaejWEHahOJs07AJ2BBlgNDaiVLFeDqPepvMMhdQ9SwMd1npu98aknsaGqudNabOfSRu
         +KTADF5+Vquhgy9dJE+Y2SwS2G1nIlF3oqRHahqVsBgX0wtbcYnYIsZVIoGjHfago5kk
         vQRrNdLOtJJFhW5NP5vaBnyAYLe5zgDuCkt6VN0kX5MiAI1aIBZ+BTQmkx7OU3n1tJrL
         wR6AYAJBgh+Ts5PGC4Y4TPLVWz4qpfgdlOsQF8pJk3PxMZzay7dmSiIUs66GvuHrT0MJ
         yxvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZyhwFkT/gBfIYFEufn3ie//y7eoF90TXYtRGig9Dayql6mJ6Dz
	G8RfcqECmK8QgydPQllwrkc=
X-Google-Smtp-Source: APiQypIAGqT8ByyVrLAlLYef+gQ8/7ycAFwNjo7Qv5Fyo5d4F2APWGM962iYd4LxwEsXY+XlM+xrgQ==
X-Received: by 2002:a17:90a:df15:: with SMTP id gp21mr6835734pjb.2.1588729493026;
        Tue, 05 May 2020 18:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca12:: with SMTP id x18ls1454511pjt.2.canary-gmail;
 Tue, 05 May 2020 18:44:52 -0700 (PDT)
X-Received: by 2002:a17:90a:77c6:: with SMTP id e6mr6716343pjs.84.1588729492485;
        Tue, 05 May 2020 18:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588729492; cv=none;
        d=google.com; s=arc-20160816;
        b=gZjx1gr5Ct0AxwYMJBRujzChnBreXjM/xqoKSSbTJXUMt5QBxtp7nlLnOcM+WLC/ri
         6oKggVZa2cm5NS2vXz+W7alxqOpW6WFDzLw8Hyelk6jOsSEpst2bEBzqh1nKFEQzeAn6
         cjUUoCKTZYIK4EiViRRtmJdzY6eAIXnZdXIsQAu8vXTBiuF3pZVT47ImH28T1ntvztwn
         oPe7OiJ0hd+uqnj/JXuLF8zDglrfyFZbWwxkBIFXNeZysfSgD5Jw6MYieCxWD1FR7quW
         v1JB1JwAdlL8eqE6mG8HiYiHE1y3wSwcpGpRIMqbgBeL6MypCXFIwyuTC8h/bpP2tLCu
         M77w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=deZ2pygZJqGVU8wmi4h4yQlcz0pcRrzuTYWLnoGs72U=;
        b=lE7YhosNvb1ti/u9e1HZcop9oN/L7kJqD0E0GsP6QuQM2UV6Z7dwWup0X/K2fB7om4
         lkW1gB7/LRHHWuoRUdV56rK7GBYLfkX2nVJVfp231+NOw1jTG5AblNeXOypg0Z6wA79d
         9UaajnRI/Wyz4VYxiAb3ICqqRaLzQKxh/fBpk9aweWLgFZOkFBX9W8id9mvkWLCW2SJK
         R1ctWrVP0AuQUJefHKEwCQPJ89tlZpVC02W/F1Kj+rxHmiM86vyPh+gLBTvvYf0wqU8E
         72aDOTowzR+BagIkqNWsJsRyxejxqQvx/WGVhJicgaJmJ28zwohHZXg75iNrdBpZDaHz
         KKiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id a95si376051pje.1.2020.05.05.18.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 18:44:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: lWlQJ/uYhIM8cdxo5d1T8XVMjPDZKtTZ5AVgmEFkfUZLmLLn4UNauTn0zYhMomFMEtdEk7SzlG
 0WQvwpTQkQnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2020 18:44:50 -0700
IronPort-SDR: hws2NQsJSwMpRjNy462H9W52PmhiMwIMpQJWguhArYd3o1oeRrDffSnzeRwfvSqroEnbZLFeW2
 lAAEIelpTqaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,357,1583222400"; 
   d="scan'208";a="461597958"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga006.fm.intel.com with ESMTP; 05 May 2020 18:44:47 -0700
Date: Wed, 6 May 2020 09:43:04 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Bogdanov <dbogdanov@marvell.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Igor Russkikh <irusskikh@marvell.com>,
	Mark Starovoytov <mstarovoitov@marvell.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [linux-next:master 5848/6711]
 drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.o: warning:
 objtool: __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
Message-ID: <20200506014304.GA26365@intel.com>
References: <202005060844.QaKkh5m9%lkp@intel.com>
 <CAKwvOdnhzcFThaFp05f1urE9W7BDZ2VfETE7=pwnqhZhvt_K2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnhzcFThaFp05f1urE9W7BDZ2VfETE7=pwnqhZhvt_K2w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, May 05, 2020 at 05:59:17PM -0700, Nick Desaulniers wrote:
> Hi Philip,
> Can we please have this particular warning filtered to only our
> mailing list? It's another known issue that's emailing unrelated
> authors.  Sorry, and we'll get it fixed.
sure, and i just checked, it is one code issue at our side, it should
be sent to clang only, but we only judge the error output, and miss
the warning part. I will also fix this in our code.

> 
> On Tue, May 5, 2020 at 5:52 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Dmitry,
> >
> > First bad commit (maybe != root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   7def1ef0f72c3ebe3e42467d2f73c4e56153fa49
> > commit: c1be0bf092bd292ee617622c116f5981a34cce96 [5848/6711] net: atlantic: common functions needed for basic A2 init/deinit hw_ops
> > config: x86_64-randconfig-d001-20200502 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ff6a0b6a8ee74693e9711973028a8a327adf9cd5)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout c1be0bf092bd292ee617622c116f5981a34cce96
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.o: warning: objtool: __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
> > >> drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005060844.QaKkh5m9%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506014304.GA26365%40intel.com.
