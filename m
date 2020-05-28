Return-Path: <clang-built-linux+bncBCRIZROPVQPBB5W4XT3AKGQEYBH2Y6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 749731E5492
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 05:22:31 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id q15sf10294511uao.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590636150; cv=pass;
        d=google.com; s=arc-20160816;
        b=gSMi0OHqpqMMB5iFVPKvvB29x4pKVTpVMJw7N0q+InwLGE1S1WPqeKcXGirpaoKpLE
         kva6TkvGx4nLd08u+2XwCF/0ZPCTFGsXS2faz41a46jBV+Mk2TSXxcPqrg2sqy8FHtx0
         Dzk45xoVdMH4sqvSxEYnrmmftLlIbEH6v+g5rQASm3dK48xutYH4boDmPUmryySV94yJ
         3q+yvHWYtpbCSJd8f7jWbYO8YzozrCZAAx5vcNk56w6ewQlHJi0Wpbc3OcvF813zwOjz
         VDbTW+ZzYxceOZWQZTg5nNtWKTidCiPKhWsf9nKV21465dAehQKAoI2PsECvc3a8YD/S
         iIQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=w3en6Sq5qH/4cGSUBC0Rip2jqOe+mec8DqNXTvPY+ZA=;
        b=wu9uxBh+fmgSg4Q9GujlSfvnmuFVagd7s+bTjhCTYzFzjduL3nJvC0lS+IoLo62ja4
         xPRlGmjDatpZ95Yp4l5rUhpeUhlGssF7XtEMPtYsrhFDeCP4z6zamuQh949spuwAop92
         waJbNO7qyWluyouWaHJetwj9Ubb+Hwdpq1M4E/mMyK7OvZXra/EgzHC1fkGENToLRorO
         CM5xujB7OwUhgNkjtgsrsPbGbWex5C8UJuFNZw95FggkF0ovHFKzyYabr8Vt5ofx++Qu
         cYU1X0Ol67QIEtsTlAI1HViXclLiQZBhT1qcKsJ9n+M8Zx+pFoEjde82msbJqDF+d8OW
         Jzdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uQpI5AdU;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w3en6Sq5qH/4cGSUBC0Rip2jqOe+mec8DqNXTvPY+ZA=;
        b=hpP6aXwtZq4bKDHqtWNzOF7A+jR/WU1z9k5DMxFDTWGUCIHlUbsXY/5+UQopnHn2VH
         VGXnXDS9v+vv3Rw7ZwYur0xZTNKwwsXj+yeC/Q14CFTptYM78yNlGcCDUxyqg5SQJ5pU
         IuGKBYgqO9C5FX2VLoBh/Smy+cYRNpV25r9jGvzMfhv2hSNJvdxQE7fiPFCayZ8AiGjH
         qzDfifiue4C2Nx2NJbV4A18cEL0CSpQW7/fYPiPHjm4QSdkgfPUrGKMk5t0Lsz+NbcAj
         i9k6ltb0dE4C/04fpjtG8oCgLawGEaJSv/wxNk9WTjBOd1ATrHuG2IvLgo3It71UbGUl
         MCQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w3en6Sq5qH/4cGSUBC0Rip2jqOe+mec8DqNXTvPY+ZA=;
        b=NzqHSjtOVxu6oaw0a6q/X4pKrP+PEWFcmLnDDgvxcgOpQz9ve2qqbWtdt/kAIorAWv
         KgXrFJvprKgerWbuoKc+R/Gp0RG4P7DJ04ptcx+oXI+5ut6BtpHdKQPlAdCbNmbttsos
         2g8QByrb/iYzdN7fAEW2irMrj8So+cZTzjPIMRIOaWgTUvqXv9s19Ij5b9Zq6Zqpj1Q0
         lROttHb4StM5jo/KRgyn6Ivgz/GEeTopfrJAgPcm7hX/sHJ+plodYDe6QAxtbbsGk9Uu
         W7x/apNETJty1naHzxbriwixhjKlFtstgh4pnNePopr9ArHA8+ad9cbmIHRKxCLlkFBX
         aLlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Hb30g53mAsPkQAXRUrYKSrVZw75A0oXEyrLukCMLhsMe6RxH2
	f6a2d+swrCjSKbf/piFh9EY=
X-Google-Smtp-Source: ABdhPJzawqR1Ay1w8PAwzB3Rl6x9C5YdBbNOJgXd7EQw2HIKeNpeJdsAMLXuvIlS9T3ozMAQom5jUg==
X-Received: by 2002:ab0:210b:: with SMTP id d11mr652024ual.78.1590636150549;
        Wed, 27 May 2020 20:22:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:74c8:: with SMTP id f8ls57640uaq.1.gmail; Wed, 27 May
 2020 20:22:30 -0700 (PDT)
X-Received: by 2002:ab0:6ec6:: with SMTP id c6mr703166uav.7.1590636150133;
        Wed, 27 May 2020 20:22:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590636150; cv=none;
        d=google.com; s=arc-20160816;
        b=WHWqBCrNojyyQYZNsbO1oLS5zdKjYwzLDOcy2PWO/juwKdKnoykI1U6UbmsvtZh2sb
         YmifmIWZ/FpdXCvio3Pi3G/WOCE+Tl7zrsIrbabpv97BtRiLS4DYI9gjWW8hC7kidVZj
         PASEtWEDJn6X+vUgTFHu1ywZNAKglJEHrnkOih6McgXhedTrqklHii3LZzmANCprb6Kz
         MpFB5Tyy4PAqpBWSNku+4Stupdd4+aROeRt5f8uiFDjU13y/6ZDRnseHgOtfwec/wQUL
         ymzmVQJc2yg3gzU87omWVFrnzGC+XYZqcrs1uZyctH+HSGS7tHI32gHB5S734X96frQ7
         bh/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zhLGCz3eRFNlF6iSf7FlOIq1rs1Pnf9ojhlY+N6LFkw=;
        b=Skq9q9Y0pjqa24vm9xt+ePGt692ngS9LCquA6atXOxfMoa89p/St5zkr+GD+ZZ/ySg
         VQiOVULkd7/ahmS6wOmLxnbOCNukH0hqtfgs3H1IahgRtuNEMZUjtvSz07IByBl5jPxL
         G2j6Wsjz/FiROcI9Yv/dc0Dvy7+q2Q63RRPoMuqVlTuZ2PzyvQbCKNrez2zOmuM930/x
         BB8BEF14IRMbY/h08cQ3RcslT3agPoj2n0N9qhKP2BEdVPSgwfekxSXJoH7xZNDZ/uzm
         argmEFkGwm6Xk9RP6RmivXcL2GS5kAx44DRCcisTjPcl+uPvqwV4ujZU9D0Fco+DrcQr
         pOQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uQpI5AdU;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a126si290748vsd.2.2020.05.27.20.22.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 20:22:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id u5so12774564pgn.5
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 20:22:30 -0700 (PDT)
X-Received: by 2002:a63:c34a:: with SMTP id e10mr913943pgd.412.1590636149127;
        Wed, 27 May 2020 20:22:29 -0700 (PDT)
Received: from localhost ([122.172.60.59])
        by smtp.gmail.com with ESMTPSA id e21sm3033190pga.71.2020.05.27.20.22.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 20:22:28 -0700 (PDT)
Date: Thu, 28 May 2020 08:52:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [vireshk-pm:opp/linux-next 11/11] drivers/opp/core.c:875:32:
 warning: variable 'opp' is uninitialized when used here
Message-ID: <20200528032226.3wk3pwiljdkqliai@vireshk-i7>
References: <202005281149.hTxDcKho%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005281149.hTxDcKho%lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=uQpI5AdU;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
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

On 28-05-20, 11:18, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git opp/linux-next
> head:   c57afacc9270629a03ecb21f956a54886eb81342
> commit: c57afacc9270629a03ecb21f956a54886eb81342 [11/11] opp: Remove bandwidth votes when target_freq is zero
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout c57afacc9270629a03ecb21f956a54886eb81342
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/opp/core.c:875:32: warning: variable 'opp' is uninitialized when used here [-Wuninitialized]
> ret = _set_opp_bw(opp_table, opp, dev, true);
> ^~~
> drivers/opp/core.c:849:34: note: initialize the variable 'opp' to silence this warning
> struct dev_pm_opp *old_opp, *opp;
> ^
> = NULL
> 1 warning generated.

Fixed, thanks.

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200528032226.3wk3pwiljdkqliai%40vireshk-i7.
