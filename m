Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB44PSH6AKGQEAYNHO5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 793AA28B464
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:11:34 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id w7sf8151295qvf.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 05:11:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602504692; cv=pass;
        d=google.com; s=arc-20160816;
        b=YihtmlbpWHDG0w9D3X0aXFsvJIROGAfIQGA4Fs5L80CjAnWxXxxSgQrl/8H3wYAyVU
         WDhX51/3auIFQIyX07CcPtoqdfVFNO0nUBMpyzj64A3kuC8daWgTEM7DnoW+3myOj2LG
         I6yYnCK029nlzvfzdUWM1OFGl2tG/TJmrQkOlpoSXTh53NbIWuyVOSTZw29FDGBceA3d
         yFv2MWJhyFb1FLlPpusshpycndxvXFLLtkeo1s+CtAA3LFIAklo76b5OIy42skkGwHTk
         ejzP69qXfFtssIs356JP7DMA5JHOpNpsewuFV9jPkIMKgh0VgLe0SvrZlOFEczpS0pXQ
         7mkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=lZpKSFTHhrYdQUrRGhzRGm9y4OX2ph9FTNS0ST1cHDE=;
        b=FY3C/dKx2WZaTDFJsD6SPp8RhZDWcGHvzw2FyS6WSr0g7rxlBf5jNDDKjOJ2IIDDxF
         z0dvNfnDJQiCopNSsLgtBN6SsyK292eUZLrhE6dsRY3bxJpY+nDndZMEscDRp/KohjxJ
         fEiZpjbPemc8ClIlE4Bln4yFuVPFywMiLky+JpVZC84ENEo88Ffkc8MnDXsaaC/Jn4J6
         glvjS3GAbfdWAMfeJwIAIK30fBdMkLXI6lyp88Eypqj2kzdLkUk7DztUg751mcMJOqpt
         KIbpHQCRkucrU0Z1VKAc/waZTBC1oRrCN0HxdhC9iNlX8FBpQl3hYVaaZtbygydxjUnm
         U9Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lZpKSFTHhrYdQUrRGhzRGm9y4OX2ph9FTNS0ST1cHDE=;
        b=fAiBDGkbtQPwWS2LyIs6WtjWO7hhsubVs12xpg6b9EZ/G8K1+LpnRKZveb1JLQApg/
         18KDstN9Ktb0s6kh+AUQaWYi7bnt4DT6uQ7qtL3galv7tVzs1vq9A/q+dGWbUqcfn2ZF
         OYMIABr59UjixVbTJN4labesfOYXqcA8zkOtS7Cs9D4TfIGsA76acMhqwd3zMgN+OvYy
         ul/pUuCLczqudZ1Y9Iwjtsu9VlJ79pDsveI3bFWtzecSsUxH2i4g85zyDeyK7AX5AqbU
         2iJbd67dRkXVXibA9pVW20e+x5GZgJPpOObwtUttIydbYCNsXjT8Wqks0fDPhzd2zn2y
         qAUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lZpKSFTHhrYdQUrRGhzRGm9y4OX2ph9FTNS0ST1cHDE=;
        b=XyCS20/9bvg0VjzqcokuEFdHfiUt8HiNpZd3Cz7aTUnmUZ4Lr0NTJo7Ll2/jI0QDtu
         0kSvII1gYAgfEo0eDbePknBVKagAhtTDTNfR2faH+toNMSHpDOdDb1HgF5kKiDZlO1c3
         xNEUReabSl1Ri+TcquBSvGVWMK2LqFu84Mp2Kz1lXzvE+atMu4vOfLsRzZnTp2a9Z1lg
         WdKS2IFOWD84w3z/Iqrmb/rykeNAJ3bRfpPQPkm0Kfw2CugnkojK7QPexvt+1u5LZWt7
         3bq+9NK0sXq443+bSNp//8XES88QoH/tTIYuY7VpDjeGwP9Qp5/+GkNMUdtTaoaa72Cn
         THbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sDxgWyXvD2I6SZySuRHpDNxCcj4DAqyEPgYZTa4MD11ooNhWm
	08DIyECEGc+4IH0eUUot6Yk=
X-Google-Smtp-Source: ABdhPJws42+j6vAAKnyXDzywNCBbtfpd2YUl4swDQqslIrpnZOLJDNad4igMGkboPyG9HDr0vtOE7Q==
X-Received: by 2002:a0c:fe49:: with SMTP id u9mr24693747qvs.40.1602504691277;
        Mon, 12 Oct 2020 05:11:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:34b:: with SMTP id t11ls2153034qkm.4.gmail; Mon, 12
 Oct 2020 05:11:30 -0700 (PDT)
X-Received: by 2002:a37:6151:: with SMTP id v78mr9808636qkb.177.1602504690793;
        Mon, 12 Oct 2020 05:11:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602504690; cv=none;
        d=google.com; s=arc-20160816;
        b=eac9wgp+x0p2Zq43mnrftNf0T94rr/k67QXgwVY/DMsaNh+fYjZ3Zwmzl/yIZGIQ3b
         r7u73LMyW+FTjrHECjT4L4zNiZMlg7XyVu5xKSJy6a89B++PK96JskrP3o9yvfRajiLB
         3g8BaH9Wo1yzqfTBdwj05yYFE87XMOFyqU/z9FfeJ7zgM5q/aA88Vl/J9pIQM3rUapP2
         +FmVvWAhSgUYQo0aK2Mwjozx88NaJ+FmU7YXTcd3JIy5Pc9ad1i7APfJcJCqYH04o7pT
         PxVebHgXgnkv4wph73oC28AraUB8KL5XrJNRWfs3h9fAsx0WblADL5e8KRMbr06j86fV
         8EAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=RZ0kGI1u29h9XQeXQOg6K3UbuVi2AgL5GKafYYn4DcI=;
        b=QbZ6vJXw94oo3zneND6AjOKAEgpxj2OvFvMuVU0RMmJfSA1ew/BFh5wozvRpw5+M1Z
         UZfsu5IiER/5hxm2q2tCGkmH2SkC43QeBWqrBz7yShqWN3mZbYHsyOtDzNNhYnyB9zM6
         AeKpb4wZubgcNq8pw5pS6EHd2C3rI5zcWGInrUFpOgDwcaPbgxV6rm95HUZDAZ1eQks3
         96/ddUxCA2oXPgSOyKScpBgtkFmsVb8C7GlgQKLMULJK5Ytk48wvW1fwLpUr2boEwzcq
         43aMww04SuVkudtVgzrst2DuXFgipKCyo5OBCmb7y9mBpcla7+vUnfivq6kVZLdAgHmz
         XcaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id l15si810452qtb.0.2020.10.12.05.11.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 05:11:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: jhhXf+lVI308P/M6qrSoqZIoAbXWuLor5O9pFGwim5xzPhF0u7ox+X1F6eki6qnxuAI53RqEsn
 NV4DtxwIz2dA==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="229909303"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; 
   d="scan'208";a="229909303"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 05:11:18 -0700
IronPort-SDR: XWAYrI/v6EJ8w4gTO20OufLPZlww2SlgZlMDVs1B2qDpt5lKcx2CsHWOZZXbQDR/kNGbVZEX6f
 HDpqJ1KU1dvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; 
   d="scan'208";a="529932106"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga005.jf.intel.com with ESMTP; 12 Oct 2020 05:11:16 -0700
Date: Mon, 12 Oct 2020 20:08:18 +0800
From: Philip Li <philip.li@intel.com>
To: Dan Murphy <dmurphy@ti.com>
Cc: kernel test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: [ti:ti-linux-5.4.y 1/1]
 net/hsr/hsr_forward.c:244:3: warning: ignoring return value of function
 declared with 'warn_unused_result' attribute
Message-ID: <20201012120818.GB23489@intel.com>
References: <202010101513.xK0Ju6WU-lkp@intel.com>
 <f7dac83f-511d-356b-4d00-c879cb85bf9f@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f7dac83f-511d-356b-4d00-c879cb85bf9f@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.100 as
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

On Mon, Oct 12, 2020 at 06:42:21AM -0500, Dan Murphy wrote:
> Hello robot
> 
> On 10/10/20 2:07 AM, kernel test robot wrote:
> > tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
> 
> Why is this TI tree being reported to the open source community? They have
hi Dan, thanks for the info, this is added automatically, we will
disable the test of this repo. Sorry for any confusion.

> no interest in our product tree unless this same bug is in the mainline or
> Linux stable
> 
> Dan
> 
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012120818.GB23489%40intel.com.
