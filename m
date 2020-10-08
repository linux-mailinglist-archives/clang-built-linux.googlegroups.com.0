Return-Path: <clang-built-linux+bncBAABB66P7T5QKGQEHXZMHLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 900EB28766F
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Oct 2020 16:53:48 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id y70sf3882211iof.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Oct 2020 07:53:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602168827; cv=pass;
        d=google.com; s=arc-20160816;
        b=MvBeT4jr0DXksOHpbB5CD+v76aCvt3p1JyG0xD2TjMXzyqg8ETC8QymXqsizWQEKYi
         QPo77gZPBYkdzwHZEKBRD4NRGXx/os3aSTC7kBctcMjVzoEf5pYbwhIF8uommJH42OCj
         zSeT/2khtfNX+yBCamepfETgtsw8qidUsIO/+HDXMA8ugc9Z4bQOiYNz4dynJHS0nTZ2
         tViCXfU67hqFHZcdCqwxl3g40XUXmVDX7Nbi2gmqTarbTHDp+LNFhO0T0N/tDEWP0YFg
         NjDRTBDTQ9RENEv2QQS04Xl5V2X80t8FDFoFuK2ftRYUC75RNN7rm1UDEY0AzjKgz3F0
         K4fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=eonWvUl86LVU9FA0dmclApECvb6kgVuoGxQ+vnDzeds=;
        b=lAfMzMTzvasbP3BdFXDILB3+8eWaw1D2pcq3RwQagPwMNq7ESpCQOdNNtDfo6ai8O5
         TZjPbYox8rT8CReTMxNO2zrYjZc1ZNpbS8eKPczT6YEuqsL12JtDWPGvzIbCu1Z7/HkO
         yWobn9BgWmkOr1Kvd92Yoh+JSkhJ/nWcKHWQz2Q8hpvF+MgoQ/6HMIThBwu4FIjmtDUD
         okq0ORF9OuoONbAWt7xiwwUVe/R7/94RuYKCQqmemVXeqcIFd84qN4kjBUKJpOXUG7qx
         vbiuPG9dGTCKbke/k9RSdNMqq0YSytkloI2d1D4GPwvEYwk9Ua2+EEF5OtX7EqZ4w+eR
         VqYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=SilIOQAh;
       spf=pass (google.com: domain of himanshu.madhani@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=himanshu.madhani@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eonWvUl86LVU9FA0dmclApECvb6kgVuoGxQ+vnDzeds=;
        b=HD4aR+mGyuVac6582epqJaYk9RhGO/Y6zrd9opyozHXkZNn9q3l4FALx/StUUT0kaE
         FO/jmh14qRPvInJFXYeD9dCZnul6YVbi3McZwElYi6lym5xt2tOFYRRjztIm/1yXttfs
         CBXhjZ5YoWF3JZMALPTBq0UMZGHxjDtVzCA3Ihp8y9O1fJrNh5Nb6zkv1tnI531vv7zk
         M7V/ko6lKLt1xSRpxTWK618d1mjke4HoJAnh1hy6PtArCd5s3TGg3270SsEq2E5vTxrx
         wWmUayda0+e1rwUq2NSAZ8NICfyiRhtz1Va4kAiR6xCx5Tam/6FNQhm30tctcFV/INR+
         heDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eonWvUl86LVU9FA0dmclApECvb6kgVuoGxQ+vnDzeds=;
        b=fAw2xdFjsiB8JnPyIDmVKgQpWgBAanyGiRFYaJh1ERUE/xJEZMqsoOYMtpKeRD/LBP
         AG4tlRSmdidC3SzUnQ816B5EHEcqcKvVkN/iAi6Wj8bOXrR5vQSC+JivJmINmIB08TqE
         9U4L/lLL0mJBISVN+tWpHXClzXVfWuf3+KNUWG13+cVpT6ta5Ohj8x/ckE33DEUh6Dm+
         ee1TtV3gWyNoqUgywo4vjUeOlr5UUjGfotkCs35rmRPnR/6XSJefXOREPorb05F+K5Ti
         iDU/+Q/rJiD+NBfy95mG1q97O9AozooN3/PrACr1BTTtcnsV/bOEzHBu5Q2Px7OwngJF
         onyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332pkb8yO+irwaGGMUqaP504qersA7xxT4iysL5yVtwqhSr6mkg
	OpkMa4SMN3e4g09Gu5qXEoU=
X-Google-Smtp-Source: ABdhPJz0SOQqkCHD7ujTy5Rt0PnIAgfSFO0a66uX7VSOsNWLg9tOZbCAyPHgwq3pabBvqmy79l95lQ==
X-Received: by 2002:a92:ad11:: with SMTP id w17mr7414661ilh.77.1602168827412;
        Thu, 08 Oct 2020 07:53:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2a06:: with SMTP id r6ls1395903ile.0.gmail; Thu, 08 Oct
 2020 07:53:47 -0700 (PDT)
X-Received: by 2002:a05:6e02:d83:: with SMTP id i3mr6764151ilj.221.1602168826984;
        Thu, 08 Oct 2020 07:53:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602168826; cv=none;
        d=google.com; s=arc-20160816;
        b=dOei+viogU9q2GN/a3dt7oka9T1BZWhInikhGQ9/0ju5BUz8rCXPSWAAdq49gAJsF4
         o9o4k6BZAJ6SHKaZGojqUHvfgLgF+qutizDoaTp9k+Tri+JYphpNN00JkgECtUK2oPTJ
         IxzHtDgE+S3dgoUQcuJhsHi9LEEeq06GMlubJcgKrJaqaT4IBhuRDZ8R830QtUhx79GK
         Kk1dkXqkR1d9322A6moVw7h3FCjPNmLR+aEV3Ma0T+gjz70n46ZExXsFOZj7Pfu+OSeS
         GC9rZ69+N37ZkFa9R8/Ez5D4zagE3JpOOEubwHAhPFhjxDXgUFntjp23AMLy/oEktbVO
         LZlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=xll7tkXdFRSBGl3DkCX4DM7/F889gpZp7V2baEBw2Vw=;
        b=V0278feDMI2nHuHcgrMDWFH3lKWapLXsdoCF28rvcckilTSD0R6raXiD6BIexRS1QW
         c5NIZjz/2/h68+xOq9h6XTmsmn3Wp8WkHmTn3zU4vbu6IbnGdPwPeNc4+FORBsqDokQ9
         NYERGNanBAQLI1tu1xCWYCE0RyYAnnEqxjZjeAB/ntEyWxijKGYqGDnbMfXljqLj0/sE
         osdri0PMiVlY1p8AQDLEVw2jnNj4xCJHtSFPUayphZUhDiA7fwUC4PXlK7LQUpKHVkW6
         +V4p83jAaYYN3YLHoHppTVYKJWmFgJgTi/IGu8bspOBw733rHO6om+UZax8Thf1ptDc6
         ZpLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=SilIOQAh;
       spf=pass (google.com: domain of himanshu.madhani@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=himanshu.madhani@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id i8si188540ioo.0.2020.10.08.07.53.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 07:53:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshu.madhani@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 098Eo0TJ050996;
	Thu, 8 Oct 2020 14:53:43 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 33ym34w8q6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 08 Oct 2020 14:53:42 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 098EoGbp121348;
	Thu, 8 Oct 2020 14:53:42 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 33y3818x8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Oct 2020 14:53:41 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 098ErZRW018214;
	Thu, 8 Oct 2020 14:53:35 GMT
Received: from [10.154.135.77] (/10.154.135.77)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 08 Oct 2020 07:53:35 -0700
Subject: Re: [linux-next:master 14210/14342]
 drivers/scsi/qla2xxx/qla_nvme.c:565:10: warning: variable 'rval' is
 uninitialized when used here
To: "Pavel Machek (CIP)" <pavel@denx.de>
Cc: martin.petersen@oracle.com, clang-built-linux@googlegroups.com,
        "Martin K. Petersen" <martin.petersen@oracle.com>
References: <202010082247.mCFb0pFZ-lkp@intel.com>
From: Himanshu Madhani <himanshu.madhani@oracle.com>
Message-ID: <7f00eb36-0963-d953-2e8b-71b1c4f79134@oracle.com>
Date: Thu, 8 Oct 2020 09:53:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <202010082247.mCFb0pFZ-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9767 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010080113
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9767 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 priorityscore=1501
 mlxscore=0 mlxlogscore=999 clxscore=1015 bulkscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010080113
X-Original-Sender: himanshu.madhani@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=SilIOQAh;
       spf=pass (google.com: domain of himanshu.madhani@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=himanshu.madhani@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 10/8/20 9:14 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   e4fb79c771fbe2e6fcb3cffa87d5823a9bbf3f10
> commit: b994718760fa6de431ee7504ca4553536c77ee43 [14210/14342] scsi: qla2xxx: Use constant when it is known
> config: arm64-randconfig-r021-20201008 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 8da0df3d6dcc0dd42740be60b0da4ec201190904)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm64 cross compiling tool for clang build
>          # apt-get install binutils-aarch64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b994718760fa6de431ee7504ca4553536c77ee43
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>          git fetch --no-tags linux-next master
>          git checkout b994718760fa6de431ee7504ca4553536c77ee43
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/scsi/qla2xxx/qla_nvme.c:565:10: warning: variable 'rval' is uninitialized when used here [-Wuninitialized]
>                     return rval;
>                            ^~~~
>     drivers/scsi/qla2xxx/qla_nvme.c:545:10: note: initialize the variable 'rval' to silence this warning
>             int rval;
>                     ^
>                      = 0
>     1 warning generated.
> 
I overlooked that new code will throw this warning. You want to 
initialize this as 0 to get rid of this warning.

> vim +/rval +565 drivers/scsi/qla2xxx/qla_nvme.c
> 
> e84067d7430107a Duane Grigsby               2017-06-21  536
> e84067d7430107a Duane Grigsby               2017-06-21  537  /* Post a command */
> e84067d7430107a Duane Grigsby               2017-06-21  538  static int qla_nvme_post_cmd(struct nvme_fc_local_port *lport,
> e84067d7430107a Duane Grigsby               2017-06-21  539      struct nvme_fc_remote_port *rport, void *hw_queue_handle,
> e84067d7430107a Duane Grigsby               2017-06-21  540      struct nvmefc_fcp_req *fd)
> e84067d7430107a Duane Grigsby               2017-06-21  541  {
> e84067d7430107a Duane Grigsby               2017-06-21  542  	fc_port_t *fcport;
> e84067d7430107a Duane Grigsby               2017-06-21  543  	struct srb_iocb *nvme;
> e84067d7430107a Duane Grigsby               2017-06-21  544  	struct scsi_qla_host *vha;
> b994718760fa6de Pavel Machek (CIP           2020-09-21  545) 	int rval;
> e84067d7430107a Duane Grigsby               2017-06-21  546  	srb_t *sp;
> 6fcd98fd2c731f8 himanshu.madhani@cavium.com 2017-07-21  547  	struct qla_qpair *qpair = hw_queue_handle;
> 5e6803b409ba3c1 Himanshu Madhani            2018-12-10  548  	struct nvme_private *priv = fd->private;
> 9dd9686b14199a1 Darren Trapp                2018-03-20  549  	struct qla_nvme_rport *qla_rport = rport->private;
> e84067d7430107a Duane Grigsby               2017-06-21  550
> 83949613fac61e8 Quinn Tran                  2020-08-06  551  	if (!priv) {
> 83949613fac61e8 Quinn Tran                  2020-08-06  552  		/* nvme association has been torn down */
> b994718760fa6de Pavel Machek (CIP           2020-09-21  553) 		return -ENODEV;
> 83949613fac61e8 Quinn Tran                  2020-08-06  554  	}
> 83949613fac61e8 Quinn Tran                  2020-08-06  555
> 9dd9686b14199a1 Darren Trapp                2018-03-20  556  	fcport = qla_rport->fcport;
> e84067d7430107a Duane Grigsby               2017-06-21  557
> 2eb9238affa72a5 Quinn Tran                  2019-06-21  558  	if (!qpair || !fcport || (qpair && !qpair->fw_started) ||
> 2eb9238affa72a5 Quinn Tran                  2019-06-21  559  	    (fcport && fcport->deleted))
> b994718760fa6de Pavel Machek (CIP           2020-09-21  560) 		return -ENODEV;
> 623ee824e579d23 Darren Trapp                2018-03-20  561
> 2eb9238affa72a5 Quinn Tran                  2019-06-21  562  	vha = fcport->vha;
> a35f87bdcc0615c Arun Easi                   2020-09-03  563
> a35f87bdcc0615c Arun Easi                   2020-09-03  564  	if (!(fcport->nvme_flag & NVME_FLAG_REGISTERED))
> a35f87bdcc0615c Arun Easi                   2020-09-03 @565  		return rval;
> a35f87bdcc0615c Arun Easi                   2020-09-03  566
> a35f87bdcc0615c Arun Easi                   2020-09-03  567  	if (test_bit(ABORT_ISP_ACTIVE, &vha->dpc_flags) ||
> a35f87bdcc0615c Arun Easi                   2020-09-03  568  	    (qpair && !qpair->fw_started) || fcport->deleted)
> a35f87bdcc0615c Arun Easi                   2020-09-03  569  		return -EBUSY;
> a35f87bdcc0615c Arun Easi                   2020-09-03  570
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  571  	/*
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  572  	 * If we know the dev is going away while the transport is still sending
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  573  	 * IO's return busy back to stall the IO Q.  This happens when the
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  574  	 * link goes away and fw hasn't notified us yet, but IO's are being
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  575  	 * returned. If the dev comes back quickly we won't exhaust the IO
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  576  	 * retry count at the core.
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  577  	 */
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  578  	if (fcport->nvme_flag & NVME_FLAG_RESETTING)
> e84067d7430107a Duane Grigsby               2017-06-21  579  		return -EBUSY;
> e84067d7430107a Duane Grigsby               2017-06-21  580
> e84067d7430107a Duane Grigsby               2017-06-21  581  	/* Alloc SRB structure */
> 6a6294689201e6c Quinn Tran                  2018-09-04  582  	sp = qla2xxx_get_qpair_sp(vha, qpair, fcport, GFP_ATOMIC);
> e84067d7430107a Duane Grigsby               2017-06-21  583  	if (!sp)
> 870fe24f3c0b2cf Darren Trapp                2018-03-20  584  		return -EBUSY;
> e84067d7430107a Duane Grigsby               2017-06-21  585
> 6fcd98fd2c731f8 himanshu.madhani@cavium.com 2017-07-21  586  	init_waitqueue_head(&sp->nvme_ls_waitq);
> 4c2a2d0178d5d80 Quinn Tran                  2019-06-21  587  	kref_init(&sp->cmd_kref);
> 4c2a2d0178d5d80 Quinn Tran                  2019-06-21  588  	spin_lock_init(&priv->cmd_lock);
> ab053c09ee2066a Bart Van Assche             2020-05-18  589  	sp->priv = priv;
> e84067d7430107a Duane Grigsby               2017-06-21  590  	priv->sp = sp;
> e84067d7430107a Duane Grigsby               2017-06-21  591  	sp->type = SRB_NVME_CMD;
> e84067d7430107a Duane Grigsby               2017-06-21  592  	sp->name = "nvme_cmd";
> e84067d7430107a Duane Grigsby               2017-06-21  593  	sp->done = qla_nvme_sp_done;
> 4c2a2d0178d5d80 Quinn Tran                  2019-06-21  594  	sp->put_fn = qla_nvme_release_fcp_cmd_kref;
> e84067d7430107a Duane Grigsby               2017-06-21  595  	sp->qpair = qpair;
> 5e6803b409ba3c1 Himanshu Madhani            2018-12-10  596  	sp->vha = vha;
> e84067d7430107a Duane Grigsby               2017-06-21  597  	nvme = &sp->u.iocb_cmd;
> e84067d7430107a Duane Grigsby               2017-06-21  598  	nvme->u.nvme.desc = fd;
> e84067d7430107a Duane Grigsby               2017-06-21  599
> e84067d7430107a Duane Grigsby               2017-06-21  600  	rval = qla2x00_start_nvme_mq(sp);
> e84067d7430107a Duane Grigsby               2017-06-21  601  	if (rval != QLA_SUCCESS) {
> e84067d7430107a Duane Grigsby               2017-06-21  602  		ql_log(ql_log_warn, vha, 0x212d,
> e84067d7430107a Duane Grigsby               2017-06-21  603  		    "qla2x00_start_nvme_mq failed = %d\n", rval);
> 6fcd98fd2c731f8 himanshu.madhani@cavium.com 2017-07-21  604  		wake_up(&sp->nvme_ls_waitq);
> 4c2a2d0178d5d80 Quinn Tran                  2019-06-21  605  		sp->priv = NULL;
> 4c2a2d0178d5d80 Quinn Tran                  2019-06-21  606  		priv->sp = NULL;
> 4c2a2d0178d5d80 Quinn Tran                  2019-06-21  607  		qla2xxx_rel_qpair_sp(sp->qpair, sp);
> e84067d7430107a Duane Grigsby               2017-06-21  608  	}
> e84067d7430107a Duane Grigsby               2017-06-21  609
> e84067d7430107a Duane Grigsby               2017-06-21  610  	return rval;
> e84067d7430107a Duane Grigsby               2017-06-21  611  }
> e84067d7430107a Duane Grigsby               2017-06-21  612
> 
> :::::: The code at line 565 was first introduced by commit
> :::::: a35f87bdcc0615c5a3a695d13dd1ccf827826368 scsi: qla2xxx: Fix I/O errors during LIP reset tests
> 
> :::::: TO: Arun Easi <aeasi@marvell.com>
> :::::: CC: Martin K. Petersen <martin.petersen@oracle.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 


-- 
Himanshu Madhani                         Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7f00eb36-0963-d953-2e8b-71b1c4f79134%40oracle.com.
