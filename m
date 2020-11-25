Return-Path: <clang-built-linux+bncBC2JZN6WSAHRBJEW7L6QKGQEY4ZLYEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id A165F2C45BB
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 17:49:41 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id c19sf2106900pgj.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 08:49:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606322980; cv=pass;
        d=google.com; s=arc-20160816;
        b=nB4A/Qky7jaXmg85+oZwkho2hw36TwLby6TbBsLyEU2ToaGFQkipxIVesCiXjoXddt
         +3WHDfgVhkY/Fk82dlrJSuid+l0cOv25DzHlCEwl62klhHDuSOWGhb6U/26BoXnCZih5
         2ukzLTPU3WtvRswHHyveq2neyAeKLMaJ6aqKhliDOo3kOrh0SkUI3szjXsQah1wG+Wg0
         QiPPc1IHT0hMz3BCMsxU686cjKQbUdhD4WcQFlWzbsLpKA6/h77TYDqhOibLKxjLTaE0
         2Of87H2AJtkxWUbCp1L+U894tYp6FhGboMGIok0eQzj05WphIf+FcDYGW2R47RT4uhEx
         zv5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sudXhntt/kCpl0aepq2ZgbXkUhtmlCCFT9UwKtnREfM=;
        b=eLT4lnOEfrdQlV67KXBrxkvuFzrQR37xiDndzmm1ig7LJSYXIgxP1o07owjDpWLyPU
         BcAetFgAaKYTUY76wCpXS43c2hpW0Bsjobgkdn2MG+8UAvWRihbY+gW/APf2uQmWYDUg
         q88XqZRSCyeqccAbap87+DWRkoh1daLCqKyXPPf4lpU8ojg0XkdLJKnw5HLAsiH8efSI
         yZMQKhs1o1Ks2dw5LFzu+JCL6I6uoqx5c1cKwC4nQNRMDuHPMcenf47KYAWgIM5Y1ZZi
         lCYPAj+rrYM8yqM53RYOcLcadKpRTgycVa6KKFFBMBe8LK1F3RqLBOTUgGOI9U1w5X7k
         XI6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OcHJ09EG;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sudXhntt/kCpl0aepq2ZgbXkUhtmlCCFT9UwKtnREfM=;
        b=rFo8PRzgrDwMEEntt4S36XVrpchWaqo7nWhBFZLJ8Wp4RXoQDDpugk/FK5+343Oh8w
         E9Gksh5nSHvwPuN4SmFj3hLfQCcjt75MRnVutKvhkWuJDC40uw+stHvZjP9KEt11T68y
         ptuzXyBCtF4h6mk/hsq4csQ1FjSXQgcsTGp7U1Q9/0uo8kBjab4TM52by8HLBynNs9ut
         UknET8nvEVDfhgcM/zR6StVqSBidh/4X6CV96InMx0I+nZz6z7fxJDztOwG7Eb3ZQ4Qv
         uUw/lJruEAear2GlNdk51ZFtfrQTRaMjyP9D1LQXxfYl44pstV7u3bo0pORj2E9YHxPl
         4oPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sudXhntt/kCpl0aepq2ZgbXkUhtmlCCFT9UwKtnREfM=;
        b=FtelYg8Fwe7OHn22j/2rA4lTEaFmW+RyD6pdtCeb/Rpay9U6NRsyR4ki7EcYOtkGkW
         AxEs/7B6qj0Il6WakGBhnqeAZhhDk9tsJBLewY6W40U0SflHydFPUCG1RpJxT/NL4c5o
         7TtU9GsQWQOrZz4XyoPLyTApK+lFiI9s8BXiVbLEMH33RXGKrSlvqgverKD8O2tSZs/k
         NBzFc92sWo1mQLyXwu4/Y0+TPDO/0VxEHeLGlzZBA0wthFEPUY2JYgVLOr0dfi30EpXL
         e76+ieOXDHhiLYD8TYBY71aLHDNuGtBMtTXbCFFFvIYRhMaJ62fWjispVoCBP80vm/mP
         JTzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gtC92v6AV30HcL3ogPamebZryiKPJyvpesEjQWYtPJ0ynUluW
	Hp5EB4oEmjJOC5UKPuFqV2A=
X-Google-Smtp-Source: ABdhPJz6qvMS0cfvfaaH03cEoqiV2ZRs+MLYS/olRnfKsiArI9o81q2dWJAVP9pXKXwtAQfKommRew==
X-Received: by 2002:a17:90a:6588:: with SMTP id k8mr5338481pjj.197.1606322980341;
        Wed, 25 Nov 2020 08:49:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:989e:: with SMTP id r30ls1144387pfl.2.gmail; Wed, 25 Nov
 2020 08:49:39 -0800 (PST)
X-Received: by 2002:a62:f211:0:b029:18c:28cf:89ff with SMTP id m17-20020a62f2110000b029018c28cf89ffmr3827095pfh.71.1606322979710;
        Wed, 25 Nov 2020 08:49:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606322979; cv=none;
        d=google.com; s=arc-20160816;
        b=Md7a9e3VwnFwkMgq4GlW7AA/wPilR3jNfKJ5/tqqul96LvjCNq0KgG6MY05E6UT97D
         E1yEHAY1230jedbaG0kJsTRN7mdd7wITkmxNC6rX30KE70BhXiSB2wBOIolObvsODEuZ
         7AdjrsI+UpdSRrOrKvFy04VF5Lwp5H4fD85G19Pu7Pa+V8/HzUTWr2vMG3Kb3N9vZ108
         4RyEt8LlzFUxmpyvAN73KLKUl9VIfMDlsNOLBaUdqMAPmToLkzwiR5Pt3lDOqGK9l6VF
         6LnmpJq1CquvfCC3h1jw1IxpFz7ctg5rQYg5LyiMeeql6DIPr3V7YsVxwdxgp5uHcQPn
         L2lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QL3akSi7CovK8xFLb4N+FImnomKdcg6vgs9LyNleNVE=;
        b=YgchPiPCSVZ2Y27OGZq8q707Z/I3dOKt0N51H9QXdcmtAA3Qb3M9BduOjtO/IWSLu4
         EmO9+Cbd0oO7o3QaHzJ6ReIod87UI6Q/qcNVV9Zj2DlVO91lejbFJBxGxe4klDrv3Q1g
         MPs6UoZx5Wz24NjKXnzBH8nhLa2IkodAihTogZuSoZ+8BANSCAfH5YknRqm643wPQDSt
         FwZICgAvNQKfFMMyuYR3ivQW35znialP6GeDNXSMBl4czNMc9jFHUHa4NVFwoabn4ugO
         a4H8v/+OKz+N6WtqLNRjBBJ8VXcVMhqOjZ2Y/nLequGSwDiuG62Ubuv1LivbKtGah9gj
         X2uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OcHJ09EG;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id nu3si220418pjb.0.2020.11.25.08.49.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 08:49:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id h3so3504999oie.8
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 08:49:39 -0800 (PST)
X-Received: by 2002:aca:c46:: with SMTP id i6mr2833450oiy.82.1606322978980;
        Wed, 25 Nov 2020 08:49:38 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m29sm1439194otj.42.2020.11.25.08.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 08:49:38 -0800 (PST)
Date: Wed, 25 Nov 2020 10:49:36 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Alexandre Courbot <acourbot@chromium.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	linux-remoteproc@vger.kernel.org
Subject: Re: [linux-next:master 2224/7715]
 drivers/remoteproc/mtk_scp.c:755:37: warning: unused variable
 'mt8183_of_data'
Message-ID: <X76LIAy1kMKydnc0@builder.lan>
References: <202011242358.oKOU8SIP-lkp@intel.com>
 <CAFqt6zZekYGmkDrANsCrRs3Z5DMhCUqA-yi9ipC6JRYTvGfE5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFqt6zZekYGmkDrANsCrRs3Z5DMhCUqA-yi9ipC6JRYTvGfE5w@mail.gmail.com>
X-Original-Sender: bjorn.andersson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=OcHJ09EG;       spf=pass
 (google.com: domain of bjorn.andersson@linaro.org designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed 25 Nov 09:24 CST 2020, Souptick Joarder wrote:

> On Tue, Nov 24, 2020 at 8:34 PM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   d9137320ac06f526fe3f9a3fdf07a3b14201068a
> > commit: b8ba904503311036dfeb758d81ef8d1be37cb8fc [2224/7715] remoteproc/mtk_scp: surround DT device IDs with CONFIG_OF
> > config: arm-randconfig-r003-20201124 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b8ba904503311036dfeb758d81ef8d1be37cb8fc
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout b8ba904503311036dfeb758d81ef8d1be37cb8fc
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/remoteproc/mtk_scp.c:755:37: warning: unused variable 'mt8183_of_data' [-Wunused-const-variable]
> >    static const struct mtk_scp_of_data mt8183_of_data = {
> >                                        ^
> > >> drivers/remoteproc/mtk_scp.c:765:37: warning: unused variable 'mt8192_of_data' [-Wunused-const-variable]
> >    static const struct mtk_scp_of_data mt8192_of_data = {
> >                                        ^
> >    2 warnings generated.
> 
> These 2 variables are used when CONFIG_OF is defined and CONFIG_OF is
> not enabled
> in the attached config file.
> 
> So mt8183_of_data & mt8192_of_data need to move under CONFIG_OF.
> 
> I will post a patch.
> 

We had the same warning on mtk_scp_of_match last week and I merged
Alexandre's fix without giving it much thought. Extending the CONFIG_OF
guard to also cover the references mtk_scp_of_data would mean that we
now have 10 unused functions instead.

On the flip-side, there's no harm in just dropping the of_match_ptr()
wrapping of mtk_scp_of_match in the definition of mtk_scp_driver and we
avoid this whole problem.  We "waste" a little bit of memory in the
COMPILE_TEST case, but we get compile testing of those functions as
well.

Regards,
Bjorn

> 
> 
> >
> > vim +/mt8183_of_data +755 drivers/remoteproc/mtk_scp.c
> >
> > 63c13d61eafe460 Erin Lo      2019-11-12  754
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21 @755  static const struct mtk_scp_of_data mt8183_of_data = {
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  756    .scp_before_load = mt8183_scp_before_load,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  757    .scp_irq_handler = mt8183_scp_irq_handler,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  758    .scp_reset_assert = mt8183_scp_reset_assert,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  759    .scp_reset_deassert = mt8183_scp_reset_deassert,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  760    .scp_stop = mt8183_scp_stop,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  761    .host_to_scp_reg = MT8183_HOST_TO_SCP,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  762    .host_to_scp_int_bit = MT8183_HOST_IPC_INT_BIT,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  763  };
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  764
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21 @765  static const struct mtk_scp_of_data mt8192_of_data = {
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  766    .scp_before_load = mt8192_scp_before_load,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  767    .scp_irq_handler = mt8192_scp_irq_handler,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  768    .scp_reset_assert = mt8192_scp_reset_assert,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  769    .scp_reset_deassert = mt8192_scp_reset_deassert,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  770    .scp_stop = mt8192_scp_stop,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  771    .host_to_scp_reg = MT8192_GIPC_IN_SET,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  772    .host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  773  };
> > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  774
> >
> > :::::: The code at line 755 was first introduced by commit
> > :::::: fd0b6c1ff85a489bcf1bcf58af64da1aeffd39f0 remoteproc/mediatek: Add support for mt8192 SCP
> >
> > :::::: TO: Pi-Hsun Shih <pihsun@chromium.org>
> > :::::: CC: Bjorn Andersson <bjorn.andersson@linaro.org>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X76LIAy1kMKydnc0%40builder.lan.
