Return-Path: <clang-built-linux+bncBAABB7PVXL6QKGQEG6CAPMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 110372B2129
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 17:57:35 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id w63sf2875815vka.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 08:57:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605286654; cv=pass;
        d=google.com; s=arc-20160816;
        b=waj6UijkPVlhgonGEm+UlH/c14Br530hal0WYUiLFRlnx9mwP7UK8yeYSj00S3KC+L
         7QG0ppRQ3ZgYwb4EWmzuva5Phd4NjkZMW5RSiVrfS051caxkwFLMxi9p6xaoB/B28PLE
         qMFUTFbVUa5TLoWec40Xc+NAwmaU254Ay83XrvPS3j8bVaTknn28srhveQJ7OWIbCBxq
         t4yhX/uRYXGEBqSFaksMzQ9yrv/9k6in4ylgAgIhwPjWydFRo+wnE4um0MSBNkVIxkPc
         KwTogw2GtedOrJlQC+cY+bhiQI8eq6yseqw1U2GfCOrz1tDk2xrxavchpIxJufaOYXsw
         beCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1F9K1yVC3Vq488SwRH5e57pUpPPqF45XpDTEO3wf2Nw=;
        b=Pc5Bywiuek0osws1JqY6sgyyCfTE28VL3Bt++JbvKIF4ISYagc59hcgtnddV20bu6Q
         RFV2Qs8ovxaOVub+I5sNX7b2CfS0NGv5jbROuINlGyA8InZplgH8CB/dyUPy893Asphz
         iltbVNNaYuCgcJWvHMcmNKJ6z3eh2H6Tuzy54UTeWnbU+DhzBogbcduXw8ycVDcy3ThV
         fnH4bKOHOKpS18uzjO/zq9C8CLXyEYwv2BR16Da4zUTqxal2ASywb97VneAEH7O96pnm
         cpRg4+6xNEdLclNevG799RnZeUyx+lmJAT7bbv5T9V6yrN5/Me8NO9HaHJgYurETNICt
         FPew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kHf7yJxG;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1F9K1yVC3Vq488SwRH5e57pUpPPqF45XpDTEO3wf2Nw=;
        b=HlO/tL8APSXQnS7lX25FnQ06RYttM2Sz+7ZbDa3JZjZ+VJ+yPyzn3aNAlH4RhWvLd+
         +7/vCbJF+IB5DsuE2jTOI1+uTD7PUbvNUk8c9DJL6UjoXOEskZZci/YnLcPb6d1/orL9
         AlwyOaIMpdH7H0k6oOw5yiprFPXoHeeGeo2p1BUvreey0WXqwZ/YaCx0xSsW6oKjBbNg
         8SHjHSOOTzqx3OcmCp3XmAOYS9p+RzCfuH43yb5VPQRoXkBs2XUBrRYHN44PcfxsqEPz
         +p3VGom4FP6NsFyyFYwwZ3tySRXC66BB2JhO4VIQhZb9h6X9la8YG6oedc2pkPytULap
         QZgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1F9K1yVC3Vq488SwRH5e57pUpPPqF45XpDTEO3wf2Nw=;
        b=VRjqZy2GaikVFI7U81z5w+l2Gdkya+GwodtRaRv5PYK0UybsSWG+u0eQj+JtJFcm9u
         doyZrLfN2OkSVaK/ceMwDKOhfClwIeW52LLzHO5alTtFMD+/xRFYaoBVsXU3kAjHuqG2
         l7uSTUoz+3WAxiaLfH2UK7d4gKTsbE31nILxvssVu8k8gLdN+8xBoqKuafX6nks2pl1Y
         Nxi/rG4bpx+aaFy1qgMlOxOvou8Vb4nCDknutf7ZKy741YfRbeers1pZ11x54TmPHOI7
         aQo+UH4GKyzyYONR0YCqqR81aISauooqwfU4TLmie8OgoaA0wZctab2voEaY4FMC5xUk
         4MWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533N/IVPXe1IY0ppMnjUx/Zsm7Q9qV1LFuDlUYTu6pHQHyefkCXf
	HrlUEfPRRdHpGRc7Ea/Y9EI=
X-Google-Smtp-Source: ABdhPJy0TKf/oWgWsRU1WX8fhZXxnXerMs0DgriTN/B0Y3k4s7fIQb9s17wgPXequD05YyWMfRjOdA==
X-Received: by 2002:a1f:2c4b:: with SMTP id s72mr1892444vks.16.1605286653944;
        Fri, 13 Nov 2020 08:57:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d098:: with SMTP id s24ls965642vsi.5.gmail; Fri, 13 Nov
 2020 08:57:33 -0800 (PST)
X-Received: by 2002:a05:6102:30a7:: with SMTP id y7mr1953872vsd.55.1605286653506;
        Fri, 13 Nov 2020 08:57:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605286653; cv=none;
        d=google.com; s=arc-20160816;
        b=N53dxV2lF4BFR7lumaRbM5pBMpKnqsk+r0WNUYorkzE00kAdbvs64K167+lg0+HmD6
         8Gx+eSh1F0RO4o+jpXPQx4wnY6nq3oMtuy0y7iPjmLmHlJ4p3/nFh3RG2h5ziAkzns7b
         /QMiyrVkpMcwxziSc2sJ1DX21DrEZtPnH21iqI2v6PvrXZBWs9D/tfSByHUNR7QROzIk
         /uMTN7E1hR6mjOuyfbQLBpnDnZmOlS6y/qhXblkOIOBvxpLa30RzGvJsCIhUWgPmblWf
         HykNPInrLD4NtnUgQ2MILkRc4WcDn6+jYAI7fzzropr4UfYN73W8k4kFyAJGxqExfvKg
         TfUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qTdqzlLGEB3kNGUTPcckxk7gjLRD6KgyWxJH8oNfrP4=;
        b=y4eEZfXP8LxzS+N1qLEkPvoYVG/3xXyNEz8Yq4Pe2WNwi/WhZqlGs+El+fl7KbxRnn
         lLkdgXMkKSvqeH8xsnUvdldhWfXsxHuBHutoT1pxXiUlixuvEqRufZOwZkGx1x480q3x
         AHd7E5lN+85BeufNqLetU9lKc4fXR9xLrJEPKoIVa2uQklsMf8XfbROy89GDC8rKmzIs
         jj5FIsh6TyijZSJUQpOdI/lADMPoY9NNySWUUu5OppdPjZwd3R6mm+Cs7qPHK5vNI5+K
         HB374zMkLVkrC+LI3bwdKLxqHH8ULk/h9MKVCfwcm1HdO1DlDZusXgbLyqcyugLBjs52
         J1EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kHf7yJxG;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t26si488688uaq.1.2020.11.13.08.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 08:57:33 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 95742217A0;
	Fri, 13 Nov 2020 16:57:31 +0000 (UTC)
Date: Fri, 13 Nov 2020 08:57:30 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Andrea Mayer <andrea.mayer@uniroma2.it>, "David S. Miller"
 <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Alexey Kuznetsov
 <kuznet@ms2.inr.ac.ru>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Shuah
 Khan <skhan@linuxfoundation.org>, Shrijeet Mukherjee <shrijeet@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org
Subject: Re: [net-next,v2,4/5] seg6: add support for the SRv6 End.DT4
 behavior
Message-ID: <20201113085730.5f3c850a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <202011131747.puABQV5A-lkp@intel.com>
References: <20201107153139.3552-5-andrea.mayer@uniroma2.it>
	<202011131747.puABQV5A-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kHf7yJxG;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Good people of build bot, 

would you mind shedding some light on this one? It was also reported on
v1, and Andrea said it's impossible to repro. Strange that build bot
would make the same mistake twice, tho.

Thanks!

On Fri, 13 Nov 2020 17:23:09 +0800 kernel test robot wrote:
> Hi Andrea,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on ipvs/master]
> [also build test ERROR on linus/master sparc-next/master v5.10-rc3 next-20201112]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Andrea-Mayer/seg6-add-support-for-the-SRv6-End-DT4-behavior/20201109-093019
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/horms/ipvs.git master
> config: x86_64-randconfig-a005-20201111 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 874b0a0b9db93f5d3350ffe6b5efda2d908415d0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/761138e2f757ac64efe97b03311c976db242dc92
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Andrea-Mayer/seg6-add-support-for-the-SRv6-End-DT4-behavior/20201109-093019
>         git checkout 761138e2f757ac64efe97b03311c976db242dc92
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> net/ipv6/seg6_local.c:793:4: error: field designator 'slwt_ops' does not refer to any field in type 'struct seg6_action_desc'  
>                    .slwt_ops       = {
>                     ^
> >> net/ipv6/seg6_local.c:826:10: error: invalid application of 'sizeof' to an incomplete type 'struct seg6_action_desc []'  
>            count = ARRAY_SIZE(seg6_action_table);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:48:32: note: expanded from macro 'ARRAY_SIZE'
>    #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>                                   ^~~~~
>    2 errors generated.
> 
> vim +793 net/ipv6/seg6_local.c
> 
>    757	
>    758	static struct seg6_action_desc seg6_action_table[] = {
>    759		{
>    760			.action		= SEG6_LOCAL_ACTION_END,
>    761			.attrs		= 0,
>    762			.input		= input_action_end,
>    763		},
>    764		{
>    765			.action		= SEG6_LOCAL_ACTION_END_X,
>    766			.attrs		= (1 << SEG6_LOCAL_NH6),
>    767			.input		= input_action_end_x,
>    768		},
>    769		{
>    770			.action		= SEG6_LOCAL_ACTION_END_T,
>    771			.attrs		= (1 << SEG6_LOCAL_TABLE),
>    772			.input		= input_action_end_t,
>    773		},
>    774		{
>    775			.action		= SEG6_LOCAL_ACTION_END_DX2,
>    776			.attrs		= (1 << SEG6_LOCAL_OIF),
>    777			.input		= input_action_end_dx2,
>    778		},
>    779		{
>    780			.action		= SEG6_LOCAL_ACTION_END_DX6,
>    781			.attrs		= (1 << SEG6_LOCAL_NH6),
>    782			.input		= input_action_end_dx6,
>    783		},
>    784		{
>    785			.action		= SEG6_LOCAL_ACTION_END_DX4,
>    786			.attrs		= (1 << SEG6_LOCAL_NH4),
>    787			.input		= input_action_end_dx4,
>    788		},
>    789		{
>    790			.action		= SEG6_LOCAL_ACTION_END_DT4,
>    791			.attrs		= (1 << SEG6_LOCAL_TABLE),
>    792			.input		= input_action_end_dt4,
>  > 793			.slwt_ops	= {  
>    794						.build_state = seg6_end_dt4_build,
>    795					  },
>    796		},
>    797		{
>    798			.action		= SEG6_LOCAL_ACTION_END_DT6,
>    799			.attrs		= (1 << SEG6_LOCAL_TABLE),
>    800			.input		= input_action_end_dt6,
>    801		},
>    802		{
>    803			.action		= SEG6_LOCAL_ACTION_END_B6,
>    804			.attrs		= (1 << SEG6_LOCAL_SRH),
>    805			.input		= input_action_end_b6,
>    806		},
>    807		{
>    808			.action		= SEG6_LOCAL_ACTION_END_B6_ENCAP,
>    809			.attrs		= (1 << SEG6_LOCAL_SRH),
>    810			.input		= input_action_end_b6_encap,
>    811			.static_headroom	= sizeof(struct ipv6hdr),
>    812		},
>    813		{
>    814			.action		= SEG6_LOCAL_ACTION_END_BPF,
>    815			.attrs		= (1 << SEG6_LOCAL_BPF),
>    816			.input		= input_action_end_bpf,
>    817		},
>    818	
>    819	};
>    820	
>    821	static struct seg6_action_desc *__get_action_desc(int action)
>    822	{
>    823		struct seg6_action_desc *desc;
>    824		int i, count;
>    825	
>  > 826		count = ARRAY_SIZE(seg6_action_table);  
>    827		for (i = 0; i < count; i++) {
>    828			desc = &seg6_action_table[i];
>    829			if (desc->action == action)
>    830				return desc;
>    831		}
>    832	
>    833		return NULL;
>    834	}
>    835	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113085730.5f3c850a%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
