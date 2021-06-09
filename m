Return-Path: <clang-built-linux+bncBCLORSOPZQNRB65FQCDAMGQEEVIY5QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f61.google.com (mail-oo1-f61.google.com [209.85.161.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F463A08D8
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 03:01:48 +0200 (CEST)
Received: by mail-oo1-f61.google.com with SMTP id r17-20020a4a96510000b029024988968d95sf7178914ooi.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 18:01:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623200507; cv=pass;
        d=google.com; s=arc-20160816;
        b=O3GSfTq5dHTmuh42/qU3OzqWd3LAJyewA5qcqPKOm5w4FhNEMqGDs0/uWu1fwUbxaV
         lvYaaw+B9ggc/BKgj3ZPaQNHpQEfuDMK8TJdUoQqepUNNviOcOd1Uq2il0o6+QdORr9A
         weYGbHThvra6bwsRUNJozmIgCWw91ArKmp5TGH60p1wSiPT5GOumb4QGpPt6j7OJdfB0
         /DFk0F4ejmxVFZlezR4fHnFAB04EkKzQrjgVHMS33NUth5senfWuxx1vHmQKBbQlpwQj
         uDmJi2JPAMvWlU0tTWFD816UP6ByuUB9BbxdLVsq7sLSUQukjL5S21v9QEKIPO18V8lB
         /eDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender;
        bh=UDKbKNjnybftSE8HLaKgG4m16TsIam4/6JavZi2wYCs=;
        b=PohP0iiUuZwb2ZhAwtbmk2mmM93bgysCidjbgb3Xk+GqqHA7LrOwQ7HHN2p7LIIOGa
         Ifrx0L3SHnlhFDWFUhxNgPFDQF1YEfbFDQTl/IHy9r37R6faP1cgSEGSUzBqtjNBGAWV
         R2eSr48aEuzFO9BVBzRzgNB7UO/NRFNv4ZHAj4/bViNai9dSR4VZTNKLkRx2P471wRIB
         HSu4kFRmChmOPLeuIEgUrcYDswupWIO+Xs21f/XmND2+dGX5kKPX70P1j+AIFF/FemO0
         U+GR61EL9nPXNQzZRySQFlSQ+RiOJTPUkvCoIGqNpmtWNi2wLTiRUsq816pm+nY/GLUM
         84cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=ppFvLm7G;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UDKbKNjnybftSE8HLaKgG4m16TsIam4/6JavZi2wYCs=;
        b=PZK3mH6Oyns0BOL6Znr1csuzEHh51H7LkWTo5YJPL3nx9ZyG/ftPsWViGZykEMPtX4
         o9ggm2dFksQe9zTJ4fq45R97w17yq0wnE3YeaN8LnnqKsSAjvNdPB0HhgvBNlYVZDAox
         GZ14oh/6afo9KYuqJnCqosUKX9fAEZ2rOakh/1fXbHU0I+OhCqXCvlA+D8r96VvTptRg
         BltVTSUTxaMe8qCd+BWP6xQxo7LEn/ST9tC8txgBQMtzAI3YdsHbvq9w7vCMp/waUfZY
         aUzMwMHLOgWTKmT2qKo0TzbTCGokyD9HNCgzGbXDkmIuLzJnGQQC6e6DXU29e0J0VYu1
         LlAw==
X-Gm-Message-State: AOAM531OYbJPdLnC+/nHVuQwrKB0R+6EIfa//mRS9FK+gbb/4Iiv1AuU
	DJEME01evnq62UBYS03OI3k=
X-Google-Smtp-Source: ABdhPJyxbQHteivHX9vif5Q0hL/Uue8PsM5MAxuWCyZavqvgXT7gjEvznqePtH9EQjfJsD2AnjzGJw==
X-Received: by 2002:a05:6830:1d0:: with SMTP id r16mr20537985ota.116.1623200507145;
        Tue, 08 Jun 2021 18:01:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls225685oth.7.gmail; Tue, 08 Jun
 2021 18:01:46 -0700 (PDT)
X-Received: by 2002:a05:6830:1d96:: with SMTP id y22mr6263236oti.266.1623200506749;
        Tue, 08 Jun 2021 18:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623200506; cv=none;
        d=google.com; s=arc-20160816;
        b=JZ6SE0KcTd7VQMLLikn/NVE4QmojTjmJm2OZic/pA7RTXU30xP3BA9MfBu/E3SAydY
         nFkoJIt9C0DjcpiJR5qKJvWxRPUtYV1opZpQrVYk84r/5IlMcYO9vZXWh1Mbg8AxMGa4
         Ud7KOTI0o8GDbwaS5V+G9FrZ+AXWwX5hkkb3ftWDdehHgB6t4dXXb0mQAkEYxguBDHZK
         nZCQB1f/wGSLZ/HwGG25y2eefyh9/YyzH0CoPKKZwofZnkRiT/txVgdco9vFP39sDtHJ
         pq//x2vstd34lbp88VQBwwMoiObj8bofafWMo41Dn8CF+5UeSrZ4WkNu4AED8s1Eujr7
         kWyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:sender:dkim-signature;
        bh=dR9Ki8oNudHDI1spTVt4wc8KtqJLHeBF2Lufdk1lsuk=;
        b=Us0MfUHXNk7uTmnKCd5cWoXTRvGEgbxh473YQq0jitxtNY9jZRdxCbyq7y1ZJnH0eG
         vwotLmpUDen63QThEL5A4bAIOGlguN8VUzctAi6IQ4o9CI2r2DZWsfijuOoBvAPlQBGS
         t0ydpms3L/ZADLVg5giUdWpGwpNVbaoXugud8LjzsGlTp2l3aBsGkSQrqduMpcUIjcxR
         TZ5beUolVqA4wbt1O3ECdOEL5G9Si2qPOB3ba4E9iAUIbkJUp7FDT26vxBwp5YjdgxK8
         4rsbk5eClTdY9I0W49hO8dPsNu8Ke209yVdSv7+PZ3mmT72t1dfHYFG8NvZ/1XyhG0Cw
         EYIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=ppFvLm7G;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id t15si1180172oiw.4.2021.06.08.18.01.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 18:01:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 60c012d451f29e6baedd4159 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 09 Jun 2021 01:01:08
 GMT
Sender: cang=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 4A25AC4338A; Wed,  9 Jun 2021 01:01:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: cang)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 7FAD4C433F1;
	Wed,  9 Jun 2021 01:01:05 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Wed, 09 Jun 2021 09:01:05 +0800
From: Can Guo <cang@codeaurora.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, asutoshd@codeaurora.org,
 nguyenb@codeaurora.org, hongwus@codeaurora.org, linux-scsi@vger.kernel.org,
 kernel-team@android.com, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Stanley Chu <stanley.chu@mediatek.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>
Subject: Re: [PATCH v1 2/3] scsi: ufs: Optimize host lock on transfer requests
 send/compl paths
In-Reply-To: <YL+umjDMd4Rao/Ns@Ryzen-9-3900X>
References: <1621845419-14194-3-git-send-email-cang@codeaurora.org>
 <202105241912.BEjpMmeK-lkp@intel.com> <YL+umjDMd4Rao/Ns@Ryzen-9-3900X>
Message-ID: <0826fefce38f533dba3dcf116adf4584@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: cang@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=ppFvLm7G;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Hi Nathan,

On 2021-06-09 01:53, Nathan Chancellor wrote:
> On Mon, May 24, 2021 at 07:25:57PM +0800, kernel test robot wrote:
>> Hi Can,
>> 
>> Thank you for the patch! Perhaps something to improve:
>> 
>> [auto build test WARNING on mkp-scsi/for-next]
>> [also build test WARNING on next-20210524]
>> [cannot apply to scsi/for-next v5.13-rc3]
>> [If your patch is applied to the wrong git tree, kindly drop us a 
>> note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>> 
>> url:    
>> https://github.com/0day-ci/linux/commits/Can-Guo/Optimize-host-lock-on-TR-send-compl-paths-and-utilize-UTRLCNR/20210524-163847
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git 
>> for-next
>> config: arm64-randconfig-r011-20210524 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 
>> 93d1e5822ed64abd777eb94ea9899e96c4c39fbe)
>> reproduce (this is a W=1 build):
>>         wget 
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
>> -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm64 cross compiling tool for clang build
>>         # apt-get install binutils-aarch64-linux-gnu
>>         # 
>> https://github.com/0day-ci/linux/commit/efe94162bf7973be4ed6496871b9bc9ea54e2819
>>         git remote add linux-review https://github.com/0day-ci/linux
>>         git fetch --no-tags linux-review 
>> Can-Guo/Optimize-host-lock-on-TR-send-compl-paths-and-utilize-UTRLCNR/20210524-163847
>>         git checkout efe94162bf7973be4ed6496871b9bc9ea54e2819
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
>> ARCH=arm64
>> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>> 
>> All warnings (new ones prefixed by >>):
> 
> Looks like this build warning never got taken care of before the patch
> was accepted because I see it on next-20210608.

I am not aware of that it has already accepted to 5.14/scsi-staging.
I will fix it with a new patch.

> 
>> >> drivers/scsi/ufs/ufshcd.c:2959:6: warning: variable 'lrbp' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>>            if (unlikely(test_bit(tag, &hba->outstanding_reqs))) {
>>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/compiler.h:78:22: note: expanded from macro 
>> 'unlikely'
>>    # define unlikely(x)    __builtin_expect(!!(x), 0)
>>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
>>    drivers/scsi/ufs/ufshcd.c:2981:32: note: uninitialized use occurs 
>> here
>>                                        (struct utp_upiu_req 
>> *)lrbp->ucd_rsp_ptr);
>>                                                               ^~~~
>>    drivers/scsi/ufs/ufshcd.c:2959:2: note: remove the 'if' if its 
>> condition is always false
>>            if (unlikely(test_bit(tag, &hba->outstanding_reqs))) {
>>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    drivers/scsi/ufs/ufshcd.c:2939:25: note: initialize the variable 
>> 'lrbp' to silence this warning
>>            struct ufshcd_lrb *lrbp;
>>                                   ^
>>                                    = NULL
>>    1 warning generated.
>> 
>> 
>> vim +2959 drivers/scsi/ufs/ufshcd.c
>> 
>>   2924
>>   2925	/**
>>   2926	 * ufshcd_exec_dev_cmd - API for sending device management 
>> requests
>>   2927	 * @hba: UFS hba
>>   2928	 * @cmd_type: specifies the type (NOP, Query...)
>>   2929	 * @timeout: time in seconds
>>   2930	 *
>>   2931	 * NOTE: Since there is only one available tag for device 
>> management commands,
>>   2932	 * it is expected you hold the hba->dev_cmd.lock mutex.
>>   2933	 */
>>   2934	static int ufshcd_exec_dev_cmd(struct ufs_hba *hba,
>>   2935			enum dev_cmd_type cmd_type, int timeout)
>>   2936	{
>>   2937		struct request_queue *q = hba->cmd_queue;
>>   2938		struct request *req;
>>   2939		struct ufshcd_lrb *lrbp;
>>   2940		int err;
>>   2941		int tag;
>>   2942		struct completion wait;
>>   2943
>>   2944		down_read(&hba->clk_scaling_lock);
>>   2945
>>   2946		/*
>>   2947		 * Get free slot, sleep if slots are unavailable.
>>   2948		 * Even though we use wait_event() which sleeps indefinitely,
>>   2949		 * the maximum wait time is bounded by SCSI request timeout.
>>   2950		 */
>>   2951		req = blk_get_request(q, REQ_OP_DRV_OUT, 0);
>>   2952		if (IS_ERR(req)) {
>>   2953			err = PTR_ERR(req);
>>   2954			goto out_unlock;
>>   2955		}
>>   2956		tag = req->tag;
>>   2957		WARN_ON_ONCE(!ufshcd_valid_tag(hba, tag));
>>   2958
>> > 2959		if (unlikely(test_bit(tag, &hba->outstanding_reqs))) {
>>   2960			err = -EBUSY;
> 
> Should this goto be adjusted to out_put_tag then drop the out label?

Right, will fix it with a new change.

Thanks,
Can Guo.

> 
>>   2961			goto out;
>>   2962		}
>>   2963
>>   2964		init_completion(&wait);
>>   2965		lrbp = &hba->lrb[tag];
>>   2966		WARN_ON(lrbp->cmd);
>>   2967		err = ufshcd_compose_dev_cmd(hba, lrbp, cmd_type, tag);
>>   2968		if (unlikely(err))
>>   2969			goto out_put_tag;
>>   2970
>>   2971		hba->dev_cmd.complete = &wait;
>>   2972
>>   2973		ufshcd_add_query_upiu_trace(hba, UFS_QUERY_SEND, 
>> lrbp->ucd_req_ptr);
>>   2974		/* Make sure descriptors are ready before ringing the doorbell 
>> */
>>   2975		wmb();
>>   2976
>>   2977		ufshcd_send_command(hba, tag);
>>   2978		err = ufshcd_wait_for_dev_cmd(hba, lrbp, timeout);
>>   2979	out:
>>   2980		ufshcd_add_query_upiu_trace(hba, err ? UFS_QUERY_ERR : 
>> UFS_QUERY_COMP,
>>   2981					    (struct utp_upiu_req *)lrbp->ucd_rsp_ptr);
>>   2982
>>   2983	out_put_tag:
>>   2984		blk_put_request(req);
>>   2985	out_unlock:
>>   2986		up_read(&hba->clk_scaling_lock);
>>   2987		return err;
>>   2988	}
>>   2989
>> 
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0826fefce38f533dba3dcf116adf4584%40codeaurora.org.
