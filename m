Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK47YSBQMGQEQ2P6AZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B7435AA54
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 04:38:36 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id d18sf4174559qtn.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 19:38:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618022315; cv=pass;
        d=google.com; s=arc-20160816;
        b=P459yVTqNQzb2+uFWF0Zj705KrIn/sKZEEacyVSovPz9p5mBoVBljMl7PeeV6Whg3C
         oAMM6VOMYAkFHBCWxTLCXK8VmW7gP3+LbjrBBPrbhiCFpIlZU6jkb++kXI2eNQ1av5lv
         ex345DOrU2UzMJqJwwG1FBMLzUafM18o+4G7pyVVPwj6/+QoDOF67GjHdlUBMnxb+NnO
         PtdNqkjvRjX0/ReQ1bX0iRk1r3E/185RHTCNlWUgn5rBJg9ZQnFLaGA56CDMZM15WXbb
         P1LbFK2kmAAzLuHaTOFkVuDYy70QGYhSWbNjooX7eS9UPGaMS6d++r4GKVv4Xo7ONqLL
         8PwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=c7ZZTnYMJ+ANIfFwXW9ROAXUHGwooYlQOD3PHa5NOSE=;
        b=dcPopVV5Ir32D8uCoLVlaOlmHw8dMn1acAHs2tx8vQHHRz40oZh1R5eeOB2w2Tv5xY
         fFZlqKptQn47nANo8YbLQT7zkZLe8wth88YPu1tpjlCCJNl6KMkn0XSoSqZ2TyxiKZ28
         7oRce57Fg8EzQsu1J2rgTpJhpEi20P5OO1DYr/zZvzb7HIpKpU+IS0TJpDeuGoNN1Dnu
         p/fBnlsKvB6NMnuz4XnqmZtRAGpv7i3AWgI+OFT/Vf+BpE+OWBasAcAxIw0BNKHSYNL8
         nRh+qpWexFOSJlLfa5bx6HC3pw6ui5lNZNTXTr6EenthPwPGKHHvkQR2q7asgPZvQ0Nq
         c3BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c7ZZTnYMJ+ANIfFwXW9ROAXUHGwooYlQOD3PHa5NOSE=;
        b=IhepFSM1p8ECAmgpt/oiE8U/ujekgzj9s6GMnl6zdP457vpAzBw0xn9TaYtbVjTEbB
         GeLR+Am5j0MTrEjvEKy5X1aca/AsareByGPE1ROcWH4rQ8Bg8AvLwdgAe7j+93bbSZaA
         Pe0GqaPzSTehQ8qKOysizx82HtFQuiU+zxLWGbdb8GDQ4F1VxIZCFnaDpl6bJJpgsER4
         WqnX4PV7n//gpoFM9i+1MK+yl073USyyUikmnHl5njgzDwc2SobkY0zOTZSDHb67Y3Fy
         VpPmjvSkTzs3clz+INFIvTdD697NHxO9fk8v+DmS1RT6E/8VN69dbokWk+KVDN8ozkoO
         xi/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c7ZZTnYMJ+ANIfFwXW9ROAXUHGwooYlQOD3PHa5NOSE=;
        b=iXSvjOVaDtFMHcZD7SXJgW0kZUVSj+LboJ4nhRaxTYFxm2uCWkyze2QBg4lFZ2Uqxu
         s/Jp+G5eC9KZn0X3ZaIjAekWKkZsJJvhmXzKsfgLmPPy1g/KLItVLM4Vr1qfKcu3noIz
         jUOk41Oe57BcjlH7R8S/HPWDEg22a8tOh7jgoOC5+xuczcviJUZn1qpyQRbW0cEZGy9h
         R6v0guztdE4j2FnKm20BTz1OBwuklwanrkFaOtNa3Ec7V5rYKaQjus38cwFVVyIFyB+j
         W242z5Bee/rNkm2NjNGjFr7LHC1z90V4vZnJmvN6xbrkMD6NIciMU3bIRGHGnRzZe0nn
         wKug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VI6snClV+tcUyvMJrYEM07E3/m75CfOlr5K2NeXaNCuI7eYEH
	MkG9Z9AVqEby41OjT881UY4=
X-Google-Smtp-Source: ABdhPJwqarOANPGx9FoiuSbNVtBbSdWDS3jMDQGzW3xkJBiIew3NDgM+PmyEA92jEjJDYuNWJrqLHg==
X-Received: by 2002:ac8:5b86:: with SMTP id a6mr15115742qta.293.1618022315448;
        Fri, 09 Apr 2021 19:38:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5189:: with SMTP id b9ls3102807qvp.7.gmail; Fri, 09 Apr
 2021 19:38:35 -0700 (PDT)
X-Received: by 2002:a0c:d7d2:: with SMTP id g18mr17196723qvj.42.1618022314829;
        Fri, 09 Apr 2021 19:38:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618022314; cv=none;
        d=google.com; s=arc-20160816;
        b=jaITQUDsiBJOHomj7xZbJbZ5lIWcJRCaKC9hBrzXHMe5+4wWwyDrH/SGn9oCm5cUTU
         I34LZFpJAGPU6iXKgnArZIPcdVjPfFGgWdkq+pCJK3n5QHrud6l7Jrjoxsgoy1x33EU7
         +/beUazKFqY3aD9V2cxSD1Or3ooAXLx2GdDyXI+/ufgQH6cPyVSdvykgpqdHApUH4d48
         nIBotRCzRlYmJRjujHL2oLmPNarJGeI/rJ0IJbcwvLiB/ze8hSDd6MNhro/S5FkpqHX0
         2JtVuLKGMOb0TtlTgLld1wHrQ28zOACwkhnpIZpJSfJFV91hpYmqTEPFaGUcFz+EzDkY
         3rpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=nI3Uwynsop08Twm63F5FevHykB28J8/JbPJsa3nBUoU=;
        b=DRTKKVQpIL2Cywq1u9Lk2Av1IHRyweB6MNqEVagbVUoSaDYEXAD1NpRqCZZ6xzNRxR
         1f2mAOcEfpSldXKtZskRJCVRxYgpoTbkEE/1bMT0GTLBqYQrTyIWYS82mRvcVT5/aHwP
         Fblpblvc+NrVYVzjni8Gpywwb0W8zSAi0O9nD+gbs05z5oeRSmdtuUEK8eKoAihFrn65
         1/YMEoANFQmHu3U2SU5lZE8yUYrBB1Q4YjnWvRvHFmMc/Wit99JCuILtyX0kAr7uzZKr
         Tydo5Nx3906TxnDcNXFpJIoarxORS92UqsqVXm+Xj6WdY2GQkug/1WgPzNwitQ4XljnE
         r+8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id c22si499211qtg.5.2021.04.09.19.38.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 19:38:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: lR/EGP0P5KQYOGckOAgV/9QriicQraWDrQEhUz4XLREfuiDcj41qSSewaVyBGJl2luKpV97cH6
 LiFpvMgfP7Jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9949"; a="181006254"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; 
   d="gz'50?scan'50,208,50";a="181006254"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 19:38:33 -0700
IronPort-SDR: xEeeuNH95Tbc/KeEShQbi5gB56xLh8Npie95AW4NYHdIu0+1mEQHwk3cBzRFSeJZhRmDM0CFQD
 wZnrwzmqbRqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; 
   d="gz'50?scan'50,208,50";a="520482833"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 09 Apr 2021 19:38:31 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lV3W2-000Hif-FU; Sat, 10 Apr 2021 02:38:30 +0000
Date: Sat, 10 Apr 2021 10:37:54 +0800
From: kernel test robot <lkp@intel.com>
To: Bart Van Assche <bvanassche@acm.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [bvanassche:scsi-status 14/15] drivers/ide/ide-ioctls.c:141:30:
 error: used type 'struct scsi_status' where arithmetic or pointer type is
 required
Message-ID: <202104101047.lYu5ufuB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/bvanassche/linux scsi-status
head:   e3e8aaedcd689d1a2ae20024ed467d127bbe060a
commit: 87559dd4d6d375d2a9ac620763b0643fa80bd002 [14/15] Introduce struct scsi_status
config: mips-randconfig-r016-20210409 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dd453a1389b6a7e6d9214b449d3c54981b1a89b6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/bvanassche/linux/commit/87559dd4d6d375d2a9ac620763b0643fa80bd002
        git remote add bvanassche https://github.com/bvanassche/linux
        git fetch --no-tags bvanassche scsi-status
        git checkout 87559dd4d6d375d2a9ac620763b0643fa80bd002
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/ide/ide-ioctls.c:141:30: error: used type 'struct scsi_status' where arithmetic or pointer type is required
                   err = scsi_req(rq)->result ? -EIO : 0;
                         ~~~~~~~~~~~~~~~~~~~~ ^
>> drivers/ide/ide-ioctls.c:239:6: error: assigning to 'int' from incompatible type 'struct scsi_status'
           ret = scsi_req(rq)->result;
               ^ ~~~~~~~~~~~~~~~~~~~~
   2 errors generated.
--
>> drivers/ide/ide-io.c:154:24: error: assigning to 'struct scsi_status' from incompatible type 'int'
                   scsi_req(rq)->result = 0;
                                        ^ ~
   drivers/ide/ide-io.c:157:25: error: assigning to 'struct scsi_status' from incompatible type 'int'
                           scsi_req(rq)->result = IDE_DRV_ERROR_GENERAL;
                                                ^ ~~~~~~~~~~~~~~~~~~~~~
>> drivers/ide/ide-io.c:158:62: error: invalid operands to binary expression ('struct scsi_status' and 'int')
                   else if (blk_rq_is_passthrough(rq) && scsi_req(rq)->result == 0)
                                                         ~~~~~~~~~~~~~~~~~~~~ ^  ~
   drivers/ide/ide-io.c:159:25: error: assigning to 'struct scsi_status' from incompatible type 'int'
                           scsi_req(rq)->result = -EIO;
                                                ^ ~~~~
   drivers/ide/ide-io.c:287:23: error: assigning to 'struct scsi_status' from incompatible type 'int'
           scsi_req(rq)->result = 0;
                                ^ ~
   5 errors generated.
--
>> drivers/ide/ide-taskfile.c:282:29: error: assigning to 'struct scsi_status' from incompatible type 'int'
                   scsi_req(cmd->rq)->result = 0;
                                             ^ ~
>> drivers/ide/ide-taskfile.c:324:23: error: assigning to 'struct scsi_status' from incompatible type 'u8' (aka 'unsigned char')
           scsi_req(rq)->result = err;
                                ^ ~~~
>> drivers/ide/ide-taskfile.c:447:31: error: used type 'struct scsi_status' where arithmetic or pointer type is required
           error = scsi_req(rq)->result ? -EIO : 0;
                   ~~~~~~~~~~~~~~~~~~~~ ^
   3 errors generated.
--
>> drivers/ide/ide-pm.c:31:29: error: used type 'struct scsi_status' where arithmetic or pointer type is required
           ret = scsi_req(rq)->result ? -EIO : 0;
                 ~~~~~~~~~~~~~~~~~~~~ ^
>> drivers/ide/ide-pm.c:49:24: error: assigning to 'struct scsi_status' from incompatible type 'int'
                   scsi_req(rq)->result = -ENXIO;
                                        ^ ~~~~~~
   drivers/ide/ide-pm.c:55:30: error: used type 'struct scsi_status' where arithmetic or pointer type is required
           return scsi_req(rq)->result ? -EIO : 0;
                  ~~~~~~~~~~~~~~~~~~~~ ^
   3 errors generated.
--
>> drivers/ide/ide-park.c:41:28: error: used type 'struct scsi_status' where arithmetic or pointer type is required
           rc = scsi_req(rq)->result ? -EIO : 0;
                ~~~~~~~~~~~~~~~~~~~~ ^
   1 error generated.
--
>> drivers/ide/ide-devsets.c:177:6: error: assigning to 'int' from incompatible type 'struct scsi_status'
           ret = scsi_req(rq)->result;
               ^ ~~~~~~~~~~~~~~~~~~~~
>> drivers/ide/ide-devsets.c:189:24: error: assigning to 'struct scsi_status' from incompatible type 'int'
                   scsi_req(rq)->result = err;
                                        ^ ~~~
   2 errors generated.
--
>> drivers/ide/ide-eh.c:16:24: error: invalid operands to binary expression ('struct scsi_status' and 'int')
                   scsi_req(rq)->result |= ERROR_RESET;
                   ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
>> drivers/ide/ide-eh.c:29:25: error: assigning to 'struct scsi_status' from incompatible type 'int'
                           scsi_req(rq)->result = ERROR_MAX;
                                                ^ ~~~~~~~~~
   drivers/ide/ide-eh.c:32:25: error: invalid operands to binary expression ('struct scsi_status' and 'int')
                           scsi_req(rq)->result |= ERROR_RECAL;
                           ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
   drivers/ide/ide-eh.c:43:27: error: invalid operands to binary expression ('struct scsi_status' and 'int')
           if (scsi_req(rq)->result >= ERROR_MAX || blk_noretry_request(rq)) {
               ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~
   drivers/ide/ide-eh.c:49:24: error: invalid operands to binary expression ('struct scsi_status' and 'int')
                   scsi_req(rq)->result |= ERROR_RESET;
                   ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
   drivers/ide/ide-eh.c:51:28: error: invalid operands to binary expression ('struct scsi_status' and 'int')
           if ((scsi_req(rq)->result & ERROR_RESET) == ERROR_RESET) {
                ~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~
>> drivers/ide/ide-eh.c:52:3: error: cannot increment value of type 'struct scsi_status'
                   ++scsi_req(rq)->result;
                   ^ ~~~~~~~~~~~~~~~~~~~~
   drivers/ide/ide-eh.c:56:28: error: invalid operands to binary expression ('struct scsi_status' and 'int')
           if ((scsi_req(rq)->result & ERROR_RECAL) == ERROR_RECAL)
                ~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~
   drivers/ide/ide-eh.c:59:2: error: cannot increment value of type 'struct scsi_status'
           ++scsi_req(rq)->result;
           ^ ~~~~~~~~~~~~~~~~~~~~
   drivers/ide/ide-eh.c:72:24: error: invalid operands to binary expression ('struct scsi_status' and 'int')
                   scsi_req(rq)->result |= ERROR_RESET;
                   ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
   drivers/ide/ide-eh.c:81:27: error: invalid operands to binary expression ('struct scsi_status' and 'int')
           if (scsi_req(rq)->result >= ERROR_MAX) {
               ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~
   drivers/ide/ide-eh.c:84:29: error: invalid operands to binary expression ('struct scsi_status' and 'int')
                   if ((scsi_req(rq)->result & ERROR_RESET) == ERROR_RESET) {
                        ~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~
   drivers/ide/ide-eh.c:85:4: error: cannot increment value of type 'struct scsi_status'
                           ++scsi_req(rq)->result;
                           ^ ~~~~~~~~~~~~~~~~~~~~
   drivers/ide/ide-eh.c:88:3: error: cannot increment value of type 'struct scsi_status'
                   ++scsi_req(rq)->result;
                   ^ ~~~~~~~~~~~~~~~~~~~~
   drivers/ide/ide-eh.c:134:25: error: assigning to 'struct scsi_status' from incompatible type 'int'
                           scsi_req(rq)->result = 1;
                                                ^ ~
>> drivers/ide/ide-eh.c:138:24: error: assigning to 'struct scsi_status' from incompatible type 'u8' (aka 'unsigned char')
                   scsi_req(rq)->result = err;
                                        ^ ~~~
   drivers/ide/ide-eh.c:153:40: error: invalid operands to binary expression ('struct scsi_status' and 'int')
                   if (err <= 0 && scsi_req(rq)->result == 0)
                                   ~~~~~~~~~~~~~~~~~~~~ ^  ~
   drivers/ide/ide-eh.c:154:25: error: assigning to 'struct scsi_status' from incompatible type 'int'
                           scsi_req(rq)->result = -EIO;
                                                ^ ~~~~
   18 errors generated.


vim +141 drivers/ide/ide-ioctls.c

05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  126  
1df23c6fe5b065 Arnd Bergmann             2019-11-28  127  static int ide_cmd_ioctl(ide_drive_t *drive, void __user *argp)
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  128  {
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  129  	u8 *buf = NULL;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  130  	int bufsize = 0, err = 0;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  131  	u8 args[4], xfer_rate = 0;
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  132  	struct ide_cmd cmd;
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  133  	struct ide_taskfile *tf = &cmd.tf;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  134  
1df23c6fe5b065 Arnd Bergmann             2019-11-28  135  	if (NULL == argp) {
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  136  		struct request *rq;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  137  
ff005a066240ef Christoph Hellwig         2018-05-09  138  		rq = blk_get_request(drive->queue, REQ_OP_DRV_IN, 0);
2f5a8e80f79dc8 Christoph Hellwig         2017-01-31  139  		ide_req(rq)->type = ATA_PRIV_TASKFILE;
684da7628d93bb Guoqing Jiang             2021-01-25  140  		blk_execute_rq(NULL, rq, 0);
17d5363b83f8c7 Christoph Hellwig         2017-04-20 @141  		err = scsi_req(rq)->result ? -EIO : 0;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  142  		blk_put_request(rq);
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  143  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  144  		return err;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  145  	}
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  146  
1df23c6fe5b065 Arnd Bergmann             2019-11-28  147  	if (copy_from_user(args, argp, 4))
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  148  		return -EFAULT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  149  
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  150  	memset(&cmd, 0, sizeof(cmd));
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  151  	tf->feature = args[2];
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  152  	if (args[0] == ATA_CMD_SMART) {
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  153  		tf->nsect = args[3];
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  154  		tf->lbal  = args[1];
6fcf0497ffcc18 Xinghai Yu                2013-07-25  155  		tf->lbam  = ATA_SMART_LBAM_PASS;
6fcf0497ffcc18 Xinghai Yu                2013-07-25  156  		tf->lbah  = ATA_SMART_LBAH_PASS;
60f85019c6c8c1 Sergei Shtylyov           2009-04-08  157  		cmd.valid.out.tf = IDE_VALID_OUT_TF;
60f85019c6c8c1 Sergei Shtylyov           2009-04-08  158  		cmd.valid.in.tf  = IDE_VALID_NSECT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  159  	} else {
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  160  		tf->nsect = args[1];
60f85019c6c8c1 Sergei Shtylyov           2009-04-08  161  		cmd.valid.out.tf = IDE_VALID_FEATURE | IDE_VALID_NSECT;
60f85019c6c8c1 Sergei Shtylyov           2009-04-08  162  		cmd.valid.in.tf  = IDE_VALID_NSECT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  163  	}
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  164  	tf->command = args[0];
0dfb991c6943c8 Bartlomiej Zolnierkiewicz 2009-03-27  165  	cmd.protocol = args[3] ? ATA_PROT_PIO : ATA_PROT_NODATA;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  166  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  167  	if (args[3]) {
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  168  		cmd.tf_flags |= IDE_TFLAG_IO_16BIT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  169  		bufsize = SECTOR_SIZE * args[3];
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  170  		buf = kzalloc(bufsize, GFP_KERNEL);
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  171  		if (buf == NULL)
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  172  			return -ENOMEM;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  173  	}
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  174  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  175  	if (tf->command == ATA_CMD_SET_FEATURES &&
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  176  	    tf->feature == SETFEATURES_XFER &&
a9c415090710a1 Bartlomiej Zolnierkiewicz 2009-06-15  177  	    tf->nsect >= XFER_SW_DMA_0) {
28c1969ff887bc Hemant Pedanekar          2009-11-25  178  		xfer_rate = ide_find_dma_mode(drive, tf->nsect);
a9c415090710a1 Bartlomiej Zolnierkiewicz 2009-06-15  179  		if (xfer_rate != tf->nsect) {
a9c415090710a1 Bartlomiej Zolnierkiewicz 2009-06-15  180  			err = -EINVAL;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  181  			goto abort;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  182  		}
665d66e8fad60a Bartlomiej Zolnierkiewicz 2009-06-23  183  
665d66e8fad60a Bartlomiej Zolnierkiewicz 2009-06-23  184  		cmd.tf_flags |= IDE_TFLAG_SET_XFER;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  185  	}
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  186  
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  187  	err = ide_raw_taskfile(drive, &cmd, buf, args[3]);
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  188  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  189  	args[0] = tf->status;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  190  	args[1] = tf->error;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  191  	args[2] = tf->nsect;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  192  abort:
1df23c6fe5b065 Arnd Bergmann             2019-11-28  193  	if (copy_to_user(argp, &args, 4))
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  194  		err = -EFAULT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  195  	if (buf) {
1df23c6fe5b065 Arnd Bergmann             2019-11-28  196  		if (copy_to_user((argp + 4), buf, bufsize))
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  197  			err = -EFAULT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  198  		kfree(buf);
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  199  	}
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  200  	return err;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  201  }
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  202  
1df23c6fe5b065 Arnd Bergmann             2019-11-28  203  static int ide_task_ioctl(ide_drive_t *drive, void __user *p)
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  204  {
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  205  	int err = 0;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  206  	u8 args[7];
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  207  	struct ide_cmd cmd;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  208  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  209  	if (copy_from_user(args, p, 7))
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  210  		return -EFAULT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  211  
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  212  	memset(&cmd, 0, sizeof(cmd));
745483f10c6cef Sergei Shtylyov           2009-04-08  213  	memcpy(&cmd.tf.feature, &args[1], 6);
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  214  	cmd.tf.command = args[0];
60f85019c6c8c1 Sergei Shtylyov           2009-04-08  215  	cmd.valid.out.tf = IDE_VALID_OUT_TF | IDE_VALID_DEVICE;
60f85019c6c8c1 Sergei Shtylyov           2009-04-08  216  	cmd.valid.in.tf  = IDE_VALID_IN_TF  | IDE_VALID_DEVICE;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  217  
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  218  	err = ide_no_data_taskfile(drive, &cmd);
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  219  
22aa4b32a19b1f Bartlomiej Zolnierkiewicz 2009-03-27  220  	args[0] = cmd.tf.command;
745483f10c6cef Sergei Shtylyov           2009-04-08  221  	memcpy(&args[1], &cmd.tf.feature, 6);
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  222  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  223  	if (copy_to_user(p, args, 7))
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  224  		err = -EFAULT;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  225  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  226  	return err;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  227  }
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  228  
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  229  static int generic_drive_reset(ide_drive_t *drive)
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  230  {
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  231  	struct request *rq;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  232  	int ret = 0;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  233  
ff005a066240ef Christoph Hellwig         2018-05-09  234  	rq = blk_get_request(drive->queue, REQ_OP_DRV_IN, 0);
2f5a8e80f79dc8 Christoph Hellwig         2017-01-31  235  	ide_req(rq)->type = ATA_PRIV_MISC;
82ed4db499b859 Christoph Hellwig         2017-01-27  236  	scsi_req(rq)->cmd_len = 1;
82ed4db499b859 Christoph Hellwig         2017-01-27  237  	scsi_req(rq)->cmd[0] = REQ_DRIVE_RESET;
684da7628d93bb Guoqing Jiang             2021-01-25  238  	blk_execute_rq(NULL, rq, 1);
17d5363b83f8c7 Christoph Hellwig         2017-04-20 @239  	ret = scsi_req(rq)->result;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  240  	blk_put_request(rq);
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  241  	return ret;
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  242  }
05236ea6df7419 Bartlomiej Zolnierkiewicz 2008-10-10  243  

:::::: The code at line 141 was first introduced by commit
:::::: 17d5363b83f8c73ef9109f75a4a9b578f31d842f scsi: introduce a result field in struct scsi_request

:::::: TO: Christoph Hellwig <hch@lst.de>
:::::: CC: Jens Axboe <axboe@fb.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104101047.lYu5ufuB-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
KkKxg7W9LS/X60QyIUNhZL1c/X9FpBR2Dj0CAA==

--bp/iNruPH9dso1Pn--
