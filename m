Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKG572CQMGQEYBGJPKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C13039FE3D
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 19:53:46 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id f15-20020a17090aa78fb029015c411f061bsf2707416pjq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 10:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623174824; cv=pass;
        d=google.com; s=arc-20160816;
        b=XnH2fwn0URYAoxJxvxnCV1cMoKyzqY+hahL/Fa7hyh9kOpqxN8bat5Ni9fmvJYJsvt
         iMJkKx+tJfapjZdZsdPFixadqxnY0tMuUdroBDXrjs3IfGzR03mzhpusuikZjxsLTEyT
         y2pNXApuHkPsnQIen3vi81G8+/v9qrfCIQKAnz/FGseIkH2FAlEN1yvFaBLx/b4g6A4G
         frudUFW13emBBxCzEi7dT+EibKWU1ArlvMApocoPruaWoTcUb/qipF6XoxEqQO6QLrnl
         9qfIKKUO5vXZNySNRtx/IApqU5MMqVehGRWlEgt4rPXBZx7lBm2bfUCjef66Mp+RKwXg
         t/gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LDCiEeWsK/Zh7MH33B/Od5lh3U9mY9Tt1azQQHeks3E=;
        b=WBm1lQ4PzR1D1np4do8BMVWHn6U7JVXUbd6zhsIk6FOAZ7mDPTQUd8Ff+5pDGpfUV2
         gAVYNWy9xU1PJ5th7L4rknv1j/13IWBaG2Rv6OWhDQQ3Ek617iQtkub4KWgTQi9QJOzE
         kxJuNrX4K4Z8QIqNGCtdlA9UPUdG9+uYuX5MaUCUJsPe3/R/hDbKbQBr/+hX7qmnGuKi
         N/NB0IrI15MDlefXGYsL/4vN85xIoyFclf2LSt6lE2HQsXmAirlk/b6+TC8/OAW9Lub1
         zKKx21QRXGbo5jp5UKFCABq7ArQNZyu+jknTX6XfGTMUp2L97UftROlE+SjGwIPnGXqk
         FaLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p1TLVHni;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LDCiEeWsK/Zh7MH33B/Od5lh3U9mY9Tt1azQQHeks3E=;
        b=SgpbzMEF3BCCgmDW879nunfzYfk3H3Y0/SB63CH2uXcsSFIAEFzlEXSDZy0yP+1BCc
         tdRunTV25hOJz9tuvUi+aDQcDmj2rq1O1E8f2uhjmPfnS6iDrDvSS8Wn1XaB3Sbh3jv+
         IiprztLFYskbspr2CwrpqY87ZXHPvyTkbHwBaL4RO1QD2bZP7Z3vm+d+e41mVg3rqPE2
         SraSAL7ZFSn0VjCl++3+SRXP1ETrr4AgpOCEwRnTlt3qA2m7fq6wqjpPn4S2yaVR87lK
         a6Xuhi5qrm4Yj9NyXdSq+nqFA2A/9icGzDTTpvhU0hqjieG+YsuwgI4AWbZ7w4utoQ1E
         dr+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LDCiEeWsK/Zh7MH33B/Od5lh3U9mY9Tt1azQQHeks3E=;
        b=WW9ShrvqImKVLXvs92iC8hgS7F+ASAzfooeu54IN+6RA5+Iw/fbwPAiB6z+oZzknVL
         Ty6DAuMNLLUDnSHpvfRMw9e6B/wmTVBroJykFnlObMtRcg++jyYps64WJr653I7dCp6K
         ZjGwPvWOV2TXUguiY5UUA2jV0yMXaoBkYOQ5/g3hFanZdzNvJ4aRXR9whEcYibhKaQAa
         KidicyDJEFk/+NyVfhgDY5iglRUI6XPSiIZyqncszEAmRUhzCZCP+7DZDjYBgpMogKcf
         Gn9AxTiEUoHBPGqWoxXPj4jEkPckmEd4ZBCX7lEc68X/ZeRzAxFgKat/xmKohbvmyzRP
         pe5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pplKuy72nxcSJyCsYOOxCBAXaxxjvnHyx3N1Y3idpCoUaNw4h
	4gvrTumVe+T7mTTWpC+G5Oc=
X-Google-Smtp-Source: ABdhPJwV4oElHJ34LgNaQgN9vPZkhtuXedNK57E7BEzQFKzueR5oyLKZtS5uSpiYkqfcsVEPYB/OZQ==
X-Received: by 2002:aa7:8003:0:b029:2eb:2f8f:a320 with SMTP id j3-20020aa780030000b02902eb2f8fa320mr873270pfi.70.1623174824359;
        Tue, 08 Jun 2021 10:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4186:: with SMTP id a6ls9414063pgq.6.gmail; Tue, 08 Jun
 2021 10:53:43 -0700 (PDT)
X-Received: by 2002:a63:490f:: with SMTP id w15mr23882038pga.352.1623174823853;
        Tue, 08 Jun 2021 10:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623174823; cv=none;
        d=google.com; s=arc-20160816;
        b=uhVXNMGzkAYUS5GqN6voBAgBd5NJyhVWCaYzzDemAzqqBm+Z0ymnPTSKu7LEKUlfw3
         GJDLE58WhkWSrepXsLSxGmZoGDC2/j4OTJiK1Sl2BXswymeKhbeOm7p/BfnBNc5ZHkis
         q0Uh1aYoFgtuN/qp4QWNhNpuiAW89jPVx2jXYt7VsJJwo2qssfSYcukSBaqyuHj3A9sc
         oemPbyGgNBJrbWVenbSEKWkB1pdZFQnIZPV8TPwafFxJ90TjpFZgoIuleZJhhDcwNHsN
         j3XVhT85qFd667nLKjAb5d/30CUyl3M01P/EY6LX2sKx1LhtValWsHuTJ6bcpdR87YXq
         5KxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NywjmxHbGhURa5Mnc5/5Ib5T61kJOmFm2xwxGABX4jU=;
        b=PmvoyDHFhxxuQX5+6HuQSrvzODaGIbE+PUrtQGlzmh0OzI8fnR6p30U19Mlsy0Qc9s
         SOOWz4rsJgOAxeKhR9hBzKyoWcYvWOLd+JJg0+D2YrZHVzD70qq8odZaPP99d+IxMJm6
         xH81viAnHmALOrmwowMC4sH83yXBdyCLLsOyf3JozyvyfhKbshrcn3O8soyL9YODeApn
         kE9wD7TTVjSTJoygS2gxCz5yJQMbf3ikD3PLMfAkVK0GRLn657MC6o/gWM0NHoIyPesA
         e4Yf0N/z6/rmE+OWLBC9jbuwJShdZqP2lNJI2dSuLy0m0g22ClT4YK0x6ZRotH9gOo0L
         1lJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p1TLVHni;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b3si544553pjz.1.2021.06.08.10.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 10:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CB82361278;
	Tue,  8 Jun 2021 17:53:42 +0000 (UTC)
Date: Tue, 8 Jun 2021 10:53:30 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Can Guo <cang@codeaurora.org>, asutoshd@codeaurora.org,
	nguyenb@codeaurora.org, hongwus@codeaurora.org,
	linux-scsi@vger.kernel.org, kernel-team@android.com,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Stanley Chu <stanley.chu@mediatek.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>
Subject: Re: [PATCH v1 2/3] scsi: ufs: Optimize host lock on transfer
 requests send/compl paths
Message-ID: <YL+umjDMd4Rao/Ns@Ryzen-9-3900X>
References: <1621845419-14194-3-git-send-email-cang@codeaurora.org>
 <202105241912.BEjpMmeK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105241912.BEjpMmeK-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=p1TLVHni;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, May 24, 2021 at 07:25:57PM +0800, kernel test robot wrote:
> Hi Can,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on mkp-scsi/for-next]
> [also build test WARNING on next-20210524]
> [cannot apply to scsi/for-next v5.13-rc3]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Can-Guo/Optimize-host-lock-on-TR-send-compl-paths-and-utilize-UTRLCNR/20210524-163847
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
> config: arm64-randconfig-r011-20210524 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 93d1e5822ed64abd777eb94ea9899e96c4c39fbe)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/efe94162bf7973be4ed6496871b9bc9ea54e2819
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Can-Guo/Optimize-host-lock-on-TR-send-compl-paths-and-utilize-UTRLCNR/20210524-163847
>         git checkout efe94162bf7973be4ed6496871b9bc9ea54e2819
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):

Looks like this build warning never got taken care of before the patch
was accepted because I see it on next-20210608.

> >> drivers/scsi/ufs/ufshcd.c:2959:6: warning: variable 'lrbp' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (unlikely(test_bit(tag, &hba->outstanding_reqs))) {
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:78:22: note: expanded from macro 'unlikely'
>    # define unlikely(x)    __builtin_expect(!!(x), 0)
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/ufs/ufshcd.c:2981:32: note: uninitialized use occurs here
>                                        (struct utp_upiu_req *)lrbp->ucd_rsp_ptr);
>                                                               ^~~~
>    drivers/scsi/ufs/ufshcd.c:2959:2: note: remove the 'if' if its condition is always false
>            if (unlikely(test_bit(tag, &hba->outstanding_reqs))) {
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/ufs/ufshcd.c:2939:25: note: initialize the variable 'lrbp' to silence this warning
>            struct ufshcd_lrb *lrbp;
>                                   ^
>                                    = NULL
>    1 warning generated.
> 
> 
> vim +2959 drivers/scsi/ufs/ufshcd.c
> 
>   2924	
>   2925	/**
>   2926	 * ufshcd_exec_dev_cmd - API for sending device management requests
>   2927	 * @hba: UFS hba
>   2928	 * @cmd_type: specifies the type (NOP, Query...)
>   2929	 * @timeout: time in seconds
>   2930	 *
>   2931	 * NOTE: Since there is only one available tag for device management commands,
>   2932	 * it is expected you hold the hba->dev_cmd.lock mutex.
>   2933	 */
>   2934	static int ufshcd_exec_dev_cmd(struct ufs_hba *hba,
>   2935			enum dev_cmd_type cmd_type, int timeout)
>   2936	{
>   2937		struct request_queue *q = hba->cmd_queue;
>   2938		struct request *req;
>   2939		struct ufshcd_lrb *lrbp;
>   2940		int err;
>   2941		int tag;
>   2942		struct completion wait;
>   2943	
>   2944		down_read(&hba->clk_scaling_lock);
>   2945	
>   2946		/*
>   2947		 * Get free slot, sleep if slots are unavailable.
>   2948		 * Even though we use wait_event() which sleeps indefinitely,
>   2949		 * the maximum wait time is bounded by SCSI request timeout.
>   2950		 */
>   2951		req = blk_get_request(q, REQ_OP_DRV_OUT, 0);
>   2952		if (IS_ERR(req)) {
>   2953			err = PTR_ERR(req);
>   2954			goto out_unlock;
>   2955		}
>   2956		tag = req->tag;
>   2957		WARN_ON_ONCE(!ufshcd_valid_tag(hba, tag));
>   2958	
> > 2959		if (unlikely(test_bit(tag, &hba->outstanding_reqs))) {
>   2960			err = -EBUSY;

Should this goto be adjusted to out_put_tag then drop the out label?

>   2961			goto out;
>   2962		}
>   2963	
>   2964		init_completion(&wait);
>   2965		lrbp = &hba->lrb[tag];
>   2966		WARN_ON(lrbp->cmd);
>   2967		err = ufshcd_compose_dev_cmd(hba, lrbp, cmd_type, tag);
>   2968		if (unlikely(err))
>   2969			goto out_put_tag;
>   2970	
>   2971		hba->dev_cmd.complete = &wait;
>   2972	
>   2973		ufshcd_add_query_upiu_trace(hba, UFS_QUERY_SEND, lrbp->ucd_req_ptr);
>   2974		/* Make sure descriptors are ready before ringing the doorbell */
>   2975		wmb();
>   2976	
>   2977		ufshcd_send_command(hba, tag);
>   2978		err = ufshcd_wait_for_dev_cmd(hba, lrbp, timeout);
>   2979	out:
>   2980		ufshcd_add_query_upiu_trace(hba, err ? UFS_QUERY_ERR : UFS_QUERY_COMP,
>   2981					    (struct utp_upiu_req *)lrbp->ucd_rsp_ptr);
>   2982	
>   2983	out_put_tag:
>   2984		blk_put_request(req);
>   2985	out_unlock:
>   2986		up_read(&hba->clk_scaling_lock);
>   2987		return err;
>   2988	}
>   2989	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL%2BumjDMd4Rao/Ns%40Ryzen-9-3900X.
